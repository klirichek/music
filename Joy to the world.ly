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
  \override MultiMeasureRest.expand-limit = #1
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-circle-alphabet
}


mark-verseone = { \bar "||" \mark \markup \ellipse \small "Verse 1" }
mark-interone = { \bar "||" \mark \markup \ellipse \small "Interlude 1" }
mark-versetwo = { \bar "||" \mark \markup \ellipse \small "Verse 2" }
mark-intertwo = { \bar "||" \mark \markup \ellipse \small "Interlude 2" }
mark-versethree = { \bar "||" \mark \markup \ellipse \small "Verse 3" }

tmplf = \relative c'' {
  \global
  \partial 8
  \tempo 4=88
  s8 
  s2*4 \mark-verseone
  s2*19 \mark-interone
  s2*5 \mark-versetwo
  s2*19 \mark-intertwo
  s2*5 \mark-versethree
  s2*19 \bar "|."
}

tmpl = \relative c'' <<
  \tmplf
  { \tiny fis16^\markup\tiny"Flute" e \normalsize }
>>

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


flute = \relative c'' {
  \global
  fis16\f( e |
  d8) d'4( b8) |
  a8.( g16) fis8( g) |
  a4 a |
  d2 |
  R2 |
  r8 a,16\mf a a8 r |
  r a'4 g8 |
  fis8 a16 g fis8 r |
  
  r g16 g g8 r |
  r g16 g g8 a16 g |
  fis8 a16 g fis8 r |
  R2*3 |
  r4 r8 fis,16 a |
  d8 a16 d fis8 d |
  a'4 r |
  cis,8 a16 cis e8 cis |
  
  a8 g'16 fis g8 fis16 e |
  d8 a'4 g8 |
  fis4 r |
  R2*2 |
  d8 a'4 b8 |
  a16 g fis e d4 |
  d8 a'4 g16 fis |
  e fis g e a g fis e |
  
  d2 |
  R2*19 |
  d8 a'4 b8 |
  a16 g fis e d4 |
  d8 a'4 g16 fis |
  e fis g e a g fis e |
  
  %d2 
  cis2
  
  %\key es \major
  d4 cis16 d cis b |
  a b a g fis a g a |
  fis g a d e fis g e |
  fis g fis e d4 |
  R2 |
  a16 b cis d cis8 a |
  fis16 g a g fis8 r |
  
  r4 r8 a |
  d4 r8 d |
  fis4 r8 fis |
  a4 r8 a |
  d r r4 |
  d,16 e fis g a8 g16 fis |
  
  e a g a e fis e d |
  cis d e fis g8 fis16 e |
  d8^\markup\bold"rit." d'4 b8 |
  a16 b a g fis8 g |
  a16 b a fis e8 g
  fis2\fermata
  
}


rup = \relative c' {
  \global
  \oneVoice
  fis16\f e |
  d8 <fis d'>4 <g b>8 |
  <fis a>8. <e g>16 <d fis>8 <e g b> |
  <d fis a>4 <cis e g a cis> |
  <d fis a d>2 |
  
  % verse 1
  <fis d'>4\mf <a cis>8. <g b>16 |
  <fis a>4. <e g>8 |
  <d fis>4 <cis e> |
  d4. a'8 | \abr
  
  <g b>4. q8 |
  <cis, e g cis>4. <g' cis>8 |
  <fis d'>4. q8 |
  q <a cis> <g b> <fis a> |
  <a, cis fis a>8. <e' g>16 <a, d fis>8 <fis' d'> |
  q <a cis> <g b> <fis a> |
  q8. <e g>16 <d fis>8 <d' fis>16 a |
  <d fis>16 a <d fis> a <d fis> a <d fis> <e g> | \abr
  
  <d fis a> a <d fis a> a <d fis a> a <e' g> <d fis> |
  <cis e> <g a> <cis e> <g a> <cis e> <g a> <cis e> <d fis> |
  <cis e g> <g a> <cis e> <g a> <cis e> <g a> <d' fis> e |
  fis8 <fis, d' fis a>4 <g b d fis b>8 |
  <fis a d fis a>8. <e g g'>16 <d fis fis'>8 <e g g'> |
  <d fis a d fis>4 <cis e g cis e> |
  <d fis a d>2 | \abr
  
  % interlude
  r4. fis16\f e |
  d8 <fis d'>4 <g b>8 |
  <fis a>8. <e g>16 <d fis>8 <e g b> |
  <d fis a>4 <cis e g a cis> |
  <d fis a d>2 |
  
  % verse 2
  <fis d'>4\mf <a cis>8. <g b>16 |
  <fis a>4. <e g>8 |
  <d fis>4 <cis e> |
  d4. a'8 |
  <g b>4. q8 | \abr
  
  <g cis>4. q8 |
  <fis d'>4. q8 |
  q <a cis> <g b> <fis a> |
  q8. <e g>16 <d fis>8 <fis d'> |
  q <a cis> <g b> <fis a> |
  q8. <e g>16 <d fis>8 <d' fis>16 a |
  <d fis> a <d fis> a <d fis> a <d fis> <e g> |
  <d fis a> a <d fis a> a <d fis a> a <d fis> <b e g> | \abr
  
  <d fis a> a < a d fis a> a <d fis a> a <a d fis a> <g' b> |
  <e g a cis> e <g a cis> e <g a cis> e <cis g' b> a'  |
  <d, fis a d>8 <fis, d'>4 <g b>8 |
  <fis a>8. <e g>16 <d fis>8 <e g> |
  <d fis>4 <cis e> |
  d2
  
  <bes' d>8 <c e> <d f> <c e> |
  <bes d> <c e> <d f> <d e> |
  <bes d> <c e> <d f> <e g> |
  <fis a>2
  s2
  
%  \key es \major
  <fis, d'>4 <a cis>8. <g b>16 |
  <fis a>4. <e g>8 |
  <d fis>4 <cis e> |
  d4. a'8 |
  <g b>4. q8 |
  <g cis>4. q8 | \abr
  <fis d'>4. q8 |
  q <a cis> <g b> <fis a> |
  q8. <e g>16 <d fis>8 <fis d'> |
  q <a cis> <g b> <fis a> |
  q8. <e g>16 <d fis>8 q |
  \repeat unfold 4 { fis16 d' a d } | \abr
  \repeat unfold 4 { a e' cis e } | 
  fis8^\markup\bold"rit." <fis, d'>4 <g b>8 |
  <fis a>8. <e g>16 <d fis>8 <e g> |
  <d fis>4 <cis e> |
  d2\fermata  
}

rdown = \relative c'' {
  \global 
}

lup = \relative c {
  \global
  \oneVoice
  r8 |
  <d fis a>8 q4 <g b d>8 |
  <d fis a d>4 r |
  <a d fis a>4 <a cis e g> |
  <d, fis a d>2 |
  
  % verse 1
  <d' a'>4 <d d'>8. q16 |
  q4. <g b>8 |
  << { a4. g8 } \\ { a,4 a } >> \oneVoice |
  <d fis>4. <fis d'>8 | \abr
  
  <g d'>4. q8 |
  <a, cis e g a>4. a'8 |
  <d, d'>4. r8 |
  <d d'> <fis a> <g b> <fis a> |
  <a, a'>8. q16 d4 |
  <d d'>8 <fis a> <g b> <fis a> |
  <a, a'>8. q16 d4 |
  <d fis a d>4. r8 | \abr
  
  <d fis a d>4. cis'16 b |
  <a, e' g a>4 <g' a cis e>8 e' |
  <cis, e g a>4 a |
  d'8 <d, a'>4 <d g b d>8 |
  <d fis a d>4. <g, b'>8 |
  <a d fis a>4 << { a'8 g} \\ <a, cis e g> >> \oneVoice |
  <d fis>2 |
  
  %interlude 1
    r2 |
  <d fis a>8 q4 <g b d>8 |
  <d fis a d>4 r |
  <a d fis a>4 <a cis e g> |
  <d, fis a d>2 |
  
  % verse 2
  <d' a'>4 <d d'>8. q16 |
  q4. <g, b'>8 |
  << { a'4. g8 } \\ { a,4 a } >> \oneVoice |
  <d fis>4. <fis d'>8 | 
  <g d'>4. q8 | \abr
  a4. a8 |
  <d, d'>4. r8 |
  <d d'> <fis a> <g b> <fis a> |
  <a, a'>8. q16 d4 |
  <d d'>8 <fis a> <b d> <fis a> |
  <a, a'>8. q16 d4 |
  <d fis a>4 a' |
  <d, fis a> d' | \abr
  <d, fis a d>4. <d fis a>8 |
  <a cis e g a>4 r
  <d fis a d>8 <d a'>4 <d g b d>8 |
  <d d'>4. <g, b'>8 |
  << { a' a8 g } \\ { a,4 a } >> \oneVoice |
  <d fis>2 |
  <bes bes'>2 |
  q |
  <g g'> |
  <d' d'> |
  s |
  
 % \key es \major
  <d a'>4 <d d'>8. q16 |
  q4. <g b>8 |
  << { a4. g8} \\ { a,4 a } >> \oneVoice |
  <d fis>4. <fis d'>8 |
  <g d'>4. q8 |
  a4. a8 | \abr
  
  <d, d'>4. r8 |
  R2*4 |
  d'4. d16 e |
  d4. e16 fis | \abr
  e4. e16 fis |
  g4. fis16 e |
  d8 <d, a'>4 <d d'>8 |
  q4. <g, b'>8 |  
  << { a'4 a8 g} \\ { a,4 a } >> \oneVoice |
  <d fis>2
}

ldown = \relative c'
{
  \global
}

right = \relative c' {
  \global
  << << \rup \tmplf >> \\ \rdown >>
}

left = \relative c {
  \global
  << \lup \\ \ldown >>
}  

pianoPart = \new PianoStaff \with {
  instrumentName = "Organ"
  midiInstrument = "church organ"
} <<
  \new Staff = "right"  \right
  \new Staff = "left"  { \clef bass \left }
>>

violinPart = \new Staff \with {
  instrumentName = "V2"
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

flutePart = \new Staff \with {
  instrumentName = "V1"
  midiInstrument = "violin"
}  << \flute \tmplf >>

\bookpart {
  \header {
    piece = "Violini"
  }
  \score {
    <<
      \flutePart
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
    piece = "Organ"
  }
  \score {
    <<
      \pianoPart
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
      \flutePart
      \violinPart
      \violaPart
      \celloPart
      \pianoPart
    >>
    \midi {
      \tempo 4=88
    }
  }
}