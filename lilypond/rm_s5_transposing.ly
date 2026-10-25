\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
<<
\new Staff \with { instrumentName = \markup\bold \center-column { "Clarinet" "in B flat" } } \relative c'' { \numericTimeSignature \time 4/4 \key d \major d4^\markup\bold "Written (what the player reads)" e fis g | a1 \bar "|." }
\new Staff \with { instrumentName = \markup\bold \center-column { "Sounds" "(concert pitch)" } } \relative c' { \numericTimeSignature \time 4/4 \key c \major c4 d e f | g1 \bar "|." }
>>
