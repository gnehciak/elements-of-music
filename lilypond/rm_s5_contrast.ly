\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 c8^\markup\bold "Motif" \f d e f g4 e | c8 d e f g2 \bar "||" a'2^\markup\bold "Contrast (new idea)" \p e4. c8 | d1 \bar "|." } }
