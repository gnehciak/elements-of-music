\version "2.24.0"
\paper { ragged-right = ##f line-width = 7\cm markup-system-spacing.padding = #3 indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\markup \bold \fontsize #2 "Imperfect cadence"
\score { <<
 \new ChordNames \chordmode { c2 g2 }
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 2/2 \clef treble <e' g' c''>2 <d' g' b'>2 \bar "|." }
  \new Staff { \omit Staff.TimeSignature \clef bass c2 g,2 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold I2 V2 }
 >> >>
 \layout { \context { \Score \omit BarNumber } } }
