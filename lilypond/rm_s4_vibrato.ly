\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \textLengthOn
 a1^\markup\italic\bold "senza vib." | << a1^\markup\italic\bold "vib." { s16 \startTrillSpan s2.. s16 s16*0 \stopTrillSpan } >> | \bar "|." }
 \layout { \context { \Voice \override TrillSpanner.bound-details.left.text = ##f \override TrillSpanner.bound-details.right.padding = #0 } } }
