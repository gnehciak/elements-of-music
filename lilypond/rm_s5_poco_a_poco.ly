\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 \set crescendoText = \markup\italic "poco a poco cresc." \set crescendoSpanner = #'text
 c4\p\< d e c | f e d g | a g f b | c1\f \bar "|." } }
