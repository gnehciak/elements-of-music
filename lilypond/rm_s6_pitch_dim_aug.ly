\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { c1 c1:m c1:dim c1:aug }
 \new Staff { \omit Staff.TimeSignature \clef treble
  <c' e' g'>1 \bar "||" <c' ees' g'>1 \bar "||" <c' ees' ges'>1 \bar "||" <c' e' gis'>1 \bar "||" }
 \new Lyrics \with { \override LyricSpace.minimum-distance = #2.5 } \lyricmode { \override LyricText.font-series = #'bold major1 minor1 diminished1 augmented1 }
 >> }
