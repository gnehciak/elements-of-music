\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff { \clef bass \numericTimeSignature \time 4/4
 c4^\markup\italic\bold "Timp." g, c g, | c2 g,2 | c1:32^\markup\italic\bold "roll" \bar "|." } }
