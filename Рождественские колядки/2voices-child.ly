\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Вот Христос родился"
  subtitle = " "
%  composer = "М. Матвеев"
%  poet = "Слова Е. Руженцева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \major
  \time 2/2
  \numericTimeSignature
  \autoBeamOff
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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \secondbar  
  
  
  
  
 \bar "||"
}

altvoice = \relative c'' {
  \global
  \dynamicDown  
 
  
  
  \bar "||"
}



lyricscore = \lyricmode {
  \set stanza = "1. " 
}

lyricscorea = \lyricmode {
  \set stanza = "1. " 
  
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    
    ragged-last-bottom = ##f
  }
  \score {
 %     \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
     \new Staff = "downlstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
      } <<
        \new Voice  = "alto" { \oneVoice \altvoice }
      >> 
      
            \new Lyrics \lyricsto "alto" { \lyricscorea }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
    >>
 %     }  % transposeµ
    \layout { 
      \context {
        \Score
%         \override BarNumber.break-visibility = #end-of-line-invisible
%          \override BarNumber.self-alignment-X = #LEFT
%          \override BarNumber.stencil  = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
%          barNumberVisibility = #all-bar-numbers-visible
%          barNumberVisibility = #(every-nth-bar-number-visible 2)
}
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
  
       \markup {
       \hspace #2
       \column { 2. }
       \column { \line { Скрипач недолго думал, }
       \line { Он стал водить смычком, }
       \line { И тысячами звуков }
       \line { Наполнил водоём. } }
          
       \hspace #2
       \column { 3. }
       \column { \line { Волнуется он всё же: }
       \line { А вдруг не повезёт? }
       \line { Ужасно толстокожий }
       \line { Попался бегемот. } }
          
       \hspace #2
       \column { 4. }
       \column { \line { Скрипач уж тяжко дышит, }
       \line { Отчаяться готов. }
       \line { И вдруг он ясно слышит: }
       \line { «Спасибо, я здоров!» } }
      }
      

  
}

\bookpart {
  \score {
    \unfoldRepeats
 %     \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Х"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
    >>
%      }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
