\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Joy to the world"
  piece = "score"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
%  ragged-bottom = ##t
 ragged-last-bottom = ##f
  indent = 10
}


abr = { \break }

global = {
  \key d \major
  \numericTimeSignature
  \time 2/4
  \tempo 4=88
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-circle-alphabet
}


mark-verseone = { \bar "||" \mark \markup \ellipse \small "Verse 1" }
mark-interone = { \bar "||" \mark \markup \ellipse \small "Interlude 1" }
mark-versetwo = { \bar "||" \mark \markup \ellipse \small "Verse 2" }
mark-intertwo = { \bar "||" \mark \markup \ellipse \small "Interlude 2" }
mark-versethree = { \bar "||" \mark \markup \ellipse \small "Verse 3" }

tmpl = \relative c'' {
  \global
  \partial 8
  \tempo 4=88
  \tiny fis16^\markup\tiny"Flute" e |
%  s8 |
  s2*4 \mark-verseone
  s2*19 \mark-interone
  s2*5 \mark-versetwo
  s2*19 \mark-intertwo
  s2*5 \mark-versethree
  s2*19 \bar "|."
}

violin = \relative c''' {
  \global
  s8
  r8 a4(\f g8) |
  fis8.( e16) d8( b) |
  d4 e |
  fis2
   R2 |
  r8 fis,16\mf fis fis8 r |
  r d'4 cis8 | 
  d fis16 e d8 r | 
  
  
  r b16 b b8 r |
  r e16 e e8 a, |
  d16 e fis e d8 r |
  R2*3 
  r4 r8 d,16 fis |
  a8 fis16 b d8 a |
  fis'4 r |
  a,8 e16 a cis8 a | 
  
  
  a r r a |
  d fis4 e8  |
  d4 r |
  R2*2  R2 |
  d8 a'4 b8 |
  a16 g fis e d8 b16 d |
  cis d e cis d8 a | 
  
  
  a2 
  R2*19 | 

  R2 |
  d8 a'4 b8 |
  a16 g fis e d8 b16 d | 
  
  e fis g e d8 a |
  b4 
  
  %as 
  cis
  
%  \key es \major
  fis,4 a16 b a g |
  fis8 fis fis e |
  d a' cis a |
  d a fis a |
  g16 a b cis b g a b |
  a b cis d e d cis e |
  d e fis e d8 r | 
  r4 r8 fis, |
  a4 r8 a |
  d4 r8 d |
  fis4 r8 fis |
  fis16 a g a fis e fis g |
  a4 r8 e16 d | 
  cis8 e cis cis16 d |
  e8 cis16 d e8 d16 cis |
  d8^\markup\bold"rit." fis4 g8 |
  fis16 g fis e d8 e |
  fis8. d16 cis8 a |
  a2\fermata
  
}

viola = \relative c''' {
  \global
  % Вписывайте музыку сюда
  \global
  s8
%  \clef alto
  \clef "treble_8"
  r8 a,4(\f b8) |
  d8.( b16) a8( e) |
  d4 cis |
  d2 |
  R2 |
  r8 d16\mf d d8 r |
  r4 a |
  a8 a d r | 
  
  r8 d16 d d8 r |
  r cis16 cis cis8 a |
  a a a d |
  d a b fis |
  d16 e fis g a8 d |
  d a b fis16 g |
  a b a g fis8 r |
  R2 | 
  
  a8 fis16 a d8 e16 d |
  a4 r |
  R2 |
  r8 d4 d8 |
  d16 e fis g fis8 e |
  d a4 a8 |
  d2 |
  R2*2 |
  r8 fis,4 d'8 | 
  
  e2 |
  fis |
  d,4 d8. d16 |
  d e fis g a8 b16 cis |
  d8 a e' a, |
  d fis,16 g a4 |
  r8 g16 a b8 g~ |
  g e16 fis g8 e | 
  
  fis16 g fis e d8 r |
  r4 r8 d |
  d16 e fis g a8 d~ |
  d d,4 d8 |
  d16 e fis g a4~ |
  a4. a8 |
  a a a a |
  a16 b cis d cis b cis d | 
  
  e d cis4 a8 |
  fis d'4 b8 |
  a d16 e d8 b |
  a d cis e |
  d2 |
  R2*2 |
  r8 fis,4 d'8 |
  e2 |
  
  %f2
  e2
  
  
%  \key es \major
  d4 d8. d16 |
  d4. b8 |
  a16 b a8 a g |
  a16 b a g fis8 d' |
  d4. d8 |
  a4. a8 |
  d16 e fis e d4 |
  r8 d d4 |
  r8 d d4 | 
  
  r8 d d4 |
  r8 d d4 |
  r r8 a |
  a a a a |
  a e' cis a~ |
  a cis e a, |
  fis^\markup\bold"rit." a4 d8 |
  d4. b8 |
  d4 e |
  d2\fermata
    
}

cello = \relative c {
  \global
  % Вписывайте музыку сюда
  \global
  s8
%  \clef alto
  \clef "bass"
  % Вписывайте музыку сюда
  r8 d4\f d'8 |
  a8.( g16) a8( b) |
  a4 a, |
  d2 |
  R2 |
  r8 d16\mf d d8 r |
  r4 r8 a |
  d d d r | 
  
  r g16 g g8 r |
  r a16 a a8 a, |
  d a d r |
  R2*5 |
  d8 d16 d d8 a |
  a4 r |
  r8 a a a |
  d8 d4 d8 | 
  
  d4 r8 g |
  a a,4 a8 |
  d2 |
  R2*2 |
  r8 d4 d8 |
  a'2 |
  d, |
  R2*11 |
  r4 r8 d | 
  
  d8 d d d |
  a4. a8 |
  a a a a |
  d4. d8 |
  d4. g,8 |
  a4 a |
  d2 |
  R2*2 |
  r8 d4 d8 |
  a2 | 
  
  %ges2
  a2
  
%  \key d \major
  d,4 d'8. d16 |
  d4. g,8 |
  a4 a |
  d4. fis8 |
  g4. g8 |
  a4. a8 |
  d,4. d8 |
  d4. d8 |
  d4. d8 | 
  
  d4. d8 |
  d4. r8 |
  r4 r8 d |
  d d d d |
  a4. a8 |
  a a a a |
  d4.^\markup\bold"rit." d8 |
  d4. g,8 |
  a4 a |
  d,2\fermata
  
}

violinPart = \new Staff \with {
  instrumentName = "V-no"
  midiInstrument = "violin"
} << \violin \tmpl >>

violaPart = \new Staff \with {
  instrumentName = "V-la"
  midiInstrument = "viola"
} << \viola \tmpl >>

celloPart = \new Staff \with {
  instrumentName = "V-c"
  midiInstrument = "cello"
}  << \cello \tmpl >>

\bookpart {
  \header {
    piece = "Violin"
  }
  \score {
    <<
      \violinPart
    >>
    \layout { }
  }
}

\bookpart {
  \header {
    piece = "Viola"
  }
  \score {
    <<
      \violaPart
    >>
    \layout { }
  }
}

\bookpart {
  \header {
    piece = "Cello"
  }
  \score {
    <<
      \celloPart
    >>
    \layout { }
  }
}

\bookpart {
  \header {
    piece = "Midi"
  }
  \score {
    <<
      \violinPart
      \violaPart
      \celloPart
    >>
    \midi {
      \tempo 4=88
    }
  }
}