\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 3/4
 c4\laissezVibrer^\markup\bold "l.v." e\laissezVibrer g\laissezVibrer | c,2.\laissezVibrer \bar "|." } }
