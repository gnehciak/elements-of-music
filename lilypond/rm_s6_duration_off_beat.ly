\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { << \new RhythmicStaff \with { instrumentName = "Off-beat" } { \numericTimeSignature \time 4/4 r8 c8-> r8 c8-> r8 c8-> r8 c8-> | r8 c8-> r8 c8-> r8 c8-> r8 c8-> }
 \new RhythmicStaff \with { instrumentName = "Beat" } { c4 c c c | c4 c c c } >> \layout { \context { \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32) } } }
