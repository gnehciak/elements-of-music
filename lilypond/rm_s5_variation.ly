\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 c8^\markup\bold "Motif" d e f g4 e | c8^\markup\bold "Variation (new rhythm, extra notes)" d16 c e8 f g8. a16 g8 e | g4 f d2 | c1 \bar "|." } }
