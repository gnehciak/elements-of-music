\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \override TextScript.staff-padding = #4
 c4_\markup\bold "1" r4_\markup\bold "(2)" e4_\markup\bold "3" r4_\markup\bold "(4)" | g2_\markup\bold "1-2" r2_\markup\bold "(3-4)" | c,4_\markup\bold "1" r8_\markup\bold "(2)" e8_\markup\bold "&" g4_\markup\bold "3" r4_\markup\bold "(4)" \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32) } } }
