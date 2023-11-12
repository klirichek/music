\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = ""
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
  \key g \major
  \time 4/4
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

sopvoice = \relative c'' {
}


altvoice = \relative c'' {
  }

tenorvoice = \relative c' {
  \global
 
}


bassvoice = \relative c' {

}


% flute

flutenotes = \relative c'' { 
\global
   
}

% violin one     
vinotes = \relative c'' {
  \global
}

%violin two 
viinotes = \relative c'' {
  \global
}

%alt one intro
viiinotes = \relative c' {
  \global
}

%alt two intro
cellonotes = \relative c {
 \global
}

pianorightup = \relative c {
 \global
}

pianorightdown = \relative c {
 \global
}

pianoleftup = \relative c {
 \global
}

pianoleftdown = \relative c {
 \global
}

fscore = \new Staff \with { instrumentName = "Fl" shortInstrumentName = "F" midiInstrument = "flute" }
{
  \flutenotes
}

viscore = \new Staff \with { instrumentName = "V1" shortInstrumentName = "V1" midiInstrument = "violin" }
{
  \vinotes
}

viiscore = \new Staff \with { instrumentName = "V2" shortInstrumentName = "V2" midiInstrument = "violin" }
{
  \viinotes
}

viiiscore = \new Staff \with { instrumentName = "Alt" shortInstrumentName = "A" midiInstrument = "viola" }
{
  \clef alto \viiinotes
}

celloscore = \new Staff \with { instrumentName = "Cello" shortInstrumentName = "C" midiInstrument = "violin" }
{
  \clef bass \cellonotes
}



pianorightnotes = \relative c'' {
   << \pianorightup \pianorightdown >>
}


pianoleftnotes = \relative c' {
  \global
  << \pianoleftup \pianoleftdown >>
}


pianopart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \pianorightnotes
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \pianoleftnotes }
  >>
  
  
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }


\bookpart {
  \header { piece = "Instruments" }
  \paper { system-separator-markup = \slashSeparator }
  \score {
   <<
     %  \fscore
    \new StaffGroup <<
        \viscore
        \viiscore
        \viiiscore
        \celloscore
      >>
%  \choirpart
        \pianopart
  >>
    \layout {
%      #(layout-set-staff-size 14)
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


\bookpart {
  \header { piece = "Violini" }
   \paper { system-separator-markup = \slashSeparator }
  \score {
    << \viscore \viiscore >>
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

\bookpart {
  \header { piece = "Alto" }
  \score {
    << \viiiscore >>
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

\bookpart {
  \header { piece = "Cello" }
  \score {
    << \celloscore >>
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

\bookpart {
  \header { piece = "Piano" }
   \paper { system-separator-markup = \slashSeparator page-count = #2 }
  \score {
    << \pianopart >>
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


  


\bookpart {
  \score {
   \unfoldRepeats \articulate << 
       %  \fscore

        \viscore
        \viiscore
        \viiiscore
        \celloscore

%  \choirpart
        \pianopart
 >>
    \midi {
      \tempo 4=90
    }
  }      
}

