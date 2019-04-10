\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
  title = "Над вертепом ангелы хвалу поют"
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
  \key f \major
  \time 4/4
  \numericTimeSignature
  \set Score.skipBars = ##t
  \secondbar
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

tmtwo = \set Timing.measurePosition = #(ly:make-moment -1/8)
tmtwo = \partial 8

choir = \relative c' {
  \global
  \dynamicUp
 
%  }
%  }
}


lyricscommon = \lyricmode {
 
}

rup = \relative c'' {
  <a c>1~^\markup"Вст." |
  <a c>4 <bes d> <a c> <g bes> |
  \parenthesize a8^\markup"I куп." r r4 <f a>8 <e g> <f a> <g bes> |
  <a c>4 <bes d> <a c>2 | \abr
  
  f8 e f g <f a> <e g> <f a> <g bes> |
  <a c>4 <bes d> <a c> <g e'> |
  <a f'>^\markup"Припев" <a c>8 q <bes d> <a c> <g bes> <fis a> |
  <g bes>4 q8 <bes d> <a c> <g bes> <f a> <e g> | \abr
  
  <f a>4( <g bes> c8_.) a_. f_. d_. |
  <f a>4 <e g> <c f>8 r <g' bes c e>4 |
  <a c f>4^\markup"Проигрыш" <a c>8. q16 <bes d>8 <a c> <g bes> <fis a> |
  <g bes>4 q8. <bes d>16 <a c>8 <g bes> <f a> <e g> | \abr
  
  a4 bes c8 f c a |
  <f a>4 <f g> <c f>8 c16 c c8 r
  \time 2/4 s2 |
  \time 4/4   <a' c>1~ |
  <a c>4 <bes d> <a c> <g bes> | \abr
  
  <f a>8^\markup"II куп." e f g <f a>8 <e g> <f a> <g bes> |
  <a c>4 <bes d> <a c>2 |
  f8 e f g <f a> <e g> <f a> <g bes> |
  <a c>4 <bes d> <a c> <g e'> | \abr
  
  <a f'>^\markup"Припев" <a c>8 q <bes d> <a c> <g bes> <fis a> |
  <g bes>4 q8 <bes d> <a c> <g bes> <f a> <e g> |  
  a4 bes c8 a f d |
  <f a>4 <e g> <c f>8 r <g' bes c e>4 | \abr
  
  <a c f>4^\markup"Проигрыш" <a c>8. q16 <bes d>8 <a c> <g bes> <fis a> |
  <d g>4 <g bes>8. <bes d>16 <a c>4 <g bes> |
  <c, f a> <d g bes> <a' c>2
  <a c>8 <bes d> <a c> <g bes> <f a> f16 f f8 r | \abr
  
  \time 2/4 s2 |
  \time 4/4 r2^\markup"III к." <f a>8 <e g> <f a> <g bes> |
  <a c>8 q <g bes>4 <f a>2 |
  f8 e f g <f a> <e g> <f a> <g bes> | \abr
  
  <f a>8 q4 <e g>8 <f c>4. <bes e>8 |
  <f' a,>4 <c a>8 q <d bes> <c a> <bes g> <a fis> |
  <g bes>4 q8 <bes d> <a c> <g bes> <f a> <e g> |
  a4( bes) c8_. f_. c4 | \abr
  
  <f, a>4 <e g> <c f> r |
  <c e>8 <d f> <e g> <f a> <g bes> <e c'> <f d'> <g e'> | 
  <a f'>8. <a c>16 q8 q <bes d> <a c> <g bes> <fis a> |
  <d' g bes>8. <bes g'>16 q8 <bes d> <a c> <g bes> <f a> <e g> | \abr
  
  #(define afterGraceFraction (cons 1 3))
  <f a>4( <g bes>) <a c>8 <c f> c a |
   \afterGrace f2\startTrillSpan { f32_. c32_. }
  <a' f c>4\stopTrillSpan <g e bes> |
  <f c a>_. s4 r2 \bar "||"
  
}

rdown = \relative c' {
  f1~ |
  f2. e4 |
  f8 e f g s2 |
  f2~ f |
  
  c8 r r4 s2 |
  f2. s4 |
  s1 |
  s1 |
  
  s2 f4 r |
  s1 |
  r4 f2 d4 |
  s1 |

  f2~ f4 r |
  s1 |
  s2 |
  f1~ |
  f2. e4 |
  
  s1 |
  s1 |
  s2 f4 r |
  s1 |
  
  s1 |
  s1 |
  f4 g f4 r |
  s1 |
  
  r4 f2 d8 c |
  bes4 d c d |
  s2 f8 r r4 |
  s1 |
  
  <c' c'>4^. q^. | 
  f,8 e f g s2 |
  s1 |
  c,8 r r4 r2 |
  
  c8 r c4 s2 |
  s1 |
  d4 r2 c4 |
  f2 s |
  
  s1 |
  s1 |
  r2 r4 d8 c |
  s1
  
  s4 s s f8 c |
  s4 s s s |
  s4 \ottava #1 <f' a c f> \ottava #0 s2
}

lup = \relative c' {
  c1~ |
  c2. c4 |
  c8 r r4 c2 |
  c2~ c |
  
  a8 g a bes c2 |
  c2. bes4 |
  a8 c f2 d4 |
  d2. c4
  
  c2~ c8 r r4 |
  c8[ d] c bes a s s s |
  <f f,>4 s2 <d d,>4 |
  <g g,> s2 <c, c,>4 |
  
  c'2~ c4 s |
  c8 d c bes s2 |
  <c, c,>8 r q r |
  c'1~ |
  c2. c4 |
  
  s2 c |
  c c |
  a8 g a bes c2 |
  c2. bes4
  
  a8 c f2 d4 |
  d2. c4  
  c2~ c8 r r4 |
  c8 d c bes a s s s |
  
  s2. <d, d,>4
  s1
  s
  s
  
  <c c,>4_. q_. |
  s2 c' |
  c8 f c d c d c bes |
  a g a bes c2 
  
  s2 s4 s8 c~ |
  c f~ f2 <d, d,>4 |
  s1 |
  c'1 |
  
  s1 |
  s |
  s |
  s |
  
  s1 |
  s4 a8 f s2 |
  s1
  
}

ldown = \relative c {
  f8^. e^. f^. g^. f e f g |
  f e f g f bes, d e |
  f r r4 f4^. c^. |
  f8 e f g f e f g |
  
  f8 r r4 f^. c^. |
  f8 e f g  f c d e |
  f2. d4 |
  g2. c,4 |
  
  f8 e f g a s s4 |
  r4 r r8 <c c,> <d d,> <e e,> |
  s4 <f, c'>2 s4 |
  s <g d'>2 s4 |
  
  f4 g s2 |
  c,2 <f a>8 r s4 |
  s2 |
  f8 e f g f e f g |
  f e f g f bes, d e |
  
  <f c'>8 r r4 f^. c^. |
  f8 e f g f e f g |
  f8 r r4 f^. c^.
  f8 e f g f c d e |
  
  f2. d4 |
  g2. c,4 |
  f8 e f g a s s4 |
  r2 r8 <c c,> <d d,> <e e,> |
  
  <f, f,>8 <f f'>~ f2 s4
  <g, g'>8 <f f'> <e e'> <d d'> <e e'> <c c'> <d d'> <e e'> |
  <f f'> e' f g a^. f'^. c^. a^. |
  r4 <c, c,>4 <f f'> r
  
  s2 |
  <f a c>8 r r4 f c |
  f2~ f |
  f4 r f c
  
  c'8 d c bes a bes a g |
  f2. s4 |
  <g g,>4 <d' g,>2 <c, c,>4 |
  f g a8^. c^. a4
  
  c8( d c bes) a^- f16^. f^. f8^. r |
  <c c,>2. <bes bes'>8^. <g g'>^. |
  <f f'>4 <f' c>2 <d d,>4 |
  <g g,>8 <f f,> <e e,> <d d,> <e e,> <c c,> <d d,> <e e,> |
  
  <f f,>8 e f g a8^. c^. s4 |
  a8^. f^. c d r <c c,> <d d,> <e e,> |
  <f f,>4^.\ottava #-1 <f, f,>^. \ottava #0 r2
  
  
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
    piece = "Piano F-dur"
  }
  \score {
   % \transpose f e
    <<     

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
    piece = "Piano E-dur"
  }
  \score {
    \transpose f e
    <<     

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
    
    % \transpose f e
      <<
      
      \pianoPart
    >>
    %  }  % transposeµ

    \midi {
      \tempo 4=100
    }
  }
}



