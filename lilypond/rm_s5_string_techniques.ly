\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 \textLengthOn
 c2:32_\markup\bold "tremolo" | <g, d'>2_\markup\bold "double stop" | e''2\flageolet_\markup\bold "harmonic" | g,,4^\markup\italic "col legno" g | g2^\markup\italic "ord." \bar "|." } }
