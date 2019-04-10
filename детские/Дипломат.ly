\version "2.18.2"


% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Дипломат"
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
  \key c \minor
  \numericTimeSignature
  \time 2/4
  \partial 8
  \tempo "Размеренно, в темпе шага" 4=86
  \secondbar
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1

}

melody = \relative c'' {
  \global
  \autoBeamOff
  % Вписывайте музыку сюда
  r8 |
  \repeat volta 2 {R2*4} \alternative { {R2*4} {R2*2} }
  R2 |
  r4 r8 g\mp^\markup\italic"с грустью, обидой" |
  f4 f8 es |
  d4 d8 c |
  b4 c8 d |
  
  f es r g |
  f4 f8 es |
  d4 d8 c |
  bes?4 d8 f |
  as g r g |
  
  bes4 bes8 as |
  g4 g8 f |
  e4 f8 g |
  as4. g8 |
  f4 f8 es |
  des4 des8 c |
  
  b4 c8 d |
  c4 r8 g'\mf^\markup\italic"с оттенком возмущения" |
  f4 f8 es |
  d4 d8 c |
  b4 c8 d |
  f es r g |
  
  f4 f8 es |
  d4 d8 c |
  bes?4 d8 f |
  as g r g |
  bes4 bes8 as |
  g4 g8 f |
  
  e4 f8 g |
  as4. g8 |
  as4 as8 g |
  f4 f8 es |
  d4 es8 f |
  g4. g8 |
  
  f4 des8 f |
  as4 as8 as |
  g4 c,8 es |
  g g r g |
  f4 f8 es |
  
  des4 des8 c |
  b4 c8 d |
  c c g'4\mf\fermata |
  \key c \major a f8 e |
  f4 d8 c |
  
  b4 c8 d |
  f e e g |
  a4 f8 e |
  f4 d8 c |
  b4 d8 f |
  
  a g g \breathe g\f |
  \time 4/4 \tuplet 3/2 4 { a^\markup\italic"назидательно"\< a a b b b c c c d d\! g, |
  \time 3/4 c b a g f e d e f } |
  \time 2/4 g8\ff g r \tempo "медленнее" g\p |
  e d c4\fermata |
  \time 3/4 \tuplet 3/2 4 { f8\p^\markup\italic"с хитринкой" e d g f e a a \breathe \tempo "В темпе" b\f |
  c b a g f e d c b } |
  \time 2/4 c c r4 \bar "|."
  
}

verse = \lyricmode {
  % Набирайте слова здесь
  Ах, детст -- во мо -- ё про -- те -- ка -- ет во
  мра -- ке: нет в_до -- ме у нас ни ко -- та, ни со -- ба -- ки. Жизнь
  так не -- при -- ят -- на, скуч -- на и пус -- та, ког -- да ни со -- ба -- ки у
  вас, ни ко -- та. Ро -- ди -- те -- лям я на -- ме -- кал мно -- го -- крат -- но, что
  быть од -- но -- му э -- то так не -- при -- ят -- но, что тот, кто не гла -- дит пу --
  шис -- тых ко -- тов, всег -- да ху -- ли -- га -- нить и драть -- ся го -- тов. А
  те, чьи но -- сы не лиз -- ну -- ли со -- ба -- ки, ста -- но -- вят -- ся
  все, как о -- дин, за -- би -- я -- ки. Но! Вряд ли воз -- ник -- нут та --
  ки -- е со -- бы -- ти -- я в_семь -- е, где муд -- ры и ра -- зум -- ны ро --
  ди -- те -- ли: чтоб пра -- виль -- но шло ста -- но -- вле -- нье ре -- бён -- ка, там
  сроч -- но за -- во -- дят щен -- ка и ко -- тён -- ка. За --
  ду -- ма -- лись... Ско -- ро дос -- тиг -- ну я це -- ли. Не
  зря же де -- русь каж -- дый день три не -- де -- ли!
  
}

rone = \relative c'' {
  g8\mf
  \repeat volta 2 {
    a4 g8 f |
    as4 g8 f |
    g4 f8 e |
    g4. g8 \abr
  }
  \alternative {
    {
      f4 e8 d |
      c4 b |
      g'2~ |
      g4. g8 |
    }
    {
      as4 f8 d |
      c4 b | \abr
    }
  }
  c2~ |
  c4. g'8 |
  f4 f8 es |
  d4 d8 c |
  b4 c8 d | \abr
  
  f8 es r g |
  f4 f8 es |
  d4 d8 c |
  bes4 d8 f |
  as g r g | \abr
  
  bes4 bes8 as |
  g4 g8 f |
  e4 f8 g |
  as4. g8 |
  f4 f8 es |
  des4 des8 c | \abr
  
  b4 c8 d |
  c4 r8 g' |
  f4 f8 es |
  d4 d8 c |
  b4 c8 d |
  f es r g | \abr
  
  f4 f8 es |
  d4 d8 c |
  bes?4 d8 f |
  as g r g |
  bes4 bes8 as |
  g4 g8 f | \abr
  
  e4 f8 g |
  as4. g8 |
  as4 as8 g |
  f4 f8 es |
  d4 es8 f |
  g4. g8 | \abr
  
  f4 des8 f |
  as4 as8 as |
  g4 c,8 es |
  g g r g |
  f4 f8 es | \abr
  
  des4 des8 c |
  b4 c8 d |
  c c <b f' g>4\fermata |
  \key c \major a'4 f8 e |
  f4 d8 c | \abr
  
  b4 c8 d |
  f e e g |
  a4 f8 e |
  f4 d8 c |
  b4 d8 f | \abr
  
  a g g g |
  \time 4/4 \tuplet 3/2 4 { a a a b b b c c c d d gis, } \abr
  \time 3/4 \tuplet 3/2 4 { c b a g? f e d e f } |
  \time 2/4 g f r g | \abr
  e d c4\fermata |
  \time 3/4 \tuplet 3/2 4 {f8 e d g f e a a b  | \abr
  c b a g f e d c b } |
  \time 2/4 c c s4 \bar "|."  
}

rtwo = \relative c' {
  s8
  \repeat volta 2 {
    r8 <c f>4 q8 |
    r8 q4 q8 |
    r8 c4 c8 |
    r8 <a cis>4 q8 
  }
  \alternative {
    {
      r8 d4 d8 |
      s2 |
      r8 c4 c8 |
      r8 cis4 cis8 |
    }
    {
      r8 <c f>4 c8 |
      s2
    }
  }
  s2 s2 |
  r8 <as c>4 q8 |
  r8 q4 q8 |
  s2 |
  
  s2 |
  r8 q4 q8 |
  r8 q4 q8 |
  s2 |
  s2 |
  
  s2*8 |
  r8 q4 q8 |
  r8 q4 q8 |
  s2*2 |
  
  r8 q4 q8 |
  r8 q4 q8 |
  s2*4 |
  
  s2*6 |
  
  s2*5 |
  
  s2*3 |
  s2*2 |
  
  s2*5 |
  
  s2 |
  r4 gis' e f |
  
  e c c |
  c8 b r b |
  
  b a g4 |
  c c c |
  
  e c \tuplet 3/2 { a4 b8 } |
  c c \oneVoice r4 
}

lone = \relative c {
  \oneVoice r8
  \voiceOne
  \repeat volta 2 {
    r8 <f a>4 q8 |
    r8 <f as>4 q8 |
    r8 g4 g8 |
    r8 g4 g8 |
  } \alternative {
    {
      r8 <f as>4 q8 |
      r8 <d f>4 q8 |
      r8 <e g>4 q8 |
      r8 q4 q8
    }
    {
      r8 as4 as8 |
      r8 <f as>4 <d f g>8
    }
  }
  
  r8 <es g>4 q8 |
  r8 q4 q8 |
  s2 |
  s2 |
  r8 <d f>4 q8 |
  
  r8 g4 <g c>8 |
  s2 |
  s2 |
  r8 <f as>4 q8 |
  r8 <g bes>4 q8 |
  
  r8 <f g bes>4 q8 |
  r8 q4 q8 |
  r8 <g bes>4 q8 |
  r8 <as c>4 q8 |
  r8 <f as>4 q8 |
  r8 <des f>4 q8 |
  
  r8 <d f>4 q8 |
  r8 <es g>4 q8 |
  s2 |
  s2 |
  r8 <d f>4 q8 |
  r8 g4 <g c>8 |
  
  s2 |
  s2 |
  r8 <f as>4 q8 |
  r8 <g bes>4 q8 |
  r8 <f g bes>4 q8 |
  r8 q4 q8 |
  
  r8 <g bes>4 q8 |
  r8 <as c>4 q8 |
  r8 <f as bes>4 q8 |
  r8 q4 q8 |
  r8 q4 q8 |
  r8 <g bes>4 q8 |
  
  r8 <f as>4 q8 |
  r8 q4 q8 |
  r8 <es g>4 q8 |
  r8 q8 r4 |
  r8 <f as>4 q8 |
  
  r8 q4 q8 |
  r8 <d f>4 q8 |
  r8 <es g>8 s4 |
  \key c \major r8 <a c>4 q8 |
  r8 q4 q8 |
  
  r8 <d, f>4 q8 |
  r8 <e g>4 q8 |
  r8 <a c>4 q8 |
  r8 q4 q8 |
  r8 <f g>4 q8 |
  
  r8 <e g>4 q8 |
  s1 |
  s2. |
  s2 |
  
  g8 f e4\fermata |
  s2. |
  s2. |
  s2  
}

ltwo = \relative c {
  s8
  \repeat volta 2 {
    d2 |
    d |
    e |
    a, |
  } \alternative {
    {
      d |
      g,|
      c |
      a |
    }
    {
      d |
      d4 g, }
  }
  c g |
  c g |
  d'2 |
  f |
  g, |
  
  c4 es |
  d2 |
  f |
  bes, |
  es |
  
  des2 |
  des |
  c |
  f |
  des |
  as |
  
  g |
  c |
  d |
  f |
  g, |
  c4 es |
  
  d2 |
  f |
  bes, |
  es |
  des |
  des |
  
  c |
  f |
  d? |
  bes |
  bes |
  es |
  
  des |
  des |
  c |
  c4 r |
  des2~ |
  
  des2 |
  g, |
  c4 <g d' f>\fermata
  \key c \major f'2 |
  d |
  
  g, |
  c |
  f |
  d |
  g, |
  
  c2 |
  <f c'>4 <e d'> <a c> <gis b> |
  
  <a, a'> <d a'> <f a> |
  <d f> r8 q8 |
  
  c2\fermata |
  <d a'>4 <e g> <f a> |
  <f a> <d a'> \tuplet 3/2 { f <f g,>8 } |
  <c e>8 q \oneVoice r4
}

right = \relative c'' {
  \global
  % Вписывайте музыку сюда
  << \rone \\ \rtwo >>
  
}

left = \relative c' {
  \global
  % Вписывайте музыку сюда
  << \lone \\ \ltwo >>
  
}

leadSheetPart = <<
  \new Staff \with {
    midiInstrument = "choir aahs"
  } { \melody }
  \addlyrics { \verse }
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "P-no"
  \accidentalStyle piano
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\bookpart {
  \header { piece = "Хор" }
  \score { 
    \transpose c d <<
      \leadSheetPart
    >>
    \layout { 
    }
  }
}

\bookpart {
  \header { piece = "Piano" }
  \score {
    \transpose c d <<
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
    \transpose c d <<
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

