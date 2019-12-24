\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.7)

\header {
    title = "Ирмосы Пасхи"
%    opus = "№4"
    composer = "Артемий Л. Ведель"
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

  ragged-last-bottom = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

%pbr = {}
%mbr = {}
  
global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp

  \partial 4 a8.\p a16 |
  b4.->(  d8 )  c[( b]) c[( a]) |
  b2 r4 d8 d |
  d[( e]) c[( d]) c8. b16 a4 | \abr
  
  b2 b8[( a]) b[( c]) |
  d2~( d8[ e]) d[( c]) |
  b4 a r a\p |
  a8[( b a b]) d[( c]) b[( a]) | \abr
  
  b4 a a a8 b |
  d[( c]) b a b4 b\f |
  c2-> d | \abr
  
  c4 b8\p b a4 r |
  r r8 a b4. b8 |
  c4 c b\p a |
  g1\fermata \bar "|."

}

altvoice = \relative c' {
  \global
  \partial 4  fis8. fis16 |
  g4.( b8) a[( g]) a[( fis]) |
  g2 r4 b8 b |
  b[( c]) a[( b]) a8. g16 fis4 |
  
  g2 g8[( fis]) g[( a]) |
  b2~( b8[ c]) b[( a]) |
  g4 fis r fis |
  fis8[( g fis g]) b[( a]) g[( fis]) |
  
  g4 fis fis fis8 g |
  b[( a]) g fis g4 g |
  g2 g |
  
  fis4 g8 g fis4 r |
  r r8 fis g4. g8 |
  g4 a g fis |
  g1
}

tenorvoice = \relative c' {
  \global
   \partial 4 d8. d16 |
   d2 d4 d |
   d2 r |
   R1 |
   
   d2 d4 r |
   d d r2 |
   d4 d r2 |
   R1 |
   
   d4 d r2 |
   r r4 d |
   e2 d |
   
   d4 d8 d d4 r |
   d2 d4. d8 |
   e4 e d c |
   b1
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4 d8.\p d16 |
  g2-> d4 d |
  g2 r |
  R1 |
  g2 g4 r |
  g g, r2 |
  g'4 d r2 |
  R1 |
  
  g4 d r2 |
  r2 r4 g\f |
  c2-> b |
  
  a4 g8\p g d4 r |
  r r8 d g4. g8 |
  c,4 c d\p d |
  <g g,>1\fermata

}

texta = \lyricmode {
  Во -- скре -- се -- ни -- я день, про -- све -- ти -- мся лю -- ди -- е:
  Па -- сха, Го -- спо -- дня Па -- сха! От сме -- рти бо 
  к_жи -- зни и от зе -- мли к_не -- бе -- си Хри -- стос Бог 
  нас при -- ве -- де
  по -- бе -- дну -- ю по -- ю -- щи -- я.

}

textb = \lyricmode {
 \repeat unfold 6 \skip 1
 Па -- сха, Па -- сха, Па -- сха
 
 \repeat unfold 9 \skip 1
 по -- бе -- дну -- ю 
 
}



\score {
    \header { piece = "Песнь 1" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "tenor" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}







abr = { \break }
abr = {}

global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp

  \partial 4 a8.\p a16 |
  b2-> b4 r |
  d8.\p([ e16]) c8 d b4 r |
  c4.\f c8 c4 c8 c | \abr
  
  b4. b8 b4 b |
  b4. b8 b4 e |
  g2 fis4 e |
  dis2 r4 b8 b | \abr
  
  e4.-> d?8 c4 b |
  c-> c r a |
  d4. d8 c4 b | \abr
  
  c-> b8\p b a4 r |
  g'2-> d |
  e8[(\p d]) e[( c]) b4 a |
  g1\fermata
  \bar "|."
}

altvoice = \relative c' {
  \global
  \partial 4  fis8. fis16 |
  g2 g4 r |
  b8.[( c16]) a8 fis g4 r |
  g4. g8 g4 g8 a |
  
  g4. g8 g4 g |
  a4. a8 g4 g |
  b2 a4 g |
  fis2 r4 g8 g |
  
  gis4. b8 a4 gis |
  a a r fis |
  b4. b8 a4 g |
  
  a g8 g fis4 r |
  b2 b |
  c8[( b]) c[( a]) g4 fis |
  g1
}

tenorvoice = \relative c' {
  \global
   \partial 4 d8. d16 |
   d2 d4 r |
   R1 |
   e4. e8 e4 e8 d |
   
   d4. d8 d4 d |
   dis4. dis8 e4 e |
   e2 b4 b |
   b2 r4 b8 b |
   
   b4. e8 e4 e |
   e e r d |
   d4. d8 d4 d |
   
   d4 d8 d d4 r |
   d2 g |
   g4 e d c |
   b1

 
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4 d8.\p d16 |
  g2-> g4 r |
  R1 |
  c,4.\f c8 c[( d]) e fis |
  
  g4. g8 g4 g |
  fis4. fis8 e4 e |
  e2 dis4 e |
  b2 e4 e |
  
  e4.-> e8 e4 e |
  a-> a, d2 |
  d4. d8 d4 d |
  fis4-> g8\p g d4 r |
  g2-> g |
  c,4\p c d d |
  g1\fermata

}

texta = \lyricmode {
  При -- и -- ди -- те пи -- во пи -- ем но -- во -- е, не от
  ка -- ме -- не не -- пло -- дна чу -- до -- де -- е -- мо -- е, но не --
  тле -- ни -- я и -- сто -- чник из гро -- ба о -- до --
  жди -- вша Хри -- ста, в_Нем же у -- тве -- ржда -- е -- мся.
}

textb = \lyricmode {
 \repeat unfold 21 \skip 1 
 
 но не_-
 \repeat unfold 6 \skip 1
 из
}


\score {
    \header { piece = "Песнь 3" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}





abr = { \break }
abr = {}

mbr = {\break}
%mbr = {}


global = {
  \time 4/4
  \key c\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp

  \partial 4 b8\f b |
  c2-> c4\< c |
  c1~\! |
  c4\> b\! r2 | \abr
  
  a2\p a4 b |
  c c8 c d4 c |
  b2 r4 b |
  c4. c8 c c c c | \abr
  
  c2\> c4\! c8\f e |
  g2.-> b,4 |
  c4. c8 c4 r |
  d\p( f) e d | \abr
  c2( e8[ d]) c[( b]) |
  c2 e,4. f8 |
  g4 f8 e a4( b) |
  c2 r | \abr
  
  \mbr b4\f b8 b c4 c8 c |
  d4 c8 c g4 r |
  a'2\f g8[( f]) e[( d]) |
  c2\>( b) |
  c2.\!\fermata r4 \bar "|."
}

altvoice = \relative c'' {
  \global
  \partial 4 g8 g |
  g2 g4 g |
  a1( |
  g4) g r2 |
  
  e a4 a |
  a a8 a b4 a |
  gis2 r4 g |
  g4. g8 a a a a |
  
  a2 g4 g8 g |
  g2. g4 |
  g4. g8 g4 r |
  f( a) g f |
  e2( g8[ f]) e[( d]) |
  e2 c4. d8 |
  e4 d8 c f4( d) |
  e2 r |
  
  g4 g8 g g4 g8 g |
  g4 g8 g g4 r |
  a2 a4 a |
  e2( f) |
  e2. r4
}

tenorvoice = \relative c' {
  \global
   \partial 4 d8 d |
   e2 e4 e |
   f1( |
   e4) d r2 |
   
   c2 c4 d |
   e4 e8 e e4 e |
   e2 r4 d |
   e4. e8 f f f f |
   
   f2 e4 e8 e |
   d2. d4 |
   e4. e8 e4 r |
   a,2 a4 a |
   
   g2 g |
   g r |
   R1 |
   R |
   d'4 d8 d e4 e8 e |
   f4 e8 e d4 r |
   c2 c4 f |
   e2( d) |
   g,2. r4
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  \partial 4 g8\f g |
  c4->( g) e\< c |
  f8[( e f g]\! a[ g a b] |
  c4)\> g\! r2 |
  
  a2\p a4 a |
  a a8 a gis4 a |
  e2 r4 g |
  c4. c,8 f g a b |
  
  c2\> c,4\! c8\f c' |
  b2.-> g4 |
  c4. c,8 c4 r |
  f(\p d) cis d |
  
  g2 g, |
  c r |
  R1 |
  R |
  
  g'4\f g8 g c4 c,8 c |
  b4 c8 e g4 r |
  f2\f f4 f |
  g2( g,) |
  c2.\fermata r4

}

texta = \lyricmode {
 На бо -- же -- стве -- нней стра -- жи,
 Бо -- го -- гла -- го -- ли -- вый А -- вва -- кум да ста -- нет с_на -- ми и по --
 ка -- жет све -- то -- но -- сна А -- нге -- ла, я -- сно гла --
 го -- лю -- ща: днесь спа -- се -- ни -- е ми -- ру,
 я -- ко во -- скре -- се, во -- скре -- се Хри -- стос, я -- ко все -- си -- лен.
}

textb = \lyricmode {
  \repeat unfold 35 \skip 1
  го -- лю -- ща:
}


\score {
    \header { piece = "Песнь 4" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}







abr = { \break }
abr = {}

global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  d4.->( e8) c4 d |
  b2 e4.-> d8 |
  c4 b d8[( c]) b[( a]) |
  b4 b\p a g | \abr
  
  fis4.-> fis8 g4 g8 g |
  a4\< a b2\!-> |
  b r4 d8\p d g4->( fis) e d | \abr
  
  c4 b c8.[( b16 c8 b]) |
  a2 r |
  d\f g |
  fis8.\p[( e16]) d8[( c]) b4 a |
  g1\fermata \bar "|."
}

altvoice = \relative c'' {
  \global
  b4.( c8) a4 a |
  g2 c4. b8 |
  a4 g b8[( a]) g[( fis]) |
  g4 g fis e |
  
  dis4. dis8 e4 e8 e |
  fis4 fis g2 |
  g r4 b8 b |
  b4( d) c b |
  
  a g a8.[( g16 a8 g]) |
  fis2 r |
  b b |
  d8.[( c16]) b8[( a]) g4 fis |
  g1
}

tenorvoice = \relative c'' {
  \global
  g2 e4 d |
  d2 r |
  r  d4 d |
  d e b b |
  
  b4. b8 b4 b8 b |
  d?4 d d2 |
  d r4 g,8\p g |
  g2 g4 g |
  
  fis4 g d'2 |
  d r |
  d d |
  e4 e d c |
  b1
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  g2-> g4 fis |
  g2 g4.-> g8 |
  fis4 g d d |
  g e\p dis e |
  
  b4.-> b8 e4 e8 e |
  d?4 d g2-> |
  g, r |
  R1 |
  
  R |
  R |
  g'2\f g |
  c,4\p c d d |
  <g g,>1\fermata
}

texta = \lyricmode {
 У -- тре -- ню -- ем у -- тре -- ню -- ю глу -- бо -- ку, и вме -- сто
 ми -- ра песнь при -- не -- сем Вла -- ды -- це,
 и Хри -- ста у -- зрим,
 пра -- вды со -- лнце, всем жизнь во -- зси -- я -- ю -- ща.
}

textb = \lyricmode {

}


\score {
    \header { piece = "Песнь 5" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}






abr = { \break }
abr = {}

global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp

  \partial 4 d4\f |
  g4.-> d8 b4 g8\> b |
  d4. d8 b4 g\p |
  d2 a'4\pp a8. b16 |
  c4.-> b8 a2 | \abr
  
  e'4 e8 e d4 c |
  b2 b4 b |
  e4 dis8 e fis4\< fis8 e\! |
  fis4\> e dis2\! | \abr
  
  r2 e4 d? |
  d-> c a d8 c |
  b4-> a8 a b[( c d b]) |
  a2 r4 r8 b8\p | \abr
  
  b4 r8 d8\< d4\! r8 d8 |
  g4. g8 fis[(\> e]) d[( c]) |
  b4.\p->( d8 c[ b c a]) |
  b1\fermata \bar "|."

}

altvoice = \relative c'' {
  \global
  \partial 4  b4 |
  b4. d8 b4 g8 b |
  d4. d8 b4 g |
  d2 fis4 fis8. g16 |
  a4. g8 fis2 |
  
   fis4 fis8 fis g4 fis |
  g2 g4 g |
  g fis8 g a4 a8 g |
  a4 g fis2 
  
  r2 gis4 b |
  b a fis b8 a |
  g4 fis8 fis g[( a b g]) |
  fis2 r4 r8 g |
  
  g4 r8 g g4 r8 g |
  b4. b8 d[( c]) b[( a]) |
  g4.( b8 a[ g a fis]) |
  g1
}

tenorvoice = \relative c' {
  \global
   \partial 4 d4 |
   d4. d8 b4 g8 b |
   d4. d8 b4 g |
   <d \parenthesize d'>2 d'4 d8. d16 |
   d4. d8 d2 |
   
   c4 c8 c b4 d |
   d2 e4 b |
   b b8 b b4 b8 b |
   b4 b b2 |
   
   r2 b4 e |
   e e d d8 d |
   d4 d8 d d2 |
   d r4 r8 g,\p |
   
   g4 r8 b b4 r8 b |
   d4. d8 e4 e |
   d1 |
   d
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  \partial 4 g4\f |
  g4.-> d'8 b4 g8\> b |
  d4. d8 b4 g\p |
  d2 d4\pp d8. d16 d4.-> d8 d2
  
  d4 d8 d d4 d |
  g( fis) e e |
  b b8 b b4\< b8 b \! |
  b4\> b b2\! |
  
  e2 e |
  a4\> a, d d8 d |
  g4-> d8 d g2 |
  d <g g,>\p |
  
  q2. q4 |
  g4. g8 c,4 c |
  d1\p-> |
  <g g,>\fermata

}

texta = \lyricmode {
  Сни -- зшел е -- си в_пре -- и -- спо -- дня -- я зе -- мли и со -- кру -- шил е -- си
  ве -- ре -- и ве -- чны -- я, со -- де -- ржа -- щи -- я свя -- за -- нны -- я, Хри -- сте,
  и три -- дне -- вен, я -- ко от ки -- та И -- о -- на, во --
  скресл, во -- скресл, во -- скресл  е -- си от гро -- ба.

}

textb = \lyricmode {
  \repeat unfold 34 \skip 1
  и три -- дне -- вен,
  \repeat unfold 8 \skip 1
  во -- скресл во -- скресл
}


\score {
    \header { piece = "Песнь 6" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}






abr = { \break }
abr = {}

global = {
  \time 4/4
  \key a\minor
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  c4.\p\< c8 c4 c\! |
  b2 b4 b | |
  a4->\>( b c) b\! |
  b2 e4 d8 c | \abr
  
  
  b4 f' e d8 c | 
  c4 b r b\f |
  c2-> c4 c |
  c4. b8 b4 b \abr
  
  c4 c8 c c4 c |
  b2 c4\p c |
  d2 c |
  b r4 b\f | \abr
  
  c2 c4 c8 c |
  c2 c |
  c-> c |
  a'\f g8[( f]) e[( d]) |
  c2\>( b) |
  c1\!\fermata \bar "|."

}

altvoice = \relative c'' {
  \global
  a4. a8 a4 a |
  gis2 gis4 gis |
  a2 a |
  gis2 c4 b8 a |
  
  gis4 d' c b8 a |
  a4 gis r g |
  g2 g4 g |
  g4. g8 g4 gis |
  
  a4 a8 a a4 a |
  gis2 a4 a |
  b2 a |
  gis2 r4 gis |
  
  a2 bes4 bes8 bes |
  a2 a |
  g g |
  a a4 a |
  g2( f) |
  e1
}

tenorvoice = \relative c' {
  \global
  e4. e8 e4 e |
  e2 e4 e |
  dis2 dis |
  e r |
  
  R1 |
  r2 r4 d |
  e2 e4 e |
  e4. d8 d4 e |
 
  e4 e8 e e4 e |
  e2 e4 e |
  e2 e |
  e2 r4 e |
  
  e2 e4 e8 e |
  f2 f |
  g e |
  f c4 f |
  e2( d) |
  g,1
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  a4.\p a,8 a[( b]) c[( d]) |
  e2 e4 e |
  f2->\> <f f,>2\! |
  <e e,>1~ |
  
  q4 d e f8 d |
  e4 <e e,> r4 g?\f |
  c2-> c,8[( d]) e[( f]) |
  g4. g8 g4 e
  
  a4 e8 e c4 a |
  e'2 c4\p a |
  gis2 a8[( b c d]) |
  e2 r4 e\f |
  
  a2 g?4 g8 g |
  f2 f |
  e-> c |
  f\f f4 f |
  g2( g,) |
  c1\fermata

}

texta = \lyricmode {
  О -- тро -- ки от пе -- щи и -- зба -- ви -- вый, быв че -- ло -- 
  век, стра -- ждет, я -- ко сме -- ртен, и стра -- сти -- ю сме -- трно -- е в_не --
  тле -- ни -- я о -- бла -- чит бла -- го -- ле -- пи -- е, е --
  дин бла -- го -- сло -- вен от -- цев Бог и пре -- про -- сла -- влен.
}

textb = \lyricmode {}


\score {
    \header { piece = "Песнь 7" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}







abr = { \break }
abr = {}


global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  <b d>4.( <a c>8) <g b>4 <fis a> |
  <g b>4. q8 <a c>4 <b d> |
  <c e>2 <b d>4 r8 d\f |
  g4. fis8 e4 d | \abr
  
  c\> b a2\! |
  b2 b8[(\< a]) b[( c])\! |
  d2-> b |
  a4 a8 b c4\> b8 b\! | \abr
  
  a2 r |
  <b d>4.-> q8\<  <a c>4 <g b>8 q\! |
  <c e>4. q8 <b d>4 r8 g'\f\> |
  fis2~( fis8[ a g fis])\! |
  g1\fermata  \bar "|."
}

altvoice = \relative c'' {
  \global
  g2 g4 d |
  g4. g8 g4 g |
  c,8[( d e fis]) g4 r8 b |
  b4. d8 c4 b |
  
  a g fis2 |
  g g8[( fis]) g[( a]) |
  b2 g |
  fis4 fis8 g a4 g8 g |
  
  fis2 r |
  g4. g8 g4 g8 g |
  c,[( d e]) fis g4 r8 b |
  a2~( a8[ c b a]) |
  b1
}

tenorvoice = \relative c' {
  \global
  R1*2 |
  r2 r4 r8 d |
  d4. d8 g4 g |
  
  d d d2 |
  d d4 d |
  d2 d |
  d4 d8 d d4 d8 d |
  
  d2 r |
  R1 
  r2 r4 r8 d |
  d1 |
  d
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  R1*2 |
  r2 r4 r8 g\f |
  g4. g8 g4 g |
  
  fis g d2 |
  g g4 g |
  g2-> g, |
  d'4 d8 d d4\> d8 d\! |
  
  d2 r |
  R1 |
  r2 r4 r8 g\f\> |
  d'2( d,)\! |
  <g g,>1\fermata

}

texta = \lyricmode {
  Сей на -- ре -- че -- нный и свя -- тый  день, е -- дин су -- ббот Царь
  и Го -- сподь пра -- здни -- ков пра -- здник, и то -- рже -- ство есть то --
  ржеств, в_онь же бла -- го -- сло -- вим Хри -- ста во ве -- ки.
}

textb = \lyricmode {

}


\score {
    \header { piece = "Песнь 8" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120

  }
}


\pageBreak






abr = { \break }
abr = {}


global = {
  \time 4/4
  \key g\major
  \autoBeamOff
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp

  \partial 4 a4 |
  b2-> b8[(\< a]) b[( c])\! |
  d2 b |
  a4 b c8 c b a |
  b2\> b\! | \abr
  
  c4.\f c8 c4 c |
  b4. b8 b4 b |
  c2\> b4 a\! |
  b2 <b d> |
  <c e>4.( <d fis>8 <e g>4 <c e>) | \abr
  
  <b d>4. ( <a c>8) <g b>2 |
  <b d>4 q8 q <c e>[( <d fis>]) <e g> <c e> |
  <b d>4.( <a c>8) <g b>2 |
  a2.\pp b4 |
  c4. b8 a4 a | \abr
  
  b4. b8 c4 c |
  b2 a |
  b g'4\f g |
  g1~( |
  g |
  fis2.) fis4 | \abr
  
  g2 e8[( d]) e[( c]) |
  b2 a4 a |
  g2 a4 c |
  b1 |
  a2 a |
  g1\fermata | \bar "|."

}

altvoice = \relative c' {
  \global
  \partial 4 fis4 |
  g2 g8[( fis]) g[( a]) |
  b2 g |
  fis4 g a8 a g fis |
  g2 g |
  
  g4. g8 g4 g |
  g4. g8 g4 g |
  a2 g4 fis |
  g2 g |
  c,1 |
  
  g'2 g |
  g4 g8 g c,4 c8 c |
  g'2 g |
  fis2. g4 |
  a4. g8 fis4 fis |
  
  g4. g8 g4 a |
  g2 fis |
  g2 b4 b |
  b4.( c8 d4 b |
  c1~ |
  c2.) c4 |
  
  b2 c8[( b]) c[( a]) |
  g2 fis4 fis |
  g2 g4 g |
  g1 |
  g2 fis |
  \arpeggioBracket <g d>1\arpeggio 
}

tenorvoice = \relative c' {
  \global
   \partial 4 d4 |
   d2 d4 d |
   d2 d |
   d4 d d8 d d d |
   d2 d |
   
   e4. e8 e4 e |
   d4. d8 d4 d |
   e2 d4 d |
   d2 r |
   R1 |
   
   R1*3 |
   d2. d4 |
   d4. d8 d4 d |
   
   d4. d8 e4 e |
   d2 d |
   d d4 d |
   d1( |
   e |
   d2.) d4 |
   
   d2 g4 e |
   d2 d4 c |
   b2 e4 e |
   d1 |
   c2 c |
   b1
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4 d4 |
  g2-> g4\< g\! |
  g2-> g, |
  d'4 d d8 d d d |
  g2\> g,\! |
  
  c'4.\f c,8 c[( d]) e[( fis]) |
  g4. g8 g4 g |
  c,2\> d4 d\! |
  g2 r |
  R1*4
  
  d2.\pp d4 |
  d4. d8 d4 d |
  
  g4. g8 c,4 c |
  d2 d |
  g g4\f g |
  g4.( a8 b4 g |
  c4. g8 e4 c |
  d4. fis8 a4) d, |
  
  g2 c,4 c |
  d2 d4 d |
  g2 c,4 a |
  d1 |
  d2 d |
  g,1\fermata

}

texta = \lyricmode {
 Све -- ти -- ся, све -- ти -- ся но -- вый И -- е -- ру -- са -- ли -- ме:
 Сла -- ва бо го -- спо -- дня на Те -- бе во -- зси -- я. Ли -- куй
 ны -- не и ве -- се -- ли -- ся Си -- о -- не. Ты же чи -- ста -- я кра --
 су -- йся Бо -- го -- ро -- ди -- це, о во -- ста -- ни --
 и ро -- жде -- ства Тво -- е -- го, ро -- жде -- ства Тво -- е -- го.
}

textb = \lyricmode {

}


\score {
    \header { piece = "Песнь 9" }
  
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
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }


  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}


keyTime = { \time 2/4 \key bes \major 
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
}

soprano = \relative c''  {
	\autoBeamOff
        bes8 bes bes a | bes4. a8 | bes8 a bes a | bes4 bes8 bes | a4. g8 |
        a4 a8 a | a8^>[( g]) f g | a4 a | bes4. bes8 | bes4 bes8 bes |
        bes8. bes16 bes8 bes | c c c c | bes4( aes) | g r |
        R2*4
        r4 <g bes>8 q\< | <ees' g>4.\> <d f>8\! |
        <c ees>8([ <bes d>)] <aes c> <g bes> | <aes c>[( <bes d> <c ees> <aes c>]) |
        q8. <g bes>16 q4 | \break
        bes8.^\markup {\italic Tutti }  bes16 bes8 bes | a!4 a8 a | bes8. bes16 bes4 | bes4. bes8 |
        bes2 | a | bes\fermata \bar "|."
}

alto = \relative a' {
	\autoBeamOff
	f8 f f f | f4. f8 | f f f f | f4 f8 f | f4. e8 |
	f4 f8 f | f[( e)] f e | f4 f | f4. f8 | f4 f8 f |
	g8. g16 g8 g | aes aes aes aes | g4( f) | ees r8 <ees g>^\markup {\italic Solo } |
	<g bes>4 <f as>8 <es g> | q8. <d f>16 q8 <ees g> |
	<g bes>( <f aes>4) <ees g>8 | q4 <d f>8 q | q4 r4 |
	R2*4
	f8. f16 f8 f | f4 f8 f | f8. f16 f4 | g4. g8 | f2 | f4( ees) | d2\fermata
	
}

tenor = \relative c' {
	\autoBeamOff
	d8 d d c | d4. c8 | d8 c bes c | d4 d8 d | c4. c8 |
	c4 c8 c | c4 c8 c | c4 c | d4. d8 | d4 d8 d |
	ees8. ees16 ees8 ees | ees ees ees ees | ees4( d) | ees4 r8 \breathe ees8 |
	es4 d8 es | bes8. bes16 aes8 g | d4 ees | bes' bes8 bes | bes4 r4 |
	R2*4
	d8. d16 d8 d | c4 c8 c | d8. d16 d4 | ees4. ees8 | d2 | c | f,\fermata
}

bass = \relative c {
	\autoBeamOff
	bes8 bes d f | bes4. f8 | bes f d f | bes4 bes,8 d | f4. c8 |
	f4 f8 f | f[( c]) a c | f4 f | bes4. bes8 | aes4 aes8 aes |
	g8. g16 ees8 ees | aes aes aes aes | bes4( bes,) | ees r4
	R2*4
	r4 ees8 ees |ees4. ees8 | ees4 ees8 ees | ees2 | ees8. ees16 ees4 |
	bes'8. bes,16 bes8 bes | f'[( g]) a f | bes8. bes,16 bes4 | ees4. ees8 | f2 | f, | bes\fermata
	     
}


lyrsoprano = \lyricmode {
	А -- ще и во гроб сниз -- шел е -- си без -- смер -- тне,
	но а -- до -- ву раз -- ру -- шил е -- си си -- лу,
	и вос -- кресл е -- си я -- ко по -- бе -- ди -- тель, Хри -- сте Бо -- же,
	% же -- нам ми -- ро -- но -- си -- цам ве -- ща -- вый, ра -- дуй -- те -- ся,
	и тво -- им а -- по -- сто -- лам мир да -- ру -- яй
	пад -- шим по -- да -- яй  во -- скре -- се -- ни е, во -- скре -- се -- ни -- е.
}

lyralto = \lyricmode {
      \repeat unfold 38 { \skip 1 }
  	%А -- ще и во гроб сниз -- шел е -- си без -- смер -- тне,
	%но а -- до -- ву раз -- ру -- шил е -- си си -- лу,
	%и вос -- кресл е -- си я -- ко по -- бе -- ди -- тель, Хри -- сте Бо -- же,
	же -- нам ми -- ро -- но -- си -- цам ве -- ща -- вый, ра -- дуй -- те -- ся,
	%и тво -- им а -- по -- сто -- лам мир да -- ру -- яй
	%пад -- шим по -- да -- яй  во -- скре -- се -- ни е, во -- скре -- се -- ни -- е.
}


\bookpart {
  
    \header {
	  title = "Аще и во гроб"
	  subtitle = " "
	  composer = ""
	}
	
\score { 
  

	
  \new ChoirStaff  <<

	% Партия сопрано и альта
    \new Staff = "sa" <<
	\set Staff.instrumentName = \markup { \column { "С" \line { "А" } } }
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto }
    >>
	\new Lyrics \lyricsto "Sop" { \lyrsoprano }
	\new Lyrics \lyricsto "Alto" { \lyralto }

    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "Т" \line { "Б" } } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Bass" { \lyrsoprano }
  >>
  \layout { 
  }
  \midi { \tempo 4=120 }
}
}