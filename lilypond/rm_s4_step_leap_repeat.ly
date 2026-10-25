\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 \override TextScript.self-alignment-X = #CENTER \override TextScript.parent-alignment-X = #CENTER
 c4 d^\markup\bold "step" e c'^\markup\bold "leap" | c c^\markup\bold "repeat" b^\markup\bold "step" a | g2 c,^\markup\bold "leap" \bar "|." } \layout { \context { \Score proportionalNotationDuration = #1/12 \override SpacingSpanner.uniform-stretching = ##t } } }
