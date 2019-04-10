\version "2.18.2"


% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Про удава (с ошибками)"
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
  \tempo "Размеренно" 4=88
  \secondbar
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \partial 4

}

melody = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  % Вписывайте музыку сюда
   r4 |
   R2*7 |
   r4 r8 es16\mf d |
   c8 d es f | \abr
   
   g d r f16 es |
   d8 es f d |
   g4 r8 f16 g |
   as8 f e f | \abr
   
   fis g r d16 es |
   as8[( g f]) es |
   d4 g-. |
   c,-. r |
   r g'8\mp g | \abr
   
   bes a as g |
   fis4 g8 g |
   as as as4 |
   r c,8 c |
   as' g f es | \abr
   d4 g8 g |
   c, c c4 |
   r r8 es16 d |
   c8 d es f | \abr
   
   g d r f16 es |
   d8 es f d |
   g4 r8 f16 g |
   as8 f e f |
   fis g r d16 es | \abr
   
   as8 g f es |
   d4 g8\mp g |
   bes a as g |
   fis4 g8 g | \abr
   
   as as as4~ |
   as c,8\p c |
   as' g f es |
   d4 g8 g |
   c, c c4 | \abr
   
   r r8 es16\mf d |
   c8 d es f |
   g d r f16 es |
   d8 es f d | \abr
   
   g4 r8 fis16 g |
   as8 f e f |
   fis g d es |
   as g f es | \abr
   
   d4 g8\f^\markup\italic"язвительно" g |
   bes as g f |
   e4 g8 g |
   as as as4~ |
   as c,8 c | \abr
   
   as' g f es |
   d4 g8 g |
   c, c c4 |
   r4 g'8\pp^\markup\italic"хор:" g |
   bes as g f | \abr
   
   e4 g8 g |
   as as as4~ |
   as c,8 c |
   as' g f es |
   d4 g8 g | \abr
   
   c, c c4 |
   r r8 es |
   d4^\markup\bold"затихая" g8 g |
   c,\> c c \breathe es |
   d4 g8 g | \abr
   
   c, c c \breathe es |
   d2 |
   g4 g\! |
   c,8 c c4 |
   
   \override NoteHead.style = #'cross
   r8 c c c |
   c4 r \bar "|."
}

verse = \lyricmode {
  % Набирайте слова здесь
  В_жар -- ких джунг -- лях А -- ма -- зон -- ки
  в_ок -- ру -- жень -- и ди -- ких трав
  жил бы тол -- стый (и -- ли тон -- кий?),
  в_об -- щем, вот__ та -- кой У -- дав.
  Меж -- ду трав сколь -- зил У -- дав у -- ди -- ви -- тель -- но,
  но и -- мел у -- жас -- ный нрав У -- ДА -- Ви -- тель -- ный.
  
  В_жар -- ких джунг -- лях А -- ма -- зон -- ки
  кто силь -- не -- е, тот и прав.
  Об -- хо -- ди -- те их сто -- рон -- кой,
  про -- жи -- ва -- ет там У -- дав.
  Про -- жи -- ва -- ет, и с_боль -- шим У -- ДА -- Воль -- стви -- ем,
  до -- бы -- ва -- ет он в_глу -- ши про -- до -- вольст -- ви -- е.
  
  В_жар -- ких джунг -- лях А -- ма -- зон -- ки
  у -- хва -- тил ме -- ня У -- дав
  и ска -- зал на у -- хо звон -- ко, креп -- ко к_де -- ре -- ву при -- жав:
  
  «Про -- чи -- тав вот э -- то сти -- хот -- во -- ре -- ни -- е,
  вы -- ра -- жа -- ю вам У -- ДАВ -- лет -- во -- ре -- ни -- е».
  
  Про -- чи -- тав вот э -- то сти -- хо -- тво -- ре -- ни -- е,
  У -- дав вы -- ра -- зил У -- ДАВ -- лет -- во -- ре -- ни -- е.
  
  У -- ДАВ -- лет -- во -- ре -- ни -- е.
  У -- ДАВ -- лет -- во -- ре -- ни -- е.
  У -- ДАВ -- лет -- во -- ре -- ни -- е.
  И от -- пус -- тил.
  
}

rone = \relative c'' {
  \oneVoice
  g8 g |
  bes a as g |
  fis4 g8 g |
  as as as4~ |
  as c,8 c |
  as' g f es | \abr
  
  d4 g8 g |
  c, <es g>16 <d fis> <es g>8 q16 <d fis> |
  <es g>8 q16 <d fis> <es g>8 es16 d |
  c8 d es f | \abr
  
  g d r f16 es |
  d8 es f d |
  g4 r8 f16 g |
  as8 f e f | \abr
  
  fis g r d16 es |
  as8 g f e |
  d4 g |
  c, r |
  r g'8 g | \abr
  
  bes a as g |
  fis4 g8 g |
  as as as4 |
  r c,8 c |
  as'8 g f es | \abr
  
  d4 g8 g |
  c, <es g>16 <d fis> <es g>8 q16 <d fis> |
  <es g>8 q16 <d fis> <es g>8 es16 d |
  c8 d es f | \abr
  
  g d r f16 es |
  d8 es f d |
  g4 r8 f16 g |
  as8 f e f |
  fis g r d16 es | \abr
  
  as8 g f es |
  d4 g8 g |
  bes a as g |
  fis4 g8 g | \abr
  
  as as as4~ |
  as c,8 c |
  as' g f es |
  d4 g8 g |
  c, c c4 | \abr
  
  r r8 es16 d |
  c8 d es f |
  g d r f16 es |
  d8 es f d | \abr
  
  g4 r8 fis16 g |
  as8 f e f |
  fis g d es |
  as g f es | \abr
  
  d4 g8 g |
  bes as g f |
  e4 g8 g |
  as as as4~ |
  as c,8 c | \abr
  
  as'8 g f es |
  d4 g8 g |
  c, c c4 |
  r g'8 g |
  bes as g f | \abr
  
  e4 g8 g |
  as as as4~ |
  as c,8 c |
  as' g f es |
  d4 g8 g | \abr
  
  c,8 c c4 |
  r r8 es |
  d4 g8 g |
  c, c c es |
  d4 g8 g | \abr
  
  c, c c es |
  d2 |
  g4 g |
  c,8 c c4 |
  R2*2 \bar "|."
}

rtwo = \relative c' {
 
}

lone = \relative c {
  \oneVoice r4 |
  \voiceOne r8 <fis g> r q |
  r q r q |
  r <as c> r q |
  r q r q |
  r <f as> r q | \abr
  
  r <f g> r q |
  r <fis g> r q |
  r q r q |
  r q r q | \abr
  
  r <f g> r q |
  r q r q |
  r <g bes> r <bes c> |
  r <as c> r q | \abr
  
  r <g c> r q |
  r <f as> r q |
  r <f g> r q |
  r <fis g> r q |
  r q r q | \abr
  
  r q r q |
  r q r q |
  r <as c> r q |
  r q r q |
  r <f as> r q | \abr
  
  r <f g> r q |
  r <fis g> r q |
  r q r q |
  r q r q | \abr
  
  r <f g> r q |
  r q r q |
  r <g bes> r <bes c> |
  r <as c> r q |
  r <g c> r q | \abr
  
  r <f as> r q |
  r <f g> r q |
  r <g bes> r q |
  r q r q | \abr
  
  r <as c> r q |
  r q r q |
  r q r q |
  r <f g> r q |
  r <fis g> r q | \abr
  
  r q r q |
  r q r q |
  r <f g> r q |
  r q r q | \abr
  
  r <g bes> r <bes c> |
  r <as c> r q |
  r <g c> r q |
  r <f as> r q | \abr
  
  r <f g> r q |
  r <g bes> r q |
  r q r q |
  r <as c> r q |
  r q r q | \abr
  
  r q r q |
  r <f g> r q |
  r <fis g> r q |
  r q r q |
  r <g bes> r q | \abr
  
  r q r q |
  r <as c> r q |
  r q r q |
  r q r q |
  r <f g> r q | \abr
  
  r <fis g> r q |
  r q r q |
  r <f g> r q |
  r <fis g> r q |
  r <f g> r q | \abr
  
  r <fis g> r q |
  r <f g> r q |
  r q r q |
  r <fis g> q4 |
  \oneVoice R2*2
 
}

ltwo = \relative c {
  s4 |
  des4 g, |
  c2 |
  f4 e |
  es d |
  des as | \abr
  
  d g, |
  c g |
  c g |
  c g | \abr
  
  d' g, |
  d'2 |
  es4 e |
  f2 | \abr
  
  es2 |
  des4 as |
  d g, |
  c g |
  c g | \abr
  
  des' g, |
  c g |
  f' e |
  es d |
  des as | \abr
  
  d g, |
  c g |
  c g |
  c g | \abr
  
  d' g, |
  d'2 |
  es4 e |
  f2 |
  es | \abr
  
  des4 as |
  d2 |
  des |
  c | \abr
  
  f4 e |
  es d |
  des as |
  d g, |
  c g | \abr
  
  c g |
  c g |
  d' g, |
  d'2 | \abr
  
  es4 e |
  f2 |
  es |
  des4 as | \abr
  
  d g, |
  des'2 |
  c |
  f4 e |
  es d | \abr
  
  des as |
  d g, |
  c g |
  c g |
  des'2 | \abr
  
  c |
  f4 e |
  es d |
  des2 |
  d4 g, | \abr
  
  c g |
  c g |
  d' g, |
  c g |
  d' g, | \abr
  
  c g |
  d' g, |
  d' g, |
  c c |
  s2*2
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
  \accidentalStyle piano-cautionary
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
    \tempo 4=88
  }
}

