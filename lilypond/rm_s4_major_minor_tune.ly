\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \numericTimeSignature \time 4/4
 c4^\markup\bold "major" e g c' | g e c2 \bar "||" c4^\markup\bold "minor" ees g c' | g ees c2 \bar "|." } }
