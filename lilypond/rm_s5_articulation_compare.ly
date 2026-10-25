\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 \textLengthOn
 b4-._\markup\bold "staccato" b-. | b--_\markup\bold "tenuto" b-- | b-_(_\markup\bold "portato" b-_) | b->_\markup\bold "accent" b-> | b-^_\markup\bold "marcato" b-^ \bar "|." } }
