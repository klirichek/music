
\version "2.18.2"
% automatically converted by musicxml2ly from /home/alexey/Desktop/ягненок.xml

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")



\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent=4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
  #(include-special-characters)
}

\header {
  title = "Ягнёнок"
  tagline = ##f
}

global = {
  \key f \major 
  \time 4/4
  \tempo 4=126
  \autoBeamOff
}

sopvoice =  \relative c'' {
  c2 d4 c |
  a2 c |
  bes4 bes a2 |
  g a4 bes |
  c2 bes4( a) |
  g2 f | \break
  c' d4 c |
  a2 c |
  bes4 bes a2 |
  g a4 bes |
  c2 bes4( a) |
  g2 f | \break
  f g4 a |
  bes2 g |
  a4 g f2 |
  f a4 bes |
  c2 d |
  a4 b c2 | \break
  a c4 d |
  c a bes2 |
  a d |
  d4 d g,2 |
  c bes4( g) |
  a2 g | \break
  bes a4 g |
  f2 g |
  e4( f) d2|
  c c |
  f4 g a bes |
  c4. ( bes8 a4 bes |
  g1) |
  f
}

altvoice =  \relative f' {
  f2 f4 a |
  f2 g |
  f4 e f2 |
  e f4 d |
  f2 f4( c) |
  c( e) f2 |
  f f4 a |
  f2 g |
  f4 e f2 |
  e f4 d |
  f2 f4 ( c) |
  c ( e) f2 |
  d e4 e |
  f2 e |
  f4 e d2 |
  d f4 f |
  a( g) f2|
  f4 f e2 |
  f e4 d |
  e f f( e) |
  f2 f |
  f4 f es( d) |
  es2 d |
  d4( c) bes2 |
  d c4 c |
  d( c) bes2 |
  c4( d) b2 |
  c a |
  d4 c f d |
  c4. ( e8 f4 d |
  c2 e) |
  f1
}

verseone =  \lyricmode {
  \set stanza = "1." Вот Аг -- нец жерт -- вен -- ный не -- сёт грех ми -- ра на рас -- пла -- ту. 
  В_сми -- ре -- ни -- и Он при -- нял гнёт чтоб стать Хрис -- том Рас -- пя -- тым.
  Пусть боль при -- но -- сит каж -- дый шаг, 
  Он го -- во -- рит: &flqq;Да бу -- дет так, 
  с_о -- хо -- то -- ю вку -- шу Я 
  стра -- да -- ний горь -- ко -- е пить -- ё, 
  ведь Те -- ло пре -- да -- но Мо -- ё 
  спа -- се -- ни -- е да -- ру -- я.&frqq;
}
versetwo =  \lyricmode {
  \set stanza = "2." Ве ли -- кий Друг наш Аг -- нец Тот и ра -- дость и про -- ще --  нье. 
  По во -- ле От -- чей Он не -- сёт Свой Крест как ис -- куп -- лень -- е: 
  &flqq;Мо -- ё Ди -- тя, и -- ди ту -- да, 
  где ка -- ры страш -- но -- го су -- да 
  ждут, про -- ви -- нив -- шись, ча -- да. 
  К_не -- вер -- ным гро -- зен Бо -- жий гнев! 
  Ты, по -- стра -- дав и у -- ме -- рев, 
  из -- ба -- вишь их от а -- да.&frqq;
}
versethree =  \lyricmode {
  \set stanza = "3." &flqq;Да, От -- че, Я ид -- ти го -- тов и не хо -- чу и -- но -- го. 
  За мир про -- лью по -- кор -- но кровь, Тво -- ё ис -- пол -- ню сло -- во.&frqq; 
  Лю -- бовь Гос -- под -- ня так силь -- на, 
  что мо -- жет ра -- ди нас о -- на 
  у Бо -- га выр -- вать Сы -- на, 
  Чьим гла -- сом дви -- жим Си -- ри -- он, 
  и вы -- нес -- ти пред -- смерт -- ный стон 
  всей жиз -- ни Влас -- те -- ли -- на.
}
versefour =  \lyricmode {
  \set stanza = "4." Я лишь То -- бой же -- ла -- ю жить, пре -- будь мо -- ей твер -- ды -- ней, 
  дай свя -- то в_па -- мя -- ти хра -- нить бла -- гу -- ю весть о Сы -- не. 
  Хва -- лы Те -- бе пре -- вы -- ше нет. 
  Поз -- воль мне, серд -- ца див -- ный Свет, 
  лю -- бить, как Ты нас лю -- бишь; 
  а ес -- ли серд -- це на кус -- ки 
  раз -- да -- вят го -- рес -- тей тис -- ки,
  мо -- им Ты серд -- цем бу -- дешь.
}

versefive =  \lyricmode {
  \set stanza = "5." От -- кро -- ю я ду -- ши ла -- рец, вме -- стить ту -- да же -- ла -- я
  дар, что по -- слал нам Бог О -- тец. У -- мо -- лкни, во -- ля зла -- я;
  твой и -- дол ми -- ра зо -- ло -- той лишь су -- е -- та и блеск пу -- стой
  в_без -- жиз -- не -- нной пу -- сты -- не. 
  Бо -- гат -- ства луч -- ши -- е на -- шлись, 
  из ран Хри -- сто -- вых из -- ли -- лись со -- кро -- ви -- ща свя -- ты -- ни.
}
  
versesix =  \lyricmode {
  \set stanza = "6."  Да -- рам тем сла -- ву вос -- по -- ю: мне боль -- ше -- го не на -- до. 
  За -- щи -- той бу -- дет то в_бо -- ю, и в_труд -- ный миг от -- ра -- дой.
  Взал -- ка -- ем ли в_го -- лод -- ный час и дар тот на -- пи -- та -- ет нас
  жи -- во -- тво -- ря -- щим хле -- бом;
  воз -- жа -- ждем ли ис -- точ -- ник тот 
  нам во -- ду жиз -- ни нис -- по -- шлёт 
  по -- то -- ком щед -- рым с_не -- ба
}
verseseven =  \lyricmode {
  \set stanza = "7."
  Ко -- гда при -- дёт по -- ра уй -- ти из ми -- ра в_Бо -- жье цар -- ство,
  пусть ста -- нет мне в_кон -- це пу -- ти Кровь Гос -- по -- да уб -- ран -- ством,
  чтоб я, ба -- грян -- цем у -- бе -- лён, жил веч -- но, Гос -- по -- дом спа -- сён
  И Бо -- гу со -- при -- ча -- стен;
  свя -- той не -- ве -- стой во Хри -- сте
  нёс жерт -- вы сло -- ва в_чи -- сто -- те к_пре -- сто -- лу От -- чей вла -- сти.
}

% The score definition
\score {
    <<
      \new Staff = #"sa" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \global \voiceOne \sopvoice \bar "||" \pageBreak \sopvoice \bar "|."}
        \new Voice  = "alto" { \global \voiceTwo \altvoice \altvoice }
      >> 
      \new Lyrics \lyricsto "soprano" { \verseone \versefive }
      \new Lyrics \lyricsto "soprano" { \versetwo \versesix }
      \new Lyrics \lyricsto "soprano" { \versethree \verseseven }
      \new Lyrics \lyricsto "soprano" { \versefour }
      %\new Lyrics \lyricsto "soprano" \versefive
      %\new Lyrics \lyricsto "soprano" \versesix
      %\new Lyrics \lyricsto "soprano" \verseseven

    >>
  \layout {}
  \midi {}
}

