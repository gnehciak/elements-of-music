\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 \override TextScript.self-alignment-X = #CENTER \override TextScript.parent-alignment-X = #CENTER
 bes4^\markup\bold "B flat" a b!^\markup\bold "B natural" c \bar "|." } \layout { \context { \Score proportionalNotationDuration = #1/10 \override SpacingSpanner.uniform-stretching = ##t } } }
