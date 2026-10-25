\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new Staff \relative c'' { \numericTimeSignature \time 4/4
  c4^\markup\bold "Xylophone: definite pitch" e g e | d8 e f d c2 \bar "|." }
 \new RhythmicStaff { \numericTimeSignature \time 4/4
  c4^\markup\bold "Snare drum: indefinite pitch" c8 c c4 c | c8 c c c c2 \bar "|." }
>> }
