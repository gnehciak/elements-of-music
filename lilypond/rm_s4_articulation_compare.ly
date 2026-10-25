\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \override TextScript.staff-padding = #3
 c4-._\markup\bold "staccato" d-. e-. c-. | c4(_\markup\bold "slur (legato)" d e c) | c4->_\markup\bold "accent" d e-> c | c4--_\markup\bold "tenuto" d-- e-- c-- \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.spacing-increment = #2.6 } } }
