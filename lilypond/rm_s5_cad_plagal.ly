\version "2.24.0"
\paper { ragged-right = ##f line-width = 7\cm markup-system-spacing.padding = #3 indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\markup \bold \fontsize #2 "Plagal cadence"
\score { <<
 \new ChordNames \chordmode { f2 c2 }
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 2/2 \clef treble <f' a' c''>2 <e' g' c''>2 \bar "|." }
  \new Staff { \omit Staff.TimeSignature \clef bass f2 c2 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold IV2 I2 }
 >> >>
 \layout { \context { \Score \omit BarNumber } } }
