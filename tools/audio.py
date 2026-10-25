#!/usr/bin/env python3
"""Render audio for the notation examples: LilyPond source -> MIDI (articulate.ly) -> FluidSynth with
MuseScore's MS Basic soundfont -> mp3. FluidSynth plays the MIDI exactly as written; MuseScore's MIDI import
re-quantised note lengths and ignored velocities, so staccato, accents and dynamics all sounded the same.

  python3 tools/audio.py            -> renders every example in AUDIO that has no mp3 yet
  python3 tools/audio.py --all      -> re-renders all of them
  python3 tools/audio.py NAME ...   -> re-renders just those

Writes audio/<name>.mp3. build.py puts a play button on every picture that has a matching mp3.
Only examples whose point can be heard are listed: bowing signs, string and guitar techniques,
vibrato and D.S./D.C. road maps are left out on purpose (MIDI cannot show them).
"""
import pathlib, re, subprocess, sys, tempfile

here = pathlib.Path(__file__).resolve().parent.parent
SOUNDFONT = "/Applications/MuseScore 4.app/Contents/Resources/sound/MS Basic.sf3"

# name: (crotchet bpm, General MIDI instrument for every staff or None for piano[, loudest velocity 0-1])
# A lower loudest velocity leaves more headroom so accents and sfz stand out.
AUDIO = {
 "chord_g7": (60, None), "triad_f": (60, None), "triad_g": (60, None), "s5_extended": (80, None),
 "ex_accel_rit": (96, None), "ex_dot_rule": (80, None), "ex_melodic_ostinato": (100, None),
 "ex_melody_harmony": (88, None), "ex_time_sig_count": (88, "woodblock"),
 "rm_s4_a_tempo": (120, None), "rm_s4_accidental_bar": (88, None), "rm_s4_articulation_compare": (88, "clarinet", 0.6),
 "rm_s4_block_broken": (80, None), "rm_s4_delay_echo": (80, None),
 "rm_s4_dorian_tune": (96, None), "rm_s4_dur_barlines": (100, None), "rm_s4_dur_bottom_number": (80, "woodblock"),
 "rm_s4_dur_compound_beat": (60, "woodblock"), "rm_s4_dur_counting": (80, None), "rm_s4_dur_free_rhythm": (76, "flute"),
 "rm_s4_dur_rests_in_bar": (88, None), "rm_s4_dur_simple_beat": (80, "woodblock"), "rm_s4_dynamics_ladder": (90, None),
 "rm_s4_enharmonic": (60, None), "rm_s4_major_minor_tune": (96, None), "rm_s4_natural_cancel": (80, None),
 "rm_s4_pentatonic_tune": (100, None), "rm_s4_progression": (60, None), "rm_s4_satb": (66, "choir aahs"),
 "rm_s4_scale_g": (100, None), "rm_s4_semitones_staff": (80, None), "rm_s4_step_leap_repeat": (96, None),
 "rm_s4_str_binary": (110, None), "rm_s4_str_motif_dev": (100, None), "rm_s4_strumming": (88, "acoustic guitar (steel)"),
 "rm_s4_tex_block_broken": (90, None), "rm_s4_tex_thin_thick": (96, None), "rm_s4_tie_or_slur": (80, None),
 "rm_s4_timpani": (96, "timpani"), "rm_s4_triad_parts": (60, None), "rm_s4_trill_played": (60, "flute"),
 "rm_s5_articulation_compare": (80, "clarinet", 0.6), "rm_s5_cad_imperfect": (60, None), "rm_s5_cad_interrupted": (60, None),
 "rm_s5_cad_perfect": (60, None), "rm_s5_cad_plagal": (60, None), "rm_s5_call_response": (100, None),
 "rm_s5_contrast": (100, None), "rm_s5_drum_fill": (100, None), "rm_s5_fp_context": (60, "violin"),
 "rm_s5_fragmentation": (100, None), "rm_s5_grace": (60, "flute"), "rm_s5_hemiola": (120, None),
 "rm_s5_inversion": (100, None), "rm_s5_molto": (132, None), "rm_s5_mordent": (60, "flute"),
 "rm_s5_motion_types": (90, None), "rm_s5_piano_pedal": (72, None), "rm_s5_poco_a_poco": (96, "violin"),
 "rm_s5_ppp_fff": (90, "violin"), "rm_s5_repetition": (100, None), "rm_s5_retrograde": (100, None),
 "rm_s5_section_change": (100, None), "rm_s5_subito": (96, "violin"), "rm_s5_trill": (60, "flute"),
 "rm_s5_turn": (60, "flute"), "rm_s5_variation": (100, None),
 "rm_s5_melodic_minor": (100, None), "rm_s5_terraced": (100, None),
 "rm_s6_duration_acceleration": (100, None), "rm_s6_duration_displaced": (100, None, 0.6), "rm_s6_duration_metric_modulation": (80, None),
 "rm_s6_duration_moto_perpetuo": (132, None), "rm_s6_duration_off_beat": (100, "woodblock"), "rm_s6_duration_snap": (80, None),
 "rm_s6_duration_tied_over_beat": (96, None), "rm_s6_duration_tuplets": (60, None), "rm_s6_dynamics_breath": (66, "flute"),
 "rm_s6_dynamics_sfz_fp": (88, "violin", 0.6), "rm_s6_dynamics_swells": (80, "violin"), "rm_s6_dynamics_terraced": (100, None),
 "rm_s6_dynamics_staccatissimo": (96, "clarinet", 0.6), "rm_s6_pitch_bitonal": (88, None), "rm_s6_pitch_conjunct_angular": (96, None),
 "rm_s6_pitch_dim_aug": (60, None), "rm_s6_pitch_inversions": (60, None), "rm_s6_pitch_modes": (120, None),
 "rm_s6_pitch_picardy": (60, None), "rm_s6_pitch_quartal_open5": (60, None), "rm_s6_pitch_suspension": (60, None),
 "rm_s6_structure_elaborated": (96, None), "rm_s6_structure_extended": (100, None), "rm_s6_texture_antiphonal": (100, None),
 "rm_s6_texture_heterophony": (88, None), "rm_s6_texture_staggered": (100, None),
}


def score_block(src):
    """(start, end) of the first \\score { ... } block, end exclusive."""
    i = src.find("\\score")
    if i < 0:
        return None
    depth = 0
    for j in range(src.index("{", i), len(src)):
        if src[j] == "{":
            depth += 1
        elif src[j] == "}":
            depth -= 1
            if depth == 0:
                return i, j + 1


def strip_block(text, keyword):
    """Remove every `keyword { ... }` block from text."""
    while True:
        i = text.find(keyword)
        if i < 0:
            return text
        depth, j = 0, text.index("{", i)
        for k in range(j, len(text)):
            depth += {"{": 1, "}": -1}.get(text[k], 0)
            if depth == 0:
                break
        text = text[:i] + text[k + 1:]


# wider steps than LilyPond's defaults, so pp, mf and ff are clearly different on playback
VOLUMES = """#(define (eom-volume d)
  (let ((v (assoc-get d '(("ppp" . 0.1) ("pp" . 0.18) ("p" . 0.3) ("mp" . 0.45) ("mf" . 0.6)
                          ("f" . 0.78) ("ff" . 0.92) ("fff" . 1.0) ("fp" . 0.78) ("sf" . 0.95) ("sfz" . 0.95) ("sfzp" . 0.95)))))
    (if v v (default-dynamic-absolute-volume d))))
"""


def midi_source(name, bpm, inst, vmax=0.8):
    src = (here / "lilypond" / f"{name}.ly").read_text()
    blk = score_block(src)
    if blk:
        a, b = blk
        body = src[src.index("{", a) + 1:b - 1]
        head, tail = src[:a], src[b:]
    else:  # bare top-level music: everything from the first line that opens it
        cut = src.index("\n<<") + 1
        head, body, tail = src[:cut], src[cut:], ""
    body = strip_block(strip_block(body, "\\layout"), "\\midi")
    ctx = ('\\context { \\Score dynamicAbsoluteVolumeFunction = #eom-volume } ' +
           f'\\context {{ \\Staff midiInstrument = "{inst or "acoustic grand"}" midiMaximumVolume = #{vmax} }}'
           f' \\context {{ \\RhythmicStaff midiInstrument = "{inst or "acoustic grand"}" midiMaximumVolume = #{vmax} }}')
    # staccato at a quarter of the written length so it is clearly short
    head = '\\include "articulate.ly"\n#(set! ac:staccatoFactor (cons 1 4))\n' + VOLUMES + head
    return f"{head}\\score {{ \\unfoldRepeats \\articulate {{ {body} }} \\midi {{ \\tempo 4 = {bpm} {ctx} }} }}{tail}"


def render(name):
    bpm, inst, *rest = AUDIO[name]
    out = here / "audio" / f"{name}.mp3"
    with tempfile.TemporaryDirectory() as t:
        t = pathlib.Path(t)
        (t / "x.ly").write_text(midi_source(name, bpm, inst, *rest))
        r = subprocess.run(["lilypond", "-o", str(t / "x"), str(t / "x.ly")], capture_output=True, text=True)
        if not (t / "x.midi").exists():
            print("LILYPOND FAILED", name, r.stderr[-600:]); return False
        subprocess.run(["fluidsynth", "-ni", "-g", "0.8", "-r", "44100", "-F", str(t / "x.wav"), SOUNDFONT, str(t / "x.midi")], capture_output=True)
        if not (t / "x.wav").exists():
            print("FLUIDSYNTH FAILED", name); return False
        # one fixed gain so the loudest moment peaks at -1 dB: soft stays soft and loud stays loud
        det = subprocess.run(["ffmpeg", "-i", str(t / "x.wav"), "-af", "volumedetect", "-f", "null", "-"], capture_output=True, text=True).stderr
        gain = -1 - float(re.search(r"max_volume: (-?[0-9.]+) dB", det).group(1))
        subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", str(t / "x.wav"),
                        "-af", f"areverse,silenceremove=start_periods=1:start_threshold=-60dB,areverse,volume={gain:.2f}dB",
                        "-ar", "44100", "-b:a", "128k", str(out)], check=True)
    print("ok", name)
    return True


if __name__ == "__main__":
    (here / "audio").mkdir(exist_ok=True)
    names = [a for a in sys.argv[1:] if not a.startswith("--")] or list(AUDIO)
    for n in names:
        if "--all" in sys.argv or sys.argv[1:] == names or not (here / "audio" / f"{n}.mp3").exists():
            render(n)
