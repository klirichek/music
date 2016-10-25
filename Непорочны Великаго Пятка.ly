\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
    title = "Непорочны Великого Пятка"
    subsubtitle = "№127 Гл. 5 Греческ. росп."
    composer="прот. Турчанинов"
    
    %arranger = "перелож для см. хора"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
mbr = {}

partialTwo = {\set Timing.measurePosition = #(ly:make-moment -2/4)}
  
global = {
  \key d \major
  \time 4/4
  \autoBeamOff
  \set Score.skipBars = ##t
  %\override Score.BarNumber.break-visibility = #end-of-line-invisible
  %\set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \partial 4 fis4^\markup \italic "Статия 1" |
  a2 b |
  c a |
  b1 |
  c4->( b) a( b) |
  a1 |
  fis2 g |
  a2( b) | \abr
  a1 |
  g2 a |
  b a |
  b( c) |
  c4( b a b) |
  a1\fermata \bar "||"
  \cadenzaOn fis4^\markup \italic "Стих 1" a a \abr
  a4 a a\breve a4 b2 a1 \cadenzaOff \bar "||"
  a4( b2 a4) |
  g( a) b2 |
  a( g4 fis) |
  g( a) b2 |
  a4( b2 a4) |
  g( a) \abr
  b2 |
  b2 a4( g) |
  \time 3/2 a1 a2 |
  \time 4/4 a2 g |
  a b |
  \time 3/2 c1 b2 | \abr
  a2 b c |
  \time 4/4 c b |
  a1 |
  g2 a |
  b1 |
  a2 a |
  b2. a4 | \pbr
  g2 fis |
  g1\fermata \bar "||"
  \cadenzaOn fis4 a a a a a\breve a4 b2 b4 b a1 \cadenzaOff \bar "||"
  \time 4/4 a2 a |
  a1 |
  b2. b4 |
  b( a)
  g( a) |
  b2 b |
  a( g4 fis) |
  g2 g |
  g a |
  b a |
  fis 
  fis |
  fis4( e) d2 |
  cis1 |
  \time 3/2 fis2 fis g |
  \time 4/4 a1 |
  a4( g fis2) |
  g2
  a |
  a g |
  fis1 |
  g2 a |
  b a |
  g1( |
  a2) g4( fis) |
  \time 3/2 g2 g a |
  \time 4/4 b2.( a4 |
  g2) fis |
  g1\fermata \bar "||" \pbr
  \cadenzaOn a4 a\breve a4 b2 a1 \cadenzaOff \bar "||"
  \time 4/4 a2 a |
  b4( a) g( a) |
  b2( a) |
  g4( fis) g( a) |
  b2 a |
  b1 |
  a |
  a2 a |
  a( g) |
  a b |
  c( a) |
  b c |
  c( b) |
  \time 3/2 a1 a2 |
  \time 4/4 a a |
  a a |
  a a |
  a a |
  \time 3/2 a a a |
  \time 4/4 b2.( a4 |
  g2) fis |
  g1\fermata \bar "||"
  \cadenzaOn a4 a\breve a4 b2 b a1 \cadenzaOff \bar "||"
  \time 4/4 \partialTwo a2 |
  a a |
  a a |
  b1 |
  b4( a) g( a) |
  b2 a |
  \time 3/2 a1 a2 |
  \time 4/4 a a |
  b1 |
  b4( a) g( a) |
  b2 b |
  a1 |
  a2 a |
  \time 3/2 a a b |
  \time 4/4 c( a |
  b) c |
  c b |
  \time 3/2 a1 a2 |
  \time 4/4 a a |
  b2.( a4) |
  g2 fis4( g) |
  a1 |
  g\fermata \bar "||"
  a4( b2 a4) |
  g( a) b2 |
  a2( g4 fis) |
  g( a) b2 |
  a4( b2 a4) |
  g( a) b2 |
  b a4( g) |
  \time 3/2 a1 a2 |
  \time 4/4 a g |
  a b |
  \time 3/2 c1 b2 |
  a b c |
  \time 4/4 c b |
  a1 |
  g2 a |
  b1 |
  a2 a |
  b2. a4 |
  g2 fis |
  g1\fermata \bar "||" \abr
  \time 4/4 \partialTwo a2^\markup \italic "Статия 2" |
  a a |
  a1~ |
  a |
  a2 a |
  a a |
  a1 |
  ais2 b |
  fis1 |
  fis |
  a?2 g |
  a( b) |
  c( a) |
  b c |
  c b |
  a1 |
  a2 a |
  a a |
  g a |
  b2. a4 |
  g2 fis |
  g1\fermata \bar "||"
 
  \cadenzaOn a4^\markup \italic "Стих 73." a\breve a4 b2 b4 b b b a1 \cadenzaOff \bar "||"
  \time 4/4 \partialTwo a2 |
  a a |
  a1~ |
  a |
  a2 a |
  a a |
  a1 |
  ais2 b |
  fis fis 
  \time 3/2 fis1 a?2 |
  \time 4/4 a g |
  a b |
  c a |
  b b |
  b c |
  c b |
  \time 3/2 a1 a2 |
  \time 4/4 b1 |
  b2 b |
  a g4( fis) |
  g1\fermata \bar "||"
  
  \cadenzaOn a4 a\breve a4 b2 a1 \cadenzaOff \bar "||"
  \time 4/4 a2 a |
  a a4( gis) |
  a1 | a1 |
  \time 3/2 a2 a a |
  \time 4/4 a a |
  \time 3/2 a a a |
  \time 4/4 a( ais4 b) |
  fis2 fis |
  fis1 |
  a?2( g) |
  a( b) |
  c1 |
  b2 a |
  c b |
  a a |
  b1 |
  a2 a |
  g fis |
  g1\fermata \bar "||"
  
  \cadenzaOn fis4 fis\breve fis4 g2 g fis1 \cadenzaOff \bar "||"
  \time 4/4 a2.( gis4) |
  a2 a |
  a1 |
  a2 a |
  a a |
  a a |
  a( ais4 b) |
  fis2 fis |
  fis1 |
  fis |
  a?2 a |
  a b |
  c a |
  b c |
  c( b) |
  a1 |
  a2 a |
  a a |
  b1 |
  a2 a |
  g( fis) |
  g1\fermata \bar "||"
  
  \time 4/4 \partialTwo a2 |
  a a |
  a1~ |
  a |
  a2 a |
  a a |
  a1 |
  ais2 b |
  fis1 |
  fis |
  a?2 g |
  a( b) |
  c( a) |
  b c |
  c b |
  a1 |
  a2 a |
  a a |
  g a |
  b2. a4 |
  g2 fis |
  g1\fermata \bar "||"
  
  \time 4/4 a2.(^\markup \italic "Статия 3" g4 |
  fis1) |
  fis2( a?) |
  a1 |
  a |
  a2 g4( fis) |
  \time 3/2 g2 g g |
  \time 4/4 fis fis4( a?) |
  a2 g4( a) |
  b1 |
  a2 g |
  fis( e) |
  fis1\fermata \bar "||"
  
  \cadenzaOn fis4^\markup\italic"Стих 132." fis fis fis fis fis\breve fis4 fis2 e4 e fis1 \cadenzaOff \bar "||"
  a2.( g4 |
  fis2 e) |
  d( e |
  fis) fis |
  a a |
  a g |
  fis fis|
  fis( a?) |
  a1 |
  fis2 g |
  a2. g4 |
  fis2 e |
  d4( cis d e |
  \time 3/2 fis1) g2 |
  \time 4/4 a2 a |
  g2.->( fis4) |
  e2 fis |
  g1 |
  fis\fermata \bar "||"
  
  \cadenzaOn fis4 fis\breve fis4 g2 fis1 \cadenzaOff \bar "||"
  \time 4/4 a2.( g4) |
  fis2 fis |
  e1 |
  fis2 g |
  a1 |
  \time 3/2 a1 fis2 |
  fis fis e |
  \time 4/4 d4( cis d e ) |
  \time 3/2 fis1 b2 |
  \time 4/4 a2.( g4 |
  fis2) e |
  fis1\fermata \bar "||"
  
  \cadenzaOn fis4 fis\breve fis4 g2 g4 fis1 \cadenzaOff \bar "||"
  \time 4/4 a1 |
  a2 a |
  \time 3/4 fis fis fis |
  \time 4/4 fis( a?) |
  a1 |
  fis2 g |
  a2.( g4) |
  fis2 e |
  d4( cis d e) |
  fis2 g4( a) |
  \time 3/2 b2 a g4( fis) |
  g1 g2 |
  fis1\fermata \bar "|."
}

altvoice = \relative c' {
  \global
  \partial 4
  d4 |
  fis2 g |
  a fis |
  g1 |
  a4( g) fis( g) |
  fis1 |
  d2 e |
  fis( g) |
  fis1 |
  e2 fis |
  g fis |
  g( a) |
  a4( g fis g) |
  fis1 |
  \cadenzaOn d4 fis fis
  fis fis fis\breve fis4 g2 fis1 \cadenzaOff |
  fis4( g2 fis4) |
  e( fis) g2 |
  fis( e4 dis) |
  e( fis) g2 |
  fis4( g2 fis4) | e( fis)
  g2 | g fis4( e) |
  fis1 fis2 |
  fis e |
  fis g |
  a1 g2 |
  fis g a |
  a g | fis1 |
  e2 fis |
  g1 |
  fis2 fis |
  g2. fis4 |
  e2 dis |
  e1 |
  \cadenzaOn d?4 fis fis fis fis fis\breve fis4 g2 g4 g fis1 \cadenzaOff
  fis2 fis |
  fis1 |
  g2. g4 |
  g( fis)
  e( fis) |
  g2 g |
  fis( e4 dis) |
  e2 e |
  e fis |
  g fis |
  fis
  e4( d?) |
  cis2 b|
  ais1 |
  d2 d d |
  d1 |
  d |
  d2
  d |
  d d |
  d( fis) |
  e fis |
  g fis |
  g( e |
  fis) e4( dis) |
  e2 e 
  fis |
  g2.( fis4 |
  e2) dis |
  e1 |
  \cadenzaOn fis4 fis\breve fis4 g2 fis1 \cadenzaOff
  fis2 fis |
  g4( fis) e( fis) |
  g2( fis) |
  e4( dis) e( fis) |
  g2 fis |
  g1 |
  fis |
  fis2 fis |
  fis( e) |
  fis g |
  a( fis) |
  g a |
  a( g) |
  fis1 fis2 |
  fis fis |
  fis fis |
  fis fis |
  fis fis |
  fis fis fis |
  g2.( fis4 |
  e2) dis e1 |
  \cadenzaOn fis4 fis\breve fis4 g2 g fis1 \cadenzaOff
  fis2 |
  fis fis |
  fis fis |
  g1 |
  g4( fis) e( fis) |
  g2 fis |
  fis1 fis2 |
  fis fis |
  g1 |
  g4( fis) e( fis) |
  g2 g |
  fis1 |
  fis2 fis |
  fis fis g |
  a( fis | g) a |
  a g |
  fis1 fis2 |
  fis fis | g2.( fis4) e2 dis4( e) fis1 e | fis4( g2 fis4) e( fis)
  g2 | fis( e4 dis) |
  e( fis) g2 | fis4( g2 fis4) | e( fis)  g2 | g fis4( e) |
  fis1 fis2 | fis e | fis g | a1 g2 | fis g a |
  a g fis1 |
  e2 fis | g1 | fis2 fis | 
  g2. fis4 | 
  e2 dis | e1
  
  e2 |
  fis e4( d) |
  e( fis e d |
  cis1) |
  e2 e |
  fis e4( d) |
  cis( d e fis) |
  fis( e) d2 |
  cis( d) |
  cis1 |
  fis2 e |
  fis( g) |
  a( fis) |
  g a |
  a g |
  fis1 |
  fis2 fis |
  fis fis |
  e fis |
  g2. fis4 |
  e2 dis |
  e1 |
  
  \cadenzaOn fis4 fis\breve fis4 g2 g4 g g g fis1 \cadenzaOff
  e2 |
  fis e4( d) |
  e( fis e d |
  cis1) |
  e2 e |
  fis e4( d) |
  cis( d e fis) |
  fis( e) d2 |
  cis d |
  cis1 fis2 |
  fis e |
  fis g |
  a fis |
  g g |
  g a |
  a g |
  fis1 fis2 |
  g1 |
  g2 g |
  fis e4( dis) |
  e1
  
  \cadenzaOn fis4 fis\breve fis4 g2 fis1 \cadenzaOff
  e2 e |
  fis e |
  e4( fis e d ) |
  cis1 |
  e2 e e |
  e e |
  e e e |
  fis( e4 d) |
  cis2 d |
  cis1 |
  fis2( e) |
  fis( g) |
  a1 |
  g2 fis |
  a g |
  fis fis |
  g1 |
  fis2 fis |
  e dis |
  e1 |
  
  \cadenzaOn d?4 d\breve d4 d2 d d1 \cadenzaOff
  fis2( e) |
  e4( fis e d) |
  cis1 |
  e2 e |
  e e |
  e e |
  fis( e4 d) |
  cis2 d |
  cis1 |
  cis |
  fis2 fis |
  fis g |
  a fis |
  g a |
  a( g) |
  fis1 |
  fis2 fis |
  fis fis |
  g1 |
  fis2 fis |
  e( dis) |
  e1
  
  e2 |
  fis e4( d) |
  e( fis e d |
  cis1) |
  e2 e |
  fis e4( d) |
  cis( d e fis) |
  fis( e) d2 |
  cis( d) |
  cis1 |
  fis2 e |
  fis( g) |
  a( fis) |
  g a |
  a g |
  fis1 |
  fis2 fis |
  fis fis |
  e fis |
  g2. fis4 |
  e2 dis |
  e1 |
  
  fis2.( e4 |
  d2 cis) |
  d( e) |
  fis1 |
  fis |
  fis2 e4( dis) |
  e2 e e |
  d4( cis) d( e) |
  fis2 e4( fis) |
  g1 |
  fis2 e |
  d( cis) |
  d1 |
  
  \cadenzaOn d4 d d d d d\breve d4 d2 cis4 cis d1 \cadenzaOff
  fis2.( e4 |
  d2 cis )
  b2( cis |
  d) d |
  fis fis |
  fis e |
  d cis |
  d( e) |
  fis1 |
  d2 e |
  fis2. e4 |
  d2 cis |
  b4( ais b cis |
  d1) e2 |
  fis fis |
  e2.( d4) |
  cis2 d |
  e1 |
  d |
  
  \cadenzaOn d4 d\breve d4 e2 d1 \cadenzaOff
  fis2.( e4) |
  d2 d |
  cis1 |
  d2 e |
  fis1 |
  fis e2 |
  d d cis |
  b4( ais b cis) |
  d1 g2 |
  fis2.( e4 |
  d2) cis |
  d1 |
  \cadenzaOn d4 d\breve d4 d2 d4 d1 \cadenzaOff
  fis1 |
  e2 e |
  d d cis |
  d( e) |
  fis1 |
  d2 e |
  fis2.( e4) |
  d2 cis |
  b4( ais b cis) |
  d2 g4( fis) |
  g2 fis e4( d) |
  cis1 <cis e>2 |
  d1
  
  
  
  
}

tenorvoice = \relative c {
  \global
  \dynamicUp
  \partial 4
  d4 |
  d2 d |
  d d |
  d1 |
  <d d'>2 q |
  \arpeggioBracket q1\arpeggio |
  <a' c>2 <g b> |
  <fis a>( <d g>) | \abr
  <d d'>1\arpeggio |
  b'2 d |
  d d |
  d1 |
  fis,4 g a g |
  <d d'>1 \bar "||" |
  \cadenzaOn d'4 d d \abr
  d d d\breve d4 d2 d1 |
  <d, d'>1\arpeggio |
  b'4( d) d2 |
  c( b) |
  b4( d?) d2 |
  d1 |
  b4( d)
  d2 |
  d d |
  d1 d2 |
  d d |
  d d |
  d1 d2 |
  d d d |
  d d |
  d1 |
  b2 d |
  d1 |
  d2 d |
  d2. c4 |
  b2 b |
  b1 |
  \cadenzaOn d4 d d d d d\breve d4 d2 d4 d d1 \cadenzaOff
  d2 d |
  d1 |
  d2. d4 |
  d2 b4( d) |
  d2 d |
  a( b) |
  b b |
  b d? |
  d a |
  ais ais4( b) |
  fis2 fis |
  fis1 |
  a?2 a b |
  c1 |
  c4( b a2) |
  b2 c |
  c b |
  a( d) |
  b d |
  d d |
  b1~ |
  b2 b |
  b b d? |
  d2.( c4 |
  b2) b b1 
  \cadenzaOn d?4 d\breve d4 d2 d1 \cadenzaOff
  d2 d |
  d b4( d) |
  d2( c) |
  b b4( d?) |
  d2 d |
  d1 |
  d |
  d2 d |
  d1 |
  a2 g |
  fis( a) |
  g fis |
  fis( g) |
  d1 d'2 |
  d d |
  d d |
  d d |
  d d |
  d d d |
  d2.( c4 |
  b2) b |
  b1 |
  \cadenzaOn d?4 d\breve d4 d2 d d1 \cadenzaOff
  d2 |
  d d |
  d d |
  d1 |
  d2 b4( d) |
  d2 d |
  d1 d2 |
  d d | d1 | d2 b4( d) | d2 d | d1 | d2 d |
  d a g |
  fis( a | g) fis | fis g | d1 d'2 |
  d d | d2.( c4) | b2 b | b1 | b| <d d,>1 | b4( d)
  d2 | c( b) | b4( d?) d2 | d1 | b4( d) d2 | d d |
  d1 d2 | d d | d d | d1 d2 | d d d |
  d d | d1 | b2 d | d1 | d2 d | d2. c4 | b2 b | b1
  <a cis>2 |
  <a d> << { cis4( b) cis( d cis b a1) } \new Voice {\voiceThree a2 a1 a1} >>
  <a cis>2 q |
  <a d> << { cis4( b) a( b cis d) } \new Voice {\voiceThree a2 a1} >>
  cis2 b |
  ais( b) |
  ais1 |
  a?2 a |
  a( g) |
  fis( a) |
  g fis |
  fis g |
  d1 |
  d'2 d |
  d b |
  b d? |
  d2. c4 |
  b2 b |
  b1
  \cadenzaOn d?4 d\breve d4 d2 d4 d d d d1 \cadenzaOff
  <a cis>2 |<a d> << { cis4( b) cis( d cis b a1) } \new Voice {\voiceThree a2 a1 a1} >>
  <a cis>2 q |
  <a d> << { cis4( b) a( b cis d) } \new Voice {\voiceThree a2 a1} >>
  cis2 b |
  ais b |
  ais1 d2 |
  d d |
  <d a> <d g,> |
  <d fis,> <d a> |
  <d g,> <d d,> |
  q q |
  fis, g |
  d'1 d2 |
  <d g,>1 |
  d2 d |
  c b | b1 |
  
  \cadenzaOn d?4 d\breve d4 d2 d1 \cadenzaOff
  <a cis>2 q |<a d> <a cis>4( <gis b>) << { cis( d cis b) a1 } \new Voice {\voiceThree a1 a1} >>
  <a cis>2 q q|
  q q |
  q q q |
  <a d>( cis4 b) |
  ais2 b |
  ais1 |
  d,1 |
  a'2( g) |
  fis1 |
  g2 d |
  fis g |
  d d |
  d'1 |
  c2 c |
  b b |
  b1 |
  
  \cadenzaOn a4 a\breve a4 b2 b a1 \cadenzaOff
  <a d>2( <a cis>4 <gis b>) << { cis( d) cis( b) a1 } \new Voice {\voiceThree a2 a a1} >>
  <a cis>2 q |
  q q |
  q q |
  <a d>( cis4 b) |
  ais2 b |
  ais1 |
  ais |
  d,2 d |
  d g |
  fis a |
  g fis |
  fis( g) |
  d1 |
  d'2 d |
  d d |
  d1 |
  c2 c |
  b1 |
  b
  
  <a cis>2 |
  <a d> << { cis4( b) cis( d cis b a1) } \new Voice {\voiceThree a2 a1 a1} >>
  <a cis>2 q |
  <a d> << { cis4( b) a( b cis d) } \new Voice {\voiceThree a2 a1} >>
  cis2 b |
  ais( b) |
  ais1 |
  a?2 a |
  a( g) |
  fis( a) |
  g fis |
  fis g |
  d1 |
  d'2 d |
  d b |
  b d? |
  d2. c4 |
  b2 b |
  b1
  
  d2.( cis4 |
  b2 ais) |
  b( cis) |
  d1 |
  d2( a) |
  <b dis,>2 << { b } \new Voice { \voiceThree e,4( fis) } >> |
  b2 b b |
  b4( ais) b( cis) |
  d2 b4( d) |
  d1 |
  d2 b |
  a1 |
  a |
  
  \cadenzaOn a4 a a a a a\breve a4 a2 a4 a a1 \cadenzaOff
  d2.( cis4 |
  b2 ais) |
  fis( a? |
  a) a |
  a a |
  d cis |
  b ais |
  b( cis) |
  d1 |
  a2 a |
  a2. a4 |
  a2 a4( g) |
  fis2.( a?4 |
  a1) g2 |
  fis a |
  a1 |
  a2 a |
  a1 |
  a |
  \cadenzaOn a4 a\breve a4 a2 a1 \cadenzaOff
  a1 |
  a2 a |
  a1 |
  a2 g |
  fis1 |
  a ais2 |
  b b ais |
  fis2.( a?4) |
  a1 d2 |
  d2.( b4 |
  a2) a |
  a1 |
  \cadenzaOn a4 a\breve a4 b2 b4 a1 \cadenzaOff
  a1 |
  a2 a |
  b b ais |
  b( cis) |
  d1 |
  a2 a |
  a2.( cis4) |
  b2 ais |
  fis2.( a?4) |
  a2 g4( c) |
  b( d) d2 a |
  a1 a2 |
  a1
  
  
  
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4
  d4 |
  d2 d |
  d d |
  g,1 |
  d'2 d |
  d1 |
  d2 d |
  d1 | \abr
  d |
  e2 d |
  <g, g'> d' |
  d1 |
  <d d'> |
  d\fermata \bar "||"
 \cadenzaOn d4 d d \abr
 d d d\breve d4 
 << { g,( b) } \new Voice { \voiceFour g'2 } >> \voiceTwo d1 \cadenzaOff
 d1 |
 e4( d) g,2 |
 a( b) |
 e4( d?) <g g,>2 |
 d1 |
 e4( d) 
 <g g,>2 |
 q d |
 d1 d2 |
 d d |
 d d |
 fis1 g2 |
 d2 <g g,> <fis fis,> |
 <fis fis,> <g g,> |
 d1 |
 e2 d |
 <g g,>1 |
 d2 d |
 g,2. a4 
 b2 b |
 e1\fermata
 \cadenzaOn d?4 d d d d d\breve d4 g2 <g g,>4 <g b,> d1 \cadenzaOff |
 d2 d |
 d1 |
 <g g,>2. q4 |
 <g g,>( d) e( d)
 g,2 b |
 d( b) |
 e e |
 e d? |
 g,4( b) d2 |
 cis cis4( b) |
 ais2 b |
 \arpeggioBracket <fis fis'>1\arpeggio
 d'2 d d |
 d1 |
 d |
 <g g,>2 <fis fis,> |
 q <g g,> |
 d1 |
 e2 d |
 <g g,> d |
 e1( |
 b2) b |
 e e d? |
 g,2.( a4 |
 b2) b |
 e1\fermata
 \cadenzaOn d?4 d\breve d4 << { g,( b) } \new Voice { \voiceFour g'2 } >> \voiceTwo d1 \cadenzaOff
 d2 d |
 g4( d) e( d) |
 <g g,>2( d) |
 e4( b) e( d?) |
 <g g,>2 d |
 <g g,>1 |
 d1 |
 d2 d |
 d1 |
 d2 d |
 d1 |
 d2 d |
 d1 |
 d d2 |
 d d |
 d d |
 d d |
 d d |
 d d d |
 g,2.( a4 |
 b2) b |
 e1\fermata 
 \cadenzaOn d?4 d\breve d4 <g g,>2 <g b,> d1 \cadenzaOff
 d2 |
 d d |
 d d |
 <g g,>1 |
 q4( d) e( d) |
 <g g,>2 d |
 d1 d2 | d d | <g g,>1 | d2 e4( d) | <g g,>2 <g b,> | d1 | d2 d |
 d2 d d | d1~ | d2 d | d d | d1 d2 |
 d d |
 g,2.( a4) | b2 b | <b dis>1 | <e e,>\fermata | d | e4( d) g,2 |
 a( b) | e4( d?) <g g,>2 | d1 | e4( d) <g g,>2 | q d |
 d1 d2 | d d | d d | fis1 g2 | d <g g,> <fis fis,> |
 q <g g,> | d1 | e2 d | <g g,>1 | d2 d | g,2. a4 | b2 b e1\fermata
 <e a,>2 |
 <fis a,> << { \voiceFour e4( d) e fis e d } \new Voice {\voiceTwo a2 a1~ <a e'>1 } >>
 <a e'>2 q |
 <a fis'> << { \voiceFour e'4( d) cis( d e fis) } \new Voice {\voiceTwo a,2 a1 } >>
 <fis fis'>2 q |
 q1 |
 q |
 d'2 d |
 d1 |
 d |
 d2 d |
 d d |
 d1 |
 d2 d |
 d dis |
 e d? |
 g,2. a4 |
 b2 b |
 e1\fermata
 
 \cadenzaOn d?4 d\breve d4 <g g,>2 q4 q q <g b,> d1 \cadenzaOff
 
 <e a,>2 |
 <fis a,> << { \voiceFour e4( d) e fis e d } \new Voice {\voiceTwo a2 a1~ <a e'>1 } >>
 <a e'>2 q |
 <a fis'> << { \voiceFour e'4( d) cis( d e fis) } \new Voice {\voiceTwo a,2 a1 } >>
 <fis fis'>2 q |
 q q |
 q1 d'2 |
 d d |
 d d |
 d d |
 g, g |
 g d' |
 d d |
 d1 d2 |
 g,1 |
 g2 g |
 a b |
 e1\fermata
 
 \cadenzaOn d?4 d\breve d4 << { \voiceTwo g,( b) } \new Voice { \voiceFour g'2 } >> d1 \cadenzaOff
 <e a,>2 q |
 <fis a,> << { \voiceTwo a,4( <e e'>) a1 } \new Voice {\voiceFour e'2 e4( fis e d) <a e'>1 } >>
 <e' a,>2 q q |
 q q |
 q q q |
 <fis d>( <fis fis,>) |
 q q |
 q1 |
 d |
 d |
 d |
 d2 d |
 d d |
 d d |
 g,1 |
 a2 a |
 b b |
 e1\fermata
 
 \cadenzaOn d?4 d\breve d4 g,2 b d1 \cadenzaOff
 
 <d fis>2( << { \voiceTwo a4 <e e'>) a2 a } \new Voice {\voiceFour e'2 e4( fis) e( d) <a e'>1 } >>
 < a e'>2 q |
 q q |
 q q |
 <d fis>( <fis, fis'>) |
 q q |
 q1 |
 q |
 d'2 d |
 d d |
 d d |
 d d |
 d1 |
 d
 d2 d |
 d d |
 g,1 |
 a2 a |
 b1 |
 e1\fermata 
 
 <e a,>2 |
 <fis a,> << { \voiceFour e4( d) e fis e d } \new Voice {\voiceTwo a2 a1~ <a e'>1 } >>
 <a e'>2 q |
 <a fis'> << { \voiceFour e'4( d) cis( d e fis) } \new Voice {\voiceTwo a,2 a1 } >>
 <fis fis'>2 q |
 q1 |
 q |
 d'2 d |
 d1 |
 d |
 d2 d |
 d d |
 d1 |
 d2 d |
 d dis |
 e d? |
 g,2. a4 |
 b2 b |
 e1\fermata
 
 \voiceFour d2.( e4 |
 << { fis2 fis,) } \new Voice {\voiceTwo fis'1 } >> b,2( a?) |
 d1 |
 d |
 b2 b |
 e e e |
 b4( <fis fis'>) b( a?) |
 d2 e4( d) |
 <g g,>1 |
 d2 g, |
 a1 |
 d\fermata 
 
 \cadenzaOn d4 d d d d d\breve d4 d2 a4 a d1 \cadenzaOff
 d2.( e4 |
 << { fis2 fis,) } \new Voice { fis'1 } >>
 b,2( a? |
 d) d |
 d d |
 d a |
 b <fis fis'> |
 b( a?) |
 d1 |
 d2 d |
 d2. cis4 |
 d2 a |
 b4( <fis fis'> b a? |
 d1) d2 |
 d d |
 cis2.( d4) |
 a2 a |
 <a cis>1 |
 d\fermata |
 \cadenzaOn d4 d\breve d4 <cis a>2 d1 \cadenzaOff
 d2.( cis4) |
 d2 fis, |
 a1 |
 d2 d |
 d1 |
 d cis2 |
 b <b fis'> <fis fis'> |
 b4( <fis fis'> b a?) |
 d1 g,2 |
 d'2.( g,4 |
 a2) a |
 d1\fermata |
 \cadenzaOn d4 d\breve d4 <g g,>2 <g b,>4 d1 \cadenzaOff
 d1 |
 cis2 cis |
 b b <fis fis'> |
 b( a?) |
 d1 |
 d2 d |
 d2.( e4) |
 fis2 <fis fis,> |
 b,4( <fis fis'> b a?) |
 d2 e4( d) |
 g,2 a cis4( d) |
 e1 a,2 |
 d1\fermata
 
 
 
}

texts = \lyricmode {
Бла -- го -- сло -- вен е -- си, Го -- спо -- ди, на -- у -- чи __
мя о -- прав -- да -- ни -- ем __ тво -- им. Бла -- же -- ни
не -- по -- рочнии_в_путь,_ходящии_в_законе го -- спод -- ни.
Жизнь во гро -- бе __ по -- ло -- жил -- ся 
е -- си, Хри -- сте, и ан -- гель -- ска -- я во -- ин -- 
ства у -- жа -- са -- ху -- ся, сниз -- хо -- жде -- ни -- е сла -- вя --

ще тво -- е. Бла -- же -- ни ис -- пы -- тающии_свидения_его,_всем_серд -- 
цем взы -- щут е -- го. Жи -- во -- те, ка -- ко у --
ми -- ра -- е -- ши; __ ка -- ко и во гро -- бе о --
би -- та -- е -- ши; смер -- ти же цар -- ство __ раз --
ру -- ша -- е -- ши, и от а -- да мерт -- вы -- я воз --
ста -- вля -- е -- ши.

Сла -- ва_Отцу_и_Сыну,_и_Свято -- му Ду -- ху. Во -- спе -- 
ва -- ем, Сло -- ве, те -- бе всех Бо --
га, со От -- цем и Свя -- тым тво -- им Ду --
хом, и сла -- вим бо -- же -- ствен -- но -- е тво -- е по -- 
гре -- бе -- ни -- е. И ныне,_и_присно,_и_во_веки ве -- ков,
а -- минь. Бла -- жим тя, Бо -- го -- ро -- ди -- це чи -- ста --

я, и по -- чи -- та -- ем три -- днев -- но -- е по -- гре --
бе -- ни -- е Сы -- на тво -- е -- го и 
Бо -- га на -- ше -- го вер -- но. Жизнь во 
гро -- бе __ по -- ло -- жил -- ся е -- си, Хри --
сте, и ан -- гель -- ска -- я во -- ин -- ства у -- жа -- 
са -- ху -- ся, сниз -- хо -- жде -- ни -- е сла -- вя -- ще тво -- е.

До -- стой -- но есть __ ве -- ли -- ча -- ти тя, 
Жиз -- но -- дав -- ца, на кре -- сте ру -- це
про -- стер -- ша -- го, и со -- круш -- ша -- го дер -- жа -- ву вра -- жи -- ю.
Ру -- це_твои_сотвористе_мя,_и_создасте_мя:_вразуми_мя,_и_научу -- ся за -- по -- ве -- дем тво --
им. До -- стой -- но есть __ ве -- ли -- ча --
ти тя, всех Зиж -- ди -- те -- ля: тво -- и -- ми

бо стра -- дан -- ми и -- ма -- мы без -- стра -- сти -- е, из -- бавль -- ше -- ся
тле -- ни -- я.
Сла -- ва_Отцу,_и_Сыну,_и_Свято -- му Ду -- ху. Без -- на -- чаль --
не __ Бо -- же, со -- при -- сно -- сущ -- не Сло --
ве, и Ду -- ше Свя -- тый, Пра -- во --
слав -- ны -- я у -- кре -- пи на рат -- ны -- я, я -- ко благ.

И ныне,_и_присно,_и_во_веки ве -- ков, а -- минь. Жизнь
рожд -- ша -- я, пре -- не -- по -- роч -- на -- я, чи -- ста -- я
Де -- во, у -- то -- ли цер -- ков -- ны -- я со -- блаз -- ны,
и по -- даждь мир, я -- ко бла -- га -- я.
До -- стой -- но есть __ ве -- ли -- ча -- ти тя,
Жиз -- но -- дав -- ца, на кре -- сте ру -- це
про -- стер -- ша -- го, и со -- круш -- ша -- го дер -- жа -- ву вра -- жи -- ю.

Ро -- ди  вси песнь по -- гре -- бе -- ни -- ю
тво -- е -- му при -- но -- сят, Хри -- сте мой.
При -- зри на мя и помилуй_мя_по_суду_любя -- щих и -- мя тво -- е.
Снем __ с_дре -- ва, и -- же от а -- ри -- ма --
θе -- а, пла -- ща -- ни -- це -- ю об -- вив __

во гро -- бе тя по -- гре -- ба -- ет.
Сла -- ва_Отцу,_и_Сыну,_и_Свято -- му Ду -- ху. О, Тро -- и -- 
це, Бо -- же мой! От -- че, Сы -- не и Ду --
ше, по -- ми -- луй мир. И ныне,_и_присно,_и_во_веки
ве -- ков, а -- минь. Ви -- де -- ти тво -- е -- го Сы -- 
на во -- скре -- се -- ни -- е, Де -- во, спо --
до -- би тво -- я ра -- бы.

}

\score {
%  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
  >>
%  }  % transposeµ
  \layout {}
  \midi {
    \tempo 4=120
  }
}

