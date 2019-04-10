\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией

%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Свете Тихий"
  subtitle = " "
  composer = "музыка П. Чеснокова. Соч. 9, № 22"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
  \time 3/2
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

votenori = \relative c'' {
  \global
  \tempo 2=88
  \dynamicUp
  
  \secondbar  
  
}


votenorii = \relative c'' {
  \global
  \dynamicUp  

}


vobaritone = \relative c' {
  \global
  \dynamicUp 

}


vobass = \relative c {
  \global
  \dynamicUp
 
}

lyricscore = \lyricmode {
  
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \voiceOne \clef "G_8" \votenori }
        \new Voice  = "tenorii" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бар." "Бас" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \context Lyrics = "tenori" {
        \lyricsto "tenori" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \votenori }
        \new Voice  = "alto" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
