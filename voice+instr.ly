\version "2.18.2"

#(set-default-paper-size "a4")

\header {
  title = "Title"
  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  d4 d d d
}

scoreVoiceL = \lyricmode {
  la la la
}


scoreInstrRight = \relative c' {
  \global
  c4 c c c
}

scoreInstrLeft = \relative c' {
  \global
  c4 c c c
}

scoreVoicePart = \new Staff \with {
  instrumentName = "Voice"
  midiInstrument = "voice oohs"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Instr"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreInstrLeft }
  >>

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
}
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
  \midi {
    \tempo 4=90
  }
}
}
