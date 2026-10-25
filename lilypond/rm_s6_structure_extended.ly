\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
   e4^\markup\bold "Original phrase" f g e | d2 c \bar "||"
   e4^\markup\bold "Extended phrase" f g e | d2 d4^\markup\italic "extension starts" e | f e d2 | c1 \bar "|." } }
