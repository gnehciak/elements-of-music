\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << \new RhythmicStaff { \numericTimeSignature \time 3/4 c4^\markup\bold "3/4: bottom 4 = crotchet beats" c4 c4 \bar "||" \time 3/8 c8^\markup\bold "3/8: bottom 8 = quaver beats" c8 c8 \bar "|." }
 \addlyrics { \override LyricText.font-series = #'bold "1" "2" "3" "1" "2" "3" } >> }
