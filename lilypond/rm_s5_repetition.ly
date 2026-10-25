\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 c8^\markup\bold "Motif" d e f g4 e | c8^\markup\bold "Repetition (the same again)" d e f g4 e | g4 f d2 | c1 \bar "|." } }
