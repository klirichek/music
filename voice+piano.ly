\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

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

\header {
  title = "title"
  composer = "composer"
  %arranger = "arranger"
  poet = "poet"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
  \key c \major
  \time 3/4
  \numericTimeSignature
}

abr = { \break }
%abr = {}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Andantino"
}

scoreVoiceL = \lyricmode {
  
}

scoreVoiceLL = \lyricmode {
 
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c''' {
  \global
  \dynamicNeutral

}

scoreInstrLeft = \relative c'' {
  \global
  \dynamicUp

}



scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrLeft
  >>



\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \score {
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
  }
}
