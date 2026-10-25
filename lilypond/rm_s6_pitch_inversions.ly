\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { c1 c1/e c1/g }
 \new Staff { \omit Staff.TimeSignature \clef treble
  <c' e' g'>1 \bar "||" <e' g' c''>1 \bar "||" <g' c'' e''>1 \bar "||" }
 \new Lyrics \with { \override LyricSpace.minimum-distance = #2.5 } \lyricmode { \override LyricText.font-series = #'bold "root position"1 "1st inversion"1 "2nd inversion"1 }
 \new Lyrics \with { \override LyricSpace.minimum-distance = #2.5 } \lyricmode { "C in the bass"1 "E in the bass"1 "G in the bass"1 }
 >> }
