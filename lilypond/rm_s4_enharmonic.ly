\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 10\cm }
\score { \new Staff \with { \omit TimeSignature } { \cadenzaOn fis'1_\markup\bold "F sharp" \bar "" ges'1_\markup\bold "G flat" \bar "||" cis''1_\markup\bold "C sharp" \bar "" des''1_\markup\bold "D flat" \bar "|." } }
