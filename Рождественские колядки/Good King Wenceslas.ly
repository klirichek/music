\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Good King Wenceslas"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 10
%  ragged-bottom = ##t
  ragged-last-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

vbreathe = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

globali = {
  \key a \major
  \time 4/4
  \secondbar
  %\tempo 4=210
  \override MultiMeasureRest.expand-limit = #1
}

global = {
  \globali
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}



%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

skipLine = { R1*8 }
skipLineTwo = { R1*9 }
skipZero = { R1*33 }
skipAfterOne = { R1*4 }
skipOne = { R1*8 }
skipAfterThree = {R1*10}
skipTwo = { R1*16 }

flute = \relative c' {
  \globali
  R1*3 |
  r2 r4 r8 \tuplet 3/2 { e16 fis gis } |
  a4-. a-. a--( b |
  a) a-. e2-- |
  fis4--( e fis) gis-. |
  a2-- a4 r | \abr
  
  a-. a-. a--( b |
  a) a-. e2-- |
  fis4--( e fis) gis-. |
  a2-- a4 r8 \tuplet 3/2 { b16 cis d } |
  e4-. d-. cis--( b |
  cis) b-. a2-- |
  fis4--( e fis) gis-. |
  a2-> a4 r 
  
  e-. e-. fis--(\< gis |
  a) a-. b2-- |
  e4-. d-. cis-. b-. |
  a2\! d |
  a1~\> |
  a\! |
  a~ | \abr
  
  a2. r4 |
  a4\f-. a-. a-. b-. |
  a-. a-. e2 |
  a4 a\mf b2 |
  d4\p d e2 |
  a4\pp\> a b2\fermata\! |
  e4-.\p\< d-. cis-. b-.\! | \abr
  
  a2\> e\pp |
  e4->\f d-> cis-> b-> |
  a->\< cis-> b-> e-> |
  a2.\f r4 |
  R1*15 | \abr
  
  a,4-.\mp a8 a a4 a8 a |
  a4\f e' e b |
  a fis cis'2 | \abr
  
 a4 d e2 |
  a,8 fis e d cis2 \vbreathe |
  a'2. gis4 |
  fis2 e |
  fis e |
  << e1 { s4\> s s s\! } >> |
  fis2. fis4 | \abr
  e4 fis e2  |
  fis4 a2 gis4 |
  a2~ a8 b cis d |
  e1~\mp |
  e2 a, |
  d4 cis b2 |
  a\> fis\! |
  cis'2. d4 |
  fis cis' e,2 |
  e1 |
  a,~\> |
  a\pp |
  a'4\f a a b | \abr
  
  a a e2 |
  fis4 e fis gis |
  a2\> a\! |
  e'4 d cis b |
  cis cis8 d e2 |
  a,-\markup\italic{ sub. \dynamic mp }\> fis | \abr
  << e1\!{ s4\> s2 s4\! } >> \vbreathe |
  a,4 \f a a b |
  a a e'2 |
  d4 cis b2 |
  a a4 cis |
  e2 d | \abr
  
  cis2 b |
  a b |
  a1\> |
  a'2.\! e4 |
  e2 fis |
  fis4 e d2 |
  
  % page 5
  cis2 fis, |
  e fis4 gis |
  a2 b |
  e4 d cis b |
  a2\> fis\! |
  fis4_\markup\italic"staccato" fis8 gis a4 a8 b | \abr
  
  cis4 d cis8 b a gis |
  fis4 b2 fis'4 |
  fis2 cis4 fis, |
  eis8 g a b cis d e eis |
  fis2 a |
  b d8 cis b4 | \abr
  
  a8 gis fis2 fis4 |
  fis2 d |
  << b1 { s4\> s2 s4\! } >> |
  R1 |
  a4.\p a8 a4 b |
  a a e2 | \abr
  
  % page 6
  fis4 e fis gis |
  <<a1 {s4\> s2 s4\!}>> |
  a4 a a b |
  a a e2 |
  fis 4 e fis gis |
  <<a1 {s4\> s2 s4\!}>> | \abr
  
  a4 b a gis |
  a e a2 |
  b8 a b cis d e fis gis |
  a1 |
  a2 fis4 e |
  cis a b2 | \abr
  
  a4 b a gis |
  a2 e |
  a2. r4 |
  a4\f_\markup\italic"staccato" a a b |
  a a e2 |
  fis4 e fis gis | \abr
  
  % page 7
  a2\> a\! |
  a'4_\markup\italic"marcato" gis8 fis e4 fis |
  e d8 cis b2 |
  a8 b cis4 b2 |
  << a1 { s4\> s2 s4\! } >> |
  a'2.\p e4 | \abr
  
  e2 cis |
  a\< d |
  << e1\f { s4\> s s s\! } >> |
  e2 fis4 gis |
  a2 b |
  a2. r4 | \abr
  
  e2. r8 \tuplet 3/2 { e16 fis gis } |
  a4 a a b |
  a a e2 |
  fis8 gis a4 a gis |
  a8 fis e d cis4 e |
  a a a b | \abr
  
  % page 8
  a gis8 fis e2 |
  d4 cis b2 |
  a1 |
  a'2. e4 |
  e2 fis |
  fis4 e d b | \abr
  
  << a1 { s4\> s2 s4\! } >> |
  e'2 fis4 gis |
  a2 b |
  a e |
  cis fis |
  a1
}

flutetwo = \relative c' {
  \globali
  R1*12 |
  e1-> |
  e-> |
  d-> |
  cis2-> cis4 r | \abr
  e2-> d-> |
  fis-> e-> |
  e1-> |
  a-> |
  fis1~ |
  fis |
  fis~ | \abr
  
  fis2. r4 |
  a4-. gis fis gis |
  e fis e2 |
  fis4\f e fis gis |
  a2 b |
  cis4 cis e2\fermata\! |
  e4-. d-. cis-. b-. | \abr
  
  a2 e |
  e4-> d-> cis-> b-> |
  e-> a-> gis-> gis-> |
  a2. r4 |
  R1*15
  
  a4-. a8^\markup\italic"marcato" a a4 a8 a |
  a4 e gis e |
  fis fis gis2 | 
  
  % page 3
  fis4 fis b2 |
  a1  \vbreathe |
  e2. e4 |
  cis2 e |
  d e |
  d cis |
  cis d4 d | \abr
  
  cis d e2 |
  d4 e fis e8 d |
  cis2. r4^\markup\italic"legato"
  a'2. b4 |
  a gis fis e |
  d e fis2 |
  fis fis | \abr
  
  e2 a4 gis |
  a b gis2 |
  a2. gis4 |
  fis e fis gis |
  a1 |
  cis4^\markup\italic"marcato" cis cis b | \abr
  
  %page 4
  cis d gis,2 |
  a4 a a d |
  cis2 cis |
  e4 d e gis |
  a a gis2 |
  d^\markup\italic"legato" a | \abr
  
  << b1 { s4 s2 s4 } >> \vbreathe |
  a4^\markup\italic"marcato" gis fis e |
  fis fis e2 |
  a2.^\markup\italic"legato" gis4 |
  a2 a |
  a2. gis4 | \abr
  
  a2 gis |
  fis4 e fis gis |
  << a1 { s4 s2 s4 } >>
  e'4 d cis b |
  cis b a2 |
  a a4 gis | \abr
  
  % page 5
  fis1 |
  e2 fis4 gis |
  a2 b |
  e,4 a a gis |
  fis1 |
  fis4 fis fis fis | \abr
  
  fis fis fis2 |
  fis4 fis8 gis a b cis d |
  cis4 fis, a2 |
  b2 a |
  a cis |
  b8 cis d2 d4 | \abr
  
  cis2 a4 fis |
  fis1 |
  gis1 |
  R1 |
  e4. e8 fis4 e |
  cis d e2 | \abr
  
  % page 6
  d4 e d b |
  cis1 |
  fis4 fis fis d |
  cis d e2 |
  d4 e d d |
  cis1 | \abr
  
  e4 fis e2 |
  e4 e e2 |
  fis4 a a e' |
  e1 |
  cis2 a4 b |
  a fis e2 | \abr
  
  e4 fis e2 |
  fis e |
  a2. r4 |
  e4 e e e |
  fis fis e2 |
  d4 e e2 | \abr
  
  % page 7
  e e |
  e4 fis e fis |
  a a gis2 |
  fis e |
  e1 |
  e'4 d cis b | \abr
  
  cis b a2 |
  fis4 e fis gis |
  a2 a |
  cis cis4 e |
  fis e e2 |
  e2. r4 | \abr
  a,2 gis |
  cis4 cis cis b |
  cis d b2 |
  a4 e' d8 cis b4 |
  a2 a8 fis e d |
  cis4 e a d | \abr
  
  % page 8
  cis a b2 |
  a fis4 gis |
  fis2 e |
  e'4 d cis b |
  cis b cis2 |
  a2. gis4 | \abr
  
  fis1 |
  a2. cis4 |
  cis d e2 |
  e4 d cis b |
  a2 cis |
  e1  
}

clarinet = \relative c' {
  \globali
  R1*12
  e1-> |
  a,-> |
  d,-> |
  fis2-> fis | \abr
  e'-> d->\< |
  fis-> e-> |
  a,1-> |
  d->\! |
  cis1\>~ |
  cis\! |
  d~ | \abr
  d2. r4 |
  a'4-.\f gis-. fis-. e-. |
  cis-. d-. e2 |
  d4 cis b2 |
  fis'\p\>^\markup\bold"rit." e\! |
  r1\fermata |
  R1^\markup\italic"a tempo" |
  R1 |
  e4->\f d-> cis-> b-> |
  cis\< e e^\markup\bold"rit." b'\! |
  a2.\f r4 |
  R1*15 | \abr
  e4-.\mp e8^\markup\italic"marcato" e e4 e8 e |
  e2\f e |
  cis cis | \abr
  d e |
  a,1 \vbreathe |
  cis2.->\f b4 |
  a2 b |
  b fis4 gis |
  a1\> |
  a2\! a4 b | \abr
  a4 a gis2 |
  a2 a4 b |
  a2.\> r4\!^\markup\italic"legato"
  a4\mp b cis e |
  cis e fis e |
  d cis b2 |
  fis1\> | \abr
  gis2\! cis4 d |
  fis fis e2 |
  e4 fis e2 |
  d4 cis\> d e |
  << cis1 { s2. s4\pp } >>
  e4\f ^\markup\italic"marcato" e fis e | \abr
  e fis b,2 |
  d4 e d e |
  e2\> e\! |
  a4 a a b |
  a fis gis2 |
  fis4_\markup\italic"legato"( e d2)^\markup\bold"rit." | \abr
  a'2\> gis\! \vbreathe |
  e4\f^\markup\italic"marcato" e fis e |
  cis cis e2-> |
  d4^\markup\italic"legato" e d b |
  cis2\> cis\! |
  e fis4 e | \abr
  e d e2 |
  d4 cis b2 |
  << a1\> { s2. s4\! } >>
  a'2. gis4 |
  gis2 fis |
  d4 e fis d | \abr
  
    
  % page 5
  << cis1 { s4\> s2 s4\! } >> |
  cis4 b cis e |
  d e e2 |
  e4 fis e e8 d |
  cis2\> a\! |
  fis1 | \abr
  
  cis'4 b cis fis |
  d2 fis4 gis |
  a2 fis2 |
  a1 |
  fis |
  fis2 b4 fis | \abr
  fis1 |
  d |
  << e { s4\> s2 s4\! } >>
  R1
  r1\p R1 | \abr
  
  % page 6
  R1*6 | \abr
  cis4\f d e2
  cis4 b a2
  d4 e fis b |
  cis1 |
  e,2 d4 e |
  e d b2-> | \abr
  cis4 d e2 |
  cis2 d\> |
  e2\! r |
  cis4\f cis cis b |
  cis cis cis2 |
  b e | \abr
  
  % page 7
  d2\> cis\! |
  a'4 a gis b |
  a a e2 |
  fis4 fis a gis |
  << a1 { s4 \> s2 s4\! } >> |
  cis,4\p d e2 | \abr
  e fis |
  d\< d |
  d4\f\>( b) cis2\! |
  a'4 gis a b |
  d cis gis2 |
  a4 fis e2 | \abr
  e2\< e\! |
  e4 e fis e |
  e fis gis2 |
  a4 a a e |
  e2\> e\! |
  e4 e fis fis | \abr
  
  %page 8
  a4 fis e2 |
  fis4 e d e |
  d2 cis |
  a'2. gis4 |
  a gis fis2 |
  d4 cis d e | \abr
  << fis1 { s4\> s2 s4\! } >>
  e2 d4 cis |
  fis2 gis |
  a4  fis e2 |
  fis2 a |
  cis1
  
  
}

violinone = \relative c'' {
  \globali
   R1*20
   gis4->\f fis-. fis-. gis-> |
   fis-. fis-. gis->-. fis-. |
   e-> d-. d-. e-> | \abr
   
   d-. d-. e-> d-. |
   e1->~ |
   << e { s4\> s s s\! } >> |
   fis4\~ e\> fis gis |
   a2 r\pp |
   r1\fermata |
   R1 | \abr
   
   e'8\p[ e] d\<[ d] cis[ cis] b[ b\!] |
   a2:16 e2:16 |
   cis'8\f a\< b cis d e fis gis |
   a4\! r a, b |
   a a e2 |
   fis4\downbow e fis gis | \abr
   
   a2\downbow\> a\upbow\! |
   a4 a a b |
   a a e2\downbow |
   fis4\downbow e fis gis |
   a2\downbow a8 b cis d |
   e4 d cis b |
   cis b a2 |
   fis4 e fis gis | \abr
   
   a2-> a\! |
   e4 e fis gis |
   a a b2 |
   e4 d cis b |
   a2 d\> |
   a1\! |
   a4->\prall\f gis8 a b4\prall a8 gis |
   a4-. a-. e-- e-. | \abr
   
   fis8 gis a4 a--( gis) |
   a1 \vbreathe |
   e2.\f-> e4 |
   cis d e2 |
   d e |
   << a1 { s4\> s2 s4\! } >>
   fis2 fis4 b | \abr
   
   a4 a e2 |
   fis4 e fis gis |
   a2.\> r4\! |
   e'4\mp_\markup\italic"legato" d cis b |
   cis b a2 |
   fis4 e fis gis |
   << a1 { s4\> s s s\! } >> | \abr
   
   e4 e fis gis |
   a a b2 |
   e4 d cis b |
   a2\> d |
   a1\pp |
   a8\f[ b] cis[ d] cis4 d8 e | \abr
   
   % page 4
   e4 fis e8( d cis b) |
   a4 e' d8( cis) b4 |
   a8(\> fis e d) cis( e a cis) \!
   e4 d8( b) cis4 b8( gis) |
   a4 cis8 d e2 | 
   d4( b\> a2)\! | \abr
   
   b\> e\! \vbreathe |
   a,4\f a a b |
   a a gis2-> |
   fis4 a2 gis4 |
   a2\> a\! |
   a4 a a b | \abr
   
   a4 a e2 |
   fis4 a2 e4 |
   << e1 { s4\> s s s\! } >> |
   e'4 d cis b |
   cis b a2 |
   fis4 e fis gis | \abr
   
   % page 5
   << a1 { s4\> s s s\! } >> |
   e4 e fis gis |
   a a b2 |
   e4 d cis b |
   a2 d |
   a2.->\< fis4\! | \abr
   
   a8[ gis] a[ b] cis2 |
   fis2. gis4 |
   a2 fis |
   d1 |
   cis |
   d2. d8 e | \abr
   
   fis2 cis |
   b4 cis d fis |
   e1:16\f\> |
   e:16 |
   e2:16\pp fis4:16 e:16 |
   a,2:16\> e:16\! | \abr
   
   % page 6
   d'4:16 e:16 d:16 b:16 |
   << a1:16 { s4\> s s s\! } >> |
   a4 a a b |
   a2 e |
   fis4 e fis gis |
   a2\> a4\! r | \abr
   
   e'4 d cis b |
   cis b a2 |
   fis4 e fis gis |
   a8 fis e d cis2 |
   e4 e fis gis |
   a a b2-> | \abr
   
   e4 d cis b |
   a2\> b\! |
   a2.\p r4 |
   a4\f-\markup\italic"legato" cis e2 |
   fis e |
   d4 cis b2 | \abr
   
   % page 7
   a2\> a\! |
   cis2_\markup\italic"detache" cis4 d |
   e a, gis2 |
   fis4 a2\< gis4\! |
   a2\> a\! |
   a2.\p_\markup\italic"legato" gis4 | \abr
   
   a4( gis fis e) |
   fis(\< e fis gis |
   a2)\f\> a\! |
   e4_\markup\italic"detache" e fis gis |
   a a b2 |
   e4:16\p\< d:16 cis:16 b:16 | \abr
   
   cis2:16\f\< b:16\! |
   a4-> a-. a( b |
   a)-. a-. e2-> |
   fis4-. e-. fis-. gis-. |
   a2->\> a\! |
   a4-> a-. a-. b-. | \abr
   
   %page 8
   a4 a e2 |
   fis4 e fis gis |
   a2->\> a\! |
   e'4:16\f d:16 cis:16 b:16 |
   cis:16 b:16 a2:16 |
   fis4:16 e:16 fis:16 fis:16 | \abr
   
   a2:16\> a\! |
   e4 e fis gis |
   a a b2 |
   e4 d cis b |
   a2 d |
   a1      
}

violintwo = \relative c'' {
  \globali
  R1*20
  <a cis>4\p q-. q-. q |
  q q q q |
  <fis a>\< q q q\! | \abr
  
  q q q q |
  cis1->~ |
  cis2\> b\! |
  d4 cis d e |
  fis\> e fis gis\pp |
  r1\fermata |
  R1 | \abr
  
  e8[ e] d[ d] cis[ cis] b[ b] |
  a2:16 e'2:16 |
  e8 a b cis d e fis gis |
  a4 r fis, e |
  e fis b,2 |
  d4\downbow e d e | \abr
  
  e2\downbow e\upbow |
  e4 e fis fis |
  e fis b,2\downbow |
  d4\downbow e d e |
  fis2\downbow\> e\upbow\! |
  a4 a a gis |
  a gis fis2 |
  d4 e d d |
  fis2 fis |
  e4 e d cis |
  cis cis e2 |
  e4 a a gis |
  a2 fis |
  e1 |
  e2 e |
  fis e | \abr
  
  d4 fis e2 |
  e1 |
  cis2.-> b4 |
  a2 b |
  b e |
  e1 |
  cis2 d | \abr
  
  cis4 d e2 |
  d4 e fis e8 d |
  cis2. r4 |
  cis'4 b a e |
  a e fis e |
  d cis d2 |
  d cis | \abr
  
  cis4 cis a b |
  d fis e2 |
  cis4 d e e |
  fis e fis gis |
  a1 |
  e4 a fis b | \abr
  
  % page 4
  a4 fis gis2 |
  fis4 a a gis |
  a2 a |
  a4 fis e e |
  e fis gis2 |
  fis1^\markup\italic"legato" | \abr
  
  e1 |
  a4^\markup\italic"staccato" gis fis e |
  fis fis e2-> |
  d4 e fis e |
  e2 e |
  cis4 cis cis e | \abr
  
  e fis e2 |
  d4 e fis e |
  cis1 |
  a'4 a a gis |
  gis gis fis2 |
  d4 e d d | \abr
  
  % page 5
  << fis1 { s4\> s s s\! } >> |
  cis4 b cis e |
  d e e2 |
  e4 a a gis |
  a2 fis |
  fis2.->\< fis4\! | \abr
  
  cis d cis fis |
  g8 a b4 d b |
  cis8 d cis b a gis fis e |
  d4 eis a d |
  cis b a gis |
  fis2 gis | \abr
  
  a4. gis8 fis4 fis8 e |
  d2 fis |
  e1:16\f\> |
  e:16 |
  cis4.\p cis8 cis4 b |
  cis d b2 | \abr
  
  % page 6
  a4 a a gis |
  << a1 { s4\> s s s\! } >> |
  fis'4 fis fis fis |
  fis2 e |
  d4 e d2 |
  fis2\> fis4\! r | \abr
  
  a4 fis e2 |
  e e |
  d4 e fis e |
  cis2 cis8 b cis d |
  e4 e d e |
  e fis gis2-> | \abr
  
  a4 b a gis |
  fis2\> e |
  e2.\p r4 |
  a2\f cis |
  a2 cis |
  b gis | \abr
  
  % page 7
  a\> a\! |
  a4 a e b' |
  a fis e2 |
  d4 fis e2 |
  e\> e\! |
  cis4\p( d e e) | \abr
  
  e2( fis4 e |
  d2)\< d |
  d4\f\>( b) cis2\! |
  cis4 cis cis e |
  fis e gis2 |
  a4:16\p\< a:16 a:16 gis:16 | \abr
  
  a2:16\f\< gis:16\! |
  e4-> e-. fis( e |
  e-.) fis-. b,2-> |
  d4-. e-. d-. e-. |
  e2->\> e\! |
  e4-> e-. fis-. fis-. | \abr
  
  % page 8
  e fis b,2 |
  d4 e d e |
  fis2->\> e\! |
  a2.:16\f gis4:16 |
  a:16 gis:16 fis2:16 |
  d4:16 e:16 d:16 d:16 | \abr
  
  fis2:16\> fis\! |
  e4 e d eis |
  fis fis e2 |
  e4 a a gis |
  a2 fis |
  e1
  
}

alto = \relative c' {
  \globali
  R1*20
  cis1~->\p |
  cis |
  a~->\mf | \abr
  
  a |
  e->~ |
  e\> |
  R1\! |
  R1 |
  r1\fermata |
  R1 | \abr
  
  e1:16\p |
  e:16\< |
  e4 a b2:16\! |
  cis4\downbow cis cis b |
  cis d gis,2 |
  fis4\downbow fis fis d' | \abr
  
  cis2\downbow cis\upbow |
  cis4 cis cis d |
  cis d gis,2\downbow |
  a4\downbow a a b |
  d\downbow(\> cis8 b) cis2\! |
  e4 fis e e |
  e e cis2 |
  a4 a a d | \abr
  cis2\> cis\! |
  a4 a a eis |
  fis fis gis2 |
  a4 fis' e e8( d) |
  cis2 a\> |
  cis1\! |
  cis2 b |
  cis gis | \abr
  
  % page 3
  a4 d2 d4 |
  cis1 \vbreathe |
  e,2.-> e4 |
  a2 gis |
  fis4 e fis gis |
  a1 |
  a4 a a b | \abr
   
  a4 a e2 |
  fis 4 e fis gis |
  a2. r4 |
  R1*9 
  e'4\f^\markup\italic"staccato" e fis e | \abr
  
  % page 4
  cis a b2 |
  a4 a a b |
  cis2 cis |
  a4 a a gis |
  a a b2 |
  a1 | \abr
  
  b |
  a2.-> b4 |
  a2-> e'-> |
  d4_\markup\italic"marcato" e d b |
  a2 a |
  a4 a a b | \abr
  
  a4 a e'2 |
  d4 e d b |
  a2 a |
  e'4 fis e e |
  e e cis2 |
  a4 a a d | \abr
  
  % page 5
  << cis1 { s4\> s s s\! } >> |
  a4 gis a b |
  fis a gis2 |
  a4 fis' e e8 d |
  cis2 d |
  cis2.-> cis4 | \abr
  
  fis,2. fis4 |
  fis2. fis4 |
  cis'2. cis4 |
  d2 e4 eis |
  fis2. cis4 |
  d b8 cis d2 | \abr
  
  cis1 |
  b2 a |
  << e'1 { s4\> s s s\! } >> |
  s1 |
  a,2^\markup\italic"legato" fis4 gis |
  a fis e2 | \abr
  
  %page 6
  d4 e fis gis |
  << a1 { s4\> s s s\! } >> |
  fis'4 e d b |
  fis2 e |
  a2 a4 b |
  e,2\> e4\! r | \abr
  
  e' d cis b |
  cis b a b8 cis |
  d4 cis d b |
  cis2\> a\! |
  e'4-> d8 cis d-> cis b4 |
  cis cis8 d e2-> | \abr
  
  e4 d cis b |
  a2\> d\! |
  cis2.\p r4 |
  e1\f |
  cis2 cis |
  fis4 e e2 | \abr
  
  d2\> cis\! |
  cis_\markup\italic"marcato" gis4 b |
  a a b2 |
  d4 cis b2 |
  cis2\> cis\! |
  R1 | \abr
  
  a4\p e fis2 |
  a2\p\< fis |
  fis\f\> e\! |
  a4 gis a b |
  d cis e2 |
  e4:16\p\< fis:16 e2:16 | \abr
  
  e2:16\f\< d:16\! |
  cis4-> cis-. cis( b |
  cis) d-. gis,2-> |
  a4-. a-. a-. d-. |
  cis2->\> cis\! |
  cis4-> cis-. cis-. d-. | \abr
  
  % page 8
  cis4 d gis,2 |
  a4 a a d |
  d-> cis8\> b cis2\! |
  e4:16\f fis:16 e:16 e:16 |
  e:16 e:16 cis2:16 |
  a4 a a d | \abr
  
  cis2:16\> cis\! |
  a4 a a cis |
  cis d gis,2 |
  a4 fis' e d |
  cis2 a |
  e1  
}


cello = \relative c {
  \globali
  R1*20
  fis1\p->~ |
  fis |
  d->\mf~ | \abr
  
  d |
  a->~ |
  a2\> e'\! |
  R1*2 |
  r1\fermata |
  R1 | \abr
  
  e1:16\p |
  e,:16 |
  e4 e e e |
  a'^\markup\italic"sempre staccato"\downbow a fis gis |
  a e e2 |
  d4\downbow cis d b | \abr
  
  a2\downbow\> a\upbow\! |
  a'4 a fis b, |
  cis d e2\downbow |
  b4\downbow cis d b |
  a1\downbow |
  cis4 d e e |
  a e fis2 |
  d4 cis d b | \abr
  fis'2\> fis\! |
  cis4 cis d cis |
  fis fis e2 |
  cis4 d e e |
  a,1~ |
  a |
  a'2\f e |
  fis cis | \abr
  
  % page 3
  d4 fis e2 |
  a,1 \vbreathe |
  a2.->\f e'4 |
  fis2 e |
  b e |
  << a,1 {s4\> s2 s4\! } >> |
  fis'2 d4 b | \abr
  cis d e2 |
  b4 cis d e |
  << a,1 {s4\> s2 s4\! } >> |
  R1*9 |
  a'4\f^\markup\italic"staccato" a fis gis | \abr
  
  % page 4
  a d, e2 |
  d4 cis d b |
  a2\> a\! |
  cis4 d e e |
  a fis e2 |
  << d1^\markup\bold"rit." {s4\> s2 s4\! } >> | \abr
  e2\> e,\! \vbreathe |
  a2.->\f gis4 |
  fis2 e-> |
  d4^\markup\italic"marcato" e fis e |
  a2\> a\! |
  a'4 gis fis e | \abr
  
  cis d e2 |
  b4 cis d e |
  a,2\> a\! |
  cis4 d a' e |
  cis e fis e |
  d cis d b | \abr
  
  % page 5
  << fis'1 {s4\> s2 s4\! } >> |
  a4 gis fis e |
  d cis e2 |
  cis4 d e e |
  fis2 d |
  fis,2.-> fis4 | \abr
  fis2. fis4 |
  b2. b4 |
  fis2. fis4 |
  eis1 |
  fis |
  b | \abr
  a1 |
  b2 d |
  << e1 {s4\> s2 s4\ppp } >> |
  R1*9 | \abr
  a4 b a gis |
  a e cis2 |
  d4 cis d e |
  a,2\> a\! |
  cis4 e fis gis |
  a fis e2 | \abr
  cis4 d e e |
  fis2\> gis\! |
  a1 |
  a2.\f^\markup\italic"legato" gis4 |
  fis2 cis |
  b e | \abr
  
  % page 7
  a2.\> gis4\! |
  fis2 cis4 b |
  cis d e2 |
  d4 fis e2 |
  a,1 |
  R1*2 | \abr
  d2\p\< b\! |
  << a1 {s4\f\> s2 s4\! } >> |
  cis2 fis4 e |
  d cis e2 |
  e\< e\! | \abr
  << e,1:16 {s4\f\< s2 s4\! } >> |
  a4-> a-. fis( gis |
  a4-.) d,-. e2-> |
  d'4-. cis-. d-. b-. |
  a2->\> a\! |
  a'4-> a-. fis-. b,-. | \abr
  
  % page 8
  cis d e2 |
  b4 cis d e |
  a,2->\> a\! |
  cis4\f d e e |
  a e fis2 |
  d4 cis d b | \abr
  fis'2\> fis\! |
  cis4 cis d cis |
  fis d e2 |
  cis4 d e e |
  fis2 d |
  a1 | 
}

rup = \relative c' {
  \globali
  \oneVoice
  R1*20
  <cis fis a>1->~\p |
  q |
  <a d fis>\mf->~ | \abr
  q |
  a'4\ff^\markup\italic"marcato" <a gis> <a fis> <b gis e> |
  <a e cis> <a fis d> <e b gis>2 |
  <fis d>4 <e cis>\> <fis d> <gis e> |
  <a fis d>2\pp r |
  r1\fermata |
  R1 | \abr
  R1 |
  <e e'>4->\f <d d'>-> <cis cis'>-> <b b'>-> |
  <cis e a>2-> <e gis b>-> |
  <cis e a>4 q <cis fis a> <b e b'> |
  <cis e a> <d fis a> <gis, b e>2 |
  <a d fis>4 <a e'> <a d fis> <d e gis> | \abr
  
  <cis e a>2\> q\! |
  q4 q <cis fis a> <d fis b> |
  <cis e a> <d fis a> <e b gis>2 |
  <fis d a>4 <e a,> <fis d a> <gis e b> |
  <a fis d>2\> <a e cis>\! |
  <e a e'>4 <fis a d> <e a cis> <e gis b> |
  <e a cis> <e gis b> <cis fis a>2 |
  <fis d a>4 <e a,> <fis d a> <gis d b> | \abr
  
  <a fis cis>2\> q\! |
  <e a,>4 q <fis d a> <gis cis,> |
  <a cis,> q <b e,>2 |
  <e e,>4 <d a fis> <cis a e> << <b gis> \\ { e,8 d} >> |
  <a' cis,>2( <d fis,>) |
  <a cis,>1 |
  <a e cis>2 <gis e b> |
  <a fis cis> <gis e cis> | \abr
  
  % page 3
  << { fis4 a2 gis4 } \\ { <d a>2 <e b> } >> |
  <cis e a>1 \vbreathe |
  <e cis>2.->\f <e b gis>4 |
  << { cis4 d } \\ a2 >> <e' b>2 |
  <d fis,>2 << e \\ {fis,4 gis} >> |
  << a'1 \\ {d,2\> cis\! } >> |
  \oneVoice <fis cis a>2 <a fis d>4 <b fis d> | \abr
  <a e a,> <a fis a,> <e b gis>2 |
  <b' fis d>4 <a e cis> <a fis d> <gis e b> |
  <a e cis>1 |
  <cis e>4_\markup\italic"legato" <b d> <a cis> <gis b> |
  <a cis> <gis b> a2 |
  fis4 e \voiceTwo fis2 \oneVoice |
  <fis a>1 \abr
  
  <cis e>2 <cis fis>4 <d gis> |
  <fis a>2 <gis b> |
  << { e'4 d cis b } \\ { a2. gis4 } >> |
  << { a2 d a1 } \\ { fis4( e fis gis e1)} >> |
  \oneVoice <cis' a'>4\f q q <b e> | \abr
  
  % page 4
  <a fis'>4 <fis d'> <e b'>2 |
  <fis d'>4 <e e'> <fis d'> <e b'> |
  << <cis a'>1 {s4\> s2 s4\! } >> |
  <a' e'>4 <fis d'> <e cis'> <e b'> |
  <e cis'> <fis cis'> <gis b>2 |
  << d'2\> \\ { fis,4 gis } >> <fis a d>2 | \abr
  << <e b'>1\! \\ {a2( gis) } >> \vbreathe |
  \oneVoice <e a>2.-> <e b'>4 |
  <cis a'>2 <b e> |
  <a fis'>4 <a cis e> <a d fis> <b e gis> |
  <cis a'>1 |
  <cis e a>4 q <cis fis a> <e gis b> | \abr
  <a, e' a> <a fis' a> <gis b e>2 |
  <d' fis>4 <a e'> <a fis'> <d gis> |
  <cis a'>1 |
  <e a e'>4 <fis a d> <e a cis> <e gis b> |
  <e gis cis> <e gis b> <cis fis a>2 |
  <a d fis>4 <a e'> <a d fis> <b d gis> | \abr
  
  % page 5
  <cis fis a>1 |
  <cis e>4 <b e> <a cis fis> <gis b gis'> |
  <d' fis a> <a e' a> <e' gis b>2 |
  <e a e'>4 <fis a d> <e a cis> << <gis b> \\ {e8 d} >> |
  << <fis a>1 \\ { cis2 d } >> \oneVoice |
  <a cis fis>1 | \abr
  <a cis fis>4\f fis' << {cis' a} \\ <fis cis>2 >> \oneVoice |
  <fis b>2. q4 |
  <cis fis cis'>2. q4 |
  <d a' d>1 |
  <cis fis cis'>2. q4 |
  <b fis' b>1 | \abr
  <a fis' a>1 |
  <b d fis>2 <a d fis>\> |
  <b e gis>1\pp |
  R1 |
  <e a>2^\markup\italic"legato"\pp <fis a>4 <e b'> |
  << a\> \\ { e4 <d fis>} >> \oneVoice <e gis>2\! | \abr
     
  % page 6
  <d fis>4 <cis e> d <b e> |
  <cis e>1 |
  <fis a>4\p <e fis a> <fis a> <fis b> |
  <fis a> 2\> <e gis>\! |
  <d fis>4 e <d fis> <b d gis> |
  <cis fis a>2.\p r4 | \abr
  
  <e a e'>4\f <fis b d> <e a cis> <e gis b> |
  <e a cis> <e gis b> <e a>2 |
  << a2 \\ { <fis d>4 <e cis> } >> \oneVoice <d fis a> <b e gis> |
  <cis e a>1 |
  <e a e'>4 <e b' e> <d a' d> <e b'> |
  <cis e a> <cis fis cis'> <e b' e>2 | \abr
  
  << { a2  a4 gis } \\ { e4 fis e2 } >> \oneVoice |
  <cis fis a>2\> <b e>\! |
  <cis e a>1\p |
  <cis e a>2.\f <b e b'>4 |
  <cis fis a>2 <cis e gis> |
  <b d fis> <b e> | \abr
  
  % page 7
  << e1 \\ { d2 cis } >> \oneVoice |
  <fis a cis>2 <e gis cis>4 <d fis b> |
  << { <e e'>4 <fis d'> } \\ a2 >> \oneVoice <gis b e>2 |
  << { d'4 cis <b e,>2 } \\ { <a fis> a4 gis } >> \oneVoice|
  <cis, e a>1 |
  << { e'4 d } \\ a2 >> \oneVoice <a cis>4 <gis b> | \abr
  
  <a cis>4 <gis b> << a2 \\ { fis4 e } >> \oneVoice |
  << { fis4 e fis gis } \\ { d2 d } >> |
  << a'1 \\ { <fis d>2 ( <e cis>) } >> |
  << {a4 gis } \\ <e cis'>2 >> \oneVoice <cis fis a>4 <e gis b> |
  <fis a d> <e a e'> <e gis b e>2 |
  <e a cis>4\p\< <fis a d> <e a cis> <e gis b>\! | \abr
  
  <cis e a cis>2-> <d e gis b>-> |
  <a cis e a>-> <cis fis a>4 <b e b'> |
  <cis e a>4 <d fis a> <e b gis>2 |
  <fis d a>4 <e a,> <fis d a> <gis e d> |
  <a e cis>1 |
  <cis, e a>4 <cis e a> <cis fis a> <d fis b> | \abr
  
  % page 8
  <cis e a> <d fis a> <gis, b e>2 |
  <a d fis>4 <a e'> <a d fis> <d e gis> |
  << a'1 \new Voice { \voiceThree fis2 e } \new Voice { \voiceTwo d4 cis8 b cis2 } >> \oneVoice |
  <a' e'>8[\f e] <a d>[ fis] <a cis>[ e] <gis b>[ e] |
  <a cis>[ e] <gis b>[ e] <fis a> cis <fis a> cis |
  <d fis>8[ a] e'[ a,] <d fis>[ a] <d gis>[ b] | \abr
  
  <cis fis a>2\> q\! |
  <a e'>4-> q-> <a d fis>-> <cis eis gis>-> |
  <cis fis a>-> <d fis a> <b e b'>2-> |
  <e a e'>4-> <fis a d>-> <e a cis>-> <d e gis b>-> |
  <cis fis a>2-> <a d fis a> |
  <a cis e a>1
}

rdown = \relative c'' {
  \globali 
}

lup = \relative c {
  \globali
  \oneVoice
  R1*20 
  fis1->\p~ |
  fis |
  d->\mf~ | \abr
  d |
  <a a'>-> |
  cis4 d e2 |
  <d a'>4 <e a> <fis b> <gis b> |
  a2 r |
  r1\fermata |
  R1 | \abr
  R1 |
  <e a cis>4 <e b' d> <e a cis> <e gis b> |
  <e e,>2-> q-> |
  a4-.^\markup\italic"sempre marcato" a-. fis gis |
  a d, e2 |
  d4 cis d b | \abr
  
  a2 a |
  a'4 a fis b, |
  cis d e2 |
  b4 cis d b |
  a2 a |
  cis4 d e e |
  a e fis2 |
  d4 cis d b |
  fis'2 fis |
  cis4 cis d <eis cis> |
  fis fis <gis e>2 |
  
  <a cis,>4 d, e e |
  <a a,>1~ |
  q |
  a2 e |
  fis cis |
  
  % page 3
  d4 fis e2 |
  a1 \vbreathe |
  <a e a,>2.-> <e e,>4 |
  <fis fis,>2 <e e,> |
  <b b,> <e e,> |
  <a e a,>1 |
  <fis fis,>2 <d d,>4 <b b,> | \abr
  <cis cis,>4 <d d,> <e e,>2 |
  <b b,>4 <cis cis,> <d d,> <e e,> |
  <a a,>1 |
  a4 b cis e |
  cis e fis e |
  d cis \voiceOne d2 \oneVoice |
  << { d2 cis } \\ fis,1 >> \oneVoice |
  <cis gis'>2 <fis a>4 b |
  d4 b e2 |
  <cis e>4 <d fis> e2 |
  << {d4(\> cis d e cis1)\! } \\ {a1~ a} >> \oneVoice
  <a e'>4 q <fis fis'> <gis e'> | \abr
  
  % page 4
  <a cis>4 <d, a'> <e gis>2 |
  <d a'>4 <cis a'> <d a'> <b gis'> |
  <a a'>1 |
  <cis a'>4 <d a'> <e a> <e gis> |
  a <fis a> <e b'>2 |
  <d a'>1 | \abr
  <e b'> |
  <a, e' a>2. <gis gis'>4 |
  <fis fis'>2 <e e'> |
  <d d'>4 <e e'> <fis fis'> <e e'> |
  <a a'>1 |
  <a a'>4 <gis gis'> <fis fis'> <e e'> | \abr
  <cis cis'> <d d'> <e e'>2 |
  <b b'>4 <cis cis'> <d d'> <e e'> |
  <a a'>1 |
  cis4 d a' e |
  cis e fis e |
  d cis d b | \abr
  
  % page 5
  fis'1 |
  <a a,>4 <gis gis,> <fis fis,> <e e,> |
  <d d,> <cis cis,> <e e,>2 |
  <cis cis,>4 <d d,> <e e,>2 |
  <fis fis,> <d d,> |
  <fis, fis,>2. <fis' fis,>4 | \abr
  
  q2. q4 |
  <b b,>2. q4 |
  <fis fis,>2. q4 |
  <eis eis,>1 |
  <fis fis,>2. q4 |
  <b, b,>1 | \abr
  
  <a a,> |
  <b b,>2 <d d,> |
  <e e,>1 |
  R1 |
  <a cis>2 <fis cis'>4 <gis b> |
  <a cis> <fis a> <e b'>2 | \abr
  
  %page 6
  <d a'>4 <e a> <fis a> gis |
  a1 |
  r2 d4 <b d> |
  << { cis d} \\ fis,2 >> \oneVoice <e b'> |
  << a2 \\ { b,4 cis } >> \oneVoice <d a'> b |
  fis'2. gis4 | \abr
  
  <a cis> <b d> cis e, |
  a e << {a b8 cis } \\ cis,2 >> \oneVoice |
  <d d,>4 <cis cis,> <d d,> <e e,> |
  <a a,>1 |
  <cis, cis,>4 <e e,> <fis fis,> <gis gis,> |
  <a a,> <fis fis,> <e e,>2-> | \abr
  
  <cis cis,>4 <d d,> <e e,>2 |
  <fis fis,> <gis gis,> |
  <a e a,>1 |
  a2. gis4 |
  fis2 cis |
  b e | \abr
  
  % page 7
  a2. gis4 |
  fis2 cis4 b |
  cis d e2 |
  d4 fis e2 |
  <a e a,>1 |
  <cis e>4 <d fis> e2 | \abr
  
  << e \\ { a,4 e } >> \oneVoice <fis cis'>2 |
  <d a'> <b fis'> |
  <a a'>1 |
  <cis cis,>2 <fis fis,>4 <e e,> |
  <d d,> <cis cis,> <e e,>2 |
  q q | \abr
  
  <e, e,>1\f |
  <a a,>2-> <fis fis,>4 <gis gis,> |
  <a a,> <d, d,> <e e,>2-> |
  <d' d,>4 <cis cis,> <d d,> <b b,> |
  <a a,>1-> |
  <a a'>2 <fis fis'>4 <b b,> | \abr
  
  %page 8
  <cis cis,> <d d,> <e e,>2 |
  <b b,>4 <cis cis,> <d d,> <e e,> |
  <a a,>1 |
  <cis, cis,>4 <d d,> <e e,> q |
  <a a,> <e e,> <fis fis,>2 |
  <d d,>4 <cis cis,> <d d,> <b b,> | \abr
  
  <fis fis'>1 |
  <cis cis'>4 q <d d'> <cis cis'> |
  <fis fis'> <d d'> <e e'>2 |
  <cis cis'>4 <d d'> <e e'> q |
  <fis fis'>2 <d d'> |
  <a a'>1\fermata
  
}

ldown = \relative c'
{
  \globali
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  \skipZero
  % verse 1
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a | \abr
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \abr
  
  
  \skipAfterOne
  
  % verse 2
  \skipLine
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a |
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \abr
  
  \skipOne
  
  % verse 3
  \skipLine
  
e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a | \abr
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \abr
  
  \skipAfterThree
  
  % 4 verse  
  a4. a8 a4 b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a \abr
  \skipLineTwo
  \abr
  
  \skipTwo
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a | \abr
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \abr
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  \skipZero
  % verse 1
  e4 e fis e |
  e fis b,2 |
  d4 e d e |
  e2 e |
  
  e4 e fis fis |
  e fis b,2 |
  d4 e d e |
  fis2 e |
  
  a4 a a gis |
  a gis fis2 |
  d4 e d d |
  fis2 fis |
  
  e4 e d cis |
  cis cis e2 |
  e4 a a gis |
  a2( fis) |
  e1
  
  \skipAfterOne
  
  % verse 2
  \skipLine
  cis'4 b a e |
  a e fis( e) |
  d4 cis d b |
  d2 cis |
  cis4 cis a b |
  d fis e2 |
  cis4 d e e |
  fis( e fis gis) |
  a1
  
  \skipOne
  
  % verse 3
  \skipLine
  
  a4 a a gis |
  gis gis fis2 |
  d4 e d e |
  fis2 fis |
  
  cis4 b cis e |
  d e e2 |
  e4 a a gis |
  a2( fis) |
  fis1
  
  \skipAfterThree
  
  % 4 verse
  e4. e8 fis4 e |
  e fis e2 |
  d4 e d b |
  cis2 cis |
  fis4 fis fis d |
  cis d e2 |
  d4 e d b |
  cis2 cis |
  \skipLineTwo
  
  \skipTwo
  e4 e fis e |
  e fis b,2 |
  d4 e d e |
  e2 e |
  
  e4 e fis fis |
  e fis b,2 |
  d4 e d e |
  fis2 e |
  
  a4 a a gis |
  a gis fis2 |
  d4 e d e |
  fis2 fis |
  
  e4 e d eis |
  fis fis e2 |
  e4 a a gis |
  a2( fis) |
  e1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \skipZero
  % verse 1
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a d |
  cis2 cis |
  
  cis4 cis cis d |
  cis d gis,2 |
  a4 a a b |
  d( cis8[ b]) cis2 |
  
  e4 fis e e |
  e e cis2 |
  a4 a a d |
  cis2 cis |
  
  a4 a a eis |
  fis fis gis2 |
  a4 fis' e e8[( d]) |
  cis2( a) |
  cis1
  
  \skipAfterOne
  % 2 verse
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  
  \skipLineTwo
  
  \skipOne
  
  % 3 verse
  a4 a a b |
  a a e'2 |
  d4 e d b |
  a2 a |
  a4 a a b |
  a a e'2 |
  d4 e d b |
  a2 a
  
    e'4 fis e e |
  e e cis2 |
  a4 a a d |
  cis2 cis |
  
  a4 gis a b |
  fis a gis2 |
  a4 fis' e e8[( d]) |
  cis2( d) |
  cis1
  
  \skipAfterThree
  
  % 4 verse
  \skipLine
  e4 d cis b |
  cis b a4( b8[ cis]) |
  d4 cis d b |
  cis2 a |
  e'4 d8[( cis]) d[( cis]) b4 |
  cis cis8[( d]) e2 |
  e4 d cis b |
  a2( d) |
  a1
  
  \skipTwo
  
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a d |
  cis2 cis |
  
  cis4 cis cis d |
  cis d gis,2 |
  a4 a a d |
  d( cis8[ b]) cis2 |
  
  e4 fis e e |
  e e cis2 |
  a4 a a d |
  cis2 cis |
  
  a4 a a cis |
  cis d gis,2 |
  a4 fis' e d |
  cis2( a) |
  cis1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \skipZero
  % verse 1
  a4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  a'4 a fis b, |
  cis d e2 |
  b4 cis d b |
  a2 a |
  
  cis4 d e e |
  a e fis2 |
  d4 cis d b |
  fis'2 fis |
  
  cis4 cis d cis |
  fis fis e2 |
  cis4 d e e |
  a,1 |
  a1
  
  \skipAfterOne
  
  % 2 verse
  a'4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  
  fis4 fis d b |
  cis d e2 |
  d4 e d b
  cis2 cis |
  \skipLineTwo
  
  \skipOne
  
  % 3 verse
  a'4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 gis fis e |
  cis d  e2 |
  fis4 e fis gis |
  a2 a | 

cis,4 d a' e |
  cis e fis2 |
  d4 cis d b |
  fis'2 fis |
  
  a4 gis fis e |
  d cis e2 |
  cis4 d e e |
  fis2( d) |
  fis1
  
  \skipAfterThree
  
  % 4 verse
  \skipLine
  a4 b a gis |
  a e cis2 |
  fis4 e fis gis |
  a2 a |
  e4 e fis gis |
  a a b2 |
  a4 b a e |
  fis2( gis) |
  a1
  \skipTwo
  
  
  a4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  a'4 a fis b, |
  cis d e2 |
  b4 cis d e |
  a,2 a |
  
  cis4 d e e |
  a e fis2 |
  d4 cis d b |
  fis'2 fis |
  
  cis4 cis d cis |
  fis d e2 |
  cis4 d e e |
  fis2( d) |
  <a e'>1
}

iL = { \override Lyrics.LyricText #'font-series = #'bold }
nL = { \revert Lyrics.LyricText #'font-series }

verseOne = \lyricmode {
  \set stanza = "1. " Good King Wen -- ces -- las look'd out,
  On the Feast of Ste -- phen,
  When the snow lay round a -- bout,
  Deep and crisp and e -- ven;
  Bright -- ly shone the moon that night,
  Tho' the frost was cru -- el,
  When a poor man came in sight, 
  Gath -- 'ring win -- ter fu -- el.
}

verseTwoOne = \lyricmode {
  \set stanza = "2. " “Hith -- er, page, and stand by me,
  If thou know'st it, tell -- ing,
  Yon -- der peas -- ant, who is he?
  Where and what his dwell -- ing?” }

verseTwoTwo = \lyricmode {
  “Sire, he lives a good league hence,
  Un -- der -- neath the moun -- tain;
  Right a -- gainst the for -- est fence,
  By Saint Ag -- nes' foun -- tain.”
}

verseThree = \lyricmode {
  \set stanza = "3. " “Bring me flesh, and bring me wine,
  Bring me pine -- logs hith -- er:
  Thou and I will see him dine,
  When we bear them thith -- er.” }

verseThreeTwo = \lyricmode {
Page and mon -- arch, forth they went,
  Forth they went to -- geth -- er;
  Through the rude wind's wild la -- ment
  And the bit -- ter weath -- er.
}

verseFour = \lyricmode {
  \set stanza = "4. " “Sire, the night is dark -- er now,
  And the wind blows strong -- er;
  Fails my heart, I know not how,
  I can go no long -- er.” }

verseFourTwo = \lyricmode {
  \nL
  “Mark my foot -- steps, good my page;
  Tread thou in them bold -- ly:
  Thou shalt find the win -- ter's rage 
  Freeze thy blood less cold -- ly.”
}

verseFive = \lyricmode {
  \set stanza = "5. " In his mas -- ter's steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ver -- y sod
  Which the saint had print -- ed.
  There -- fore, Chris -- tian men, be sure,
  Wealth or rank pos -- sess -- ing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}

SkipLine = { \repeat unfold 26 \skip 1 }

lyricscore = \lyricmode {
  \verseOne

  \verseTwoTwo
  \verseThreeTwo 

  \verseFour
  \verseFive
}

lyricscoreThree = \lyricmode {
  \verseThree
}

lyricscoreFive = \lyricmode {
  \verseFive
}

lyricsbass = \lyricmode {
  \SkipLine \SkipLine
  \verseTwoOne
  \verseThree
  \SkipLine 
  \verseFourTwo
}

markssi = \relative c' {
  \tempo 4=210
  \set Score.markFormatter = #format-mark-box-numbers

    s1*27
  \tempo "rit."
  s1*2
  \tempo "a tempo"
  s1*4
  \tempo 4=190
  \mark 1
  s1*17
  s1*4
  \mark 2
  s1*17
  s1*7
  \mark \markup\bold\smaller"rit."
  s1
  \mark 3
  s1*17
  s1*9
  \mark \markup\bold\smaller"rit."
  s1
  \mark 4
  \tempo 4 = 160
  s1*8 \tempo "a tempo"
  s1*9
  s1*16
  \mark 5
  s1*17
  \bar "|."
}

cbr = { \break }
markss = \relative c' {
  \set Score.markFormatter = #format-mark-box-numbers
  s1*33
  \tempo 4=190
  \mark 1
  s1*4 \cbr
  s1*4 \cbr
  s1*4 \cbr
  s1*5 \bar "||" \cbr
  \pageTurn
  s1*4
  \mark 2
  s1*4 \cbr
  s1*4 \cbr
  s1*4 \cbr
  s1*5 \bar "||" \cbr
  s1*8
  \mark 3
  s1*4 \cbr
  s1*4 \cbr
  s1*4 \cbr
  s1*5 \bar "||" \cbr
  s1*9
  \mark "rit."
  s1
  \mark 4
  \tempo 4 = 160
  s1*4 \cbr
  s1*4 \cbr \tempo "a tempo"
  s1*4 \cbr
  s1*5 \bar "||" \cbr
  \pageTurn
  s1*16
  \mark 5
  s1*4 \cbr
  s1*4 \cbr
  s1*4 \cbr
  s1*5 \bar "|."
}

choirPartS = \new ChoirStaff <<
  \new Staff = "upstaff" \with {
    instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
    shortInstrumentName = \markup { \right-column { "С" "А"  } }
    midiInstrument = "voice oohs"
    } <<
      \markss
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
      
  \new Lyrics \lyricsto "soprano" { \lyricscore }
  \new Staff = "downstaff" \with {
    instrumentName = \markup { \right-column { "Тенор" "Бас" } }
    shortInstrumentName = \markup { \right-column { "Т" "Б" } }
    midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
  \new Lyrics \lyricsto "bass" { \lyricsbass }
>>

choirPart = \new ChoirStaff <<
  \new Staff = "upstaff" \with {
    instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
    shortInstrumentName = \markup { \right-column { "С" "А"  } }
    midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
      
  \new Lyrics \lyricsto "soprano" { \lyricscore }
  \new Staff = "downstaff" \with {
    instrumentName = \markup { \right-column { "Тенор" "Бас" } }
    shortInstrumentName = \markup { \right-column { "Т" "Б" } }
    midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
  \new Lyrics \lyricsto "bass" { \lyricsbass }
>>

fluteOnePart = \new Staff \with {
  instrumentName = "Flute I"
  shortInstrumentName = "Fl1"
  midiInstrument = "flute"
} <<
     \new Voice { \oneVoice \flute }
  >>
  
fluteOnePartS = \new Staff \with {
  instrumentName = "Flute I"
  shortInstrumentName = "Fl1"
  midiInstrument = "flute"
} <<
     \markssi
     \new Voice { \oneVoice \flute }
  >>
  
fluteTwoPart = \new Staff \with {
  instrumentName = "Flute II"
  shortInstrumentName = "Fl2"
  midiInstrument = "flute"
} <<
     \new Voice { \oneVoice \dynamicUp \flutetwo }
  >>
  
flutePart = \new Staff \with {
  instrumentName = "Flutes"
  shortInstrumentName = \markup { \right-column { "Fl1" "Fl2" } }
  midiInstrument = "flute"
} <<
     \new Voice { \voiceOne \flute }
     \new Voice { \voiceTwo \flutetwo }
  >>
   
flutePartS = 
<<
    \fluteOnePartS
    \fluteTwoPart
>>  
  
clarinetPart = \new Staff \with {
  instrumentName = \markup { \right-column { "Clarinet" \line { "in B" \smaller \flat } } }
  shortInstrumentName = \markup { Cl B\smaller\flat }
  midiInstrument = "clarinet"
} <<
     \clarinet
  >>

clarinetPartB = \new Staff \with {
  instrumentName = \markup { \right-column { "Clarinet" \line { "in B" \smaller \flat } } }
  shortInstrumentName = \markup { Cl B\smaller\flat }
  midiInstrument = "clarinet"
} <<
     \transpose c d { \clarinet }
     \markssi
  >>

violiniOnePart = \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} <<  
     \new Voice { \oneVoice \violinone }
  >>
  
violiniOnePartS = \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} << 
    \markssi
     \new Voice { \oneVoice \violinone }
  >>  
  
violiniTwoPart = \new Staff \with {
  instrumentName = "Violin II"
  shortInstrumentName = "VII"
  midiInstrument = "violin"
} <<  
     \new Voice { \oneVoice \violintwo }
  >>
  
  
violiniPart =  <<
     \violiniOnePart
     \violiniTwoPart
  >>
  
violiniPartS =  <<
   \violiniOnePartS
   \violiniTwoPart
>>
  
altoPart = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "V-la"
  midiInstrument = "viola"
} <<
     \new Voice { \clef alto \voiceOne \alto }
  >>
  
celloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "V-c"
  midiInstrument = "viola"
} <<
     \new Voice { \clef bass \oneVoice \cello }
  >>
  
celloPartS = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "V-c"
  midiInstrument = "viola"
} <<
    \set Score.skipBars = ##t
     \new Voice { \clef bass \oneVoice \cello }
     \markssi
  >>   
  
right = \relative c' {
  \global
  << \rup \\ \rdown >>
}

rightS = \relative c' {
  \global
  << << \rup \markssi >> \\ \rdown >>
}

left = \relative c {
  \global
  << \lup \\ \ldown >>
}  

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right"  \right
  \new Staff = "left"  { \clef bass \left }
>>

pianoPartS = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \set Score.skipBars = ##t
  \new Staff = "right"  \rightS
  \new Staff = "left"  { \clef bass \left }
>>


\bookpart {
  \header { piece = "Choir" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \choirPartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = "Flutes" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \flutePartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = "Violini" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
%      \choirPart 
      \violiniPartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = \markup { Clarinet in B \smaller \flat , Viola }}
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
%      \choirPart 
      \clarinetPartB
      \altoPart
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = \markup { Flutes, Clarinet in B \smaller \flat}}
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \flutePartS
      \clarinetPartB
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = "Cello" }
  \score {
    %  \transpose c bes {
    <<
      \celloPartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \header { piece = "Piano" }
  \score {
    %  \transpose c bes {
    <<
      \pianoPartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}



\bookpart {
  \header { piece = "Piano + Choir" }
  \score {
    %  \transpose c bes {
    <<
      \choirPart
      \pianoPartS
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}


\bookpart {
  \header { piece = "Instruments" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \markssi
      \flutePart
      \clarinetPartB
      \violiniPart
      \altoPart
      \celloPart
      \pianoPart
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


#(ly:set-option 'midi-extension "mid")
\include "articulate.ly"

% midi output
\bookpart {
  \score {
    \unfoldRepeats \articulate
    %  \transpose c bes {
    <<
      \markssi
      \choirPart 
      \flutePart
      \clarinetPart
      \violiniPart
      \altoPart
      \celloPart
      \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=210
    }
  }
}

