\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  subtitle = "Now Sleeps the Crimson Petal"
  composer = "Paul Mealor"
  title = "A Spotless Rose"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  %  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }
section = { \bar "||" \mark \default }

global = {
  \key b \major
  \time 4/2
  \numericTimeSignature
  \dynamicUp
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override MultiMeasureRest.expand-limit = #2
   \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \autoBeamOff
  \tempo 2=62
}

vsi = \relative c' {
  \global
  \secondbar  
  \partial 2 b2\ppp\< |
  cis dis e fis |
  fis fis1 fis2\p\<^\markup\italic"(no breathing)" |
  fis fis fis b\! | \abr
  
  <b dis>1.\mf \breathe ais2\> |
  gis gis gis gis |
  gis fis1\p fis2\>^\markup\italic"poco rit." |
  fis fis fis b,\! | \abr
  
  \time 6/2
  \section
  << { \voiceTwo  b2\ppp\fermata b^\markup\bold"a tempo" cis dis e fis\< } \new Voice="vsiup" { \voiceOne b,1\fermata cis2 dis e fis } >>
  \time 4/2 \oneVoice fis <gis b> <b fis'>1~\f |
  <b fis'>2 <ais b>2\> <gis b> <gis b> | \abr
  
  <gis b> <gis b> <b cis> <gis b> |
  <fis b> <fis ais> fis b, |
  b\breve\ppp\>\fermata~ |
  b1.~ b4\! \breathe r4
  
  \time 6/2 \abr
 \section
  R1*3 |
  r2 <ais' fis>\mf <ais fis> <b gis> <ais fis> <fis dis> |
  r2\< <b dis> <b dis>(^\markup\bold"molto rit." <cis e>1) <dis fis>2 | \abr
  
  \tempo "Molto espressivo" 2=56
  <dis fis>4\f( <fis \parenthesize b> <fis \parenthesize b> <dis fis>) <dis fis>( <b dis>) <b e>1^\markup\bold"poco rit." <b dis>4-- <cis e>-- |
  <dis fis>(^\markup\bold"a tempo" <fis \parenthesize b> <fis \parenthesize b> <dis fis>) <dis fis>( <b dis>) <b e>1^\markup\bold"poco rit."  <b dis>4-- <cis e>-- \abr
  
  \time 7/2
  <dis fis>4(^\markup\bold"a tempo" <fis \parenthesize b> <fis \parenthesize b> <dis fis>)^\markup\bold"rit." <dis fis>( <fis ais>--) <e gis>1.\fermata \breathes ais,2^\markup{\dynamic pp \italic" rubato"} |
   \tempo "Molto espressivo" 2=56
  \time 6/2 gis4( b) b( fis) ais1\fermata fis\fermata | \abr
  
  \time 4/2 fis1.\> \breathe b,2\ppp |
  \section
  \tempo "Adagio, molto espressivo" 2=62
  cis2\< dis e fis |
  fis( <gis b>) <b fis'>1\f ( |
  <b e>2) <ais b>\> <gis b> <gis b> |
  <gis b> <gis b> <b cis> <gis dis'> | \abr
  
  <fis b> <fis ais>^\markup\bold"rit." fis b, |
  b\breve\ppp\fermata~ |
  b1.~ b4 \breathe r | \abr
  
  \time 6/2
  \section \tempo "Poco agitato"
  R2*6 |
  r2 <fis' ais>\mf <fis ais> <gis b> <fis ais> <dis fis> |
  r2\< <b' dis> <b dis>^\markup\bold"molto rit."( <cis e>1) <dis fis>2 | \abr
  
    \tempo "Molto espressivo" 2=56
  <dis fis>4\f( <fis \parenthesize b> <fis \parenthesize b> <dis fis>) <dis fis>( <b dis>) <b e>1^\markup\bold"poco rit." <b dis>4-- <cis e>-- |
  <dis fis>(^\markup\bold"a tempo" <fis \parenthesize b> <fis \parenthesize b> <dis fis>) <dis fis>( <b dis>) <b e>1^\markup\bold"poco rit."  <b dis>4-- <cis e>-- \abr
  
  \time 7/2
  <dis fis>4\f(^\markup\bold"a tempo" <fis \parenthesize b> <fis \parenthesize b> <dis fis>)^\markup\bold"rit." <dis fis>( <fis ais>--) <e gis>1.\fermata \breathe ais,2^\markup{\dynamic pp \italic" rubato"} |
   \tempo "Molto espressivo" 2=56
  \time 6/2 gis4( b) b( fis) ais1\fermata fis\fermata |  \time 4/2 fis1.\> \breathe b,2\ppp | \abr
  
  \section
  cis2\< dis e fis |
  fis fis\! r r |
  \time 6/2 R2*6 | \abr
  
  \time 4/2
  r2 <fis b,>\ppp <fis b,>1~ |
  <fis b,>2\> <e cis> <fis b,> <gis a,> |
  <fis b,> <fis b,>1.\fermata\! \breathe 
  \section |
  r\breve r
  r\fermata
  r\fermata \bar "|."
  
}


vsii = \relative c' {
  \global
  \partial 2 b2\ppp\< |
  b b b b |
  <b gis> <b gis>1 <b gis>2\p^\markup\italic"(no breathing)"\< |
  <cis ais> <dis ais> <e b> <fis gis>\! |
  <ais e>1.\mf \breathe <fis dis>2\> |
  <fis e> <fis e> <fis e> <fis e> |
  <fis e> e1\p e2\> |
  e e e b\!
  
  fis2\ppp\fermata~ fis1~ fis \breathe <cis' ais>2\< |
  <b gis> <fis' cis> <gis e>1~\f |
  <gis e>2 fis\> fis fis | 
  
  fis fis <fis gis> fis |
  e e e b |
  fis\breve\fermata\ppp\>~ |
  fis1.~ fis4\! \breathe r4 | 
  
  r2 b2\pp\< b cis cis dis |
  <cis dis>\breve.\mf |
  <e gis>2\< <e gis>~( <e gis>1 <fis ais>) | 
  
  <dis fis>1\f~ <dis fis>4 <fis ais> <fis gis>1( <fis ais>2) |
  <dis fis>1~ <dis fis>4 <fis ais> <fis gis>2 <fis gis> <fis ais> |
  
  <dis fis>1~ <dis fis>4 <fis ais> <fis gis>1.\fermata \breathes <e fis>2^\markup{\dynamic pp \italic rubato } |
  <e fis>1 <cis e>\fermata <cis e>\fermata |
  
  <b dis>1.\> \breathe b2\ppp |
  b\< b b b <b gis>( <cis fis>) <e gis>1~\f |
  <e gis>2 fis\> fis fis |
  fis fis <fis gis> fis |
  
  e e e b |
  fis\breve\ppp\fermata~ |
  fis1.~ fis4\! \breathe r |
  
  r2 b\pp\< b cis cis dis |
  <cis dis>\breve.\mf |
  <e gis>2\< <e gis>~( <e gis>1 <fis ais>) |
  
  <dis fis>1\f~ <dis fis>4 <fis ais> <fis gis>1( <fis ais>2) |
  <dis fis>1~ <dis fis>4 <fis ais> <fis gis>2 <fis gis> <fis ais> |
  
  <dis fis>1~ <dis fis>4 <fis ais> <fis gis>1.\fermata \breathe <e fis>2^\markup{\dynamic pp \italic rubato} |
  <e fis>1 <cis e>\fermata <cis e>\fermata |
  <b dis>1.\> \breathe b2\ppp | 
  
  b\< b b b |
  <b gis> <b gis>\! <b fis'>\p b\> |
  ais b b1 fis |
  
  fis\breve \ppp\>~ |
  fis2\! r r1 |
  r\breve\fermata |
  fis\breve\ppp\> |
  fis~ |
  fis\fermata\! |
  r\fermata
  
}


vsiii = \relative c' {
  \global
  \partial 2 b2\ppp\< |
  ais ais ais <ais gis> |
  fis fis1 fis2\p^\markup\italic"(no breathing)"\< |
  gis gis ais <b cis>\! |
  
  dis1.\mf \breathe cis2\> |
  b b b b |
  cis <cis b>1\p <cis ais>2\> |
  <cis ais> <dis ais> <cis ais> <fis, ais>\!
  
  <dis b>2\fermata\ppp~ <dis b>1~ <dis b> \breathe gis2\< |
  fis <gis b> dis'1\f~ |
  dis2 <dis cis>\> <e b> <e b> |
  
  <e b> <e b> <e cis> <e cis> |
  <cis b> <dis ais> <cis ais> <ais fis> |
  << { \voiceTwo dis,\breve\ppp~ | dis1.~ dis4 \breathe r4 }
     \new Voice="vsiiiup" { \voiceOne fis1~ fis2 \breathe ais\pp\< | ais b ais fis\! } >>
  
  << { \voiceTwo b,2\p\< b~( b1 ais'2 fis) } \new Voice="vsiiiup" {\voiceOne e2 e~( e1 b'2 ais) } >>
  <fis b>\breve.\mf |
  <b fis'>2\< <b fis'>~ <b fis'>\breve |
  
  << { \voiceTwo fis1\f~ fis4 cis' e dis dis cis fis,2-- } \new Voice { \voiceOne b1~ b4 fis' e dis dis cis cis--( fis,--) } >>
  << { \voiceTwo fis1~\f fis4 cis' e dis dis cis fis,-- fis-- } \new Voice { \voiceOne b1~ b4 fis' e dis dis cis cis-- fis,-- } >>
  
  << { \voiceTwo fis1\f~ fis4 cis' e2 dis cis\fermata \breathes cis^\markup{\dynamic pp \italic rubato } } \new Voice { \voiceOne b1~ b4 fis' e2 dis cis\fermata cis } >>
  \oneVoice b1 ais\fermata ais\fermata |
  
  <fis dis>1.\> \breathe b2\ppp |
  ais\< ais ais <ais gis> |
   fis( <gis b>) dis'1~\f |
  dis2 <cis dis>\> <b e> <b e> |
  <b e> <b e> <cis e> <cis e> |
  
  <b cis> <ais dis> <ais cis> <fis ais> |
  << { \voiceTwo dis\breve\fermata\ppp~\> dis1.~ dis4 \breathe r\! } \new Voice="vsiiiup" { \voiceOne fis1~\fermata  fis2 \breathe ais \pp\< ais b ais fis\! } >> |
  
  << { \voiceTwo b,2\p b~(\< b1 ais'2 fis) } \new Voice { \voiceOne e2 e~( e1 b'2 ais) } >> |
  <fis b>\breve.\mf |
  <b fis'>2\< <b fis'>~ <b fis'>\breve |
  
  << { \voiceTwo fis1~\f fis4 cis' e dis dis cis fis,2-- | 
       fis1~ fis4 cis' e dis dis cis fis,-- fis-- |
       fis1~\f fis4 cis' e2 dis cis\fermata \breathe cis^\markup{\dynamic pp \italic rubato} }
     \new Voice { \voiceOne b1~ b4 fis' e dis dis cis cis--( fis,) |
                  b1~ b4 fis' e dis dis cis cis-- fis,-- |
                  b1~ b4 fis' e2 dis cis\fermata cis } >>
  
  \oneVoice b1 ais\fermata ais\fermata |
  <fis dis>1.\> \breathe b2\ppp |
  
  ais2\< ais ais <ais gis> |
  fis fis\! <fis gis>\p <fis gis>\> |
  << { \voiceTwo fis fis fis( e) e( cis)\!} \new Voice { \voiceOne gis' gis gis1 e } >>
  
  \oneVoice <dis b>\breve~\ppp\> |
  <dis b>2\! r r1 |
  r\breve\fermata |
  <dis b>\breve\ppp\> |
  <dis b>~ |
  <dis b>\!\fermata |
  r\fermata 
}

tenup = \relative c' {
  \global
  \oneVoice
  \partial 2 b2\ppp\< |
  ais ais ais <ais gis> |
  fis fis1 fis2\p^\markup\italic"(no breathing)"\< |
  gis gis ais <b cis>\! |
  
  dis1.\mf \breathe cis2\> |
  b b b b |
  cis <cis b>1\p <cis ais>2\> |
  <cis ais> <dis ais> <cis ais> <fis, ais>\!
  
  <dis b>2\fermata\ppp~ <dis b>1~ <dis b> \breathe gis2\< |
  fis <gis b> dis'1\f~ |
  dis2 <dis cis>\> <e b> <e b> |
  
  <e b> <e b> <e cis> <e cis> |
  <cis b> <dis ais> <cis ais> <ais fis> |
  \voiceOne fis1~\ppp fis2 \breathe \dynamicDown ais\pp\< | ais b ais fis\! \dynamicUp
  
   e2\p\< e~( e1 b'2 ais)
   
  \oneVoice
  <fis b>\breve.\mf |
  <b fis'>2\< <b fis'>~ <b fis'>\breve |
  
   \voiceOne b1~\f b4 fis' e dis dis cis cis--( fis,--) 
   b1~ b4 fis' e dis dis cis cis-- fis,-- 
  
   b1~ b4 fis' e2 dis cis\fermata cis
  \oneVoice b1 ais\fermata ais\fermata |
  
  <fis dis>1.\> \breathe b2\ppp |
  ais\< ais ais <ais gis> |
   fis( <gis b>) dis'1~\f |
  dis2 <cis dis>\> <b e> <b e> |
  <b e> <b e> <cis e> <cis e> |
  
  <b cis> <ais dis> <ais cis> <fis ais> |
  \voiceOne fis1~\fermata\ppp  fis2 \breathe \dynamicDown ais  \pp\< ais b ais fis\!  | \dynamicUp
  
  e2\p\< e~( e1 b'2 ais) |
  
  \oneVoice
  <fis b>\breve.\mf |
  <b fis'>2\< <b fis'>~ <b fis'>\breve |
  
   \voiceOne b1~\f b4 fis' e dis dis cis cis--( fis,) |
                  b1~ b4 fis' e dis dis cis cis-- fis,-- |
                  b1~\f b4 fis' e2 dis cis\fermata cis
  
  \oneVoice b1 ais\fermata ais\fermata |
  <fis dis>1.\> \breathe b2\ppp |
  
  ais2\< ais ais <ais gis> |
  fis fis\! <fis gis>\p <fis gis>\> |
   \voiceOne gis gis gis1 e 
  
  \oneVoice <dis b>\breve~\ppp\> |
  <dis b>2\! r r1 |
  r\breve\fermata |
  <dis b>\breve\ppp\> |
  <dis b>~ |
  <dis b>\!\fermata |
  r\fermata 
}

tendown = \relative c' {
  \voiceTwo
  \partial 2 s2
  s1*25
 
   dis,\breve~ | dis1.~ dis4 \breathe r4 
  
  
   b2 b~( b1 ais'2 fis) 
  s1*6
  
   fis1~ fis4 cis' e dis dis cis fis,2--
   fis1~ fis4 cis' e dis dis cis fis,-- fis-- 
  
   fis1~ fis4 cis' e2 dis cis\fermata \breathes cis^\markup{\dynamic pp \italic rubato } 
   s1*15
   
   dis,\breve\fermata~ dis1.~ dis4 \breathe r 
   b2 b~( b1 ais'2 fis) 
   
   s1*6
   
   fis1~ fis4 cis' e dis dis cis fis,2-- | 
       fis1~ fis4 cis' e dis dis cis fis,-- fis-- |
       fis1~ fis4 cis' e2 dis cis\fermata \breathe cis^\markup{\dynamic pp \italic rubato} 
  
 s1*9
 
 fis,2 fis fis( e) e( cis)
 s\breve*7
}

vsiv = \relative c' {
  \global
  \partial 2 b2\ppp\< |
  ais gis fis <e cis> |
  <e b> <e b>1 <e b>2\p^\markup\italic"(no breathing)"\<  |
  <fis cis> <fis cis> <gis dis> <fis>\! |
  
  b1.\mf \breathe fis2\> e e e e |
  fis fis1\p fis2\> fis fis cis <cis fis,>2\!
  
  <fis, \parenthesize b,>2~\fermata\ppp <fis \parenthesize b,>1~ <fis \parenthesize b,> \breathe <cis' fis,>2\< |
  <e b> fis b1\f~ |
  b2 fis\> e e |
  
  e e fis fis fis fis cis <cis fis,> |
  <b fis \parenthesize b,>\breve\fermata\ppp\>~ |
  <b fis \parenthesize b,>1.~ <b fis \parenthesize b,>4\! \breathe r4
  
  <e, gis>2\pp <e gis>~(\< <e gis>1 <fis cis'>) |
  <fis b>\breve.\mf |
  <b e>2 <b e>~(\< <b e>1. <fis fis'>2)
  
  <b fis \parenthesize b,>1.\f( <e b \parenthesize e,>1 <cis fis,>2) |
  <b fis \parenthesize b,>1.\f( <e b \parenthesize e,>1 <cis fis,>2) |
  
  <b fis \parenthesize b,>1.(\f <e b \parenthesize e,>)\fermata \breathes fis2^\markup{\dynamic pp \italic rubato} |
  e1 fis\fermata cis2( fis,)\fermata |
  
  b1.\> \breathe b'2\ppp |
  ais\< gis fis <e cis> |
  <e b>( fis)\! b1~\f |
  b2 fis\> e e |
  e e fis fis |
  
  fis fis cis <cis fis,> |
  <b fis \parenthesize b,>\breve\ppp\fermata~\> |
  <b fis \parenthesize b,>1.~ <b fis \parenthesize b,>4 \breathe r4\! |
  
  <gis e>2\pp\< <gis e>~( <gis e>1 <cis fis,>1) |
  <b fis>\breve.\mf |
  <b e>2\< <b e>~( <b e>1. <fis fis'>2) |
  
  <b fis \parenthesize b,>1.\f( <e b \parenthesize e,>1 <cis fis,>2) |
  <b fis \parenthesize b,>1.( <e b \parenthesize e,>1 <cis fis,>2) |
  
  <b fis \parenthesize b,>1.\f( <e b \parenthesize e,>\fermata) \breathe fis2^\markup{\dynamic pp \italic rubato} |
  e1 fis\fermata cis2( fis,)\breathe |
  b1.\> \breathe b'2\ppp |
  
  ais\< gis fis <e cis> |
  <e b> <e b>\! <e b>\p <e b>\> |
  <cis fis,> <cis fis,> <cis fis>1 <cis fis> |
  <fis, \parenthesize b,>\breve\ppp\>~ |
  <fis \parenthesize b,>2\! r r1 |
  r\breve\fermata |
  <fis \parenthesize b,>\ppp\> |
  <fis \parenthesize b,>~
  <fis \parenthesize b,>\fermata\!
  r\fermata
}


vli = \lyricmode {
  A Spot -- less Rose is grow -- ing,
  Sprung from a ten -- der
  root of an -- cient seers' fore -- show -- ing of Jes -- se prom -- ised
  fruit. Its fair -- est bud un -- folds to light __
  A -- mid the
  cold, cold win -- ter, and the dark mid -- night __
  
  Is from its sweet root In Ma -- ry,
  pu -- rest  Maid;
  Ma -- ry pu -- rest Maid; Ma -- ry
  
  pu -- rest Maid; Through God's great love and 
  might The Bless -- ed Babe she bare us __ A -- mid the cold, cold win -- ter,
  and the dark mid -- night. __
  
  Is from its sweet root In Ma -- ry,
  pu -- rest  Maid;
  Ma -- ry pu -- rest Maid; Ma -- ry
  
  pu -- rest Maid; Through God's great love and 
  might A Spot -- less Rose is grow -- ing.
  Now sleeps the crim -- son pe -- tal.
}

vliup = \lyricmode {
  fruit; fair -- est bud un
}

vlii = \lyricmode {
  A Spot -- less Rose is grow -- ing,
  Sprung from a ten -- der
  root of an -- cient seers' fore -- show -- ing of Jes -- se prom -- ised
  fruit. __ un -- folds to light __ A -- mid the
  cold, cold win -- ter, and the dark mid -- night __
  
  Where -- of I -- sa -- iah said. spring -- ing __
  ah __ Through God's __ ah __ The Bles -- sed Babe
  ah, __ Through God Through God's love and might. The Bless -- ed Babe she bare __ us __ A -- mid the cold, cold win -- ter,
  
  and the dark mid -- night __
  Through God's great love and might spring -- ing __
  ah __ Through God's __ ah __ The Bles -- sed Babe
  ah, __ Through God Through God's love and might. A
  Spot -- less Rose is grow -- ing In a cold, cold win -- ter's night __ A -- men. __
}

vliii = \lyricmode {
  A Spot -- less Rose is grow -- ing,
  Sprung from a ten -- der
  root of an -- cient seers' fore -- show -- ing of Jes -- se prom -- ised
  
  fruit; __ un -- folds to light __ A -- mid the
  cold, cold win -- ter, and the dark mid -- night __ The Rose which I am
  sing -- ing __ ah, spring -- ing __
  ah, __ Through God's great love and might
  ah, __ The Bles -- sed Babe she bare us
  
  ah, Through God's great love Through God's love and
  might The Bless -- ed Babe she bare us __ A -- mid the cold, cold win -- ter,
  
  and the dark mid -- night __ The Bles -- sed Babe she
  bare us __ ah. spring -- ing __
  ah, __ Through God's great love and might
  ah, __ The Bles -- sed Babe she bare us
  
  ah, __ Through God's great love Through God's love and
  might A Spot -- less Rose is grow -- ing In a cold, cold win -- ter's night __ A -- men. __
  
  
}

vliiidwn = \lyricmode {
  night.  
  
  \repeat unfold 23 \skip 1
  night.

}

vliv = \lyricmode {
  A Spot -- less Rose is grow -- ing,
  Sprung from a ten -- der
  root of an -- cient seers' fore -- show -- ing of Jes -- se prom -- ised
  fruit; __ un -- folds to light __ A -- mid the
  cold, cold win -- ter, and the dark mid -- night. __
  
  sing -- ing __ ah, spring -- ing __
  ah, __ ah, __
  
  ah, __ Through God's love and __
  might The Bless -- ed Babe she bare us __ A mid the cold, cold win -- ter,
  
  and the dark mid -- night __
  bare us __ ah, spring -- ing __
  
  Ah, __ Ah, __
  Ah, __ Through God's love and might. 
  A Spot -- less Rose is grow -- ing In a cold, cold win -- ter's night __ A -- men. __
  
}

vni = "Soprano"
sni = "S"
vfi = \markup { \center-column { "Soprano" \bold \sni  } }

vnii = "Alto"
snii = "A"
vfii = \markup { \center-column { "Alto" \bold \snii  } }

vniii = "Tenor"
sniii = "T"
vfiii = \markup { \center-column { "Tenor" \bold \sniii  } }

vniv = "Bass"
sniv = "B"
vfiv = \markup { \center-column { "Bass" \bold \sniv  } }


\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Lyrics = "vniup"
      %staff for voice i
      \new Staff = \vni \with {
        instrumentName = \vfi
        shortInstrumentName = \sni
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vni { \vsi } }   
      \new Lyrics \lyricsto \vni { \vli }
      \context Lyrics = "vniup" {
        \lyricsto "vsiup" {
          \vliup
        }
      }
      
      %staff for voice ii
      \new Staff = \vnii \with {
        instrumentName = \vfii
        shortInstrumentName = \snii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnii { \vsii } }   
      \new Lyrics \lyricsto \vnii { \vlii }
      

     %staff for voice iii
      \new Staff = "vtenor" \with {
        instrumentName = \vfiii
        shortInstrumentName = \sniii
        midiInstrument = "choir aahs"
      }
      <<  \new Voice = "tencmn" { \clef "G_8" \tenup }
          \new Voice="tendown" \tendown >>
      \new Lyrics \lyricsto "tencmn" { \vliii }
      \new Lyrics \lyricsto "tendown" { \vliiidwn }

      
      %staff for voice iv
      \new Staff = \vniv \with {
        instrumentName = \vfiv
        shortInstrumentName = \sniv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniv { \clef bass \vsiv } }   
      \new Lyrics \lyricsto \vniv { \vliv }
      
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 2=62
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location midiInstrument name lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = \vni \new Voice = \vni { \vsi }
     \new Staff = \vnii \new Voice = \vnii { \vsii }
     \new Staff = \vniii \new Voice = \vniii { \vsiii }
     \new Staff = \vniv \new Voice = \vniv { \vsiv }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

midivoice = "soprano sax"

% MIDI для репетиции:

