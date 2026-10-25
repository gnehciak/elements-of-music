\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \numericTimeSignature \time 4/4
 <c e g>1^\markup\bold "block" | c4^\markup\bold "broken" e g e | c1 \bar "|." } }
