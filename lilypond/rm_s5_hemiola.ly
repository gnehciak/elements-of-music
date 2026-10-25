\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 3/4
 c4^\markup\bold "Felt in 3" d e | d4 c b | c2^\markup\bold "Felt in 2 (hemiola)" d4~ | d4 b2 | c2. \bar "|." } }
