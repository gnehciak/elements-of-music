\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber \override TextScript.padding = #1.2 } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4
 c4\downbow_\markup\italic\bold "down-bow" d\upbow e\downbow f\upbow | g4(\downbow^\markup\italic\bold "slur: one bow" a b c) | g1\upbow_\markup\italic\bold "up-bow" \bar "|." } }
