\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 c8\f^\markup\bold "Loud" d e c d e f d | e2 c \bar "||"
 c8\p^\markup\bold "Echo: suddenly soft" d e c d e f d | e2 c \bar "||"
 g'8\f^\markup\bold "Loud again" f e d c d e f | g1 \bar "|." } }
