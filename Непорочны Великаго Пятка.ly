\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

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
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

abr = { \break }
%abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
%mbr = {}
  
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
  \partial 4 fis4 |
  a2 b |
  c a |
  b1 |
  c4->( b) a( b) |
  a1 |
  fis2 g |
  a2( b) | \abr
  
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
  fis( g)
  
  
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
  <d d'>1 |
  b'2 d |
  d d |
  d1 |
  fis,4 g a g |
  <d d'>1 \bar "||" |
  \cadenzaOn d'4 d d \abr
  
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
  
}

texta = \lyricmode {
Бла -- го -- сло -- вен е -- си, Го -- спо -- ди, на -- у -- чи __
мя о -- прав -- да -- ни -- ем -- тво -- им. Бла -- же -- ни
не -- порочнии в путь, ходящии в законе го -- спод -- ни.
Жизнь во гро -- бе по -- ло -- жил -- ся
е -- си, Хри -- сте, и ан -- гель -- ска -- я во -- ин -- 
ства у -- жа -- са -- ху -- ся, сниз -- хо -- жде -- ни -- е сла -- вя --

ще тво -- е. Бла -- же -- ни ис -- пы -- тающии свидения его, всем
серд -- цем взы -- щут е -- го. Жи -- во -- те, ка -- ко у --
ми -- ра -- е -- ши; ка -- ко и во гро -- бе о --
би -- та -- е -- ши; смер -- ти же цар -- ство раз --
ру -- ша -- е -- ши, и от а -- да мерт -- вы -- я воз --
ста -- вля -- е -- ши.

Слава Отцу и Сыну, и Святому Ду -- ху. Во -- спе -- 
ва -- ем, Сло -- ве, те -- бе всех Бо --
га, со От -- цем и Свя -- тым тво -- им Ду --
хом, и сла -- вим бо -- же -- ствен -- но -- е тво -- е по -- 
гре -- бе -- ни -- е. И ныне, и присно, и во веки веков,
а -- минь. Бла -- жим тя, Бо -- го -- ро -- ди -- це чи -- ста --

я, и по -- чи -- та -- ем три -- днев -- но -- е по -- гре --
бе -- ни -- е Сы -- на Тво -- е -- го и 
Бо -- га на -- ше -- го вер -- но. Жизнь во
гро -- бе по -- ло -- жил -- ся е -- си, Хри --
сте, и ан -- гель -- ска -- я во -- ин -- ства у -- жа -- 
са -- ху -- ся, сниз -- хо -- жде -- ни -- е сла -- вя -- ще тво -- е.

До -- стой -- но есть ве -- ли -- ча -- ти тя, __
Жиз -- но -- дав -- ца, на кре -- сте ру -- це
про -- стер -- ша -- го, и со -- круш -- ша -- го дер -- жа -- ву вра -- жи -- ю.
Ру -- це_твои_сотвористе_мя,_и_создасте_мя:_вразуми_мя,_и_научу -- ся за -- по -- ве -- дем тво --
им. До -- стой -- но есть __ ве -- ли -- ча --
ти тя, всех Зиж -- ди -- те -- ля: тво -- и -- ми

бо стра -- дан -- ми и -- ма -- мы без -- стра -- сти -- е, из -- бавль -- ше -- ся
тле -- ни -- я.
Сла -- ва_Отцу,_и_Сыну,_и_Свято -- му Ду -- ху. Без -- на -- чаль --
не Бо -- же, со -- при -- сно -- сущ -- не Сло --
ве, и Ду -- ше Свя -- тый, Пра -- во --
слав -- ны -- я у -- кре -- пи на рат -- ны -- я, я -- ко благ.

И ныне,_и_присно,_и_во_веки ве -- ков, а -- минь. Жизнь
рожд -- ша -- я, пре -- не -- по -- роч -- на -- я, чи -- ста -- я
Де -- во, у -- то -- ли цер -- ков -- ны -- я со -- блаз -- ны,
и по -- даждь мир, я -- ко бла -- га -- я.
До -- стой -- но есть ве -- ли -- ча -- ти тя, __
Жиз -- но -- дав -- ца, на кре -- сте ру -- це
про -- стер -- ша -- го, и со -- круш -- ша -- го дер -- жа -- ву вра -- жи -- ю.

Ро -- ди  вси песнь по -- гре -- бе -- ни -- ю
тво -- е -- му при -- но -- сят, Хри -- сте мой.
При -- зри на мя и помилуй_мф_по_суду_любя -- щих и -- мя тво -- е.
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
    \new Lyrics \lyricsto "alto" { \texta }
  
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
    \tempo 4=60
  }
}

