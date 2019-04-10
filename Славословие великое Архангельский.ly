\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

abr = { \break }
abr = {}

pbr = { \pageBreak }

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }
lleft = \once \override LyricText.self-alignment-X = #LEFT
global = {
  \autoBeamOff
  \key e \minor
}

sopvoice = \relative c'' {
  
  \once \hide Staff.TimeSignature
  \global
  \dynamicUp
  \tempo "Спокойно" 2=69
  \co g2.\p g4 g g g g g fis g a2 g2 \cbar e4 fis g2 g4 \cbr \abr
  g fis e e2 dis e1 \cbar g2. g4 g fis g a b2\>( a)\! g \cbar \abr
  a\p a4 a a g \cbr a b c2-> b4( a) b2. \cbr g4\p fis g a2 \cbr \abr
  g4 \cbr fis g2 g4 g fis e e e dis! dis e2 r \cbar
  a2. a4 a \cbr | \abr
  gis a b c2(\> b)\! a \cbr a4\> a a2. a4\! a a g g fis1 \cbar \abr
  fis2\p fis4 fis fis2 fis4 \cbr fis b2 a fis fis \cbr fis4\pp fis fis2 fis4 fis fis2 \cbr \abr
  g4 g fis1 g2( fis) e1 \cbar g2\< g4 g b2 b\! e\> d? c\! b \cbr | \abr
  c2 b4 a g1 \cbar g2\p fis4 g a2 g4 \cbr g b2-> a g1 \cbar | \abr
  
  g4 g fis g a2 g \cbar fis4\< fis\! b\> b\! a g g2( fis) e2 r4 \cbr \abr
  e4\mf e'2\> d4\! d c2 b4 b a2 \cbr g\p fis fis fis \cbar \abr
  fis4\p fis fis fis b a g( fis) fis2 \cbr fis4 fis b a g2 fis fis \cbr \abr
  g4\< g a2\! b c\> \cbr b4 b\! a2 g4 fis g2 fis e1\fermata \cbar \abr
  b'2\p c1 b2 a g a fis1 g2 \cbr fis g a\< b1\> b\! b2 b a \cbr \abr
  
  a g g g g fis1 fis2. \cbar fis4\p a2. b4 g2 fis4 g \cbr a2( g) fis \cbr \abr
  fis4 fis b2 a4 g a2 g4 g fis \cbr fis g a b2\< b4 c\! \cbr \abr
  d2-> d4 c \cbr b2 b4 b c2 b a2. \cbr b4 c2.\> a4\! b2. b4 a2 a4 b \cbr \abr
  g2 g4 g a2 g fis fis4 fis e1 \cbar b'2\p g c b4 a \cbr b2 a4 \cbr \abr
  g a2 g4( fis) g2 \cbr b(\> c)\! c b b4 b c2(\> b)\! a g fis4 \cbr \abr
  
  fis4\p fis g a2 g4 fis \cbr b2 a g a4 b c2 b \cbr a4 a b b a \cbr \abr
  g fis \cbr fis fis g a2 g4 fis \cbr b2 a g a4 b c2 b \cbr \abr
  a4 a b b a g fis \cbr fis fis g a2 g4 fis \cbr b2 a g \cbr \abr
  a4 b c2\> b\! \cbr a4\p a b2 a g fis g1 \cbar g2. fis4\< g \cbr \abr
  a b2 a b\! d c\> b4( a) b1( a2)\! \cbr g1 fis2 g1 \cbar b2\p b4 r \cbr \abr
  
  e2.\> d4\! c2 b d c b1 \cbr c2\< b\! a2.(\> b4)\! c2 c4 c b1 \cof \bar "|" \abr \break
  \time 4/2
  \tempo "Медленно*" 2=54
  R\breve |
  R |
  e2 d?4( c) b( g') fis( e) |
  dis2. e4 fis2( e4 dis?) |
  e2. dis4 e2 d4( c) |
  b1 b2\p g4( e) |
  fis1 fis |
  e\breve\fermata \bar "||" \break
  
  
  \time 4/2
  \tempo "(или так)"
  R\breve |
  c'2 b4( a) g2 fis4( e) |
  dis2.( e4) e2 e |
  e1 dis |
  e\breve \bar "||" \abr
  
  \tempo "Оживлённо" 2=92
  \co a2. gis4\< a b\! c2 c b a \cbr a c e1(\> d2)\! c1 \cbr \abr
  
  c2 c1 c2 b b g? fis \cbr fis\p fis b b a g1( fis2) fis \cbar \abr
  fis2. fis4 fis fis fis1 fis2 b1 a2 g fis fis1 \cbr fis2 g g a\< b1.\! \cbr \abr
  c1 c2 c1 \cbr e2 d1\> d2 b2.\p b4 a g fis2 fis fis e1 \cbar \abr \pbr
  \repeat volta 1 {
    \time 3/2 fis2\p^\markup\italic"Трижды" \cof \bar "|" |
    g1( b2) |
    b1( ais2) |
    b1 fis2 |
    g1( b2) |
    b1( ais2) |
    b1 fis2 |
    g1. | \abr
    a1(\< b2)\! |
    d1(\> c2)\! |
    b1 g2 |
    fis1. |
    fis |
    e
  }
  \co g4 g\breve g4 \cbar \abr
  g1 fis2 \cof \bar "|"
  g1. |
  a1(\< b2)\! |
  d1(\> c2)\! |
  b1 g2 |
  fis1. |
  fis |
  e | \abr
  
  \co fis2\p \cof \bar "|"
  g1( b2) |
  b1( ais2) |
  b1 fis2 |
  g1( b2) |
  b1( ais2) |
  b1 fis2 |
  g1. |
  a1(\< b2)\! |
  d1(\> c2)\! |
  b1 g2 |
  fis1. |
  fis |
  e
 
  
  
  \cof \bar "|."
 
}

altvoice = \relative c' {
  \global
  e2. e4 e e e e e e e fis2 e e4 e e2 e4
  e b b b2 b b1 e2. e4 e e e e fis1 e2
  e e4 e e e e g a2 g4( fis) g2. e4 e e e2
  
  e4 e e2 e4 e b b b b b b b2 r2 e2. e4 e
  e e e e1 e2 e4 e dis!2. e4 fis fis e e dis!1
  dis!2 dis4 dis dis2 dis4 dis e2 e dis! dis dis4 dis e2 e4 e e2
  e4 e e1 e2( dis!) b1 e2 e4 e g2 g c b a g
  a e4 e e1 e2 e4 e e2 e4 e fis2 fis e1
  
  e4 e e e e2 e dis!4 dis e e fis e e2( dis!) e r4
  e c'2 b4 b a2 b4 e, dis!2 e e e dis!
  dis!4 dis dis dis e e e2 dis!2 dis4 dis e e e2 e dis!
  e4 e e2 e e e4 e e2 e4 e e2 dis! b1
  g'2 a1 g2 fis e e dis!1 e2 dis! e fis g1 a a2 g fis
  
  fis e e e e e1 dis!2. dis!4 fis2. g4 e2 dis!4 e fis2( e) dis!
  dis!4 dis e2 dis!4 e fis2 e4 e dis! dis e fis g2 g4 a
  b2 b4 a g2 g4 g a2 g fis2. g4 a2. fis4 g2. g4 fis2 fis4 fis
  e2 e4 e e2 e e dis!4 dis b1 g'2 e a g4 fis g2 fis4
  e fis2 e4( dis!) e2 e( a) a g g4 g a2( g) fis e dis!4
  
  dis! dis e fis2 e4 dis g2 fis e fis4 g a2 g fis4 fis g g fis
  e dis! dis dis e fis2 e4 dis! g2 fis e fis4 g a2 g
  fis4 fis g g fis e dis! dis dis e fis2 e4 dis! g2 fis e
  fis4 g a2 g fis4 fis g2 fis e dis! e1 e2. dis4 e
  fis g2 fis g b a g4( fis) g1( fis2) e1 dis!2 e1 g2 g4 r
  
  g2. gis4 a2 gis! b a gis!1 a2 g fis1 fis2 fis4 g a1
  R\breve
  R
  R
  b2 a4( g) fis( c') b( a) |
  g2.( a4) b2 a4( g) |
  g1 g2 e4( b) |
  e1 dis |
  b\breve |
  
  R\breve |
  r1 e2 c |
  b1( c2) b4( c) |
  b1 b |
  b\breve
  
  e2. e4 e e e2 e e e e a b1. a1
  
  a2 a1 a2 a g e dis! dis dis e2 e e e1. dis!2 |
  dis!2. dis4 dis dis dis!1 dis2 e1 e2 e e dis!1 dis2 e e fis g1.
  g1 g2 a1 a2 a1 a2 g2. g4 fis e e2 e dis!2 b1 |
    \repeat volta 1 {
    dis!2
    e1.
    e
    dis1 dis2
    e1.
    e
    dis1 dis2
    e1.
    fis1( g2)
    b1( a2)
    g1 e2
    e1.
    dis!
    b
  }
  
  e4 e\breve e4
  
  e1 dis!2 e1. fis1( g2) b1( a2) g1 e2 e1. dis! b
  dis!2 e1. e dis!1 dis2 e1. e dis!1 dis2
  e1. fis1( g2) b1( a2) g1 e2 e1. dis!1. b
  
  
}

tenorvoice = \relative c' {
  \once \hide Staff.TimeSignature
  \global
  b2. b4 b b b b b a b c2 b g4 a b2 b4
  b a g fis2 fis g1 b2. b4 b a b c b1 b2
  c c4 c c b c b a2 b4( c) b2. b4 a b c2
  
  b4 a b2 b4 b a g fis fis fis fis g2 r c2. c4 c 
  b c d e2( d) c c4 c c2. c4 b b b b b1
  b2 b4 b b2 b4 b b2 c b b b4 b a2 a4 a c2
  b4 b a2( c) b( a) g1 b2 b4 b b2 b a b e e
  e d4 c b1 b2 a4 b c2 b4 b b2 b b1
  
  b4 b a b c2 b b4 b b b c c b2.( a4) g2 r4
  e c'2 e4 e e2 b4 b c2 b c c b
  b4 b b b b c b( c) b2 b4 b b c b2 c b
  b4 b a2 g fis b4 b c2 b4 c b2 a g1
  b2 a1 b2 c b c b1 b2 b b d! d1 dis dis2 e b
  
  b b b e, g c1 b2. b4 b2. b4 b2 b4 b b1 b2
  b4 b b2 b4 b b2 b4 b b b b d! d2 d4 d
  d2 d4 d d2 d4 d d2 d d2. d4 e2. d4 d2. d4 d2 c4 b
  b2 b4 b a2 b c b4 a g1 b2 b a b4 c b2 b4
  b b2 b b e1 d!2 d d4 d d1 d2 b b4
  
  b b b b2 b4 b b2 b b d!4 d e2 d d4 d d d d
  b b b b b b2 b4 b b2 b b d!4 d e2 d
  d4 d d d d b b b b b b2 b4 b b2 b b
  d!4 d d2 d d4 d d2 c b b b1 b2. b4 b
  b b2 b b g a b4( c) b1( c2) b1 b2 b1 b2 b4 r
  
  b2. b4 a2 b gis a4( c) e1 e2 e dis1 dis2 dis4 e fis1
  
  e2 d?4( c) b( g') fis( e) |
  dis1 dis2 e4( fis) |
  b,2( a) g4( b) dis( e) |
  fis2( b,) b4( dis e fis) |
  b,1 b4( g') fis( e) |
  e1 e2\p b4( g) |
  c1 b2( a) |
  g\breve
  
  R\breve
  e'2 d4( c) b2 a4( g) |
  fis2.( g4) a2 g4( fis) |
  g1 fis |
  g\breve
  
  c2. b4 c d e2 e d c c e e1. e1
  
  e2 dis1 e2 fis b, b b b b b b c b1( c2) b 
  b2. b4 b b b1 b2 b1 c2 b c b1 b2 b b d! d1.
  e1 e2 e1 c2 d1 d2 d2. d4 d b c2 b a g1
  \repeat volta 1 {
    b2 
    b1( g2)
    e1.
    fis1 b2
    b1( g2)
    e1.
    fis1 b2
    b1.
    c1( b2)
    g1( a2)
    b1 b2
    c1.
    b1( a2)
    g1.
  }
  b4 b\breve b4
  
  b1 b2 |
  b1. 
  c1( b2)
  g1( a2)
  b1 b2
  c1.
  b1( a2)
  g1.
  
  b2 b1( g2)
  e1.
  fis1 b2
  b1( g2)
  e1. 
  fis1 b2 
  b1.
  c1( b2)
  g1( a2)
  b1 b2
  c1.
  b1( a2)
  g1.
  
  
  
}

bassvoice = \relative c {
  \global
  
  e2. e4 e e e e e e e e2 e e4 e e2 e4
  e dis e b2 b e1 e2. e4 e e e e dis!1 e2
  e e4 e e e e e e2-> e e2. e4 e e e2
  
  e4 e e2 e4 e dis! e b b b b e2 r a2. a4 a 
  a a a a1 a2 a4 g? fis2. e4 dis! dis e e b1
  b2 b4 b b'2 a4 a g2 a b b, b4 b c2 c4 c a2
  b4 b c2( a) b1 e e2 e4 e e2 e e e e e
  e e4 e e1 e2 e4 e e2 e4 e dis!2-> dis e1
  
  e4 e e e e2 e b'4 a g g a a b2( b,) e r4
  e e2 gis4 gis a2 g4 g fis2 g a a b
  b,4 b b' a g fis g( a) b2 b4 a g fis g2 a b
  e,4 d? c2 b a g4 g fis2 g4 a b2 b e1\fermata
  e2 e1 e2 dis e a, b1 e2 b e d g1 fis fis2 e dis
  
  dis! e d c b a1 b2. b4 b2. b4 e2 e4 e dis2( e) b
  b'4 a g2 fis4 e dis!2 e4 e b b e d g2 g4 g
  g2-> g4 g g2 g4 g fis2 g d2. b4 a( b c) d g,( a b ) c d2 d4 dis
  e2 e4 d c2 b a b4 b e1 e2 e e e4 e e2 e4
  e dis2 e4( b) e2 g1 fis2 g2 g4 g fis2( g) d e b4
  
  b b b b2 b4 b b2 dis e d4 b a2 b d4 d g, b d
  e b b b b b2 b4 b b2 dis e d4 b a2 b
  d4 d g, b d e b b b b b2 b4 b b2 dis e
  d4 g fis2 g d4 d g,2 a b b e1 e2. e4 e
  e e2 e e e e e e1( a,2) b1 b2 e1 e2 e4 r
  
  e2. e4 e2 e e e e1 a2 b c2.( b4) a( g) fis e dis1
  
  R\breve b'2 a4( g) fis( c') b( a) |
  g2( fis) g4( e) fis( g)
  a( g fis e) dis( a' g fis)
  e2.( fis4) g2 a |
  b1 r |
  a,2\p a b b e\breve\fermata
  
  e2 d4( c) b2 a4( g) |
  fis1 g2 a |
  b( a4 g) fis2 g4( a) |
  b1 b e\breve

  a2. a4 a a a2 gis gis a a a gis!1. a1
  
  g?2 fis1 e2 dis e e b b' a g g fis g1( a2) b
  b,2. b4 b b b'1 a2 g1 fis2 g a b1 b,2 e e d! g1.
  c1 b2 a1 g2 fis1 fis2 g2. g4 d e a,2 b b e1
  
  \repeat volta 1 {
    b2
    e1( d?2)
    c1.
    b1 b2 
    e1( d?2)
    c1.
    b1 b2
    e1.
    e
    e
    e1 e2
    a,1.
    b
    e
  }
  e4 e\breve e4
  
  e1 b2
  e1.
  e
  e
  e1 e2
  a,1.
  b
  e
  b2
  e1( d?2)
  c1.
  b1 b2
  e1( d?2)
  c1.
  b1 b2
  e1.
  e
  e
  e1 e2
  a,1.
  b
  e
  
  
}

 
texts = \lyricmode {
  Сла -- ва в_вы -- шних Бо -- гу, и на зем -- ли мир, в_че -- ло -- ве -- цех
  бла -- го -- во -- ле -- ни -- е. Хва -- лим Тя, бла -- го -- сло -- вим Тя,
  кла -- ня -- ем -- Ти ся, сла -- во -- сло -- вим Тя, бла -- го -- да -- рим 
  Тя ве -- ли -- ки -- я ра -- ди сла -- вы Тво -- е -- я. Го -- спо -- ди
  Ца -- рю Не -- бе -- сный, Бо -- же О -- тче Все -- де -- ржи -- те -- лю,
  Го -- спо -- ди Сы -- не Е -- ди -- но -- ро -- дный И -- и -- су -- се Хри -- сте
  и Свя -- тый Ду -- ше. Го -- спо -- ди Бо -- же, А -- гнче Бо -- жий,
  Сы -- не О -- течь, взе -- мляй грех ми -- ра, по -- ми -- луй -- нас;
  
  взе -- мляй гре -- хи ми -- ра, при -- и -- ми мо -- ли -- тву на -- шу;
  се -- дяй о -- де -- сну -- ю О -- тца, по -- ми -- луй нас.
  Я -- ко Ты е -- си е -- дин Свят, Ты е -- си е -- дин Го -- сподь,
  И -- и -- сус Хри -- стос, в_сла -- ву Бо -- га О -- тца. А -- минь.
  На всяк день бла -- го -- сло -- влю Тя и во -- схва -- лю и -- мя Тво -- ё
  
  во ве -- ки и в_век ве -- ка. Спо -- до -- би Го -- спо -- ди в_день сей
  без гре -- ха со -- хра -- ни -- ти -- ся нам. Бла -- го -- сло -- вен е -- си,
  Го -- спо -- ди, Бо -- же о -- тец на -- ших, и хва -- льно и про -- сла -- вле -- но
  и -- мя Тво -- е во ве -- ки. А -- минь. Бу -- ди, Го -- спо -- ди, ми -- лость
  Тво -- я на нас, я -- ко -- же у -- по -- ва -- хом на Тя.
  
  Бла -- го -- сло -- вен е -- си, Го -- спо -- ди, на -- у -- чи мя о -- пра -- вда -- ни -- ем
  Тво -- им. Бла -- го -- сло -- вен е -- си, Го -- спо -- ди, на -- у -- чи мя
  о -- пра -- вда -- ни -- ем Тво -- им. Бла -- го -- сло -- вен е -- си, Го -- спо -- ди,
  на -- у -- чи мя о -- пра -- вда -- ни -- ем Тво -- им. Го -- спо -- ди,
  при -- бе -- жи -- ще был е -- си нам в_род и род. Аз рех:
  
  Го -- спо -- ди, по -- ми -- луй мя, и -- сце -- ли ду -- шу мо -- ю,
  
  я -- ко со -- гре -- ших Те -- бе, я -- ко со -- гре -- ших, со -- гре -- ших Те -- бе.
  
  я  -- ко со -- гре -- ших, со -- гре -- ших Те -- бе.
  
  Го -- спо -- ди, к_Те -- бе при -- бе -- гох, на -- у -- чи мя
  
  тво -- ри -- ти во -- лю Тво -- ю, я -- ко Ты е -- си Бог мой,
  я -- ко у Те -- бе и -- сто -- чник жи -- во -- та, во све -- те Тво -- ем
  у -- зрим свет. Про -- ба -- ви ми -- лость Тво -- ю ве -- ду -- щим Тя.
  
  Свя -- тый Бо -- же, Свя -- тый Кре -- пкий, Свя -- тый
  Без -- сме -- ртный, по -- ми -- луй нас.
  
  \lleft Слава… и_ныне… А 
  
  -- минь. Свя -- тый Без -- сме -- ртный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Кре -- пкий, Свя --
  тый Без -- сме -- ртный, по -- ми -- луй нас.
}

textskip = \lyricmode {
  \repeat unfold 351 \skip 1
}

texta = \lyricmode {
  \textskip
  я -- ко со -- гре -- ших,
  \repeat unfold 8 \skip 1
  я -- ко со_
}

textt = \lyricmode {
  \textskip
  я -- ко со -- гре -- ших,
  \repeat unfold 8 \skip 1
  \repeat unfold 8 \skip 1
  я -- ко со_-
}

textb = \lyricmode {
  \textskip
  я -- ко со -- гре -- ших, со -- гре -- ших Те -- бе, со -- гре -- ших,
  со -- гре -- ших Те -- бе.
  
  Я -- ко со -- гре -- ших, со -- гре -- ших, со -- гре -- ших Те -- бе.
}

\bookpart {
  \header {
    title = "Славословие Великое"
    composer = "А. Архангельский"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    ragged-last = ##f
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "tenor" { \textt }
    \new Lyrics \lyricsto "bass" { \textb }
  >>
  \layout {
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=69
  }
}
}

