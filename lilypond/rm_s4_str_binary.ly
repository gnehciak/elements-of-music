\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 \repeat volta 2 { c4^\markup\bold "A" e d c | b8 c d e d2 | }
 \repeat volta 2 { a4^\markup\bold "B" a b b | g8 a b d c2 | } } }
