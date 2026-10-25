\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new PianoStaff <<
  \new Staff { \key c \major \numericTimeSignature \time 4/4 \clef treble g'4^\markup\bold "C major" e' c'' g' | a' f' g'2 \bar "|." }
  \new Staff { \key ees \major \clef bass <ees g bes>2_\markup\bold "E flat major" <ees g bes>2 | <aes, c ees>2 <bes, d f>2 }
 >> }
