\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 10\cm }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 d2\trill_\markup\bold "written" \bar "||" d16_\markup\bold "played" e d e d e d e \bar "|." } }
