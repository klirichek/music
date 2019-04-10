\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Где был, Иванушка?"
  %subtitle = " "
  %composer = "Н. Скворцова"
  %poet = "П. Синявский"
  arranger = "Обработка Ю. Тихоновой"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
  \key es \major
  \tempo "Moderato"
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
pbr = { \pageBreak }

abr = {  }
pbr = {  }


% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

cross = { \override NoteHead.style = #'cross }
uncross = { \revert NoteHead.style }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \secondbar
  R2*8
  bes4\mf g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr
 
  bes'8 bes g c |
  bes bes g4 |
  bes bes |
  es,2 |
  as8\p as c c |
  bes bes g4 | \abr
  
  bes8\cresc as g f |
  es4. es8\mf |
  as4 c8 c |
  bes bes g4 |
  bes8 as g f |
  es2 | \abr \pbr
  
  bes'4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 |
  bes'8 bes g c |
  bes bes g4 | \abr
  
  bes bes |
  es,2 |
  as8\p as c c |
  bes bes g4 |
  bes8 as g f |
  es2 | \abr
  
  as8\cresc as c c |
  bes bes g4 |
  bes8 as g f |
  es4. es8\mf |
  as4 c8 c | \abr
  
  bes bes g4 |
  bes8 as g f |
  es2 |
  bes'4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr \pbr
  
  bes'8 bes g c |
  bes bes g g |
  bes4 bes |
  es,2 |
  as8\p as c c |
  bes bes g4 | \abr
  
  bes8 as g f |
  es2 |
  as8\cresc as c c |
  bes bes g4 |
  bes8 as g f |
  es2 | \abr
  
  as4 c8 c |
  bes bes g4 |
  bes8 as g f |
  es4. es8\f |
  as4 c8 c |
  bes bes g4 | \abr
  
  bes8 as g f |
  es2 |
  bes'4\mf g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr \pbr
  
  bes'8 bes g c |
  bes bes g g |
  bes4 bes |
  es,2 |
  as8\p as c c |
  bes\cresc bes g4 | \abr
  
  bes8 as g f |
  es2 |
  as8 as c c |
  bes bes g4 |
  bes8 as g f es2 | \abr
  
  as4\mf c8 c |
  bes bes g4 |
  bes8 as g f |
  es4. es8 |
  as4 c8 c |
  bes4 g | \abr
  
  bes8 as g f |
  es4. es8 |
  as4 c8 c |
  bes bes g4 |
  bes8 bes bes bes |
  es2 | \abr
  
  R2*8 | \bar "|."
  
}

altvoice = \relative c'' {
  \global
  R2*8
  bes4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr
 
  es8 es es es |
  es es es4 |
  bes' bes |
  es,2 |
  as8 as c c |
  bes bes g4 | \abr
  
  bes8 as g f |
  es4. es8 |
  as4 as8 as8 |
  g g es4 |
  g8 f es d |
  es2 | \abr
  
  bes'4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 |
  es8 es es es |
  es es es4 | \abr
  
  bes' bes |
  es,2 |
  as8 as c c |
  bes bes g4 |
  bes8 as g f |
  es2 | \abr
  
  as8 as as as |
  g g es4 |
  g8 f es d |
  es4. es8 |
  as4 as8 as8 | \abr
  
  g8 g es4 |
  g8 f es d |
  es2 |
  bes'4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr
  
  es8 es es es |
  es es es g |
  bes4 bes |
  es,2 |
  as8 as c c |
  bes bes g4 | \abr
  
  bes8 as g f |
  es2 |
  as8 as as as |
  g g es4 |
  g8 f es d |
  es2 | \abr
  
  es4 es8 es |
  es es es4 |
  bes8 bes bes bes |
  es4. es8 |
  as4 as8 as8 |
  g g es4 | \abr
  
  g8 f es d |
  es2 |
  bes'4 g8 c |
  bes bes g g |
  bes4 bes |
  es,2 | \abr
  
  es8 es es es |
  es es es g |
  bes4 bes |
  es,2 |
  as8 as c c |
  bes bes g4 | \abr
  
  bes8 as g f |
  es2 |
  as8 as as as |
  g g es4 |
  g8 f es d |
  es2 | \abr
  
  es4 es8 es8 |
  es es es4 |
  bes8 bes bes bes |
  es4. es8 |
  es4 es8 es |
  es4 es | \abr
  
  d8 d d d  |
  es4. es8 |
  as4 c8 c |
  bes bes g4 |
  bes8 as g f |
  es2 | \abr
 
}

lyricscore = \lyricmode {
  Где был, И -- ва -- нуш -- ка? На яр -- мар -- ке.
  Что ку -- пил, И -- ва -- нуш -- ка? Ку -- роч -- ку. Ку -- роч -- ка по се -- нич -- кам
  зёр -- ныш -- ки клю -- ёт, И -- ва -- нуш -- ка в_го -- рен -- ке пе -- сен -- ки по -- ёт.
  
  Где был, И -- ва -- нуш -- ка? На яр -- мар -- ке. Что ку -- пил, И -- ва -- нуш -- ка?
  У -- точ -- ку. Ку -- роч -- ка по се -- нич -- кам зёр -- ныш -- ки клю -- ёт,
  у -- точ -- ка по лу -- жи -- це вдоль плы -- вёт, плы -- вёт. И -- ва -- нуш -- ка
  в_го -- рен -- ке пе -- сен -- ки по -- ёт. Где был, И -- ва -- нуш -- ка? На яр -- мар -- ке.
  
  Что ку -- пил, И -- ва -- нуш -- ка? Ба -- ра -- шеч -- ка. Ку -- роч -- ка по се -- нич -- кам
  зёр -- ныш -- ки клю -- ёт, у -- точ -- ка по лу -- жи -- це вдоль плы -- вёт, плы -- вёт,
  ба -- ра -- шек в_са -- ди -- ке тра -- вуш -- ку жу -- ёт, И -- ва -- нуш -- ка в_го -- рен -- ке
  пе -- сен -- ки по -- ёт. Где был, И -- ва -- нуш -- ка? На яр -- мар -- ке.
  
  Что ку -- пил, И -- ва -- нуш -- ка? Ко -- ро -- вуш -- ку. Ку -- роч -- ка по се -- нич -- кам
  зёр -- ныш -- ки клю -- ёт, у -- точ -- ка по лу -- жи -- це вдоль плы -- вёт, плы -- вёт,
  ба -- ра -- шек в_са -- ди -- ке тра -- вуш -- ку жу -- ёт, ко -- ро -- вуш -- ка дет -- кам
  мо -- лоч -- ко да -- ёт, И -- ва -- нуш -- ка в_го -- рен -- ке пе -- сен -- ки по -- ёт.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    
    %ragged-last-bottom = ##f
  }
  \score {
 %     \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \column { "С" "А"  } }
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      

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
      \tempo 4=120
    }
  }
}
