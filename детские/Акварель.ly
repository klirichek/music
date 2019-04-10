\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 17.8)

\header {
  title = "Акварель"
  subtitle = " "
  %opus = "№ 140"
  composer = "Музыка В. Сариева"
  poet = "Слова И. Северянина"
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 14
  indent = 15
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globali = {
  \key c \major
  \time 6/8
  \secondbar
  \tempo "Свободно, с движением"
}

global = {
  \globali
  \autoBeamOff
  \override MultiMeasureRest.expand-limit = #3
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


violinone = \relative c' {
  \globali
  R2.*14
  r4. c4.\upbow\mf
  d f |
  e2.\< |
  f\> |
  e4.~\! e8 r4 |
  es2.\upbow |
  e8(\< g c e)\! r4 |
  f,4.(\> es)\! |
  e r |
  R2.*3 |
  r4. e'\mf\downbow~ |
  e2.~ |
  e4. es |
  d8( c b) a4. |
  r a~ |
  a f'~ |
  f2. |
  e4.~ e8 r4 |
  r8 gis,\downbow\<( a) b4.~\! |
  b8 a( b) c( d e) |
  f4( d8) b( as f) |
  e4. r8 f\upbow( g) |
  as4.~ as4 f8 |
  g( c\> e g)\! r4 |
  r8 f,\downbow f es es--~ es-- |
  e4.\p r |
  R2.*6 |
  r8 a'8\f e g4 r8 |
   r g\downbow( e) g4 g8 |
   e f g a fis dis |
   d e f d4 r8 |
   r d e f a d |
   f e d a4 a8 |
   b4 b8 b as( f) |
   e4. r |
   r8 gis,(\downbow a) b4.~ |
   b8 a( b) c( d e) |
   f4( d8) b( as f) |
   e4.-- r8 f8--( g) |
   as4.~ as4 f8 |
   g( c e g8)\fermata r4 |
   r8 f,\downbow f es^\markup\bold"rit." es--~\>es-- |
   e4.\mf r |
   R2.*3 |
   e'2.^\markup\italic"morendo"~ |
   e~ |
   e~\> |
   e8\pp r4 r2
   \bar "|."
  
}


violiniPartOne = \new Staff \with {
  instrumentName = "Violin"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} <<
     \oneVoice \violinone
  >>
  


\bookpart {
  \header { piece = "Скрипка" }
  \score {
    %  \transpose c bes {
    <<
      \set Score.skipBars = ##t
      \violiniPartOne
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\include "articulate.ly"

% midi output
\bookpart {
  \score {
    \unfoldRepeats \articulate
    %  \transpose c bes {
    <<
      \violiniPartOne
     
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=160
    }
  }
}

