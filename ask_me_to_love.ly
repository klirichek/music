\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "Ask me to love no more"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key bes \major
  \time 3/4
  \set Score.markFormatter = #format-mark-box-numbers
  \override MultiMeasureRest.expand-limit = #1
  \secondbar

  %\numericTimeSignature
  
}

U = { \change Staff = right }
D = { \change Staff = left }



%use this as temporary line break
abr = \tag #'BR { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

vocalnotes = \relative c'' {
  \global
  \autoBeamOff
  R2.*5
  bes4.\p c8 d4 |
  c2 f,4 |
  d8 es f4 bes |
  a8 bes c4 d |
  
  c8 d es4 f |
  d8[( c] bes4) r |
  R2. |
  r4 r d |
  c8 d es4 f |
  d8[( c] bes4) d |
  c8[( bes] a4) bes8[( g]) |
  fis4. g8 a d, |
  bes'4. c8 d g, |
  es'4. d8( c[ bes] |
  a) d bes4 a8[( g]) |
  g2 r4 |
  
  
  r r d' |
  b g g' |
  g d d16[( es f8]) |
  f4 b, d8[( g,]) |
  
  c4. es8 d4 |
  es2 es8 d |
  c4. b8 c4 |
  d g, es'8 d |
  
  c4.( d8) c[( b]) |
  c2 c4 |
  a f f' |
  d bes g |
  
  es c c' |
  a f g8 a |
  bes2 c4 |
  d8[( c]) bes[( a]) g f |
  e2 a8 bes |
  c4 bes8[( a]) g[( f]) |
  f g a4 g8[( f]) |
  f2 r4
  
  R2. |
  r4 r a |
  bes8 a bes4 g |
  c f, d' |
  
  es8 d es4 c |
  f c d |
  es8[( d c d]) c[( bes]) |
  a2 f8[( d]) |
  
  es2 c4 |
  d8 es f4 bes8[( g]) |
  as2 f4 |
  g8 a bes4 a |
  
  bes8 c d4\< c |
  d8 es f2 |
  es8\f [( d]) es[( d]) c[( bes]) |
  bes2 f8 d
  
  es2 c4 |
  d8 es f4 bes8[( g]) |
  as2 f4 |
  g8 a bes4 a |
  
  bes8 c d4\< c |
  d8 es f2 |
  es8\f [( d]) es[( d]) c[( bes]) |
  bes2.
  
   \bar "||"
}

% violin one     
vinotes = \relative c'' {
  \global
  bes4.->(\f c8 d4) |
  c2-- c4-.\p |
  bes4 r r |
  r r f'4-.\f | \abr
  
  g8->( f es d c bes) |
  bes2 r4 |
  d2 f,4-. |
  f2 bes4-. |
  a2 r4 | \abr
  
  % page 2
  g4 f es |
  d8->( es f4) c'-. |
  es8--( d c->) bes4 a8 |
  bes2 bes4 | \abr
  
  g4 f es |
  d8->( es f4-.) bes |
  a2 bes4 |
  fis4. g8 d4 |
  d bes'8 c g4 | \abr
  
  % page 3
  g4. g8 fis g |
  g2 fis4 |
  g4. fis8( g bes |
  a c bes4 a) |
  g2 g4 | \abr
  
  b2 b4 |
  b2 d4 |
  c4.( es8) b4 |
  c2 g4 |
  c4. b8 c4 | \abr
  
  % page 4
  b2 c4 |
  as4 g2 |
  g4 c g |
  a2 c8 a |
  bes2 g4 | \abr
  
  g2 c4 |
  a2 g8 f |
  f4 bes c |
  d bes g |
  e2 a8 g | \abr
  
  % page 5
  f2 g8 f |
  f2 e4 |
  f2 c'8 a |
  d4 a g8 f |
  f e f g a4 | \abr
  
  bes2 g4 c2 d4 |
  es c2 |
  c4 a bes |
  bes g g | \abr
  
  % page 6
  a8 g f es d4 |
  bes'8. g16 es4 f |
  bes2 g4 |
  es'8. c16 as4 bes | \abr
  
  g bes a |
  bes2 c4 |
  d4. es8 f d |
  c4 bes a |
  bes a8 g f4 | \abr
  
  % page 7
  bes16-- a g f es4 f |
  bes2\p bes4 |
  es16 d c bes as4 bes |
  es bes a | \abr
  
  bes2 c4 d4. es8 f d |
  c4 \tuplet 5/4 { f16 es d c bes } a4 |
  bes2.
  
  
   \bar "||"
}

%violin two 
viinotes = \relative c' {
  \global
  f4->\f r bes |
  g2 f4\p |
  f r bes\f |
  a8->( bes c4) bes | 
  
  bes2 a4 |
  bes2 r4 |
  g2 f4-. |
  d2 e4-. |
  f2 r4 | 
  
  c2 c4 |
  bes2 g'4 |
  es8->( f g4-.) f |
  f8->( es d4-.) f |
  
  c2 c4 |
  bes8->( c d4-.) f |
  es2 es4 |
  d4. es8 d c |
  bes4 g'8 a g f |
  
  % page 3
  es4-. r r |
  d2 d4 |
  d4. c8( d4 |
  es) g-. fis-. |
  g2 g4 |
  
  g2 g4 |
  f2 g4 |
  g( f) f-. |
  es2 es4 |
  f2. |
  
  % page 4
  d2 g4 |
  f g f |
  es2 es4 |
  f2 f4 |
  f2 g4 |
  
  e2 g4 |
  f2 g8 f |
  f2 a4 |
  bes f d |
  c2 e4 |
  
  % page 5
  f2 d4 |
  bes4 c2 |
  c f4 |
  f f e |
  f8 r r4 f |
  
  e2 e4 |
  f2 bes4 |
  bes g2 |
  f f4 |
  es2 c4 
  
  % page 6
  c2 d4 |
  es2. |
  d8 es f4 g |
  as2 f4 |
  es4 f f |
  f8 es d4 f |
  bes2 bes4 |
  g f f |
  d2 f4 |
  
  % page 7
  g2 f4 |
  d8 e f4 g |
  as2 f4 |
  es f f |
  
  f8 es d4 f |
  bes2 bes4 |
  g f es |
  d2.
  
}

%alt one intro
viiinotes = \relative c' {
  \global
  d4->\f r f |
  es2 f4-^\f |
  d8->( es f4) e |
  f4 r f |
  
  es4-- c8( d) es4-. |
  d2 r4 |
  es2 c4-. |
  bes2 c4-. |
  c2 r4 |
  
  % page 2
  bes4 a a |
  f( bes ) es |
  g8( f es4) c |
  bes2 d4 |
  
  bes4 a a |
  bes r d |
  c2 bes4 |
  a2 g8 a |
  bes4 s2 |
  
  % page 3
  es4. d8 c bes |
  a4( bes) a4-. |
  bes4. a8( g4 |
  a) d4-. c-. |
  b2 b4 |
  
  d2 d4 |
  d2 b4 |
  c( as) g4-. |
  c2 c4 |
  f2 c4 |
  
  % page 4
  d2 c4 |
  c es d |
  c2 c4 |
  c2 c4 |
  d2 d4 |
  
  c2 c4 |
  c2 c4 |
  bes2 es4 |
  d4 s2 |
  g,2 c4 |
  
  % page 5
  c4 a bes |
  bes c bes |
  a2 c4 |
  bes c bes\prall |
  a2-> c4 |
  
  bes2 c4 |
  c2 f4 |
  es es2 |
  c2 d4 |
  bes2 c4 |
  
  % page 6
  d,2 es4 |
  f2. |
  es8 f g4 a |
  bes2 g4 |
  
  bes4 bes f' |
  f8 es d4 f |
  f2 f4 |
  es d c |
  bes2 r4 |
  
  % page 7
  bes2 c4 |
  bes8 c d4 d |
  es2 bes4 |
  bes bes c |
  
  bes2 c4 |
  f2 f4 |
  es d c |
  bes2.
  
  \bar "||"
}

%alt two intro
cellonotes = \relative c {
 \global
 bes4-> r bes'\downbow~ |
 bes--\pp g4-. f-. |
 bes4 bes,-. g-. |
 f-- f'-. d-. |
 
 es4 f f, |
 bes2 r4 |
 bes'4-- g-. a-. |
 bes-. bes,-. g-. |
 f-. f'-. d-. |
 
 % page 2
 es4 f f, |
 bes8->( c d4-.) es |
 c8->( d es4)-. f |
 d8 c bes4 bes' |
 
 es, f f, |
 bes2. |
 c2. |
 d8 es d c bes a |
 g4 g'8 f es d |
 
 % page 3
 c d c bes a g |
 d'2 d,4 |
 g4. f8( bes g |
 c a d4) d, |
 g2. |
 
 g'2 g,4-. |
 g'2 f4-. |
 es( d) g-. |
 c c, bes |
 as2.
 
 % page 4
 g2 es4 |
 f4-. g2 |
 c c4 |
 f f,8 g a f |
 bes2. |
 
 c4. d8 es c |
 f2 es4 |
 d2 c4 |
 bes2. |
 c4 c, bes' |
 
 % page 5
 a4 f bes |
 g c c, |
 f4. g8 a f |
 bes g c4 c, |
 f2. |
 
 g2 c4 |
 a2 bes4 |
 g c bes |
 a f bes |
 g es es'|
 
 % page 6
 f2 f,4 |
 g2 a4 |
 bes bes' bes, |
 c2 d4 |
 
 es d8 es f es |
 d c bes4 a |
 bes4. c8 d bes |
 es4 f f, |
 bes2 f4 |
 
 % page 7
 g2 f4 |
 bes bes' bes, |
 c2 d4 |
 es d8 es f es |
 d c bes4 a |
 bes4. c8 d bes |
 es4 f f, |
 bes,2.
 
 
}


pianoleftup = \relative c {
 \global
 r1
}

pianoleftdown = \relative c {
 \global
 r1
}

pianorightnotes = \relative c' {
   \global
   <d f bes>2 <f bes d>4 |
   <es g c> 2 <c f>4 |
   <d f>2 <c e bes'>4 |
   <c f a>2 <f bes>4 | \abr
   
   << { bes2 a4 } \\ { g4 f2 } >> |
   <d f bes>2 r4 |
   <es g>2 <c g f>4 |
   <d f>2 < c e bes'>4 |
   <c f a>2\arpeggio <f bes>4-. | \abr
   
   % page 2
   <g bes>4 <f a>2 |
   <d f bes>2\arpeggio <c es g>4 |
   <c es g c>2\arpeggio <c f>4 |
   <d f bes>2. | \abr
   
   <g c>4 f < c f a> |
   <d f bes>2\arpeggio r4 |
   <c es a>2.\arpeggio |
   <d fis a>2 r4 |
   <bes d g>2\arpeggio s4 | \abr
   
   % page 3
   <es g c>2 r4 |
   << <d g>2 \\ { a4 bes} >> <a d fis>4 |
   <bes d g>2\arpeggio r4 |
   <es a>4-- <bes d g>-. <a d fis>-. |
   r8 b16( d <b d g>2) | \abr
   
   <d g b>2 <b d g>4\arpeggio |
   <d g b>2\arpeggio g4 |
   << { c2 b4 } \\ { g4 f2 } >> |
   <e g c>2. |
   <c f>2. | \abr
   
   %page 4
   << { <g' b>8 a g2 } \\ { d2 c4 } >> |
   <c f as>4 << g'2 \\ { <es g>4 <d f> } >> |
  < es g c>2.\arpeggio |
  << { a2 f4 } \\ <c f>2. >> |
  <d f bes>2.\arpeggio | \abr
  
  c'8 bes16 a g8 f es4 |
  <a, c f>2\arpeggio <c f>4 |
  <bes f'>2\arpeggio <c f a>4 |
  <d f bes>2.\arpeggio |
  <c e g>2.\arpeggio | \abr
  
  % page 5
  << { f8 e f2 } \\ c2. >> |
  << { d4 f e} \\ bes2. >> |
  <a c f>2. |
  <d f bes>4 <c f a > < g c e> |
  <a c f> << { c'4 a } \\ f2 >> | \abr
  
  <bes, e g>2 e4 |
  <c f>2 <d f>4 |
  <es bes'>4 <es g c>2 |
  <f c'>2 <d f bes>4
  <es bes'>2 <g c>4 | \abr
  
   % page 6
   <c, f a>2\arpeggio <a d>4-. |
   <bes es g>2\arpeggio <c f>4 |
   << {f4 bes8 c} \\ d,2 >> d'4 |
   <as es'>2 <f bes>4 | \abr
   
   <g bes>4 f8 g f es |
   << {r4 f2 } \\ { d2 c4 } >> |
   <d f bes>2\arpeggio <bes d f>4 |
   <c g'>4 <bes d f> <c f a> |
   <d f bes>2\arpeggio <a d f>4 | \abr
   
   % page 7
   <bes es g>2 <c f>4 |
   << { f bes} \\ d,2 >> <f bes d>4\arpeggio  |
   <as es'>2 <f bes>4 |
   <g bes>4 f8 g f es | \abr
   
   <d f bes>2 <c f>4 |
   <d f>2 <f bes>4 |
   <es g c> <d f bes> <c f a> |
   
   r8 f,16 bes d f <bes f d bes f>4. |
   
   
   
}


pianoleftnotes = \relative c {
  \global
  bes2 bes'4~ |
  bes2 a4 |
  bes bes, g |
  f f' d |
  
  es4 f2 |
  bes2 r4 |
  bes2 a4-. |
  bes2 g4 |
  f2 d4-. |
  
  %page 2
  << {c'2 s4}  \\ { es,4 f2 } >> |
  bes2 es,4 |
  c8 d es4 f |
  bes2. |
  
  es,4 f f, |
  bes-. bes'2 |
  c,2. |
  d4 r d-. |
  g2 s4 |
  
  % page 3
  c,2 a4-. |
  d2 d4-. |
  g2 r4 |
  c,4-- d2-. |
  g4. a8 b4 | \abr
  
  g2. |
  g8 as g f es d |
  es4 d g |
  c2. |
  as8 g f2 |
  
  % page 4
  g2 es4 |
  f4 g2 |
  c4 c,8 d es c |
  f2 f4 |
  bes2. |
  
  <g c,>4 r r |
  f2 es4 |
  d2 c4 |
  bes4. c8 d bes |
  c2 bes'4 |
  
  % page 5
  a4 f bes |
  g c,2 |
  f2 a4 |
  bes c2 |
  f,4 a f | \abr
  
  g2 c4 |
  a8 g f4 bes |
  g c bes |
  a2 bes4 |
  g2 es4 | \abr
  
  % page 6
  f2 f4-. |
  g2 a4-. |
  bes2 bes4 |
  c2 d4 |
  
  es4 r2 |
  bes2 a4 |
  bes2 bes,4 |
  es4 f f, |
  bes bes' f |
  
  % page 7
  g2 a4 |
  bes2 bes4 |
  c2 d4 |
  es4 r2 |
  
  bes2 a4 |
  bes bes, d |
  es f f, |
  
  bes2.
  
  
 
}

vocscore = \new Staff \with { midiInstrument = "voice oohs" }
{
  \oneVoice \vocalnotes
}

viscore = \new Staff \with { instrumentName = "V1" shortInstrumentName = "V1" midiInstrument = "violin" }
{
  \oneVoice \vinotes
}

viiscore = \new Staff \with { instrumentName = "V2" shortInstrumentName = "V2" midiInstrument = "violin" }
{
  \oneVoice \viinotes
}

viiiscore = \new Staff \with { instrumentName = "Alt" shortInstrumentName = "A" midiInstrument = "viola" }
{
  \clef alto \viiinotes
}

celloscore = \new Staff \with { instrumentName = "Cello" shortInstrumentName = "C" midiInstrument = "violin" }
{
  \clef bass \cellonotes
}


pianopart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \pianorightnotes
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \pianoleftnotes }
  >>
  
  
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }

\bookpart {
  \header { piece = "Voice + v-ni" }
  \paper { system-separator-markup = \slashSeparator }
  \score {
   <<

      \vocscore
    \new StaffGroup <<
        \viscore
        \viiscore
        \viiiscore
        \celloscore
      >>
%      \pianopart

  >>
    \layout {
%      #(layout-set-staff-size 14)
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Instruments" }
  \paper { system-separator-markup = \slashSeparator }
  \score {
   <<

    \new StaffGroup <<
        \viscore
        \viiscore
        \viiiscore
        \celloscore
      >>

        \pianopart
  >>
    \layout {
%      #(layout-set-staff-size 14)
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}


\bookpart {
  \header { piece = "Violini" }
   \paper { system-separator-markup = \slashSeparator }
  \score {
    << \viscore \viiscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Alto" }
  \score {
    << \viiiscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Cello" }
  \score {
    << \celloscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Piano" }
   \paper { system-separator-markup = \slashSeparator page-count = #2 }
  \score {
    << \pianopart >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}


  


\bookpart {
  \score {
   \unfoldRepeats \articulate << 
       %  \fscore

        \viscore
        \viiscore
        \viiiscore
        \celloscore

%  \choirpart
        \pianopart
 >>
    \midi {
      \tempo 4=90
    }
  }      
}

