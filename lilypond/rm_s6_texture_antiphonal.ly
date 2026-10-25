\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \with { instrumentName = "Group 1" } \relative c'' { \numericTimeSignature \time 4/4
   e4^\markup\bold "Group 1" d c d | R1 | f4^\markup\bold "Group 1" e d e | <c e>1^\markup\bold "Both" \bar "|." }
 \new Staff \with { instrumentName = "Group 2" } \relative c' { \numericTimeSignature \time 4/4
   R1 | e4^\markup\bold "Group 2" d c d | R1 | <g c>1 \bar "|." }
>> }
