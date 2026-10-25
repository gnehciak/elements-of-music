\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff << \relative c' { \omit Staff.TimeSignature \time 2/2
 e2 f | b2 c | c,2 cis | c2 d | e2 fis \bar "|." }
 { \override TextScript.self-alignment-X = #CENTER \override TextScript.staff-padding = #4.5 s4 s4_\markup\bold "semitone" s2 s4 s4_\markup\bold "semitone" s2 s4 s4_\markup\bold "semitone" s2 s4 s4_\markup\bold "tone" s2 s4 s4_\markup\bold "tone" s2 } >>
 \layout { \context { \Score proportionalNotationDuration = #1/8 \override SpacingSpanner.uniform-stretching = ##t } } }
