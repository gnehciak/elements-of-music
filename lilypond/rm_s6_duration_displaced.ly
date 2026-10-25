\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 c4->^\markup\bold "Motif on the beat" g-> a8 g e4 | r8^\markup\bold "Displaced by a quaver" c'4-> g-> a8 g e | r1 \bar "|." } }
