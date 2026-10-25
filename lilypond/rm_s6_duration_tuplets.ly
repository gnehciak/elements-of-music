\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 3/4
 c16^\markup\bold "4 semiquavers" d e f \tuplet 5/4 { g16^\markup\bold "Quintuplet (5)" f e d c } \tuplet 6/4 { d16^\markup\bold "Sextuplet (6)" e f g a b } | c2. \bar "|." } }
