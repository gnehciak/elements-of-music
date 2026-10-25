\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\markup \line {
 \score { \new Staff { \omit Staff.TimeSignature \textLengthOn \clef treble g'1_\markup\bold "G" \bar "|." } \layout { indent = 0 } }
 \hspace #6
 \score { \new Staff { \omit Staff.TimeSignature \textLengthOn \clef bass b,1_\markup\bold "B" \bar "|." } \layout { indent = 0 } }
}
