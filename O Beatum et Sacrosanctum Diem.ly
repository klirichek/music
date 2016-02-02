\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "O Beatum et Sacrosanctum Diem"
  composer = "Peter Philips (c. 1561 - 1628)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key bes \major
  \time 4/4
}


inqua = \lyricmode {
  in qua Do -- mi -- nus no -- ster de Vir -- gi -- ne Ma -- ri -- a pro no -- bis na -- sci di -- gna -- tus est.
}

obeatum = \lyricmode {
  O be -- a -- tum et sa -- cro -- san -- ctum di -- em, \inqua
}

gaudeat = \lyricmode {
  Gau -- de -- at i -- ta -- que u -- ni -- ver -- sus or -- bis,
}

gaudeats = \lyricmode {
  gau -- de -- at, i -- ta -- que u -- ni -- ver -- sus or -- bis,
}

etcantemus = \lyricmode {
  et can -- te -- mus il -- li,
}

insono = \lyricmode {
  in so -- no tu -- bæ, 
}

psalterio = \lyricmode {
  psal -- te -- ri -- o et or -- gan -- o, psal -- te -- ri -- o et or -- gan -- o.
}

congra = \lyricmode {
  Con -- gra -- tu -- le -- mur
}
cum = \lyricmode {
  cum mul -- ti -- tu -- di -- ne an -- ge -- lo -- rum
}

exercitus = \lyricmode {
  ex -- er -- ci -- tus, ex -- er -- ci -- tus sem -- per  su -- as __ lau -- des can -- tan -- ti -- bus,
}

aleluia = \lyricmode {
  al -- le -- lu -- ia,
}


scoreASopranoVoiceI = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  bes2. bes4 | bes2 bes4 d | c2. c4 | c d ees2 | d4 \breathe d d ees~ | ees8 ees d4 c2
  b4 \breathe c d4. d8 | d4 ees d2 | c r4 f, | g2 a | bes a4 d | c4. c8 d2 \breathe \bar "||" \pageBreak
  
  \time 3/4
  d4. d8 d4 | ees4. ees8 ees4 | d4. d8 d4 | c bes2 | a r4 | r2. | f'4. f8 f4 | e4. e8 e4 | %\break
  f2 f4 | ees!2 d4~ | d c2 | \bar "||" \time 4/4 bes \breathe d8 ees d c | bes4 a r2 | \pageBreak
  
  r4 r8 c a f c'4 | f,8 c' a f c'4 f,8 \breathe c' | a f c'4 f,8 c' a a | bes4 bes8 \breathe f' d bes f'4 |
  bes,8 f' d bes f'4 bes,8 f' | d bes f'2 c4 \breathe | c8.([ bes16] c[ bes c d] c8[ d] c8.) c16 | d4 r4 r8 c a8. a16 | \pageBreak
  
  %page 4
  g8 c b8. b16 c8 ees! d8. d16 | c8 d c8. c16 d2\breathe \bar "||" r4 ees ees d | c2 c |
  R1*2 | r8 d c8. c16 bes8 bes g a | bes4\breathe bes2 bes4 | bes2 a | \pageBreak
  
  % page 5
  a2( c) | c4 \breathe c d c | a a g4. g8 | f4 \breathe bes c4. c8 | d4 f ees c |
  d r r8 bes c c | d bes a f f \breathe a bes bes | a a bes bes a \breathe c ees d | \pageBreak
  
  %page 6
  c f, g bes a bes bes a | bes4 r r2 | r8 d ees d c4 f | 
  ees c d8 \breathe bes bes bes | bes2 r8 bes bes bes | bes4 bes bes bes | bes1\fermata \bar "|."
  
  
}

scoreAVerseSopranoVoiceI = \lyricmode {
  \obeatum \gaudeat \gaudeats \etcantemus
  \repeat unfold 7 \insono ci -- tha -- ra, \psalterio
  \congra \exercitus can -- tan -- ti -- bus, can -- tan -- ti -- bus, can -- tan -- ti -- bus. \repeat unfold 23 { no -- e, } no -- e.
}

scoreASopranoVoiceII = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f2. f4 | g2 f4 bes | a4. a8 a4 g | a( bes2 a4) | bes \breathe bes bes bes~ | bes8 bes bes4 g2
   g4 \breathe g bes!4. bes8 | bes4 bes bes2 | a4 \breathe c d4.( c8 | bes[ a bes c] d4) c | d2 c4 bes | bes a bes2 \breathe \bar "||"
   \time 3/4
   bes4. bes8 bes4 | bes4. bes8 bes4 | bes4. bes8 bes4 | c d2 | e r4 | d4. d8 d4 | c4. c8 c4 | c4. c8 c4 |
   c2 bes4 | bes2 bes4 | f'4.( ees16[ d] c4) | \bar "||" \time 4/4 d2 \breathe bes8 bes bes c | d4 c \breathe c8 d c c |
   a4 g r8 c a f | c'4 f,8 c' a f c'4 | f,8 c' a f c'4 f,8 \breathe f' | d bes8 f'4 bes,8 f' d bes | 
   f'4 bes,8 \breathe f' d bes f'4 | bes,8 f' d bes a4 a \breathe | a8.([ g16] a[ g a bes] a8 bes a8.) a16 | bes8 \breathe bes a8. a16 g4 r |
   
   %page 4
   r8 ees'! d8. d16 c8 c b8. b16 | c8 bes! a8. a16 bes2 \breathe \bar "||" r4 bes bes bes g2 a4 \breathe c |
   d8. d16 d8 ees d d4 c8 | c2 c8 bes bes a | bes4 r r8 d c8. c16 | bes4 \breathe d2 d4 | d2 c~ |
   
   %page 5
   c4 f2( e4) | f2 r | r4 c d c | a f g a | bes2 r2 |
   r8 bes c c d4 r | r8 d c bes a c d d | c c ees d c \breathe a bes bes |
   
   %page 6
   a4 r r2 | r8 d ees d c f ees c | d \breathe bes bes bes a4 bes | bes a bes8 \breathe f g g | f f' f ees d4 r | r f f ees d1\fermata \bar "|."
}

scoreAVerseSopranoVoiceII = \lyricmode {
  \obeatum \gaudeat  gau -- de -- at, \gaudeats \etcantemus \etcantemus
  \repeat unfold 7 \insono ci -- tha -- ra, \psalterio
  \congra \cum \exercitus can -- tan -- ti -- bus. \repeat unfold 23 { no -- e, } no -- e.
  
}

scoreAAltoVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4
  r4 f f g~ | g8 g f4 ees2 |
  d4 \breathe ees f4. f8 | f4 g f2 | f \breathe f4 f4~( | f8[ e16 d] e4) f2 | r4 f f bes, | f'4. f8 f2  \breathe \bar "||"
  \time 3/4
  f4. f8 f4 | g4. g8 g4 | f4. f8 f4 | f f2 | f r4 | bes4. bes8 bes4 | a4. a8 a4 | g4. g8 g4 |
  f2 f4 | g2 bes4 | bes2( a4) | \bar "||" \time 4/4 bes2 \breathe f8 g f f | f4 f \breathe a8 bes a g |
  f4 e r r8 \repeat unfold 2 { c'8 a f c'4 f,8} \breathe c'8 a f c'4 | bes8 f d d f4 bes,8 \breathe f' |
  d d f4 bes,8 f'8 d d | f2. f4 | r1 | r8 f f8. f16 e8 e f8. f16 |
  
  %page 4
  e8 g g8. g16 g4 r | r8 bes, c8. c16 bes2 \breathe \bar "||" r4 g' g f8 f~( | f[ e16 d] e4) f \breathe a |
  bes8. bes16 bes8 bes bes bes4 a8 | g2 a8 f g f | d bes' g a bes4 r | f2. f4 | f1
  
  %page 5
  f2 g | a4 \breathe a g4. g8 | f4 f f e | f2 r | r4 f g a |
  bes8 f f a bes f f a | bes f f d c4 r | r8 f g f f f g f |
  
  %page 6
  f8 c ees f f f g f | f f g bes a f g a | bes \breathe f g f f4 f |
  g f f8 \breathe d ees ees | d d f g f f g g | f \breathe d f bes, bes f' g g | f1\fermata \bar "|."
  
}

scoreAVerseAltoVoice = \lyricmode {
  \inqua \gaudeat gau -- de -- at, \gaudeats \etcantemus \etcantemus
  \repeat unfold 6 \insono \psalterio \congra \cum \exercitus can -- tan -- ti -- bus, can -- tan -- ti -- bus. \repeat unfold 31  { no -- e, } no -- e.
  
}

scoreATenorVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  bes2. d4 | ees2 d4 bes | f'2. e4 | f d c2 | bes4 \breathe bes bes ees~ | ees8 ees bes4 c2 | 
  g4 \breathe c bes!4. bes8 | bes4 ees bes2 | f4 \breathe a bes2( | g) f4 \breathe f' | d bes f'2 | f, bes \breathe \bar "||"
  \time 3/4
  bes4. bes8 bes4 | bes4. bes8 bes4 | bes4. bes8 bes4 | a bes2 | c r4 | f4. f8 f4 | f4. c8 c4 | c4. c8 c4 |
  c2 d4 | ees2 f4~ | f f2 | \bar "||" \time 4/4 f \breathe bes,8 ees bes a | bes4 f \breathe f'8 f f c |
  c4 c r8 c f f | f4 f8 f f f f4 | f8 f f f f4 f8 \breathe f | f d bes4 bes8 bes bes bes |
  bes4 bes8 bes bes bes bes4 | bes8 bes bes bes c4 c \breathe | f2. f4 | bes,8 \breathe bes c8. c16 c8 c c8. c16 |
  
  % page 4
  c4 r r8 c g'8. g16 | c,8 f f8. f16 f2 \breathe \bar "||" r4 bes, bes4. f8 | c'2 c4 r8 f | 
  f8. f16 f8 g f4 f | e8 f4( e8) f f ees c | d d ees f bes,4 r | d2 bes | bes c |
  
  %page 5
  c1 | c4 \breathe f f e | f r8 a, bes4 c | f, r8 f' ees?4 c | bes d ees f |
  bes, r r8 bes a f | bes4 r r8 f' d bes | f'4 r r8 f ees bes |
  
  %page 6
  f'8 a, bes d c d c c | bes \breathe bes ees bes f' d ees f | bes, \breathe bes bes bes c4 d |
  c c bes2 | r8 bes d ees bes d ees ees | d \breathe bes d f bes,2~ | bes1\fermata \bar "|."
  
}

scoreAVerseTenorVoice = \lyricmode {
  \obeatum \gaudeat gau -- de -- at, \gaudeats \etcantemus \etcantemus
  \repeat unfold 7 \insono ci -- tha -- ra, \psalterio
  \congra \cum \exercitus can -- tan -- ti -- bus, can -- tan -- ti -- bus, can -- tan -- ti -- bus. \repeat unfold 23 { no -- e, } no -- e. __
  
}

scoreABassVoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*12 \breathe \bar "||"
 \time 3/4
 bes4. bes8 bes4 | ees4. ees8 ees4 | bes4. bes8 bes4 | f' bes,2 | f' r4 | bes,4. bes8 bes4 | f'4. f8 f4 | c4. c8 c4 |
 f2 bes,4 | ees2 bes4~ | bes f'2 | \time 4/4 bes,2 r2 | r f'8 bes f e
 f4 c \breathe f2 | f f | f1 | bes,2 \breathe bes | bes4 bes bes2~ | bes f' | r1 | r8 bes,8 f'8. f16 c8 c f8. f16 |
 
 %page 4
 c8 c g'8. g16 c,4 r | r8 bes f'8. f16 bes,2 \breathe \bar "||" ees ees4 bes | c2 f4 \breathe f |
 bes8. bes16 bes8 ees, bes' bes4 f8 | c'2 f,8 d ees? f | bes,4 r r8 d ees f | bes,2 \breathe bes~ | bes4 bes f'2 |
 
 %page 5
 f2 c | f4 \breathe a bes c | f,2 r | r4 d ees f | bes,2 r |
 r8 bes'8 a f bes4 r | r8 bes f bes, f'4 r | r8 f ees bes f'4 r |
 
 %page 6
  r8 f ees bes f' bes, ees f | bes,4 r r2 | r8 bes ees bes f'4 d |
  ees f bes,8 \breathe bes' g ees | bes'4 r r8 bes g ees | bes'4 bes, d ees | bes1\fermata \bar "|."
}

scoreAVerseBassVoice = \lyricmode {
  \gaudeat gau -- de -- at, \gaudeats \etcantemus
  \insono \insono \psalterio
  \congra \cum \exercitus can -- tan -- ti -- bus. \repeat unfold 19 { no -- e, } no -- e.
  
}

scoreARight = \relative c' {
  \global
  \tempo "Andante" 4=90
  <f bes>2. q4 | <g bes>2 <f bes>4 <bes d> << {c2. c4 | c d ees2 } \\ {a,2 a4 g | a bes2 a4} >> | <bes d>4 <f bes d>4 q << { ees'~ | ees8[ ees] d4 c2 } \\ {<g bes>4~ | q <f bes> <ees g>2 } >>
  <d g b>4 <ees g c> <f bes d>2 | q4 <g bes ees> <f bes d>2 | <a c>4 c d4. c8 | << { bes8 a bes c d4 c} \\ {g2 a} >> | <bes d>2^\markup { \italic "poco rall." } <a c>4 <bes d> | << {c2 d\fermata } \\ {bes4 a bes2} >> \bar "||"
  
  %page 2
  \time 3/4
  \tempo "Vivace et ritmico" 4=140
  <f bes d>2 q4 | <g bes ees>2 q4 <f bes d>2 q4 | <f c'> <f bes d>2 | <f a c> r4 | <f bes d>2 r4 | <a c f>2 q4 | <g c e>2 q4|
  <f c' f>2 q4 | <g bes ees>2   <<  { s4 | f'4. ees16 d c4 } \\ { <f, bes d>4( | <f d'>4) <f bes c> a } >> | \time 4/4 <f bes d>2 \tempo "Moderato" 4=98 <bes d>8 <bes ees> <bes d> c | <bes d>4 <a c> q8 <bes d> <a c> <g c>

 %page 3
 << \new Voice { \voiceOne a4 g8 c r8 c c4 | c8 c <a c> c c4 c8 c | a f c'4 c8 c <a c> f' | <bes, f> <f bes> f'4 d8 f d bes |
     f'4 d8 f d bes f'4^\markup { \italic "poco rall." }  | d8 f f2 c4 }
    \new Voice { \voiceTwo  f,4 e a8 f a f | a f f4 a8 f a f | f f a f a f f a | f d <d bes'>4 <f bes> bes,8 f' | <d bes'>4 <f bes> bes,8 f' d4 | << { \voiceThree  f1 } \\ {bes4 d8 bes a2} >> } >> |
    <a c>8.^\markup { \italic "a tempo" } <g bes>16 <a c> <g bes> <a c> <bes d> <a c>8 <bes d> <a c>4 |
   << { <bes d>4 a g8 c a4 } \\ { r8 f f4 e f } >>
   
   %page 4
   << { g8 <c ees!>8 <b d>4 c8 <c ees> d4 } \\ { e,8 g g4 g b?} >> | c8^\markup { \italic "poco rit." }  <f, bes? d> <f a c>4 <f bes d>2 \mark \markup { \musicglyph #"scripts.ufermata" } | \bar "||"
   \tempo "Maestoso" 4=88
   r4 << {<bes ees>4 q <bes d> | <g c>2 <a c>4 c | <bes d>4. <bes ees>8 <bes d> q4 <a c>8 | <g c>2 <a c>8 bes <g bes> <f a> | bes <bes d> c4 bes8 d c4 | bes <bes d>2.}
         \\ {g2 f4~ | f8 e16 d e4 f a | f4. g8 f2 | e8 f4 e8 f f ees c | d4 <ees g>8 <f a> bes4 g8 a f1} >>
   
   %page5-1
   << {<bes d>2 <a c>2( | c4) f2 e4 | f2 d4 c } \\ {f,1 | <f a>2 <g c> | <a c>4  q^\markup { \italic "poco più presto" }  g2 } >> | a4 <f a c> <f g d'> <e g c> << { a4 bes c2 } \\ { f,2 g4 a } >> | <bes d>4 <f f'> <g ees'> <a c> |
   <bes d>8 <f bes> <f c' > <a c> <bes d> <f bes> <f c'> <a c> <bes d> <f bes d> <f a c> <d f bes> <c f a> <a' c> <bes d> q | <a c> q <g bes ees> <f bes d> <f a c> <a c> <g bes ees> <f bes d>
   
   %page6
   <a c> <c, f> <ees g> <f bes> <f a> <f bes> <g bes> <f a> |
   << \new Voice { \voiceOne bes8 d ees d c f ees c | d <bes d> <bes ees> <bes d> <a c>4 <bes f'>4 | <bes ees> <a c> <bes d>8 <f bes> <g bes>4 | bes8 f' f ees c4 g | << { bes1 } \\ {\voiceThree r4 f' f ees} >> }
      \new Voice {\voiceTwo f,4 g8 bes a f g a | bes f g f f2 | g4 f f8 d ees4 | d f8 g f4  g^\markup { \center-align \italic "Molto rall." } | f8 d f4 bes,8 f' g4 } >>
   <f bes d>1\fermata \bar "|."
}

scoreALeft = \relative c' {
  \global
  bes2. d4 | ees2 d4 bes | f'2. e4 | f d c2 | bes bes4 ees~ | ees bes c2
  g4 c bes?2 | bes4 ees bes2 | << {f'2. f4~ | f8 e16 d e4 f2 } \\ { f,4 a bes4. a8 | g2 f4 f' } >> | d4 <bes f'> f'( <f bes,>) | << {f1} \\ {f,2 bes\fermata} >> | \bar "||" 
  
  %page 2
  <bes, bes'>2 q4 | <ees bes'>2 q4 | <bes bes'>2 q4 | <f' a>4 <bes, bes'>2 | <f' c'>2 r4 | bes,2 bes4 | << {f''4. c8 c4 } \\ {f,2 f4} >> | <c c'>2 q4
  <f c>2 <bes, bes'>4 | <ees ees'>2 bes4~ | bes f'2 | bes, bes'8 ees bes a | bes4 f << { f'4 f8 c } \\ { f,8 bes f e} >> |
  
  %page 3
  << {c'2 r8 c f4 } \\ { f,4 c f2 } >> | <f f'>1 | q | << { r4 bes bes2 } \\ { bes,1} >> |
  <bes bes'>1 | <bes bes'>2 <f' c'>2 | f'1 | << { bes,4  c c c} \\ { bes,8 bes f'4 c f} >>
  
  %page 4
  << { c'4 r r8 c g'4 } \\ { c,,4 g' c, g' } >> | c8 <bes,? bes'?> <f' c>4 <bes, bes'>2 | << { r4 bes' bes4. a8 | c2. f4 } \\ { ees,2 ees4 bes | c2 f } >>
  bes4. ees,8 bes' bes4 f8 | c'2 f,8 d ees? f | bes,4 r4 << { bes'4 r } \\ { r8 d, ees f } >> <bes, d'>2 <bes bes'>
  
  %page 5-1
  << { bes'2 c | c1 } \\ { bes,4 bes f'2~ | f c} >> | <f c'>4 <a f'> <bes f'> <c e> | << { f4 r8 a, bes4 c | f, r8 f' ees4 c | bes d ees f } \\ { f,2 r | r4 d ees f | bes,2 r } >> |
  bes'8 bes a f bes bes a f | bes bes f bes, << { r8 f'' d bes } \\ { f4 bes } >> |
  
  %page 6-1
  << { f'4 r r8 f ees bes | f'8 a, bes d c d c4 | bes8 bes ees bes f' d ees f | bes,2 c4 d | c2 bes8 bes~ bes4 | bes8 bes d ees bes d ees4 | d8 bes d bes bes2~ | bes1 } 
     \\ {f8 f ees bes f'4 ees | f8 f ees bes f' d ees f | bes,4 r r2 | r8 bes ees bes f'4 d | ees f bes,8 bes' g ees | bes'4. ees,8 bes'4 g8 ees | bes'4 bes, d ees | bes1\fermata } >> \pageBreak
  
}


scoreASopranoVoice = \new ChoirStaff { <<
  \set ChoirStaff.systemStartDelimiter = #'SystemStartBrace
  \new Staff \with {
  instrumentName = "Sop I"
  midiInstrument = "voice oohs"
} { \scoreASopranoVoiceI }
\addlyrics { \scoreAVerseSopranoVoiceI }
\addlyrics { \repeat unfold 153 { \skip 1 } \repeat unfold 11 \aleluia al -- le -- lu -- ia. } 

  \new Staff \with {
  instrumentName = "Sop II"
  midiInstrument = "voice oohs"
} { \scoreASopranoVoiceII }
\addlyrics { \scoreAVerseSopranoVoiceII }
\addlyrics { \repeat unfold 164 { \skip 1 } \repeat unfold 11 \aleluia al -- le -- lu -- ia. } 

>> }

scoreAAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "voice oohs"
} { \scoreAAltoVoice }
\addlyrics { \scoreAVerseAltoVoice }
\addlyrics { \repeat unfold 149 { \skip 1 } \repeat unfold 15 \aleluia al -- le -- lu -- ia. } 


scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerseTenorVoice }
\addlyrics { \repeat unfold 172 { \skip 1 } \repeat unfold 11 \aleluia al -- le -- lu -- ia. __ } 


scoreABassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "voice oohs"
} { \clef bass \scoreABassVoice }
\addlyrics { \scoreAVerseBassVoice }
\addlyrics { \repeat unfold 96 { \skip 1 } \repeat unfold 9 \aleluia al -- le -- lu -- ia. } 


scoreAOrganPart =   \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
}
\score {
  <<
    \new ChoirStaff <<
    \scoreASopranoVoice
    \scoreAAltoVoicePart
    \scoreATenorVoicePart
    \scoreABassVoicePart
    >>
    \scoreAOrganPart
  >>
  \layout { 
    \context {
      \Score
      % удаляем обозначение темпа из общего плана
      \remove "Metronome_mark_engraver"
      \remove "Mark_engraver"
    }
    \context {
      \Staff
      % добавляем изображение темпа на уровень нотного стана
        \consists "Metronome_mark_engraver"   
        \consists "Mark_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
\bookpart {
  \paper {
%  #(set-paper-size "a4landscape" )
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  print-page-number = ##f
}

  \score {
  <<
    \scoreAOrganPart
  >>
  \layout { 
    \context {
      \Score
      % удаляем обозначение темпа из общего плана
      \remove "Metronome_mark_engraver"
      \remove "Mark_engraver"
    }
    \context {
      \Staff
      % добавляем изображение темпа на уровень нотного стана
        \consists "Metronome_mark_engraver"   
        \consists "Mark_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}