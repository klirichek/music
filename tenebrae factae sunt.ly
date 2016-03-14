\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  %indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

\header {
  title = "Ténebrae fáctae sunt"
  subtitle = "From Responsoria (1611)"
  composer = \markup\right-column{"Jacob Carlo Gesualdo, di Venosa" "(c. 1561 - 1613)" }
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 2/2
  \numericTimeSignature
  \autoBeamOff
  \override NoteHead.style = #'baroque
}

barnumbers = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

mBreak = { \break }
mpageBreak = { \pageBreak }
mBreak = {  }
mpageBreak = {  }

sopranoOne = \relative c'' {
  \global
  R1*3 | 
  c2 b4 cis8 cis | 
  d1~ | \mBreak
  
  d2 b | 
  R1 | 
  e2 e~ | 
  e e4 e~ | 
  e dis r2 | 
  r r4 e | \mpageBreak
  
  e1 |
  cis | \bar "||"
  R1*2 |
  r2 b |
  e,4 c'8 c c2 | \mBreak
  
  a2 r |
  r f' |
  f fis~ |
  fis fis |
  r gis,~ |
  gis4 a b2 |
  b a | \mBreak
  
  a4 e'2 d4 |
  cis2 cis |
  R1 |
  r2 a~ |
  a d |
  r4 a a g~ |
  g fis2 e4~ | \mBreak
  
  e4 dis e2 |
  fis4 d' c8 c b4~ |
  b8 a g4 e2 |
  R1 |
  r2 a |
  c fis4 fis | \mBreak
  
  e2. d4 |
  c2 a~ |
  a1 \bar "||"
  R1*2 |
  r2 f'2~ |
  f c~ | \mBreak
  
  c4 bes a2 |
  a r4 a~ |
  a a gis2 |
  R1 |
  r4 c c2 |
  e e~ |
  e4 e e,2~ \mBreak
  
  e1 | \bar "||"
  b'2 dis |
  dis d~ |
  d d~|
  d fis4 fis |
  fis2 fis |
  b, b |
  r r4 d~ | \mBreak
  
  d4 d2 f4~ |
  f f2 c4 |
  c c c2~ |
  c4 a r a |
  a a a2 |
  a4 b c2 |
  c r | \mBreak
  
  R1 |
  r2 e4 e8 e |
  e2 c~ |
  c1 \bar "||" 
  R1*2 \mBreak
  
  r2 f~ |
  f c~ |
  c4 bes a2 |
  a r4 a~ |
  a a gis2 |
  R1 |
  r4 c c2 | \mBreak
  
  e2 e~ |
  e4 e e,2 ~ |
  e1 \bar "|."
} % sopranoOne

sopranoTwo = \relative c'' {
  \global
  R1*2 | 
  r4 g2 e4 | 
  gis8 gis a2 gis4 | 
  a2 a~ | \mBreak
  
  a4 a fis g8 g | 
  b1 | 
  e,2 e | 
  e b' | 
  b r4 g | 
  g2. a4~ | \mBreak

  a4 b b2 |
  a1 | \bar "||"
  c2 a |
  gis4 a2 b4 |
  c2 d |
  e4 e, e' e \mBreak
  
  e2 b4 b~ |
  b a d2~ |
  d d |
  dis dis |
  R1*2 |
  r2 e~ | \mBreak
  
  e2 f |
  e e |
  R1*2 |
  r2 fis,4 b |
  d2 d4 b~ |
  b a g2 | \mBreak
  
  fis4 fis b2~ |
  b g4 g |
  e d g8[ a b cis] |
  d4 b r2 |
  R1 |
  r2 a4 d | \mBreak
  
  g,4 a2 f4~ |
  f e2 d4~ |
  d c2. \bar "||"
  R1*2 |
  r2 d'~ |
  d a~ | \mBreak
  
  a4 g f2 |
  f2. e4~ |
  e d e2 |
  r g |
  g2. e4 |
  e4. e8 a2 |
  a2. a4 | \mBreak
  
  b1 | \bar "||"
  fis2 b |
  b b~ |
  b a~ |
  a d4 d |
  b2. a4 |
  gis2 gis |
  r b | \mBreak
  
  b2. d4~ |
  d d2 a4 |
  a a a2~ |
  a4 f r c' |
  c c c2 |
  c4 d e2 |
  e r4 e,~ | \mBreak
  
  e4 e8 e e2 |
  dis e4. e8 |
  e2 a4 a8 a |
  a2 g \bar "||" 
  R1*2 \mBreak
  
  r2 d'~ |
  d a~ |
  a4 g f2 |
  f2. e4~ |
  e d e2 |
  r g |
  g2. e4 | \mBreak
  
  e4. e8 a2 |
  a2. a4 |
  b1 \bar "|."
} % sopranoTwo

alto = \relative c' {
  \global
  b2. b8 b | 
  d2. c4 | 
  e1 | 
  e2 dis4 e8 e | 
  f2 d | \mBreak
  
  d2 d~ | 
  d d4 d~ | 
  d cis a'2 | 
  a g4 g~ | 
  g fis r b, | 
  b2 c~ | \mBreak
  
  c4 b b2 |
  e1 | \bar "||"
  r4 a,2 c4 |
  e d c b~ |
  b a d g, |
  g' g a2 | \mBreak
  e1~ |
  e2 a |
  a b~ |
  b b |
  r e,~ |
  e4 fis gis2 |
  gis e | \mBreak
  
  e4 a2 a4 |
  a2 a |
  e a |
  g4 g f2~ |
  f4 e d2~ |
  d b~ |
  b1 | \mBreak

  R1 |
  b2 e |
  g4 b2 g4~ |
  g fis e2 |
  d2 d |
  g r | \mBreak
  
  c,4 e f a~ |
  a c,~ c8 b a4 |
  e'1 \bar "||"
  a2 e~ |
  e4 d c2 |
  c a' |
  f2. e4 | \mBreak
  
  d2 d4 c~ |
  c a a'2 |
  R1 |
  r2 e |
  e1 |
  c |
  c2. c4 \mBreak
  
  b1 | \bar "||"
  dis2 fis |
  fis1 |
  g2 fis~ |
  fis a4 a |
  fis2 fis |
  e e |
  r g | \mBreak
  
  g2. a4~ |
  a a2 f4 |
  f f f2~ |
  f4 c r f |
  f f f2 |
  f4 f g2 |
  g r \mBreak
  
  R1 |
  r2 c,4. c8 |
  c2 f4 f8 f |
  f2 e \bar "||"
  a e~ |
  e4 d c2 | \mBreak
  
  c2 a' |
  f2. e4 |
  d2 d4 c~|
  c a a'2 |
  R1 |
  r2 e |
  e1 | \mBreak
  
  c1 |
  c2. c4 |
  b1 \bar "|."
} % alto

tenorOne = \relative c {
  \global
  fis2. g8 g | 
  b2. g4 | 
  c1 | 
  R1*2 | \mBreak
  
  a2. g4 | 
  gis8 gis a2 gis4 | 
  a2 a4 a | 
  a2 b~ | 
  b r4 d | 
  d2 e4 e | \mBreak
  
  e1 |
  a, | \bar "||"
  R1*2 |
  r2 g'4 d |
  c c e2~ | \mBreak
  
  e4 c r2 |
  r r4 d~ |
  d a fis2~ |
  fis fis |
  r r4 b~ |
  b a e'2 |
  e cis | \mBreak

  cis4 cis2 d4 |
  e2 e |
  r4 c2 f4~ |
  f e e d~ |
  d c b2 |
  a d4 e |
  R1 | \mBreak
  
  fis,4 fis2 e4~ |
  e d g2~ |
  g b4 e, |
  b'2 g |
  r d4 d' |
  c c2 b4~ | \mBreak
  
  b4 a f2~ |
  f1 |
  e \bar "||"
  R1*2 |
  e'2 a,~ |
  a4 g f2~ | \mBreak
  
  f2 f~ |
  f c'~ |
  c4 a b2 |
  r c |
  c1 |
  e,4 e2 e4 |
  a a2 a4 \mBreak
  
  gis1 | \bar "||"
  b2 b |
  b1 |
  g2 a~ |
  a a4 d |
  fis, fis b2~ |
  b b |
  r g | \mBreak
  
  g2 d'~ |
  d4 d r c |
  c c c2 |
  c r4 a |
  a a a2 |
  a4 d g,2 |
  g r | \mBreak
  
  a4 a8 a a2 |
  b e,4. e8 |
  e2 c'4 c8 c |
  f,2 g \bar "||"
  R1*2 \mBreak
  
  e'2 a,~ |
  a4 g f2~ |
  f f~|
  f c'~ |
  c4 a b2 |
  r c |
  c1 | \mBreak
  
  e,4 e2 e4 |
  a a2 a4 |
  gis1 \bar "|."
} % tenorOne

tenorTwo = \relative c {
  \global
  
  dis2. d8 d | 
  g2. e4 | 
  g1 | 
  R1 | 
  f4 d fis8 fis g4~ | \mBreak
  
  g4 f b2 |
  b4 d, d2 |
  e1~ |
  e2 r |
  r r4 g |
  g2 e~ | \mBreak

  e1~ |
  e | \bar "||"
  R1*2 |
  r2 r4 g' |
  g,4. c8~ c[ b a gis] | \mBreak
  
  a2 b |
  c a~ |
  a4 d8 d fis2~ |
  fis fis |
  r b, |
  c b |
  b4 e,2 e4 | \mBreak
  
  a2. d,4 |
  a'2 a |
  R1*3 |
  r2 r4 g |
  d'2. b4 | \mBreak
  
  b4 a g2 |
  fis e |
  r e4 e' |
  d d2 c4~ |
  c b a2 |
  g4 g d'2 | \mBreak
  
  e8 e c4~ c8 b a4 |
  a1~ |
  a \bar "||"
  R1 |
  f'2 f, |
  e d |
  d r | \mBreak
  
  R1 |
  c'4 c a2~ |
  a r |
  r g |
  g1 |
  a4 a2 a4 |
  e1~ |
  
  e1 | \bar "||"
  fis2 fis |
  fis1 |
  d' |
  d2 d4 a |
  b b fis2 |
  b r |
  r d | \mBreak
  
  d2. a4~ |
  a a a a~ |
  a a a2 |
  a r4 c |
  c c c2 |
   c4 f, c'2 |
   c r | \mBreak
   
   e,4 e8 e e2 |
   fis a4 a8 a |
   a1 |
   c \bar "||"
   R1 |
   f2 f, | \mBreak
   
   e2 d |
   d r |
   R1 |
   c'4 c a2~ |
   a r |
   r g g1 | \mBreak
   
   a4 a2 a4 |
   e1~ |
   e \bar "|."
} % tenorTwo

bass = \relative c {
  \global
  b2. g8 g | 
  g2. c4 | 
  c1 | 
  R1*2 | \mBreak
  
  R1 |
  b |
  a2 cis8 cis d4~ |
  d c? b2 |
  b r |
  R1 \mBreak

  r4 gis4 gis2 |
  a1 |
  R1*2 |
  r2 g' |
  c, c' | \mBreak
  
  c4 a2 gis4 |
  a2 d,~ |
  d1 |
  b2 b |
  e2. e4 |
  e1 |
  e2 a,2 ~ | \mBreak
  
  a4 a a2~ |
  a a |
  R1 |
  r2 r4 d |
  a'2. g4 |
  g fis2 e4 |
  d2 b~ | \mBreak
  
  b r2 |
  R1*2 |
  r2 c? |
  g' f4 f~ |
  f e d2 | \mBreak
  
  c2 a~ |
  a1~ |
  a \bar "||"
  R1 |
  a'2. a,4~ |
  a g f2~ |
  f f~ | \mBreak
  
  f2 r |
  r f'~ |
  f4 f e2 |
  r c |
  c1 |
  a |
  a2. a4 \mBreak
  
  e'1 \bar "||"
  b2 b |
  b b~ |
  b4 a8[ g] d'2 |
  d d4 d |
  dis 2 dis |
  e e |
  r g, | \mBreak
  
  g2. d'4~ |
  d d2 f4 |
  f f f2 |
  f r4 f |
  f f f2 |
  f4 d c2 |
  c r | \mBreak
  
  c4 c8 c c2 |
  b a~ |
  a4 a8 a a2~ |
  a c \bar "||"
  R1 |
  a'2. a,4~ \mBreak
  
  a4 g f2~ |
  f f~ |
  f r |
  r f'~ |
  f4 f e2 |
  r c |
  c1 | \mBreak
  
  a1 |
  a2. a4 |
  e'1 \bar "|."
} % bass

%showLastLength = R1*8


versesi = \lyricmode {
  dum cru -- ci -- fi -- xís -- 
  sent Jé -- sum __ Ju -- daé -- i, Ju -- 
  
  daé -- i: ex -- cla -- má -- vit Jé -- 
  sus vó -- ce má -- gna: Dé -- us mé -- us, Dé -- 
  us, Dé -- us mé -- us, ut quid me de -- re -- li -- quí -- 
  
  _ sti, ut quid me de -- re -- li -- quí -- sti, ut quid me de -- 
  re -- li -- quí -- sti? __ Et __  in -- 
  cli -- ná -- to cá -- pi -- te e -- mi -- sit spí -- ri -- tum. __
  
  Ex -- clá -- mans Jé -- sus __ vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do
  spí -- ri -- tum mé -- um. __
  
  Et __ in -- cli -- ná -- to cá -- pi -- te e -- mí --
  sit spí -- ri -- tum. __
}

versesii = \lyricmode {
  dum cru -- ci -- fi -- xís -- sent Jé -- sum __ 
  dum cru -- ci -- fi -- xís -- sent Jé -- sum, Jé -- sum Ju -- daé -- i, __
  
  
  Ju -- daé -- i: et cír -- ca hó -- ram nó -- nam ex -- cla -- má -- vit 
  Jé -- sus, Jé -- sus vó -- ce má -- gna: Dé -- 
  us mé -- us, ut quid me de -- re -- li -- quí -- 
  
  sti, ut quid __ me de -- re -- li -- quí -- _ sti, ut quid 
  me de -- re -- li -- quí -- sti? Et __ in -- 
  cli -- ná -- to cá -- pi -- te e -- mí -- sit spí -- ri -- tum, spí -- ri -- 
  
  tum. Ex -- clá -- mans Jé -- sus __ vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do spí -- 
  ri -- tum mé -- um, spí -- ri -- tum, spí -- ri -- tum mé -- um.
  
  Et __ in -- cli -- ná -- to cá -- pi -- te e -- mí -- sit 
  spí -- ri -- tum, spí -- ri -- tum.
}

versea = \lyricmode {  
  Té -- ne -- brae fá -- ctae sunt, dum cru -- ci -- fi -- xís --  sent 
  Jé -- sum __ Ju -- daé -- i, Jé -- sum Ju -- daé -- i, Ju -- daé -- i, __
  
  Ju -- daé -- i: et cír -- ca hó -- ram nó -- nam ex -- cla -- má -- vit Jé -- 
  sus __ vó -- ce má -- gna: Dé -- us mé -- us, Dé -- 
  us, Dé -- us mé -- us, ut quid me de -- re -- li -- quí -- sti, __
  
  ut quid me de -- re -- li -- quí -- sti, ut quid, 
  ut quid me de -- re -- li -- quí -- sti? Et in -- cli -- ná -- to, et in -- cli -- 
  ná -- to cá -- pi -- te e -- mí -- sit spí -- ri -- 
  
  tum. Ex -- clá -- mans Jé -- sus __vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do
  spí -- ri -- tum, spí -- ri -- tum mé -- um. Et in -- cli -- ná -- 
  
  to, et in -- cli --  ná -- to cá -- pi -- te e -- mí --
  sit spí -- ri -- tum.
 
}

verseti = \lyricmode {
  Té -- ne -- brae fá -- ctae sunt, 
  dum cru -- ci -- fi -- xís -- sent Jé -- sum Ju -- daé -- i, __ Ju -- daé -- i, Ju -- 
  
  daé -- i: ex -- cla -- má -- vit Jé -- 
  sus vó -- ce má -- gna: Dé -- us mé -- us, Dé -- 
  us, Dé -- us mé -- us, ut quid __ me  de -- re -- li -- quí -- sti, ut quid 
  
  me de -- re -- li -- quí -- sti, ut quid me, ut quid me de -- re -- 
  li -- quí -- sti? Et in -- cli -- ná -- 
  to __ cá -- pi -- te e -- mí -- sit spí -- ri -- tum, spí -- ri -- 
  
  tum. Ex -- clá -- mans Jé -- sus __ vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do
  spí -- ri -- tum mé -- um, spí -- ri -- tum, spí -- ri -- tum mé -- um. 
  
  Et in -- cli -- ná -- to __ cá -- pi -- te e -- mí --
  sit spí -- ri -- tum, spí -- ri -- tum.
}

versetii = \lyricmode {
  Té -- ne -- brae fá -- ctae sunt, dum cru -- ci -- fi -- xís -- 
  sent Jé -- sum Ju -- daé -- i, Ju -- daé -- i: __
  
  ex -- cla -- má -- 
  _ vit Jé -- sus __ vó -- ce má -- gna: Dé -- us mé -- us, Dé -- us,
  Dé -- us mé -- us, ut quid me 
  
  de -- re -- li -- quí -- sti, ut quid me de -- re -- li -- quí -- sti, ut quid
  me de -- re -- li -- quí -- sti? __ Et in -- cli -- ná -- to
  cá -- pi -- te __ e -- mí -- sit spí -- ri -- tum. __
  
  Ex -- clá -- mans Jé -- sus vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do
  spí -- ri -- tum mé -- um, spí -- ri -- tum mé -- um. Et in --
  
  cli -- ná -- to cá -- pi -- te __ e -- mí --
  sit spí -- ri -- tum. __
}

verseb = \lyricmode {
  Té -- ne -- brae fá -- ctae sunt, 
  dum cru -- ci -- fi -- xís -- sent Jé -- sum 
  
  Ju -- daé -- i:  ex -- cla -- má -- 
  vit Jé -- sus vó -- ce __ má -- gna: Dé -- us mé -- us, Dé -- 
  us mé -- us ut quid me de -- re -- li -- quí -- sti, __
  
  ut quid me de -- re -- li -- 
  quí -- sti? __ Et in -- cli -- ná -- to __
  cá -- pi -- te e -- mí -- sit spí -- ri -- 
  
  tum. Ex -- clá -- mans Jé -- _ _ sus vó -- ce má -- gna, á -- it: Pá --
  ter, Pá -- ter, in má -- nus tú -- as, in má -- nus tú -- as com -- mén -- do
  spí -- ri -- tum mé -- um, spí -- ri -- tum mé -- um. Et in --
  
  cli -- ná -- to __ cá -- pi -- te e -- mí --
  sit spí -- ri -- tum.
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new ChoirStaff
    <<
    \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano I"
    } \new Voice = "soprano1" {
      \barnumbers
      \sopranoOne
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano1" \versesi
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano II"
    } \new Voice = "soprano2" \sopranoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano2" \versesii
    >>
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \versea
    \new ChoirStaff <<
      \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
      \new Staff \with {
      midiInstrument = "choir aahs"
        instrumentName = "Tenor I"
      } {
        \clef "treble_8"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verseti
      \new Staff \with {
      midiInstrument = "choir aahs"
        instrumentName = "Tenor II"
      } {
        \clef "treble_8"
        \new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \versetii
    >>
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
    \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \verseb
  >>
  \layout { 
 \context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\consists Ambitus_engraver 

	
  }
}
  \midi {
    \tempo 4=100
  }
}

% MIDI для репетиции:
\book {
  \bookOutputSuffix "soprano1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \versesi
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \versesii
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \versea
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verseti
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \versetii
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseb
    \midi { }
  }
}

