\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Тропарь Вознесению Господню"
  subtitle = " "
  %composer = "музыка П. Чеснокова. Соч. 9, № 22"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

zatakt = { \set Timing.measurePosition = #(ly:make-moment -1/4) }


global = {
  \key c \major
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

tempodynamic = {
  \time 3/4 \zatakt s4\f |
  s2. |
  s |
  s |
  s |
  \time 4/4 s1\mf
  s2. \breathe s4 |
  s1 |
  \time 3/4 s2. |
  s |
  s |
  s |
  s2 \breathe s4\mp |
  s2. |
  s |
  s2 \breathe s4\f |
  s2. |
  s |
  s |
  s |
  s \bar "|."
}

votenori = \relative c' {
  \global
  d4 |
  e4 e8 e e e |
  e4 e f8 f |
  e2 d4 |
  c2. |
  d4.( c8) b4 a8 b |
  c4.( b8) a4  c8 d |
  e4 e8 d c b a4 |
  g'4 g g |
  g2 g4 |
  g2 g4 |
  g2 e4 |
  f4 f  a,8 bes |
  d4 bes a |
  d d8 c bes a |
  a8. g16 g4  e'8 e |
  d4. g8 g g |
  g4 g e |
  f f a |
  g2. |
  g
}


votenorii = \relative c' {
  \global  
   b4 |
   c c8 c c c |
   c4 c c8 d |
   c2 b4 |
   g2. |
   b4. ( a8) g4 fis8 g |
   a4.( g8) fis4  a8 b |
   c4 c8 b a g fis4 |
   d' d d |
   e2 e4 |
   e2 e4 |
   e2 c4 |
   c c  f,8 g |
   a4 g f |
   bes bes8 a g f |
   f8. e16 e4  c'8 c |
   b?4. d8 c d |
   e4 e c |
   c c f |
   e2( d4) |
   e2.
}


vobaritone = \relative c' {
  \global
  
  g4 |
  g g8 g g g |
  a4 a a8 a |
  g2 f4 |
  e2. |
  g2 g4 r |
  d2 d4  d8 d |
  c4 c8 g' fis g d4 |
  b'4 b b |
  b2 b4 |
  c2 c4 |
  bes2 bes4 |
  a a  f8 f |
  f4 f f |
  f f8 a g f |
  f8. e16 e4  g8 g |
  g4. b8 a b |
  c4 c g |
  a a c |
  c2( b4) |
  c2.
}


vobass = \relative c' {
  \global
  g4 |
  c, c8 c c c |
  a4 a f8 f |
  g2 g4 |
  c2.  |
   g2 g4 r |
  d'2 d4  d8 d |
  c4 c8 g' fis g d4 |
   g b g |
  e( g ) e |
  c2 c'4 |
  c2 c,4 |
  f f  f,8 f |
  f4 f f |
  bes bes8 bes bes bes |
  c8. c16 c4  c8 c |
  g'4. g8 g g |
  c4 c, c |
  f a f |
  g2( g,4) |
  <c g'>2.
 
}

lyricscore = \lyricmode {
  Во -- зне -- слся е -- си во сла -- ве, Хри -- сте Бо -- же наш,
  ра -- дость со -- тво -- ри -- вый, со -- тво -- ри -- вый у -- че -- ни -- ком
  о -- бе -- то -- ва -- ни -- ем Свя -- та -- го Ду -- ха,
  и -- зве -- ще -- нным им бы -- вшим бла -- го -- сло -- ве -- ни -- ем
  я -- ко Ты е -- си Сын Бо -- жий, и -- зба -- ви -- тель ми -- ра.
}

lyricscoreb = \lyricmode {
  \repeat unfold 15 \skip 1
  ра -- дость
}

lyricscorebar = \lyricmode {
  Во -- зне -- слся е -- си во сла -- ве, Хри -- сте Бо -- же наш,
  ра -- дость, ра -- дость со -- тво -- ри -- вый у -- че -- ни -- ком
  о -- бе -- то -- ва -- ни -- ем Свя -- та -- го Ду -- ха,
  и -- зве -- ще -- нным им бы -- вшим бла -- го -- сло -- ве -- ни -- ем
  я -- ко Ты е -- си Сын Бо -- жий, и -- зба -- ви -- тель ми -- ра.
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }

\bookpart {
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }
        \new Voice = "tenori" { \voiceOne \clef "G_8" \votenori }
        \new Voice  = "tenorii" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бар." "Бас" } }
        midiInstrument = "voice oohs"
      } <<
       \new Voice = "tempoa" { \dynamicDown \tempodynamic }
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \new Lyrics \lyricsto "bass" \lyricscoreb

    >>
%      }  % transposeµ
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
  \header {
    piece = "Тенор 1"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "T1"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }
        \new Voice = "tenori" { \oneVoice \clef "G_8" \votenori }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
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
  \header {
    piece = "Тенор 2"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Т2"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }      
        \new Voice  = "tenorii" { \oneVoice \clef "G_8"\votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenorii" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
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
  \header {
    piece = "Баритон"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }        
        \new Voice = "baritone" { \oneVoice \clef bass \vobaritone }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscorebar

    >>
%      }  % transposeµ
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
  \header {
    piece = "Бас"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }        
        \new Voice = "bass" { \voiceTwo \clef bass \vobass }
      >>
      %\new Lyrics \lyricsto "baritone" \lyricscore
      \new Lyrics \lyricsto "bass" \lyricscorebar

    >>
%      }  % transposeµ
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
  \header {
    piece = "Тенора"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \dynamicUp \clef "G_8" \voiceOne \votenori }
        \new Voice  = "tenorii" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
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
  \header {
    piece = "Баритон, бас"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бар." "Бас" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }                
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscorebar

    >>
%      }  % transposeµ
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
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempo" { \dynamicUp \tempodynamic }        
        \new Voice = "soprano" { \voiceOne \votenori }
        \new Voice  = "alto" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tempoa" { \dynamicDown \tempodynamic }        
        \new Voice = "tenor" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
%      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
