\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
   c4^\markup\bold "Plain" e d g | e2 c \bar "||"
   c8^\markup\bold "Elaborated" d e e d e16 d g4 | e8 e d d c2 \bar "|." } }
