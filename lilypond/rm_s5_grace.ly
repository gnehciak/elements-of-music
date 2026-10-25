\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 17\cm }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 \acciaccatura e8 d2_\markup\bold "acciaccatura" \bar "||" e32_\markup\bold "played" d8.. ~ d4 \bar "||" \appoggiatura e8 d2_\markup\bold "appoggiatura" \bar "||" e4_\markup\bold "played" d4 \bar "|." } }
