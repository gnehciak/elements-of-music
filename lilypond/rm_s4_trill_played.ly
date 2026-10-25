\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 \override TextScript.staff-padding = #3
 d2\trill_\markup\bold "Written" | d16_\markup\bold "Played (roughly)" e d e d e d e \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.spacing-increment = #2.2 } } }
