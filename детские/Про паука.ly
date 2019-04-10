\version "2.18.2"


% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Про паука"
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
  \key es \major
  \numericTimeSignature
  \time 2/4
  \tempo "Равномерно, с движением" 4=60
  \secondbar
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1

}

melody = \relative c'' {
  \global
  \autoBeamOff
  \dynamicUp
  % Вписывайте музыку сюда
  R2*5
  bes8.\mf as16 g as g f |
  es2 |
  
  es8. f16 es d es g |
  bes2 |
  f8. e16 f e f as |
  
  c8 c~ c4 |
  r8 bes16 c bes c bes c |
  bes2 |
  
  bes8. as16 g as g f |
  es2 |
  c'8. bes16 as bes as g |
  
  f2~ |
  f8 f16 e f e f as |
  c8 as r4 |
  
  r8 bes16 c bes as g f |
  es4 g8\f as |
  bes g as f |
  g es as bes |
  
  c bes as g |
  as f f g |
  as g f as |
  
  c as r as16 as |
  bes8 c bes as |
  g f r g16 as |
  bes8 g as f |
  
  g es as bes |
  c bes as g |
  as f r f16 g |
  
  as8 g f as |
  c c r c16 c |
  bes8 g as f |
  es es r4 |
  
  bes'8.\mp as16 g as g f |
  es4. es16 d |
  es8 d es g |
  bes4. f16 e |
  
  f8 e f as |
  c c~ c r |
  r bes16 c bes c bes c |
  
  bes2 |
  es,8. d16 es d es g |
  bes2 |
  
  f8. e16 f e f as |
  c4. as16 bes |
  c8 c d d |
  
  es bes bes c |
  bes as g f |
  es4 r8 gis16 a \bar "||" \key e \major |
  
  b8 gis a fis |
  gis e a b |
  cis a b cis |
  a fis r fis16 gis |
  
  a8 fis r fis16 a |
  cis8 cis r cis16 cis |
  b8 cis b a |
  gis fis gis\mf a |
  
  b gis a fis |
  gis e \tempo "медленней" a\p b |
  cis a b gis |
  a fis r \tempo "ещё медленней и тише" fis16 gis |
  
  a8 gis fis a |
  cis a r4\fermata |
  fis8.^\markup\italic{совсем тихо (по секрету)} e16 dis dis e fis |
  e8 e r4 \bar "|."
  
}

verse = \lyricmode {
  % Набирайте слова здесь
  Во -- семь лап у Па -- у -- ка:
  Две_— чтоб по -- че -- сать бо -- ка,
  две_— чтоб мог сво -- им зна -- ко -- мым
  по -- ма -- хать из -- да -- ле -- ка,
  две_— чтоб ла -- пы жать дру -- зьям,
  две_— за -- чем, не зна -- ет сам.
  Не -- ту лап, чтоб па -- у -- ти -- ну
  по -- раз -- ве -- сить по уг -- лам!
  
  Вы по -- верь -- те, э -- то прав -- да,
  э -- то прав -- да, а не слу -- хи:
  пра -- вой_—  ле -- вой, ле -- вой_— пра -- вой
  по квар -- ти -- ре хо -- дят му -- хи.
  Так о -- бид -- но, так о -- бид -- но_—
  вид в_квар -- ти -- ре не -- кра -- си -- вый.
  О -- чень жаль, но, о -- че -- вид -- но,
  Па -- у -- чок у нас ле -- ни -- вый.
  
  Мы пой -- ма -- ли Па -- у -- ка,
  по -- ру -- га -- ли, но слег -- ка.
  Мы ска -- за -- ли: «Что за де -- ло __
  ще -- ко -- тать весь день бо -- ка?
  Ты ле -- нить -- ся по -- за -- будь,
  ты сво -- ю при -- пом -- ни суть_— 
  при -- ни -- май -- ся за ра -- бо -- ту
  и спле -- ти че -- го -- ни -- будь».
  
  По -- лу -- чи -- лось, по -- лу -- чи -- лось!
  Луч -- ше всех нам в_це -- лом ми -- ре!
  По -- я -- ви -- лась, за -- клу -- би -- лась
  па -- у -- ти -- на по квар -- ти -- ре.
  Мух не ста -- ло по -- смот -- ри -- те!
  Что_ж мы хо -- дим с_кис -- лой ми -- ной?
  Вы нам вот что рас -- ска -- жи -- те:
  как бо -- роть -- ся с_па -- у -- ти -- ной?..
  
}

rone = \relative c' {
  es16\mp f es f g as g f |
  es f es f g f g as |
  bes as bes c d bes c d |
  es es, es f g as g f | \abr
  
  es f es f g as g f |
  bes8. as16 g8 f |
  g2 | \abr
  
  es8. f16 es8 g |
  bes2 |
  f8. e16 f8 as | \abr
  
  c2 |
  bes8 <as bes>16 c <as bes> c <as bes> c |
  <as bes>2 | \abr
  
  bes4 as |
  g2 |
  c4 bes | \abr
  
  as2~ |
  as8 g16 e f e f as |
  <c f,>2 | \abr
  
  \oneVoice r8 bes16 c bes as g f |
  es4 <es g>8 <f as> |
  <es g bes>4 <d as' bes> |
  <es g bes> <f as>8 <g bes> | \abr
  
  <f as c>4 <e bes' c> |
  <f as c> f8 g |
  <f as>4 <f bes> | \abr
  
  <es as c> <es as ces> |
  <d as' bes>2~ |
  q4 <es as bes>8 <f bes> |
  \voiceOne bes4 as | \abr
  
  g <f as>8 <g bes> |
  <as c>4 <e bes' c> |
  <f as c> <es f>8 <es g> | \abr
  
  <f as>4 f8 <f as> |
  <es c'>4. q8 |
  <es g bes> <g es bes> <as d, bes> f |
  es4~ es8 r | \abr
  
  bes'8. as16 g8 f |
  g4. es16 d |
  es8 d es g |
  <g bes>4. f16 e | \abr
  
  f4 f8 as |
  <as c>2 |
  bes8 <as bes>16 c <as bes> c <as bes> c | \abr
  
  <as bes>2 |
  es8. d16 es8 g~ |
  <g bes>2 | \abr
  
  f8. e16 f8 <f as>( |
  <as c>2) |
  c4 d | \abr
  es8 bes bes c |
  bes as g f |
  \once \slurDashed es4( dis) \bar "||" \abr
  \key e \major
  
  \oneVoice b'8 gis a fis |
  gis e a b |
  cis a b cis |
  a fis r fis16 gis | \abr
  
  a8 fis r fis16 a |
  cis8 cis r cis16 cis |
  b8 cis b a |
  gis fis gis a | \abr
  
  b gis a fis |
  gis e \tempo "медленней" a b |
  cis a b gis |
  a fis~ fis \tempo "ещё медленней и тише" r | \abr
  
  \voiceOne a gis fis a |
  cis4 \oneVoice  r\fermata |
  fis,2 |
  e8 r r4 | \bar "|."
}

rtwo = \relative c' {
  s2*2
  es4 d |
  s2 |
  
  s2*3
  s
  
  r8 f e es |
  d2~ |
  d
  
  g4 g8 f |
  f es~ es4 |
  g4 as8 g |
  
  g f~ f4~ |
  f8 s s4
  s2
  
  s2*4
  s2*3
  
  s
  as8 g g f
  
  f es s4 |
  g8 f s4
  s2
  
  s2*4
  s2*4
  
  s2
  r8 f e es |
  d2~ |
  
  d |
  s2 |
  r8 f d e |
  
  s2
  r8 f e f |
  es es f f |
  g g es es |
  d2 |
  bes4 a |
  
  s2*12
  s4 fis'~ |
  fis s |
  e dis |
  e8 s s4
 
}

lone = \relative c' {
  g16 as g as bes c bes as |
  g as g as bes as bes c |
  g f g as as4 |
  g8 g16 as bes c bes as |
  
  g as g as bes c bes as |
  es g bes g d as' bes as |
  es g bes g d g bes g |
  
  des g bes g c, g' bes g |
  des g bes g c, g' bes g |
  f as c as e as c as |
  
  es as c as f as c as |
  d, as' bes as bes as bes as |
  bes as bes as bes as bes as |
  
  es g bes g d as' bes as |
  es g bes g bes g bes g |
  e bes' c bes c bes c bes |
  
  f as c as e as c as |
  es as c as d, as' c as |
  f as c as es as c as |
  
  d, as' bes as bes, as' bes as |
  g8 r es16 bes' f bes |
  es, g bes g d as' bes as |
  es g bes g f as e c' |
  
  f, as c as e bes' c bes |
  f as c as es as c as |
  d, as' bes as d, as' bes as |
  
  c, es as c ces, es as ces |
  bes, d as' bes c, es as bes |
  es, f as bes es, bes' f bes |
  es, g bes g d as' bes as |
  
  es g bes g f as e g |
  f as c as e bes' c bes |
  f as c as es as c as |
  
  d, as' bes as c, f as c |
  as, es' f c' a, es' f c' |
  bes, es g bes bes, f' as bes |
  es, g bes g es8 r |
  
  es16 g bes g d as' bes as |
  es g bes g d g bes g |
  es g bes g d g bes g |
  des g bes g c, g' bes g |
  
  f as c as es as c as |
  d, as' c as es as c as |
  d, as' bes as bes as bes as |
  
  bes as bes as bes as bes as |
  es g bes g d g bes g |
  des g bes g c, g' bes g |
  
  f as c as e as c as |
  es as c as d, as' c as |
  bes, f' as es bes f' as bes |
  es, g bes  es c, es f as |
  bes, d f as bes, d f as |
  g4 fis \key e \major |
  
  e16 b' gis b dis, b' a b |
  e, b' gis b fis b gis b |
  a cis b cis gis cis b cis |
  fis, a cis a e a cis a |
  
  dis, a' cis a e a cis a |
  dis, a' cis a e a cis a |
  dis, b' a b fis b a b |
  dis, b' a b e, b' a b |
  
  e, b' gis b dis, b' a b |
  e, b' gis b fis b gis b |
  a cis b cis eis, cis' b cis |
  fis, cis' a cis fis,8 r |
  
  cis'2~ |
  cis4 \oneVoice r\fermata |
  \voiceOne a2 |
  gis8 \oneVoice r r4
}

ltwo = \relative c {
  es4 d |
  es d |
  es bes |
  es2~ |
  
  es |
  es4 d |
  es d |
  
  des c|
  des c |
  f e |
  
  es2 |
  d~ |
  d8 bes c d |
  
  es4 d |
  es2 |
  e |
  
  f4 e |
  es d |
  c es |
  
  d bes |
  es8 bes c d |
  es4 d |
  es f8 e |
  
  f4 e |
  f es |
  d d |
  
  c ces |
  bes c |
  bes c8 d |
  es4 d |
  
  es f8 e |
  f4 e |
  f es |
  
  d c |
  as a |
  bes bes |
  es es8 r |
  
  es4 d |
  es d |
  es d |
  des c |
  
  f es |
  d es |
  d2~ |
  
  d8 bes c d |
  es4 d |
  des c |
  
  f e |
  es d |
  bes bes |
  
  es c |
  bes bes |
  es b |
  
  e dis e fis8 gis |
  a4 gis |
  fis e |
  
  dis e |
  dis e |
  dis2 |
  dis4 e8 fis |
  
  e4 dis |
  e fis8 gis |
  a4 eis |
  fis4~ fis8 r |
  
  fis4 e |
  dis s |
  b2 |
  e8 s s4
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
    \tempo 4=60
  }
}

