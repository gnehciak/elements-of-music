\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 4/4 \clef treble \textLengthOn
   << { c''1^\markup\bold "preparation" ~ | c''2^\markup\bold "suspension" b'2^\markup\bold "resolution" | c''1 \bar "|." }
      \new Voice { \voiceTwo <e' g'>1 | <d' g'>1 | <e' g'>1 } >> }
  \new Staff { \omit Staff.TimeSignature \clef bass c1 | g,2 g,2 | c1 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold I1 "V (C is a 4th)"2 "V (B is a 3rd)"2 I1 }
 >> >> }
