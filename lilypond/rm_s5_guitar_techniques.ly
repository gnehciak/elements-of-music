\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
music = \relative c' { \numericTimeSignature \time 4/4
 e8^\markup\bold "H" ( fis) fis^\markup\bold "P" ( e) a4\glissando^\markup\bold "sl." c4 \bar "|." }
\score { \new StaffGroup << \new Staff { \clef "treble_8" \music } \new TabStaff { \music } >> }
