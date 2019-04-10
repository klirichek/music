\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

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
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

markssi = \relative c' {
  \tempo 4=210
  \set Score.markFormatter = #format-mark-box-numbers
  s1*13
  \tempo "a tempo"
  
  s1*4
%  \tempo 4=190
  \mark 1
  s1*17
  s1*4
  \mark 2
  s1*17
  s1*8
  
  \mark 3
  s1*17
  s1*9
  
  s1
  \mark 4
%  \tempo 4 = 160
  \tempo "poco meno mosso"
  s1*8 
  \tempo "a tempo"
  s1*9
  s1*15
  \mark 5
  s1*18
  \bar "|."
}

%use this as temporary line break
abr = { \break }
abrr = {\break}

% uncommend next line when finished
abr = {}
abrr = {}

skipLine = { R1*8 }
skipLineTwo = { R1*9 }
skipZero = { R1*17 }
skipAfterOne = { R1*4 }
skipOne = { R1*8 }
skipAfterThree = {R1*10}
skipTwo = { R1*16 }


% ===============================================================
% Right hand up
% ===============================================================

rup = \relative c' {
  \globali
  \voiceOne
  
   R1*3 |
  r2 r4 r8 \tuplet 3/2 { e16 fis gis } |
  a4-. a-. a--( b |
  a) a-. e2-- |
  fis4--( e fis) gis-. |
  a2-- a4 r | \abrr
  
  
  
  a4\f^\markup\italic"marcato" <gis a> <fis a> <e gis b>
  a2 e |
  a^\markup\italic"legato" b |
  d4-. d-. e2-- |
  a4-. a-. b2\fermata |
  
  e4^\markup\italic"staccato" d cis b |
  e,,8 e' d, d' cis, cis' b, b'
  s1
  cis8\< a b cis d e fis gis\! | \abrr
  
  <a e cis>4 r <a, fis cis> <b e,> |
  a2 <e b gis> |
  <fis d a>4( <e a,>) <fis d a> <gis e d>
  <a e cis>2 q \breathe |
  q <a fis cis>4 <b fis d> |
  a2 <e b gis> |
  <fis d>4 e <fis d> <gis e>
  a2~ a |
  <e a e'>4( <fis a d>) <e a cis> <e gis b> |
  <e a cis>( <e gis b>) <cis fis a>2 | \abrr
  
  <fis d>4 e <fis d> <d gis> |
  <cis fis a>2\> q\! |
  e4 e <d fis> gis |
  a a b2 |
  <e, e'>4 <fis d'> <e cis'> <gis b> |
  <cis, a'>2( <fis d'>) |
  <cis a'>2 s \breathe |
  \acciaccatura b'8( a4) gis8 a b4 a8 gis |
  a4-. a( e2) | \abrr
  
  fis8 gis a4 a( gis) |
  a2~ a |
   
 \vbreathe |
  <e cis>2.->\f <e b gis>4 |
  << { cis4 d } \\ a2 >> <e' b gis>2 |
  <d a fis>2 << e \\ {fis,4 gis} >> |
  << <a' e>1 \\ {d,2\> cis\! } >> |
  \oneVoice <fis cis a>2 <a fis d>4 <b fis d> | \abr
  <a e a,> <a fis a,> <e b gis>2 |
  <b' fis d>4 <a e cis> <a fis d> <gis e b> |
  \voiceOne a2( a8) b cis d \oneVoice |
  
  <cis e>4_\markup\italic"legato" <b d> <a cis> <gis b> |
  <a cis> <gis b> <a fis>2 |
  <d, fis d'>4 <cis e cis'> \voiceTwo <fis b>2 \oneVoice |
  <fis a>1 \abr
  
  <cis e>2 <cis fis>4 <d gis> |
  \voiceOne a'2 <gis b> | 
  << { e'4 d cis b } \\ { a2. gis4 } >> |
  << { a2 d a1 } \\ { fis4( e fis gis e1)} >> |
  
  <a a'>4 q q <b b'> |
  <cis e a>~ <fis a> e2 |
  fis4 e fis gis |
  \oneVoice <a, cis e a>2 q |
  \voiceOne <e e'>4 <fis d'> <a cis> b |
  
  cis4 cis8 d e2 |
  a2( fis) |
  <e b>1 |
  
  % 80-95
    \oneVoice <e, a>2.-> <e b'>4 |
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
  
  \voiceOne fis4 fis8 gis a4 a8 b |
  cis4 d cis8 b a gis |
  b2 a8 b cis d |
  fis2 <cis a> |
  eis,8 g a b cis d e eis |
  <cis fis>2 <cis fis a> |
  <fis b> d'8 cis b4 |
  <a a,>8 <gis gis,> <fis fis,>2 <cis a fis>4 |
  \ottava #1 <b' b,>4 <cis cis,> <d d,> <fis fis,> \ottava #0 |
  e1~
  e\fermata
  
  % 108-123
  \voiceOne
  { \repeat tremolo 4 { e,16\>\pp^\markup\italic"legato" e' } }
  { \repeat tremolo 4 { e,16 e'\! } }
  
  { \repeat tremolo 4 { e,16 e' } }
  { \repeat tremolo 4 { e,16 e' } }
  
  { \repeat tremolo 4 { e,16 e' } }
  { \repeat tremolo 4 { e,16 e' } }
  
  { \repeat tremolo 4 { e,16 e' } }
  { \repeat tremolo 4 { e,16 e' } }

%  <e e,>1
%  << a,,4^\markup\italic'legato'\> \\ { e4 <d fis>} >> \oneVoice <e gis>2\! | \abr    
%  <d fis>4 <cis e> d <b e> |
%  <cis e>1 |
  
  
  << a,,2 \\ { fis4\p <e fis> } >> <fis a> <fis b> |
  <fis a> 2\> <e gis>\! |
  <d fis>4 e <d fis> <b d gis> |
  <cis fis a>2.\p r4 | \abr
  
  <e a e'>4\f <fis b d> <e a cis> <e gis b> |
  <e a cis> <e gis b> <e a>2 |
  << a2 \\ { <fis d>4 <e cis> } >> \oneVoice <d fis a> <b e gis> |
  << { a'8 fis e d cis b cis d } \\ <cis e>1 >> |
  << { <e e'>4 <d d'>8 <cis cis'> <d d'> <cis cis'> d'4 } \\ { a2 a4 gis8 e } >> |
  << { <cis a'>4 <cis cis'>8 <d d'> <e e'>2 } \\ { e4 fis b2 } >> | \abr
  
  << { <e, e'>4 <fis d'> <a cis> <gis b> } \\ { a2 e2 } >> \oneVoice |
  <cis fis a>2\> <b e>\! |
  <cis e a>1\p |
  
  <a' cis e a>2^\markup\italic"marcato" q4 <b e gis b> |
  <a cis fis a>2 <gis cis e gis> |
  <fis a d fis>4~ <e a d e> <fis a d fis> <gis b d gis> |
  << {a'2~ a} \\ { <b, d>4\> e4 d8 cis <a cis>4\! } >>
  << {a'4 gis8 fis e4 fis } \\ { cis2~ cis } >>
  << { <e, gis e'>4\arpeggio d'8 cis b2 } \\ { s4 <fis a>4 <e gis>2 } >>
  << { a8( b cis4) <b e,>2 } \\ { fis4 a a gis } >>
  << <e a>1 \\ { d4\> b cis2\! } >>
  
  << { a''2. <e b>4 } \\ { e d cis gis } >> |
  << { e'2 <cis a> } \\ { <cis a>4 <b gis> fis e } >>
  << { a2 d } \\ { fis,4 e fis gis } >>
  << { d'2( cis) } \\ { <a fis d>( <e cis>) } >>
  << { < cis' e>2 <cis fis>4 <e gis> } \\ { a,4 gis a b } >>
  <a d fis a>( <a cis e a>) <b e gis b>2 |
  \ottava #1 <e a cis e>4 <d fis a d> <cis e a cis> <b e gis b> |
  <cis e gis cis>2 <d e gis b>
  \ottava #0
  
  \acciaccatura \tuplet 3/4 { e16 fis gis } <a e cis a>4 r <a, fis cis> <b e, b> |
  <a e cis> <a fis d> <e b gis>2 |
  << { fis8 gis a4 a gis } \\ { <d b>4 <e cis> <fis d> <e d> } >>
  << { a8 fis e d } \\ cis2 >> cis |
  
  % 144-155
    <cis e a>4 <cis e a> <cis fis a> <d fis b> | \abr
  
  % page 8
  <cis e a> <d fis a> <gis, b e>2 |
  <a d fis>4 <a e'> <a d fis> <d e gis> |
  << a'1 \new Voice { \voiceThree fis2 e } \new Voice { \voiceTwo d4 cis8 b cis2 } >> \oneVoice |
  <a' e'>8[\f e] <a d>[ fis] <a cis>[ e] <gis b>[ e] |
  <a cis>[ e] <gis b>[ e] <fis a> cis <fis a> cis |
  <d fis>8[ a] e'[ a,] <d fis>[ a] <d gis>[ b] | \abr
  
  <cis fis a>2\> q\! |
  <a e'>4->^\markup\italic"ritard." q-> <a d fis>-> <cis eis gis>-> |
  <cis fis a>-> <d fis a> <b e b'>2-> |
  <e a e'>4-> <fis a d>-> <e a cis>-> <d e gis b>-> |
  <cis fis a>2-> <a' d fis>-> |
  <a cis e a>1->\fermata
}


% ===============================================================
% Right hand down
% ===============================================================


rdown = \relative c' {
  \globali 
  \voiceTwo
    s1*9
  e4 fis b,2 |
  fis'4 e fis gis |
  a2 b |
  e~ e |
  e4 d cis b |
  s1
  s
  <a e>8 r r4 r2 |
  
  s1
  <cis, e>4 <d fis> s2
  s1*3
  <cis e>4 <d fis> s2 |
  a2. b4 |
  d4 cis8 b cis2 |
  s1*2
  
  a2. b4
  s1 |
  a2. cis4 |
  <cis fis>2 <b e> |
  a'2. e8 d |
  s1 |
  s1 |
  s1 |
  fis2 cis |
  
  d2 e |
  a8 fis e d cis2 |
  
  s1*7
  <cis e>1
  
  s1*5
  fis4 d e2
  
  s1*3
  
  
  cis'2 cis4 e |
  a,2 <gis b> |
  <a d>2 q |
  s1
  a2 e |
  
  a2 <gis b> |
  <a d>1 |
  a2( gis) |
  
  s1*16
  
  
  <fis, cis'>2 <cis' fis>
  <fis a> fis |
  d4 fis8 gis a4 gis |
  cis a fis cis |
  b2 a' |
  a2~ a |
  b8 cis d4 fis2 |
  cis1 |
  fis2 fis |
  e1~ e
  
  s1*16
  
  
  
}

% ===============================================================
% Left hand up
% ===============================================================

lup = \relative c' {
  \globali
\oneVoice
  R1*8
  
  \voiceOne
  a1-> |
  a2 gis|
  a a |
  d b |
  a' gis |
  R1 |
  e, |
  \oneVoice <e e'>4-> <d d'>-> <cis cis'>-> <b b'>-> |
  <e e,>2
  <e gis b e>2
  
  <a, a,>4 r <fis fis'> <gis gis'> |
  <a a'> <d, d'> <e e'>2 |
  <d d'>4 <cis cis'> <d d'> <b b'>
  <a' a,>2 <a a'> |
  q4 q <fis fis'> <b, b'> |
  <cis cis'> <d d'> <e e'>2 |
  <b b'>4 <cis cis'> <d d'> b' |
  \voiceOne fis'2 e \oneVoice |
  <cis cis,>4 <d d,> <e e,>2 |
  <a a,>4 <e e,> <fis fis,>2 | \abrr
  
  
  <d d,>4 <cis cis,> <d d,> b |
  <fis fis'>2 q |
  <cis cis'> <d d'>4 <cis' eis> |
  <fis fis,>2 <gis gis,> |
  \voiceOne 
  a2. gis4 |
  e2( d) |
  \oneVoice <a e' a>1 |
  <a' cis e>2 <e gis b e> |
  <fis cis'> <cis gis'> |
  
  \voiceOne a'2 b |
  \oneVoice <a e a,>1

  <a e a,>2.-> <e e,>4 |
  <fis fis,>2 <e e,> |
  <b b,> <e e,> |
  <a e a,>1 |
  <fis fis,>2 <d d,>4 <b b,> | \abr
  <cis cis,>4 <d d,> <e e,>2 |
  <b b,>4 <cis cis,> <d d,> <e e,> |
  <a e a,>1 |
  \voiceOne e'2. e4 | \oneVoice
  cis e fis e |
  r2 \voiceOne d4~ d \oneVoice |
  << { d2 cis } \\ fis,1 >> \oneVoice |
  <cis gis'>2 <fis a>4 <b b,> |
  \voiceOne a2 b \oneVoice
  <cis e>4 <d fis> e4 e, |
  << {d'4(\> cis d e cis1)\! } \\ {a1~ a} >> \oneVoice
  
  \voiceOne <cis e>2 <cis fis>4 <b e>
  <cis e> d <b e>2 |
  <d, d'>4 <cis cis'> <d d'> <b b'> |
  \oneVoice <a e' a>2~ q |
  \voiceOne <cis cis'>4 <d d'> <a' cis> <gis b> |
  
  cis2 <b e> |
  <d fis>1 |
  <e e,>2 <e, b e,> |
  
  %80-95
  
  \oneVoice  <a, e' a>2. <gis gis'>4 |
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
  
  \voiceOne
  s1
  s2 a'2
  s1*2
  r4 <d, d,> <f f,> <a a,>
  r <b b,> <a a,> <gis gis,> |
  r <b fis b,>2 <b b,>8 <gis gis,> |
  s1*4
  
  <a cis e a>2 <fis cis' fis a>4 <gis b e b'>
  %108-123
  << {a'2 gis} \\ { <a, cis e>4 <fis d' fis> <e b' e>2 } >>| \abr
  << { a'2. gis4 } \\ { <d, d' fis>4 <e cis' e> <fis d'> < b e> } >>|
  <a cis e>1 |
  r2 d4 <b d> |
  << { cis d} \\ fis,2 >> \oneVoice <e b'> |
  << a2 \\ { b,4 cis } >> \oneVoice <d a'> b |
  fis'2. gis4 | \abr
  
  <a cis> <b d> cis e, |
  a e << {a b8 cis } \\ cis,2 >> \oneVoice |
  <d d,>4 <cis cis,> <d d,> <e e,> |
  << { a2 e } \\ a,1 >>|
  <cis cis,>4 <d d,>8 <e e,> <fis fis,>4 <gis gis,> |
  <a a,> <fis fis,> <e e,>-> <d d,> | \abr
  
  <cis cis,>4 <d d,> <e e,>2 |
  <fis fis,> <gis gis,> |
  <a e a,>1 |
  
  <a a,>4 q q <gis gis,> |
  <fis fis,> q <cis cis,>2 |
  <d d,>4 <cis cis,> <d d,> <b b,> |
  <a a,>2 <a e' a> |
  <fis' a cis fis>\arpeggio <cis e gis cis>4 q |
  <cis gis' cis>\arpeggio <d a' d> <e b'>2 |
  << { <a d>2 b } \\ { d,4( fis) e2}  >> |
  <a, e' a>1 |
  << { a''2 a4 r } \\ { <cis, e> d e2 } >>
  << {e2 cis } \\ { a4 e fis2 } >>
  <d a' d>2 <b fis' d'> |
  <a e' a>1 |
  <cis cis,>2 <fis fis,>4 <e e,> |
  <d d,> <cis cis,> <e e,>2 |
  
  { \repeat tremolo 4 { e,16 e' } }
  { \repeat tremolo 4 { e,16 e' } }

  { \repeat tremolo 8 { e,,16 e' } }
  
  <a a'>4 r <fis fis,> <gis gis,> |
  <a a,> <d, d,> <e e,>2 |
  <d' d,>4 <cis cis,> <b b,> <e e,> |
  << <a, a,>1-> \\ { s2 a'8 fis e d } >>
  
  
  %144-155
  
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
  <a' a,>1\fermata
  
}

% ===============================================================
% Left hand down
% ===============================================================

ldown = \relative c
{
  \globali
  s1*8
  a1 |
  cis4 d e2 |
  d4 cis d e |
  fis2 gis |
  cis e\fermata |
  R1 |
  e,,1
  s1
  s1
  
  s1*7
  a2~ a |
  s1*2
  
  s1*4
  cis4 d e2 |
  <a a,>1 |
  s1*3
  
  d,4 fis e2 |
  s1
  
  s1*8
  a4 b cis e |
  
  s1 s2 d4( b)
  s1*2
  d,4 fis e2
  
  s1*3
  a2 fis4 gis |
  a d, e2 |
  a2. r4 |
  s1 |
  a2 e |
  
  a4 fis e2 |
  fis4 gis a b~ |
  b1
  
  s1*16
  
  <fis fis,>2 \ottava #-1 <fis, fis,> \ottava #0
  <fis fis'>4 <gis gis'> a cis |
  \ottava #-1 <b, fis' b>2. \ottava #0 <b' fis' b>4 |
  <fis' cis' fis>2 <fis, cis' fis> |
  <eis eis'>1
  <fis fis'>
  <b b,>
  <a a'>4. <b b'>8 <a a'> <gis gis'> <fis fis'> <e e'> |
  <d d'>4 <cis cis'> <b b'>2 
  <e' gis b e>1\arpeggio~ q\fermata |
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
  
 \paper {
    system-separator-markup = \slashSeparator 
  }
  \header { piece = "Piano+Choir" }
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
      \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=210
    }
  }
}

