\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \tempo "Allegro"
 c4 e g e | f4^\markup\italic\bold "rit." e d c | d2 g, | c4^\markup\italic\bold "a tempo" e g e | c1 \bar "|." } }
