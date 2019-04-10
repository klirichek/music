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
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    indent = 0
  }

global = {
  \key f \major
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

refrain = {
    \repeat volta 2
  {
    c4 a8 bes |
    c16 d c d c4 |
    bes4 g8 c|
    a4 r \abr
  }
}

melodyone = {
  g8 g a f |
  a4 g |
  bes8 bes c g |
  bes4 a | \abr
  g8 g a b |
  c8 g g g |
  a d c b |
  d4 c | \abr
}

melodytwo = {
  g8 g a f |
  a4 g |
  bes8 bes c g |
  bes4 a | \abr
  g8 g a b |
  c4 g |
  a8 d c b |
  d4 c | \abr
}

melodythree = {
  g8 g a f |
  a4 g |
  bes8 bes c g |
  bes4 a | \abr
  g8 g a b |
  c4( g) |
  a8 d c b |
  d4 c | \abr
}

sopkling = \relative c'' {
  \global
  \dynamicUp
  \refrain
  \melodyone
  \refrain
  \melodytwo
  \refrain
  \melodythree
  
  \bar "|."
}

refraintext = \lyricmode {
  \repeat volta 2 { Глин, глён, глин, гли -- га, ли -- га -- лин,
  глин, глён, глин, гли. }
}

lyricsklingone = \lyricmode {

  \refraintext
  
  \set stanza = "1." 
  В_Рож -- де -- ство Хри -- сто -- во
  в_храм при -- хо -- дят де -- ти,
  и зво -- нят  ко -- ло -- ко -- ла
  по всей, по всей пла -- не -- те:
   
  \refraintext
  
  \set stanza = "2." 
  Ан -- ге -- лы свя -- ты -- е по -- я -- ви -- лись всю -- ду.
  Нас зо -- вут с_со -- бо -- ю по -- кло -- нить -- ся чу -- ду.
  
    \refraintext
  
    \set stanza = "3." 
  И в_мо -- ём пусть серд -- це бу -- дет э -- та сла -- дость:
  к_Гос -- по -- ду лю -- бовь __ и свя -- та -- я ра -- дость.
  
  \refraintext
  
}


\bookpart {
  
    \header {
    title = "Kling, Glörchen"
    subtitle = "(колокольчики)"
  }


  \score {
    
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopkling }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricsklingone }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    %  }  % transposeµ
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
    
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopkling }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricsklingone }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    %  }  % transposeµ

    \midi {
      \tempo 4=90
    }
  }
}



