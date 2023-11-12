\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "В лесу родилась ёлочка"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key f \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-numbers
  \override MultiMeasureRest.expand-limit = #1
  \secondbar

  %\numericTimeSignature
  
}

U = { \change Staff = right }
D = { \change Staff = left }



%use this as temporary line break
abr = \tag #'BR { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


% flute

flutenotes = \relative c' { 
  % intro
  
  r4 r8 c \repeat volta 2 {
   a'8 a g a |
   f c c c |
   a' a bes g |
   c4. \bar "" \break c8 |
   d, d bes' bes |
   a g f c |
   a' a g a |
   f4. c8
  
  }
  
  
}


flutepart = { \global \flutenotes }

fscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "F"
  midiInstrument = "flute"
} {
  \transpose f g \flutepart
}

  
\bookpart {
  \header { piece = "Flute" }
  \score {
    \fscore
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

