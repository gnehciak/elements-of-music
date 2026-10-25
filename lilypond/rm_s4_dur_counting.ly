\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << \new Staff \relative c'' { \numericTimeSignature \time 4/4 c2 d4 e8 f | g4. f8 e4 r4 | c1 \bar "|." }
 \addlyrics { \override LyricText.font-series = #'bold \override LyricSpace.minimum-distance = #3 "1-2" "3" "4" "&" "1-&-2" "&" "3" "1-2-3-4" } >> 
 \layout { \context { \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32) } } }
