\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Bratříčku, holečku"
  subtitle = " "
%  composer = "М. Матвеев"
%  poet = "Слова Е. Руженцева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key bes \major
  \time 6/8
  \numericTimeSignature
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set Score.markFormatter = #format-mark-box-numbers
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


sopvoice = \relative c'' {
  \global
  \dynamicUp
  \secondbar  

   bes8 d f, r4 r8 |
   a c f, r4 r8 |
   bes a g f es d |
   es f g f4. |
   bes4 c8 d4 es8 |
   f8 d16[ bes] c16[ a] bes4. |
   
   d8. es16 f8 f es d |
   es f g es4. |
   c8. d16 es8 es d c |
   d8 es f] d4. |
   
   
   bes8 bes16[ a] bes8 g4. |
   c8 c16[ bes] c8 a4. |
   bes4 c8 d4 es8 |
   f8 d16[ bes] c[ a] bes4.
  
  
  
 \bar "||"
}

altvoice = \relative c'' {
  \global
  \dynamicDown
  
  r4 r8 bes d f, |
  r4 r8 a c f, |
  
  s2.*4
  
 bes8. c16 d8 d c bes |
 c d es c4. |
 a8. bes16  c8 c bes a |
 bes c d bes4. |
 
 r4 r8 g8 g16[ f] g8 |
 es4. f8 f16[ es] f8 |
 d4 f8 bes4 c8 |
 d bes f bes4.
  
  
  \bar "||"
}



lyricscore = \lyricmode {
  \set stanza = "1. " Брат -- ржи -- чку! ɦо -- ле -- чку! 
  По -- сле -- хни цо то -- бье ни -- ни рже -- кну
  Йен йе -- стли сэ не -- у -- лэ -- кну
  
  Ста -- ла сэ но -- ви -- на о пул -- но -- ци
  Ан -- де -- лэ зпи -- ва -- йи к_А -- по -- што -- лци
  Сла -- ва, сла -- ва! Бо -- ɦу хва -- ла
  Бу -- диж за то Бо -- ɦу хва -- ла
  
%  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!»
%  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!» Бо -- гу!»
}

lyricscoreII  = \lyricmode {
  \set stanza = "2. " По -- слэ -- хни
  Но -- ви -- ну
  Цо йест тэн ан -- дел -- ски зпьев зна -- мэ -- нал
  А -- би с_ни сэ Бо -- ɦу нэ -- бал
  
  Тэг -- ды сэ на -- ро -- дил наш Спа -- си -- тэл
  Да -- вно йиж у -- мржэ -- ни ви -- ку -- пи -- тэл
  Пой -- дьмэ к_не -- му!
  Кла -- ньмэ сэ му
  В_мо -- лу бу -- дэм звпи -- ват е -- му.
  
}



lyricscorea = \lyricmode {
  \set stanza = "1. " 
  Но но но
  Но но но
  
  Ста -- ла сэ но -- ви -- на о пул -- но -- ци
  Ан -- де -- лэ зпи -- ва -- йи к_А -- по -- што -- лци
  
  Сла -- ва, сла -- ва! Бо -- ɦу хва -- ла
  
}

lyricscoreaII = \lyricmode {
  \set stanza = "2. " 
  
  Цо цо цо
  Но но но
  
  Тэг -- ды сэ на -- ро -- дил наш Спа -- си -- тэл
  Да -- вно йиж у -- мржэ -- ни ви -- ку -- пи -- тэл
  
  Пой -- дьмэ к_не -- му!
  Кла -- ньтэ сэ му
}

choirscore = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Соло"
        shortInstrumentName = "С"
      } <<
        \new Voice = "soprano" { \oneVoice \autoBeamOff \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
    \new Lyrics \lyricsto "soprano" { \lyricscoreII }
 %     \new Lyrics \lyricsto "soprano" { \lyricscoreIII }
      
     \new Staff = "downlstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Х"
      } <<
        \new Voice  = "alto" { \oneVoice \autoBeamOff \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscorea }
      \new Lyrics \lyricsto "alto" { \lyricscoreaII }

      
      % or: \new Lyricsm \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
    >>
    
    
flnotes = \relative c''' {
  bes4-- f8-. d4.-- |
  a'8-. c-. es,~ es4 r8 |
  bes'8-. f-. g-. f-. es-. d-. |
  es-. f-. g-. f4--( d16 c) \abr
  
  bes4 c8 d4 es8 |
  f d16 bes c a bes4 f'16 d |
  bes8-. bes-. d-. bes-. bes-. f'-. |
  bes,-. bes-. a-. bes-. bes'-. bes-. |
  \time 3/8 bes4.-- \abr
  
  %page 3
  \mark \default
  \time 6/8
  bes8-. d-. a-. r4 r8 |
  a4 f8 r4 r8 |
  bes8 f g f es d |
  es f g f4 d16 c | \abr
  
  % page 4
  bes4 c8 d4 es8 |
  f8 d16 bes c a bes4 r8 |
  d8.( es16) f8-. f-- es-. d-. |
  es-. f-. g-. es4.-- | \abr
  
  %page 5
  c8.--( d16) es8-. es-- d-. c-. |
  d-- es-. f-. d4-- r8 |
  bes8--\mf bes16 a bes8 g4. |
  g4.\mp f | \abr
  
  % page 6
  bes4 c8 d4 es8 |
  f d16 bes c a bes4 r8 |
  r4 r8 bes8.-- a16 bes8 |
  g4. a8-- a16 g a8 |
  
  % page 7
  f4. g |
  r r |
  bes8-. d-. f,-. r4 r8 |
  c'4\p r8 f4 r8 |
  
  % page 8
  bes,8-. a-. g-. f-. es-. d-. |
  es-. f-. g-. f4. |
  bes4 c8 d4 es8 |
  f bes, a bes4 r8 |
  
  % page 9
  bes4. bes |
  a f8 g a |
  f4. f8 g a |
  f4. d16( f g a bes c |
  
  % page 10
  d8) r4 g,8-- g16( f g8) |
  es4. f8-- f16( es f8) |
  d4 f8 bes4 c8 |
  d bes a bes16( c d es f bes |
  
  % page 11
  f4.) f, |
  f'4 a8-. bes4 r8
    
}

flpart = {
  \global
  \flnotes
}

flscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "Fl"
  midiInstrument = "flute"
} {
  \flpart
}

vinotes = \relative c'' {
  
  bes8-. d-. f,-. r4 r8 |
  c'4-- r8 a-. c-. f,-. |
  d'4 es8 bes4.~ |
  bes~ bes4 a8

  % page 2
  g4 a8 bes4 a8 |
  d bes a bes bes bes |
  bes-. bes-. f-. bes-. bes-. a-. |
  bes-. bes-. a-. bes-. d-. d-. |
  \time 3/8 d4.--
  
   % page 3
  \time 6/8 f,4 f8 bes-. d-. f,-. |
  f4 f8 a-. c-. f,-. |
  bes4.~ bes~ |
  bes~ bes4 a8 |
  
  % page 4
  g4 a8 bes4 bes8 |
  bes f f f4 r8 |
  f4. bes |
  a a |
  
  % page 5
  f f |
  f f8-- es16-> c-> d8-> |
  d4. bes |
  c'8--\mf c16 bes c8 a4. |
  
  % page 6
  f4 a8 bes4 c8 |
  bes bes f d16 f g a bes c |
  d8. -- c16 d8 bes4 r8 |
  es8.-- d16 es8 c4 r8 |
  
  % page 7
  d8. es16 f8 g a bes |
  d,4--\p bes8-. c4-- a8-. |
  bes4. r4 r8 |
  a8-. c-. f,-. r4 r8 |
  
  % page 8
  bes4\pp bes16 bes bes4 bes16 bes |
  bes4. f8--\mf( es16 c d8-.) |
  g4 f8 bes4 bes8 |
  bes bes f f4 r8 |
  
  % page 9
  d'8. es16 f8 f es d |
  es f g es4. |
  c8. d16 es8 es d c |
  d es f d4 r8 |
  
  % page 10
  bes8-- bes16( a bes8) g4. |
  c8-- c16( bes c8) a4. |
  bes4 c8 d4 es8 |
  f8( d16 bes c a) bes4. |
  
  % page 11
  a4. bes16( c d es f bes |
  f4) es8-. d4 r8
}

vipart = {
  \global
  \vinotes
}

viscore = \new Staff \with {
  instrumentName = "V1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} {
  \vipart
}

viinotes = \relative c' {
  d4. f |
  es f4 r8 |
  f4 es8 f4. |
  es8 f g f4.
  
  % page 2
  d4 f8 f4 f8 |
  d16 es f8 f d16 f d f d f |
  d f d f d f d f d f es f |
  d8-. f-. f-. f-. bes-. bes-.
  \time 3/8 bes4.--
  
  %page 3
  \time 6/8 d,4 d8 d4 r8 |
  a'8-. c-. f,-. f4 f8 |
  f4 g8 f es d |
  g f es f4 f8 |
  
  % page 4
  d4 f8 f4. |
  f4 es8 d4 r8 |
  bes8.\f( c16) d8-. d-- c-. bes-. |
  c-. d-. es-. c4.--
  
  %page 5
  a8.--( bes16) c8-. c-- bes-. a-. |
  bes-- c-. d-. bes4-- r8 |
  g'4.\p g8--\mf g16 f g8 |
  es4.\p f8--\mf f16 es f8 |
  
  % page 6
  d4 f8 bes4 c8 |
  d g, f f4 r8 |
  f16 g f8 f bes16 c bes a g f |
  es4. f |
  
  % page 7
  bes8. c16 d8 es f g |
  bes,4--\p g8-. g4-- f8-. |
  f4. bes8-. d-. f,-. |
  r4 r8 a-. c-. f,-. |
  
  % page 8
  d4 es8 f es d |
  es f g f4. |
  d4 f8 f4 es8 |
  f f es d4 r8 |
  
  % page 9
  bes'8. c16 d8 d c bes |
  c d es c16( d c bes a g |
  f8.) bes16 c8 c bes a |
  bes c d bes4 r8 |
  
  % page 10
  g4 g8 d4. |
  g4 g8 f4 f8 |
  f4. f |
  bes8 g es d4.
  
  % page 11
  f'16( g f es d c bes4.) |
  a4 c8-. bes4 r8
  
}

viipart = {
  \global
  \viinotes
}

viiscore = \new Staff \with {
  instrumentName = "V2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} {
  \viipart
}

viiinotes = \relative c {
  f8--( g-.) a-. bes4. |
  r8 f-. g-. a4. |
  bes4.~ bes~ |
  bes~ bes4 a8 |
  
  % page 2
  g4 f8 bes4 c8 |
  bes8 bes a bes4. |
  bes  bes |
  f'8-. f-. es-. d-. f-. f-. |
  \time 3/8 f4.--
  
  % page 3
  \time 6/8 f,8 g-. a-. bes4 r8 |
  r f-. g-. a4. |
  bes4.~ bes~ |
  bes~ bes4 a8 |
  
  %page 4
  g4 f8 bes4 c8|
  d8 bes a bes4 r8 |
  bes4 r8 d8 r4 |
  f4. f |
  
  % page 5
  c4. f,8-. g-. a-. |
  bes-.\> a-. g-. f8\p r4 |
  g4 r8 bes4 r8 |
  c4 r8 c4 r8 |
  
  % page 6
  d4 f8 f4 g8 |
  f8 g f f4 r8 |
  d8-. es-. f-. g4. |
  g4 g8 f8-. g-. a-. |
  
  % page 7
  bes4. bes, |
  f'4--\p d8-. c4-. c8-. |
  d4.~ d4 r8 |
  r f,8-. g-. a4. |
  
  % page 8
  bes4.~ bes~ |
  bes bes4 a8 |
  g4 c8 s4 es8 |
  d4 c8 bes8.( c16 d es |
  
  % page 9
  f4.) f |
  f c |
  a a |
  bes r16 d,( es f g a |
  
  % page 10
  bes8) d4 d4. |
  c4 c8 c4 c8 |
  bes4 bes8 bes4. |
  bes4 f'8-. bes a-. g-. |
  
  %page 11
  a-. es-. c-. d4. |
  f4 f8-. f4 r8
  
}

viiipart = {
  \global
  \viiinotes
}

viiiscore = \new Staff \with {
  instrumentName = "Alt"
  shortInstrumentName = "A"
  midiInstrument = "viola"
} { \clef alto \viiipart
}

vcnotes = \relative c {
  bes4.--~ bes4 r8 |
  f4.--~ f4 r8 |
  bes4-- c8 d-. es-. f-. |
  g-. f-. es d4-- f8
  
   % page 2
   g4 f8 bes,4 c8 |
   d8 f16 bes f c' bes4. |
   bes bes |
   bes8-. bes-. f-. bes-. bes-. bes-. |
   \time 3/8 bes4.
   
   % page 3
   \time 6/8 bes,4 f'8 bes4 r8 |
   f4 c8 f,4 r8 |
   bes4 c8 d-. es-. f-. |
   g-. f-. es-. d4 f8 |
   
   % page 4
   g4 f8 bes4 c8 |
   d-. f,-. a-. bes-. f-. d-. |
   bes4 r8 f'4 r8 |
   a4 r8 es-. d-. c-. |
   
   % page 5
   bes8-. a-. g-. f4.-- |
   bes4 r8 r4 r8 |
   g'4 r8 bes4 r8 |
   c,4-- es8-> f4.-- |
   
   % page 6
   bes,4 f'8 bes4 es,8 |
   d-. g-. f-. bes4 r8 |
   bes4-- bes8 g8.-- f16 d8 |
   c8.-- d16 es8 f16 g f es d c |
   
   % page 7
   bes4. es |
   f4-- g8-. es4-- f8-.  |
   bes,4-. f'8-. bes4.-. |
   f4-. c8-. f,4.-. |
   
   % page 8
   bes4 es8 d c bes |
   c d es d4 f8 |
   g4 a8 bes4 g8 |
   f4 f8 bes,4 r8 |
   
   % page 9
   bes4 f8-. bes4 f8-. |
   a4 f8-. c'4 f,8 |
   c'4. f,8 g a |
   bes4. f'4 r8 |
   
   % page 10
   r4 g8-. bes4. |
   r4 c,8-. f16( g f es d c |
   bes4.~) bes4 c8 |
   d g-. f-. bes4. |
   
   % page 11
   f4. bes8 a-. g-. |
   f16( g f es d c bes4) r8
}

vcpart = {
  \global
  \vcnotes
}

vcscore = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "C"
  midiInstrument = "cello"
} { \clef bass \vcpart }


rightnotes = \relative c'' {
  r4 r8 bes8-. d-. f,-. |
  <a c,>4 f8 <f c a>4 r8 |
  << { bes8 a g f es d } \\ { d4 es8 bes4. } >>
  << { es8 f-. g-.  f bes-. f-. } \\ { bes,4. bes } >>
  
  % page 2
  <d g bes>4 <f a c>8 << { <bes d>4 <a es'>8 } \\ f4. >> |
  <f bes f'>8 bes a <f bes>4 <d f>8 |
  <d f bes>4 <c es f>8 <d f> bes' <f es> |
  <d f bes>4 <c es a>8 <d bes'>4 r8 |
  \time 3/8 r4 r8
  
  % page 3
  \time 6/8 <d f bes>4. <d f> |
  <c f a> <c f>4 r8 |
  <d f bes>4. <d f> |
  << { <bes bes'>4. } \\ { es8 f g } >> <bes, f' bes>4 f'8 |
  
  % page 4
  <d g bes>4 <f a c>8 <f bes d>4 <f bes es>8 |
  <f bes f'>8 <d f bes> <es f a> <d f bes>4 r8 |
  <f bes d>4. <d f bes> |
  <c f a> <a c f>\p |
  
  %page 5
  <f' a>4. <f a c> |
  <d f bes> <d f>4 r8 |
  <d g bes>4 r8 <d g>4 r8 |
  <es g c>4 r8 <c f a>4 r8 |
  
  % pagd 6
  <d f bes>4 <f a c>8 <f bes d>4 <g c es>8 |
  <f bes f'>8 <bes, d g> <c f a> <d f bes>4 r8 |
  <f bes d>4. <d g bes> |
  <es g c> <f a c> |
  
  % page 7
  <d f bes>4. <es g bes> |
  <f bes d>4\mp <g bes>8-. <g c>4 <f a>8-. |
  <d f bes>4. <d f>4 r8 |
  <c~ f~ a>4. <c f> |
  
  % page 8
  <d f>4 <es g>8 << { f8 es d} \\ bes4. >> |
  << { es8 f g } \\ bes,4. >> <bes f'>4 f'8 |
  <d g bes>4 <c f c'>8 <f d'>4 <bes es>8 |
  <bes f'> <f bes> <f a> <d f bes>4 r8 | 
  
  % page 9
  bes'8 <d, f>4 bes'8 <d, f>4 |
  << {a'4 c8 } \\ { r8 <c, f>4 } >> <a c f>4. |
  <a f'>8. bes'16 c8 << { <c es>8 <bes d> <a c> } \\ f4. >> |
  <bes d>8 f4 <d f bes>4 r8 |
  
  % page 10
  <d g bes>8 d4 <d g>4. |
  <es g c>8 es4 <c f a>4. |
  <d f bes>4 c'8 <f, bes d>4 es'8 |
  <f, bes d>8 <d g bes> <f a> <d f bes>4. |
  
  % page 11
  <f a c>4. <d f bes> |
  <c f a>4 <c es f>8-. <d f bes>4 r8
  
}

leftnotes = \relative c {
  <bes bes'>4.~ q4 r8 |
  <f f'>4.~ q4 r8 |
  bes4 c8 d-. es-. f-. |
  g-. f-. es-. d4 <f a>8 |
  
  % page 2
  g4 f8 bes,4 c8 |
  d f16 bes f c' <bes d>4. |
  bes bes |
  bes4 <f f,>8 <bes bes,>4 r8 |
  \time 3/8 r4 r8
  
  % page 3
  \time 6/8 bes,4. bes'4 r8 |
  << { f4 g8 a4 } \\ { f,4.~ f8 } >> r8 |
  bes4 c8 d-. es-. f-. |
  g-. f-. es d4 <f a>8 |
  
  % page 4
  g4 f8 bes,4 c8 |
  d16 es f8 f bes4 r8 |
  <bes, bes'>4. <f f'> |
  <a a'> <f f'> |
  
  % page 5
  <c' c'>4. << { f8 g a } \\ f,4. >> |
  <bes bes'>4.~ q8 r4 |
  <g g'>4. <bes bes'> |
  <c c'> <f, f'>
  
  % page 6
  bes4 f'8 bes4 es,8 |
  d g-. f-. bes4 r8 |
  bes4. g8. f16 d8 |
  c8. d16 es8 f4. \abr
  
  % page 7
  bes,4. es |
  f4 <g d'>8-. <es c'>4 <f c'>8 |
  \mark \default
  bes,4 f'8 bes4. |
  f4 c8 f,4. | \abr
  
  % page 8
  bes4 es8 d c bes |
  c d es d4 <f a>8 |
  g4 a8 <bes d>4 <g es'>8 |
  <f d'>4 <f f,>8 bes,4 r8 | \abr
  
  % page 9
  bes4 f8-. bes4 f8-. |
  a4 f8-. c'4 f,8-. |
  c'4. f,8 g a |
  bes4. f'4 r8 | \abr
  
  % page 10
  r4 g8 bes4. |
  r4 c,8 f4. |
  <bes bes,>4. bes |
  d,8 g-. f-. bes4. | \abr
  
  % page 11
  f4. bes8 a-. g-. |
  f4 <f f,>8 <bes bes,>4 r8 \bar "||"
}

rightpart = {
  \global
  \rightnotes
}

leftpart = {
  \clef bass
  \global
  \leftnotes
}

pianoscore =   \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P-no"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \rightpart
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } \leftpart
  >>

\paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    
    ragged-last-bottom = ##f
}

\bookpart {
  \score {
 %     \transpose es f {
    \choirscore
 %     }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \score {
 %     \transpose es f {
 <<
    \flscore
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \pianoscore
 >>
 %     }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
 %     \transpose es f {
      <<
    \flscore
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \pianoscore
   >>
%      }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
