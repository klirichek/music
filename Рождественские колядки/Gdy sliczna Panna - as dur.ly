\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Gdy sliczna Panna"
  subtitle = " "
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globali = {
  \key e \major
  \time 4/4
  \secondbar
}

global = {
  \globali
  \autoBeamOff
  \override MultiMeasureRest.expand-limit = #3
  \set Score.skipBars = ##t
}



%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


sopvoice = \relative c' {
  \global
  \dynamicUp
  
  \tempo "Andante con moto"
  \secondbar  
  R1^\markup"Вст."
  R1*3 |
  b2 cis4 dis |
  e2 e |
  fis4 a gis fis | \abr
  fis2 e \breathe |
  b cis4 dis |
  e2 e\( |
  fis4\) a gis fis |
  fis2 e \breathe |
  gis4 fis gis e | \abr
  fis1\( |
  dis4\) fis e dis |
  cis2 b \breathe |
  gis'4 fis gis e |
  a1\( | \abr
  gis4\) b a8[( gis]) fis[( e]) |
  fis2 e \breathes | % $%%%%%%%%%%%%%%%%5
  b'4 b b b |
  b1 |
  << { a4 a a a | \abr
  a2( gis) | }  \new Voice { \voiceTwo fis4 fis fis fis e2( e)} >>
  b'4 b b b |
  cis1 \breathes | %%%%%%%%%%%%%%%%%%%
  gis4^\markup\italic"rit." b a8 gis fis e |
  fis2( e) | %fine
  
  
  R1*10 \abr R1*2 | 
  b2 cis4 dis |
  e2 e\( |
  fis4\) a gis fis | \abr
  fis2 e \breathe |
  b cis4 dis |
  e2 e\( |
  fis4\) a gis fis |
  fis2 e \breathe | \abr
  
  gis4 fis gis e |
  fis1\( |
  dis4\) fis e dis |
  cis2 b \breathe |
  gis'4 fis gis e |
  a1\( | \abr
  gis4\) b a8[( gis]) fis[( e]) |
  fis2 e \breathes |
  b'4 b b b |
  b1 |
  << { a4 a a a | \abr
  a2( gis) | }  \new Voice { \voiceTwo fis4 fis fis fis e2( e)} >>
  b'4 b b b |
  <a cis>1 \breathes | %%%%%%%%%%%%%%%%%%%
  gis4^\markup\italic"rit." b a8 gis fis e |
  a2( gis) |
  \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  R1*4
  b2 cis4 dis |
  e2 e |
  fis4 a gis fis | \abr
  fis2 e \breathe |
  b cis4 dis |
  e2 e\( |
  fis4\) a gis fis |
  fis2 e |
  e4 dis e cis |
  cis1\( |
  b4\) dis cis b |
  a2 b |
  e4 dis e e |
  e1\( |
  e4\) gis fis8[( e]) b[( b]) |
  b2 b |
  gis'4 fis gis e |
  fis1
  \showStaffSwitch
  \change Staff = downstaff
  \voiceOne
  dis4 fis e dis |
  cis2( b)
  \change Staff = upstaff
  \voiceTwo
  
  gis'4 fis gis e |
  a1 |
  e4 gis fis8 e b b |
  b2( b) |
  R1*12
  b2 cis4 dis |
  e2 e\( |
  fis4\) a gis fis | \abr
  fis2 e \breathe |
  b cis4 dis |
  e2 e\( |
  fis4\) a gis fis |
  fis2 e |
  e4 dis e cis |
  cis1\( |
  b4\) dis cis b |
  a2 b |
  e4 dis e e |
  e1\( |
  e4\) gis fis8[( e]) b[( b]) |
  b2 b |
  gis'4 fis gis e |
  fis1 |
  \showStaffSwitch
  \change Staff = downstaff
  \voiceOne
  dis4 fis e dis |
  cis2( b)
  \change Staff = upstaff
  \voiceTwo
  gis'4 fis gis e |
  e1 |
  e4 gis fis8 e b b |
  fis'2( e)
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  R1*2 |
  b2\< cis |
  b\> cis\! |
  R1*4 |
  b2_\markup\italic"(закр. рот)" a4 a |
  gis2 gis\( |
  a4\) cis b a |
  a2 gis \breathe |
  gis4 gis gis gis |
  
  a1\( |
  b4\) b b a |
  a2 gis |
  e'4 e d d |
  cis1\( |
  
  b4\) b b a8[( gis]) |
  a2 gis \breathes |
  
  e'4 e e e |
  dis1 |
  s1*2
  b4 b e e |
  <e cis>1 \breathes |
  b4 b b8 b a gis |
  a2( gis) |
  R1*10 |
  
  b2 cis |
  b cis \( 
  gis\) a4 a |
  gis2 gis\( |
  b4\) b b a |
  a2 gis \breathe |
  b2 a4 a |
  gis2 gis\( |
  a4\) cis b a |
  a2 gis \breathe |
  
  gis4 gis gis gis |
  a1\( |
  b4\) b b a |
  a2 gis \breathe |
  e'4 e d d |
  cis1\( |
  
  b4\) b b8[( b]) a[( gis]) |
  a2 gis \breathes |
  e'4 e e e |
  dis1 |
  s1*2
  b4 b e e |
  cis1 \breathes |
  b4 b b8 b a gis |
  b2( b)
  
  \change Staff = "upstaff"
  
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  R1*2 |
  gis2_\markup\italic"(закр. рот)" a |
  gis a |
  R1*8 |
  cis,4 cis cis cis |
  fis1\( |
  b,4\) b b b |
  e2 e |
  e4 e e e |
  a1\( |
  b,4\) b b b |
  e2 e |
  R1*4 |
  e4 e e e |
  a1 |
  b4 b b8 b b, b |
  dis2( e) |
  R1*10 |
  
  gis2 a |
  gis a\( |
  gis\) a4 a |
  gis2 gis \( |
  b4\) b b a |
  a2 gis |
  b a4 a |
  gis2 gis\( |
  a4\) cis b a |
  a2 gis |
  cis,4 cis cis cis |
  fis1\( |
  b,4\) b b b |
  e2 e |
  e4 e e e |
  a1\( |
  b,4\) b b8[( b]) b[( b]) |
  e2 e |
  R1*4 |
  e4 e e e |
  a1 |
  b4 b b8 b b, b |
  b2( e)
}



lyricscore = \lyricmode {
  Гды щл'и -- чна Па -- нна Сы -- на ко -- ўы -- са -- ўа.
  Зв'ель' -- ким вэ -- сэл' -- ем так Йе -- му щп'е -- ва -- ўа:
  
  Л'и -- и л'и -- и л'ай мо -- е Дж'е -- \markup{ "че"\super"н"} -- тэ -- чко,
  л'и -- и л'и -- и л'ай, щл'и -- чнэ Па -- \markup{ "н'э"\super"н"} -- тэ -- чко.
  Л'и -- и л'и -- и л'ай, л'и -- и л'и -- и л'ай
  л'и -- и л'и -- и л'ай, л'и -- и л'и -- и л'и -- и л'ай.
  
  Ч'и -- хо в'ет -- шы -- ку, ч'и -- хо по -- ўуд -- н'ё -- вы.
  Ч'и -- хо по -- в'е -- вай н'ех щпи Пан -- нич но -- вы.
  
  Л'и -- и л'и -- и л'ай вон -- ны муй к'вя -- тэч -- ку,
  л'и -- и л'и -- и л'ай, В_у -- бо -- г'им жўу -- бэ -- чку.
  Л'и -- и л'и -- и л'ай, л'и -- и л'и -- и л'ай
  л'и -- и л'и -- и л'ай, л'и -- и л'и -- и л'и -- и л'ай.
}

toleft = \change Staff="left"
toright = \change Staff="right"

flute = \relative c'' {
  \globali
  \tempo "Andante con moto"
  r4 b cis dis |
  r b cis dis8-. gis-. |
  r4 b, cis dis |
  r b cis dis8-. gis-. |
  
  s1*8
  
  \breathe gis2 gis |
  a4 cis, fis a |
  fis2~ fis |
  a2( gis8) \breathe b, e gis |
  b2 b |
  cis4 e, a cis |
  b1 |
  a2( gis16) b, cis dis e fis gis a |
  b2^\markup\italic"Fl1" b |
  b1 |
  a2 a |
  a gis |
  b b |
  cis1 |
  gis2. fis8 e |
  fis2\startTrillSpan e\stopTrillSpan \bar "||" %fine
  
  
  
  gis4 %^\markup"Fine" 
  fis gis e |
  fis1 |
  dis4 fis e dis |
  cis2 b |
  gis'2^\markup\italic"Fl" gis4 e |
  a1 |
  gis4 b a8 gis fis e |
  #(define afterGraceFraction (cons 15 16))
  \afterGrace fis1\startTrillSpan { e16 fis16\stopTrillSpan }
  e2 r |
  R1 |
  r4 b cis dis |
  r4 b cis dis 
  
  
  
    s1*8
  
  \breathe gis2 gis |
  a4 cis, fis a |
  fis2~ fis |
  a2( gis8) \breathe b, e gis |
  b2 b |
  cis4 e, a cis |
  b1 |
  a2( gis16) b, cis dis e fis gis a |
  b2^\markup\italic"Fl1" b |
  b1 |
  a2 a |
  a gis |
  b b |
  cis1 |
  gis2. fis8 e |
  fis2\startTrillSpan e\stopTrillSpan \bar "|."
}

oboe = \relative c''' {
  \globali
  s1*4
  
  s1*16 |
  gis4^\markup\italic"Fl2" fis gis e |
  fis1 |
  dis4 fis e dis |
  cis2 b |
  gis'4 fis gis e |
  a1 |
  b,2. a8 gis |
  a2\startTrillSpan gis\stopTrillSpan | %fine
  
  
  R1*4
  e'4^\markup\italic"Ob" dis d2 |
  cis1 |
  e4 dis cis8 b a gis |
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a1\startTrillSpan { gis16 a16\stopTrillSpan }
  gis2 r |
  R1 |
  r4 b cis dis |
  r4 b cis dis
  
  s1*16 |
  gis4^\markup\italic"Fl2" fis gis e |
  fis1 |
  dis4 fis e dis |
  cis2 b |
  gis'4 fis gis e |
  a1 |
  b,2. a8 gis |
  a2\startTrillSpan gis\stopTrillSpan | 
  
}

violinone = \relative c' {
  \globali
  b2 cis4 dis |
  b2 cis4 dis8 gis |
  b,2 cis4 dis |
  b2 cis4 dis |
  b2 cis4 dis |
  e2 e |
   fis4 a gis fis |
  fis2 e |
  b2 cis4 dis |
  e2 e |
  fis4 a gis fis |
  fis2 e |
  gis4 fis gis  e |
  fis1 |
  dis4 fis e dis |
  cis2 b |
  gis'4 fis gis e |
  a1 |
  gis4 b  a8 gis fis e |
  fis2( e4) r |
  gis4 fis gis e |
  fis1 |
  dis4 fis e dis |
  e2~ e |
  gis4 fis gis e |
  a2~ a |
  gis4 b a8 gis fis e |
  fis2 e |%fine
  
  
  gis gis |
  fis1 |
  fis |
  e2~ e |
  gis2~ gis |
  a1 |
  gis2 a8 gis fis e |
  dis1( |
  e2) cis4 dis |
  b2 cis4 dis8 gis |
  b,2 cis4 dis |
  b2 cis4 dis8 gis |
  
  
  
  b,2 cis4 dis |
  e2 e |
  fis4 a gis fis |
  fis2  e |
  b2 cis4 dis |
  e2 e |
  fis4 a gis fis |
  fis2 e |
  gis4 fis gis e |
  fis1 |
  dis4 fis e b |
  cis2 b |
  gis'4 fis gis e |
  a1 |
  gis4 b a8 gis fis e |
  fis2( e4) r |
  gis4 fis gis e |
  fis1 |
  dis4 fis e dis |
  e2~ e |
  gis4 fis gis e |
  a2~ a |
  gis4 b a8 gis fis e |
  fis2 e | \bar "|."
}

violintwo = \relative c' {
  \globali
  b2 cis4 dis |
  b2 cis4 dis8 gis |
  b,2 cis4 dis |
  b2 cis4 dis |
  b2 cis4 b |
  b2 b |
  cis4 e dis cis |
  cis2 b |
  b2 cis4 dis |
  b 2 b |
  cis 4 e dis  cis  |
  cis 2 b  |
  e 4 dis  e  cis  |
  cis 1 |
  b 4 dis  cis  b  |
  cis2 b |
  gis'4 fis gis e |
  e 1 |
  e 4 gis  fis 8 e  cis  b  |
  b 2~ b4 r |
  gis'4 fis gis e |
  fis1 |
  dis4 fis e dis |
  cis 2( b ) |
  gis'4 fis gis e |
  e 2~ e |
  e 4 gis fis 8 e  cis  b  |
  cis 2 b |%fine
  
  
  e e |
  cis 1 |
  dis  |
  cis 2( b ) |
  e4 dis d2 |
  e1 |
  e2 fis8 e cis b |
  b1( |
  b2) cis4 dis |
  b2 cis4 dis8 gis |
  b,2 cis4 dis |
  b2 cis4 dis8 gis |
  
  
  
  b,2 cis4 b |
  b2 b |
  cis4 e dis cis |
  cis2 b |
  b2 cis4 dis |
  b2 b |
  cis4  a dis cis |
  cis2 b |
  e4 dis e cis |
  cis1 |
  b4 dis cis b |
  cis2 b |
  gis'4 fis gis e |
  e1 |
  e4 gis fis8 e cis b |
  b 2 ~  b4 r |
  gis'4 fis gis e |
  fis1 |
  dis4 fis e dis |
  cis2( b) |
  gis'4 fis gis e |
  e2~ e |
  e4 gis fis8 e cis b |
  cis2 b |
  
}

alto = \relative c' {
  \globali
   R1*2
   gis2 a |
   gis a |
   gis a |
   gis gis |
   a4 cis b a |
   a2 gis |
   b2 a4 a |
   gis2 gis |
   a4 cis b a |
   a2 gis |
   cis2 cis |
   a1 |
   b2 a4 a |
   a2 gis |
   e'4 dis d2 |
   cis1 |
   b4 dis cis8 b a gis |
   a2( gis4) r |
   e'4 dis e cis |
   dis1 |
   b4 dis cis b |
   a2( gis) |
   e'2 d |
   cis2~ cis |
   b4 dis cis8 b a gis |
   a2 gis | %fine
   
   
   cis2 cis |
   a1 |
   b1 |
   a2 gis |
   b b |
   cis1 |
   b2 cis8 b a gis |
   a1 |
   gis2 a |
   gis a |
   gis a4 a |
   gis2 a  
   
   
   
   gis a |
   gis gis |
   a4 cis b a |
   a2 gis |
   b2 a4 a |
   gis2 gis |
   a4 cis b a |
   a2 gis |
   cis2 cis |
   a1 |
   b2 a4 a |
   a2 gis |
   e'4 dis d2 |
   cis1 |
   b4 dis cis8 b a gis |
   a2( gis4) r |
   e'4 dis e cis |
   dis1 |
   b4 dis cis b |
   a2( gis) |
   e'2 d |
   cis2~ cis |
   b4 dis cis8 b a gis |
   a2 gis | \bar "|."
}

toleft = \change Staff="left"
toright = \change Staff="right"

toup = { \showStaffSwitch \toright}
todown = { \hideStaffSwitch \toleft}

rup = \relative c' {
  \globali
  \tempo "Andante con moto"

  <gis b>2 <a cis> |
  <gis b> cis4 dis |
  <gis, b>2 <a cis> 
  <gis b> cis4 dis |
  \oneVoice b'4-. b'-. b,-. b'-. |
  \repeat unfold 14  { b, b' }
  <cis, e gis>2\arpeggio q\arpeggio |
  \voiceOne s2 fis,8-. a-. cis-. fis-. |
  s2 <cis e>4\arpeggio <b dis>
  
  s1 |
  <gis' b>2\arpeggio q4\arpeggio e |
  <cis e a cis>1\arpeggio
  << <b e gis>\arpeggio {s4 \ottava #1 b'-. b'-. b,-. \ottava #0 } >>
  r <a, b dis fis>\arpeggio <gis b e>2\arpeggio
  <gis' b>\arpeggio gis |
  << <dis fis b>1\arpeggio {s4 \ottava #1 b'-. b'-. b,-. \ottava #0 } >>
  a2~ a |
  <a e cis>2\arpeggio( <gis e b>) |
  <gis, b>2 q |
  <cis e a cis>1\arpeggio |
  \ottava #1 << <e gis b e>\arpeggio {s4 b'-. b'-. b,-.} >> \ottava #0 |
  r4 <b, dis fis a>\arpeggio <gis b e gis>2\arpeggio |%fine
  
  
  <gis cis e>2 <cis e gis> |
  <cis fis a>1 
  
  <b dis fis>2( <dis fis a>) |
  <cis e a>( <b e gis>) |
  <e gis b e>\arpeggio <d gis b e>\arpeggio |
  <cis e a cis>1
  << <e gis b e>1\arpeggio { s4 gis-. b-. e,-. } >>
  r4 <a, b dis fis>\arpeggio <b dis fis a>2\arpeggio |
  << <b e gis>1\arpeggio { s4 b-. cis-. dis-. } >> |
  r b cis-> dis8 gis |
  
   <gis,, b>2 <a cis> 
  <gis b> cis4 dis |
  \oneVoice b'4-. b'-. b,-. b'-. |
  \repeat unfold 14  { b, b' }
  <cis, e gis>2\arpeggio q\arpeggio |
  \voiceOne s2 fis,8-. a-. cis-. fis-. |
  s2 <cis e>4\arpeggio <b dis>
  
  s1 |
  <gis' b>2\arpeggio q4\arpeggio e |
  <cis e a cis>1\arpeggio
  << <b e gis>\arpeggio {s4 \ottava #1 b' b' b, \ottava #0 } >>
  r <a, b dis fis>\arpeggio <gis b e>2\arpeggio
  <gis' b>\arpeggio gis |
  << <dis fis b>1\arpeggio {s4 \ottava #1 b' b' b, \ottava #0 } >>
  a2~ a |
  <a e cis>2\arpeggio( <gis e b>) |
  <gis, b>2 q |
  <cis e a cis>1\arpeggio |
  \ottava #1 << <e gis b e>\arpeggio {s4 b' b' b,} >> \ottava #0 |
  r4 <b, dis fis a>\arpeggio <gis b e gis>2\arpeggio
}

rdown = \relative c' {
  \globali
  s1 s2 a2 |
  s1 s2 a2 |
  s1*8
  s1
  <a' cis fis>1\arpeggio
  <a dis fis>2\arpeggio
  <a>2
  <e a cis>2\arpeggio( <gis b>) |
  e'4 dis  d2 |
  s1 |
  r4 e gis b |
  s1
  e,4 fis e cis( |
  s) s s s |
  <dis fis>2 <cis e>4 <b dis>
  s1
  <e e,>4 <dis dis,> <d d,>2
  s1
  r4 e( gis b) |
  s1
  s1
  r4 a, fis' a,
  s1
  s
  s
  s
  s
  s
  r4 s s s
  s1
  
  
  
  s1 s2 a,2 |
  s1*8
  s1
  <a' cis fis>1\arpeggio
  <a dis fis>2\arpeggio
  <a>2
  <e a cis>2\arpeggio( <gis b>) |
  e'4 dis  d2 |
  s1 |
  r4 e gis b |
  s1
  e,4 fis e cis( |
  s) s s s |
  <dis fis>2 <cis e>4 <b dis>
  s1
  <e e,>4 <dis dis,> <d d,>2
  s1
  r4 e gis b |
  s1
  
}

lup = \relative c {
  \globali
  r4\sustainOn b-. e-. b-.\sustainOff |
  r\sustainOn b-. fis'-. b,-.\sustainOff |
  r b-. e-. b-. |
  r b-. fis'-. b,,-. |
  r gis''^\markup\italic"sempre staccato"( a fis) |
  r e( gis b) |
  r cis( dis a) |
  a4( b gis2) |
  r4 gis( <a b,>) b,,-. |
  r gis'' b e, |
  r a dis cis |
  a4 b gis e |
  r gis e' cis |
  r8 fis,^\markup { \teeny "л.р." }-. a-. cis-. s2 |
  r4 a cis fis, |
  r gis b e |
  r b,( e gis) |
  r8 e,-. e'-. a-. \toright cis e a cis \toleft |
  s1 |
  <b,, b,>2 r4 <gis' b e>
  s1*5
  r8 a cis e \toright a cis e a \toleft |
  s1
  <b,,, b,>2 <e b e,>%fine
  
  
  
  s1*2
  r4 <dis fis> a' <b dis>
  e,,8 b' e fis gis b \toright \voiceTwo e gis \todown \voiceOne
  s1
  r8 a, cis e \toright a cis e a \todown|
  r4 \toright \voiceTwo e,_\markup { \teeny "л.р." } gis b \todown \voiceOne
  r4 b, a2 |
  r4 gis <a dis,> <fis b,> |
  r gis <a cis,> <fis b,> |
  
  
  
  r b,-. e-. b-. |
  r b-. fis'-. b,,-. |
  r gis'' a fis |
  r e gis b |
  r cis dis a |
  a4 b gis2 |
  r4 gis( <a b,>) b,,-. |
  r gis'' b e, |
  r a dis cis |
  a4 b gis e |
  r gis e' cis |
  r8 fis,^\markup { \teeny "л.р." } a cis s2 |
  r4 a cis fis, |
  r gis b e |
  r b,( e gis) |
  r8 e,-. e'-. a-. \toright cis e a cis \toleft |
  s1 |
  <b,, b,>2 r4 <gis' b e>
  s1*5
  r8 a cis e \toright a cis e a \toleft |
  s1
  <b,,, b,>2 <e b e,>
  \bar "|."
}

ldown = \relative c, {
  \globali
  \tempo "Andante con moto"

  e1 |
  e |
  e |
  e |
  <e b' e>\arpeggio
  <e b'> |
  <b' a'> |
  <e, b'>\arpeggio
  <e b' e>\arpeggio |
  <e b'> |
  <b' fis'> |
  <e, b'>\arpeggio |
  cis' |
  << fis, { s4 cis' fis a } >>
  <b, b,>1
  
  <e e,> |
  e, |
  << a, { s4 a'8-. cis-. e-. a-. cis-. e-. } >> |
  <b gis b,>1\arpeggio
  s2 e, |
  <b e,>4 e <gis b> e' |
  <fis, b,> b <dis fis>4 \toup b'' \todown |
  b,,,,4 b' <dis fis> a' |
  e <gis b> e' \toup gis \todown |
  e,,4 b' e gis |
  << <a, a,>1 { s8 cis e a \toright cis e a cis \toleft } >>
  <b, gis e b>1\arpeggio |
  s1 %<b, b,>2 <e b e,> |%fine
  
  
  
  <cis, gis'>4 cis' \toup e gis \todown |
  <cis,, fis,> fis a cis |
  
  <b, b,>1
  s1
  <e, e'>8 fis' gis b \toup d e fis gis \todown |
  << <a,, a,>1 {s8 cis e a \toright cis e a cis \todown} >>
  <b, gis e b>1\arpeggio
  s4 <fis dis b>2 <b, b,>4 |
  <e b e,>1 |
  <e e,>
  
  
  e, |
  e |
  <e b' e>\arpeggio
  <e b'> |
  <b' a'> |
  <e, b'>\arpeggio
  <e b' e>\arpeggio |
  <e b'> |
  <b' fis'> |
  <e, b'>\arpeggio |
  cis' |
  << fis, { s4 cis' fis a } >>
  <b, b,>1
  
  <e e,> |
  e, |
  << a, { s4 a'8-. cis-. e-. a-. cis-. e-. } >> |
  <b gis b,>1
  s2 e, |
  <b e,>4 e <gis b> e' |
  <fis, b,> b <dis fis>4 \toup b'' \todown |
  b,,,,4 b' <dis fis> a' |
  e <gis b> e' \toup gis \todown |
  e,,4 b' e gis |
  << <a, a,>1 { s8 cis e a \toright cis e a cis \toleft } >>
  <b, gis e b>1\arpeggio |
}


  
violinOnePart = \new Staff \with {
  instrumentName = "Violin 1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} <<
  
     \oneVoice \violinone
 >>
 
violinTwoPart = \new Staff \with {
  instrumentName = "Violin 2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} <<
  
     \oneVoice \violintwo
 >> 
 
 violiniPart = \new Staff \with {
  instrumentName = "Violini"
  shortInstrumentName = \markup \center-column { "V1" "V2" }
  midiInstrument = "violin"
} <<
  
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>
  
altoPart = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "V-la"
  midiInstrument = "viola"
} <<
     \clef alto \oneVoice \alto
  >>  

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl"
  midiInstrument = "flute"
} <<
     \new Voice { \voiceOne \flute }
     \new Voice { \voiceTwo \oboe }
  >>
  
flutePartOne = \new Staff \with {
  instrumentName = "Flute 1"
  shortInstrumentName = "Fl 1"
  midiInstrument = "flute"
} <<
    \oneVoice  \flute
  >>
  
flutePartTwo = \new Staff \with {
  instrumentName = "Flute 2"
  shortInstrumentName = "Fl 2"
  midiInstrument = "flute"
} <<
    \oneVoice  \oboe
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

choirpart = \new ChoirStaff <<
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
    >>

\bookpart {
  \header { piece = "Хор" }
  \score {
      \transpose e as {
    \choirpart
      }  % transposeµ
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
      \transpose e as {
    <<
    \pianoPart
    >>
      }  % transposeµ
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
  \header { piece = "Flutes" }
  \score {
      \transpose e as {
    \new StaffGroup <<
    \flutePartOne
    \flutePartTwo
    >>
      }  % transposeµ
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
  \header { piece = "Violini" }
  \score {
      \transpose e as {
    \new StaffGroup <<
    \violinOnePart
    \violinTwoPart
    >>
      }  % transposeµ
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
  \header { piece = "Viola" }
  \score {
      \transpose e as {
    <<
    \altoPart
    >>
      }  % transposeµ
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
      \transpose e as {
    <<
    
      \flutePart
    
    \new StaffGroup <<
      \violiniPart
      \altoPart
    >>
    \pianoPart
    >>
      }  % transposeµ
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
  \header { piece = "Choir + Piano" }
  \score {
      \transpose e as {
    <<
   %     \set Score.skipBars = ##t
    \choirpart
    \pianoPart
    >>
      }  % transposeµ
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
  \header { piece = "Full" }
  \score {
      \transpose e as {
    <<
        \set Score.skipBars = ##t
    \choirpart
     
      \flutePart
    \new StaffGroup <<
      \violiniPart
      \altoPart
    >>
    \pianoPart
    >>
      }  % transposeµ
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
    \unfoldRepeats
      \transpose e as {
    <<
      \choirpart
      \flutePart
      \violiniPart
      \altoPart
      \pianoPart
    >>
      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
