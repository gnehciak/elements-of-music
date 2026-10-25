\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \override Score.SpacingSpanner.spacing-increment = #3.2
 c4-.^\markup\bold "staccato" d-. e-. c-. | c-!^\markup\bold "staccatissimo" d-! e-! c-! | c--^\markup\bold "tenuto" d-- e-- c-- \bar "|." } }
