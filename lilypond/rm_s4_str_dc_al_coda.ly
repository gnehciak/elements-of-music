\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 \override Staff.TimeSignature.space-alist.first-note = #'(extra-space . 2)
 c4 e g e | f2 d^\markup\bold\italic "To Coda" ^\coda \bar "||" e4 f g a | g1^\markup\bold\italic "D.C. al Coda" \bar "||" \break
 \once \override Score.RehearsalMark.self-alignment-X = #LEFT
 \mark \markup { \musicglyph "scripts.coda" \hspace #1 \bold "Coda" } d4 e f d | c1 \bar "|." }
 \layout { \context { \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16) } } }
