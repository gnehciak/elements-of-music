\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new RhythmicStaff { \numericTimeSignature \time 4/4
 c4 c8 c c4 c | c8 c c c c4 r4 | c2:32^\markup\italic\bold "roll" c4-> r4 \bar "|." } }
