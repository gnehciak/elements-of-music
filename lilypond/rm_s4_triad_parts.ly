\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \omit Staff.TimeSignature
 c1_\markup\bold "root" | <c e>1_\markup\bold "+ 3rd" | <c e g>1_\markup\bold "+ 5th = triad" \bar "|." } }
