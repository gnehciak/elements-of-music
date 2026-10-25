\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << 
 \new Staff \with { instrumentName = "Leader" } \relative c'' { \numericTimeSignature \time 4/4
  g4^\markup\bold "Call" e8 g a4 g | R1 | g4^\markup\bold "Call" e8 g c4 a | R1 \bar "|." }
 \new Staff \with { instrumentName = "Group" } \relative c'' { \numericTimeSignature \time 4/4
  R1 | e,4^\markup\bold "Response" d8 e c2 | R1 | e4^\markup\bold "Response" d8 d c2 \bar "|." }
>> }
