\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Hej, w Dzien' Narodzenia"
  subtitle = " "
  %opus = "№ 140"
  %composer = \markup { \column { "т.: Йозеф Мор, 1816г" "м.: Франц Грубер, 1818г" }}
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  %ragged-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globali = {
  \key c \major
  \time 3/4
  \secondbar
  \tempo "Allegretto"
}

global = {
  \globali
  \autoBeamOff
  \override MultiMeasureRest.expand-limit = #3
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

toleft = \change Staff="left"
toright = \change Staff="right"

toup = { \showStaffSwitch \toright}
todown = { \hideStaffSwitch \toleft}

flute = \relative c'' {
  \globali
  c8. d16 e4-. f-. |
  g2. |
  e2 d4 |
  
  % m4
  c2 c4 |
  c2 c4 |
  c8. b16 c4 d | \abr
  e2 f8 e |
  d8. c16 d4 f |
  e c2 |
  c8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c2 \abr
  f4 f f |
  e2. |
  d4 d c |
  b2. |
  c8. d16 e4 f |
  g2 e8 d |
  c2. |
  f2 f4 | \abr
  e8. d16 e4 g |
  fis2 fis4 |
  g2. | % m24 finished
  
  \ottava #1 c8. d16 e4 f |
  g2 e8 d |
  c2. \ottava #0
  
  % m28
  R2.*2 \abr
  R2.*2 |
  c,8. d16 e4 f |
  g2. |
  e2 d4 | %m34 finished
  c2.~ |
  c | \abr
  
  c2. |
  e |
  d2 b4 |
  c2. |
  e |
  g | \abr
  
  f2 d4 |
  e2. |
  f2 f4 |
  e2. |
  fis |
  g | \abr
  
  c,8. d16 e4 f |
  g2 e8 d |
  c2. |
  f2 f4 |
  e8. d16 e4 g |
  fis2 fis4 |
  g2. \abr
  
  \ottava #1
  c8. d16 e4 f |
  g2 e8 d |
  c2. \ottava #0 |
  
    % m28
  R2.*2 \abr
  R2.*2 |
  c,8. d16 e4 f |
  g2. |
  e2 d4 | %m34 finished
  
  % m4
  c2 c4 |
  c2 c4 |
  c8. b16 c4 d | \abr
  e2 f8 e |
  d8. c16 d4 f |
  e c2 |
  c8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c2 \abr
  f4 f f |
  e2. |
  d4 d c |
  b2. |
  c8. d16 e4 f |
  g2 e8 d |
  c2. |
  f2 f4 | \abr
  e8. d16 e4 g |
  fis2 fis4 |
  g2. | % m24 finished
  
    \ottava #1
  c8. d16 e4 f |
  g2 e8 d |
  c2.\fermata \ottava #0 |
}

flutetwo = \relative c'' {
  \globali
  c2. |
  c2. |
  g2 f4 |
    
  % m4
  e2.~ |
  e |
  s2.*8
  d'4 d d |
  c2. |
  a4 a a |
  g2. |
  c8. b16 c4 d |
  e2 c8 b |
  g2. |
  d'2 d4 \abr
  c2 c4 |
  d2 c4 |
  b2 d4 | % m24 finished
  
  
  e8. f16 e4 d |
  e2 g8 f |
  e2. |
  
  % m28
  R2.*4 |
  c2. |
  c |
  b | %m34 finished
  g~ |
  g |
  
  g2. |
  c |
  b |
  g |
  c |
  e |
  d2 b4 |
  c2. |
  d2 d4 |
  c2. |
  d2 c4 |
  b8. a16 b4 g |
  c8. d16 e4 f |
  g2 e8 d |
  c2. |
  d2 d4 |
  c2 c4 |
  d2 c4 |
  b2 d4 |
  
  e8. f16 e4 d |
  e2 g8 f |
  e2.
  
   % m28
  R2.*4 |
  c2. |
  c |
  b | %m34 finished
  
   % m4
  e,2.~ |
  e |
  s2.*8
  d'4 d d |
  c2. |
  a4 a a |
  g2. |
  c8. b16 c4 d |
  e2 c8 b |
  g2. |
  d'2 d4 \abr
  c2 c4 |
  d2 c4 |
  b2 d4 | % m24 finished
  
  e8. f16 e4 d |
  e2 g8 f |
  e2. \fermata
  
}

clarinet = \relative c' {
  \globali
  R2. |
  c8. d16 e4-. f-. |
  g2 f4 |
    
  % m4
  e2 e4 |
  e2 e4 |
  c8.\mf d16 e4 f | \abr
  g2 a8 g |
  f8. e16 f4-. a-. |
  g e2 |
  e8. d16 e4 f |
  g2 a8 g |
  f8. e16 f4 a |
  g e2 | \abr
  
  g4 a b |
  c2. |
  d,4 e fis |
  g2. |
  g2 g4 |
  c2 g8 f |
  e2. |
  g2 g4 |
  g2. |
  a2 a4 |
  g2. | % m24 finished
  
  g2 g4 |
  g2 b4 |
  c2. |
  
  % m28
  f,2 f4 |
  e8. d16 e2 |
  d2 c4 |
  b8. a16 b2 |
  R2. |
  c8. d16 e4 f |
  g2 f4 | %m34 finished
  e2 e4 |
  e2 e4 |
  
  e2. |
  g |
  f2 d4 |
  e2. |
  g4 e g |
  c2. |
  b4 g f |
  e2. |
  g4 a b |
  c2. |
  a2 c4 |
  b2. |
  c,8. d16 e4 f |
  g2 g8 f |
  g2. |
  g2 g4 |
  g2. |
  a2 a4 |
  g2.
  
  g2 g4 |
  g2 b4 |
  c2. |
  
  % m28
  f,2 f4 |
  e8. d16 e2 |
  d2 c4 |
  b8. a16 b2 |
  R2. |
  c8. d16 e4 f |
  g2 f4 | %m34 finished
 
   % m4
  e2 e4 |
  e2 e4 |
  c8.\mf d16 e4 f | \abr
  g2 a8 g |
  f8. e16 f4-. a-. |
  g e2 |
  e8. d16 e4 f |
  g2 a8 g |
  f8. e16 f4 a |
  g e2 | \abr
  
  g4 a b |
  c2. |
  d,4 e fis |
  g2. |
  g2 g4 |
  c2 g8 f |
  e2. |
  g2 g4 |
  g2. |
  a2 a4 |
  g2. | % m24 finished
  
  g2 g4 |
  g2 g4 |
  g2.\fermata
}

violinone = \relative c' {
  \globali
  R2.
  R2.
  c2 b4 |
    
  % m4
  g'2.~ |
  g |
  g( |
  e) |
  f |
  g |
  c4 g c |
  e2. |
  d |
  c |
  f,2 f4 |
  e8. d16 e4 g |
  d2 c4 |
  b8. a16 b4 g' |
  c,8. d16 e4 f |
  g2 e8 d |
  c2. |
  b'2 b4 |
  c8. b16 c4 e |
  d2 c4 |
  b8.a16 b4 g | % m24 finished
  
  e2 f4 |
  e2 f4 |
  e2. |
  
  % m28
  f2 f4 |
  e8. d16 e4( c'8) r |
  d,2 c4 |
  b8. a16 b4( g'8) r |
  g2. |
  R2.*2 | %m34 finished
  e2.~ |
  e
  
  c8. d16 e4 f |
  g2 a8 g |
  f8. e16 f4 a |
  g e2 |
  c'8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c2 |
  g g4 |
  g2. |
  fis2( a4) |
  g2. |
  c,8. d16 e4 f |
  g2 e8 d |
  e2. |
  b'2 b4 |
  c8. b16 c4 e |
  d2 c4 |
  b8. a16 b4 g |
  
  e2 e4 |
  e2 f4 |
  e2. |
  
    % m28
  f2 f4 |
  e8. d16 e4( c'8) r |
  d,2 c4 |
  b8. a16 b4( g'8) r |
  g2. |
  R2.*2 | %m34 finished
  
    % m4
  g2.~ |
  g |
  g( |
  e) |
  f |
  g |
  c4 g c |
  e2. |
  d |
  c |
  f,2 f4 |
  e8. d16 e4 g |
  d2 c4 |
  b8. a16 b4 g' |
  c,8. d16 e4 f |
  g2 e8 d |
  c2. |
  b'2 b4 |
  c8. b16 c4 e |
  d2 c4 |
  b8.a16 b4 g | % m24 finished
  
  c,8. d16 e4 f |
  g2 g8 f |
  e2.\fermata
}

violintwo = \relative c' {
  \globali
  R2.
  R2.
  c2 b4 |
    
  % m4
  c2 c4 |
  c2 c4 |
  e2. |
  c |
  d |
  e |
  e |
  c' |
  b4 g f |
  e2.
  f2 f4 |
  e8. d16 e4 g |
  d2 c4 |
  b8. a16 b2 |
  c2 c4 |
  c2. |
  c2. |
  g'4 a b |
  g2. |
  fis2 fis4 |
  g2. |  % m24 finished
  c,2 c4 |
  c2 b4 |
  c2. |
  
  % m28
  s2.*4 |
  c2. |
  c8. d16
  e4 f |
  c2 b4 | %m34 finished
  
  c2 c4 |
  c2 c4 |
  
  c8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c2 |
  e8. d16 e4 f |
  g2 a8 g |
  f8. e16 f4 a |
  g e2 |
  f f4 |
  e8. d16 e4 g |
  fis2( d4) |
  d2. |
  c8. d16 e4 f |
  g2 e8 d |
  c2. |
  g'4 a b |
  g2. |
  fis |
  g |
  
  c,2 c4 |
  c2 b4 |
  c2. |
  
    % m28
  s2.*4 |
  c2. |
  c8. d16
  e4 f |
  c2 b4 | %m34 finished
  
    % m4
  c2 c4 |
  c2 c4 |
  e2. |
  c |
  d |
  e |
  e |
  c' |
  b4 g f |
  e2.
  f2 f4 |
  e8. d16 e4 g |
  d2 c4 |
  b8. a16 b2 |
  c2 c4 |
  c2. |
  c2. |
  g'4 a b |
  g2. |
  fis2 fis4 |
  g2. |  % m24 finished
  
  c,8. d16 e4 f |
  g2 e8 d |
  c2.\fermata
}

alto = \relative c' {
  \globali
  R2.
  R2. 
  g2. |
    
  % m4
  g~ |
  g |
  \repeat unfold 8 { g2 g4 }
  d'2 d4 |
  c2. |
  a2 a4 |
  g2 g4 |
  g2 g4 |
  g2 g4 |
  g2. |
  f'2 f4 |
  e2. |
  d2 d4 |
  d2. |  % m24 finished
  
  g,2 g4 |
  g2 g4 |
  g2. |
  
  % m28
  g4( a) b-. |
  c2. |
  d,4 e fis |
  g2. |
  R2. |
  R2. |
  g2 g4 | %m34 finished
  
  \repeat unfold 10 { g2 g4 }
  
  d'2 d4 |
  c2. |
  a2 a4 |
  g2 g4 |
  c8. d16 c4 c |
  b2 b4 |
  g2. |
  f'2 f4 |
  e2. |
  d2 d4 |
  d2. |
  
  g,2 g4 |
  g2 g4 |
  g2. |
  
    % m28
  g4( a) b-. |
  c2. |
  d,4 e fis |
  g2. |
  R2. |
  R2. |
  g2 g4 | %m34 finished
  
    % m4
  g2.~ |
  g |
  \repeat unfold 8 { g2 g4 }
  d'2 d4 |
  c2. |
  a2 a4 |
  g2 g4 |
  g2 g4 |
  g2 g4 |
  g2. |
  f'2 f4 |
  e2. |
  d2 d4 |
  d2. |  % m24 finished
  
  c8. d16 c4 c |
  b2 b4 |
  g2.\fermata
}


cello = \relative c {
  \globali
   R2.
   R2.
   <g d'>2 q4 |
     
  % m4
   c2 c4 |
   c2 c4 |
   <c g'>2 q4 |
   q2 q4 |
   <g d'>2 q4 |
   <c g'>2 q4 |
   q2 q4 |
   q2 q4 |
   <g d'>2 q4 |
   <c g'>2 q4 |
   g'4 a b |
   c2. |
   d,4 e fis |
   g2. |
   c,2 c4 |
   c2 g4 |
   c2. |
   g'4 a b |
   c2. |
   d,4 e fis |
   g2. | % m24 finished
   
   c,2 c4 |
   g2 g4 |
   c2. |
   
   % m28
   g'4( a) b-. |
   c2. |
   d,4 e fis |
   g2. |
   R2. |
   R2. |
   <d g,>2 q4 | %m34 finished
   
   c2 c4 |
   c2 c4 |
   
   c2 c4 |
   c2 c4 |
   <d g,>2 q4 |
   c2 c4 |
   c2 c4 |
   c2 c4 |
   <d g,>2 q4 |
   c2 c4 |
   g' a b |
   c2. |
   d,4 e fis |
   g2. |
   <g c,>2 q4 |
   <d g,>2 q4 |
   <g c,>2. |
   g4 a b |
   c2. |
   d,4 e fis |
   g2.
   
   c,2 c4 |
   g2 g4 |
   c2.
   
      % m28
   g'4( a) b-. |
   c2. |
   d,4 e fis |
   g2. |
   R2. |
   R2. |
   <d g,>2 q4 | %m34 finished
   
     % m4
   c2 c4 |
   c2 c4 |
   <c g'>2 q4 |
   q2 q4 |
   <g d'>2 q4 |
   <c g'>2 q4 |
   q2 q4 |
   q2 q4 |
   <g d'>2 q4 |
   <c g'>2 q4 |
   g'4 a b |
   c2. |
   d,4 e fis |
   g2. |
   c,2 c4 |
   c2 g4 |
   c2. |
   g'4 a b |
   c2. |
   d,4 e fis |
   g2. | % m24 finished
   
   <g c,>2 q4 |
   <d g,>2 q4 |
   c2.\fermata
}

rup = \relative c'' {
  \globali
  
  c8. d16 e4-. f-. |
  <g c,>2. |
  <e g,>2 <d f,>4 |
  
  %m4
  <c g>2.--~\> |
  q |
  g2.\!~ |
  g |
  g~ |
  g |
  \breathe c8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c s4 |
  <b g d>2 q4 |
  c8. b16 c4 g |
  d'2. |
  b8. a16 b4 g |
  <c g e>2 <d f,>4 |
  s2 <b g d>4( |
  <c g e>) s2 |
  <f d g,>2 q4 |
  e8. d16 e4 g |
  d2. |
  b8. a16 b4 g |
  c8. <d b>16 <e c>4 <f d> |
  <g e c>2 e8 d |
   s2. |
  \oneVoice f,2-- f4-.
  \voiceOne
  s4 e-. c'4-. |
  s2. |
  s2 b4-. |
  c8. d16 e4 f |
  <g c,>2. |
  <e g,>2 <d f,>4 |
  <c g>2.~ |
  q |
  c8. b16 c4 d |
  e2 f8 e |
  d8. c16 d4 f |
  e c2 |
  
  <c e,>8. <b d,>16 <c e,>4 <d f,> |
  <e g,>2 <f a,>8 <e g,> |
  <d f,>8. <c e,>16 <d f,>4 <f a,> |
  <e g,>4 <c e,> s |
  b4( c) d-. |
  <c g>2. |
  a4 b c |
  b8. a16 b4 g |
  <c e,>8. <b d,>16 <c e,>4 <d f,> |
  <e c g>2 <c e,>8 <b d,> |
  <c e,>2 s4 |
  s2. |
  e8. d16 e4 g |
  s2. |
  b,8. a16 b4 g |
  g2. |
  s2. |
  s2. |
  f'2 f4 |
  e8. d16 e4 c' |
  d,2 c4 |
  b8. a16 b2 |
  c8. d16 e4 f |
  s2. |
  <e g,>2 <d f,>4 |
  <d g>2.~ |
  q |
  
  c,8. <d \parenthesize b>16 <e \parenthesize c>4 <f d> |
  <g e>2 <a f>8 <g e> |
  <f d>8. <e c>16 <f d>4 <a f> |
  <g e> <e \parenthesize c>2 |
  <c' e,>8. <b d,>16 <c e,>4 <d f> |
  <e g,>2 <f a,>8 <e g> |
  <d f,>8. <c e,>16 <d f,>4 <f a,> |
  <e g,> <c e,> s |
  b c d |
  <c g>2.
  a4 b c |
  b8. a16 b4 g |
  <c c,>8. <d d,>16 <e e,>4 <f f,> |
  g2 e8 d |
  c4 s2 |
  s2. |
  e8. d16 e4 g |
  s2. |
  b,8. a16 b4 g |
  <c e,>8. <b d,>16 <c e,>4 <d f,> |
  <e c g>2 <e g,>8 <d f,> |
  <c e,>2.
}

rdown = \relative c'' {
  \globali
  c2. |
  s2.
  s2.
  e,2( e4) |
  e2 e4-. |
  <e c>2 <f d>4 |
  <e c>2 q4 |
  <d b>2 q4 |
  <e c>2 q4 |
  g2. |
  g |
  f2 g4 |
  g e 
  \autoBeamOff c8\glissando \voiceOne e' \voiceTwo \autoBeamOn
  s2. |
  <g, e>2 e4 |
  <a fis>2 <c a>4 |
  <d g,>2. |
  s2.
  <e c g>2 s4 |
  s4 \todown \voiceOne g,,4\glissando \toright  e'' \voiceTwo
  s2. |
  <c g>2.
  <c fis, d>2 <c a d,>4 |
  <g d>2 d4 |
  g2. |
  s2 <b g>4 |
  <c g e>2. |
  s2.
  e,8. d16 e2
  d2 c4 |
  b8. a16 b2 |
  c'2. |
  s2. |
  s2. |
  e,2\> e4 |
  e2 e4\! |
  
  g2.
  g |
  f |
  g |
  s |
  s |
  s |
  s2 \todown \autoBeamOff \voiceOne g,8\glissando \toright \voiceTwo c' \autoBeamOn 
  <g d>2. |
  e8. d16 e4 c |
  <fis d'>2. |
  <g d'> |
  g2 g4 |
  s2 g4 |
  s2 \todown \autoBeamOff \voiceOne g,8\glissando \toright \voiceTwo e'' \autoBeamOn
  <f d b g>2 q4 |
  <c g>2. |
  <d a fis>2 <d a d,>4 |
  <g, d>2 <d b>4 |
  <e c'>2 <f d'>4 |
  <g c e>2 <d b'>4 |
  <e g c>2.
  s
  s
  s
  s
  s
  <c g'>
  
  s
  e2 e4
  e2 e4 |
  
  s2. s s s s s s
  s2 \todown \autoBeamOff g,8\glissando \toright \voiceOne e'' \voiceTwo \autoBeamOn
  <g, d>2. |
  e8. d16 e4 c |
  <fis d'>2. |
  <g d'>
  s
  g2 g8 f |
  e4 \todown \voiceOne g,4\glissando \toright \voiceTwo e'' 
  <f d b g>2 q4 |
  <c g>2. |
  <d a fis>2 <c a d,>4 |
  <g d>2 <d b>4 |
  g2 g4 |
  
}

lup = \relative c {
  \globali
  s2.*11
  <d g>2~ q4 |
  s2.
  g
  s
  d'-.
  s2.*5
  g,2.
  s
  d
  s2.*9
  c'4 b g |
  s2.*4
  g2.
  s2.*5
  g2. |
  g8. f16 g4 e |
  d'2. |
  d8. c16 d4 g |
  s2.*3
  d,2. |
  g8. f16 g4 e |
  s2. |
  d8. c16 d4 g |
  s2.*9 
  c4 b g |
  s2.*10
  g2. |
  g8. f16 g4 e |

  d'2. |
  d8. c16 d4 b |
  s2.*3
  d,2. |
  g8. f16 g4 e |
  s2. 
  d8. c16 d4 b |
  s2.*3
}

ldown = \relative c'

{
  \globali
  <c g'>2.
  c8. d16 e4-. f-. |
  <c g>2-- <g g,>4 |
  <c g c,>2-- <g c,>4-. |
  \repeat unfold 3 { <g c,>2-- q4-. }
  <g g,>2-- q4-. |
  <g c,>2-- q4-. |
  <g c c,>2 q4 |
  q2 q4 |
  g,2 g4 |
  <c g'>2 q4 |
  g4 a b |
  <c g'>2-- q4-. |
  d4 e fis |
  <g d'>2-. q4-. |
  <c g c,>2 q4 |
  q2 <g d g,>4 |
  <c, g'>4 <c c,>2 |
  
  <g g'>4 <a a'> <b b'> |
  <c c'>2 q4 |
  <d d,>4 <e e,> <fis fis,> |
  <g g,>2 q4 |
  \ottava #-1 <c, g c,>2 q4 \ottava #0
  <c' g c,>2 <g d g,>4 |
  \ottava #-1 <g, c,>2. \ottava #0
  
  g'4( a b |
  c2.) |
  d,4( e fis |
  g2.) |
  <c g'>2. |
  c8. d16 e4 f |
  
  g,2 g,4 |
  <c g' c>2 <c g'>4 |
  q2 q4 |
  <c g' c>2 q4 |
  q2 q4 |
  <g d'>2 q4 |
  <c g' c>2 q4
  
  q2 q4 |
  q2 q4 |
  <g d' g>2 q4 |
  <c g' c>2 <c g c,>4 |
  g4( a) b-. |
  c2 c4 |
  
  d e fis |
  g2 g4 |
  <c, g' c>2 q4 |
  q2 <g d' g>4 |
  <c g' c>4 <c g c,>2 |
  
  <g g'>4 <a a'> <b b'> |
  <c c'>2. |
  <d d,>4 <e e,> <fis d fis,> |
  <g g,>2. |
  <c g c,>2 q4 |
  q2 <g d g,>4 |
  <c, g c,>2.
  
  g'4( a b |
  c2.)--
  d4( e fis-. \toright g2.)
  \toleft <g c,>2.
  c,8. d16 e4 f |
  
  g,2 g,4 |
  <c g' c>2 <c g'>4 |
  q2 q4 |
  q4 c' <c, g'> |
  q4 c' <c, g'> |
  <d g,> g <d g,> |
  <c g'> c' <c, g'>
  
  <c g'> c' <c, g'>
  <c g'> c' <c, g'>4
  <d g,> g <d g,> |
  <c g'>2. |
  g4 a b |
  c2 c4
  
  d e fis |
  g2 g4 |
  <c, g' c>2 q4 |
  q2 <g d' g>4 |
  <c g' c>4 <c g c,>2 |
  <g g'>4 <a a'> <b b'> |
  <c c'>2. |
  <d d,>4 <e e,> <fis fis,> |
  <g g,>2. |
  <c, g' c>2 q4 |
  q2 <g d' g>4 |
  <c g' c>2.
}


markss = \relative c' {
  \set Score.markFormatter = #format-mark-box-numbers
  s2.*5 \mark 1
  s2.*15 \mark \markup\small"Припев tutti"
  s2.*7 \bar "||" \mark \markup\small"проигрыш"
  s2.*9 \bar "||" \mark 2
  s2.*22 \bar "||" \mark \markup\small"проигрыш"
  s2.*9 \bar "||" \mark 3
  s2.*22 \bar "|."
}

intro = R2.*5
interverse = R2.*7

sopbegin = \relative c'' { R2.*12 << { c2~ c4 | e2 c8[ b] | c2. } \new Voice { \voiceFour g2~ g4 | c2 g4 | g2. } >> }
tuttisop = \relative c'' { f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 b | c8. <b d>16 <c e>4 <d f> | <c g'>2 e8[ d] | c2. }
sopsecond = \relative c' {
R2.*2 | c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |   
  g2 g4 | g2. | fis2( a4) | g2. | <c, c'>8.^"SI" <d d'>16 <e e'>4 <f f'> | <g g'>2 <e e'>8[ <d d'>] | c2.
}
sopthird = \relative c' {
    R2.*2
  
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |
  c'8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 g | c8. <b d>16 <c e>4 <d f> | <e g>2 e8[ d] | c2.
  
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 g | c8. d16 e4 f g2 e8[ d] c2.
}

altbegin = \relative c' 
{
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 g | c8. d16 e4 f | g2 e8[ d] | <c e>2.
}

tuttialt = \relative c' { b'2 b4 | c8. c16 c4 c | fis,2 a4 | g8. g16 g4 g | g2~ g4 | e2 g8[ f] | e2. }

altsecond = \relative c' {
R2.*2 | c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  
  f2 f4 | e8. d16 e4 g | fis2( d4) | d2. | c8. d16 e4 f | g2 e8[ d] | c2.
}
altthird = \relative c' {
R2.*2 |
  
  c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 | 
  e8. d16 e4 f | g2 a8[ g] f8. e16 f4 a | g e2 |
  b' b4 | g8. g16 g4 g | a2 a4 | g8. g16 g4 g |
  g8. g16 g4 g | g2 g8[ f] e2.
  
  b'2 b4 | c8. c16 c4 c | fis,2 a4 | g8. g16 g4 g | c,8. d16 e4 f g2 g8[ f] e2.}



tuttitenor = \relative c'' { g2 g4 | g8. f16 g4 e | d2 d4 | d8. c16 d4 b | g'2~ g4 | e2 c8[ b] c2. }
tenorsecond = \relative c' {
g2 g4 | g2 g4 | g2 g4 | g2 g4 | g2 g4 | g2 g4
  c2 c4 | c2 c4  b2 b4 | c2 c4 |
  
  <g b>2 q4 | <g c>2. | d'2 c4 | b8. a16 b4 g | c8. d16 e4 f | g2 e8[ d] | c2.
}
tenorthird = \relative c' {
  g2 g4 | g2 g4 |
  
  g8. g16 g4 g | g2 g4 | g8. g16 g4 g | g g2 | 
  c8. c16 c4 c | c2 c4 | b8. b16 b4 b | c c2 | 
  d d4 | c8. c16 c4 e | d2 d4 | d8. c16 d4 b |
  c8. c16 c4 c | c2 c8[ b] g2.
  
  g'2 g4 | g8. f16 g4 e | d2 d4 | d8. c16 d4 b | c8. d16 e4 f | g2 c,8[ b] c2.
}



tuttibass = \relative c' { g4( a) b | c8. c16 c4 c | d,4( e) fis | g8. g16 g4 g | c2~ c4 | c2 g4 | <c, g'>2. }
basssecond = \relative c {
  c2 c4 | c2 c4 | c2 c4 | c2 c4 | g2 g4 | c2 c4 |
    <c g'>2 q4 | q2 q4 | <g g'>2 q4 | <c g'>2 q4 |
    
    g4( a) b | c2. | d4( e fis) | g2.
    c,8. d16 e4 f | g2 e8[ d] c2.
}
bassthird = \relative c {
  c2 c4 | c2 c4 |
    
    c8. c16 c4 c | c2 c4 | g8. g16 g4 g | c c2 | 
    <c g'>8. q16 q4 q | q2 q4 | <g g'>8. q16 q4 q | <c g'>4 q2 |
    g' g4 g8. g16 g4 g | fis2 fis4 | g8. g16 g4 g |
    c,8. c16 c4 c | c2 g4 | c2.
    
    g'4( a) b | c8. c16 c4 c | d,4( e) fis | g8. g16 g4 g | c,8. d16  e4 f g2 g,4 c2.
}

versesop = \lyricmode {
  Хэй, __ ко -- \markup{ "л'э"\super"н"} -- да!
  Вэ -- со -- ўо щп'е -- вай -- мы хва -- \markup{ "ўэ"\super"н"} Бо -- гу дай -- мы. Хэй, ко -- \markup{ "л'э"\super"н"} -- да, 
  ко -- \markup{ "л'э"\super"н"} -- да!   

  Пан -- на по -- ро -- дж'и -- ўа н'е -- б'ес -- к'е Дж'е -- \markup{"ч'е"\super"н""т"} -- ко
  В_жўо -- б'е по -- ўо -- жы -- ўа ма -- ўэ Па -- хо -- \markup{"л'о"\super"н""т"} -- ко
  
  Па -- стэ -- жэ гра -- йон. 
  Хэй, ко -- \markup{ "л'э"\super"н"} -- да, ко -- \markup{ "л'э"\super"н"} -- да!
  
  Ско -- ро па -- сту -- шко -- в'е о тым у -- сўы -- шэ -- л'и.
  За раз до Бэт -- л'э -- йем чым \markup{ "прэ"\super"н"} -- дзэй -- б'я -- жэ -- л'и.
  Ви -- та -- йён Дж'е -- \markup{"ч'е"\super"н""т"} -- ко Ма -- ўэ Па -- хо --  \markup{"л'о"\super"н""т"} -- ко
  
  Хэй, ко -- \markup{ "л'э"\super"н"} -- да, ко -- \markup{ "л'э"\super"н"} -- да!
  
  Вэ -- со -- ўо щп'е -- вай -- мы хва -- \markup{ "ўэ"\super"н"} Бо -- гу дай -- мы. Хэй, ко -- \markup{ "л'э"\super"н"} -- да, 
  ко -- \markup{ "л'э"\super"н"} -- да!   
}

versealt = \lyricmode {
 
  Хэй, в_Дж'ень на -- ро -- дзэ -- н'а __ Сы -- на Йе -- ды -- нэ -- го
  Ой -- ца Пше -- дв'е -- чнэ -- го, __ Бо -- га Пра -- вдж'и -- вэ -- го
  Вэ -- со -- ўа щп'е -- вай -- мы хва -- \markup{ "ўэ"\super"н"} Бо -- гу дай -- мы. Хэй, ко -- \markup{ "л'э"\super"н"} -- да, 
  ко -- \markup{ "л'э"\super"н"} -- да!

  Хэй, __ ко -- \markup{ "л'э"\super"н"} -- да!
   \repeat unfold 39 \skip 1 
   щп'е -- ва -- \markup{ "йо"\super"н"}
}

versetenor = \lyricmode {
   \repeat unfold 38 \skip 1 
   \set associatedVoice = "bass"
   \skip 1
   гра -- йон.
}

versebass=\lyricmode { 
  \repeat unfold 16 \skip 1
  Ла -- ла, ла -- ла. Ла -- ла, ла -- ла, ла -- ла, ла -- ла.
  Ла -- ла, ла -- ла, ла -- ла, ла -- ла.
  Па -- стэ -- \set associatedVoice = "tenor"  % must be set one syllable early 
  жэ На муль -- тан -- ках гра -- йон.
  \repeat unfold 7 \skip 1
  Ла -- ла, ла -- ла.
}

markschoir = \relative c' {
  s2.*5 \set Score.markFormatter = #format-mark-box-numbers \mark 1
  s2.*4 \break
  s2.*4 \break
  s2.*7 \bar "||" \set Score.markFormatter = #format-mark-box-alphabet \mark \markup { \musicglyph #"scripts.segno" \italic "Весь хор"}
  s2.*6 s8 s s s s \mark \markup { \musicglyph #"scripts.coda" } s \bar "||" \break
  s2.*9 \bar "||" \set Score.markFormatter = #format-mark-box-numbers \mark 2
  s2.*4 \break
  s2.*11 \bar "||" \mark \markup { \musicglyph #"scripts.segno" \musicglyph #"scripts.coda" }
  s2.*9 \bar "||" \set Score.markFormatter = #format-mark-box-numbers \mark 3
  s2.*15 \bar "||" \break
  s2.*7 \bar "|."
}

sopvoices = \relative c'' {
  \global  
  \change Staff="sisii"
  \intro
  \sopbegin
  \change Staff="sa"
  \tuttisop
  \interverse
  \sopsecond
  \interverse
  \sopthird
}

altvoices = \relative c' {
  \global  
  \change Staff="asii" \oneVoice 
  \intro
  \altbegin 
  \change Staff="sa" \voiceTwo 
  \tuttialt 
  \interverse
  \altsecond
  \interverse
  \altthird
}

tenorvoices = \relative c'' {
  \global
  \intro
  R2.*15
  \tuttitenor
  \interverse
  \tenorsecond
  \interverse
  \tenorthird
}

bassvoices = \relative c' {
    \global
    \intro
    R2.*15
    \tuttibass
    \interverse
    \basssecond   
    \interverse
    \bassthird   
}


sopvoice = \relative c'' {
  \global  
  \intro
  \sopbegin
  \tuttisop
  \interverse
  \sopsecond
  \tuttisop
  \interverse
  \sopthird
}

altvoice = \relative c' {
  \global  
  \intro
  \altbegin
  \tuttialt 
  \interverse
  \altsecond
  \tuttialt 
  \interverse
  \altthird
}

tenorvoice = \relative c'' {
  \global
  \intro
  R2.*15
  \tuttitenor
  \interverse
  \tenorsecond
  \tuttitenor
  \interverse
  \tenorthird
}

bassvoice = \relative c' {
    \global
    \intro
    R2.*15
    \tuttibass
    \interverse
    \basssecond
    \tuttibass
    \interverse
    \bassthird   
}

choirSoloPart = \new ChoirStaff
<<
    \new Staff = #"sisii" \with {
      shortInstrumentName = \markup { \column { "SI" "SII"  } }
      midiInstrument = "voice oohs"
    } s2.*15
    
    \new Staff = #"sa" \with {
      shortInstrumentName = \markup { \column { "S" "A"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "soprano"  { \voiceOne \sopvoices }
      \new Voice = "alto" { \voiceTwo \altvoices }
    >>
    
    \new Lyrics = "soprano"
    
     \new Staff = #"asii" \with {
      shortInstrumentName = "A"
      instrumentName = \markup { \column { "A" "(SII)"  } }
      midiInstrument = "voice oohs"
    } \markschoir 
    \new Lyrics = "alto"
    
    \new Staff \with {
      shortInstrumentName = \markup { \column { "T" "B" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoices }
        \new Voice = "bass" {  \voiceTwo \bassvoices }
    >>
    \new Lyrics = "tenor "
    \new Lyrics = "bass"
    
     %lyrics
     \context Lyrics = "soprano" { \lyricsto "soprano" { \versesop }}
     \context Lyrics = "alto" { \lyricsto "alto" {\versealt }}
     \context Lyrics = "tenor" { \lyricsto "tenor" { \versetenor }}
     \context Lyrics = "bass" { \lyricsto "bass" { \versebass }}
  >>
  
choirPart = \new ChoirStaff
<< 
    \new Staff = #"sa" \with {
      instrumentName = \markup { \column { "S" "A"  } }
      shortInstrumentName = \markup { \column { "S" "A"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "soprano"  { \voiceOne \sopvoice }
      \new Voice = "alto" { \voiceTwo \altvoice }
    >>
    
    \new Lyrics = "soprano"
    \new Lyrics = "alto"
    
    \new Staff \with {
      instrumentName = \markup { \column { "T" "B" } }
      shortInstrumentName = \markup { \column { "T" "B" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" {  \voiceTwo \bassvoice }
    >>
    \new Lyrics = "tenor "
    \new Lyrics = "bass"
    
     %lyrics
     \context Lyrics = "soprano" { \lyricsto "soprano" { \versesop }}
     \context Lyrics = "alto" { \lyricsto "alto" {\versealt }}
     \context Lyrics = "tenor" { \lyricsto "tenor" { \versetenor }}
     \context Lyrics = "bass" { \lyricsto "bass" { \versebass }}
  >>
  

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = \markup \right-column { "Fl1" "Fl2" }
  midiInstrument = "flute"
} <<
     \new Voice { \voiceOne \flute }
     \new Voice { \voiceTwo \flutetwo }
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
  >>


violiniPart = \new Staff \with {
  instrumentName = "Violini"
  shortInstrumentName = \markup \right-column { "V1" "V2" }
  midiInstrument = "violin"
} <<
  
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>
  
altoPart = \new Staff \with {
  instrumentName = \markup \right-column { "Viola" "Cello" }
  shortInstrumentName = \markup \right-column { "V-la" "V-c" }
  midiInstrument = "viola"
} <<
  
     \new Voice { \clef bass \voiceOne \alto }
     \new Voice { \clef bass \voiceTwo \cello }
  >>
  
right = \relative c' {
  \global
  << \rup \\ \rdown >>
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



\bookpart {
  \header { piece = "Conductor" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \choirPart 
      \flutePart
      \clarinetPart
      \violiniPart
      \altoPart
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


\bookpart {
  \header { piece = "Strings + Flutes/Clarinet" }
  \score {
    %  \transpose c bes {
    <<
    \markss  
    \flutePart
    \clarinetPartB
    \violiniPart
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
        \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
} 


 
\bookpart {
  \header { piece = "Instruments" }
  \score {
    %  \transpose c bes {
    <<
    \markss
    \flutePart
    \clarinetPartB
    \violiniPart
    \altoPart
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

\bookpart {
  \header { piece = "Piano" }
  \score {
    %  \transpose c bes {
    <<
    \markss  
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



\bookpart {
  \header { piece = "Choir" }
  \score {
    %  \transpose c bes {
    <<
    \choirSoloPart
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


\include "articulate.ly"

% midi output
\bookpart {
  \score {
    \unfoldRepeats \articulate
    %  \transpose c bes {
    <<
      {s2.*5 \choirPart }
      \flutePart
      \clarinetPart
      \violiniPart
      \altoPart
      \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=160
    }
  }
}

