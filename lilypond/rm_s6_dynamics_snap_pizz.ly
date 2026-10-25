\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c' { \clef bass \numericTimeSignature \time 4/4
 c,4^\markup\bold "pizz." g' c, g' | c,4\snappizzicato^\markup\bold "snap pizz." r g'\snappizzicato r | c,1^\markup\bold "arco" \bar "|." } }
