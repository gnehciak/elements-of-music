\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { <<
 \new ChordNames \chordmode { a2:m d2:m e2 a2 }
 \new PianoStaff <<
  \new Staff { \omit Staff.TimeSignature \time 4/4 \clef treble \textLengthOn <c' e' a'>2 <d' f' a'>2 | <b e' gis'>2 <cis' e' a'>2^\markup\bold "Picardy 3rd (C sharp)" \bar "|." }
  \new Staff { \omit Staff.TimeSignature \clef bass a,2 d2 | e2 a,2 }
  \new Lyrics \lyricmode { \override LyricText.font-series = #'bold i2 iv2 V2 I2 }
 >> >> }
