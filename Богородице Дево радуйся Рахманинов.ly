\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Богородице Дево, радуйся"
  composer = "Рахманинов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
}

scoreASopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \partial 2
  \tempo "Покойно, не скоро"
  a4\p  a | a4.--( g8) f4 a |  g4.( f8) g2 | a8\mp\>( g f a g f)\! g4 | a2\pp a4\< g8( a)\! |
  bes4(\> a g)\! f8(\< a)\! | g2~(\> g8[ e])\! f(\< g)\! | a8( g f\> a g f g4)\! | a2\pp a\< | a2.\! g4\> |
  << { a1~\!( a2. g4} { s1 s4\< s2\> s4\! } >> | a8\pp g f a g f g4) | a1 |
  c2.^\markup{ \dynamic pp \italic "очень нежно" } a8( bes) | << { c4(\< d2)\! c4 } {s2 s8 s\> s s\!} >> |
  a4( c2\< e4\> | d1)\pp | d2\p d4( c8 bes) | 
  \time 6/4 c4( d2)\< c4 d8( e\! <d f >4) | <e g >1\ff <d f >4( <c e >) |
  <d f >4( <c e >) << { \voiceOne d8( f e2)\> } \new Voice {\voiceTwo d4( c2) } >> <bes d>4\! |
  c1\p c2 | << { c1 c2 } {s2 s\> s2} >> | c4\pp~ c8 r a4(\p g) f( a) | 
  \time 4/4 << g2( {s4\< s\!} >> f2)\> | g1\pp\> | f1\ppp\fermata \bar "|."
}

scoreAVerseSopranoVoice = \lyricmode {
  Бо -- го -- ро -- ди -- це Де -- во, ра -- дуй -- ся, Бла -- го --
  дат -- на -- я __ Ма -- ри -- е, Гос -- подь с_То --
  бо -- ю. Бо -- го --
  ро -- ди -- це __ Де -- во, __ ра -- дуй -- ся, __
  ра -- дуй -- ся, __ я -- ко Спа -- са
  ро -- ди -- ла __ е -- си __ душ __ на -- ших.
}

scoreAAltoVoice = \relative c' {
  \global
  \dynamicUp
  f4\p f | f4.--( e8) d4 f | e4.( d8) e2 | f8(\mp\> e d f~ f d)\! e4 | f2\pp f4\< f\!
  f2.\> d8(\< e\!) | f4( e\> d8[ c\!]) d(\< e)\! | f( e d f~\> f d e4)\! | f2\pp f\< e4.(\! f8 e4) d4\> |
  c4.\!( d8 c4 bes | << {c4 d2 e4 } {s4\< s\! s\> s\!} >> f8\pp e d f~ f d e4) |
  f <f a>\p q q | q8( <e g> <d f> <f a> <e g> <d f> <e g>4) |
  <f a>2 q8( <e g> <d f> <f a>) | <e g>( <d f> <e g>4) <f a>2~ | q4 <e g>8( <f a>) <g bes>4\p \autoBeamOff q8 q \autoBeamOn |
  q( <f a> <e g> <g bes>) <f a>( <e g> <f a>4)
  \time 6/4 q \autoBeamOff <e g>8([\< <f a>]) <g bes>([ <f a>]) <e g>([ <g bes>]) <f a>[( g)] \autoBeamOn a\ff( bes
  c4.) c8 c([ bes a c] bes[ a]) bes4~ | bes \autoBeamOff bes8 bes \autoBeamOn bes( a g bes a\> f g4\! | 
  a) \autoBeamOff a8 a a[( g]) f([ a]) g([ f]) g4 |
  \autoBeamOn a2~( a8\> g f a g f g4 | a4~\!\pp a8) r f4\p( e) d( e) |
  \time 4/4 << d2( {s4\< s\!} >> c2)\> | bes1\pp\> a\ppp\fermata
  
}

scoreAVerseAltoVoice = \lyricmode {
\repeat unfold 23 \skip 1
Бла -- го -- сло -- ве -- 
нна Ты __ в_же -- нах, __ и бла -- го -- сло -- вен  __ Плод __ чре -- ва __ Тво -- е -- го, __ я --
ко Спа -- са ро -- ди -- ла, я -- ко Спа -- са ро -- ди --
ла __
}

scoreATenorVoice = \relative c' {
  \global
  \dynamicUp
  \partial 2 c4\p c | c2-- a4 c | c4.( a8) c2
  c4\mp\>( a8 c d a)\! c4 | c2\pp c4\< c\!
  d(\> c bes)\! a\< bes\!( a\> c8 a\!) << bes4 { s8\< s\!} >> a4.( c8\> d a c4)\! |
  c2\pp c\< | a2.\! g4\>
  e4.\!( f8 e4 d | e4.\< f8\! g\> a bes4\! | c4\pp a8 c d a c4) c1
  c2.^\markup {\dynamic pp \italic "очень нежно"} a8( bes)
  << { c4(\< d2)\! c4 } {s2 s8 s\> s s\!} >>
  a4( c2\< e4\> | d1)\pp | d2\p d4( c8 bes) | 
  \time 6/4 c4( d2)\< c4 d8( e\! <d f >4) | <e g >1\ff <d f >4( <c e >) |
  <d f >4( <c e >)
  << { \voiceOne d8( f e2)\> d4\! } \new Voice {\voiceTwo d4( c2) bes4 } >> |
  << { \voiceOne f'4\p( e) d( c) bes8( a) bes4 } \new Voice {\voiceTwo c2 c8( bes a4) bes8( a) bes4 } >>
  \autoBeamOff c4 c8 c\p c([\>^\markup{\italic "немного выделяя"} bes]) a([ c]) bes[( a]) bes4 | c4~\pp c8 r
  << { \voiceOne c2\p a } \new Voice {\voiceTwo a4( g) a2 } >>
  \time 4/4 << g2( {s4\< s\!} >> f4\> e) | d2.(\pp\>  c4) | f1\ppp\fermata \bar "|."
}

scoreAVerseTenorVoice = \lyricmode {
    Бо -- го -- ро -- ди -- це Де -- во, ра -- дуй -- ся, Бла -- го --
  дат -- на -- я __ Ма -- ри -- е, Гос -- подь с_То --
  бо -- ю. Бо -- го --
  ро -- ди -- це __ Де -- во, __ ра -- дуй -- ся, __
  ра -- дуй -- ся, __ я -- ко Спа -- са ро -- ди -- 
  ла, я -- ко Спа -- са ро -- ди -- ла е -- си душ __ на -- ших.  
}

scoreABassVoice = \relative c {
  \global
  \dynamicUp
  \partial 2 f4\p f | f4.--( c8) d4 a | c4.( d8) c2 |
  f8(\mp\> c d a bes d)\! c4 | f2\pp f4\< e\!
  d2.\> c4\< | d(\! c\> bes8 a)\! g4\< | d'4.\!( a8\> bes d c4)\! | f2\pp 
  f4(\< d) | c4.\!( d8 c4) bes\>
  a2.(\! g4 | << {a4 bes2 c4 } {s4\< s\! s\> s\!} >> f8\pp c d a bes d c4) | f1
  R1*5
  \time 6/4 r2 r2 r4 a8(\ff bes
  c4.) \autoBeamOff c8 c([ bes a c] bes[ a]) bes4~ | bes bes8 bes bes[( a g bes] a[\> f] g4) | 
  a(\p g) f( e) d c
  << { \voiceOne f4( e d\> e) d( c)\! f4~ f8 } \new Voice {\voiceTwo f,1 f2 f'4~ f8 } >>
  r8 f4\p( e) d( c) 
  \time 4/4 << bes2( {s4\< s\!} >> a2)\> | g2.(\pp\> <c \parenthesize c,>4) | <f, c'>1\ppp\fermata \bar "|."
}

scoreAVerseBassVoice = \lyricmode {
  \repeat unfold 23 \skip 1
  Я -- 
  ко Спа -- са ро -- ди -- ла, __ я -- ко Спа -- са
  ро -- ди -- ла
}

scoreARight = \relative c' {
  \global
  \dynamicUp
  \partial 2 \tempo "Покойно, не скоро" <c f a>4 q |
  << { <f a>4.--( <e g>8) <d f>4 <f a> } \\ { c2 a4 c } >> | <c e g>4.( <a d f>8) <c e g>2 |
  << { <f a>8(\mp <e g> <d f> << {f~ f} {a g} >> <d f>) <e g>4 | <f a>2 a4 g8( a)
       bes4(\> a g)\! f8( a) | g2(~ g8 e) <d f> <e g> | <f a>( <e g> <d f> << {f~ f} {a g} >> <d f> <e g>4)
     }
       \\
     {	c4( a8\> c d a)\! c4 | c2\pp f4\< f \!| f2. d8(\< e)\! | f4( e\> d8 c)\! bes4\< | a4.(\! c8\> d a c4\!) 
     } >> << { <c f a>2 q } \\ {s4 s\pp s4\< s4\!} >> |
  << { a'2. g4 | a1~( | a2. g4 | <f a>8 <e g> <d f> << {f~ f} {a g} >> <d f> <e g>4) |
     <c f a>1 | c'2.-- a8( bes) | c4\<( d2)\> c4 | a(\! c2 e4 | d1) d2-- d4( c8 bes) }
  \\
  { e,4.(\! f8 e4) d\> | c4.(\! d8 c4 bes | c\<  d2\> e4)\! | c\pp a8 c d a c4 | r <f a>\p q q |
     q8( <e g> <d f> <f a> <e g> <f a> <e g>4)
     <f a>2 q8( <e g> <d f> <f a>) | <e g>8( <e f> <e g>4)\< <f~ a~>2\> <f a>4\! 
     <e g>8( <f a>) <g bes>4 q8 q | q(\p <f a> <e g> <g bes>) <f a>( <e g> <f a>4) }
  >>
  \time 6/4
  << { 
    c'4( d2) c4 d8( e <d f>4) |
    <e g>1 <d f>4( <c e>) | <d f>( <c e>) << { d8~ d c2 } { s8( f e2) } >> <bes d>4 |
    c1 c2 | 
    << { c1 c2 } \new Voice {\voiceThree a2~ a8[ g f a] g[ f] g4 } >>
    <a~ c~>4 <a c>8 r <f a>4( <e g>) f( a) |
    g2( f) | g1 f1\fermata
  } \\ {
    <f a>4\< <e g>8([ <f a>]) <g bes>[( <f a>]) <e g>[( <g bes>]) <f a>[( g)] a[( bes]\!
    c4.\ff) c8 c[( bes a c] bes[ a]) bes4~ | bes bes8 bes bes[( a g bes] a[\> f] g4\! | a4\mf)
    a8 a a[( g]) f[( a]) g[( f]) g4 |
    
    { \voiceFour c,4\p c8 c c[ \hideStaffSwitch \change Staff= "left" \stemUp bes] \showStaffSwitch \change Staff= "right" \stemDown a[ c] \change Staff= "left" \stemUp bes[ a] \change Staff= "right" \stemDown bes4 } |
    
    c4~\pp c8 r c2\p d4( e) | << d2( {s4\< s\!} >> c2)\> | bes1\pp\> | a\ppp
  } >>

}

scoreALeft = \relative c {
  \global
  \dynamicUp
  f4\p f | f4.--( c8) bes4 a | c4.( bes8) c2 | f8([ c d a] bes[ d]) c4 f2 f4 e
  << {
    d'4( c bes) a | bes( a g8[ a])
  } \\ {
    d,2. c4 | d( c bes8[ a]) 
  } >>
  g4 d'4.( a8 bes d c4) | f2 f4( d) | 
  << { a'2. g4 | e4.( f8 e4 d | e4. f8 g[ a] bes4) }
  \\ { c,4.( d8 c4) bes | a2.( g4 | a bes2 c4) } >>
  f8( c d a bes d c4) | f1 | c'2.-- a8( bes)
  c4( d2) c4 | a c2 e4 | d1 d2-- d4( c8 bes) |
  c4( d2) c4 
  << { d8( e <d f>4) | <e g>1 <d f>4( <c e>) | <d f>( 
       <c e>) << { d8~ d c2 } { s8( f e2) } >> <bes d>4 | c2 c8( bes a4) bes8( a) bes4 |
       f4( e c e) d( c) | s2 a'4( g) a2 | g( f4 e) | d2.( c4) | <c f>1\fermata
     } 
     \\ { s8 s a'( bes c4.) c8 c[( bes a c] bes a) bes4~ | bes bes8 bes bes([ a g bes] a[ f] g4)
        <a f'>4( <g e'>) <f d'>4( <e c'>) d c |
        f,1 f2 | f'4~ f8 r f4( e) d( c) | bes2( a) | g2.( c4) | f,1
  } >>
}

scoreASopranoVoicePart = \new Staff \with {
  instrumentName = "С"
  midiInstrument = "voice oohs"
} { \scoreASopranoVoice }
\addlyrics { \scoreAVerseSopranoVoice }


scoreAAltoVoicePart = \new Staff \with {
  instrumentName = "А"
  midiInstrument = "voice oohs"
} { \scoreAAltoVoice }
\addlyrics { \scoreAVerseAltoVoice }


scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Т"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerseTenorVoice }


scoreABassVoicePart = \new Staff \with {
  instrumentName = "Б"
  midiInstrument = "voice oohs"
} { \clef bass \scoreABassVoice }
\addlyrics { \scoreAVerseBassVoice }

scoreAOrganPart =   \new PianoStaff \with {
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 5
  ragged-bottom = ##f
}

\bookpart {
\score {
  <<
    \new ChoirStaff <<
      \scoreASopranoVoicePart
      \scoreAAltoVoicePart
      \scoreATenorVoicePart
      \scoreABassVoicePart
    >>
    \scoreAOrganPart
  >>
  \layout { 
    \context {
      \Score
      % удаляем обозначение темпа из общего плана
      \remove "Metronome_mark_engraver"
      \remove "Mark_engraver"
    }
    \context {
      \Staff
      % добавляем изображение темпа на уровень нотного стана
        \consists "Metronome_mark_engraver"   
        \consists "Mark_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=60
  }
}
}

\bookpart {
\score {
   \new ChoirStaff <<
      \scoreASopranoVoicePart
      \scoreAAltoVoicePart
      \scoreATenorVoicePart
      \scoreABassVoicePart
    >>
  \layout { 
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=60
  }
}
}