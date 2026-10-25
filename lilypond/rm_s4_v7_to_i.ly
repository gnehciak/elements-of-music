\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { g1:7 c1 }
 \new Staff { \omit Staff.TimeSignature <g b d' f'>1 <g c' e'>1 \bar "|." }
 \new Lyrics \lyricmode { \override LyricText.font-size = #2 "V7"1 "I"1 }
>> }
