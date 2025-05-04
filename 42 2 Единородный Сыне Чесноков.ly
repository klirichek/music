\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№2 «Слава... Единородный Сыне...»"
  composer = "П. Чесноков"
  %opus = "оп. 42"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
pbr = {}

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
breathess = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% mark with numbers in squares
marksnumbers = {  \set Score.rehearsalMarkFormatter = #format-mark-numbers }


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
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key g \major
  \time 3/4
  \marksnumbers
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \tempo "Оживлённо." 4=80
  b4\mf b8 a g a |
  b4. b8 b\< b\! |
  d4( c8[ b]) a4 | \abr
  
  b4\> b8\!  r b4 |
  b2 c8 c |
  b4 b8  r b b |
  a2 g8 g | \abr
  
  fis4~8  r b4\< |
  b2.~\> |
  8\! \breathes 
  r8 r4 r |
  r8 fis'\f fis fis e g | \abr
  
  fis4 fis r |
  r8 e\mf e4 d |
  c2\> b8\! b |
  a4. a8\> a4~\! \abr
  
  %page 5
  a8  r b4\mf\< c\! |
  d4.\> e8\! d c |
  b4 g a \breathes |
  d4.\>( e8)\! d c | \abr
  
  b4( g a |
  b) b8  r b b |
  b4 b b \breathes |
  b b b8[( cis]) | \abr
  
  dis4. dis8 dis4 |
  e e d |
  c c c |
  b\> b8\!  r g4\p~ |
  4 g fis | \abr
  
  fis4 fis8\> fis fis4\!~ |
  8  r  r4  r |
   r8 b8 b4 b~ |
  8  r  r4  r | \abr
  
   r8 e e4 e~ |
  8  r  r4 r |
  R2. |
  r2 e,4 | \abr
  
  %page 6
  e'4.\>( d8)\! c8[( b]) |
  a4 b c |
  b\> b\!  r4 |
  fis'\mf fis8 fis e g | \abr
  
  fis4 fis r |
  r8 e8 e4 d8 d |
  c2\> b4\! |
  a4 a8  r b\mf c | \abr
  
  d4.\> e8\! d c |
  b4 \breathes g a |
  d4.(\> e8\!) d[( c]) |
  b4( g a | \abr
  
  b) b8  r a4\p |
  b2. |
  b4~8  r fis'4\f |
  fis2. |
  fis4~\>8\!  r b,,4\p | \abr
  
  d?2. |
  fis4~8  r d'4\f |
  d2.~ |
   2.\> |
   d2.\mf\>~ |
   4 ~ 8\!  r  r4 \bar "||" \break
   
   
   
   \textMark "Малая ектения. Во Царствии Твоем"
   \time 3/4 b4.\mf a8 g a |
   b2\< b4\! \breathes |
   d4\>( c8) b\! a a |
   b4\> b8\! r8\fermata b4 | \abr
   
   b2( cis4) |
   dis4.\> dis8\! dis4~ |
   8 r8 r4\fermata b8[(\< c])\! |
   d4.\>( e8\! d[ c] |
   b4 g) a | \abr
   
   b2.~ |
       \tempo "Тихо, Молитвенно" 4 = 50
   4 r4\fermata b4\p |

  b4. b8 b\< b\! |
  d2\> \breathes d8\! d |
  c2 c4 | \abr
  
  e4.\> e8\! e4~ |
  e~ e8 r8 e4 |
  c2\> c4\! |
  a4. a8 a a |
  a4.\p a8 a g | \abr
  
   \set Score.markFormatter = #format-mark-numbers

  a4~ a8 r  \mark 1 a4 |
  b2\< b4\! |
  d4.\> d8\! d4 |
  c2\> c4~\! |
  c8 r c4 c | \abr
  
  e2 e4 |
  c c4.\> c8\! |
  a4. a8 a4~ |
  a~ a8 r   
  
  
  
  
  \mark 2 a4 |
  b2\< b4\! |
  d2\> d8\! d |
  c2.\>~ |
  c8\! r c4 c | \abr
  
  e2. |
  c2 \> c4\! |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
   \mark 3 a4 |
  b2\< b4\! |
  d2\> d4\! |
  c2.\>~ |
  c8\! r c4 c | \abr
  
  e4 e e |
  c2 \> c4\! |
  a2 a4~ |
  a4 
  
  
  
  
     r8 \mark 4 a a a |
  b4 b8 b b b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c | \abr
  
  e2. |
  c2 \> c4\! |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
    \mark 5 a4 |
  b2 b4 |
  d4. d8 d d  |
  c2.~ |
  c8 r c4 c | 
  
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a~ a8 r 
    
   
   
   
   \mark 6 a4 |
  b2 b4 |
  d4. d8 d4  |
  c2 c4~ |
  c8 r c4 c | 
  
  e2 e4 |
  c2 c4 |
  a2 a4~ |
  a~ a8 r 
  
  
  
  
  
   \mark 7 a4 |
  b4. b8 b b |
  d2.  |
  c2.~ |
  c8 r c c c c | 
  
  e4 e e |
  c4 c8 c c c |
  a2 a4~ |
  a~ a8 r 
  
  
  
  \mark 8 a4 |
  b2 b8 b |
  d4. d8 d d  |
  c2 c4~ |
  c8 r c4 c | 
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
   \mark 9 a4 |
  \time 4/4 a4 a8 a a a a a |
  \time 3/4 b2 b4  |
  d4. d8 d d |
  c2. | 
  
  c8 c c c c c |
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a~ a8 r r4
   
  
  
  
  d4\mf d8 d d4~ |
  d r8 d\< g g\! |
  fis4. fis8 fis4~ |
  fis8 r fis4 fis | \abr
  
  << e2. {s4\> s s\! } >>
  a,2 a4 \breathes |
  d4 d8 d d d |
  d2.~ |
  d4~ d8 r r4
  \bar "|."
   
   

}


altvoice = \relative c'' {
  \global
  \dynamicDown
  \autoBeamOff
  g4 g8 fis e fis |
  g4. g8 g g |
  a4( g8[ fis]) e[( fis]) |
  
  g4 g8  r b,4 |
  b2 c8 c |
  b4 b8  r g' g |
  fis2 e8 e |
  
  b4~ 8  r fis'4 |
  g2.~ |
  8 g\f fis e g a |
  b4 b2~ |
  
  8 \breathes b b4 fis |
  a2 e8 e |
  e2 d4 c2.~
  
  % page 5
  c8  r fis4 fis |
  g2( fis4 |
  g e fis |
  g2 fis4 |
  
  g4 e) fis |
  g4~ 8 r g g |
  a[( b] a) g fis4 |
  g8 g a b a g |
  
  fis4. b8 a4 |
  g g g |
  a e fis |
  g g8  r e4~ |
  4 e e |
  
  dis dis8 dis dis4~ |
  8  r  r4  r |
   r8 b b4 b~ |
  8  r  r4  r |
  
   r8 e e4 e~ |
  8  r  r4 b\< |
  b'4.\>( a8\!) g[( fis]) |
  g4 fis e8[( d]) |
  
  % page 6
  c4 b \breathes a8[( e']) |
  e4 g8 g fis4 |
  fis fis r |
  b b8 b b b |
  
  b4 b r8 fis |
  a4 a e |
  e2 d4 |
  c4 c8  r fis fis |
  
  g2( fis4 |
  g e fis |
  g2 fis4 |
  g e) fis |
  
  g4~ 8  r e4 |
  dis2. |
  dis4~ 8  r b'4 |
  b2. |
  b4~8  r b,4 |
  
  c2. |
  d4~8  r fis4 |
  g2.~ |
  2. |
  g2.~ |
  4~8  r  r4
  
  \break
  g4. fis8 e fis |
  g2 g4 |
  a( g8) fis e fis |
  g4 g8 r8 b4 |
  
  a2( g4) |
  fis4. fis8 fis4~ |
  8 r r4 fis4 |
  g2( fis4 |
  g e) fis |
  
  g2.~ |
  g4 r4 g |
  
  g4. g8 g g |
  fis2 fis8 fis |
  a2 a4 |
  
  g4. g8 g4~ |
  g~ g8 r g4 |
  g2 g4 |
  e4. e8 e e |
  fis4. fis8 fis e |
  
  fis4~ fis8 r 
  
  
  fis4 |
  g2 g4 |
  fis4. fis8 fis4 |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g g4. g8 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
  
  fis4 |
  g2 g4 |
  fis2 fis8 fis |
  a2. ~ |
  a8 r a4 a |
  
  g2. |
  g2 g4 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
  
   fis4 |
  g2 g4 |
  fis2 fis4 |
  a2. ~ |
  a8 r a4 a |
  
  g4 g g |
  g2 g4 |
  fis2 fis4~ |
  fis4 
  
  
  
     r8 fis fis fis |
  g4 g8 g g g |
  fis4. fis8 fis fis |
  a2 a4~ |
  a8 r a4 a |
  
  g2. |
  g2 g4 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
    
  
  %5
   fis4 |
  g2 g4 |
  fis4. fis8 fis fis |
  a2. ~ |
  a8 r a4 a |
  
  g4 g g |
  g4. g8 g g |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  
  
  %6
   fis4 |
  g2 g4 |
  fis4. fis8 fis4 |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g2 g4 |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  %7
   fis4 |
  g4. g8 g g |
  fis2. |
  a2.~ |
  a8 r a a a a |
  
  g4 g g |
  g4 g8 g g g |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  %8
   fis4 |
  g2 g8 g |
  fis4. fis8 fis fis |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g4 g4. g8 |
  fis4. fis8 fis4~ |
  fis4~ fis8 r 
  
  
  %9
  fis4
  \time 4/4 fis4 fis8 fis fis fis fis fis |
  \time 3/4 g2 g4 |
  fis4. fis8 fis fis |
  a2. |
  a8 a a a a a |
  g4 g g |
  g4. g8 g g |
  fis2 fis4~ |
  fis~ fis8 r r4
  
  
  
  
  g4 g8 g g4~ |
  g r8 g b b |
  b4. b8 b4~ |
  b8 r b4 a |
  
  g2. |
  e2 e4 |
  g4 g8 g g g |
  g2.~ |
  g4~ g8 r r4
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  b4 b8 b c c |
  b4. b8 d g |
  fis4( e8[ d]) c4 |
  
  b4 b8  r  r b |
  a4 a g |
  fis fis8 r b b |
  b[( c] d4) a8 a |
  
  b4~ 8 r b4 |
  b2.~ |
  8 \breathes r r4 r |
  r8 dis8 dis dis cis e |
  
  dis4 dis r |
  r8 c? c4 b |
  a2\> e8\! e |
  a4. e8 e4~ |
  
  %page 5
  8  r d'4 c |
  b8 b b r a\< a\! |
  d4.\> e8\! d c |
  b4 g a \breathes |
  
  d4.(\> e8)\! d c |
  b4 b8  r b b |
  b4 b b |
  b b b8[( cis]) |
  
  dis4. dis8 dis4 |
  e e d |
  c c c |
  b b8  r g4~ |
  4 g fis |
  
  fis4 fis8 fis fis4~ |
  8  r  r4 r |
  %\once \override MultiMeasureRest.voiced-position=0 
  R2. |
  r4 r e4\< |
  
  e'4.(\>  d8)\! c[( b]) |
  c4 b a |
  r8 g g[( a]) b[( c]) |
  b4 b c8[( d]) |
  
  %page 6
  r8 e e4 e~ |
  4 e e |
  dis\> dis\!  r |
  dis dis8 dis cis cis |
  
  dis4 dis r |
  r8 c c4 b8 b |
  a2\>  e4\! |
  e e8  r d' c |
  
  b b b r a\< a |
  d4.\> e8\! d c |
  b4 \breathes g a |
  d4.(  e8) d[( c]) |
  
  b4 b8  r fis4 |
  fis2. |
  fis4~ 8  r dis'4 |
  dis2. |
  dis4~8  r b4 |
  
  fis2. |
  c'4~8  r c4 |
  b2.( |
  e) |
  <b d>2.~ |
  4~8  r  r4
  
  
  \break
  b4. b8 c c |
  b4( d) g |
  fis4( e8) d c c |
  b4 b8 r8\fermata b4 |
  
  b2( cis4) |
  dis4. dis8 dis4~ |
  8 r r4\fermata d8[( c]) |
  b4~8 r8 a4\< |
  d4.\>( e8\! d[ c] |
  
  b2.~) |
  4 r4 b |
  b4. b8 b b |
  d2 \breathes d8 d |
  c2 c4 |
  
  e4. e8 e4~ |
  e~ e8 r e4 |
  c2 c4 |
  a4. a8 a a |
  a4. a8 a <b g> |
  
  a4~ a8 r 
  
  
  a4 |
  b2 b4 |
  d4. d8 d4 |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
  a4 |
  b2 b4 |
  d2 d8 d |
  c2. ~ |
  c8 r c4 c |
  
  e2. |
  c2 c4 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
   a4 |
  b2 b4 |
  d2 d4 |
  c2. ~ |
  c8 r c4 c |
  
  e4 e e |
  c2 c4 |
  a2 a4~ |
  a4 
  
  
  % 4
     r8 a a a |
  b4 b8 b b b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c |
  
  e2. |
  c2 c4 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  %5
     a4 |
  b2 b4 |
  d4. d8 d d |
  c2. ~ |
  c8 r c4 c |
  
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a4~ a8 r 
  
  
  
  
  
  
  %6
     a4 |
  b2 b4 |
  d4. d8 d4 |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c2 c4 |
  a2 a4~ |
  a4~ a8 r 
  
  
    %7
     a4 |
  b4. b8 b b |
  d2. |
  c2.~ |
  c8 r c8 c c c |
  
  e4 e e |
  c4 c8 c c c |
  a2 a4~ |
  a4~ a8 r 
  
  
    %8
     a4 |
  b2 b8 b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a4~ a8 r 
  
  
  %9
  a4
  \time 4/4 a4 a8 a a a a a |
  \time 3/4 b2 b4 |
  d4. d8 d d |
  c2. |
  c8 c c c c c |
  e4 e e |
  e4. e8 e e |
  a,2 a4~ |
  a4~ a8 r r4
  
  
  
  b4 
  b8 b b4~ |
  b r8 b d d |
  d4. d8 d4~ |
  d8 r d4 d |
  
  e2. |
  g,2 g4 \breathes |
  <g b>4 q8 q q q |
  q2.~ |
  q4~ q8 r r4 |
  
    
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  <d g,>2.~ |
  2.~ |
  2.~ |
  
  4 q8  r  r g |
  fis4 fis e |
  b b~8 r |
  R2. |
  
  r4 r d |
  <d g,>2.~ |
  8 g fis e g a |
  b4 b2~ |
  
  8 \breathes b b4 fis |
  a2 e8 e |
  a,2 a4 |
  a2.~ |
  
  %page 5
  8  r d4 d |
  <d g,>2.~ |
  2.~ |
  2.~ |
  
  2 q4 |
  q4~8  r g g |
  fis[( g] fis) e b4 |
  g'8 g fis g fis e |
  
  b4. b8 b4 |
  c c b |
  a a a |
  e' e8  r d d |
  c4 g8 g a a |
  
  b4 b8 b b4~ |
  8  r  r4 b |
  b'4.\>( a8)\! g[( fis]) |
  g4 fis e8[( d]) |
  
  c4 b \breathes a8[( e']) |
  a4. g8 fis4 |
   r8 e e[( fis]) g[( a]) |
  e4 d c8[( b]) |
  
  %page 6
  a4 e' \breathes a8[( b]) |
  c4 b8 b a4 |
  b4 b  r |
  b b8 b g e | 
  
  b'4 b r8 fis |
  a4 a e |
  a,2 a4 |
  a a8  r d d |
  
  <d g,>2.~ |
  2.~ |
  2.~ |
  2 q4 |
  
  q4~8  r c4 |
  b2. |
  b4~8  r b'4 |
  b2. |
  b4~8  r b,4 |
  
  a2. |
  d4~8  r d4 |
  <d g,>2.( |
  <g c,>) |
  <d g,>2.~ |
  4~8  r  r4
  
  
  \break
  <d g,>2.~ |
  4. 8 8 8 |
  2.~ |
  4 8 r8 g4 |
  
  fis2( e4) |
  <fis b,>4. 8 4~ |
  8 r8 r4 d4 |
  <d g,>2.~ |
  2.~ |
  
  2.~ |
  4 r4\fermata q4 |
  q4. q8 q <g, g'> |
  <b fis'>2 q8 q |
  <a e'>2 <a a'>4 |
  
  <c g'>4. q8 q4~ |
  q~ q8 r q4 |
  <a e'>2 q4 |
  <c g'>4. q8 q q |
  d4. d8 d d |
  
  d4~ d8 r 
  
  
  d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q4 |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,> q4. q8 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
    d4 |
  <d g,>2 <g g,>4 |
  <fis b,>2 q8 q |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>2. |
  <e a,>2 q4 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
  
      d4 |
  <d g,>2 <g g,>4 |
  <fis b,>2 q4 |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>4 q q |
  <e a,>2 q4 |
  d2 d4~ |
  d4 
  
  
  %4
    r8 d d d |
  <d g,>4 q8 q q q |
  <fis b,>4. q8 q q |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2. |
  <e a,>2 q4 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
  %5
        d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q q |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>4 q q |
  <e a,>4. q8 q q |
  d2 d4~ |
  d4~ d8 r
  
  
  
  
  %6
        d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q4 |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,>2 q4 |
  d2 d4~ |
  d4~ d8 r
  
  
  
    %7
        d4 |
  <d g,>4. q8 <g g,> q8 |
  <fis b,>2. |
  <e a,>2.~ |
  q8 r q8 q <a a,> q |
  
  <g c,>4 q q |
  <e a,>4 q8 q q q |
  d2 d4~ |
  d4~ d8 r
  
  
  
    %8
        d4 |
  <d g,>2 <g g,>8 q |
  <fis b,>4. q8 q q |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,>4 q4. q8 |
  d4. d8 d4~ |
  d4~ d8 r
  
  
  %9
  d4
  \time 4/4 d4 d8 d d d d d |
  \time 3/4 <d g,>2 q4 |
  <fis b,>4. q8 q q |
  <e a,>2. |
  q8 q q q <a a,> q |
  <g c,>4 q q |
  <e a,>4. q8 q q |
  d2 d4~ |
  d~ d8 r r4
  
  
  
  g4 g8 g g4~ |
  g r8 g g g |
  b4. b8 b4~ |
  b8 r b4 b |
  c2. |
  c,2 c4 |
  <d g,>4 q8 q q q |
  q2.~ |
  q4~ q8 r r4
}

solotenor = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R2.*74
  \once \override Score.Footnote.annotation-line = ##f
   \footnote "*" #'( 0.25 . 0.25 ) \markup \wordwrap { * Тенор не солист, а добавочный голос. Он не обязателен. \italic "П.Ч."}
 
  e8\mf^\markup"Тенор один"  e e4~8 r8 |
  R2.*3
  
  %1
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %2
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %3
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  
  %4
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %5
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %6
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %7
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %8
  r8 d8 4 4~ |
  4 r4 r |
  R2. |
  r2 e4 |
  e2 e4 |
  R2.*3
  
  %9
  r8 d8 4 4~ |
  4 r4 r2 |
  R2.*2 |
  r2 e4 |
  e2 e4 |
  R2.*3
  
 
  
  d4\f d8 d d4~ |
  4 r4 r |
  R2. |
  r4 r8 d8\f d d |
  d d d4 r4 |
  r4 e\f e |
  e e e \breathes |
  d4 d8 d d d |
  d2.~\> |
  4\!~8 r8 r4
  
}

vocarstvii = \lyricmode {
  Во Цар -- стви -- и Тво -- ем по -- мя -- ни нас, Го --
  спо -- ди, ег -- да при -- и -- де -- ши во Цар -- стви -- и Тво -- ем
  Бла -- же -- ни ни -- щи -- е ду -- хом, я -- ко тех есть
  Цар -- ство Не -- бе -- сно -- е. Бла -- же -- ни пла -- чу -- 
  щи -- и, я -- ко ти -- и у -- те -- шат -- ся.
  Бла -- же -- ни кро -- ци -- и, я -- ко -- ти -- и
  на -- сле -- дят зе -- млю. Бла -- же -- ни ал -- чу --
  щи -- и и жаж -- ду -- щи -- е прав -- ды
  я -- ко ти -- и на -- сы -- тят -- ся.
  Бла -- же -- ни ми -- ло -- сти -- ви -- и я -- ко
  ти -- и по -- ми -- ло -- ва -- ни бу -- дут.
  Бла -- же -- ни чис -- ти -- и серд -- цем, я -- ко
  ти -- и Бо -- га уз -- рят. Бла -- же -- ни
  ми -- ро -- твор -- цы, я -- ко ти -- и сы -- но --
  ве Бо -- жи -- и на -- ре -- кут -- ся. Бла -- же -- ни
  из -- гна -- ни прав -- ды ра -- ди, я -- ко тех есть
  Цар -- ство Не -- бес -- но -- е. Бла -- же -- ни ес -- те
  ег -- да по -- но -- сят вам и из -- же --
  нут, и ре -- кут всяк зол гла -- гол на вы лжу -- ще
  Ме -- не ра -- ди. Ра -- дуй -- те -- ся и
  ве -- се -- ли -- те -- ся, я -- ко мзда ва -- ша
  мно -- га на не -- бе -- сех. Ра -- дуй -- те --
  ся и ве -- се -- ли -- те -- ся, я -- ко
  мзда ва -- ша мно -- га на не -- бе -- сех.
}


lyricssop   = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ % Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му
  _ _ _ _ _ _ _ _ _ _ _ _ _ % Ду -- ху, и ны -- не и прис -- но и во ве -- ки ве -- 
  _ _ _ Е -- ди -- но -- род -- ный 
  Сы -- не и Сло -- ве Бо -- жий, без -- смер -- тен сый,
  и из -- во -- ли -- вый спа -- се -- ни -- я на -- ше -- го
  ра -- ди во -- пло -- ти -- ти -- ся от Бо -- го --
  ро -- ди -- цы 
  
  \repeat unfold 15 _
  рас -- пный -- ся,
  рас -- пный -- ся,
  рас -- пный -- ся же, Хри -- сте Бо -- же,
  
  _ _ _ _ _ _ _ %сме -- рти -- ю смерть по --  пра -- вый, 
   е -- дин сый Свя -- ты -- я Тро -- йцы, спро -- сла
  вля -- е -- мый От -- цу и Свя -- то -- му Ду --
  ху,
  
  _ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
  _ _ _ _
  _ _
  _ _ _ _
  _ _ _
  _
  _ _ _
  А -- минь, а -- минь.

}

lyricsalt   = \lyricmode {
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му
  Ду -- ху, и ны -- не и прис -- но и во ве -- ки ве -- 
  ков, а -- минь. Е -- ди -- но -- род -- ный Сы -- не
  и Сло -- ве Бо -- жий без -- смер -- тен сый,
  и из -- во -- ли -- вый, во -- пло -- ти -- ти -- ся от свя -- ты -- я Бо -- го --
  ро -- ди -- цы и При -- сно -- де -- вы Ма -- ри -- и, во -- че -- ло --
  ве -- чи -- вый -- ся,
  
  \repeat unfold 6 _
  рас -- пный -- ся же Хри -- сте
  
  Бо -- же, рас -- пный -- ся Хри -- сте Бо -- же,
  сме -- рти -- ю смерть по --
  пра -- вый,
  
  
  е -- дин сый Свя -- ты -- я Тро -- йцы, спро -- сла
  -- вля -- е -- мый
  
  спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
  Го -- спо -- ди, по -- ми -- луй,
  Го -- спо -- ди, по -- ми -- луй,
  Те -- бе, Го -- спо -- ди. А -- минь, а -- минь.
  \vocarstvii
  
}

 lyricstenor  = \lyricmode {
   \repeat unfold 43 \skip 1
и из -- во -- ли -- вый, и из -- во -- ли -- вый спа -- се -- ни -- я 
на -- ше -- го ра -- ди 

\repeat unfold 26 \skip 1
рас -- пный -- ся же Хри -- сте

\repeat unfold 28 \skip 1
спро -- сла -- вля -- е -- мый, спро -- сла -- вля -- е -- мый От -- цу и Свя -- то -- му
Ду -- ху,

_ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
_ _ _ _ _ _ _
_ _ _ _ 
_ _ _ _ _ _ 
А -- минь, а -- минь.

}

 lyricsbass  = \lyricmode {
   Сла -- ва,
   и ны -- не и прис -- но
   а -- минь.
   
   \repeat unfold 16 _
   и из -- во -- ли -- вый,
   \repeat unfold 22 _
   не -- пре -- лож -- но во -- че -- ло --
   ве -- чи -- вый -- ся, рас -- пный -- ся же, Хри -- сте
   Бо -- же, рас -- пный -- ся же, рас -- пный -- ся
   же, Хри -- сте Бо -- же, рас -- пный -- ся Хри -- сте Бо -- же,
   \repeat unfold 15 _
  спро -- сла -- вля -- е -- мый
  
  _ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
  Го -- спо -- ди, по -- ми -- луй
  _ _ _ _ _
  А -- минь. __
    
}

vocarstvii = \lyricmode {
  Во Цар -- стви -- и Тво -- ем по -- мя -- ни нас, Го --
  спо -- ди, ег -- да при -- и -- де -- ши во Цар -- стви -- и Тво -- ем
  Бла -- же -- ни ни -- щи -- е ду -- хом, я -- ко тех есть
  Цар -- ство Не -- бе -- сно -- е. Бла -- же -- ни пла -- чу -- 
  щи -- и, я -- ко ти -- и у -- те -- шат -- ся.
  Бла -- же -- ни кро -- ци -- и, я -- ко -- ти -- и
  на -- сле -- дят зе -- млю. Бла -- же -- ни ал -- чу --
  щи -- и и жаж -- ду -- щи -- е прав -- ды
  я -- ко ти -- и на -- сы -- тят -- ся.
  Бла -- же -- ни ми -- ло -- сти -- ви -- и я -- ко
  ти -- и по -- ми -- ло -- ва -- ни бу -- дут.
  Бла -- же -- ни чис -- ти -- и серд -- цем, я -- ко
  ти -- и Бо -- га уз -- рят. Бла -- же -- ни
  ми -- ро -- твор -- цы, я -- ко ти -- и сы -- но --
  ве Бо -- жи -- и на -- ре -- кут -- ся. Бла -- же -- ни
  из -- гна -- ни прав -- ды ра -- ди, я -- ко тех есть
  Цар -- ство Не -- бес -- но -- е. Бла -- же -- ни ес -- те
  ег -- да по -- но -- сят вам и из -- же --
  нут, и ре -- кут всяк зол гла -- гол на вы лжу -- ще
  Ме -- не ра -- ди. Ра -- дуй -- те -- ся и
  ве -- се -- ли -- те -- ся, я -- ко мзда ва -- ша
  мно -- га на не -- бе -- сех. Ра -- дуй -- те --
  ся и ве -- се -- ли -- те -- ся, я -- ко
  мзда ва -- ша мно -- га на не -- бе -- сех.
}

lyricsolotenor = \lyricmode {
  По -- мя -- ни…
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
  Бла -- же -- ни…
  Бла -- же -- ни…
  
   
  Ра -- дуй -- те -- ся
  и ве -- се -- ли -- те -- ся,
  я -- ко мзда ва -- ша мно -- га на не -- бе -- сех.
}


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 35
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }


\bookpart {

  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      
      \new Staff = "tenorstaff" \with {
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "solotenor" { \oneVoice  \keepWithTag #'V5 \clef tenor \solotenor }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \lyricsto "solotenor" { \lyricsolotenor }
      
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \sopvoice }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \altvoice }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \lyricssop }
      \new Lyrics \lyricsto "alto" { \lyricsalt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \tenorvoice }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \bassvoice }
      >>
      
%           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics  \lyricsto "tenor" \lyricstenor
      \new Lyrics \lyricsto "bass" \lyricsbass
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
      \tempo 4=90
    }
  }

}

   