\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \numericTimeSignature \time 4/4
 d4 e f a | b2^\markup\bold "B natural" a4 g | f e d c | d1 \bar "|." } }
