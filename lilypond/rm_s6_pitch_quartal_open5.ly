\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff { \omit Staff.TimeSignature \clef treble
  <c' g'>1 <d' a'>1 \bar "||" <d' g' c''>1 <e' a' d''>1 \bar "||" <c' e' g' b'>1 <f' a' c'' e''>1 \bar "||" }
 \new Lyrics \with { \override LyricSpace.minimum-distance = #2.5 } \lyricmode { \override LyricText.font-series = #'bold "open 5ths"1 ""1 "quartal"1 ""1 "Cmaj7"1 "Fmaj7"1 }
 \new Lyrics \with { \override LyricSpace.minimum-distance = #2.5 } \lyricmode { "no 3rd"1 ""1 "stacked 4ths"1 ""1 "major 7ths"1 ""1 }
 >> }
