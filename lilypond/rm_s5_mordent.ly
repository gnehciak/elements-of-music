\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 20\cm }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 d2\mordent_\markup\bold "lower mordent" \bar "||" d32_\markup\bold "played" [ c d16 ] ~ d4. \bar "||" d2\prall_\markup\bold "upper mordent" \bar "||" d32_\markup\bold "played" [ e d16 ] ~ d4. \bar "|." } }
