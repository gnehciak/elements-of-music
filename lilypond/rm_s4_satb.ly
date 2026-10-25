\version "2.24.0"
\paper { indent = 18\mm tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new ChoirStaff <<
 \new Staff \with { instrumentName = \markup\bold \center-column { "Soprano" "Alto" } } << \numericTimeSignature \time 4/4
   \new Voice { \voiceOne g'2^\markup\italic\bold "a cappella" a'2 | b'2 c''2 \bar "|." }
   \new Voice { \voiceTwo e'2 f'2 | d'2 e'2 } >>
 \new Staff \with { instrumentName = \markup\bold \center-column { "Tenor" "Bass" } } << \clef bass \numericTimeSignature \time 4/4
   \new Voice { \voiceOne c'2 c'2 | g2 g2 }
   \new Voice { \voiceTwo c2 f2 | g,2 c2 } >>
>> }
