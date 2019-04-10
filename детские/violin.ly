\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 17.8)

\header {
  title = "Title"
  subtitle = " "
  %opus = "№ 140"
  composer = "Музыка Composer"
  poet = "Слова Poet"
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
  %ragged-bottom = ##f
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
 
}


violiniPartOne = \new Staff \with {
  instrumentName = "Violin 1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} <<
     \oneVoice \violinone
  >>
  


\bookpart {
  \header { piece = "Violini" }
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

