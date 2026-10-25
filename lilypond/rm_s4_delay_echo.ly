\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \override TextScript.staff-padding = #2.5 \override TextScript.self-alignment-X = #CENTER
 g4\f^\markup\bold "Played" \parenthesize g\mf^\markup\italic "echo" \parenthesize g\mp^\markup\italic "echo" \parenthesize g\p^\markup\italic "echo" \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.spacing-increment = #4.5 } } }
