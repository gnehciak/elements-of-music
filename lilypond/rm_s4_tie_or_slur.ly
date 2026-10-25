\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 g2^\markup\bold "Tie: same pitch" ~ g4 r | g4(^\markup\bold "Slur: different pitches" a b) r \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32) } } }
