\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \with { instrumentName = "Player 1" } \relative c'' { \numericTimeSignature \time 4/4
   c8 r e r g r e r | f r d r c2 \bar "|." }
 \new Staff \with { instrumentName = "Player 2" } \relative c'' { \numericTimeSignature \time 4/4
   r8 d r f r a r f | r e r b r2 \bar "|." }
 \new Staff \with { instrumentName = "You hear" } \relative c'' { \numericTimeSignature \time 4/4
   c8 d e f g a e f | f e d b c2 \bar "|." }
>> }
