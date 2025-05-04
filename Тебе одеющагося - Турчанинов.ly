\version "2.24.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Тебе, одеющагося"
  subtitle = "(болгарского ро́спева)"
  composer = "прот. Турчанинов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = \break
abrr = { \break }
%abr = \tag #'BR { \break }
abr = {}
%abrr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key g \major
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  e1 |
  fis4( g a b |
  a g fis g) | \abr
  
  fis1 |
  g2( a) |
  b1 |
  a4( b) c2 |
  b1 | \abrr
  b4( c b2 | \abr
  
  a1~ |
  a4 g) fis( e) |
  g4( a b2) |
  b4( c b a ) | \abr
  
  a1(~ |
  a4 g fis e |
  fis g a b |
  a g) fis( g) | \abr
  
  e2.( fis4 |
  g2 a) \abrr |
  b1 |
  e,2( b') |
  b4( c d2 |
  c4\< b c d |
  e\> d c b\!) | \abr
  
  
  %page 2
  b1 | a4( b c2) | b1 \abrr  | b2( a4 g) | fis( g a b) | \abr
  a4( g fis g | e2. fis4 | g2) a | b1 | e,2( b') | \abr
  b4( c d2) \abrr  | c4( b c d | e d) c( b)  | b1 | \abr
  b1 | c2.( b4) | b2.( c4 d2.-> c4) | b2( a4 gis) | \abr
  a4->( b c b) | b1( \abrr | c4 b a g)  | fis1 | g2( a) | g1 | \abr
  fis4( g a g) | b( a g a) | g2( fis4 e) | \abr
  
  %page 3
  fis4( g a2) | g1 \abrr | a2.( b4 | a g fis e) | g( a b2) | \abr
  b4( c b a) | a1 | a4( g fis e) | \abr
  fis4( g a b | a g fis g) | e1\fermata \bar "||" g1\p ( b2 a | fis1 | \abr
  e2 fis | g a | b1 | a4 b c2) | b1 | d4( c bes c) | \abr
  bes1 \abrr | fis2.\pp( e4 | a2 g | fis e | a g | fis e4 fis8[ e]) | d1 | \abr
  d'1\f | d4->( e d c) | b1 | b | b2( c) | d1 \abrr | c2 b | \abr
  
  %page 4
  a4->( c2 b4) | b1( | c4 b a g ) | fis1 | g2( a) | g1 | \abr
  b4( a g a) | g2( fis4 e) | fis( g a2) | g2( fis4 e) | \abr
  fis4( g) a2 | g1 | a2.( b4 | a g fis e) | g( a b2) | \abr
  b4( c b a) | a1 \abrr | a4( g fis e | fis g a b) | \abr
  a4( g fis g) | e2.( fis4 | g2 a) | b1 | b4( c b a) | \abr
  a2.( g4) | fis( g fis e) | fis( g a b) a( g fis g) | \abr
  
  %page 5
  e2.( fis4 | g2 a) | b1 | e,2( b') | b4( c d2) | \abr
  c4( b c d | e d) c( b) | b2 c4( a) | \abr
  a2( b4 c | d2 b | c d) | d4( c b c) | \abr
  b2.( c4) | d1 | b4( c d e) | d1 | b4( c d e ) | \abr
  d1 | d1 | b4( c d e) | d1 | \abr
  d4( c e2) | b2( c4 b | c1) c2( d) | d4( c b c) | \abr
  
  %page 6
  b2.( a4 | c b a g) fis1 | g2( a) | g1 | fis4( g a g ) | \abr
  b4( a g a) | g1 | g2( fis4 e) | fis( g) a2 | \abr
  g1 | g1 | a2 a | g g | fis2.( g4 | a g fis e | \abr
  fis g a b | a g) fis( g) | e1\fermata \bar "||" g1\p ( b2 a | fis1 | e2 fis | \abr
  g2 a | b1 | a4 b c2) | b1 | d4( c bes c) | \abr
  bes1 \abrr | fis2.( e4 | a2 g | fis e | a g | fis e4 fis8[ e]) | d1 \bar "||" \abr
  
  %page 7
  d'1\f(~ | d4 e d c) | b1 | b2 b | b( c) | d1 | \abr
  c2( b | a4 b) c( b) | b1 | e1 | e4( g f e ) | \abr
  f( e d c) | b( c d c) | d1 \abrr | b4( c d e) | \abr
  d1 | b4( c d e) | d1 | d2( e) | b2( c4 b | c2) c | \abr
  d4( c b c |  b2. a4 | c b a g) \abrr fis1 g2( a) | \abr
  b1 b4( a) b( c) | d( c b c ) b1 | a4( b ) c2 | \abr
  
  %page 8
  b1 | b1 \abrr | a1 | a4( g fis e) | g( a b2) | \abr
  b4( c b a) | a2. a4 | a4( g fis e) | \abr
  fis( g a b | a g fis g | e2. fis4 | g2) a | b1 | \abr
  b4( a b c) | d( c b c ) | b2( c4 d ) | \abr
  e2( d4 c) | b2( a4 g) | a( b) c2 | b1  | a4( b) c2 | \abr
  b2 b | a1(~ | a4 g fis e | fis g) a( b) | \abr
  
  %page 9
  a4( g fis g) | e1 \abrr | b'4( c) b( a) | a1(~ | a4 g) fis( e) | \abr
  fis4( g a b) | a( g) fis( g) | e2.( fis4 | g2 a ) \abrr b1 | \abr
  b4( c d e ) | d1 | d | b | g4( a b c ) | \abr
  b1 | b2( c | b c4 d | e2) b | c( d) \abrr | d4( c b c ) | \abr
  b2.( a4 | c b a g) | fis1 | g2 a | b b | a4( b ) c2 | b1 | \abr
  
  %page 10
  c1 | b2 a | g4( fis g a | b a b c |  d2 c4 b | a2 g4 a) | \abr
  b1 | c2.( b4 | a2 b | c b4 c | d c b c) | b1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e1 |
  dis4( e fis g |
  fis e dis e) |
  
  dis1 |
  e2( fis) |
  g1 |
  fis4( g) a2 |
  g1 |
  g4( a g2 |
  
  fis2. e4 |
  fis e) d( cis) |
  e( fis g2) |
  g4( fis g2) |
  
  fis2.( e4 |
  fis e d cis |
  d e fis g |
  fis e) dis4( e) |
  
  b2.( dis4 |
  e2 fis) |
  g1 
  g1 |
  gis4( a b2 |
  a4 gis a b |
  c b a2)
  
  %page 2
  gis1 | a4( gis a2) | gis1 | fis4( g fis e) | dis( e fis g) |
  fis( e dis e | b2. dis4 e2) fis | g1 | g |
  gis4( a b2) | a4( gis a b | c b) a2 | gis1 |
  gis | a1 | gis2.( a4 | b2.-> a4) | gis2( a4 b) |
  a1 | gis( | a4 g fis e) | dis1 | e2( fis) | d1 |
  d1 | d1 | d2.( e4) |
  
  %page 3
  d1 | d1 | fis2.( g4 | fis e d cis) | e( fis g2) |
  g4( fis g2 ) | fis2.( e4) | fis4( e d cis) |
  d( e fis g | fis e dis e) | b1 | e1( fis dis |
  e2 dis | e fis | g1 | fis4 g a2) | g1 | bes4( a g a) |
  g1 | d1~ | d~ | d~ | d~ | d2( cis) | d1 |
  b'1 | b4( c b a) | gis1 | gis | gis2( a) | b1 | a2 gis
  
  %page 4
  a1 | gis( | a4 g fis e) | dis1 | e2( fis) | d1 |
  d1 | d2. ( e4) | d1 | d2 r |
  d2 d | d1 | fis2.( g4 | fis e d cis) | e( fis g2) |
  g4( fis g2 ) | fis2.( e4) | fis( e d cis |  d e fis g) |
  fis( e dis e) |b2.( dis4 | e2 fis) | g1 | g4( fis g e ) |
  fis2.( e4) | d( e d cis) | d( e fis g) | fis( e dis e) |
  
  %page 5
  b2.( dis4 | e2 fis) | g1 | g | gis4( a b2) |
  a4( gis a b | c b) a2 | gis a4( g) |
  fis2( g4 a | b2 g | a b) | b4( a g a ) |
  g2.( a4) | b1 | g4( a b c) | b2.( fis4) | g( a b c ) 
  b1 | b | g4( a b c ) | b1 |
  g1 |   g2.( f4 | e1 ) | a2( b) b4( a g a ) |
  
  %page 6
  g2.( fis4 | a g fis e) | dis1 | e2( fis) | d1 | d | 
  d | d | d2. ( e4) | d2 d |
  d1 | d | fis2 fis | g d | d2.( e4 | fis e d cis |
  d e fis g | fis e) dis( e) | b1 | e1( | fis | dis | e2 dis
  e fis | g1 | fis4 g a2) | g1 | bes4( a g a) |
  g1 | d1~ | d~ | d~ | d~ | d2( cis) | d1
  
  %page 7
  b'1(~ | b4 c b a) | gis1 | 2 2 | 2( a2) | b1 |
  a2( gis | a2) a | gis1 | g | g |
  g2.( fis4) | g( a b a ) | b1 | g4( a b c ) |
  b1 |  g4( a b c ) | b1 | g | g2.( f4  | e2) a |
  b4( a g a | g2. fis4 | a g fis e) | dis1 | e2( fis) |
  g1 | g4( fis) g( a) | b( a g a) | g1 | fis4( g) a2 |
  
  %page 8
  g1 | g | fis2.( e4) | fis4( e d cis) | e( fis g2) |
  g4( fis g e) | fis2. e4 | fis( e d cis) |
  d( e fis g | fis e dis e | b2. dis4 | e2) fis | g1 |
  g4( fis g a) | b( a g a) | g1 |
  g2.( fis4) | g1 | fis4( g) a2 | g1 | fis4( g) a2 |
  g2 g | fis2.( e4 | fis e d cis | d e) fis( g)
  
  %page 9
  fis4( e dis e) | b1 | g'4( fis) g( e) | fis2.( e4 | fis e) d( cis) |
  d( e fis g ) | fis( e) dis( e) | b2.( dis4 | e2 fis) | g1 |
  g4( a b c) | b1 | b | g | g |
  g | g~ | g~ | g2 g | a( b ) | b4( a g a ) |
  g2.( fis4 | a g fis e) | dis1 | e2 fis | g g | fis4( g) a2 | g1
  
  %page 10
  a1 | g2 fis | d1( | g4 fis g a | b2 a4 g | fis2 e4 fis) |
  g1 | a2.( g4 | fis2 g | fis g4 a | b a g a ) | g1
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  
  b1 |
  b1~ |
  1
  
  b |
  b2( d) |
  d1 |
  d2 2 |
  1 
  1(~
  
  2 a2~ |
  2) 2 |
  b4( d2.) |
  d2.( a4) |
  
  a1(~
  1~
  4 ais b2~ |
  b2) 2 |
  
  g2.( b4 |
  b2 d) |
  d1 |
  e1 |
  e(~ |
  e~ |
  e2. f4)
  
  %page 2
  e1 | c4( e2. ) | e1 | dis4( e b2 ) | b1 |
  b( | g2. b4~ | b2) <c d>2 | b2( d) | e1 |
  e1 | e~ | e2. f4 | e1 |
  e1 | e2.( f4) | e1( gis,2. a4) | d2( c4 b) |
  dis1 | e | R1 | b | b2( c) | <b g>1 |
  a4( b c b ) | d( c b c ) | b2( a ) |
  
  %page 3
  a4( b c2) | <b g>1 | d( | a ) | b4( d2.) |
  d2.( e4) | d2( a) | a1 |
  a4( ais b2 ~ | b1) g1 | b1~ ( | b~ | <b~ a> |
  b2~ b~ | b d~ | d1~ d) | d1 d |
  g,4( d' bes g) | a2.( g4 | fis2 e | a g | fis e | a g4 a8[ g]) | fis1 |
  g1 | d'4( c d dis) | e1 | e | e | e | e2 e |
  
  %page 4
  dis1 | e | R1 | b | b2( c) | b1 |
  d4( c b c) | b2( a) | a4( b c2) | b2( a) |
  a4( b) c2 | b1 | d1( | a ) | b4( d2.) |
  d2.( e4) | d2( a) | a1(~ | a4 ais b2) |
  b1 |  g2.( b4~ | b2 d) | d1 | d2.( a4) |
  a1 | a | a4( ais  b2) | b1 
  
    %page 5
  g2.( b4~ | b2 d ) | d1 | e | e |
  e2.( d4 | c d) e( f) | e2. e4 |
  d1~ d~ | d d |
  d2 r2 | g,1 | g | b4( c d c) | b2.( a4) |
  b4( c d c) | b1 | b2.( a4) b( c d c) |
  b4( c2.) | d2( c4 d | g,1) | d'1 d |
  
  %page 6
  d2. r4 |   R1 |  b1 |  b2( c) | b1 | a4( b c b)
  d( c b c) b1 | b2( a) a4( b) c2 |
  b1 | b | c2 c | b b | d1( | a~ |
  a4 ais b2) b1 | g1 | b1(~ b~ b~ b2~ b~ |
  b d~ | d1~ d ) d1 d |
  d4( bes g2) | a2.( g4 fis2 e a g fis e a g4 a8[ g]) fis1
  
  %page 7
  g1( | d'4 c d dis) | e1 | e2 e | e1 e |
  e1 ( dis2) dis | e1 | e2( c) | c4( e d c) |
  d( c b a) | g1 g g |
  g g g | b2( c) | d( c4 d g,2) e' |
  d1~2. r4 R1 | b1 b2( d) |
  d1 | d4( c) b( a) | g1 g d'2 d |
  
  %page 8
  d1 d | d2( a) | a1 | b4( d2.) |
  d2.( a4) | a2 a a1 |
  a4( ais b2~ | b1 | g2. b4~ | b2) d | d1 |
  d4( c b a ) g1 | d'2( c4 b) |
  c2( b4 a) | g2( a4 b) | c4( b) a( fis) | g1 | d'2 d |
  d d | d( a~ a1~ | a4 ais) b2
  
  %page 9
  b1 |  g |  d'2. a4 | a1~ | a2 a |
  a4( ais b2) | b b | g2.( b4~ | b2 d) | d1 |
  d4( c b a) | b2( g) | g1 | d'1 |  b4( c d e )
  d1 |  d2( e |  d c4 b |  c2 ) d d1 d
  d2. r4 R1 | b1 | b2 d | d d d fis, g1
  
  % page 10
  d'1 | d2 d4( c) | b4( a b c | d1~ d~ d) |
  \voiceThree d1 | d~ | d~ | d~ | d | \voiceOne d
  
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  <e g>1 |
  b1~1
  
  b |
  e2( d) |
  g1 |
  d2 d |
  <g, g'>1 |
  g'1(
  
  d2. cis4 |
  d2) a2 |
  e'4( d <g g,>2) |
  g,4( a b cis) |
  
  d2.( cis4 |
  d2 a |
  d4 cis b2~ |
  b2) b |
  
  e2.( b4 |
  e2 d) |
  g1 |
  e1 |
  e1~ ( |
  e4 d c b |
  a b c d)
  
  %page 2
  e1 | e4( d c a) | <e' e,>1 | b | b |
  b( | e2. b4 | e2) d | <g d'>1 | e1 |
  e2( gis) | a4( e c b | a b) c( d) | e1 |
  <e e,>1 | a,4( b c d ) | e1~ e->  | <e e' e,,>1 |
  <f f,>-> | <e e,> | R1 | b | e2( d) | g,4( a b c) |
  d1 | <d d,> | g,4( a b cis) |
  
  %page 3
  d1  | g, | d'(~ | d2 a) | e'4( d g,2) |
  g4( a b cis) | d2.( cis4) | d2( a) |
  d4( cis b2~ | 1) | e1\fermata | e1\p( | dis | b |
  <e g>2 b | e d | g1 d ) | <g g,>1 1 |
  <g g, d''> | <d d,>1\pp~ | q~ | q~ | q~ | q2( a2 ) | q1 |
  g'1\f | g2.( f4) | e1 | e | e | e2.( gis4) | a2 e |
  
  % page 4
  f1 | e | R1 | b | e2( d) | <g g,>1 |
  d1 | g,4( a b cis) | d1 | g,4( a b cis) |
  d2 d | g,1 | d'1~( | d2 a) | e'4( d g2) |
  g,4( a b cis) | d2.( cis4) | d2( a | d4 cis b2) |
  b1 | e2.( b4 | e2 d) | g1 | g,4( a b cis) |
  d2.( cis4) d2( a) | d4( cis b2) b1 |
  
  %page 5
  e2.( b4 | e2 d) | g1 | e | e |
  e4( d c b | a b) c( d) | e2. cis4 |
  d4( c b a | g1~ | g) g |
  g'2 r | g1 | g1 | g4( a b a) g2.( fis4) |
  g4( a b a) g1 | g2.( fis4) | g4( a b a ) |
  g4( e c2) g'4( f e d | c1) d1 d |
  
  %page 6
  <g g,>2. r4 |  R1 |  b,1 | e2( d) | <g g,>1 d |
  d1 |  g, | g4( a b cis) | d2 d |
  <g g,>1 | q | d2 2 | 2 2 | d1(~ | d2 a |
  d4 cis b2) b1 <e e,>1\fermata | e1\p( dis | <b a'> <e g>2 b |
  e2 d |  <g g,>1 | d1) | <g g,>1 q |
  q | <d d,>1~1~1~1~2( a2) q1 |
  
  % page 7
  g'1\f~  (| g2. f4) | e1 e2 e | e1 | gis |
  a2( e | f2) f | e1 | c | c |
  b4( c d2) | g1 | g | <g g,> |
  q q q | g2( c,) | g'4( f e d | c2) a |
  d1 ( g,2.) r4 | R1 | b | e2( d) |
  g1 | d2 d | g1 g | d2 d |
  
  
 %page 8
 g1 g, | d'2.( cis4) | d2( a) | e'4( d g,2) |
 g4( a b cis) | d2. cis4 d2( a) |
 d4( cis b2~ | b1 | e2. b4 | e2) d <g g,>1 |
 g1 g | g4( f e d) |
 c2( d) | <g g,>1 | d2 d | g1 | d2 d |
 g g, | d'2.( cis4 | d2 a | d4 cis) b2
 
 % page 9
 b1 | e | g,4( a) b( cis) | d2.( cis4 | d2) a |
 d4( cis b2) | b b | e2.( b4 | e2 d) | g1 |
 g2.( fis4) | g1 | g | g | g |
 g | g2( c, g'4 f e d | c2) <g g'> d'1 | d |
 <g g,>2. r4 R1 | b,1 | e2 d | g g, | d' d <g g,>1 |
 
 % page 10
 d1 | d2 d | g1(~ | g~ | g2 fis4 g | d1 )
 <g g,>1 << { fis2. g4 | a2 g | s1 d1 } \\ { d1( c2 b | a g | d1) } >> <g g'>1\fermata
 

}

lyricscore = \lyricmode {
  Те -- бе,
  о -- де -- ю -- ща -- го -- ся све --
  том я -- ко
  ри -- зо --
  ю, снем И -- о --
  
  сиф с_дре -- ва с_Ни -- ко --
  ди -- мом, и ви --
  дев мерт -- ва, на --
  га, не -- по -- гре --
  бе -- на, бла -- го -- серд --
  ный плач вос --
  
  при -- им, ры -- да --
  я гла -- го --
  ла -- ше: у --
  вы, у --
  вы, у -- вы,
  у -- вы мне, слад -- чай -- ший И -- и --
  
  су -- се! Е -- го -- же
  вма -- ле солн -- це
  на кре -- сте ви  -- си --
  ма уз -- рев --
  ше -- е мра -- ком
  об -- ла -- га -- ше --
  
  ся, и зем -- ля
  стра -- хом ко -- ле --
  ба -- ше --
  ся, и раз -- ди -- ра --
  ше -- ся цер -- ков -- на -- я за -- ве --
  
  са: но се, ны -- не
  ви -- жу тя, ме -- не
  ра -- ди во -- ле -- ю подъ -- ем --
  ша смерть. Ка --
  ко, ка --
  ко ка -- ко,
  
  ка -- ко по -- гре -- бу тя
  Бо -- же мой; и -- ли 
  ка -- ко -- ю пла --
  ща -- ни -- це -- ю об -- ви --
  ю; ко -- и -- 
  ма ли ру -- ка -- ма при -- ко --
  
  сну -- ся не -- тлен -- но --
  му тво -- е -- му
  те -- лу и --
  ли ки -- я
  пес -- ни вос -- по -- ю тво -- е --
  му ис -- хо -- ду,
  
  щед -- ре. Ве -- ли -- ча -- ю
  стра -- сти тво -- я, пес -- 
  но -- слов -- лю и по -- 
  гре -- бе -- ни -- е тво --
  е со вос -- кре -- се -- ни -- ем, зо -- вый:
  
  Го -- спо -- ди, сла --
  ва те -- бе.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 25
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \accidentalStyle choral
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
 %       midiInstrument = "voice oohs"
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
 %       midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 2=90
    }
  }
}
