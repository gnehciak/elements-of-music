\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 e2^\markup\italic "sul pont." d4 c | d2^\markup\italic "ord." g, | e'2^\markup\italic "sul tasto" d4 b | c1 \bar "|." } }
