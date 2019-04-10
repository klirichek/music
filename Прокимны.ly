\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-last =  ##f
  %ragged-last-bottom = ##f
}

co = \cadenzaOn
cof = \cadenzaOff
br = \bar ""
\header {
  %title = "Сугубая ектения"
  %composer = "С. Мокраняц"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Вечерни гл. 6"
\null }  

sv = \relative c'' {
  \key f \major
  \co <a d>4 q q q q <c e> \br <c f>1 <c e>2 q <a d> q4( <c e>) <c~ f>2( <c e>2.
  <a d>4 << c2 {f4 e} >> <b d>1 <c a>) <a d>1 \cof \bar "||"
}

av = \relative c' {
  f4 f f f f g a1 g2 g f f4( g) a2( g2. f4 a g4~ g1 e) f
}

tv = \relative c' {
  \key f \major
  a4 a a a a c c1 c2 c a a4( c) c2(~ c2. a4 c2 b1 a) a 
}

bv = \relative c {
  d4 d d d d c f1 c2 c d d4( c) f2( c2. d4 a c g1 a) d
}

lv = \lyricmode {
%  \override LyricText.self-alignment-X = #LEFT
  Го -- сподь во -- ца -- ри -- ся в_ле́ -- по -- ту о -- бле -- че́ -- ся.
%  \override LyricText.self-alignment-X = #CENTER
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }
    





\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 1"
\null }  

sv = \relative c'' {
  \key bes \major
  \co bes4 bes\breve bes4 \bar "|" bes c d d\breve d4  \br c( bes) c( d) d( c)  \br c8[( bes] a4 bes a) g2 g f1 \bar "||"
  a\breve \bar "||" <bes f>^\markup\italic"Либо:" \bar "||" \cof
  \co bes4 bes bes c d d d  \br d c( bes c d) d( c)  \br d8[( bes] a4 bes a g2) g f1 \cof \bar "||"
  \co b4^\markup\bold"Перед Евангелием:" b b b c c\breve  \br c4 c2 bes1 \bar "|" bes\breve \cof \bar "||"
}

av = \relative c' {
  d4 d\breve d4 d f f f\breve f4 f( d) f2 f4( es) es( c d c) d2 e2 c1
  f\breve d
  d4 d d f f f f f f( d f2) f4( es) es( c d c d2) e2 c1
  g'4 g g g g g\breve g4 f2 f1 f\breve
}

tv = \relative c {
  \key bes \major
  f4 f\breve f4 f a bes bes\breve bes4 a( g) a( bes) bes( g) g( f2.) bes2 c a1
  c\breve f,\breve
  f4 f f a bes bes bes bes a( g a bes) bes( g) g( f2. g2) c a1
  d4 d d d es es\breve es4 es2 d1 d\breve
}

bv = \relative c {
  bes4 bes\breve bes4 bes f' bes, bes\breve bes4 f'( g) f( bes,) bes( c) c( f bes, f') g2 c, f1
  f\breve bes,
  bes4 bes bes f' bes, bes bes bes f'( g f bes,) bes( c) c( f bes, f' g2) c, f1
  g4 g g g c, c\breve c4 f2 bes,1 bes\breve
}

lv = \lyricmode {
  Ны -- не_воскресну́,_глаголет_Го -- сподь, по -- ло -- жу́ -- ся_во_спасени -- е не о -- би -- ню -- ся о нем.
  \override LyricText.self-alignment-X = #LEFT
  Господи,_помилуй._Аминь.
  Господи,_помилуй._Аминь.
  Вся -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
  Го -- спо - ди, по -- милуй,_Господи,_помилуй,_Господи, по -- ми -- луй.
  И_духови_твоему.
  
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }
    
    
    
    
    
    
\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 2"
\null }  

sv = \relative c'' {
  \key g \major
  \co b4( <c a>) <b d> q\breve q4 \bar "|" q  q  \br q q( <a c> <g b> <a c>)  \br <b d>2 << { c1( b2 c4 b } { g1~ g } >> <a e>2 <b g>2.) <a fis>4 q1 \cof \bar "||"
  \co <g b>4 q q  \br <a c> <b d> q q q  \br q( <a c> <g b> <a c>) <b d>2  \br << { c1( b2 c4 b } { g1~ g } >> <a e>2 <b g>2.) <a fis>4 q1\fermata \cof \bar "||"
  \co g4^\markup\bold"После Евангелия:" g g a b1 a2 g a( b) g1 a b\fermata \cof \bar "||"
  \co <b d>4^\markup\bold"После канона:"( <a c> <g b> <a c>) <b d>2 << { c1( b2 c4 b } { g1~ g } >> <a e>2) <b g>2.( <a fis>4) q1\fermata \cof \bar "||"
  
}

av = \relative c'' {
  g2 g4 g\breve g4 g g g g1 g2 e1( d2 e4 d c2 d2.) d4 d1
  d4 d d d g g g g g1 g2 e1( d2 e4 d c2 d2.) d4 d1
  d4 d d d g1 d2 d fis1 e fis g
  g g2 e1( d2 e4 d c2) d1 d
  
}

tv = \relative c' {
  \key g \major
  g4( a) b b\breve b4 b b b b( a g a) b2 g1~( g e2 g2.) fis4 fis1
  g4 g g a b b b b b( a g a) b2 g1(~ g e2 g2.) fis4 fis1
  b4 b b c d1 c2 b d1 b d d
  b4( a g a) b2 g1~( g e2) g2.( fis4) fis1
}

bv = \relative c' {
  g2 g4 g\breve g4 g g g g1 g2 c,1( g2 c4 g a2 g2.) d'4 d1
  g4 g g g g g g g g1 g2 c,1( g2 c4 g a2 g2.) d'4 d1\fermata
  g4 g g g g1 fis2 g d1 e d <g, g'>\fermata
  g'1 g2 c,1( g2 c4 g a2) g2.( d'4) d1\fermata
}

lv = \lyricmode {
%  
  Во -- ста́ -- ни,_Господи_Боже_мой,_повеле́нием,_и́мже_запове́дал_е -- си и сонм лю -- дей о -- бы -- дет Тя.
  \override LyricText.self-alignment-X = #LEFT
  Вся -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
  Сла -- ва Те -- бе, Го -- спо -- ди, сла -- ва Те -- бе.
  Свят Го -- сподь Бог наш.
%  \override LyricText.self-alignment-X = #CENTER
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }






\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 3"
\null }  

sv = \relative c'' {
  \tempo "Быстро"
  \key bes \major 
  \co c4\f c\breve c4 \bar "|" c c c c-> c c c bes c \bar "" d1( c4-> bes-> c-> d->)  \br c2 c  \br c c2.( d4-> c-> bes-> c1)  \br bes4( a bes2) a1\fermata \cof \bar "||"
  \co bes4 bes bes2 bes1 \bar "|" bes2 bes1 \bar "||" c4 c c c c c bes \bar "|" c  \br d1( c4 bes c d c2) c  \br c2.( d4 c bes c1) bes4( a bes2) a1\fermata \cof \bar "||"
  \co b4 b b b c c c c\breve c4 <c a>2 b1 \cof \bar "||" \co b\breve \cof \bar "||"
  \co b4^\markup\bold"Перед Евангелием:" b1 b2 b b1 a2 a b1 \cof \bar "||"
  \co <b f>4^\markup\bold"После Евангелия:" q q <c f,> <d b>1 <c a>2 <b g> <c a>( <d b>) <b g>1 <c a> <d b>\fermata \cof \bar "||"
}

av = \relative c' {
  es4 es\breve es4 es es es f f f f d f f1~ f es2 es es f1.~ f1 d d
  f4 f f2 f1 f2 f1 es4 es es es f f d f f1(~ f es2) es f1.~ f1 d d
  g4 g g g g g g g\breve g4 f2 f1
  f\breve
  f4 f1 f2 f g1 f2 f f1
  d4 d d es f1 f2 d f1 d f f
}

tv = \relative c' {
  \key bes \major
  g4 g\breve g4 g g g a a a a g a bes1( a4-> g-> a-> bes->) g2 g g a2.( bes4-> a-> g-> a1) g4( fis g2) fis1
  d'4 d d2 d1 d2 d1 g,4 g g g a a g a bes1( a4 g a bes g2) g a2.( bes4 a g a1) g4( fis! g2) fis1
  d'4 d d d es es es es\breve es4 es2 d1 d\breve
  d4 d1 d2 d es1 es2 es d1
  bes4 bes bes bes bes1 a2 bes a( bes) bes1 a bes
}

bv = \relative c {
  c4 c\breve c4 c c c f-> f f f g f bes,1( f'2. bes,4) c2 c c f1.~ f1 g4( d g2) d1\fermata
  bes4 bes bes2 bes1 bes2 bes1 c4 c c c fis fis g fis bes,1( fis'2. bes,4 c2) c fis1.~ fis1 g4( d g2) d1\fermata
  g4 g g g c, c c c\breve c4 fis2 bes,1 bes\breve
  bes4 bes1 bes2 bes es1 fis2 fis bes,1
  bes4 bes bes bes bes1 fis'2 bes, fis'1 g fis bes,\fermata
}

lv = \lyricmode {
  Рцы́ -- те_во_язы́цех,_яко_Господь_воцари́ -- ся и́ -- бо и -- спра́ -- ви все -- ле -- нну -- ю
  я́ -- же не по -- дви́ -- жи -- тся.
  Господи, по -- ми -- луй. А -- минь.
  Вся -- ко -- е ды -- ха́ -- ни -- е да хва -- лит Го -- спо -- да.
  Го -- спо -- ди, по -- ми -- луй, Го -- споди,_помилуй,_Господи по -- ми -- луй.
  \override LyricText.self-alignment-X = #LEFT
  И_духови_твоему.
  Слава_Тебе, Го -- спо -- ди сла -- ва Те -- бе.
  Сла -- ва Те -- бе, Го -- спо -- ди, сла -- ва Те -- бе.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }





\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 4"
\null }  

sv = \relative c' {
  \key bes \major
  \co <f bes>4 <f c'> <bes d> q\breve q4 <<d4 \new Voice {\voiceThree c8[( d])}>> <bes es>4 <bes d>1 << { c4( d c2) } { g2.( a4)} >> <f bes>1\fermata \bar "||" \cof
  \co q\breve \bar "||" \cof
  \co q4 q q <f c'> <bes d> q q \bar "|" q <<d4 \new Voice {\voiceThree c8[( d])}>> <bes es>4 <bes d>1 << { c4( d c2) } { g2.( a4)} >> <f bes>1\fermata \bar "||" \cof
  \co << {d'2( c8[ d])} bes2. >> <bes es>4 <bes d>1 << { c4( d c2) } { g2.( a4)} >> <f bes>1\fermata \bar "||" \cof

}

av = \relative c' {
  d4 es f f\breve f4 es8[( f]) g4 f1 es4( f g f) d1
  d\breve
  d4 d d es f f f f es8[( f]) g4 f1 es4( f g f) d1
  f2( es8[ f]) g4 f1 es4( f g f) d1
}

tv = \relative c {
  \key bes \major
  f4 f bes bes\breve bes4 bes bes bes1 g2.( a4) f1
  f\breve
  f4 f f f bes bes bes bes bes bes bes1 g2.( a4) f1
  bes2. bes4 bes1 g2.( a4) f1
}

bv = \relative c {
  bes4 bes bes bes\breve bes4 bes es bes1 c2( es4 f) bes,1\fermata
  bes\breve
  bes4 bes bes bes bes bes bes bes bes es bes1 c2( es4 f) bes,1\fermata bes2. es4 bes1 c2( es4 f) bes,1\fermata
}

lv = \lyricmode {
  Во -- скре -- сни́, Господи,_помози́_нам_и_изба́ви_нас_И́ме -- не Тво -- е -- го́ ра́ -- _ ди.
    \override LyricText.self-alignment-X = #LEFT
  Господи,_помилуй._Аминь
  Вся́ -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- _ да.
  Свят Го -- сподь Бог __ _ наш.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }







\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 5"
\null }  

sv = \relative c' {
  \key f \major
  \co <f a>4 <g bes> <a c> q\breve q4 q q <f a> <f bes>1 <f c'>2 << f2 { c'4( bes) } >> <f a>2.( <g bes>4) <a c>1 <<{bes4( a bes2)} f1 >> <f a>1\fermata \bar "||" \cof
  \co q4 q q <g bes> <a c> q q <f a> << { f1. f2} { bes1( c2) c4( bes)}>> <f a>2.( <g bes>4 <a c>1) << { bes4( a bes2) } f1 >> <f a>1\fermata \bar "||" \cof

}

av = \relative c' {
  c4 c f f\breve f4 f f c c1 c2 c4( d) c1 f d4( c d2) c1
  c4 c c c f f f c d1( c2) c4( d) c1( f) d4( c d2) c1
}

tv = \relative c {
  \key f \major
  f4 g a a\breve a4 a a f f1 f2 f f2.( g4) a1 f f
  f4 f f g a a a f f1. f2 f2.( g4 a1) f f
}

bv = \relative c {
  f4 f f f\breve f4 f f f bes,1 a2 a4( bes) f'1 f bes,4( f' bes,2) f1\fermata
  f'4 f f f f f f f bes,1( a2) a4( bes) f'1~ f bes,4( f' bes,2) f1\fermata
}

lv = \lyricmode {
  Во -- скре -- сни́, Господи,_Боже_мой,_да_вознесе́тся_рука_Тво -- я, я -- ко Ты цар -- ству -- е -- ши во ве -- ки.
  Вся́ -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }









\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 6"
\null }  

sv = \relative c'' {
  \key f \major
  \co <a d>4 q\breve q4 <c e> <c~ f>1( <c e>) <a d>2 q4( <c e>) <c f>2( <c e>2. <a d>4 <c f> <c e> <b d>1 <a c>) <a d>1\fermata \bar "||" \cof
  \co <g c>\breve \bar "||" \cof
  \co <a d>4 q q q q q q <c e> <c f>1( <c e> <a d>2) q4( <c e>) <c f>2( <c e>2. <a d>4 <c f> <c e> <b! d>1) <a c> <a d>\fermata \cof \bar "||"
}

av = \relative c' {
  f4 f\breve f4 g a1( g) f2 f4( g) a2( g2. f4 a g g1 e) f
  e\breve
  f4 f f f f f f g a1( g f2) f4( g) a2( g2. f4 a g g1) e f
}

tv = \relative c' {
  \key f \major
  a4 a\breve a4 c c1~ c a2 a4( c) c2~( c2.  a4 c2 b1 a) a
  g\breve
  a4 a a a a a a c c1(~ c a2) a4( c) c2~( c2. a4 c2 b!1) a a
}

bv = \relative c {
  d4 d\breve d4 c f1( c) d2 d4( c) f2( c2. d4 a c g1 a) d\fermata
  c\breve
  d4 d d d d d d c f1( c d2) d4( c) f2( c2. d4 a c g1) a d\fermata
}

lv = \lyricmode {
  Го́ -- споди,_воздви́гни_силу_Твою_и_прии -- ди во е́ -- же спа -- сти нас.
  Господи,_помилуй!_Аминь.
  Вся́ -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }









\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 7"
\null }  

sv = \relative c' {
  \key a \major
  \co <fis a>4 <gis b> <a cis> q\breve q4 q q q q <a d> <a e'>2 q4 <a d> <a cis>2 <a d>4 <a cis> <fis b>1\fermata \bar "||" \cof
  \co <a cis>\breve \bar "||" \cof
  \co <fis a>4 q q <gis b> <a cis> q q <a d> <a e'>2 q4( <a d>) <a cis>2 << a2 { d4( cis)} >> <fis, b>1\fermata \bar "||" \cof
}

av = \relative c' {
  cis4 e e e\breve e4 e e e e fis e2 e4 fis e2 fis4 e d1
  e\breve
  cis4 cis cis e e e e fis e2 e4( fis) e2 fis4( e) d1
}

tv = \relative c {
  \key a \major
  fis4 gis a a\breve a4 a a a a a a2 a4 a a2 a4 a fis1
  a\breve
  fis4 fis fis gis a a a a a2 a a a fis1
}

bv = \relative c {
  fis4 e a, a\breve a4 a a a a d cis2 cis4 d a2 d4 a b1\fermata
  a\breve
  fis'4 fis fis e a, a a d cis2 cis4( d) a2 d4( a) b1\fermata
}

lv = \lyricmode {
  Во -- скре -- сни́, Господи_Боже_мой,_да_вознесе́тся_рука_Тво -- я,
  не за -- бу́ -- ди у -- бо -- гих Тво -- их до ко -- нца.
  Господи,_помилуй!_Аминь.
  Вся́ -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }










\markup \fill-line { \null \fontsize #4 \bold \center-align
    "Прокимен Утрени гл. 8"
\null }  

sv = \relative c'' {
  \key a \minor
  \co b4 c d d d d d d \bar "|" d c b c2( b4 c d1 c2) c4( b) \bar "" a( b c d c1 b4 c) b2 a1 \cof \bar "||"
  \co b\breve \bar "||" \cof
  \co b4 b b c d d c b c2( b4 c d1 c2) c4( b) a( b c d c1 b4 c) b2 a1 \cof \bar "||"
}

av = \relative c' {
  d4 e f f f f f f f e d e2( d4 e g1 e2) e4( f) c( d e g e1 d4 e) d2 c1
  g'\breve
  d4 d d e f f e d e2( d4 e g1 e2) e4( d) c( d e g e1 d4 g) d2 c1
}

tv = \relative c' {
  \key a \minor
  g4 g a a a a a a g g g g1~( g a2) a a2.( b4 g1.) g2 e1 |
  d'\breve
  g,4 g g g a g g g g1~( g1 a2) a a2.( b4 g1~ g2) g e1
}

bv = \relative c' {
  g4 e d d d d d d b c g c2( g4 c b1 a2) a a2.( g4 c1 g4 c) g2 a1
  g'\breve
  g4 g g e c b c g c2( b4 c b1 a2) a a2.( g4 c1 g4 c) g2 a1
}

lv = \lyricmode {
  Во -- ца -- ри -- тся Го -- сподь во век, Бог Твой, Си -- о -- не, в_род и род.
  Господи,_помилуй!_Аминь.
  Вся́ -- ко -- е ды -- ха -- ни -- е да хва -- лит Го -- спо -- да.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }










sv = \relative c'' {
  \key bes \major
  \co bes\breve^\markup\bold"Перед Евангелием:" bes4 bes1 bes2 bes bes1 a2 a bes1 \cof \bar "||"
  \co <bes f>4^\markup\bold"После Евангелия:" q q <c f,> <d bes>1 <c a>2 <bes f> <c a>( <d bes>) <bes g>1 <c a> <d bes>\fermata \bar "||" \cof
  \co c4(^\markup\bold"гл. 1" bes c d) d( c) c8[( bes] a4 bes a) g1 f \cof \bar "||"
}

av = \relative c' {
  f\breve f4 f1 f2 f g1 f2 f f1
  d4 d d es f1 f2 d f1 d f f
  f4( d f2) f4( es) es( c d c) d2( e) c1
}

tv = \relative c' {
  \key bes \major
  d\breve d4 d1 d2 d es1 es2 es d1
  bes4 bes bes bes bes1 a2 bes a( bes) bes1 a bes
  a4( g a bes) bes( g) g( f2.) bes2( c) a1
}

bv = \relative c {
  < bes bes'>\breve q4 q1 q2 q e1 f2 f bes,1
  bes4 bes bes bes bes1 f'2 bes, f'1 g f bes,\fermata
  f'4( g f bes,) bes( c) c( f bes, f') g2( c,) f1
}

lv = \lyricmode {
  Слава_Те -- бе, Го -- спо -- ди, сла -- ва Те -- бе!
  Сла -- ва Те -- бе, Го -- спо -- ди, сла -- ва Те -- бе!
  Свят __ Го -- сподь Бог наш.
}

\score { \new ChoirStaff <<
  \new Staff << \new Voice = "sv" { \voiceOne \sv } \new Lyrics \lyricsto "sv" { \lv } \new Voice  { \voiceTwo \av} >> 
  \new Staff << \new Voice { \voiceOne \clef bass \tv } \new Voice { \voiceTwo \bv } >>
>> \layout { \context { \Staff \remove "Time_signature_engraver" } } }
