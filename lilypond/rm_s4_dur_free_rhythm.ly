\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \with { \omit TimeSignature } \relative c'' { \cadenzaOn
 g4^\markup\bold "No time signature, no bar lines" a8[ g] e2 \fermata d8[ e g] a4 a4. g8 e1 \fermata \bar "|." } }
