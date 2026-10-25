\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
sfzp = #(make-dynamic-script "sfzp")
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 c4\p d e c\sfz | g'2\fp ~ g4 r | e2\sfzp\< g\! | c1\f \bar "|." } }
