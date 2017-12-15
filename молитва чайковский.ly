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
    indent = 3
  }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \set Score.skipBars = ##t
  \secondbar
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }



rup = \relative c'' {
  \tempo "Andante (Спокойно)"
  <g-2 b-4>4\p <g-1 b-4> 4. <fis-2 a-3>8
  <g-1 c-5>4 <g-1 b-4>2 |
  <fis-2 a-4>4(\< <e g>) <e-2 a-4> |
  <dis-2 b'-5>2.\!
  b'4\> e,4.-2( a8-4) |
  a4\<-5 d,4.-3( fis8-4) | \abr
  g4-5 g-4 e'8.(-5 a,16)-2 |
  a2.-4\mf\> |
  b4-5\p b4.-4 a8 |
  c4\< b4. b8-2 |
  c4-3 d e |
  fis2->\f(-5 e4) | \abr
  dis4-3 e4.(-5\> cis8)-4 |
  d4-5 b c-4 |
  b8.->(-4 a16)-3 a4-5 fis(-4 |
  g)\p r g'-5 |
  fis8.->-4 c16-2 c4-1 b8-4( a) |
  b4-4 r g | \abr
  fis8.-> c16 c4 \clef bass b8( a) |
  b4\dim e-5 d-3 |
  \clef treble e2\finger\markup\tied-lyric #"4~3" fis4 |
  g2 r4 |
  r g-4 <g-1 b-2> |
  d'2.\pp \bar "|."
  
}

rdown = \relative c' {
 s2.*4
 d4 cis2-1 |
 c4 b-1( c-2) |
 d-1 e g-1 |
 g-3( fis8 e fis4) |
 g4-3 g4.-1 fis8 |
 g4 g4. g8-1 |
 g4 <g b> <g c> |
 <fis-1 cis'-2>2. |
 b4 b( a)-1 |
 a-2 g g-2 |
 e2 d8(-2 c |
 b4) r b' |
 c8.-1 c16 c4 fis,-2 |
 g-1 r b, |
 c8. c16 c4 fis, |
 g g g |
 cis2-2 c4 |
 b2 b4(-1 |
 <b d>2.) |
 <g' b>
}

lup = \relative c {
 s2.*4 |
 e4 e2 |
 d4 d2 |
 g4-1 g-1 a-1 |
 a2(-2 d4) |
 s2.*4 |
 fis4-1 e2-1 |
 d4-1 d-1 c-1 |
 g2-2 d4~ |
 d r d |
 es2.->(-1 |
 d4) r d |
 es2.->(-1 |
 d4) d-1 b-2 |
 bes2-3 a4-4 |
 r d2~ |
 d2.~ |
 d
  
}

ldown = \relative c' {
 <g-4 d'-1>4 <g-3 d'-1>4. <d-5 d'-1>8
 <e-5 c'-2>4 <g-4 d'-1>2 |
 <d-5 d'>4( <e-4 b'-1>) <c-4 e-2> |
 <b\finger\markup\tied-lyric #"5~4" fis'-1>2. |
 gis4 a-3( g) |
 fis-5 g-5( a) |
 b-3 c-5 cis-4 |
 d2.-5 |
 <g-4 d'-1>4 <g-3 d'-1>4. <d d'>8 |
 <e-5 c'-1>4 <g-5 d'-2> f'-1 |
 e-2( d-1 c8 b) |
 ais2.-4 |
 a4-5 gis-4( g) |
 fis-4 g-3 e-4 |
 c2-5 d4-1( |
 g,8) g g g g g |
 g g g g g g |
 g g g g g g |
 g g g g g g |
 g g g g g g |
 g g g g g g |
 g2.~ |
 g~ |
 g
  
  
}

right = \relative c' {
  \global
  << \rup \\ \rdown >>
}

left = \relative c {
  \global
  << \lup \\ \ldown >>
 
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>


\bookpart {
  \header {
  dedication = "Володе Давыдову"
  title = "Детский альбом"
  subtitle = "1. Утренняя молитва"
  composer = "П. Чайковский"
  opus = "Op 39"
  piece = "f-dur"

  }
  \score {
   \transpose g f
    <<     

      \pianoPart
    >>
    


    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano
      }
    }
    \midi {
      \tempo 4=100
    }
  }
}


