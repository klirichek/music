\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Над вертепом ангелы хвалу поют"
  subtitle = " "
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key es \major
  \time 2/4
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

sopvoice = \relative c' {
  \global
  \dynamicUp
  
  \secondbar  
  \tempo "Не слишком скоро"
  es8\mp\cresc\( d es f |
  g f g as |
  bes4 c |
  bes2\) |
  es,8\mf\( d es f |
  g f g as |
  bes4\< c |
  bes2\!\) \abr
  
  \repeat volta 2 {
    es4\f\( bes8 bes |
    c bes as g\) |
    as4\( as8 c |
    bes as g f\) |
    g4\(( as) bes2\) |
    g4 \(f es2\) 
  }
}


altvoice = \relative c' {
  \global
  \dynamicDown  
 es8\( d es f |
  es d es f |
  g4 as |
  g2\) |
  es8\( d es f |
  es d es f |
  g4 as |
  g2\)
  
  \repeat volta 2 {
    g4\( g8 g |
    as g f e\) |
    f4\( f8 as |
    g f es d\) |
    es4(\( f) g2\) |
    es4\( d es2\) 
  }
}



lyricscore = \lyricmode {
  \set stanza = "1. " Над ве -- рте -- пом а -- гне -- лы хва -- лу по -- ют,
  по -- кло -- ни -- ться Бо -- гу всех лю -- дей зо -- вут:
  Сла -- ва во вы -- шних Бо -- гу, сла -- ва во вы -- шних Бо -- гу
  и мир на -- зе -- мли.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 5
    ragged-bottom = ##f
  }
  \score {
      \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Х"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
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
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
  
       \markup {
                 \vspace #2

  \fill-line {
    \column {
      \line { \column { 2. }
              \column { \line { Радостную весть они всем принесли: }
          \line { Бога на Земле все люди обрели: }
          \line \italic { Слава во вышних Богу, }
          \line \italic { Слава во вышних Богу, }
          \line \italic { и мир на земли. } } }
    }
    \hspace #2

    \column {
      \line { \column { 3. } 
              \column { \line { Все мы к яслям с чистым сердцем поспешим, }
                        \line { И хвалу Христу-Младенцу воздадим: }
      \line \italic { Слава во вышних Богу, }
      \line \italic { Слава во вышних Богу, }
      \line \italic { и мир на земли. } } }
      \vspace #1
    }
    \hspace #2
  }
}
  
}

\bookpart {
  \score {
    \unfoldRepeats
      \transpose es f {
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
      }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
