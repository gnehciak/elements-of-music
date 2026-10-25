\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new PianoStaff <<
 \new Staff \relative c'' { \numericTimeSignature \time 4/4
  c4^\markup\bold "Contrary" d e f | e4^\markup\bold "Similar" f a c | c,4^\markup\bold "Parallel" d e f | g4^\markup\bold "Oblique" g g g \bar "|." }
 \new Staff \relative c' { \clef bass \numericTimeSignature \time 4/4
  c4 b a g | c,4 d e f | e4 f g a | e4 f g a \bar "|." }
>> }
