\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

\header {
  title = "Ты спишь, о тихий Вифлеем"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


globali = {
  \key g \major
  \time 4/4
}

global = {
  \globali
  \autoBeamOff
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


violinone = \relative c'' {
  \globali
  
  \repeat volta 2 {
  \partial 4 e4 |
  d4 a8 g b4. a8 |
  g2.
   \bar "!"
  
  b4 |
  b2 ais4 b |
  d( c) e,( a) |
  g fis8 g a4 d, |
  b'2. \breathes b4 |
  b2 e4 d |
  d c e, a |
  g fis8 g b4 a |
  g2. \breathes b4 |
  b2 a4 g |
  fis2 fis4 fis |
  e fis g a |
  b2. \breathes b4 |
  b2 ais4 b |
  d c e, e' |
  d g, b4. a8 |
  g2. }
  
  e'4 |
  d4 a8 g b4. a8 |
  g2.
  
  \bar "||"
}

violintwo = \relative c' {
  \globali
  
  \repeat volta 2 {
  \partial 4 
  e8 fis |
  g2 fis |
  d2.
  \bar "!"
  
  d4 |
  d2 cis4 d |
  f( e) c( e) |
  d2 d |
  d2. \breathes d4 |
  d g gis2 |
  a4 e c e |
  d2 fis |
  g2. \breathes g4 |
  g2 fis4 e |
  dis2 dis4 dis |
  b c e2 |
  dis2. \breathes d4 |
  d2 cis4 d |
  e2 c4 e8 fis |
  g4 cis, d4. c8 |
  b2.  }
  
   e8 fis |
  g2 fis |
  d2.
  
  \bar "||"
}

alto = \relative c' {
  \globali
  \repeat volta 2 {
  \partial 4 
  
  c4 b c8 b d4. c8 |
  b2.
  \bar "!"
  
  
  g4 |
  g2 g | 
  gis4( a) a( c) |
  b a8 b c4 c |
  b2. \breathes g4 |
  g b b e |
  e2 e4 c |
  b ais8 b d4 c |
  b2. \breathes d4 |
  d b c cis |
  dis2 b |
  g4 a b a fis2. \breathes g4 |
  g2 g |
  gis4 a a c |
  b a8 g g4. fis8 |
  g2. }
  
  c4 b c8 b d4. c8 |
  b2.
  
  \bar "||"
}

cello = \relative c {
  \globali
  \repeat volta 2 {
  \partial 4 
  c4 |
  d2. d4 |
  g2.
  \bar "!"
  
  g4
  g2 g |
  c, c |
  d d |
  g,2. \breathes g'4 |
  g f e2 |
  a a,4 c |
  d4. d8 d2 |
  g2. g4 |
  g,2 a4 ais |
  b2 b' |
  e, e4 c |
  b2. \breathes g'4 |
  g,2 g' |
  c, c |
  d4 e d4. d8 |
  <d g,>2.}
  
  
  c4 |
  d2. d4 |
  g2.
  
  \bar "||"
}

violiniPart = \new Staff \with {
  instrumentName = "Violini"
  shortInstrumentName = \markup \right-column { "V1" "V2" }
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

altocelloPart = \new Staff \with {
  instrumentName = \markup \right-column { "Alto" "Cello" }
  shortInstrumentName = \markup \right-column { "Al" "Cl" }
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \clef bass \alto }
     \new Voice { \voiceTwo \cello }
  >>
  

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##t
  }

\bookpart {
  \header { piece = "Violini" }
  \score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Violin1" 
      shortInstrumentName = #"V1"
      midiInstrument = "violin"
    }
    <<
      \clef treble
      { \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
        \violinone }
    >>
    \new Staff \with {
     instrumentName = #"Violin2"
     shortInstrumentName = #"V2"      
     midiInstrument = "violin"

    }
    <<
      \clef treble
      { \violintwo }
    >>
    
    \new Staff \with {
     instrumentName = #"Alto"
     shortInstrumentName = #"A"
     midiInstrument = "violin"

    }
    <<
      { \clef alto \alto }
    >>
    \new Staff \with {
     instrumentName = #"Cello"
     shortInstrumentName = #"Vc."
     midiInstrument = "cello"

    }
      { \clef bass \cello  }
  >>
  \layout { 
    %#(layout-set-staff-size 19)
  }
  \midi { \tempo 4=120 }
}
}

\bookpart {
  \header { piece = "Violini" }
  \score {
    %  \transpose c bes {
    <<
    \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "VI"
  midiInstrument = "violin"
} <<
     \new Voice { \violinone }
  >>
      \new Staff \with {
  instrumentName = "Violin II"
  shortInstrumentName = "VII"
  midiInstrument = "violin"
} <<
     \new Voice {  \violintwo }
  >>
    
    >>
   %}  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header { piece = "Alto + cello" }
  \score {
    %  \transpose c bes {
    <<
    \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "Al"
  midiInstrument = "viola"
} <<
     \new Voice { \clef alto \alto  }
  >>
      \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl"
  midiInstrument = "cello"
} <<
     \new Voice {  \clef bass \cello }
  >>
    
    >>
   %}  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\bookpart {
  \score {
    %  \transpose c bes {
    <<
    \violiniPart
    \altocelloPart
    >>
   %}  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    <<
    \violiniPart
    \altocelloPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
