\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \with { instrumentName = "Melody" } \relative c'' { \numericTimeSignature \time 4/4
   e4^\markup\bold "Thin: 1 layer" d c d | e e e2 | d4^\markup\bold "Thick: 3 layers" d e f | e1 \bar "|." }
 \new Staff \with { instrumentName = "Chords" } \relative c' { \numericTimeSignature \time 4/4
   R1 | R1 | <b d g>2 <b d g> | <c e g>1 }
 \new Staff \with { instrumentName = "Bass" } \relative c { \clef bass \numericTimeSignature \time 4/4
   R1 | R1 | g4 g g g | c1 }
>> }
