\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32) } }
\score { \new RhythmicStaff { \numericTimeSignature \time 4/4
 c4^\markup\bold "D" c^\markup\bold "D" c^\markup\bold "D" c^\markup\bold "D" |
 c8^\markup\bold "D" c^\markup\bold "U" c^\markup\bold "D" c^\markup\bold "U" c^\markup\bold "D" c^\markup\bold "U" c^\markup\bold "D" c^\markup\bold "U" |
 c4^\markup\bold "D" c8^\markup\bold "D" c^\markup\bold "U" r8 c^\markup\bold "U" c^\markup\bold "D" c^\markup\bold "U" \bar "|." } }
