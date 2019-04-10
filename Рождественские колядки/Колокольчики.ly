\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
  title = "Колокольчики"
  composer = "Музыка и слова неизвестного автора"
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
  \key d \major
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
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

tmtwo = \set Timing.measurePosition = #(ly:make-moment -1/4)
tmtwo = \partial 4

sopVoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  \repeat volta 2
  {
    R4 |
    R2*3 |
    r4 fis8\mf g |
    a a b b |
    a4 d |
    a b | \abr
    a fis8 g |
    a a b b |
    a4 d | \abr
    
    a b |
    a a8 a |
    b2 b \abr
    b8 d cis b |
    a4 a8 a |
    g2 g \abr
    a8 b a g |
    fis4 a |
    b cis |
    d
  }
}

altVoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
    \repeat volta 2 {
      R4 |
    R2*3 |
    r4 d8\mf e |
    fis fis g g |
    fis4 fis8 fis |
    fis fis g g |
    fis fis d e |
    fis fis g g |
    fis4 fis8 fis
    
    fis fis g g |
    fis4 r |
    r g8 g |
    g4 g |
    g8 b a g |
    fis4 r |
    r e8 e |
    e4 e |
    fis8 g fis e |
    d4 fis8 fis |
    g g g g |
    fis4
    }
}


lyricssopone = \lyricmode {
 \set stanza = "1." Ко -- ло -- коль -- чи -- ки зве -- нят: бим -- бом! Бим -- бом!
 О Хрис -- те нам го -- во -- рят: бим -- бом! Бим -- бом! Ны -- не ра -- дость
 ра -- дость, тор -- же -- ство, ны -- не празд -- ник,
 празд -- ник Рож -- де -- ство! Бим -- бом! Бим -- бом!
}


lyricssoptwo = \lyricmode {
 \set stanza = "2." След о -- стал -- ся на сне -- гу: бе -- ло кру -- гом.
 Са -- ни по сне -- гу бе -- гут: бим -- бом! Бим -- бом! Зим -- ний ве -- чер,
 на дво -- ре мо -- роз, в_э -- тот ве -- чер
 был рож -- дён Хрис -- тос. Бим -- бом! Бим -- бом!
}


lyricsaltone = \lyricmode {
 \set stanza = "1." Ко -- ло -- коль -- чи -- ки зве -- нят бим -- бом! Бим бом! Бим -- бом!
 Бим -- бом! О Хрис -- те нам го -- во -- рят: бим бом!
 Бим -- бом! Бим -- бом! Бом! Ны -- не ра -- дость,
 ра -- дость, тор -- же -- ство, ны -- не празд -- ник,
 празд -- ник Рож -- де -- ство! Бим -- бом! Бим -- бом! Бим -- бом! Бом!
}


lyricsalttwo = \lyricmode {
 \set stanza = "2." След о -- стал -- ся на сне -- гу: бе -- ло кру -- гом,
 бе -- ло кру -- гом. Са -- ни по сне -- гу бе -- гут: бим бом!
 Бим -- бом! Бим -- бом! Бом! Зим -- ний ве -- чер,
 на дво -- ре мо -- роз, в_э -- тот ве -- чер
 был рож -- дён Хрис -- тос. Бим -- бом! Бим -- бом! Бим -- бом! Бом!
}




right = \relative c''' {
  \global
  \oneVoice
  \tempo "Подвижно"
  \autoBeamOn
  \partial 4
  
    \repeat volta 2 {
    fis8 d16( a) |
    \acciaccatura g'8( a8) fis16( d b) a-. b-. cis-. |
    d8-. d-. fis d16( a) |
    \acciaccatura  g'8( a) fis16( d b) e-. b-. cis-. | \abr
    
    d4 fis,8-.  a-. |
    d-. a-. b-. d-. |
    a4 fis'8 d16( a) |
    \acciaccatura  g'8( a) fis16( d b) a-. b-. g-. | \abr
    
    a4 fis8-. a-. |
    d-. a-. b-. d-. |
    a4 fis'8 d16( a) | \abr
    
    \acciaccatura  g'8( a) fis16( d b) a-. b-. g-. |
    a4 r |
    r <b, g>8 d |
    <g d b>4 q | \abr
    <d b> <e cis g> |
    <d a fis> r |
    r <b g e> |
    <a e> <cis e,> \abr
    
    r <cis a e> |
    <d a fis> fis8-. d-. |
    g-. d-. r \acciaccatura gis8( a) |
    \acciaccatura cis8( d) r
  }  
}

left = \relative c'' {
  \global
  \oneVoice
  \autoBeamOn
  \partial 4
  \repeat volta 2 {
 
    \dynamicUp
    r4\mf |
    <fis, d>8 a g a |
    <fis d> a <fis d> a |
    <fis d> a <g d> a |
    <a fis> a d,16 fis a fis |
    d fis a fis d e g e |
    d fis a fis <fis d>8 a |
    <fis d> a <g d> a |
    
    <fis d> a d,16 fis a fis |
    d fis a fis d e g e |
    d8 a' <fis d > a |
    
    <a fis> a <g e d> a |
    <fis d>4 r |
    r 
    
    \clef bass d8 b |
    d4 g, |
    e'8 g fis, a |
    b4 r |
    r b8 g |
    a4 fis |
    r fis |
    d \clef treble d'16 fis a fis |
    g,8 <d' g b> a <e' a cis> |
    <d fis a d>4
  }
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \left }
>>

choirpart = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \sopVoice }
        \new Lyrics \lyricsto "soprano" { \lyricssopone }
        \new Lyrics \lyricsto "soprano" { \lyricssoptwo }
      >> 

      \new Staff = "downstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "alto" { \oneVoice \altVoice }
        \new Lyrics \lyricsto "alto" { \lyricsaltone }
        \new Lyrics \lyricsto "alto" { \lyricsalttwo }
      >>

    >>

\bookpart {
  \header {
    piece = "es-dur"
  }

  \score {
    \transpose d es
    <<     
      \choirpart
      \pianoPart
    >>
 
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
}

\bookpart {
  \header {
    piece = "e-dur"
  }

  \score {
    \transpose d e
    <<     
      \choirpart
      \pianoPart
    >>
 
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
}


\bookpart {
    \score {
      \unfoldRepeats
     \transpose d e
      <<
      \choirpart
      \pianoPart  
      >>
    %  }  % transposeµ

    \midi {
      \tempo 4=100
    }
  }
}



