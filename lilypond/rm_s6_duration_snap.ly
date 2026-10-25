\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 g8.^\markup\bold "Dotted (long-short)" a16 b8. c16 d2 | e16^\markup\bold "Snap (short-long)" d8. c16 b8. a2 | g1 \bar "|." } }
