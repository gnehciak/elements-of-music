\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \fixed c' { \key g \major \omit Staff.TimeSignature
 g4 a b c' | d' e' \once \override TextScript.self-alignment-X = #CENTER fis'^\markup\bold "F sharp" g' \bar "|." } }
