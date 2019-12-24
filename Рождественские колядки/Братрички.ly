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
  \time 3/8 bes4.--
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

vinotes = \relative c''' {
  bes4-- f8-. d4.-- |
  a'8-. c-. es,~ es4 r8 |
  bes'8-. f-. g-. f-. es-. d-. |
  es-. f-. g-. f4--( d16 c)
  
  bes4 c8 d4 es8 |
  f d16 bes c a bes4 f'16 d |
  bes8 bes d bes bes f' |
  bes, bes a bes bes' bes |
  \time 3/8 bes4.--
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

vinotes = \relative c'' {
  
  bes8-. d-. f,-. r4 r8 |
  c'4-- r8 a-. c-. f,-. |
  d'4 es8 bes4.~ |
  bes~ bes4 a8

  % page 2
  g4 a8 bes4 c8 |
  d bes a bes bes bes |
  bes-. bes-. f-. bes-. bes-. a-. |
  bes-. bes-. a-. bes-. d-. d-. |
  \time 3/8 d4.--
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
   d8 f16 bes f a bes4. |
   bes bes |
   bes8-. bes-. f-. bes-. bes-. bes-. |
   \time 3/8 bes4.
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
  << { es8 f g  f bes f } \\ { bes,4. bes } >>
  
  % page 2
  <d g bes>4 <f a c>8 << { <bes d>4 <a es'>8 } \\ f4. >> |
  <f bes f'>8 bes a <f bes>4 <d f>8 |
  <d f bes>4 <c es f>8 <d f> bes' <f es> |
  <d f bes>4 <c es a>8 <d bes'>4 r8 |
  \time 3/8 r4 r8
  
}

leftnotes = \relative c {
  <bes bes'>4.~ q4 r8 |
  <f f'>4.~ q4 r8 |
  bes4 c8 d es f |
  g f es d4 <f a>8 |
  
  % page 2
  g4 f8 bes,4 c8 |
  d f16 bes f c' <bes d>4. |
  bes bes |
  bes4 <f f,>8 <bes bes,>4 r8 |
  \time 3/8 r4 r8
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
