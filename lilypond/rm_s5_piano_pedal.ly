\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \numericTimeSignature \time 4/4 \set Staff.pedalSustainStyle = #'mixed
 <c e g>2\sustainOn <c e g> | <c f a>2\sustainOff\sustainOn <c f a> | <b d g>2\sustainOff\sustainOn <b d g> | <c e g>2\sustainOff\sustainOn r2\sustainOff \bar "|." } }
