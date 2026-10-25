\version "2.24.0"
\paper { ragged-right = ##f line-width = 7\cm markup-system-spacing.padding = #6 indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { g2 c2 }
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 2/2 \clef treble <d' g' b'>2 <e' g' c''>2 \bar "|." }
  \new Staff { \omit Staff.TimeSignature \clef bass g2 c2 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold V2 I2 }
 >> >>
 \layout { \context { \Score \omit BarNumber } } }
