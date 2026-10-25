\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\paper { ragged-right = ##f line-width = 15\cm }
<<
  \new ChordNames \with { \override ChordName.font-size = #3 } \chordmode { \set majorSevenSymbol = \markup { "maj7" } c1 c:7 c:maj7 c:m7 c:9 }
  \new Staff \with { \omit TimeSignature } {
    \accidentalStyle forget
    <c' e' g'>1 \bar "" <c' e' g' bes'>1 \bar "" <c' e' g' b'>1 \bar "" <c' ees' g' bes'>1 \bar "" <c' e' g' bes' d''>1 \bar "|."
  }
>>
