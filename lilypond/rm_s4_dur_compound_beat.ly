\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << \new RhythmicStaff { \numericTimeSignature \time 6/8 c4.^\markup\bold "Beat = dotted crotchet" c4. | c8^\markup\bold "Each beat splits into 3 quavers" c8 c8 c8 c8 c8 \bar "|." }
 \addlyrics { \override LyricText.font-series = #'bold "1" "2" "1" "&" "a" "2" "&" "a" } >> }
