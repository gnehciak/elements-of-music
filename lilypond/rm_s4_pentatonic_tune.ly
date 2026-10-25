\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \numericTimeSignature \time 4/4
 c4^\markup\italic\bold "only C D E G A" d e g | a2 g4 e | d e g a | g e c2 \bar "|." } }
