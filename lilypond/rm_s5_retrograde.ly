\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 c8^\markup\bold "Motif" d e f g4 e | e4^\markup\bold "Retrograde (backwards)" g f8 e d c | c1 \bar "|." } }
