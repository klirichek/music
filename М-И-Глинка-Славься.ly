\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 19.5)

\header {
  title = "Славься!"
  subtitle = "(заключительная сцена оперы «Иван Сусанин»)"
  composer = "М. И. Глинка"
  poet = "слова: С. М. Городецкий"
  %arranger = "обр. С. Дружининой"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

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
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

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
%  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key c \major
  \time 4/4
}

sopvoice = \relative c'' {
  \tempo "Allegro maestoso" 2=92
  \global
  \autoBeamOff
  e2( d4) c |
  d2 c4 d |
  e2 g4( e) |
  d2. r4 |
  e2 d4 c |
  d2 c4 d | \abr
  
  e2 g4 e |
  d2 d4( e) |
  f2 e4 d |
  c2 c4 b |
  c2 a' |
  g2. e4 |
  d( b) c e | \abr
  
  d( b) c e |
  d2 d4 d |
  g,2. r4 |
  <c e>2(-\markup\italic"marcato"  <b d>4) <a c> |
  <b d>2 <a c>4 <b d> |
  <c e>2 g'4( e) |
  d2. r4 | \abr
  
  <c e>2 <b d>4 <a c> |
  <b d>2 <a c>4 <b d> |
  <c e>2 g'4 e |
  d2 d4( e) |
  f2 e4 d |
  c2 c4 b | \abr
  
  c2 a' |
  g2. e4 |
  d( b) c e |
  d( b) c e |
  d2 d4 d |
  g,2. r4 |
  R1 | \abr
  
  R1*3 |
  c2 b4 a |
  b2 a4 b |
  c2 c4 c | \abr
  
  d2 d4( e) |
  f2 e4 d |
  c2 c4 b |
  c2 a' |
  g2. e4 |
  d( b) c e | \abr
  
  d( b) c e |
  d2 d4 d |
  g,2. r4 |
  \tempo "Piu mosso" 2=112
  <c e>2 (\ff <b d>4) <a c> |
  <b d>2 <a c>4 <b d> |
  <c e>2 g'4( e) |
  d2. r4 | \abr
  
  <d f>2 <cis e>4 <b d> |
  <cis e>2 <b d>4 <cis e> |
  <d f>2 a'4 f |
  e2 r |
  <c a'>1~ |
  2 q2 |
  <e gis b>1~ |
  2 q2 |
  g?1~ | \abr
  
  
  2 g |
  <fis a>1~ |
  1 |
  f?2 r |
  <c e>4 r <c d> r |
  <c e>2 r |
  <c d>4 r <c e > r |
  <c f>2 r |
  <c e>4 r <c d> r | \abr
  
  <c e>2 r |
  <c d>4 r <c e> r |
  <c f> r <c e> <c d> |
  <c e> r <c d> <c e> |
  <c f> r <c e> <c d> |
  <c e> r <c d> <c e> | \abr
  
  <c f> q <c d> <c e> |
  <c f> q <c d> <c e> |
  <c f> q <c d> <c e> |
  <c f> q <c d> <c e> |
  <c f> r r2 | \abr
  
  R1*3 |
  <d f>1~ |
  1 |
  q |
  q1 |
  <d g>1~ |
  1 |
  1~ 1| \abr
  
  <c e>4-\markup\italic"Piu mosso" r r2 |
  R1 |
  <c e>2 r |
  d r |
  <c e> r |
  d r | \abr
  
  <c e> r |
  d r |
  c r4 <c>\fff |
  q1~ |
  1~ |
  1 |
  r2 r4 <c e > |
  q1~ |
  1~ |
  1 |
  r2 r4 c' |
  <c g e>1~1~1~1~1~1~1~ | \abr
% \repeat volta 7 { \volta #'() { s1*0^\markup { \bold "7×" } } <c g e>1~ }
1\fermata
  
  
%  1~ |
 % 1~ |
 % 1~ |
 % 1~ |
 % 1~ |
 % 1~ |
 % 1 \fermata 
 \bar "|."
  
  
}


altvoice = \relative c'' {
  \global
  \autoBeamOff
  g2. g4 |
  g2 g4 g |
  g2 c |
  b2. r4 |
  g2 g4 g |
  g2 g4 g | \abr
  
  g2 c4 c |
  b2 bes |
  a a4 a |
  a2 a4 a |
  a2 c |
  c2. g4 |
  g2 g4 g | \abr
  
  g2 g4 g |
  d2 d4 d |
  g2. r4 |
  g2. g4 |
  g2 g4 g |
  g2 c |
  b2. r4 | \abr
  
  g2 g4 g |
  g2 g4 g |
  g2 c4 c |
  b2 bes |
  a2 a4 a |
  a2 a4 a | \abr
  
  a2 c |
  c2. g4 |
  g2 g4 g |
  g2 g4 g |
  d2 d4 d |
  g2. r4 |
  e2(\p d4) c | \abr
  
  d2 c4 d |
  e2 g4( e) |
  d2. r4 |
  g2 g4 g |
  g2 g4 g |
  g2 g4 g | \abr
  
  b2 bes4( bes) |
  a2 a4 a |
  a2 a4 a |
  a2 c |
  c2. g4 |
  g2 g4 g | \abr
  
  g2 g4 g |
  d2 d4 d |
  g2. r4 |
  g2. g4 |
  g2 g4 g |
  g2 <g c> |
  <g b>2. r4 | \abr
  
  a2 a4 a |
  a2 a4 a |
  a2 <a d>4 d |
  cis2. r4 |
  <a>1~ |
  2 <a c>2 |
  <gis b>1~ |
  2 q2 |
  <g? c>1~ | \abr
  
  2 q2 |
  <fis a>1~ |
  1 |
  <f? c'>2 r |
  e4 r d r |
  e2 r |
  d4 r e r |
  f2 r |
  e4 r d r | \abr
  
  e2 r |
  d4 r e r |
  f r e d |
  e r d e |
  f r e d |
  e r d e | \abr
  
  f f d e |
  f f d e |
  f f d e |
  f f d e |
  f r r2 | \abr
  
  R1*3 |
  <f bes>1~ |
  1 |
  1 |
  <f c'>1 |
  1~1 |
  
  <f b>1~1 |
  <e g>4 r r2 |
  R1 |
  q2 r |
  <d g> r |
  <e g> r |
  <d g > r | \abr
  <e g> r |
  <d g> r |
  <e g> r4 q |
  q1~ |
  1~ |
  1 |
  r2 r4 q |
  q1~ |
  1~ |
  1 |
  r2 r4 <g c> |
  q1~ | \abr
  
   1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1\fermata \bar "|."
  
  
  
}


tenorvoice = \relative c' {
  \tempo "Allegro maestoso" 2=92
  \global
  \autoBeamOff
  
  e2( d4) c |
  d2 c4 d |
  e2. c4 |
  d2. r4 |
  e2 d4 c |
  d2 c4 d |
  e2 e4 c | \abr
  
  d2 d |
  d f4 f |
  e2 e4 e |
  a,2 f' |
  e2. c4 |
  b( d) e c |
  b( d) e c | \abr
  
  d2 d4 d |
  g,2. r4 |
  e'2(-\markup\italic"marcato" d4) c |
  d2 c4 d |
  e2. c4 |
  d2. r4 |
  e2 d4 c | \abr
  
  d2 c4 d |
  e2 c4 c |
  <b d>2 d |
  d f4 f |
  e2 e4 e |
  f2 f | \abr
  
  e2. c4 |
  b( d) e c |
  b( d) e c |
  d2 d4 d |
  g,2. r4 |
  c2\p( b4) a |
  b2 a4 b | \abr
  
  % page 2
  c2 c |
  d2. r4 |
  e2 d4 c |
  d2 c4 d |
  e2 g4 e |
  d2 d |
  d e4 f | \abr
  
  e2 e4 e |
  f2 f  |
  e2. c4 |
  b( d) e c |
  b( d) e c |
  d2 d4 d |
  g,2.^\markup\italic"stringendo" r4 | \abr
  
  \tempo "Piu mosso" 2=112
  <c e>2\ff( <b d>4) <a c> |
  <b d>2 <a c>4 <b d> |
  <c e>2 c |
  d2. r4 |
   f2 e4 d |
  e2 d4 e | \abr
  
  f2 d4 d |
  e2 r |
  <c f>1~ |
  2 c |
  e1~ |
  2 e |
  c1~ |
  2 c |
  d1~ |
  1 | \abr
  
  c2 r |
  c4 r c r |
  c2 r |
  c4 r c r |
  c2 r |
  c4 r c r |
  c2 r |
  c4 r c r | \abr
  
  c4 r c c |
  c r c c |
  c r c c |
  c r c c |
  c c c c | \abr
  
  c c c c |
  c c c c |
  c c c c |
  c r r2 |
  R1*3^\markup\italic"(колокола)" \abr
  
  <bes f'>1~ 1|
  1
  
  <c f>1 |
  1~1 |
  
  <b d>1~1 |
  
  <c e>4-\markup\italic"Piu mosso" r4 r2 |
  R1 |
  <g e'>2 r |
  <g d'> r |
  <g e' > r |
  <g d'> r |
  <g e'> r |
  <g d'> r | \abr
  
  <g e'>2 r4 q4\fff |
  q1~ |
  1~ |
  1 |
  r2 r4 <c e>4 |
  q1~ |
  1~ |
  1 | \abr
  
  r2 r4 <c e> |
  q1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1\fermata \bar "|."

}


bassvoice = \relative c' {
  \global
  \autoBeamOff
  << \new Voice { \voiceThree g2. g4 } \new Voice { \voiceTwo c,2( b4) a } >>
  <b g'>2 <a g'>4 <b g'> |
  <c g'>2 <e g> |
  g2. r4 |
    << \new Voice { \voiceThree g2. g4 } \new Voice { \voiceTwo c,2 b4 a } >>
     <b g'>2 <a g'>4 <b g'> |
  <c g'>2 <e g>4 q | \abr
  
  g2 g |
  d d4 d |
  a'2 a4 a |
  f2 f |
  <c g'>2. q4 |
  g'2 g4 g |
  g2 g4 g | \abr
  
  d2 d4 d |
  g2. r4 |
    << \new Voice { \voiceThree g2. g4 } \new Voice { \voiceFour c,2( b4) a } >>
  <b g'>2 <a g'>4 <b g'> |
  <c g'>2 <e g> |
  g2. r4 |
  <c, g'>2 <b g'>4 <a g'> | \abr
  
   <b g'>2 <a g'>4 <b g'> |
  <c g'>2 <e g>4 q |
  g2 g |
  d2 d4 d |
  a'2 a4 a |
  f2 f | \abr
  
  c2. c4 |
  g'2 g4 g |
  g2 g4 g |
  d2 d4 d |
  g,2. r4 |
  g'2. g4 |
  g2 g4 g | \abr
  
  g2 g |
  g2. r4 |
  g2 g4 g |
  g2 g4 g |
  g2 g4 g |
  g2 g |
  d2 d4 d | \abr
  
  a'2 a4 a |
  f2 f |
  c'2. c,4 |
  g'2 g4 g |
  g2 g4 g |
  d2 d4 d |
  g,2. r4 | \abr
  
  c2( b4) a |
  b2 a4 b |
  c2 e g2. r4 |
  d2 cis4 b |
  cis2 b4 cis4 | \abr
  
  d2 f4 f a2 r |
  f1~ |
  2 f |
  e1~ |
  2 e |
  es1~ |
  2 es |
  d1~ |
  1 | \abr
  
  a'2 r |
  g4 r f r |
  g2 r |
  f4 r g r |
  a2 r |
  g4 r f r |
  g2 r |
  f4 r g r | \abr
  
  a4 r g f |
  g r f g |
  a r g f |
  g r f g |
  a a f g | \abr
  
  % page 3
  a a f g |
  a a f g |
  a a f g |
  a r r2 |
  R1*3 | \abr
  
  bes,1~1 |
  bes |
  <as as'>1 |
  <g g'>1~1 |
  1~1
  <c g'>4 r r2 |
  R1 |
  c2 r |
  b r |
  c r |
  b r |
  c r |
  b r | \abr
  
  c2 r4 c4 |
  c1~ |
  1~ |
  1 |
  r2 r4 c |
  c1~ |
  1~ |
  1 |
  r2 r4 <c g'>4 |
  q1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1~ |
  1\fermata
  
  
}

lyricscores = \lyricmode {
  Славь -- ся, славь -- ся ты, Русь мо -- я! Славь -- ся ты, рус -- ска -- я
  на -- ша зем -- ля! Да бу -- дет во ве -- ки ве -- ков силь -- на лю -- би -- ма -- я
  на -- ша род -- на -- я стра -- на! Славь -- ся, славь -- ся из ро -- да в_род!
  Славь -- ся ве -- ли -- кий наш рус -- ский на -- род! Вра -- гов, по -- сяг -- нув -- ших на
  край род -- ной ра -- зи бес -- по -- щад -- ной мо -- гу -- чей ру -- \set associatedVoice = "alto" кой!
  Сла -- ва,
  сла -- ва род -- ным бой -- \set associatedVoice = "soprano" цам,
  ро -- ди -- ны на -- шей от -- важ -- ным сы --
  
  нам! Кто кровь за от -- чиз -- ну сво -- ю про -- льёт, то -- го ни -- ког --
  да не за -- бу -- дет на -- род!
  Славь -- ся, славь -- ся ты, Русь мо -- я!
  Славь -- ся ты, Рус -- ска -- я на -- ша зем -- ля! Час на -- стал, хва -- ла
  бой -- цам! Вот он, наш Кремль! С_ним вся Русь! С_ним весь
  мир! Пой весь мир! Ве -- се -- лись, рус -- ский люд! Пес -- ни пой! Свет -- лый
  день, ве -- сё -- лья день! Для нас на -- стал, ве -- сё -- лья день для нас на -- стал!
  
  Здрав -- ствуй, наш край род -- ной!
  Будь жив, будь здрав,
  весь наш край! У -- ра! У -- ра! У -- ра!
  
}


U = { \change Staff = right }
D = { \change Staff = left }


%abr = { \break }

scoreInstrRight = \relative c' {
  \global
  \autoBeamOn
  
    \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 2,2
  
  % page 366
  \tempo "Allegro maestoso" 2=92
  <e g e'>2(\f-\markup\italic"marcato" <d g d'>4) <c g' c> |
  <d g d'>2 <c g' c>4 <d g d'> |
  <e g e'>2 << { g'4( e) } \\ <g, c>2 >> |
  << { <b d>2. r4 } \\ { g4 g8 g g4 g } >> |
  <e g e'>2 <d g d'>4 <c g' c> | \abr
  
  <d g d'>2 <c g' c>4 <d g d'> |
  <e g e'>2 << { g'4( e) } \\ <g, c>2 >> |
  << { <b d>2 d4( e) } \\ { g,4 g8 g <g bes>2 } >> |
  < f a f'>2 <f a e'>4 <f a d> |
  <e a c>2 q4 <e a b> |
  <a c>2 <a c a'>2 | \abr
  
  % page 367
  <g c g'>2. <g g'>4 |
  << { d'4( b) c e | d( b) c e } \\ { g,2 g4 g g2 g4 g } >> |
  <d d'>2 q4 q |

  \tuplet 3/2 2 {
   
    <g, g'>4( q <fis fis'>)  <g g'>( <a a'> <b b'>) | \abr
    <c c'>( q q) <e e'>( <f f'> <fis fis'>) |
    <g g'>( q <a a'>) <b b'>( <c c'> <d d'>) 
    <e e'>( <c c'> <d d'>) <e e'>( <f f'> <fis fis'>) |
    <g g'>( q q) q( q q) | \abr
    
    <a a'> q q q q q |
    <a a'> q <as as'> <g g'> <fis fis'> <f f'> |
    <e e'> q <d d'> <c c'> <b b'> <a a'> |
    <g g'> q q} << { d''4( e) } \\ <g, bes>2 >> | \abr
  
  % page 368
  <f a f'>4 r r2 |
  <e a c e>4 r r2 |
  <f a c>4 r <f a c f> r |
  <g c e g>r r2 | \abr
  
  <g b d g>4 r <g c e g> r |
  <g b d g > r <g c e g> r |
  <f d'>2 q4 q |
  <g, g'>2 r | \abr
  
  % page 369
  << { r2 g |
       r g |
       e g4( e) |
       r2 g |
       g'1~1 |
       1 } \\
     { <c,, e>2(\p-\markup\italic"dolce" <b d>4 <a c>) |
       <b d>2( <a c>4 <b d>4) |
       c2( c |
       <b d>1) |
       <c' c'>2(-\markup\italic"dolciss." <b b'>4 <a a'> |
       <b b'>2 <a a'>4 <b b'> |
       <c c'>2) q
  } >> \abr
  
  %page 370
  << { d'2 d4( e) |
       f2 e4 d |
       c2( c4 b?) |
       c2 a' |
       g2. e4 |
       d( b) c e |
       d( b) c e } \\
     { <d, b'>2 bes'4 bes |
       a1 |
       <e a> |
       <f a>2 <a c> |
       <g c>2. e'4 |
       g,1 |
       g }
  >>
  
  % page 371
  << { d'2 d4 d 
       \tuplet 3/2 2 { g,4-\markup\italic"stringendo"( g') g g g g }
     } \\ {
       d,2 d4 d 
              \tuplet 3/2 2 { g,4( g') g g g g }
  } >>
  
  %page 374
  \ottava #1
  \tuplet 3/2 2 { <g g'>2.\f~4 q-. q-. }|
  \tuplet 3/2 2 { q2.~ 4 q-. q-. }|
  \tuplet 3/2 2 { q2.~-> 4 q q }|
  \tuplet 3/2 2 { q2.~-> 4 q q }|
  \tuplet 3/2 2 { <d' f>2.( <a a'>4) q q }|
  \tuplet 3/2 2 { q2.~-> 4 q q }|
  \tuplet 3/2 2 { q2.~-> 4 q q }|
  \tuplet 3/2 2 { q2.~-> 4 q q }|
  
  
  
  %page 383 t 6-15
  \repeat percent 4 \repeat tremolo 2 {<c f a>8->\f a } %\repeat tremolo 2 { <c f a> a} |
  %\repeat tremolo 2 {<c f a>\ff a} \repeat tremolo 2 { <c f a> a } | \abr
  
    \repeat percent 4 \repeat tremolo 2 {<e' gis b>-> d} %\repeat tremolo 2 { <e gis b> d } |
    %\repeat tremolo 2 {<e gis b> d} \repeat tremolo 2 { <e gis b> d } |
  \repeat percent 4 \repeat tremolo 2 {<c g'?>-> g} %\repeat tremolo 2 { <c g'> g } |
  %\repeat tremolo 2 {<c g'> g} \repeat tremolo 2 { <c g'> g } |
  
  \repeat percent 4 \repeat tremolo 2 {<d' fis a>-> a} %\repeat tremolo 2 { <d fis a> a } |
  %\repeat tremolo 2 {<d fis a> a} \repeat tremolo 2 { <d fis a> a } |
  
  <f c' f?>2 <c c'>-> |
  <e c' e>4 r <d c' d> r | \abr
  
  % page 384 до колоколов
  <e c' e>2 <c c'>-> |
  <d c' d>4 r <e c' e> r |
  <f c' f>2 <c c'>-> |
  <e c' e>4 r <d c' d> r |
  <e c' e>2 <c c'>-> |
  <d c' d>4 r <e c' e> r |
  <f c' f> r <e c' e> <d c' d> |
  <e c' e> r <d c' d> <e c' e> | \abr
  
  <f c' f> r <e c' e> <d c' d> |
  <e c' e> r <d c' d> <e c' e> |
  <f c' f> q <d c' d> <e c' e> |
  <f c' f> q <d c' d> <e c' e> |
  <f c' f> q <d c' d> <e c' e> |
  <f c' f> q <d c' d> <f c' e> |
  <f c' f> r r2 | \abr % 3 t bells
  R1*3
  
  
   % page 385 1-3
   \repeat percent 6\repeat tremolo 4 {<bes d f>16\fff( f)} %\repeat tremolo 4 { <bes d f>( f) } |
   %\repeat tremolo 4 { <bes d f>( f) }\repeat tremolo 4 { <bes d f>( f) } |
   %\repeat tremolo 4 { <bes d f>( f) }\repeat tremolo 4 { <bes d f>( f) } |
   
   % t 5
   \repeat tremolo 4 { <c' d f>( f,) } \repeat tremolo 4 { <c' d f>( f,) } |
   
   %t 9-10
   \repeat percent 4 \repeat tremolo 4 { <c' d g>( g) } %\repeat tremolo 4 { <c d g>( g) } |
   %\repeat tremolo 4 { <c d g>( g) }\repeat tremolo 4 { <c d g>( g) } |
   
   %t13-14
    \repeat percent 4 \repeat tremolo 4 { <b d g>( f) }% \repeat tremolo 4 { <b d g>( f) } |
   %\repeat tremolo 4 { <b d g>( f) }\repeat tremolo 4 { <b d g>( f) } | \abr
   
   % page 386 from 3
   << { e'2 d4 c |
        d2 c4 d |
        e2  d4 c |
        d2 c4 d | \abr
        e2 d4 c |
        d2 c4 d |
        e2 d4 c |
        d2 c4 d } \\
      { \repeat tremolo 2 { g8( g, } g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, )
        \repeat tremolo 2 {g' g,} g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, |
        \repeat tremolo 2 {g' g,} g' g, g' g, |
   } >>
   
   \repeat tremolo 4 { <g c e>16( e) } \repeat percent 7 \repeat tremolo 4 { <g c e>16( e) }
   %\repeat tremolo 4 { <g c e>16( e) } \repeat tremolo 4 { <g c e>( e) } |
       
%    \repeat tremolo 4 { <g c e>( e) } \repeat tremolo 4 { <g c e>( e) } | \abr
    
    %page 387
%     \repeat tremolo 4 { <g c e>( e) } \repeat tremolo 4 { <g c e>( e) } |
     
     
%     \repeat tremolo 4 { <g c e>( e) } |
%     \repeat tremolo 4 { <g c e>( e) } \repeat tremolo 4 { <g c e>( e) } |
    \repeat tremolo 4 { <c' e g>( g) } \repeat percent 9% \repeat tremolo 4 { <c e g>( g) }
    \repeat tremolo 4 { <c e g>( g) }
 %     \repeat tremolo 4 { <c' e g>( g) } \repeat tremolo 4 { <c e g>( g) }
 %      \repeat tremolo 4 { <c e g>( g) }\repeat tremolo 4 { <c e g>( g) } |
 %      \repeat tremolo 4 { <c e g>( g) }\repeat tremolo 4 { <c e g>( g) } |
 %      \repeat tremolo 4 { <c e g>( g) }\repeat tremolo 4 { <c e g>( g) }|
 %      \repeat tremolo 4 { <c e g>( g) }\repeat tremolo 4 { <c e g>( g) } | \abr


       \repeat percent 14 { \repeat tremolo 4 { <e' g c>( c) } }

%       \repeat tremolo 4 { <e' g c>( c) } \repeat tremolo 4 { <e g c>( c) } |
%       \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }   |
%        \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }  |
%        \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }  |
%        \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }  |
%        \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }  |
%        \repeat tremolo 4 { <e g c>( c) } \repeat tremolo 4 { <e g c>( c) }  |
        <c e g c>1\fermata-\markup\italic"lunga."
        \ottava #0
        \bar "|."
   
  
}

scoreInstrLeft = \relative c {
  \global \clef bass
  \autoBeamOn  
  
    \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 2,2
  
  % page 366
  <c c'>2\f( <b b'>4) <a a'> |
  <b b'> 2 <a a'>4 <b b'> |
  <c c'>2 q |
  << { d'2. r4 } \\ { g,4 g8 g g4 g } >> |
  <c, c'>2 <b b'>4 <a a'>4 | \abr
  
  <b b'>2 <a a'>4 <b b'> |
  <c c'>2 <e c'> |
  <g d'> <g, g'> |
  <d d'> q4 q |
  <a' a'>2 q4 q |
  <f f'>2 q | \abr
  
  <c' c'>2. <c g' c>4 |
  << { b'4( d) e c | b( d) e c } \\ { g2 g4 g g2 g4 g } >> |
  <d d,>2 q4 q |
  g,2. r4 | \abr
  
  <c g' e'>2->\arpeggio r |
  <b g' d'>->\arpeggio r |
  <c g' e'> <e g c> |
  <g b d>2 r | \abr
  
  <c, g' e'>-> r |
  <b g' d'>-> r |
  <c g' e'> <e g c> |
  <g b d>4 r  \tuplet 3/2 2 { <g, g'>4 <f f'> <e e'> |
                              
     % page 368
     <d d'> q <cis cis'> <c c'> <b b'> <bes bes'> |
     <a a'> q <gis gis'> <a a'> <gis gis'> <g g'> |
     <f f'> q <g g'> <f f'> <a a'> <b b'> |
     <c c'> q  <b b'> < c c'> <e e'> <f f'> | \abr
     
     <g g'> q q q <e e'> <c c'> |
     r <g' g'> q q <e e'> <c c'> |
     <d d'> <e e'> <d d'> <c c'> <b b'> <a a'> |
     <g g'> <a' a'> <g g'> <f f'> <e e'> <d d'> | \abr
    
  }
  
  % page 369
  <c' c,>4 <g g,> r g' |
  <g g,> <g, g,> r q |
  <c c,> <g g,> r q |
  <g g'> <g g,> r g |
  <e'' g>4-. g,-. g,-. g'-. |
  <d' g>-. g,-. g,-. g'-. |
  <e' g>-. g,-. g,-. g'-. | \abr
  
  
  % page 370
  <d' g>-. g,-. g,-. g'-. |
  <d' f>-. a-. d,-. a'-. |
  <c e>-. a-. a,-. a'-. |
  <c f>-. a-. f-. c'-. |
  <e g> c c, c' |
  <b d> g g, <c' e> |
  <b g'> g g, <g' c> | \abr
  
  %page 371
  <d d'>4 r q q |
  <g, g'>4 r r2 |
  
  % page 374
  \tuplet 3/2 { <c, c'>4\f <g' g,>-. q-. } q2( |
  \tuplet 3/2 { <g g'>4) <g g,>-. q-. } q2 ( |
  \tuplet 3/2 { <g g'>4) <g g,>-. q-. } q2-> ( |
  \tuplet 3/2 { <g g'>4) <g g,> q } q2-> ( |
  \tuplet 3/2 { <d d'>4) <a' a,>-> q-> } q2 ( |
  \tuplet 3/2 { <a a'>4) <a a,> q } q2 ( |
  \tuplet 3/2 { <a a'>4) <a a,> q } q2 ( | \abr
  
  %page 375
   \tuplet 3/2 { <a a'>4) <a a,> q } q2 |
   
   %page 383 t 6-15
   <f f'>1 |
   <f' a c f>1-> | \abr
   
   <e e,> |
   <e gis b e>->\ff |
   <es es,> |
   <es g? c>-> |
   <d d,> |
   <d fis a d>-> |
   <a a'>2 r |
   <g g'>4 r <f f'> r |
   
   % page 384 до колоколов
   <g g'>2 r |
   <f f'>4 r <g g'> r |
   <a a'>2 r |
   <g g'>4 r <f f'> r |
   <g g'>2 r |
   <f f'>4 r <g g'> r |
   <a a'> r <g g'> <f f'> |
   <g g'> r <f f'> <g g'> | \abr
   
   <a a'> r <g g'> <f f'> |
   <g g'> r <f f'> <g g'> |
   < a a'> q <f f'> <g g'> |
   < a a'> q <f f'> <g g'> |
   < a a'> q <f f'> <g g'> |
   < a a'> q <f f'> <g g'> |
   <a a'> r r2 | \abr
   R1*3^\markup\italic"(колокола)"
   
   % page 385 1-3
   \repeat percent 6 { \repeat tremolo 4 {bes16( bes')} } %\repeat tremolo 4 { bes,( bes') } |
 %  \repeat tremolo 4 { bes,( bes') } \repeat tremolo 4 { bes,( bes') }  |
 %  \repeat tremolo 4 { bes,( bes') } \repeat tremolo 4 { bes,( bes') } |
   
   % t 5
   \repeat tremolo 4 { as,( as') } \repeat tremolo 4 { as,( as') }  |
   
   %t 9-10
   \repeat percent 4 { \repeat tremolo 4 { g,( g') } } %\repeat tremolo 4 { g,( g') } |
  % \repeat tremolo 4 { g,( g') } \repeat tremolo 4 { g,( g') } |
  \repeat percent 4 { \repeat tremolo 4 { g,( g') } } 
   
   %t13-14
 %  \repeat tremolo 4 { g,( g') } \repeat tremolo 4 { g,( g') } |
 %  \repeat tremolo 4 { g,( g') } \repeat tremolo 4 { g,( g') } |
   
   % page 386 from 3
   <c, c'>2 <b b'>4 <a a'> |
   <b b'>2 <a a'>4 <b b'> |
   <c c'>2 <b b'>4 <a a'> |
   <b b'>2 <a a'>4 <b b'> | \abr
   
   <c c'>2 <b b'>4 <a a'> |
   <b b'>2 <a a'>4 <b b'> |
   <c c'>2 <b b'>4 <a a'> |
   <b b'>2 <a a'>4 <b b'> |
   <c c'> r \repeat percent 7 { q <g g'> } |
%   <c c'> <g g'> <c c'> <g g'> | \abr
   
%   <c c'> <g g'> <c c'> <g g'> |
%   <c c'> <g g'> <c c'> <g g'> |
   <c c'> r \repeat percent 7 { q <g g'>} |
%   <c c'> <g g'> <c c'> <g g'> |
%   <c c'> <g g'> <c c'> <g g'> |
%   <c c'> <g g'> <c c'> <g g'> |
   <c c'> r { q <g g'> } \repeat percent 14 { <c c'> <g g'> }  | \abr
   
 %  <c c'> <g g'> <c c'> <g g'> |
  % <c c'> <g g'> <c c'> <g g'> |
 %  <c c'> <g g'> <c c'> <g g'> |
 %  <c c'> <g g'> <c c'> <g g'> |
 %  <c c'> <g g'> <c c'> <g g'> |
 %  <c c'> <g g'> <c c'> <g g'> |
 %  <c c'> <g g'> <c c'> <g g'> |
   <c c'>1\fermata
   
 
}



scorePianoPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrLeft
  >>


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  
  

\bookpart {
  \header {
  piece = "Сопрано + Альты"
  }
  
  \score {
      \transpose c bes, {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
        \consists "Ambitus_engraver"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \oneVoice \dynamicNeutral \sopvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      
      \new Staff  \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
        \consists "Ambitus_engraver"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "alto" { \oneVoice \dynamicNeutral \altvoice }
      >> 
      
     
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \context Lyrics = "sopranos" { \lyricsto "soprano" { \lyricscores } }
      
    >>
      }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "Тенора + Басы"
  }
  \score {
      \transpose c bes, {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
     
      \new Staff \with {
        instrumentName = "Тенора"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
        \consists "Ambitus_engraver"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "tenor" { \clef "treble_8" \oneVoice \dynamicNeutral \tenorvoice }
      >> 
      
            \new Lyrics = "tenors"
      
            \new Staff = "bassstaff" \with {
        instrumentName = "Басы"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
        \consists "Ambitus_engraver"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "bass" { \clef bass \oneVoice \dynamicNeutral \bassvoice }
      >> 
      
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \context Lyrics = "tenors" { \lyricsto "tenor" { \lyricscores } }
      
    >>
      }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
  }
}

  
 
\bookpart {
    \header {
  piece = "Хор"
  }
  \score {
      \transpose c bes, 
      <<
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
        \new Voice  = "alto" { \voiceTwo \dynamicUp \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef bass \voiceOne \dynamicDown \tenorvoice }
        \new Voice = "bass" { \voiceTwo \dynamicDown \bassvoice }
      >>
    >>
  >>  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
    \header {
  piece = "Piano"
  }
  \score {
     \transpose c bes, 
      <<
    %  \removeWithTag #'BR
    \scorePianoPart
  >>  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
    \header {
  piece = "full"
  }
  \score {
      \transpose c bes, 
      <<
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
        \new Voice  = "alto" { \voiceTwo \dynamicUp \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef bass \voiceOne \dynamicDown \tenorvoice }
        \new Voice = "bass" { \voiceTwo \dynamicDown \bassvoice }
      >>
    >>
    \scorePianoPart

  >>  % transposeµ
    \layout {
       #(layout-set-staff-size 18)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
  }
}

  \include "articulate.ly"


  \score {
      \articulate \transpose c bes, 
      <<
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
        \new Voice  = "alto" { \voiceTwo \dynamicUp \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef bass \voiceOne \dynamicDown \tenorvoice }
        \new Voice = "bass" { \voiceTwo \dynamicDown \bassvoice }
      >>
    >>
    \scorePianoPart
  >>  % transposeµ

    \midi {
      \tempo 2=92
    }
  }

