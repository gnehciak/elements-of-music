\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \cadenzaOn \omit Staff.TimeSignature
 c4^\markup\bold "senza misura" d8 e f4 g2 \breathe a8 g f e d4 \breathe e8 d c2\fermata \bar "|." } }
