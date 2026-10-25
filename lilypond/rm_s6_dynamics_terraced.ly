\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 c8\f^\markup\bold "loud" d e c g'4 g | c,8\p^\markup\bold "echo (soft)" d e c g'4 g | a8\f^\markup\bold "loud again" g f e d4 g | c,1 \bar "|." } }
