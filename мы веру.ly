\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-global-staff-size 19.6)
\paper {
  #(set-paper-size "a4")
  top-margin = 20
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = #ff
}

global = {
  \time 6/8
  \partial 8
  \autoBeamOff
  \dynamicUp
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
}

sopmajor = \relative c' {
  \key f \major
  f8 | 
  c' a f g a bes | 
  a g f g g8. g16 | 
  f8 f g a a g | 
  a a b c c8. a16 |
  \time 9/8 
  d8 c bes a bes c g4 bes8 | 
  a8. g16 f8 e f d c4 c8 |
  \time 6/8 
  d d e f f e |
  f f g a a8. a16 | 
  bes8 c a g a f | 
  d g e f f\fermata
}

sopminor = \relative c' {
  \key f \minor  
  f8 | 
  f e f f e f | 
  aes? g f f e8. e16 | 
  f8 f g aes aes g | 
  aes bes b c16[( b)] c8. aes16 |
  \time 9/8 
  des?8 c bes aes g f g4 bes8 | 
  aes8. g16 f8 g g b c4 aes8 |
  \time 6/8 
  f bes g aes aes g | 
  aes des bes c c8. aes16 |
  bes8 c aes g aes f | 
  d g e f f\fermata
}

altmajor = \relative c' {
  \key f \major
  c8 | 
  f f c e f g |
  f c c e e8. e16 |
  c8 c e f f e | 
  f f g g g8. f16 |
  \time 9/8
  f8 f f f f f e4 g8 | 
  f8. f16 c8 c c b g4 a8 |
  \time 6/8
  bes bes c c c c |
  c d d cis cis8. d16 | 
  d8 g f e f c? | 
  bes bes c bes a\fermata 
}

altminor = \relative c' {
  \key f \minor
  f8 | 
  f e f des? c des | 
  c bes aes? des c8. c16 | 
  f8 des? c f f e | 
  f es? des? c c8. f16 |
  \time 9/8 
  f8 aes g f e f e4 g8 | 
  f8. e16 f8 es f des c4 c8 |
  \time 6/8 
  d d e f f e | 
  f f g aes aes8. aes16 |
  g8 aes f e f aes, | 
  bes bes c bes aes\fermata
}

sopranoVoice = \relative c' {
  \global
  \override Ambitus.X-offset = #2.0
  \tempo "Largo" 4. = 40 - 46 
  \sopmajor \bar ":|."
  \tempo Lento 
  \sopminor \bar "||"
}

altoVoice =  \relative c' {
  \global
  \altmajor
  \altminor
}

verseOne = \lyricmode {
  \set stanza = "1."
  Мы ве -- ру сво -- ю и -- спо -- ве -- ду -- ем ны -- не:
  все бла -- га да -- ру -- ет нам Бог три -- е -- ди -- ный;
  мы ве -- ру -- ем в_Бо -- га О -- тца,
  Со -- зда -- те -- ля ми -- ра, Тво -- рца;
  де -- сни -- це -- ю Бо -- жьей во -- ве -- ки хра -- ни -- мо
  всё то, что мы ви -- дим, и то, что не -- зри -- мо.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  И в_Е -- ди -- но -- ро -- дно -- го Бо -- жье -- го Сы -- на
  мы ве -- ру сво -- ю и -- спо -- ве -- ду -- ем ны -- не:
  Он был ра -- ди нас во -- пло -- щён,
  от Ду -- ха и Де -- вы ро -- ждён,
  бе -- зви -- нно стра -- да -- нья те -- рпел при Пи -- ла -- те,
  за на -- ши гре -- хи при -- ни -- ма -- я про -- кля -- тье. 
}

verseThree = \lyricmode {
  \set stanza = "3."
  И -- спил на -- шей сме -- рти бе -- зро -- по -- тно ча -- шу,
  све -- рши -- лось для нас и -- ску -- пле -- ни -- е на -- ше
  в_бе -- згре -- шном Ии -- су -- се Хри -- сте
  ра -- спя -- том за нас на кре -- сте.
  И был по -- гре -- бён; со -- кру -- шил все пре -- гра -- ды,
  ра -- зру -- шив вра -- та не -- при -- сту -- пны -- е а -- да. 
}

verseFour = \lyricmode {
  \set stanza = "4."
  Во -- скрес в_тре -- тий день и со сла -- вой чу -- дес -- но
  во -- знё -- сся к_О -- тцу наш Хо -- да -- тай не -- бе -- сный,
  от -- ку -- да при -- дёт Он су -- дить,
  ко -- му у -- ме -- реть, ко -- му жить:
  Су -- дья, что ка -- ра -- ет за грех о -- су -- ждён -- ных,
  За -- сту -- пник для всех, че -- рез ве -- ру спа -- сё -- нных.
}

verseFive = \lyricmode {
  \set stanza = "5."
  И ве -- ру -- ем в_Го -- спо -- да Ду -- ха Свя -- то -- го,
  Он Сло -- вом и в_Та -- и -- нствах Це -- рковь Хри -- сто -- ву
  в_спа -- си -- те -- льной ве -- ре хра -- нит,
  про -- ща -- ет и жи -- во -- тво -- рит.
  Вос -- кре -- снем, сво -- бо -- дны от сме -- ртно -- го пле -- на,
  на -- сле -- ду -- ем дар ве -- чной жи -- зни не -- тле -- нной.
}

rightone = \relative c' {
  \global
  \autoBeamOn
  \key f \major
  f8 | 
  c' a f g a bes | 
  a g f g g8. g16 | 
  f8 f g a a g | 
  a a b c c8. a16 |
  \time 9/8 
  d8 c bes a bes c g4 bes8 | 
  a8. g16 f8 e f d c4 c8 |
  \time 6/8 
  d d e f f e |
  f f g a a8. a16 | 
  bes8 c? a g a f | 
  d g e f f\fermata 
  
  \key f \minor
  f8 |
  c' aes f g aes bes |
  aes g f g g8. g16 |
  f8 f g aes aes g |
  aes aes bes c c8. f16 |
  \time 9/8
  des8 c bes aes g f g4 bes8 |
  aes8. g16 f8 es f des c4 c8 |
  \time 6/8
  d d e f f e |
  f f g aes aes8. aes16 |
  bes8 c aes g aes f |
  d g e f f\fermata
}

righttwo = \relative c' {
  \global
  \autoBeamOn
  \key f \major
  c8 | 
  f4 c8 e f g |
  f c4 e4. |
  c4 e8 f4 e8 | 
  f4 g8 g~ g8. f16 |
  \time 9/8
  f4.~ f e4 g8 | 
  f4 c8 c4 b8 g4 a8 |
  \time 6/8
  bes4 c8 c4. |
  c8 d4 cis8~ cis8. d16 | 
  d8 g f e f c? | 
  bes4 c8 bes a\fermata
  
  \key f \minor
  c8 |
  f4 c8 e f g |
  f c4 e4. |
  c4 e8 f4 e8 |
  f4. e8~ e8. f16 |
  f4.~ f e4 g8 |
  f4 c8 c4 b8 g4 aes8 |
  bes4 c8 c4. |
  c8 des es es es8. f16 |
  g4 f8 e f c |
  d bes c bes aes\fermata
}

leftone = \relative c' {
  \global
  \autoBeamOn
  \key f \major
  a8 | 
  a c a bes c4~ |
  c8 bes a c4. |
  a4 c8 c4 c8 |
  c d4 e8~ e8. c16 |
  \time 9/8
  bes4. c c4 c8 |
  c8. bes16 a8 g4 f8 e4 f8 |
  \time 6/8
  f8 g4 a g8 |
  a4 e8 e a8. g16 |
  g8 c4~ c f,8~ |
  f g4 f\fermata 
  
  \key f \minor
  aes8 |
  aes c aes bes c4~ 
  c8 bes aes c4. |
  aes4 c8 c4 c8 |
  c bes4 g8 c8. c16|
  \time 9/8
  bes4. c c4 c8 |
  c8. bes16 aes8 g4 f8 e4 f8 |
  \time 6/8
  f g4 aes g8 | 
  aes bes4 c8 c8. c16 |
  des8 c4~ c f,8~ |
  f g4 f\fermata
}

lefttwo = \relative c {
  \global
  \autoBeamOn
  \key f \major
  f8 |
  f4.~ f~ |
  f c |
  f4 c8 f4 c8 |
  f d g c,~ c8. f16 |
  \time 9/8
  bes8 a g f g a c4 e,8 |
  f4. g4 g,8 c4 f,8 |
  \time 6/8
  bes g c f4 c8 |
  f d bes a~ a8. f'16~ |
  f8 e f c f a, |
  bes g c f,4\fermata
  
  \key f \minor
  f'8 |
  f4.~ f~ |
  f c |
  f4 c8 f4 c8 |
  f es des c~ c8. f16 |
  \time 9/8
  bes8 aes g f g aes c4 e,8 |
  f4. g4 g,8 c4 f,8 |
  \time 6/8
  bes g c f4 c8 | f bes, es aes, aes'8. f16~ |
  f8 e f c f aes, |
  bes g c f,4\fermata
  
}

right = \relative c' {
  << \new Voice { \voiceOne \rightone }
     \new Voice { \voiceTwo \righttwo }
  >>
}

left = \relative c' {
  << \new Voice { \voiceOne \leftone }
     \new Voice { \voiceTwo \lefttwo }
  >>
}

sopranoVoicePart = \new Staff \with {
  instrumentName = \markup\right-column{"Сопрано" "Альт"}
  midiInstrument = "voice oohs"
} << \new Voice = "sop" { \voiceOne \sopranoVoice } 
     \new Voice = "alt" { \voiceTwo \altoVoice } >>


pianoPart = \new PianoStaff \with {
  instrumentName = "Орган"
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass \left }
>>

\header {
  title = "Мы веру свою исповедуем ныне"
  subtitle = ""
  composer = "Алан Людвиг"
  poet = "Татьяна Соколова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\bookpart {
  \header {
    instrument = "Хор"
  }
  \score {
    <<
      \sopranoVoicePart  
      \new Lyrics \lyricsto "sop" { \verseOne}
      \new Lyrics \lyricsto "sop" { \verseTwo \verseThree }
      \new Lyrics \lyricsto "sop" { \verseFour }
      \new Lyrics \lyricsto "sop" { \verseFive }
    >>
    \layout { 
      \context {
        \Voice
        \consists "Ambitus_engraver"
      }
    }
    %\midi { \tempo 4.=40 }
  }
}

\bookpart {
  \header {
    instrument = "Хор + орган"
  }
  \score {
    <<
      \sopranoVoicePart  
      \new Lyrics \lyricsto "sop" { \verseOne \verseThree}
      \new Lyrics \lyricsto "sop" { \set stanza = "2." И в_Е -- ди -- но -- ро -- дно -- го... }
      \new Lyrics \lyricsto "sop" { \set stanza = "4." Во -- скрес в_тре -- тий день и со... }
      \new Lyrics \lyricsto "sop" { \set stanza = "5." И ве -- ру -- ем в_Го -- спо -- да... }

      \pianoPart
    >>
    \layout { }
    %\midi { \tempo 4.=40 }
  }
}
