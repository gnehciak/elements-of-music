\version "2.24.0"
\paper { indent = 0 tagline = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f oddFooterMarkup = ##f evenFooterMarkup = ##f }
\layout { \context { \Score \omit BarNumber } }
\score { \new Staff \relative c'' { \numericTimeSignature \time 2/4 \tempo "Presto"
 c16^\markup\italic\bold "moto perpetuo" e g e c e g e | d f a f d f a f | b, d g d b d g d | c e g e c e g e \bar "|." } }
