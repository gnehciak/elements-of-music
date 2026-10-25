\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new RhythmicStaff { \numericTimeSignature \time 4/4
 c4^\markup\italic\bold "strike" c c c | c1:32^\markup\italic\bold "shake" | c4-> r4 r2 \bar "|." } }
