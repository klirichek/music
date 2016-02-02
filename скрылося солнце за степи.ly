\version "2.18.2"

\header {
  title = "Скрылося солнце за степи"
  subtitle = "Opus 64"
  composer = "музыка: Аскольд Муров (1928-1996)"
  arranger = "ред.: Григорий Чернинский"
  poet = "текст: Алексей Толстой (1817-1875)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

#(set-global-staff-size 19)

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  system-separator-markup = \slashSeparator
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

global = {
  \key b \minor
  \numericTimeSignature
  \time 6/8
  \autoBeamOff
  \dynamicUp
}

db=\bar "||"
six= {\db \time 6/8}
nine= { \db \time 9/8}
white = {\once \override Staff.TimeSignature.whiteout = ##t}

soprano = \relative c' {
  \global
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 3)
  \set Score.markFormatter = #format-mark-box-numbers
  \tempo Lento
  % Вписывайте музыку сюда
  fis4.(^\markup {\dynamic pp \tiny \italic "Bocca chiusa" } e) | fis~(\< fis4 b8) | 
  fis4(\> e8 fis4.~\! \nine fis~ fis~\< fis4) b8\! \six
  fis4(\> e8 fis4.~ | fis~\! fis~\< | fis4\!) e8( fis4.~ | fis4 e8 fis4.\dim~ | fis4) e8( fis4) e8( |
  fis4.~\ppp fis~^\markup\italic ten. | \mark #2 fis8) r r r4 r8
  \nine R1*9/8 \six R1*6/8 |
  r4. r8 e8 fis\cresc \nine g4. g\> g\!
  \six fis4.~ fis8 e\< fis \nine g4.\> g g\! |
  fis4\< \breathe fis8 g fis g\! a g a \six fis4.\> c'~ | c~ c8\! r r | R1*6/8 | R
  \nine \mark \default r8 d,[(\p e]) f\< f f f e f\! \six a!4.\> a\!
  
  \nine r8 d,[( e]) f\< f f f\! e f \db \time 12/8 aes4.~\> aes~ aes~\! aes8 r\ppp g! |
  e!4\< \glissando b'8 b4.~\> b4 b8 g\! g g \six fis!4 fis8~ fis r fis \nine
  e4.\pp b'4 b8\> g g g | fis4.~\ppp fis8 r r r4 g8->^\markup{\dynamic f \italic energico } |
  c-> g-> a!->\< b4.~-> b8 r\ff b | \mark \default e4. d4 g,8 c b a \six b4. e,4 \breathe e8 |
  a4. a4 fis8 | b4.~\< b4 b8\! \nine \mark \default c8 b b d b b dis b b |
  c b b d? b b e([ b]) b \six c b b e b b |
  <b fis'>4. b8 <b d>[( <c e>]) | \mark \default <b fis'> q <c e> <b fis'> q <c e> | <b fis'>4.~ q8 <b d>([ <c e>] |
  <b fis'>4) <c e>8( <b fis'>4) <c e>8( | <b fis'>8[^\markup \italic dim. <c e> <b fis'>] <fis b>)\mf r q |
  <e c'> <fis b> q <g d'> <fis b>\< q | <e c'> <fis b>\f r r4 q8 | <e c'> <fis b> q <g d'> <fis b> q |
  <e c'>[(^\markup \italic dim. <fis b>]) r r4 q8
  \nine <e c'>\> q q <fis b> q\! r r4 q8 | <e c'>^\markup \italic rit. q\> q <fis b>4.~ q~ 
  \white \six q8\pp r r r4. |
  \mark \default \tempo "Allargando e rubato" R1*6/8 | << R1*6/8 { s4 s\fermata s } >> | R1*6/8*5 | \mark \default
  R1*6/8 | 
  %page 11
  \nine R1*9/8 \six R1*6/8 | r4. r8 e\p fis 
  \nine g4. g g \six fis4.~ fis8 \breathe e fis
  \nine g4. g g | fis4 \breathe e8 fis e\< fis g fis g\!
  \six \mark #10 fis4. c'4.~ | c~ c8 r r | R1*6/8 |
  r4. r4 fis,8--\p | fis-- fis-- fis-- fis-- fis-- fis-- | 
  fis4.~-- fis~\pp | 
  fis~^\markup \italic "molto rit." fis~ |
  fis8~\pp fis fis fis-- fis-- fis-- |
  fis4.~ fis~\dim | fis~ fis~ fis8\pppp r r r4.\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Вписывайте музыку сюда
  b4.(^\markup {\dynamic pp \tiny \italic "Bocca chiusa" } c) | b~\< b | b4(\> c8 b4.~ \nine b~\! b~\< b4) r8\!
  \six b4(\> c8 b4.~ | b~\! b~\< | b4)\! c8( b4.~ | b4 c8 b4.~\dim | b4) c8( b4) c8(
  b4.~\ppp b~^\markup\italic ten. | b8) r r r4 r8 | R1*9/8 | R1*6/8 |
  r4. r8 <d e> <cis e> | <b e>4. q\> <ais fis'>\! |
  
  << { b4.~ b8 d\< cis | b4.\> ais b\! | c4 \breathe c8 c c c c c c c4.\> c~ | c~ c8\! }
     { e4.( d8) e e | e4.    e   e   | e4	   e8 e e e e e e e4.   e~ | e~ e8 } >>
  r8 r | R1*6/8 | r4. d4.\p |
  b\pp b ais4 \breathe ais8 \six b8\< b b c c c\!
  \nine b4. b4 b8 ais4. | b4 \breathe b8\< c c c\> b4.~ b8 r\ppp b |
  c4\<\glissando g'8 g4.~\> g4 g8 e\! e e \six d4 d8~ d r b |
  \nine cis4.\pp g'4 g8\> e e e | d4.~\ppp d8 r r r4 e8->\f | e-> e-> e->\< dis4.~-> dis8 r\ff b' |
  c b a b a g a e f \six g fis? g c, b c |
  %page 7
  a[( b]) c g' fis e | d c d b4.( \nine b') b b~ |
  b b b \six b8 b b b b b |
  %page 8
  fis4. fis8 b[( g]) | fis fis e fis fis g | fis4.~ fis8 b[( g] |
  fis4) g8( fis4) g8( | fis[^\markup \italic dim. g fis] b,)\mf r b | c c c d b b |
  %page 9
  c8 b\f r r4 b8 | c b b d b b | c[(^\markup \italic dim. b]) r r4 b8 |
  \nine c\> c c b b\! r r4 b8 | c^\markup \italic rit. c\> c b4.~ b~ \six b8\pp r r r4. |
  %page 10
  R1*6/8 | << R1*6/8 { s4 s\fermata s } >> | R1*6/8*2 |
  d8([\p\< cis d] e[ d e]) | fis4.~\! fis~ | <fis b,>~\> q~ 
  | q~\ppp q~ |
  %page 11
  \nine q~ q~ q~ \six q~ q~ | q8 r r r
  << { e\p e | e4. e e  | e( d8) \breathe e e }
     { d cis!| b4. b ais| b( b8) 	    d cis } >>
  %page 12
  << { e4. e   e | e4 \breathe e8 e e\< e e e e\! | e4. e~ | e~ e8 }
     { b4. ais b | c4          c8 c c   c c c c   | c4. c~ | c~ c8 } >>
  r8 r | R1*6/8 |
  %page 13
  r4. r4 fis8--\p | fis-- e-- b-- fis'-- e-- b-- | <c e>4.~ q~\pp q~^\markup \italic "molto rit." q~ |
  q8\pp~ q q q-- q-- q-- | <b dis>4.~-- q~\dim | q~ q~ | q8\pppp r r r4.\fermata
  
  
}

tenor = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*6/8*3 | R1*9/8 | R1*6/8*6 | 
  %page 2
  d4.^\markup {\dynamic p \italic espressivo } cis4 fis,8 | b a d, g4~ g8 fis4.~ | fis~  fis~ |
  fis~ fis~ | fis8 r8 fis8--^\markup \italic marcato fis-- fis-- fis-- fis-- fis-- fis-- |
  %page 3
  fis4. fis~ | fis8 r^\markup \italic espressivo fis-- fis-- fis-- fis-- fis-- fis-- fis-- |
  fis4.~ fis~ fis8 r d\< | b' a\! g a g fis |
  %page 4
  e4. d8 r r | R1*6/8*2 |
  r8 d[(\p e]) f f\< f f e f\! | a!4.\> a\! |
  %page 5
  r8 d,[( e]) f\< f f f\! e f | aes4.~\> aes~ aes~\! aes8 r g\ppp |
  e!4\<\glissando b'8 b4.~\> b4 b8 g\! g g | fis!4 fis8~ fis r d |
  %page 6
  e4.\pp b'4 b8\> g g g | fis4.~\ppp fis8 r r r4 g8->\f | g-> g-> g->\< fis4.~-> fis8 r\ff b |
  e4. d4 g,8 c b a | b4. e,4 \breathe e8 |
  %page 7
  a4. a4 fis8 | b4.~\< b4 b8\! | c b b d b b dis b b |
  c b b d! b b e[( b]) b | c b b e b b |
  %page 8
  fis'4. e4 \breathe d8->\fff | g4.->^\markup \italic marcatissimo fis4-> b,8-> | e-> d-> cis-> d4.-> |
  b4 b8 c b a | e'4 e8 e\> e e\! | e4.~\< e4\! \breathe e8\f |
  %page 9
  e b c d4. | a4.~ a8 r d | d a b c c c |
  fis,4. g4 a8 b4.~ | b~^\markup\italic rit. \> b~ b~ \white | b8\pp r r r4. |
  %page 10
  R1*6/8 | << R1*6/8 { s4 s\fermata s } >> | R1*6/8*5 |
  d4.\mp\< cis!4 fis,8 |
  %page 11
  b\!^\markup\italic espressivo a d, g4~ g8 fis4.~ | fis~ fis~ | fis~ fis~ |
  fis8 r fis-- fis-- fis-- fis-- fis-- fis-- fis-- | fis4.-- fis~-- |
  %page 12
  fis8 r fis-- fis-- fis-- fis-- fis-- fis-- fis-- | fis4.~ fis~ fis8 r d |
  b' a g a g fis | e4.\> d8\! r r R1*6/8*3
  %page 13
  r4. r4 fis8-- | fis-- fis-- fis--^\markup\italic "molto rit." fis4.-- |
  fis-- fis-- | fis--~ fis~\dim | fis~ fis~ | fis8\pppp r r r4.\fermata 
}

baritone = \relative c {
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  %page 1
  \repeat unfold 11 \skip 1
  %page 2
  s2
  \voiceOne  
    fis8-- fis-- fis-- fis-- fis-- fis-- fis--
  %page 3
    fis4. fis~ | fis8 r fis-- fis-- fis-- fis-- fis-- fis-- fis-- |
    fis4.~( fis e4) d8 
  %skip
    \repeat unfold 29 \skip 1 s8
  %page 10
  fis8\p | a g fis a g fis | a4( g8) fis r\fermata cis | e d cis e d cis |
  e4. fis~ | fis~ fis~ | fis8 s s2
  \repeat unfold 4 \skip 1 s8 
  %page 11
  s s fis8 -- fis-- fis-- fis-- fis-- fis-- fis-- | fis4.-- fis--~ |
  %page 12
  fis8 r fis-- fis-- fis-- fis-- fis-- fis-- fis-- | fis4.~ fis( e4) d8 |
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*6/8*3 | d8([^\markup {\dynamic pp \tiny \italic "Bocca chiusa" } cis d] e[ d e] fis4.~
  fis~ fis) \breathe | d8[( cis d] e[ d e] | fis4.~ fis)\> | 
  b,~ b\!\dim | e~ e | 
  %page 2
  b~ b~ | b~ b~ | b~ b~ b8 r fis\p | b cis d fis e b |
  cis4.~ cis~ | cis8 r \voiceTwo { cis cis4. bis4 cis8 |
  %page 3
  fis,-> fis-> fis-> fis4-> fis8~ | fis r cis' bis4. cis4 cis8 |
  fis,8 fis fis fis4.( e'4)  d8 } | \oneVoice b' a g a g fis |
  %page 4
  e4.\< d4\! \breathe e8\> | a, b\! c g'--^\markup\italic ten. fis-- e-- | d4.--~ d4 d8\pp |
  <g, d'>4. q <g cis>4 \breathe q8 | <g d'>8\< q q <g es'> q q\! ||
  %page 5
  <g d'>4.\> q4 q8 <g cis!>4.\! | <g d'>4 \breathe q8\< <g es'> q q\> <g d'>4.~ q8 r q\ppp |
  a!4\<\glissando e'8 e4.~\> e4 e8 c8\! c c | b4 b8~ b r g |
  %page 6
  a4.\pp e'4 e8\> c c c | b4.~\ppp b8 r r r4 b8\f-> | ais-> ais-> ais->\< b4.~-> b8 r\ff <b b'> |
  <e c'> <e b'> <e a> <e b'> <e a> <e g> <e a> e fis | g fis g c, b c |
  %page 7
  a[( b]) c g' fis e | d c d b4.~( | <b b'>) q q~ |
  q q q | q8 q q q q q |
  %page 8
  <fis' b>4. e4 \breathe d!8\fff-> | g4.-> fis4-> <b,b'>8-> | <e e'>-> <d d'>-> <cis! cis'!>-> <d d'>4.-> |
  g4 g8 c b a | e4 e8 e\> e e\! | e4.~ e~ |
  %page 9
  e~ e~ | e~ e~ | e~ e~ |
  e~ e~ e~ | e~ e~ e~ \white | e8\pp r r r4 s8 |
  %page 10
  \voiceTwo <c e>4. <b d> | <ais cis!> <b d>8 r r | <g b>4. <fis ais> |
  <g b> <fis cis'>~ | q~ q~ | q8 \oneVoice r r r4. | r b~\pp | b~\ppp b~ |
  %page 11
  b~ b~ b8 r fis\mp | b cis! d fis e b | cis4.~ cis~ |
  cis8 r \voiceTwo cis cis4. bis4 cis8 | fis,8-- fis-- fis-- fis4-- fis8--~ |
  %page 12
  fis8 r cis' bis4. cis4 cis8 | fis,8 fis fis fis4.( e'4) \breathe d8 
  \oneVoice b'8 a^\markup\italic espressivo g a g fis | e4.\< d4\> e8 | a,\< b c g'\> fis e |
  %page 13
  fis4.~\! fis~\> | fis~\! fis~ | fis~ fis4 fis,8-- \breathe | fis-- fis-- fis--^\markup\italic "molto rit." fis4.-- |
  fis-- fis-- | b4.--~ b~\dim | b~ b~ | b8\pppp r r r4.\fermata
  
  
}

sopranoVerse = \lyricmode {
  % Набирайте слова здесь
  мм __ _ _ мм __ _ мм __ мм __ _ 
  зо -- ло -- тис -- тый ко --
  выль, __ и до -- рож -- на -- я
  пыль, ко -- лод -- ни -- ков звон -- ки -- е це -- пи __
  И -- дут о -- ни с_бри -- ты -- ми лба -- ми
  ша -- га -- ют впе -- рёд тя -- же -- ло __ уг --
  рю -- _ мо __ над -- ви -- ну -- ли бро -- ви, __ на
  серд -- це раз -- думь -- е лег -- ло, __ раз -- думь -- е лег -- ло. __ Да --
  вай, брат, за -- тя -- нем мы пес -- ню, за --
  бу -- дем бе -- ду __ на -- вер -- но, та -- ка -- я невз -- го -- да, на --
  пи -- са -- на нам на ро -- ду, __ на -- вер -- но, та -- ка -- я невз --
  го -- да на -- пи -- са -- на нам на ро -- ду. __ А __ _ 
  а __
  Да -- вай, брат, за -- тя -- нем мы 
  пес -- ню, за -- бу -- дем бы -- лу -- ю бе -- ду, __ за --
  тя -- нем мы пес -- ню, за -- бу -- дем бе -- ду. __
  Зо -- ло -- тис -- тый ко -- выль и до --
  рож -- на -- я пыль, ко -- лод -- ни -- ков звон -- ки -- е
  це -- пи __
  взме -- та -- ют до -- рож -- ну -- ю пыль. __
  до -- рож -- ну -- ю пыль. __
  
}

altoVerse = \lyricmode {
  % Набирайте слова здесь
  мм __ _ _ мм __ мм __ мм __ _ 
  зо -- ло -- тис -- тый ко --
  выль, __ и до -- рож -- на -- я
  пыль, ко -- лод -- ни -- ков звон -- ки -- е це -- пи __ И -- 
  дут о -- ни, и -- дут о -- ни с_бри -- ты -- ми 
  лба -- ми, ша -- га -- ют впе -- рёд тя -- же -- ло __ уг --
  рю -- _ мо __ над -- ви -- ну -- ли бро -- ви, __ на
  серд -- це раз -- думь -- е лег -- ло, __ раз -- думь -- е лег -- ло. __ Да --
  вай, брат, за -- тя -- нем мы пес -- ню, за -- бу -- дем бы -- лу -- ю бе -- 
  ду, за -- бу -- дем бы -- лу -- ю бе -- ду __ на -- вер -- 
  но, на -- вер -- но, та -- ка -- я невз -- 
  го -- да на -- пи -- са -- на нам на ро -- ду. __ А __ _ 
  а __
  Да -- вай, брат, за -- тя -- нем мы 
  пес -- ню, за -- бу -- дем бы -- лу -- ю бе -- ду, __ за --
  тя -- нем мы пес -- ню, за -- бу -- дем бе -- ду. __
  мм __ _
  Зо -- ло -- тис -- тый ко -- выль и до --
  рож -- на -- я пыль, ко -- лод -- ни -- ков звон -- ки -- е
  це -- пи __
  взме -- та -- ют до -- рож -- ну -- ю пыль. __
  до -- рож -- ну -- ю пыль. __
  
}

tenorVerse = \lyricmode {
  % Набирайте слова здесь
  Скры -- ло -- ся солн -- це за сте -- пи. __
  ко -- лод -- ни -- ков звон -- ки -- е
  це -- пи __ взме -- та -- ют до -- рож -- ну -- ю
  пыль, __ ко -- лод -- ни -- ков звон -- ки -- е
  це -- пи
  И -- дут о -- ни с_бри -- ты -- ми лба -- ми
  ша -- га -- ют впе -- рёд тя -- же -- ло __ уг --
  рю -- _ мо __ над -- ви -- ну -- ли бро -- ви, __ на
  серд -- це раз -- думь -- е лег -- ло, __ раз -- думь -- е лег -- ло. __ Да --
  вай, брат, за -- тя -- нем мы пес -- ню, за --
  бу -- дем бе -- ду, __ на -- вер -- но, та -- ка -- я невз -- го -- да, на --
  пи -- са -- на нам на ро -- ду, __ на -- вер -- но та -- ка -- я невз --
  го -- да, да -- вай, брат, за -- тя -- нем мы пес -- 
  ню, за -- бу -- дем бе -- ду, бы -- лу -- ю бе -- ду __ за --
  тя -- нем мы пес -- ню, __ за -- тя -- нем мы пес -- ню, за -- бу -- дем бе -- ду. __
  Скры -- ло --  ся
  солн -- це за сте -- пи, __
  ко -- лод -- ни -- ков звон -- ки -- е це -- пи __
  взме -- та -- ют до -- рож -- ну -- ю пыль, __ ко --
  лод -- ни -- ков звон -- ки -- е це -- пи
  взме -- та -- ют до -- рож --
  ну -- ю пыль. __ 
}

barVerse = \lyricmode {
  \repeat unfold 18 \skip 1
  Кон --
  вой -- ны -- е мол -- ча ша -- га -- ют. Ко -- лод -- ни -- ков даль -- ше ве --
  дут. мм __ 
}

bassVerse = \lyricmode {
  % Набирайте слова здесь
  мм __ мм __ мм __ _ _
  Вда -- ли зо -- ло -- тис -- тый ко -- выль, __ ко -- лод -- ни -- ков
  звон -- ки -- е це -- пи __ взме -- та -- ют до -- 
  рож -- ну -- ю пыль, __ ко -- лод -- ни -- ков звон -- ки -- е
  це -- пи взме -- та -- ют до -- рож -- ну -- ю пыль. __ И --
  дут о -- ни, и -- дут о -- ни с_бри -- ты -- ми
  лба -- ми, ша -- га -- ют впе -- рёд тя -- же -- ло __ уг --
  рю -- _ мо __ над -- ви -- ну -- ли бро -- ви, __ на
  серд -- це раз -- думь -- е лег -- ло, __ раз -- думь -- е лег -- ло. __ Да --
  вай, брат, за -- тя -- нем мы пес -- ню, за -- бу -- дем бы -- лу -- ю бе --
  ду, за -- бу -- дем бы -- лу -- ю бе -- ду __ на -- вер --
  но, на -- вер -- но, та -- ка -- я невз --
  го -- да, да -- вай, брат за -- тя -- нем мы пес -- 
  ню, за -- бу -- дем бе -- ду, бы -- лу -- ю бе -- ду. __ 
  мм __ _ _ _ мм __ _ _ мм __ мм __ 
  Вда -- ли зо -- ло -- тис -- тый ко -- выль, __ 
  ко -- лод -- ни -- ков звон -- ки -- е це -- пи __
  взме -- та -- ют до -- рож -- ну -- ю пыль. __ Ко --
  лод -- ни -- ков звон -- ки -- е це -- пи взме -- та -- ют до -- рож -- ну -- ю
  пыль __ взме -- та -- ют до -- рож --
  ну -- ю пыль. __
}



\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Сопрано"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Альт"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Тенор"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff = "bass" \with {
      midiInstrument = "voice oohs"
      instrumentName = "Бас"
    } << \clef bass \new Voice = "baritone" { \baritone }
         \new Voice = "bass" { \bass } >> 
    \new Lyrics \with { alignAboveContext = "bass" } \lyricsto "baritone" { \barVerse }
    \new Lyrics \lyricsto "bass" { \bassVerse }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
