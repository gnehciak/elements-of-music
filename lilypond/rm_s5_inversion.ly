\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 c8^\markup\bold "Motif (up, then down)" d e f g4 e | g8^\markup\bold "Inversion (down, then up)" f e d c4 e | c1 \bar "|." } }
