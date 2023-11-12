\version "2.22.1"

\header {
  % Удалить строку версии LilyPond 
  title = "Шутка (Scherzo)"
  composer = "И.С.Бах"
  tagline = ##f
}


\paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }

global = {
  \key f \major
  \time 2/4
  \partial 4
}

flute = \relative c'' {
  \global
  % Вписывайте музыку сюда
  d8 f16 d |
  a8 d16 a f8 a16 f |
  d4 a'16 d f d |
  e d e d cis e g e |
  f8 d d f16 d |
  
  a8 d16 a f8 a16 f |
  d4 f16 e f8~ |
  f16 e f8~ f16 d' f,8 |
  f8\trill e a16 gis a8~ |
  a16 gis a8~ a16 f' a,8 |
  a gis e16 a c a |
  
  b a b a gis b d b |
  c b c b a c a gis |
  a d a gis a e' a, gis |
  a f' a, gis a f' e d |
  e c b a c8 b--\trill |
  a4
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Флейта"
    midiInstrument = "flute"
  } \flute
  \layout { }
  \midi {
    \tempo 4=100
  }
}
