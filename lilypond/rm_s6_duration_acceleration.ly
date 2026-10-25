\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \tempo 4 = 100
 c4^\markup\bold "crotchets" c c c | c8^\markup\bold "quavers" c c c c c c c | \tuplet 3/2 4 { c8^\markup\bold "triplets" c c c c c c c c c c c } | c16^\markup\bold "semiquavers" c c c c c c c c c c c c c c c | c1 \bar "|." } }
