\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Божья Мать Младенца"
  subtitle = "(Gdy sliczna Panna)"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


globali = {
  \key as \major
  \time 4/4
}

global = {
  \globali
%  \autoBeamOff
  \dynamicUp
    \override MultiMeasureRest.expand-limit = #1
    \set Score.skipBars = ##t
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

intro = \relative c { R4.*32 }
intro = {}

sopvoice = \relative c' {
  \global
  \oneVoice 
  \dynamicUp
  \secondbar
  \intro
  \oneVoice
  es4 es f g |
  as2 as |
  bes4 des c bes |
  bes2 as  | \abr
  \voiceOne es4 es f g |
  as2 as |
  bes4 des c bes |
  bes2 as \breathe | \break
  
  c4^\markup\italic"Припев." bes c as |
  bes1 | 
  g4 bes as g |
  f2 es | \break
  c'4 bes c as |
  des1 |
  c4 es des c |
  bes2 as | \break
  
  es'2^\markup\italic"Ансамбль" es |
  es1 |
  des2 des |
  des c |
  es es |
  f1 |
  c4 es des8 c bes as |
  bes2 as |
  \bar "||"


}




altvoice = \relative c' {
  \global
  \dynamicUp
  \intro
  \voiceTwo
  s1*4
  es4 es des es |
  c2 c |
  des4 f es des |
  des2 c |
  as'4 g as f |
  f1 |
  
  es4 g f es |
  des2 c |
  as'4 g ges ges |
  f1 |
  as4 c bes as |
  <g \parenthesize es>2 as |
  
  c4_\markup"А..." bes c as |
  bes1 |
  g4 bes as g |
  f2 es |
  c'4 bes c as |
  des1 |
  c4 es des8 c bes as |
  bes2 as
 

}


lyricscoreone = \lyricmode {
  \set stanza =  "1. " Бо -- жья Мать Мла -- де -- нца
  на ру -- ках ка -- ча -- ла,
  ра -- до -- ва -- лась Сы -- ну,
  ти -- хо на -- пе -- ва -- ла:
  «Ба -- ю ба -- ю, бай,
  Ди -- тя -- тко цве -- то -- чек,
  ба -- ю, ба -- ю, бай,
  Мой ро -- дной Сы -- но -- чек»
}

lyricscoretwo = \lyricmode {
  \set stanza =  "2. " Вот зве -- зда во -- схо -- дит
  пря -- мо над пе -- ще -- рой,
  се -- рдце на -- по -- лня -- я
  тре -- пе -- том и ве -- рой.
  Ба -- ю ба -- ю, бай,
  за -- сы -- пай, Мла -- де -- нец,
  ба -- ю, ба -- ю, бай,
  в_пе -- ле -- нах на се -- не.
}

lyricscorethree = \lyricmode {
  \set stanza =  "3. " И зе -- мля, и не -- бо,
  Бо -- га во -- спе -- ва -- йте!
  Ра -- до -- стью ве -- ли -- кой
  се -- рдце на -- по -- лня -- йте.
  Ба -- ю ба -- ю, бай,
  мой Мла -- де -- нец я -- сный,
  ба -- ю, ба -- ю, бай,
  мой Сы -- нок пре -- кра -- сный.
}


choirPart = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" {  \sopvoice }
        \new Voice  = "alto" {  \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscoreone }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
        
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    %ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  
\bookpart {
  \score {
    %  \transpose c bes {
    \choirPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%       \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    <<
    \choirPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
