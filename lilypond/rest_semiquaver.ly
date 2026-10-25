\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 2.9\cm }
\score { \new Staff \with { \omit TimeSignature } { \cadenzaOn s2. \once \override Rest.extra-offset = #'(5.1 . 0) r16 s2 \bar "" } }
