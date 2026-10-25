\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 c4 d e c | \textMark \markup\bold "bar line" e d c2 \bar "||" \textMark \markup\bold "double bar line" e4 f e d | c1 \bar "|." \textEndMark \markup\bold "final bar line" }
 \layout { \context { \Score \override TextMark.self-alignment-X = #CENTER \override TextMark.outside-staff-priority = #2000 \override TextMark.staff-padding = #4 \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16) } } }
