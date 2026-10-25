\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 c8^\markup\bold "Motif" d e f g4 e | c8^\markup\bold "First 4 notes" d e f c d e f | g4^\markup\bold "Last 2 notes" e g e | c1 \bar "|." } }
