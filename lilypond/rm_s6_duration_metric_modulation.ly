\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4 \tempo 4 = 80
 c4 d \tuplet 3/2 { e4^\markup\bold "triplet crotchets" f g } |
 \tempo \markup { \bold "triplet crotchet = new crotchet (" \concat { \bold "" \fontsize #-2 \general-align #Y #DOWN \note-by-number #2 #0 #UP } \bold "= 120)" }
 a4 g f e | d1 \bar "|." } }
