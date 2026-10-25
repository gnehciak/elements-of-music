\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f line-width = 200\mm ragged-right = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << \new Staff \relative c' { \numericTimeSignature \time 4/4
 <c e g>2^\markup\bold "Block chords" <b d g> | <c e g>1 | c8^\markup\bold "Broken chords" e g e b d g d | c e g e c2 \bar "|." }
 \new ChordNames \chordmode { c2 g c1 c2 g c1 } >> }
