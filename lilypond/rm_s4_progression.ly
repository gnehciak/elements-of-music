\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { c1 f g c }
 \new Staff = "s" { \numericTimeSignature \time 4/4 <c' e' g'>1 <c' f' a'> <b d' g'> <c' e' g'> \bar "|." }
 \new Lyrics \lyricmode { \override LyricText.font-size = #2 "I"1 "IV"1 "V"1 "I"1 }
>> }
