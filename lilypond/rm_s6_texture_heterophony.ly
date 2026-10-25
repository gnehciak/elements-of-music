\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \with { instrumentName = "Plain" } \relative c'' { \numericTimeSignature \time 4/4
   c4^\markup\bold "Same tune, same time" d e g | a g e2 \bar "|." }
 \new Staff \with { instrumentName = "Decorated" } \relative c'' { \numericTimeSignature \time 4/4
   c8 b d e e16 f e d g4 | a16 b a g g8 f e d16 e e4 \bar "|." }
>> }
