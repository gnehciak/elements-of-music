\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4
 c16-.^\markup\bold "spicc." d-. e-. f-. g-. f-. e-. d-. | c4 r | g'16-.(^\markup\bold "jeté" g-. g-. g-.) e-.( e-. e-. e-.) | c4 r \bar "|." } }
