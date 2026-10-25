\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f system-system-spacing.padding = #4 }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff { \omit Staff.TimeSignature \omit Stem \cadenzaOn \clef treble
  d'4 e' f' g' a' b' c'' d'' \bar "||"
  e'4 f' g' a' b' c'' d'' e'' \bar "||" \break
  g'4 a' b' c'' d'' e'' f'' g'' \bar "||"
  a'4 b' c'' d'' e'' f'' g'' a'' \bar "||" }
 \new Lyrics \lyricmode { \override LyricText.font-series = #'bold \override LyricText.self-alignment-X = #LEFT
  "D Dorian: minor with a raised 6th"4 ""4 ""4 ""4 ""4 ""4 ""4 ""4
  "E Phrygian: minor with a flat 2nd"4 ""4 ""4 ""4 ""4 ""4 ""4 ""4
  "G Mixolydian: major with a flat 7th"4 ""4 ""4 ""4 ""4 ""4 ""4 ""4
  "A Aeolian: natural minor"4 ""4 ""4 ""4 ""4 ""4 ""4 ""4 }
 >> }
