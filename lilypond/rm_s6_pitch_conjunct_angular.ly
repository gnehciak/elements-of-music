\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff { \numericTimeSignature \time 4/4 \clef treble
  c'4^\markup\bold "conjunct (stepwise)" d' e' f' | g' f' e'2 \bar "||"
  c'4^\markup\bold "angular (wide, uneven leaps)" b' fis' g'' | cis'' d' a''2 \bar "|." } }
