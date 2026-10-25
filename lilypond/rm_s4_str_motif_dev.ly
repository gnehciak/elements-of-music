\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f line-width = 200\mm ragged-right = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 c8^\markup\bold "Motif" d e4 g2 | c,8^\markup\bold "Repeated" d e4 g2 | d8^\markup\bold "Moved higher" e f4 a2 | g8^\markup\bold "New ending" f e4 c2 \bar "|." } }
