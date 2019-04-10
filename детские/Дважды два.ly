\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
 %   ragged-bottom = ##f
 %   ragged-last-bottom = ##f
    indent = 10
  }

global = {
  \key e \major
  \time 4/4
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


soprano = \relative c'' {
  \global
  \dynamicUp
  b2 b |
  cis4 b a gis |
  b2 b |
  cis4 b a gis |
  gis fis b r |
  gis fis b r |
  cis4. b8 a4 gis |
  b r r2 \bar "||" \abr
  
  b2 b |
  cis4 b a gis |
  b2 b |
  cis4 b a gis |
  gis fis b r |
  gis fis b r |
  cis4. b8 a4 fis |
  e r r2 \bar "||"
  
  \bar "|."
}

alto = \relative c'' {
  \global
  \dynamicUp
  gis2 gis |
  a4 gis fis e |
  gis2 gis2 |
  a4 gis fis e |
  gis fis fis r |
  gis fis fis r |
  a4. gis8 fis4 e |
  dis r r2 | \bar "||" \abr
  
  gis2 gis |
  a4 gis fis e |
  gis2 gis2 |
  a4 gis fis e |
  gis fis fis r |
  gis fis fis r |
  a4. gis8 fis4 dis |
  e r r2 | \bar "|."
  
  \bar "|."
}



lyricscommon = \lyricmode {
  Два -- жды два че -- ты -- ре,
  два -- жды два че -- ты -- ре,
  а не три, а не пять,
  э -- то на -- до знать!
   Два -- жды два че -- ты -- ре,
  два -- жды два че -- ты -- ре,
  а не шесть, а не семь,
  э -- то я -- сно всем!
  
}


\bookpart {
  
    \header {
    title = "Дважды два ― четыре"
    piece = "Сопрано"
  }


  \score {
    
  \header {
    piece = "Сопрано"
  }

    
    \transpose e f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Сопрано" 
        shortInstrumentName = "С"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
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
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  
}

\bookpart {
  
    \header {
    title = "Дважды два ― четыре"
    piece = "Альты"
  }
  
  \score {   
    \transpose e f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Альт" 
        shortInstrumentName = "А"
      } <<
        \new Voice = "soprano" { \voiceTwo \alto }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
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
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  
}

\bookpart {
  
    \header {
    title = "Дважды два ― четыре"
    piece = "Вместе"
  }
  
  \score {   
    \transpose e f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
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
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  
  
    \score {
      \unfoldRepeats
    
    \transpose e f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Альт" 
        shortInstrumentName = "А"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceOne \alto }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscommon }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    }  % transposeµ

    \midi {
      \tempo 4=160
    }
  }
}



