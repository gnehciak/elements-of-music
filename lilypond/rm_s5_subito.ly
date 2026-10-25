\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
subP = #(make-dynamic-script #{ \markup { \normal-text \italic "subito" \dynamic p } #})
\score { \new Staff \relative c'' { \numericTimeSignature \time 4/4
 c4\mf\< d e f | g1\f | e4\subP f e d | c1 \bar "|." } }
