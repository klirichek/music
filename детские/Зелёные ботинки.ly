\version "2.18.2"


% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Зелёные ботинки"
  poet = "Слова Р. Алдониной"
  composer = "Сергей Гаврилов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 10
%  ragged-bottom = ##t
  ragged-last-bottom = ##f
}

secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/4
  \partial 4
  \tempo "Весело"
  %\secondbar
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1

}

voltaContLib = \markup\text"Для повторения"
voltaEndLib = \markup\text"Для окончания"

melody = \relative c'' {
  \global
  \autoBeamOff
  % Вписывайте музыку сюда
  r4 |
  R2*3 |
  r4 r8 g\mf |
  \repeat volta 3 {
    c, c c d |
    e4 c8 e | \abr
    f e f a |
    g4 e8 g |
    c, c c d |
    e4 c8 e |
    d8. cis16 d8 e |
    d r r g | \abr
    c, c c d |
    e4 c8 e |
    f e f a |
    g4 e8 c |
    c' b c a |
    g4 e8 c | \abr
    d d e16 d8 c16 |
    R2 |
    
    c'8 \mark\markup\italic"Припев" r  a r |
    g16 a8 g16~ g4 |
    d8 d4 e8 |
    g r r4 | \abr
    c8 r a r |
    g16 a8 g16~ g4 |
    es8 es4 d8 |
  }
  \alternative {
    { \set Score.repeatCommands =#(list(list 'volta voltaContLib) )
      c r r g' }
    { \set Score.repeatCommands =#(list(list 'volta voltaEndLib) 'end-repeat )
      c, r r4 | }
  }
      c'8 r a r |
      g16 a8 g16~ g4 |
      d8 d4 e8 |
      g r r4 |
      c8 r a r |
      g16 a8 g16~ g4 |
      es8 es4 d8 |
      c8 r c' r \bar "|."
 
}

verse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = "1."
  Зе -- лё -- ны -- е бо -- ти -- нки се -- бе ку -- пи -- ли сви -- нки,
  Зе -- лё -- ны -- е бо -- ти -- нки и кра -- сны -- е шнур -- ки.
  На -- де -- ли на ко -- пы -- тца и на -- ча -- ли ре -- зви -- ться,
  И на -- ча -- ли ре -- зви -- ться на тра -- вке у ре -- ки.
  
  Тип -- топ, тра -- ля -- ля,
  Прыг -- прыг, плюх -- плюх.
  Хлоп -- хлоп, тра -- ля -- ля,
  Хрю -- хрю -- хрю -- хрю.
  
  \set stanza = "2." Сна- //_хрю.
  Тип -- топ, тра -- ля -- ля,
  Прыг -- прыг, плюх -- плюх.
  Хлоп -- хлоп, тра -- ля -- ля,
  Хрю -- хрю -- хрю -- хрю, хрю!
  
}

voltaAdLib = \markup { 1. 2. 3... \text \italic { ad lib. } }
right = \relative c' {
  \global
  % Вписывайте музыку сюда
  c4\mf |
  c'8 b c <a fis dis c> |
  g4 e8 c |
  <d fis,> q <e f,>16 d8 <c e,>16~ |
  q4 r8 g' |
  \repeat volta 3 {
    c, c c d |
    <e c>4 c8 e | \abr
    <f c a>8 e <f c> a |
    <g e>4 <e c>8 <g e> |
    c, c c d |
    <e c>4 c8 <e c> |
    <d fis,>8. cis16 d8 e |
    <d b f>8 r r g | \abr
    c, c c d |
    <e c>4 c8 e |
    <f c a>8 e <f c> a |
    <g e>4 <e c>8 c |
    c' b c <a fis dis c> |
    g4 e8 c | \abr
    
    <d fis,>8 d <e f,>16 d8 <c e,>16~ |
    q4 r |
    <c' c,>8 r <a c,> r |
    <g e c>16 a8 g16~ g4 |
    <d b g>8 q4 <e b g>8 |
    <g e c>8 r r4 | \abr
    <c c,>8 r <a c,> r |
    <g e c>16 a8 g16~ g4 |
    <es c fis,>8 q4 <d b f>8 |  
  }
  \alternative {
    { \set Score.repeatCommands =#(list(list 'volta voltaContLib) )
      <c g e> r r g' }
    { \set Score.repeatCommands =#(list(list 'volta voltaEndLib) 'end-repeat )
      <c, g e> r r4 | }
  }
    
      <c' c,>8 r <a c,> r |
      <g e c>16 a8 g16~ g4 |
      <d b g>8 q4 <e b g>8 |
      <g e c> r r4 |
      <c c,>8 r <a c,> r |
      <g e c>16 a8 g16~ g4 |
      <es c fis,>8 q4 <d b f>8 |
      <c g e>8 r \acciaccatura { a'16 b } <c c,>8->
  r8 \bar "|."
}

left = \relative c, {
  \global
  % Вписывайте музыку сюда
  r4 |
  f8 <c' a'> fis, <es' a> |
  g, <e' g> a, <e' g> |
  d, d' g, d' |
  c g <c c,> r |
  \repeat volta 3 {
    c <e g > g, <e' g> |
    c <e g> g, <e' g> |
    f, <c' f> a <c f> |
    c <e g> g, <e' g> |
    c <e g> g, <e' g> |
    c <e g> g, <e' g> |
    d, d' fis, d' |
    g, f e d |
    c c' g <e' g> |
    c <e g> g, <e' g> |
    f, <c' f> a <c f> |
    c <e g> g, <e' g> |
    f, <c' a'> fis, <es' a> |
    g, <e' g> a, <e' g> |
    
    d, d' g, d' |
    c g <c c,>4 |
    f,8 <c' f a> f, <c' f a> |
    c <e g> g, <e' g> |
    g, d' d, d' |
    c bes a g |
    f <c' f a> f, <c' f a> |
    c <e g> a, <e' g> |
    d, d' g, d' |    
  }
  \alternative {
    { c g <c c,>4 }
    { c8 bes a g | }
  }
    f <c' f a> f, <c' f a> |
    c <e g> g, <e' g> |
    g, d' d, d' |
    c bes a g |
    f <c' f a> f, <c' f a> |
    c <e g> a, <e' g> |
    <d d,> q4 g,8 |
    c g <c c,>
  r8
}

leadSheetPart = <<
  \new Staff \with {
    midiInstrument = "choir aahs"
  } { \melody }
  \addlyrics { \verse }
>>

pianoPart = \new PianoStaff \with {
  \accidentalStyle piano
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

textOfSong = \markup {

    \fill-line {
      \column {
        \line {
          \column { 1. }
          \column { 
            \line { Зелёные ботинки себе купили свинки, }
            \line { Зелёные ботинки и красные шнурки. }
            \line { Надели на копытца и начали резвиться, }
            \line { И начали резвиться на травке у реки. }
          } 
        }
        \line { 
          \vspace #2
          \column \italic { Припев: } 
          \column {
            \line { Тип-топ, тра-ля-ля, }
            \line { Прыг-прыг, плюх-плюх. }
            \line { Хлоп-хлоп, тра-ля-ля, }
            \line { Хрю-хрю-хрю-хрю. }
          }
        }
      }
      \hspace #0
  
      \column {
        \line {
          \column { 2. }
          \column { 
            \line { Сначала друг за другом все бегали по кругу, }
            \line { Потом в траве зелёной катались кувырком,}
            \line { Потом шнурки порвались, ботинки потерялись }
            \line { И маленькие свинки остались босиком! }
          }
        }
        \vspace #1
        \line \italic { Припев. }
        \vspace #2
        \line {
          \column { 3. }
          \column { 
            \line { Сидят и плачут свинки: «Ой, где же вы, ботинки?» }
            \line { Зелёные в зелёном не могут отыскать.}
            \line { Захочешь кувыркаться иль просто баловаться, }
            \line { То новые ботинки не стоит надевать. }
          }
        }
        \vspace #1
        \line \italic { Припев 2 раза. }
      }
    }
  }

\bookpart {
  \header { piece = "Хор" }
  \score { 
    \transpose c d
    <<
      \leadSheetPart
    >>
    \layout { 
    }
  }
  \textOfSong
}

\bookpart {
  \header { piece = "Piano" }
  \score {
    \transpose c d 
    <<
      \pianoPart
    >>
    \layout { 
      \context {
          \Staff \RemoveEmptyStaves
          \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \score {
    \transpose c d 
    <<
      \leadSheetPart
      \pianoPart
    >>
    \layout { 
      \context {
          \Staff \RemoveEmptyStaves
          \override VerticalAxisGroup.remove-first = ##t
  
      }
    }
  }
  \textOfSong
}



\score {
  \unfoldRepeats
  <<
    \leadSheetPart
    \pianoPart
  >>

  \midi {
    \tempo 4=86
  }
}

