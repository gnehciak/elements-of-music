\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \tempo "Andante" e4^\markup\bold "Section A" \mp d c_\markup\italic\bold "rit." d | c1\fermata \bar "||" \tempo "Allegro" g8^\markup\bold "Section B" \f a g e c4 c | d8 e f d c2 \bar "|." } }
