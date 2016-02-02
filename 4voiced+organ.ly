\version "2.18.2"

#(set-default-paper-size "a4")

\header {
  title = "Богородице Дево, радуйся"
  composer = "Рахманинов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
}

scoreASopranoVoiceI = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  d4 d d d
}

scoreAVerseSopranoVoiceI = \lyricmode {
  la la la
}

scoreAAltoVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d4 d d d
}

scoreAVerseAltoVoice = \lyricmode {
 alt alt alt
}

scoreATenorVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c4 c c c
}

scoreAVerseTenorVoice = \lyricmode {
  ten ten ten
  
}

scoreABassVoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  c4 c c c
}

scoreAVerseBassVoice = \lyricmode {
  bas bas bas
}

scoreARight = \relative c' {
  \global
  c4 c c c
}

scoreALeft = \relative c' {
  \global
  c4 c c c
}

scoreASopranoVoicePart = \new Staff \with {
  instrumentName = "Sop"
  midiInstrument = "voice oohs"
} { \scoreAAltoVoice }
\addlyrics { \scoreAVerseAltoVoice }


scoreAAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "voice oohs"
} { \scoreAAltoVoice }
\addlyrics { \scoreAVerseAltoVoice }


scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerseTenorVoice }


scoreABassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "voice oohs"
} { \clef bass \scoreABassVoice }
\addlyrics { \scoreAVerseBassVoice }

scoreAOrganPart =   \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
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
      \scoreASopranoVoicePart
      \scoreAAltoVoicePart
      \scoreATenorVoicePart
      \scoreABassVoicePart
    >>
    \scoreAOrganPart
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
