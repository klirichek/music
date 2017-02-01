\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.7)

\header {
  title = "Gloria"
  subtitle = "RV 589"
  composer = "Antonio Vivaldi"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globalcommon = {
  \autoBeamOff
  \set Score.skipBars = ##t
  \secondbar
}

global = {
  \key d \major
  \globalcommon
}

globalg = {
  \key g \major
  \globalcommon
}

globalf = {
  \key f \major
  \globalcommon
}

globalc = {
  \key c \major
  \globalcommon
}

%use this as temporary line break
abr = { }


% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

iL = { \override Lyrics.LyricText #'font-shape = #'italic }
nL = { \revert Lyrics.LyricText #'font-shape }


s_I = \relative c'' {
  \time 4/4
  \tempo Allegro
  \global
  \dynamicUp
  R1*16
  r2 d8.\f d16 d4 |
  d8. d16 d4 r2 |
  r2 cis8. cis16 cis4 | \abr
  cis8. cis16 cis4 r2 |
  r2 cis |
  d e |
  d d | \abr
  cis r |
  cis\p d |
  e d |
  d cis | \abr
  r a4.\f a8 |
  a2 b4. b8 |
  b2 b4. b8 |
  b2 cis4. cis8 | \abr
  cis2 cis |
  cis d |
  b b( |
  ais) b | \abr
  R1*2 |
  b4.\f b8 b2 |
  b4. b8 b2 | \abr
  b2 b |
  b1( |
  ais |
  a~) | \abr
  a |
  gis |
  gis~ |
  gis | \abr
  gis |
  R |
  cis4 cis8 cis cis4 cis |
  d2 d | \abr
  b4 b8 b b4 b |
  cis2 cis |
  cis1 |
  b2 r | \abr
  d4 d8 d d4 d |
  cis2 d |
  d( cis) |
  d r | \abr
  R1*2 |
  a4 a b2~( |
  b a~ |
  a g~ | \abr
  g1) |
  g~ |
  g4 r r2\fermata |
  d'8. d16 d4 d8 d d d | \abr
  cis2 d |
  R1*3 \bar "|."
}

a_I = \relative c' {
  \global
  \dynamicDown
  R1*16
  r2 fis8. fis16 fis4 |
  fis8. fis16 fis4 r2 |
  r2 e8. e16 e4 |
  e8. e16 e4 r2 |
  r e |
  fis g |
  fis e |
  e r |
  e fis |
  g fis |
  e e |
  r d4. d8 |
  d2 d4. d8 |
  d2 e4. e8 |
  e2 e4. e8 |
  e2 fis |
  fis fis |
  fis fis~ |
  fis fis |
  R1*2 fis4. fis8 fis2 |
  fis4. fis8 fis2 |
  g2 g |
  gis1( |
  fis2 e |
  dis1~) |
  dis |
  e |
  dis~ |
  dis |
  e |
  R1 |
  fis4 fis8 fis fis4 fis |
  fis2 fis |
  e4 e8 e e4 e |
  e2 a |
  a1 |
  gis2 r |
  gis4 gis8 gis gis4 gis |
  g?2 fis |
  e1 |
  fis2 r |
  R1*2 |
  r2 fis4 fis |
  g2( e |
  fis d |
  e1) |
  e~ |
  e4 r r2 |
  fis8. fis16 fis4 e8 e e e |
  e2 fis |
  R1*3
}


t_I = \relative c' {
  \global
  \dynamicUp
  R1*16
  r2 a8.\f a16 a4 |
  a8. a16 a4 r2 |
  r2 a8. a16 a4 |
  a8. a16 a4 r2 |
  r2 cis |
  a cis |
  a a |
  a r |
  cis\p a |
  cis a |
  a a |
  r2 fis4.\f fis8 |
  fis2 b4. b8 |
  b2 gis4. gis8 |
  gis2 cis4. cis8 |
  cis2 ais |
  ais b |
  d cis~ |
  cis d |
  R1*2 |
  d4.\f d8 d2 |
  dis4. dis8 dis2 |
  e2 e |
  eis1( |
  cis |
  b |
  bis) |
  cis |
  cis( |
  bis) |
  cis |
  R1 |
  cis4 cis8 cis e4 e |
  d2 d |
  d4 d8 d d4 d |
  cis2 e |
  fis1 |
  b,2 r |
  b4 b8 b b4 e |
  e( cis) a2 |
  a1 |
  a2 r |
  R1*2 |
  d2 d |
  e1( |
  d |
  cis) |
  cis~ |
  cis4 r r2 |
  a8. a16 a4 a8 a a a |
  a2 a |
  R1*3
}


b_I = \relative c {
  \global
  \dynamicDown
  R1*16
  r2 d8. d16 d4 |
  d8. d16 d4 r2 |
  r2 a8. a16 a4 |
  a8. a16 a4 r2 |
  r a' |
  a a |
  a a |
  a r |
  a a |
  a a |
  a a |
  r d,4. d8 |
  d2 g4. g8 |
  g2 e4. e8 |
  e2 a4. a8 |
  a2 fis |
  fis fis |
  fis fis~ |
  fis b, |
  R1*2 |
  b'4. b8 b2 |
  a4. a8 a2 |
  g2 g |
  cis,1( |
  fis~) |
  fis~ |
  fis |
  cis |
  gis'~ |
  gis |
  cis, |
  R1 |
  ais'4 ais8 ais ais4 ais |
  b2 b |
  gis4 gis8 gis gis4 gis |
  a2 a |
  dis,1 |
  e2 r |
  e4 e8 e e4 e |
  a,2 d |
  a'( a,) |
  d r |
  R1*2 |
  r2 d4 d |
  cis1( |
  b |
  a) |
  a~ |
  a4 r r2\fermata |
  d8. d16 d4 a'8 a a a |
  a,2 d |
  R1*3
}

l_I = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a
  in ex -- cel -- sis De -- o,
  in ex -- cel -- sis De -- o.
  Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a
  in ex -- cel -- sis De -- o.
  Glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o.
  Glo -- ri -- a in ex -- cel -- sis, 
  glo -- ri -- a in ex -- cel -- sis De -- o.
  Glo -- ri -- a in ex -- cel -- sis De -- o, 
  in ex -- cel -- sis, __ glo -- ri -- a in ex -- cel -- sis De -- o.
}

l_cI = \lyricmode {
  \repeat unfold 79 \skip 1
  in ex -- cel
}



s_II = \relative c'' {
  \time 3/4
  \set Score.currentBarNumber = #73
  \tempo Andante
  \global
  \dynamicUp
  R2.*13
  r4 b\p b |
  c2 b4 |
  ais2 ais4 |
  b4. b8 b4 | \abr
  R2. |
  r4 b b |
  b b b8 b |
  a8. b16 cis2 | \abr
  r4 cis cis |
  d2. |
  dis |
  e | \abr
  eis |
  fis4 fis,2 |
  r4 fis fis |
  fis4. fis8 fis4 | \abr
  r4 b b |
  b2 a4~ |
  a gis2 |
  fis2. | \abr
  R2.*3 |
  d'2 cis4 | \abr
  bis2. |
  cis4 bis2 |
  cis2. | \abr
  r4 cis cis |
  d2 cis4 |
  bis2 bis4 |
  cis4. cis8 cis4 | \abr
  r a fis' |
  e2 e4 |
  d2. |
  R2. | \abr
  r4 cis cis |
  cis cis b8 b |
  a8. b16 cis4 r | \abr
  gis8. a16 b4 cis8. d16 |
  e4. cis8 a4 |
  a a2 |
  a4 a a |
  bes2.~ | \abr
  bes2 bes4 |
  bes( a) g |
  fis4. e8 d4 | \abr
  c'4. c8 c c |
  bes2.( |
  es2 d4 | \abr
  cis2. |
  d) |
  cis2.(~ | \abr
  cis2 ais4 |
  fis2 g4~ |
  g fis2) | \abr
  g2. R2.*3 | \abr
  r4 b b |
  c2 b4 |
  ais2 ais4 | \abr
  b4. b8 b4 |
  R2. |
  r4 g2~ | \abr
  g4 fis( g) |
  a2.~ |
  a4 g( a) | \abr
  b2.~( |
  b4 c b |
  ais2) b4( | \abr
  cis d e |
  d cis b |
  ais2) b4(~ | \abr
  b ais2) |
  b2. |
  R2.*3 | \bar "|."
}

a_II = \relative c' {
  \global
  \dynamicDown
  R2.*12
  r4 fis\p fis |
  g2.~ |
  g2 g4 |
  g( fis) e |
  d4. cis8 b4 |
  r4 fis' fis |
  g2. |
  gis2. |
  a2. |
  ais2. 
  b4 b,2 |
  R2.*3 |
  r4 fis' fis |
  fis fis e8 e |
  d4. e8 fis4 |
  fis2 fis4 |
  eis4. eis8 fis4 |
  fis eis2 |
  fis4 fis fis |
  g2 fis4 |
  eis2 eis4 |
  fis4. fis8 fis4 |
  R2. |
  r4 gis fis |
  e8 cis dis2 |
  cis4 gis' gis |
  a2.~ |
  a2 a4 |
  a( gis) fis |
  e4. dis8 cis4 |
  R2.*2 |
  r4 fis fis |
  fis fis fis8 fis |
  e8. fis16 gis2 |
  gis4. gis8 gis gis |
  cis,4 cis r |
  r gis' a |
  g2 fis4 |
  fis e e |
  f2.~ |
  f2 f4 |
  es2 d4 |
  cis2 cis4 |
  d2. |
  a'4. a8 a a |
  g2.(~ |
  g |
  e |
  g~) |
  g |
  fis2.( |
  dis2 e4~ |
  e dis2) |
  e2. |
  R2.*2 |
  r4 fis fis |
  g2.~ |
  g2 g4 |
  g( fis) e |
  d4. cis8 b4 |
  r d2~ |
  d4 cis( d) |
  e2.~ |
  e4 d( e) |
  fis2.(~ |
  fis4 e fis |
  g2.~ |
  g2) fis4( |
  e fis g |
  fis e d |
  cis2 d4 |
  cis2.) |
  d2. |
  R2.*3
}


t_II = \relative c' {
  \global
  \dynamicUp
  R2.*9 |
  r4 b\p b |
  c2 b4 |
  ais2 ais4 | \abr
  b4. b8 b4 |
  R2.*2 |
  r4 cis cis |
  d2. |
  dis |
  e |
  eis |
  fis4 fis,2 |
  R2.*3 |
  r4 b b |
  b b b8 b |
  a8. b16 cis2 |
  R2. |
  d2 d4 |
  d2 d4 |
  gis, cis2 |
  r4 cis cis |
  d2.~ |
  d2 d4 |
  d( cis) b |
  a4. gis8 fis4 |
  R2. |
  r4 dis' bis |
  gis8 gis gis2 |
  gis2. |
  R2.*3 |
  r4 gis gis |
  a2. |
  ais |
  b |
  bis |
  cis4 cis,2 |
  R2. |
  r4 cis' d |
  d2 cis4 |
  cis2( d4~ |
  d cis2) |
  d2. |
  R2.*4 |
  fis4. fis8 fis fis |
  d2.( |
  bes~ |
  bes |
  b?~) |
  b |
  ais2.( |
  a?2 g4 |
  b2.) |
  b4 b b |
  c2.~ |
  c2 c4 |
  c( b) a |
  g4. fis8 e4 |
  r c' c |
  cis?2 a4 |
  fis2 fis4 |
  b2.~ |
  b4 a b |
  cis2.~ |
  cis4 b( cis) |
  d2.~ |
  d4 cis( d) |
  e2.~( |
  e2 d4 |
  cis b ais |
  b cis d) |
  fis,2.~ |
  fis |
  fis |
  R2.*3
}


b_II = \relative c {
  \global
  \dynamicDown
  R2.*8 |
  r4 fis\p fis |
  g2.~ |
  g2 g4 |
  g( fis) e |
  d4. cis8 b4 |
  R2. |
  r4 e e |
  fis2 fis4 |
  b,2 b4 |
  b2 b4 |
  b2 r4 |
  R2. |
  r4 fis' fis |
  fis fis e8 e |
  d4. cis8 b4 |
  r fis' fis |
  g2. |
  gis |
  a |
  ais |
  b4 b,2 |
  b2 b4 |
  cis2 fis4 |
  cis2. |
  fis |
  R2. |
  r4cis cis |
  fis4. fis8 fis4 |
  r fis fis |
  gis2. |
  cis,4 gis'2 |
  cis,2. |
  R2. |
  r4 fis fis |
  gis2 gis4 |
  cis,2 cis4 |
  fis4. fis8 fis4 |
  r cis cis |
  d2. |
  dis |
  e |
  eis |
  fis4 fis,2 |
  r4 e' a, |
  a2 d4 |
  a2. |
  d |
  R |
  r4 g g |
  a2 a4 |
  d,2. |
  d4. d8 d d |
  g2.~ |
  g~ |
  g |
  f( |
  fis!)~ |
  fis |
  b,~ |
  b |
  e |
  r4 e e |
  f2 e4 |
  dis2 dis4 |
  e4. e8 e4 |
  r e e |
  fis2 fis4 |
  b,2. |
  r4 r b |
  e2.~ |
  e4 d e |
  fis2.~ |
  fis4 e( fis) |
  g2.~ |
  g4 e2 |
  fis2.~ |
  fis~ |
  fis~ |
  fis~ |
  fis |
  b, |
  R2.*3
}

l_sII = \lyricmode {
  Et in ter -- ra pax ho -- mi -- ni -- bus, et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- næ, bo -- næ vo -- lun -- ta -- tis
  pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- tis.
  Et in ter -- ra pax ho -- mi -- ni -- bus, et in ter -- ra pax,
  et in ter -- ra pax ho -- mi --  ni -- bus, 
  pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis
  et in ter -- ra pax __ ho -- mi -- ni -- bus
  \repeat unfold 7 \skip 1
  Et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ __ vo -- lun -- ta -- _ _ tis.
}

l_cII = \lyricmode {
  Et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- næ, bo -- næ vo -- lun -- ta -- tis.
  Et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ, bo -- næ vo -- lun -- ta -- tis,
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis
  et in ter -- ra pax __ ho -- mi --  ni -- bus, 
  et in ter -- ra pax ho -- mi -- ni -- bus 
  bo -- næ vo -- lun -- ta -- tis
  et in ter -- ra pax,
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- _ tis.
  Et in ter -- ra pax __ ho -- mi -- ni -- bus bo -- næ __ vo -- lun -- ta -- _ tis.
}

l_tII = \lyricmode {
  Et in ter -- ra pax ho -- mi -- ni -- bus,
  bo -- næ, bo -- næ vo -- lun -- ta -- tis.
  Et in ter -- ra pax ho -- mi -- ni -- bus 
  bo -- næ vo -- lun -- ta -- tis,
  et in ter -- ra pax ho -- mi -- ni -- bus 
  bo -- næ vo -- lun -- ta -- tis
  bo -- næ, bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- _ tis.
  Et in ter -- ra pax __ ho -- mi -- ni -- bus
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- næ __ vo -- lun -- ta -- _ tis.
}

l_bII = \lyricmode {
  Et in ter -- ra pax ho -- mi -- ni -- bus,
  et in ter -- ra pax ho -- mi -- ni -- bus,
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ, 
  bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- tis.
  Pax ho -- mi -- ni -- bus bo -- næ vo -- lun -- ta -- tis
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- næ, bo -- næ vo -- lun -- ta -- tis,
  bo -- næ vo -- lun -- ta -- tis,
  et in ter -- ra pax
  \repeat unfold 8 \skip 1
  Et in ter -- ra pax \repeat unfold 9 \skip 1 ho -- mi -- ni -- bus bo -- næ __ vo -- lun -- ta -- tis.
}


s_iIII = \relative c'' {
  \time 2/4
  \set Score.currentBarNumber = #165
  \tempo Allegro
  \globalg
  \set Timing.measurePosition = #(ly:make-moment -1/16) r16 |
  \dynamicUp
  R2*16
  r4^\markup\italic(solo) r8 g\p |
  b4 c |
  d2 |
  r |
  d4. e8 |
  c4 c8 d | \abr
  b2 |
  r |
  g8[( b]) a[( c]) |
  b[( d]) cis[( e]) |
  d4. d8 |
  cis8[( b]) a[( g]) | \abr
  fis4.\( fis'8 |
  e[ d cis b] |
  a[( b) b( cis)] |
  cis[( d) d( e)] |
  e[ d16 cis] fis8[ d] |
  e[ d16 cis] fis8[ d] | \abr
  e4.\) d8 |
  d2 |
  R2*5 |
  r4 r8 a\p |
  b4 b |
  a d8 a |
  b4 b8 b |
  a4 d~ |
  d8 f e d |
  c4 e |
  c8[( b]) a[( gis]) |
  a2~ \( |
  a |
  gis8[( a) a( b)] | \abr
  b[( a) a( gis)] |
  gis4\) r |
  f'4.( e16[ d] |
  e4. d16[ c] |
  d4. c16[ b] |
  cis4) dis | \abr
  e8 b r b |
  cis[( dis]) e[( fis]) |
  dis4. e8 |
  e2 |
  R2*3 | \abr
  r4 b8\p e |
  cis4. cis8 |
  d4 a8 d |
  b4. b8 |
  c4 r | \abr
  R2*9 |
  r4 r8 d |
  e[( d]) e[( f]) |
  d4 c8 d | \abr
  e4 f8 e |
  d4 e8 d |
  c4 d8[( c]) |
  b b c d |
  c4 b |
  a fis'8. fis16 | \abr
  d4 b |
  g e'8. e16 |
  e4 cis |
  a2 |
  R2 |
  r4 d~\p | \abr
  d8 c16 b c4~( |
  c8[ b16 a] b4~ |
  b8[ a16 g] a4~ |
  a8[ g16 fis] g4~ |
  g) fis |
  g r | \abr
  R2*2 |
  e'4.\p d16 c |
  d4.( c16[ b] |
  c4. b16[ a] |
  b4. a16[ g] | \abr
  a4.) a8 |
  g2 |
  R2*17 \bar "|."
}

s_iiIII = \relative c'' {
  \globalg
  \dynamicDown
  \set Timing.measurePosition = #(ly:make-moment -1/16) r16 |
  R2*18
  r4 r8 g\p |
  b4 c |
  d2 |
  R2 |
  d4. e8 |
  c4 c8 d |
  b4 r |
  g8 b a g |
  fis2 |
  R2 |
  r4 r8 d' |
  cis[( b]) a[( g]) |
  fis[(\( g) g( a)] |
  a[( b) b( cis)] |
  cis[ b16 a] d4 |
  cis8[ b16 a] d4 |
  cis4.\) d8 |
  d2 |
  R2*5 |
  r4 r8 fis, |
  g4 g |
  fis fis8 fis |
  g4 g8 g |
  fis4 r |
  e'8 d c b |
  a2 |
  R2 |
  r4 f' |
  d8[( c]) b[( a]) |
  b[(\( c) c( d)] |
  d[( c) c( b)] |
  b4\) e(~ |
  e8[ d16 c] d4~ |
  d8[ c16 b] c4~ |
  c8[ b16 a] b4~ |
  b) b |
  b r8 g |
  g[( fis]) a[( g]) |
  fis4. fis8 |
  e2 |
  R2*7 |
  e'4\p c8 bes |
  a([ f' d c] |
  \tuplet 3/2 { b[ a g] } \tuplet 3/2 { e'[ d c] } |
  b4.) c8 |
  c2 |
  R2*5 |
  r4 r8 b\p |
  c[( b]) c[( d]) |
  b4 a8 b |
  c4 d8 c |
  b4 c8 b |
  a4 b8[( a]) |
  g g a b |
  a4 g |
  fis d'8. d16 |
  b4 g |
  e g8. g16 |
  cis4 a |
  fis2 |
  R2*2 |
  e'4.\p d16 c |
  d4.( c16[ b] |
  c4. b16[ a] |
  b4. a16[ g] |
  a4.) a8 |
  g4 r |
  R2 |
  r4 d'\p~ |
  d8 c16 b c4~( |
  c8[ b16 a] b4~ |
  b8[ a16 g] a4~ |
  a8[ g16 fis] g4~ |
  g4) fis |
  g2 |
  R2*17
  
}


l_siIII = \lyricmode {
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  A -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca -- _ _ _ _ _ _ _ _ _ mus te.
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  A -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca -- _ _ _ _ _ _ mus, glo -- ri -- fi -- ca -- mus te.
  A -- do -- ra -- mus te, a -- do -- ra -- mus te.
  
  
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  A -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca -- mus te.
  A -- do -- ra -- mus te, a -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca -- mus te.
  Glo -- ri -- fi -- ca -- mus te.

}

l_siiIII = \lyricmode {
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  A -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca_- \repeat unfold 8 \skip 1
  \repeat unfold 10 \skip 1
  A -- do -- ra -- mus te.
  Glo -- ri -- fi -- ca -- _ _ _ _ mus, \repeat unfold 6 \skip 1
  Glo -- ri -- fi -- ca -- mus te.
  
  
  \repeat unfold 31 \skip 1
  Glo -- ri -- fi -- ca -- mus te.
  Glo -- ri -- fi -- ca -- mus te.
}

s_IV = \relative c'' {
  \time 4/4
  \set Score.currentBarNumber = #290
  \tempo Adagio
  \globalg
  \dynamicUp
  b2\f b4 b |
  c2 c4 c |
  cis2 cis\fermata |
  dis dis4 dis |
  e2 e4 e |
  dis2 dis\fermata \bar "||"
}

a_IV = \relative c'' {
  \globalg
  \dynamicDown
  g2 g4 g |
  g2 g4 g |
  g2 g |
  fis2 fis4 fis |
  fis2 fis4 fis |
  fis2 fis
}


t_IV = \relative c' {
  \globalg
  \dynamicUp
  b2 b4 b |
  e2 e4 e |
  e2 e |
  b2 b4 b |
  cis2 cis4 cis |
  b2 b
}


b_IV = \relative c {
  \globalg
  \dynamicDown
  e2\f e4 e |
  e2 e4 e |
  a2 a\fermata |
  a2 a4 a |
  ais2 ais4 ais |
  b2 b\fermata
}

l_IV = \lyricmode {
  Gra -- ti -- as a -- gi -- mus ti -- bi, gra -- ti -- as a -- gi -- mus ti -- bi.
}


s_V = \relative c'' {
  \time 4/2
  \set Score.currentBarNumber = #296
  \tempo Allegro
  \globalg
  \dynamicUp
  b4\f b b b e2~( e8[ d e fis] |
  e[ d e fis] e[ g fis e] dis4.) cis8 b2 | \abr
  R\breve*2 | \abr
  b4 b b b e2~( e8[ d e f] |
  e[ d e f] e[ d c b] c4.) b8 a2 | \abr
  R\breve | 
  cis4 cis cis cis d2(~ d8[ cis d e] | \abr
  d[ cis d e] d[ cis b ais] b4.) b8 b2 |
  b4 b b b a1 | \abr
  g2 g fis fis |
  R\breve | \abr
  r2 r2 e'4 e e e |
  dis( b8[ cis] d2 cis4 a8[ b] c4 b | \abr
  a b cis dis e1 |
  dis2 e dis e |
  dis1) e2 e |
  e1( dis) |
  e\breve\fermata \bar "|."
}

a_V = \relative c' {
  \globalg
  \dynamicDown
  R\breve |
  e4\f e e e b'2(~ b8[ a b c] |
  b[ a b c] b[ a g fis] g4.) fis8 e2 |
  g4 g g g fis4. fis8 fis2 |
  fis2 fis r r |
  gis4 gis gis gis e4. e8 e2 |
  e4 e e e a2(~ a8[ g a b] |
  a[ g a b] a[ g fis e] fis4.) e8 d2 |
  r2 r fis4 fis fis fis |
  g1~ g2 fis~ |
  fis e e dis |
  r r b'4 b b b |
  ais( fis8[ gis] a2 gis4 e8[ fis] g2 |
  fis4 d8[ e] f2 e1~ |
  e4 dis e fis g1 |
  fis2 g fis g |
  fis b) g fis4( e) |
  fis\breve |
  gis\breve
}


t_V = \relative c' {
  \globalg
  \dynamicUp
  R\breve*2 |
  b4\f b b b e2(~ e8[ d e fis] |
  e[ d e fis] e[ g fis e] dis4.) cis8 b2 |
  dis4 dis dis dis b4. b8 b2 |
  b4 b b e c2(~ c8[ b c d] |
  c[ b c d] c[ b a g] a4.) g8 fis2 |
  e'4 e cis cis a4. a8 a2 |
  ais2 ais4 ais fis2 fis |
  d'4 d d d e2( fis) |
  d e c b |
  e4 e e e dis( b8[ cis] d2 |
  cis4 a8[ b] c2 b cis |
  fis, b e,) a4( b |
  c2 a b1) |
  b b |
  b\breve~ |
  b |
  b
  
}


b_V = \relative c {
  \globalg
  \dynamicDown
  R\breve*3 |
  e4\f e e e b'2~( b8[ a b c] |
  b[ a b c] b[ a g fis] g4.) fis8 e2 |
  e4 e e e a2~( a8[ g a b] |
  a[ g a b] a[ g fis e] fis4.) e8 d2 |
  a4 a a a fis'2~( fis8[ e fis g] |
  fis[ e fis g] fis[ e d cis] d4.) cis8 b2 |
  b4 b b b c2( d) |
  b c a b |
  r e4 e b2 b |
  fis'( dis e ais, |
  b gis a) a'4( g |
  fis1 e4 fis g a) |
  b,\breve |
  b1 b |
  b\breve |
  e\breve\fermata
}

l_sV = \lyricmode {
  Pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am tu -- am,
  pro -- pter ma -- gnam glo -- ri -- am tu -- am.
}

l_cV = \lyricmode {
  Pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am tu -- am,
  pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am tu -- am,
  pro -- pter ma -- gnam glo -- ri -- am __ tu -- am.
}

l_tV = \lyricmode {
  Pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am, 
  pro -- pter ma -- gnam glo -- ri -- am,
  pro -- pter ma -- gnam glo -- ri -- am,
  glo -- ri -- am tu -- am,
  pro -- pter ma -- gnam glo -- ri -- am tu -- am,
  pro -- pter ma -- gnam glo -- _ ri -- am tu -- am.
}

l_bV = \lyricmode {
  Pro -- pter ma -- gnam glo -- ri -- am,
  \repeat unfold 11 \skip 1 glo -- ri -- am,
  \repeat unfold 9 \skip 1
  pro -- pter ma -- gnam glo -- _ _ ri -- am tu -- am.
}

s_VI = \relative c'' {
  \time 12/8
  \set Score.currentBarNumber = #315
  \tempo Largo
  \globalc
  \dynamicUp
  R1.*8
  r2. g8.[(\p a16 g8]) e'4 c8 |
  b4. c d4 e8 f8.[( e16 d8]) |
  e2. c4.~ c4 e8 | \abr
  d4( b8) g4. c4.~ c8.[( b16]) a8 |
  b8[( d c] b[ a g] c[ e d] c[ b a] | \abr
  d4.~ d4 c8) b[( a]) g a4 g8 |
  g2. r |
  r r4 r8 d'4.~( | \abr
  d8.[ e16 f8] ) e4 d8 c4 b8 c4 d8 |
  e[( d]) c b[( c]) a a4 gis8 r4 r8 | \abr
  a4.~ a4 e'8 f,4.~( f8[ bes a] |
  g4.~ g8[ c bes] a4.~ a8[ d c] | \abr
  b?4.~ b8[ e d] cis[ b]) a r4 e'8 |
  f e[( d]) d[( e]) cis d2. | \abr
  R1. |
  r4 r8 c4.~(\p c8[ e d]) c[( b]) a |
  b[( a]) g d'4.~( d8[ f e]) d[( c]) b | \abr
  c[( b]) a d4 c8 b4( a8) g4. |
  r4 r8 b4 c8 c4 b8 d4 e8 |
  e4 d8 r4 r8 b[(\mf d c] b[ a g] | \abr
  c[ e d] c[ d e]) b[(\p d c] b[ a g] |
  c[ e d] c[ d e] b[ a]) g r4 f'8\mf |
  e[( d]) c d4 c8 c2. | \abr
  r2. g4.~(\p g4 c8 |
  a[ f g] a[ d c] b[ g a] b[ e d] |
  c[ a b] c[ f e] d4.~ d8[) b( c] | \abr
  d4.~ d8[ b c] d4) g,8 r4 d'8 |
  e[( d]) c c[( d]) b c2. |
  R1.*7 \bar "|."
  
}

l_VI = \lyricmode {
  Do -- mi -- ne De -- us, Rex cæ -- le -- stis, De -- us,
  Pa -- ter, De -- us Pa -- ter om -- ni -- po -- tens.
  Do -- mi -- ne De -- us, Rex cæ -- le -- stis, De -- us Pa -- ter,
  De -- us Pa -- ter, Pa -- ter om -- ni -- po -- tens.
  Do -- mi -- ne De -- us, Do -- mi -- ne De -- us, Rex cæ -- le -- stis,
  De -- us Pa -- ter, De -- us Pa -- ter, Pa -- _ ter, Pa -- ter om -- ni -- po -- tens,
  Pa -- ter, Pa -- ter om -- ni -- po -- tens.
}



s_VII = \relative c'' {
  \time 3/4
  \set Score.currentBarNumber = #358
  \tempo Allegro
  \globalf
  \dynamicUp
  R2.*17
  c4\f c8.[( d16]) e8.[( f16]) |
  g4 g, a8. b16 |
  c4 c8.[( b16]) c8.[( d16]) | \abr
  b4( e8.[ d16] e4 |
  a, d8.[ c16] d4 |
  g, c8.[ b16] c4 |
  f8.[ e16 f8. d16 e8. f16] |
  e8) d16[( c]) b2 | \abr
  c2. |
  c4 bes8.[( a16]) bes8.[( c16]) |
  d2.~ |
  d4 c2 |
  r4 c c | \abr
  c bes8.[( a16]) bes4 |
  r bes bes |
  bes a8.[( g16]) a4 |
  b4( cis2 |
  d2) c?4~ | \abr
  c4 b2 |
  c2. |
  r |
  r |
  e4 e4. e8 | \abr
  f2. |
  f4 e8[( d]) c[( b]) |
  c4. b8 a4 |
  r2. r | \abr
  d4 d4. d8 |
  es2. |
  es4 d8[( c]) b[( a]) |
  b4. b8 b4 |
  c2 bes?4 | \abr
  a2 bes4~ |
  bes a2 |
  bes2. |
  R2.*16 |
  c8.\f[( bes16 c8. a16]) bes8. c16 | \abr
  d4 d2 |
  bes8.[( a16 bes8. g16]) a8. bes16 |
  c4 c2 |
  c4 c2 |
  bes4. bes8 a4 | \abr
  a2 a4 |
  a2. |
  g |
  r4 d'2(~ |
  d4 c2~ | \abr
  c4 bes2~ |
  bes2) a4~ |
  a g2 |
  a2. |
  r4 d2~( | \abr
  d4 c2~ |
  c4 bes2~ |
  bes) a4~ |
  a g2 |
  a2. | \abr
  R2.*8 \bar "|."
  
}

a_VII = \relative c' {
  \globalf
  \dynamicDown
  R2.*8 |
  f4\f f8.[( g16]) a8.[( bes16]) |
  c4 c, d8. e16 | \abr
  f4 f8.[( e16]) f8.[( g16]) |
  e4( a8.[ g16] a4 |
  d, g8.[ f16] g4 |
  c, f8.[ e16] f4 |
  bes8.[ a16 bes8. g16 a8. bes16] |
  a8) g16[( f]) e2 |
  f2. |
  R2.*8
  g4 f8.[( e16]) f8.[( g16]) |
  a2.~ |
  a4 g2 |
  r4 g g |
  g f8.[( e16]) f4 |
  r f f |
  f e8.[( d16]) e4 |
  r f2(~ |
  f4 e2 |
  f2) e4~ |
  e gis2 |
  a2. |
  R2.*5 |
  a4 a4. a8 |
  bes2. |
  bes4 a8[( g]) f[( e]) |
  f4. e8 d4 |
  a' a4. a8 |
  a2. |
  g |
  g4 g2 |
  f4. f8 f4 |
  d8 es c2 |
  d2. |
  R2.*16
  a'8.\f[( g16 a8. f16]) g8. a16 |
  bes4 bes2 |
  g8.[( f16 g8. e16]) f8. g16 |
  a4 a2 |
  f4 f2 |
  g4. g8 f4 |
  f f2 |
  f2. |
  e |
  a8.[( bes16 a8. g16 a8. f16] g8.[ a16 g8. f16 g8. e16] |
  f8.[ g16 f8. e16 f8. d16] |
  e2) f4~ |
  f e2 |
  f2. |
  a8.[( bes16 a8. g16 a8. f16] |
  g8.[ a16 g8. f16 g8. e16] |
  f8.[ g16 f8. e16 f8. d16] |
  e2) f4~ |
  f e2 |
  f2. |
  R2.*8
}


t_VII = \relative c' {
  \globalf
  \dynamicUp
  R2.*17
  c4\f c4. c8 |
  b4 b2 |
  a4 a2 |
  g4. g8 g4 |
  f'2.( |
  e |
  d |
  c8) f, g2 |
  c2. |
  R |
  f4 d bes |
  g g r |
  e' c a |
  f f r |
  d' bes( g) |
  e' c f |
  d( a8.[ b16] cis4 |
  b2) c?4~ |
  c e2 |
  e2. |
  R2.*2 |
  b4 c4. c8 |
  d2. |
  d4 b b |
  e4. e8 e4 |
  R2.*2 |
  a,4 d4. d8 |
  c2. |
  c4 a a |
  d4. d8 d4 |
  c2 c4 |
  c2 d4 |
  R2. |
  bes4 bes8.[( c16]) d8.[( es16]) |
  f4 f, g8. a16 |
  bes4 bes8.[( a16]) bes8.[( c16]) |
  a4( d8.[ c16] d4 |
  g, c8.[ bes16] c4 |
  f, bes8.[ a16] bes4 |
  es8.[ d16 es8. c16 d8. es16] |
  d8) c16[( bes]) a2 | \abr
  bes2. |
  c4 f f |
  f e2 |
  e4 d2 |
  d4 c8.[( bes16]) c4 | \abr
  c( bes8.[ a16] bes4~ |
  bes a8.[ g16] a4~ |
  a g2 |
  f8.) a16 g2 |
  a2. |
  d8.[( c16 d8. bes16]) c8. d16 |
  d2 g,4 |
  c8.[( bes16 c8. a16]) bes8. c16 |
  c4 c c8. c16 |
  c4. c8 c4 |
  d2 d4 |
  c2. |
  c |
  c4 a4. a8 |
  bes4 g2 |
  a4 f2 |
  g4 e' c |
  d8. d16 g,4( c) |
  c2. |
  c4 a4. a8 |
  bes4 g2 |
  a4 f2 |
  g4 e' c |
  d8. d16 g,4( c) |
  c2. |
  R2.*8
}


b_VII = \relative c {
  \globalf
  \dynamicDown
  R2.*8 |
  f4\f f4. f8 |
  e4 e2 | \abr
  d4 d2 |
  c4. c8 c4 |
  bes'2.( |
  a |
  g | \abr
  f8) bes, c2 |
  f2. |
  R2.*8
  c2 d8. e16 |
  f4 f f8. f16 |
  bes4 bes4. bes8 |
  e,4 e e8. e16 |
  a4 a4. a8 |
  d,4 d2 |
  g2.( |
  c,4 f2 |
  g2. |
  gis2) a4~ |
  a e2 |
  a,2. |
  R2.*3 |
  gis'4 gis4. gis8 |
  gis4 gis gis8 gis |
  a4. a8 a4 |
  cis,4 cis4. cis8 |
  cis4 cis cis8 cis |
  d4. d8 d4 |
  fis4 fis4. fis8 |
  fis8 fis fis4. fis8 |
  f?4. f8 f4 |
  e2.( |
  es2 d4 |
  bes8) es f2 |
  bes,4 bes bes8. bes16 |
  a4 a2 |
  g'4 g2 |
  f4. f8 f4 |
  es2.( |
  d |
  c |
  bes8) es f2 |
  bes,2. |
  f'4 f8.[( g16]) a8.[( bes16]) |
  c4 c, d8. e16 |
  f4 f4. f8 |
  e4( a8.[ g16] a4 |
  d, g8.[ f16] g4 |
  c, f8.[ e16] f4 |
  bes8.[ a16 bes8. g16 a8. bes16] |
  a8.) f16 c2 |
  f2. |
  bes8.[( a16 bes8. g16]) a8. bes16 |
  e,4 e2 |
  a8.[( g16 a8. f16]) g8. a16 |
  d,4 d d8. d16 |
  e4. e8 f4 |
  b,4 b2 |
  c2. |
  c |
  f4 f4. f8 |
  e2 e4 |
  d4 d2 |
  c4. c8 f4 |
  bes,8. bes16 c2 |
  f2. |
  f4 f4. f8 |
  e4 e2 |
  d4 d2 |
  c4. c8 f4 |
  bes,8. bes16 c2 |
  f2. |
  R2.*8
}

l_sVII = \lyricmode {
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste. Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, U -- ni -- ge -- ni -- te, Je -- su __
  Chri -- ste. Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te,
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je -- su, Je -- su __ Chri -- ste.
  \repeat unfold 15 \skip 1 
  Je -- su Chri -- ste, Je -- su __ Chri -- ste, Je --
  su __ Chri -- ste.
}

l_cVII = \lyricmode {
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je --
  su Chri -- ste. 
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, U -- ni -- ge -- ni -- te, 
  Je_- \repeat unfold 3 \skip 1 Do -- mi -- ne FI -- li U -- ni --
  ge -- ni -- te, Do -- mi -- ne Fi -- li U -- ni --
  ge -- ni -- te, Je -- su Chri -- ste.
  Do -- mi -- ne Fi -- li, Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste, Je -- su __ Chri -- ste, Je_-
}

l_tVII = \lyricmode {
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je -- su Chri --
  ste. Do -- mi -- ne Fi -- li, Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je -- su __
  Chri -- ste. \repeat unfold 22 \skip 1
  Chri -- ste. Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste Do -- mi -- ni Fi -- li U -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste. Do -- mi -- ne Fi -- li, Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste. Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je -- su Chri -- ste. Do -- mi -- ne
  Fi -- li U -- ni -- ge -- ni -- te, Je -- su Chri -- ste.
}

l_bVII = \lyricmode {
  \repeat unfold 5 \skip 1 U -- ni -- ge -- ni -- te, Je --
  su Chri -- ste.
  Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je -- su, U -- ni -- ge -- ni -- te, Je -- su, 
  Je_- \repeat unfold 3 \skip 1 Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Do -- mi -- ne Fi -- li U -- ni --
  ge -- ni -- te, Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je --
  su Chri -- ste, Do -- mi -- ne Fi -- li U -- ni --
  ge -- ni -- te, Je -- su Chri -- ste. Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te, Je_- \repeat unfold 3 \skip 1
  Do -- mi -- ne Fi -- li, \repeat unfold 10 \skip 1
  Je -- su \repeat unfold 5 \skip 1 Fi -- li U -- ni -- ge -- ni -- te, Je -- su Chri -- ste. 
}

s_VIII = \relative c'' {
  \time 4/4
  \set Score.currentBarNumber = #456
  \tempo Adagio
  \globalf
  \dynamicUp
  s1*12
  s4 r8 c\p c4 c8 c |
  c4 bes s2 |
  s s4 r8 c | \abr
  es4 es8 es d4 d |
  s1 |
  s4 s8 bes des4 des8 des |
  c4 c s2 |
  s1*3
  s4 r8 bes bes4 bes8 bes |
  bes4 bes a a |
  s1 |
  d4 d e e |
  s1 |
  e4 e8 e d4 d |
  s1*2 |
  a4 a b b |
  b? b cis cis |
  s1*2 |
  d8\f d d d d4( cis) |
  d2 r2
  R1*4
  
}

solo = ^\markup\italic"solo"
tutti = ^\markup\italic"tutti"

a_VIII = \relative c'' {
  \time 4/4
  \globalf
  \dynamicNeutral
  \oneVoice
   R1*4 |
   r2 a\p~^\markup\italic"Contralto solo" |
   a4 g16[( f]) e[( d]) cis4 d | \abr
   r2 a'4. g8 |
   f e f g16 e f2 |
   e4 r fis4 a8 fis | \abr
   g16[( fis]) g8 r4 e g8 e |
   f?16[( e]) f8 r4 bes4. a8 |
   gis e a4~ a8 b16 fis gis4 | \abr
   a4 
     \voiceTwo r8\tutti fis fis4 fis8 fis |
     d4 d 
   \oneVoice g\solo bes16[( a]) g[( f?]) |
   e8 d c bes' a16[( g]) a8
     \voiceTwo r8\tutti f | \abr
     f4 f8 f f4 f |
   \oneVoice f\solo as16[( g]) f[( es]) d8 c bes as' |
   g8. f16 g8
     \voiceTwo es\tutti es4 es8 es | \abr
     es4 es
   \oneVoice f\solo as16[( g]) f[( es]) |
   d4 d g b16[( a?]) g[( f]) |
   f4 es as4. g8 | \abr
   fis8 d g4~ g8 a?16 e? fis4 |
   g4
     \voiceTwo r8\tutti g8 g4 g8 g |
     g4 g f? f | \abr
   \oneVoice f8\solo[( g]) a[( f]) d4 d |
     \voiceTwo g4\tutti g g g |
   \oneVoice g4\solo a8[( bes]) cis,4 cis |
     \voiceTwo g'4\tutti g8 g f4 f | \abr
   \oneVoice f8\solo[( a]) g[( f]) bes[( cis,]) d[( g]) |
   f4( e)\trill d2
     \voiceTwo fis4\tutti fis e e |
     e e e e | \abr
   \oneVoice f8\solo[( a]) g[( f]) bes?[( cis,]) d[( g]) |
   f4( e)\trill d2 |
     \voiceTwo f8\tutti f f f e2 |
     f2 r | 
     R1*4 \bar "|."
}


t_VIII = \relative c' {
  \globalf
  \dynamicUp
  R1*12 |
  r4 r8 a a4 a8 a |
  a4 g r2 |
  r r4 r8 c |
  c4 c8 c bes4 bes |
  R1 |
  r4 r8 bes bes4 bes8 bes |
  as4 as r2 |
  R1*3 |
  r4 r8 d d4 d8 d |
  e4 e c c |
  R1 |
  d4 d cis cis |
  R1 |
  cis4 cis8 cis a4 a |
  R1*2 |
  a4 a gis gis |
  gis? gis a a |
  R1*2 |
  b8 b b b a2 |
  a2 r2
  R1*4
}


b_VIII = \relative c {
  \globalf
  \dynamicDown
  R1*12 |
  r4 r8 d\p d4 d8 d |
  g4 g, r2 |
  r r4 r8 a' |
  a4 a8 a bes4 bes, |
  R1 |
  r4 r8 g'8 g4 g8 g |
  as4 as, r2 |
  R1*3 |
  r4 r8 g'8 g4 g8 g |
  c,4 c f f |
  R1 |
  bes4 bes a a |
  R1 |
  a4 a8 a d,4 d |
  R1*2 |
  d4 d d d |
  d d cis cis |
  R1*2 |
  gis'8\f gis gis gis a4( a,) |
  d2 r |
  R1*4
}

l_cVIII = \lyricmode {
  \iL Do -- mi -- ne De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris.
  Do -- mi -- ne De -- us, Do -- mi -- ne De -- us, A -- gnus De -- i, Fi -- li -- us Pa --
  tris. \nL Qui tol -- lis pec -- ca -- ta,
  \iL Do -- mi -- ne De -- us Rex cæ -- le -- stis
  \nL qui tol -- lis pec -- ca -- ta,
  \iL Do -- mi -- ne Fi -- li U -- ni -- ge -- ni -- te.
  \nL qui tol -- lis pec -- ca -- ta,
  \iL Do -- mi -- ne De -- us, Do -- mi -- ne De -- us, A -- gnus
  De -- i Fi -- li -- us Pa -- tris,
  \nL qui tol -- lis pec -- ca -- ta mun -- di.
  \iL mi -- se -- re -- re,
  \nL A -- gnus De -- i,
  \iL mi -- se -- re -- re,
  \nL Fi -- li -- us Pa -- tris,
  \iL mi -- se -- re -- re no -- bis,
  \nL mi -- se -- re -- re, mi -- se -- re -- re,
  \iL mi -- se -- re -- re no -- bis.
  \nL mi -- se -- re -- re no -- bis.
}

s_IX = \relative c'' {
  \time 4/4
  \set Score.currentBarNumber = #496
  \tempo Adagio
  \globalc
  \dynamicUp
  r2 c\p |
  c c\fermata |
  r4 c bes a |
  gis2 gis\fermata |
  r4 d' c b | \abr
  ais2 ais |
  b4. b8 b2\fermata | \bar "||"
  \time 3/2 b2. b4 b2 |
  c2. c4 c2 |
  cis2. cis4 cis cis | \abr
  d2 d1 |
  dis2. dis4 dis dis |
  e1 e2 |
  e1( dis2) |
  e1. | \abr
  a,2. a4 a a |
  dis1. |
  e |
  e1( dis2) |
  e1.\fermata \bar "|."  
}

a_IX = \relative c' {
  \globalc
  \dynamicDown
  r2 e |
  fis fis |
  r4 fis g fis |
  e2 e |
  R1 |
  r4 fis fis fis |
  fis2 fis |
  g2. g4 g2 |
  e2. e4 e2 |
  e2. e4 e e |
  fis2 fis1 |
  fis2. fis4 fis fis |
  g1 g2~ |
  g fis1 |
  g1. |
  R1. |
  fis2. fis4 fis fis |
  g1 g2~ |
  g fis1 |
  gis1.
}


t_IX = \relative c' {
  \globalc
  \dynamicUp
  r2 a |
  a a |
  r4 a bes c |
  b?2 b |
  R1 |
  r4 cis cis cis |
  b2 b |
  b2. b4 b2 |
  a2. a4 a2 |
  a2. a4 a a |
  a2 a1 |
  b2. b4 b b |
  b1 cis2 |
  b1. |
  b |
  R |
  b2. b4 b b |
  b1 cis2 |
  b1. |
  b
}


b_IX = \relative c' {
  \globalc
  \dynamicDown
  r2 a\p |
  dis,2 dis\fermata |
  r4 dis dis dis |
  d?2 d\fermata |
  R1 |
  r4 fis e e |
  dis2 dis\fermata |
  e2. e4 e2 |
  a2. a4 a2 |
  g2. g4 g g |
  fis2 fis1 |
  b2. b4 a a |
  g1 ais,2 |
  b1. |
  e |
  R |
  b'2. b4 a a |
  g1 ais,2 |
  b1. |
  e\fermata
}

l_sIX = \lyricmode {
  Qui tol -- lis pec -- ca -- ta mun -- di, pec -- ca -- ta
  mun -- di, su -- sci -- pe su -- sci -- pe, su -- sci -- pe de -- pre -- ca -- ti --
  o -- nem, de -- pre -- ca -- ti -- o -- nem no -- stram,
  de -- pre -- ca -- ti -- o -- nem no -- stram.
}

l_cIX = \lyricmode {
  \repeat unfold 8 \skip 1 
  pec -- ca -- ta mun -- di, \repeat unfold 17 \skip 1 nem __ no -- stram,
  de -- pre -- ca -- ti -- o -- nem __ no -- stram.
}

a_X = \relative c'' {
  \time 3/8
  \set Score.currentBarNumber = #516
  \tempo Allegro
  \global
  R4.*26
  r8 r b\p |
  fis4.~ |
  fis~ |
  fis |
  fis4 fis8 | \abr
  b16([ cis d8 cis] |
  b[ a g] |
  fis) b cis |
  d[( cis]) b |
  R4.*2 | \abr
  fis4\p fis8 |
  g4.~( |
  g~ |
  g16[ a b8 a] |
  g16[ a b8 g]) |
  fis4.~( | \abr
  fis~ |
  fis16[ g a8 g] |
  fis16[ g a8 fis]) |
  e4.~( |
  e~ |
  e16[ fis g8 fis] | \abr
  e16[ fis g8 e] |
  d[ cis]) d8 |
  R4. |
  b'4 b8 |
  b8[ a] gis |
  a gis[ fis] | \abr
  eis4 fis8~ |
  fis gis4 |
  fis4. |
  R4.*5 | \abr
  gis4.\p |
  gis |
  cis,4 b'8 |
  a gis fis | \abr
  b4( gis8) |
  a4. |
  R |
  a4 a8 |
  a4.(~ |
  a8[ g?16 fis e dis] | \abr
  b'4.~ |
  b8[ a16 g fis e] |
  c'4.~ |
  c16[ b a g fis e] |
  d8[ e]) a |
  g( fis4)\trill | \abr
  e4. |
  R4.*4 |
  b'8\p g[ fis] | \abr
  e[( fis d?] |
  cis16[ d e8 fis] |
  e16[ fis g8 a] |
  fis16[ e d e fis g] |
  a8[ b16 cis d8]) |
  e,8 e4\trill | \abr
  d4. |
  R4.*4 |
  fis4.\p | \abr
  fis~ |
  fis~ |
  fis |
  fis4 fis8 |
  b16([ cis d8 cis] |
  b[ a? g] | \abr
  fis) b cis |
  d[ cis] b |
  r fis b |
  g4.~( |
  g8[ b a] |
  gis[ fis e] | \abr
  a4.~ |
  a8[) cis( b] |
  ais[ gis fis] |
  b4) fis8 |
  R4.*2 | \abr
  e16[( fis g8)] fis |
  e16[( fis g8)] fis |
  e16[( fis g8]) e |
  ais4 b8~( | \abr
  b16[ gis]) ais4\trill |
  b4. |
  R4.*2 |
  b8 fis4 | \abr
  g8 fis4 |
  b8 d,4 |
  e8 d4 |
  g8[( fis]) e8 |
  ais4 b8~ | \abr
  b ais4\trill |
  b4. |
  R4.*19 \bar "|."
}



l_cX = \lyricmode {
  Qui se -- des ad
  dex -- te -- ram Pa -- tris,
  mi -- se -- re -- _ _ re, mi -- se -- re -- re, mi -- se --
  re -- re __ no -- bis.
  Qui se -- des ad dex -- te -- ram
  Pa -- tris, mi -- se -- re -- re no --
  bis, mi -- se -- re -- re no -- bis. Qui
  se -- des ad dex -- te -- ram Pa -- tris, mi -- se -- re -- re,
  mi -- se -- re -- re, mi -- se -- re -- re __
  no -- bis, mi -- se -- re -- re, mi -- se -- re -- re, mi -- se -- re -- re __
  no -- bis.
}

s_XI = \relative c'' {
  \time 4/4
  \set Score.currentBarNumber = #666
  \tempo Allegro
  \global
  \dynamicUp
  R1*5 |
  r2 d8.\f d16 d8 d |
  d8 d d4 d r |
  r2 cis8. cis16 cis8 cis | \abr
  cis cis cis4 cis r |
  r2 cis |
  d e | \abr
  d d |
  cis r |
  cis\p d |
  e d | \abr
  d4. d8 cis2 |
  e\f d |
  d( cis) |
  d r | \abr
  d d |
  cis d |
  R1*2 \bar "|."
}

a_XI = \relative c' {
  \global
  \dynamicDown
  R1*5 |
  r2 fis8. fis16 fis8 fis |
  fis fis fis4 fis r |
  r2 e8. e16 e8 e |
  e e e4 e r |
  r2 e |
  fis g |
  fis e |
  e r |
  e fis |
  g fis |
  e4. e8 e2 |
  g fis |
  e1 |
  fis2 r |
  fis e |
  e fis |
  R1*2
}


t_XI = \relative c' {
  \global
  \dynamicUp
  R1*5 |
  r2 a8. a16 a8 a |
  a a a4 a r |
  r2 a8. a16 a8 a |
  a a a4 a r |
  r2 cis |
  a cis |
  a a |
  a r |
  cis a |
  cis a |
  a4. a8 a2 |
  a4( cis) a2 |
  a1 |
  a2 r |
  a a |
  a a |
  R1*2
}


b_XI = \relative c {
  \global
  \dynamicDown
  R1*5 |
  r2 d8.\f d16 d8 d |
  d d d4 d r |
  r2 a8. a16 a8 a |
  a a a4 a r |
  r2 a' |
  a a |
  a a |
  a r |
  a\p a |
  a a |
  a4. a8 a2 |
  a\f d, |
  a'( a,) |
  d r |
  d a' |
  a, d |
  R1*2
}

l_sXI = \lyricmode {
  Quo -- ni -- am to so -- lus San -- ctus, quo -- ni -- am tu
  so -- lus San -- ctus, tu so -- lus Do -- mi -- nus, tu so -- lus Al --
  ti -- si -- mus, Je -- su Chri -- ste,
  Je -- su Chri -- ste.
}

s_XII = \relative c'' {
  \time 4/2
  \set Score.currentBarNumber = #689
  \tempo Allegro
  \global
  \dynamicUp
  R\breve |
  r2 r r4 a\f a a |
  fis4. e8 d4 fis g g8 g g4 g | \abr
  e2 e4 e a a8 a a4 a |
  fis( gis) a1 gis2 |
  a1 r2 r4 a( | \abr
  b a b cis d) a( d fis |
  e1) a,2 d~ |
  d b1 e2~ | \abr
  e a, r r |
  d1 fis2 e |
  d2. d4 cis1 | \abr
  d1 b2 b4 b |
  e2 e cis cis |
  d4 d cis cis b1 | \abr
  a1 r2 r |
  R\breve*8 |
  e'1\p a,2 d~ |
  d b1 e2(~ | \abr
  e cis fis e |
  d1) cis |
  R\breve | \abr
  r4 d d d cis4. b8 a4 cis |
  d d8 d d4 d b2 b |
  b( ais) b2 r | \abr
  R\breve*3 |
  r2 d1\f( cis2 |
  fis1) e2 r |
  a,1 b2 a | \abr
  g2. g4 fis2. fis4 |
  a a8 a a4 a a2 a |
  a( gis) a4 cis2( fis4~ | \abr
  fis d b1 ais2) |
  b2. a?4( gis2 a2~ |
  a gis) a1 | \abr
  gis1 fis2 r |
  R\breve*4 |
  r2 r r4 e'\f e e | \abr
  cis4. cis8 cis2 r4 d d d |
  b4. b8 b2 a1 |
  b2 d1( cis2) | \abr
  d1 r2 r |
  R\breve |
  r2 a b cis | \abr
  d2. d4 cis2 cis |
  d2 d4 d b2 b |
  e e cis cis | \abr
  d d d( cis) |
  d b1 b2~ |
  b ais b1 | \abr
  c2 b b1 |
  b2 r r r |
  R\breve | \abr
  r2 r b1 |
  ais r4 b b b |
  gis4. gis8 gis2 r4 a a a | \abr
  fis4. fis8 fis2 r r |
  R\breve*2 | \abr
  a1 b2 a |
  g?2. g4 fis1 |
  a fis2 fis4 fis | \abr
  b2 b gis gis |
  a4 a a a b2( e |
  a, d1 cis2) |
  d\breve\fermata \bar "|."
}

a_XII = \relative c'' {
  \global
  \dynamicDown
  R\breve*5 |
  a1\f b2 a |
  g2. g4 fis1 |
  a fis2 fis4 fis |
  b2 b gis gis |
  a4 a fis fis e1 |
  d r2 a'~( |
  a gis) a r |
  a1 g |
  gis a |
  a( fis2 b) |
  e,1 r2 r |
  R\breve*8 |
  r4 a\p a a fis4. e8 d4 fis |
  g g8 g g4 g e2 e4 e |
  a a8 a a4 a fis( gis) a2~ |
  a gis a1 |
  fis( b2 e, |
  a1) e2. a4~( |
  a g fis a g1 |
  fis) fis2 r |
  R\breve*3
  d1\f fis2 e |
  d2. d4 cis2. cis4 |
  d e fis2 d fis |
  b, cis d( fis |
  e1) d2 e( |
  fis b) e, fis~( |
  fis g fis1) |
  fis2 r e1~ |
  e e2 fis~( |
  fis eis) fis r |
  R\breve*5
  r4 a\f a a fis4. fis8 fis2 |
  r2 g1( fis2) |
  g r g1 |
  fis r2 r |
  R\breve |
  r4 fis fis fis g4. fis8 e4 e |
  fis fis8 fis g4 fis e e r2 |
  a1 g |
  gis a |
  a2 a a1 |
  a2 fis( g fis) |
  fis1 fis2 r |
  a( g fis1) |
  g2 g1( fis2 |
  e2. fis8[ e] d2. e8[ d] |
  cis2 fis1 e2) |
  fis fis1( b2~ |
  b e,1 a2~ |
  a d,1 g2~ |
  g fis e1) |
  d2 cis( d1) |
  cis1 r2 r |
  r r r4 d d d |
  e4. e8 e4 e d d8 d d4 d |
  g2 g4 g e e8 e e4 e |
  e2 fis g1( |
  fis e) |
  fis\breve
}


t_XII = \relative c' {
  \global
  \dynamicUp
  R\breve*6
  r2 r r4 d\f d d |
  cis4. b8 a4 cis d d8 d d4 d |
  b2 b4 b e4 e8 e e4 e |
  cis2 d1 cis2 |
  d2 d1( cis2 |
  d e) a, a~( |
  a d1 b2~ |
  b e1 cis2 |
  fis e d1) |
  cis1 r2 r |
  R\breve*6
  r2 r d1\p | \abr
  fis2 e d2. d4 |
  cis1 d |
  b2 b4 b e2 e |
  cis cis d4 d cis cis |
  b1 a4 a( b cis |
  d1. cis2) |
  d2 a4( b cis d e2 |
  a, d1 e2 |
  cis1) d2 r
  R\breve*3 |
  r2 r r a2(~ |
  a gis) a1 |
  r2 d( b d~ |
  d) cis r r |
  r r fis e |
  d1 cis |
  d2 e cis1 |
  d2 r b cis |
  b1 cis2 r |
  cis1 cis2 r |
  R\breve*5 |
  r2 a d1 |
  r2 r d1~( |
  d2 fis b, e) |
  a,1 r2 r |
  r r r4 a b cis |
  d4. d8 d4 d d d8 d e4 e |
  a, a a1 a2~ |
  a d1 b2~ |
  b e1 cis2 |
  fis fis e1 |
  fis b,2( d? |
  cis1) d2 e~ |
  e e e( dis) |
  e e1( d2~ |
  d cis1 b2~ |
  b ais) b1 |
  cis( fis |
  b, e ) |
  a, r2 r |
  R\breve |
  r2 a1( gis2) |
  a1 r2 d2(~ |
  d cis) d4 a a a |
  a4. a8 a4 a a a8 a d4 d |
  d2 b4 b b b8 b b4 b |
  e2 d4( fis) e1 |
  d2 a1~ a2 |
  a\breve
}


b_XII = \relative c {
  \global
  \dynamicDown
  d1\f fis2 e |
  d2. d4 cis1 |
  d b2 b4 b |
  e2 e cis cis |
  d4 d cis cis b1 |
  a r2 r |
  R\breve*5 |
  r2 r r4 a'\f a a |
  fis4. e8 d4 fis g g8 g g4 g |
  e2 e4 e a a8 a a4 a |
  fis( gis) a1 gis2 |
  a1 r2 r |
  R\breve*7 |
  r2 a1\p( gis2) |
  a1 r2 r |
  R\breve*2 |
  r2 r a1 |
  b2 a g2. g4 |
  fis1 a |
  fis2 fis4 fis g g e e |
  fis1 b,2 r |
  R\breve*4 |
  r2 r r4 a'\f a a |
  fis4. e8 d4 fis g? g8 g fis4 fis |
  e e a2 d,4 d' d d |
  cis4. b8 a4 cis d d8 d cis4 cis |
  b1 a2 ais( |
  b g4 e fis1) |
  b,2 d1( cis4 d |
  e1) a,2 d4( b |
  cis1) fis2 r |
  R\breve*4 |
  r2 r r gis\f |
  a1 r2 fis2( |
  g?1 d |
  g2 fis e1) |
  d1 r2 r |
  r r a'1 |
  b2 a g2. g4 |
  fis1 r4 a a a |
  fis4. e8 d4 fis g g8 g g4 g |
  e2 e4 e a4 a8 a a4 a |
  fis2 d a'1 |
  d,2 dis( e b' |
  fis1 b2 gis |
  a e) b1 |
  e2.( d?4 cis2 d |
  a' ais b1 |
  fis g) |
  fis4 fis fis fis dis4. dis8 dis2 |
  r4 e e e cis4. cis8 cis2 |
  r4 d? d d b a b cis |
  d d8 d d4 d d d cis2 |
  d fis( b,1) |
  a1 r2 r |
  r r r4 d d d |
  cis4. b8 a4 cis d d8 d d4 d |
  b2 b4 b e e8 e e4 e |
  cis2 d d( cis) |
  d1 a |
  d\breve\fermata
}

l_sXII = \lyricmode {
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in glo -- ri -- a De -- i Pa -- tris. A -- men. A --
  _ men, a -- men, a -- men. Cum San -- cto Spi -- ri -- tu,
  in glo -- ri -- a De -- i Pa -- tris, De -- i Pa -- tris. A -- men.
  A -- men, a -- men, a --
  men. Cum san -- cto Spi -- ri -- tu in glo -- ri -- a De -- i Pa -- tris. A -- men.
  A -- men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men, a --
  men, a -- men, a -- men.
  Cum San -- cto Sp -- ri -- tu, cum San -- cto Spi -- ri -- tu. A -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i, De -- i Pa -- tris,
  Pa -- tris. A -- men, a -- men, __ a -- men, a -- men, a -- men.
  A -- men. Cum San -- cto Spi -- ri -- tu, cum San -- cto Spi -- ri -- tu.
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, De -- i Pa -- tris. A -- men.
}

l_cXII = \lyricmode {
  Cum San -- cto
  Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, De -- i Pa -- tris. A -- men, a -- men,
  a -- men, a -- men, a -- men.
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in
  glo -- ri -- a De -- i Pa -- tris. __ A -- men, a -- men, a -- men.
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men, a -- men, a --
  men, a -- men, a -- men.
  Cum San -- cto Spi -- ri -- tu. A -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men, a -- men,
  a -- men, a -- men, a -- _ men, a -- men, a --
  men, a -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in glo -- ri -- a De -- i Pa -- tris.
}

l_tXII = \lyricmode {
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in glo -- ri -- a De -- i Pa -- tris. A -- men, a -- men, a --
  men.
  Cum San -- cto Spi -- ri -- to, in glo -- ri -- a De -- i
  Pa -- tris, De -- i Pa -- tris. A -- men, a -- men, a -- men.
  A -- men, a -- men. A -- men, a -- men,
  a -- men, a -- men, a -- men, a -- men, a -- men. A -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men, __ a -- men, __ a -- men,
  a -- men, a -- men, a -- men, a -- men, a -- men, a --
  men, a -- men. A --
  men, a -- men. \repeat unfold 22 \skip 1 A -- men, a -- men.
}

l_bXII = \lyricmode {
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, De -- i Pa -- tris. A -- men.
  Cum San -- cto
  Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in glo -- ri -- a De -- i Pa -- tris. A -- men.
  A -- men.
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men.
  Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris. A -- men. Cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, A --
  men, a -- men, a -- men.
  A -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, in glo -- ri -- a De -- i
  Pa -- tris. A -- men, a -- men, a --
  men. Cum San -- cto Spi -- ri -- tu, cum San -- cto Spi -- ri -- tu, cum San -- cto Spi -- ri -- tu, in glo -- ri -- a De -- i Pa -- tris, A -- men, a --
  men. \repeat unfold 24 \skip 1 a -- men.
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last = ##f
  }
  \score {
    \header {
      piece = "I Gloria in excelsis Deo"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_I }
        \new Voice  = "alto" { \voiceTwo \a_I }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_I }
        \new Voice = "bass" { \voiceTwo \b_I }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_I
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cI
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score I
  
  \score {
    \header {
      piece = "II Et in terra pax hominibus"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_II }
        \new Voice  = "alto" { \voiceTwo \a_II }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_II }
        \new Voice = "bass" { \voiceTwo \b_II }
      >>
      
      \new Lyrics = "tenors"
      \new Lyrics = "basses"
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sII
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cII
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \l_tII
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \l_bII
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score II
  
  \score {
    \header {
      piece = "III Laudamus te"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprano I" "Soprano II"  } }
        shortInstrumentName = \markup { \right-column { "SI" "SII"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_iIII }
        \new Voice  = "alto" { \voiceTwo \s_iiIII }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_siIII
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_siiIII
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score III
  
  \score {
    \header {
      piece = "IV Gratias agimus tibi"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_IV }
        \new Voice  = "alto" { \voiceTwo \a_IV }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_IV }
        \new Voice = "bass" { \voiceTwo \b_IV }
      >>

      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_IV
        }
      }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score IV
  
  \score {
    \header {
      piece = "V Propter magnam gloriam"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_V }
        \new Voice  = "alto" { \voiceTwo \a_V }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_V }
        \new Voice = "bass" { \voiceTwo \b_V }
      >>
      
      \new Lyrics = "tenors"
      \new Lyrics = "basses"
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sV
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cV
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \l_tV
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \l_bV
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score V
  
   \score {
    \header {
      piece = "VI Domine Deus"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprano" "(Solo)"  } }
        shortInstrumentName = "S"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \s_VI }
      >> 
      
      \new Lyrics = "sopranos"
      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_VI
        }
      }
      
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score VI


  \score {
    \header {
      piece = "VII Domine Fili Unigenite"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_VII }
        \new Voice  = "alto" { \voiceTwo \a_VII }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_VII }
        \new Voice = "bass" { \voiceTwo \b_VII }
      >>
      
      \new Lyrics = "tenors"
      \new Lyrics = "basses"
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sVII
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cVII
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \l_tVII
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \l_bVII
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }

      %Metronome_mark_engraver
    }
  } % score VII
  
  \score {
    \header {
      piece = "VIII Domine Deus, Agnus Dei"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_VIII }
        \new Voice  = "alto" { \voiceTwo \a_VIII }
      >> 
      
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_VIII }
        \new Voice = "bass" { \voiceTwo \b_VIII }
      >>
      

      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cVIII
        }
      }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score VIII
  
  \score {
    \header {
      piece = "IX Qui tollis peccata mundi"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_IX }
        \new Voice  = "alto" { \voiceTwo \a_IX }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_IX }
        \new Voice = "bass" { \voiceTwo \b_IX }
      >>
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sIX
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cIX
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score IX
  
  \score {
    \header {
      piece = "X Qui sedes ad dexteram"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Contralto" "(solo)"  } }
        shortInstrumentName = "C"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \oneVoice \a_X }
      >> 
      
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cX
        }
      }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score X
  
  \score {
    \header {
      piece = "XI Quoniam tu solus Sanctus"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_XI }
        \new Voice  = "alto" { \voiceTwo \a_XI }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_XI }
        \new Voice = "bass" { \voiceTwo \b_XI }
      >>
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sXI
        }
      }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score XI
  
  \score {
    \header {
      piece = "XII Cum Sancto Spiritu"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_XII }
        \new Voice  = "alto" { \voiceTwo \a_XII }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_XII }
        \new Voice = "bass" { \voiceTwo \b_XII }
      >>
      
      \new Lyrics = "tenors"
      \new Lyrics = "basses"
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_sXII
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cXII
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \l_tXII
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \l_bXII
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  } % score XII
  
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_I \s_II \s_iIII \s_IV \s_V \s_VI \s_VII \s_VIII \s_IX \a_X \s_XI \s_XII}
        \new Voice  = "alto" { \voiceTwo \a_I \a_II \s_iiIII \a_IV \a_V \s_VI \a_VII \a_VIII \a_IX \a_X \a_XI \a_XII}
      >> 
           
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_I \t_II \s_iIII \t_IV \t_V \s_VI \t_VII \t_VIII \t_IX \a_X \t_XI \t_XII}
        \new Voice = "bass" { \voiceTwo \b_I \b_II \s_iiIII \b_IV \t_V \s_VI \b_VII \b_VIII \b_IX \a_X \b_XI \b_XII}
      >>
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
