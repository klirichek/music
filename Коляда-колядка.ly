\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

abr = { \break }
abr = {}
breakk = { \break }
global = {
  \key f \major
  \time 6/8
  \autoBeamOff
}

solovoice = \relative c' {
  \global
  R2.*20 \pageBreak
  \repeat volta 2 {
  f8 f g a a f |
  g g a bes bes g |
  c c a bes bes g | \abr
  %page 4
  a a f g a bes |
  c c a bes bes g |
  }
  \alternative {
    { a a f g4 e8 | \abr
      f4 r8 r4 r8 R2.*3 }
    {a8 a f g4 e8 | }
     
  }
  f4 r8 r4 r8
  R2.*15
  \repeat volta 2 {
    f8 f g a a f | \abr
    g g a bes bes g |
    c c a bes bes g |
    a a f g a bes | \abr
    %page 8
    c c a bes bes g |
  }
  \alternative {
    { a a f g4 e8 | 
      f4 r8 r4 r8 | \abr
      R2.*3 }
    { a8 a f g4( e8) | \abr
      % page 9
      f4. r4 r8 }
  }
  R2.*15
  \repeat volta 4 { R2.*2 }
  R2.*3 \bar "|."
  
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  R2.*8
  f8 f16 f f8 f f f | \abr
  f8 f16 f f8 f f f |
  f8 f16 f f8 <f g> q q |
  <f a>8 q16 q q8 <f g>8 q q | \abr
  r8 f a bes4( g8) |
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 | \abr
  %page 3
  r8 f a bes4( g8) |
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 | \abr
  f2.(\( |
  g4.~) g8[ d' bes] |
  c4. bes | \abr
  %page 4
  a4 f8 g[ a bes]\) |
  c8 c a bes bes g |
  a a f g4 e8 |
  f f a bes4( g8) |
  r8 f a g4( e8) |
  r8 f a bes4( g8) |
  r8 f a g4( e8) | \abr
  a8 a f g4 e8 |
  f4. g( |
  a g) |
  e16 e a8 e f( g) a | \abr
  g16 g c8 g a[( bes]) c |
  c16 c c8 d bes4 bes8 |
  bes16 bes bes8 c a4 a8 | \abr
  %page 6
  c16 c c8 d <bes d>4 q8 |
  a16 a a8 bes a4( g8) |
  f8 f a bes4( g8) | \abr
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 |
  r8 f a bes4( g8) | \abr
  %page 7
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 |
  f2.\( | \abr
  g4.~ g8[ d' bes] |
  c4. bes |
  a4 f8 g[ a bes]\) | \abr
  %page 8
  c8 c a bes bes g |
  a a f g4 e8 |
  f f a bes4( g8) | \abr
  r8 f a g4( e8) |
  r8 f a bes4( g8) | 
  r8 f a g4( e8) |
  a8 a f g4( e8) | \abr
  %page 9
  f4. g( |
  a g) |
  e16 e a8 e f[( g]) a | \abr
  g16 g c8 g a[( bes]) c |
  c16 c c8 d bes4 bes8 |
  bes16 bes bes8 c a4 a8 | \abr
  %page 10
  c16 c c8 d <bes d>4 q8 |
  a16 a a8 bes a4( g8) |
  f f a bes4( g8) | \abr
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 |
  r f a bes4( g8 ) | \abr
  %page 11
  r8 f a g4( e8) |
  f4 a8 r bes bes |
  c4 a8 bes4 g8 | \abr
  f8 f16 f f8 <f g> q q |
  <f a>8 q16 q q8 <f g> q q | \abr
  %page 12
  R2.*3
}

altvoice = \relative c' {
  \global
  R2.*6
  c4.( d |
  e d c d | \abr
  %page 2
  e d |
  c d |
  e d) | \abr
  r8 c f f4( d8) |
  r8 c f d4( bes8) |
  c4 f f8 f |
  g4 <e g>8 f4 <d f>8 | \abr
  %page 3
  r8 c f f4( d8) |
  r8 c f d4( bes8) |
  c4 f8 r f f |
  g4 <e g>8 f4 <d f>8 | \abr
  c2.(\( d)( f)( | \abr
  %page 4
  f4.) e8[ f g]\) |
  g g <e g> f f <d f> |
  f f c d4 d8 | \abr
  c c f f4( d8) |
  r8 c f d4( bes8) |
  r c f f4( d8) |
  r c f d4( bes8) | \abr
  %page 5
  f' f f d4 d8 |
  c4. d( |
  f e4 d8) |
  cis16 cis cis8 cis d( e) f | \abr
  e16 e e8 e f[( g]) a |
  a16 a a8 a g4 g8 |
  <e g>16 q q8 q f4 f8 | \abr
  %page 6
  a16 a a8 a g4 g8 |
  f16 f f8 f f4( d8) |
  c c f f4( d8) | \abr
  r8 c f d4( bes8) |
  c4 f8 r f f |
  g4 <e g>8 f4 <d f>8 |
  r8 c f f4( d8) | \abr
  %page 7
  r8 c f d4( bes8) |
  c4 f8 r f f |
  g4 <e g>8 f4 <d f>8 | c2.(\( \abr
  d)( f)( f4.) e8[ f g]\) | \abr
  %page 8
  g8 g <e g> f f <d f> |
  f f c d4 d8 |
  c c f f4( d8) | \abr
  r8 c f d4( bes8) |
  r8 c f f4( d8) |
  r8 c f d4( bes8) |
  f' f c d4. | \abr
  %page 9
  c4. d( |
  f e4 d8) |
  cis16 cis cis8 cis d([ e]) f | \abr
  e16 e e8 e f[( g]) a |
  a16 a a8 a g4 g8 |
  <e g>16 q q8 q f4 f8 | \abr
  %page 10
  a16 a a8 a g4 g8 |
  f16 f f8 f f4( d8) |
  c c f f4( d8) | \abr
  r8 c f d4( bes8) |
  c4 f8 r f f |
  g4 <e g>8 f4 <d f>8 |
  r c f f4( d8) | \abr
  %page 11
  r8 c f d4( bes8) |
  c4 f8 r f f |
  g4 <e g>8 f4 <d f>8 | \abr
  c8 c c d d d |
  e e e d d d | \abr
  
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  R2.*4 |
  a4.( bes |
  c bes | \abr
  a bes |
  c bes |
  a bes | \abr
  %page 2
  c bes 
  a bes |
  c bes) | \abr
  r8 a c d4( bes8) |
  r8 a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 | \abr
  %page 3
  r8 a c d4( bes8) |
  r8 a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 | \abr
  a2.( |
  bes) |
  c4. d | \abr
  %page 4
  c~ c4 d8 |
  e e c d d bes |
  c c a bes4 bes8 | \abr
  a a c d4( bes8) |
  r a c bes4( g8) |
  r a c d4( bes8) |
  r a c bes4( g8) | \abr
  %page 5
  c8 c a bes4 bes8 |
  a4. bes( |
  c g~ |
  g8) r r a16 a a8 a | \abr
  c4 r8 c4 c8 |
  d16 d es8 d d4 d8 |
  c16 c c8 c c4 c8 | \abr
  %page 6
  d16 d es8 d d4 d8 |
  c16 c c8 d c4( bes8) |
  a a c d4( bes8) | \abr
  r a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 |
  r a c d4( bes8) | \abr
  %page 7
  r a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 | 
  a2.(\( | \abr
  bes)( |
  c4.)( d)( |
  c~) c4 d8\) | \abr
  %page 8
  e e c d d bes |
  c c a bes4 bes8 |
  a a c d4( bes8) | \abr
  r a c bes4( g8) |
  r a c d4( bes8) |
  r a c bes4( g8) |
  c c a bes4. | \abr
  %page 9
  a bes( |
  c g~ |
  g8) r r a16 a a8 a | \abr
  c c c c4 c8 |
  d16 d es8 d d4 d8 |
  c16 c c8 c c4 c8 | \abr
  %page 10
  d16 d es8 d d4 d8 |
  c16 c c8 d c4( bes8) |
  a a c d4( bes8) | \abr
  r a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 |
  r a c d4( bes8) | \abr
  %page 11
  r a c bes4( g8) |
  a4 c8 r d d |
  e4 c8 d4 bes8 | \abr
  a a a bes bes bes |
  c c c bes bes bes | \abr
  %page 12
  a2.~ |
  a |
  R2.
}

bassvoice = \relative c {
  \global
  \dynamicDown
  f,4. c' |
  f c |
  f, c' |
  f c |
  <f, f'> <c' g'> |
  <f a> <c g'> | \abr
  <f, f'> <c' g'> |
  <f a> <c g'> |
  <f, f'> <c' g'> | \abr
  %page 2
  <f a> <c g'> |
  <f, f'> <c' g'> |
  <f a> << {c8 c c} \new Voice { \voiceFour g'4. } >> | \abr
  \voiceTwo
  f,4. r8 c' c |
  f,4. r8 c' c |
  f,4. c' |
  f, c'8 c c | \abr
  %page 3
  f,4. r8 c' c |
  f,4. r8 c' c |
  f,4. c' |
  f,4. c' | \abr
  f2.~ |
  f |
  a4. g | \abr
  %page 4
  c, bes |
  a8 a a bes bes bes |
  c c c r c c | \abr
  f,4. r8 c' c |
  f,4. r8 c' c |
  f,4. c' |
  f,4. c' | \abr
  %page 5
  c8 c c c4 c8 |
  f,4. f'\( |
  c bes( |
  a8)\) r r d16 d d8 d | \abr
  c4 r8 f4 f8 |
  fis16 fis fis8 fis g[( a]) bes |
  c,16 c c8 e f[( c]) f, | \abr
  %page 6
  fis16 fis fis8 fis g[( a]) bes |
  c16 c c4 r8 c c |
  f,4. r8 c' c | \abr
  f,4. r8 c' c |
  f,4. c' |
  f,4. c'8 c c |
  f,4. r8 c' c | \abr
  %page 7
  f,4. r8 c' c |
  f,4. c' |
  f, c' |
  f2.~ | \abr
  f |
  a4. g |
  c, bes | \abr
  %page 8
  a8 a a bes bes bes |
  c c4 r8 c c |
  f,4. r8 c' c | \abr
  f,4. r8 c' c |
  f,4. c' |
  f, c' |
  c8 c c c4. | \abr
  %page 9
  f,4. f'\( |
  c bes( |
  a8)\) r r d16 d d8 d | \abr
  c c c f4 f8 |
  fis16 fis fis8 fis g[( a]) bes |
  c,16 c c8 e f[( c]) f, | \abr
  %page 10
  fis16 fis fis8 fis g[( a]) bes |
  c16 c c4 r8 c c |
  f,4. r8 c' c | \abr
  f,4. r8 c' c |
  f,4. c' |
  f,4. c'8 c c |
  f,4. r8 c' c |  \abr
  %page 11
  f,4. r8 c' c |
  f,4. c' |
  f,4. c' | \abr
  f,4. c' |
  f4. c | \abr
  f,4. c' |
  f4. c |
  f,4. r4 r8
}


textsolo = \lyricmode {
  \set stanza = "1."
  Ко -- ля -- да, ко -- ля -- дка, вид хат -- кы до хат -- кы,
  вид сэр -- ця до сэр -- ця в_зо -- ло -- тых я -- сэль -- цях,
  вид сэр -- ця до сэр -- ця в_зо -- ло -- тых я -- сэль -- цях.
  
  \repeat unfold 6 \skip 1
  \set stanza = "3."
  У сэр -- ци но -- сы -- лы,
  в_ɦо -- ло -- си зро -- ды -- лы, зи -- ронь -- ко -- ю я -- сно зэм -- лю о -- сви -- ты -- лы,
  зи -- ронь -- ко -- ю я -- сно зэм -- лю о -- сви -- ты -- лы.
}

textsolos = \lyricmode {
  \set stanza = "2."
  Ко -- ля -- да, ко -- ля -- дка, то -- нэнь -- ка у -- клад -- ка
  на ву -- стах из тис -- та во ви -- кы и при -- сно, на ву -- стах из ти -- ста
  \repeat unfold 6 \skip 1
  во ви -- кы и при -- сно.
  \set stanza = "4."
  Ко -- ля -- да, ко -- ля -- дка, мэ -- до -- вэ ды -- тят -- ко,
  на си -- ни у яс -- лах ма -- лэ -- сэнь -- кэ ща -- стя,
  на си -- ни у яс -- лах \repeat unfold 6 \skip 1 ма -- лэнь -- кэ ща -- стя.
}

texts = \lyricmode {
  Динь, ди -- ли, динь, динь, динь, динь,…
  \repeat unfold 21 \skip 1
  Ко -- ля -- да, __ ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка,
  ко -- ля -- да, __ ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка,
  А… \repeat unfold 5 \skip 1
  вид сэр -- ця до сэр -- ця в_зо -- ло -- тых я -- сэль -- цях,
  ко -- ля -- да, __ ко -- ля -- да, __ ко -- ля -- да, __ ко -- ля -- да, __
  во ви -- кы и при -- сно. У…
  Нэ -- суть тэ -- сли зви -- стку:
  Йи -- лы ку -- тю змы -- скы, дя -- ку -- ва -- лы Бо -- ɦу за та -- ку до -- ро -- ɦу,
  дя -- ку -- ва -- лы Бо -- ɦу за та -- ку до -- ро -- ɦу. Ко -- ля -- да, __
  ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка, ко -- ля -- да, __
  ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка. 
  М… \repeat unfold 6 \skip 1
  зи -- ронь -- ко -- ю я -- сно зэм -- лю о -- сви -- ты -- лы. Ко -- ля -- да, __
  ко -- ля -- да, __ ко -- ля -- да, __ ко -- ля -- да. __
  ма -- лэнь -- кэ ща -- стя. У…
  Ма -- мы -- ну кро -- вын -- ку,
  та -- то -- ву ды -- тын -- ку у -- кла -- да -- е спа -- ты ко -- ля -- да, ко -- ля -- дка,
  у -- кла -- да -- е спа -- ты ко -- ля -- да, ко -- ля -- дка. Ко -- ля -- да, __
  ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка, ко -- ля -- да, __
  ко -- ля -- да, __ ко -- ляд, ко -- ля -- да, ко -- ля -- дка.
  Динь, ди -- ли, динь, динь, динь, динь,
  динь, ди -- ли, динь, динь, динь, динь…
}

 
  
texta = \lyricmode { 
  М…
    \repeat unfold 30 \skip 1
  на ву -- стах из ти -- ста
}

textt = \lyricmode {
  М…
  \repeat unfold 64 \skip 1
  Нэ -- суть тэ -- сли
  звит змы -- скы,
  \repeat unfold 84 \skip 1
  Ма -- мы -- ну кро -- вын -- ку,
  \repeat unfold 55 \skip 1
  Ко -- ля -- да, ко -- ля -- дка, вид хат -- кы до хат -- кы. М…
}

textb = \lyricmode { 
  Дин, дон, дин, дон, дин, дон, дин, дон, дин, дон, дин, дон,
  дин, дон, дин, дон, дин, дон,
  дин, дон, дин, дон, дин, дон, ко -- ля --
  да, ко -- ля -- да, ко -- ля -- да, дон, дин, дон, ко -- ля --
  да, ко -- ля -- да, ко -- ля -- да, дон, дин, дон.
  А… дин, дон, дин, дон,
  \repeat unfold 9 \skip 1
  ко -- ля -- 
  да, ко -- ля -- да, ко -- ля -- да, дон, дин, дон,
  \repeat unfold 37 \skip 1
  Ко -- ля -- да, ко -- ля -- 
  да, ко -- ля -- да, дон, дин, дон, ко -- ля -- да, ко -- ля --
  да, ко -- ля -- да, дон, дин, дон.
  М… дин, дон, дин, дон
  \repeat unfold 8 \skip 1
  ко -- ля -- да, ко -- ля --
  да, ко -- ля -- да, дон, дин, дон.
    \repeat unfold 38 \skip 1
  Ко -- ля -- да, ко -- ля --
  да, ко -- ля -- да, дон, дин, дон, ко -- ля -- да, ко -- ля --
  да, ко -- ля -- да, дон, дин, дон,
  дин, дон, дин, дон,
  дин, дон, дин, дон, дин…
}

\bookpart {
  \header {
    title = "Коляда-колядка"
    composer = "муз. Л. Кабiльника"
    poet = "сл. Лазурко"
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
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
  }
  \markup { \column { \line { " "} 
      \fill-line { \null \italic {"Буква «о» везде звучит как о,"} } 
      \fill-line { \null \italic {"буквы «э», «ы» звучат мягче"} } } }
    
\score {
  
  <<
    
      \new Staff \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solo" { \oneVoice \solovoice }
      >>
        \new Lyrics \lyricsto "solo" { \textsolo }
        \new Lyrics \lyricsto "solo" { \textsolos }

  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "С" "А"  } }
      shortInstrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Lyrics = "tenort"
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
      
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    
    \new Lyrics \lyricsto "bass" { \textb }
    \context Lyrics = "tenort" {
      \lyricsto "tenor" { \textt } }
  >> >>
  \layout {
      \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=84
  }
}
}

