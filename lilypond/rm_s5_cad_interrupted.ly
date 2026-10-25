\version "2.24.0"
\paper { ragged-right = ##f line-width = 7\cm markup-system-spacing.padding = #6 indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { g2 a2:m }
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 2/2 \clef treble <d' g' b'>2 <c' e' c''>2 \bar "|." }
  \new Staff { \omit Staff.TimeSignature \clef bass g2 a2 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold V2 vi2 }
 >> >>
 \layout { \context { \Score \omit BarNumber } } }
