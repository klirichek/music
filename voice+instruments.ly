\version "2.18.2"

%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18.5)

\header {
  title = "title"
  %composer = "Composer"
  arranger = "arranger"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/4
  \numericTimeSignature
}

br = { \break }
%br = {}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  
}

scoreVoiceL = \lyricmode {
  
}

scoreVoiceLL = \lyricmode {
 
}

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

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "НАР"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } \scoreInstrLeft
  >>

\bookpart {
  \header {
%  piece = "Fis-dur"
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
