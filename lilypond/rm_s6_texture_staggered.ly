\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \with { instrumentName = "Flute" } \relative c'' { \numericTimeSignature \time 4/4
   c4^\markup\bold "1st entry" e g e | f d b g | c e g e | c1 \bar "|." }
 \new Staff \with { instrumentName = "Clarinet" } \relative c' { \numericTimeSignature \time 4/4
   R1 | g'4^\markup\bold "2nd entry" b d b | c g e g | e1 \bar "|." }
 \new Staff \with { instrumentName = "Bassoon" } \relative c { \clef bass \numericTimeSignature \time 4/4
   R1 | R1 | c4^\markup\bold "3rd entry" e g e | c1 \bar "|." }
>> }
