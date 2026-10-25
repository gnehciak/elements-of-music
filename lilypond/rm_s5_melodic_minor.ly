\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 16\cm }
\score { \new Staff \with { \omit TimeSignature } \relative c' { \cadenzaOn
 a4^\markup\bold "Going up" b c d e fis_\markup\bold "6th" gis_\markup\bold "7th" a \bar "||"
 a^\markup\bold "Going down: natural minor" g! f! e d c b a \bar "|." } }
