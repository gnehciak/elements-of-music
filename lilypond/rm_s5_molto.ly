\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \tempo "Allegro molto"
 c8 b c d e d c b | a4 c g e' | d4^\markup\italic\bold "molto rit." c b d | c1 \bar "|." } }
