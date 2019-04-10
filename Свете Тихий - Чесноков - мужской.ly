\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией

#(ly:set-option 'point-and-click #f)
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

votenori = \relative c' {
  \global
  \tempo 2=88
  \dynamicUp
  d4 d d2 d4 d |
  e e e2 e4 b |
  c c c c b b | \abr
  a2. a4 a a |
  b2 b a |
  d4 d e2 fis4 fis |
  g1 d4 d | \abr
  d2. r4 g,2 |
  c c4 c c c |
  d2 d r |
  e c4 c c c | \abr
  d2 d4 r d2 |
  g1 f2 |
  e2. r4 e,2 |
  e'1 d2 |
  c c b4 b | \abr
  a2. a4 b a |
  g2 g r4 g' |
  g2 g4 g g g |
  g2 g4 g g2 | \abr
  e1 e4 e |
  e2 e e4 e |
  e2. e4 e2 |
  d4 d d2 d | \abr
  e4 e e2 e4 e |
  fis fis fis1 |
  g4 g g2 g | \abr
  a1 g2 |
  fis( e) d |
  a'1 g2 |
  fis2( e) d | \abr
  g1 d2 |
  c( d) e |
  g1 g2 |
  g1 g2 | \abr
  g1 g2 |
  r b, b |
  b1 d2 |
  d1. |
  d1 r2 \bar "|."
}


votenorii = \relative c' {
  \global
  \dynamicUp  
  b4 b b2 b4 b |
  b b b2 b4 g |
  a a a a g g |
  
  g2. g4 g g |
  fis2 fis a |
  d4 d d2 d4 d |
  d1 b4 b |
  
  b2. r4 g2 |
  g g4 g g c |
  c2 c r |
  c g4 g g c |
  
  c2 c4 r b2 |
  c( a) b |
  c2. r4 e,2 |
  a( fis) gis |
  a a gis4 gis |
  
  a2. g4 fis fis |
  g2 g r4 g |
  e'2 e4 e d b |
  e2 e4 e d2 |
  
  c1 c4 c |
  b2 g b4 b |
  c2. c4 c2 |
  d4 d d2 d |
  
  c4 c c2 c4 c |
  c c c1 |
  d4 d d2 d |
  
  e1 d2 |
  c1 c2 |
  e1 d2 |
  c1 c2 |
  
  d1 b2 |
  a( b) c |
  d1 d2 |
  c( d) e |
  
  d1 d2 |
  r g, g |
  b1 a2 |
  b1. |
  b1 r2 | \bar "|."
}


vobaritone = \relative c' {
  \global
  \dynamicUp
  g4 g g2 g4 g |
  g g g2 g4 e |
  e e e e d d |
  
  e2. e4 e e |
  fis2 fis fis |
  g4 g g2 c4 c |
  b1 b4 b |
  
  b2. r4 g2 |
  e e4 e e e |
  a2 a r |
  g e4 e e e |
  
  a2 a4 r g2 |
  g1 g2 |
  g2. r4 e2 |
  e1 e2 |
  e e e4 e |
  
  e2. e4 d d |
  g2 g r4 g |
  c2 c4 c b g |
  c2 c4 c b2 |
  
  a1 a4 a |
  g2 e e4 e |
  a2. a4 a2 |
  d4 d d2 d |
  
  g,4 g g2 g4 g |
  a a a1 |
  b4 b b2 b |
  
  c1 b2 |
  a( g) fis |
  c'1 b2 |
  a( g) fis |
  
  b1 g2 |
  g1 g2 |
  b1 b2 |
  a( b) c |
  b1 b2 |
  r d, e |
  fis1 fis2 |
  g1. |
  g1 r2 \bar "|."
}


vobass = \relative c' {
  \global
  \dynamicUp
  g4 g g2 g4 g |
  e e e2 e4 e |
  a, a a a b b |
  
  c2. c4 c c |
  d2 d c |
  b4 b b2 a4 a' |
  g1 g4 g |
  
  g2. r4 g2 |
  c, c4 c c c |
  f2 f r |
  c c4 c c c |
  
  f2 f4 r f2 |
  e1 d2 |
  c2. r4 e2 |
  c1 b2 |
  a a b4 b |
  
  c2. c4 d d |
  g2 g r4 g |
  c2 c4 c b g |
  c2 c4 c b2 |
  
  a1 a4 a |
  g2 e e4 e |
  a2. a4 a2
  d,4 d d2 e4 d |
  
  d d d1 |
  d4 d d2 d |
  d1 d2 |
  
  d4 d d2 d4 d |
  d d d1 |
  d4 d d2 d |
  d4 d d2 d |
  g1 g2 |
  e( d) c |
  g'1 f2 |
  e( d) c |
  
  g'1 g2 |
  r b, c |
  d1 d2 |
  g1. |
  g1 r2 \bar "|."
 
}

lyricscore = \lyricmode {
  Све -- те Ти -- хий свя -- ты -- я сла -- вы Без -- смерт -- на -- го От -- ца Не --
  бе -- сна -- го Свя -- та -- го Бла -- жен -- на -- го, И -- и -- су -- се Хри --
  сте! При -- ше -- дше на за -- пад солн -- ца, ви -- дев -- ше свет ве --
  че -- рний, по -- ем От -- ца, по -- ем и Сы -- на и Свя --
  та -- го Ду -- ха, Бо -- га. До -- сто -- ин е -- си во вся вре -- ме -- на
  пет бы -- ти гла -- сы пре -- по -- до -- бны -- ми, Сы -- не Бо -- жий, 
  Сы -- не Бо -- жий, жи -- вот да -- яй, тем же мир Тя
  сла -- вит, мир Тя сла -- вит, мир Тя
  сла -- вит, мир Тя сла -- вит, мир Тя
  сла -- вит, мир Тя сла -- вит, сла -- вит.
}

lyricscoreii = \lyricmode {
  \repeat unfold 84 \skip 1
  Сы -- не Бо -- жий, жи -- 
  вот да -- яй, тем же мир Тя сла -- вит,
  Сы -- не Бо -- жий жи -- вот да -- яй, тем же мир Тя сла -- вит, мир Тя
  сла -- вит,
}


lyricscoreb = \lyricmode {
    Све -- те Ти -- хий свя -- ты -- я сла -- вы Без -- смерт -- на -- го От -- ца Не --
  бе -- сна -- го Свя -- та -- го Бла -- жен -- на -- го, И -- и -- су -- се Хри --
  сте! При -- ше -- дше на за -- пад солн -- ца, ви -- дев -- ше свет ве --
  че -- рний, по -- ем От -- ца, по -- ем и Сы -- на и Свя --
  та -- го Ду -- ха, Бо -- га. До -- сто -- ин е -- си во вся вре -- ме -- на
  пет бы -- ти гла -- сы пре -- по -- до -- бны -- ми,  
  
  Сы -- не Бо -- жий, жи -- 
  вот да -- яй, тем же мир Тя сла -- вит,
  Сы -- не Бо -- жий жи -- вот да -- яй, тем же мир Тя сла -- вит, мир Тя
  сла -- вит,
  
  мир Тя сла -- вит, мир Тя
  сла -- вит, мир Тя сла -- вит, сла -- вит.
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
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \new Lyrics \lyricsto "bass" \lyricscoreii

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
        \new Voice = "baritone" { \oneVoice \clef bass \vobaritone }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscore

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
        \new Voice = "bass" { \voiceTwo \clef bass \vobass }
      >>
      %\new Lyrics \lyricsto "baritone" \lyricscore
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
    piece = "Тенора"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \voiceOne \clef "G_8" \votenori }
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
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscore
      \new Lyrics \lyricsto "bass" \lyricscoreii

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
%      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
