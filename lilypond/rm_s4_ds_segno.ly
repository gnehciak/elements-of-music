\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 c4 d e f | g1 \bar "||" \mark \markup \musicglyph "scripts.segno" e4 f g a | g2 e2^\markup\italic\bold "Fine" \bar "||" d4 e f d | c1^\markup\italic\bold "D.S. al Fine" \bar "|."
 } }
