\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 \override TextScript.self-alignment-X = #CENTER \override TextScript.parent-alignment-X = #CENTER
 fis,4^\markup\bold "F sharp" g fis^\markup\italic "still sharp" e | f2^\markup\italic "new bar: F" e \bar "|." } \layout { \context { \Score proportionalNotationDuration = #1/10 \override SpacingSpanner.uniform-stretching = ##t } } }
