\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new DrumStaff << \numericTimeSignature \time 4/4
 \new DrumVoice { \voiceOne \drummode { hh8^\markup\bold "Groove" hh hh hh hh hh hh hh | hh8 hh hh hh sn16^\markup\bold "Fill" sn sn sn tomh tomh tomfh tomfh | cymc4^\markup\bold "New section" hh8 hh hh hh hh hh \bar "|." } }
 \new DrumVoice { \voiceTwo \drummode { bd4 sn bd sn | bd4 sn s2 | bd4 sn bd sn } } >> }
