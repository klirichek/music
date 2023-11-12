\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = ""
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
  \time 4/4
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


voicenotes = \relative c'' {
  \global
  \autoBeamOff
  \tempo Allegro \partial 8 R8 |
  
  R1*2
  
  \repeat volta 2 {
  r4 bes\mf r f'8. f16 |
  d8 bes c f, bes16[( c bes c] d[ es d es] |
  c[ d c d] es8) f d4 r |
  
  r4 f8. f16 d8 bes c f, |
  bes16[( c bes c] d[ es d es] c[ d c d] es[ f es f] |
  d[ f es d] c8.)  bes16 bes4 r8 f |
  
  d8[( f] bes16[ c]) bes8 f4 r8 bes |
  f8[( bes ] d16[ es]) d8 bes4 r8 d |
  bes8[( d] f16[ g]) f8 d8[( bes]) r d
  
  f16[( es d8] es16[ d c8] d16[ c bes8] c16[ bes a8] |
  bes16[ a g8] a16[ bes16)] c8 a4. g16[( f]) |
  f4~( f16[ g f g] f4~ f16[ g f g] |
  f4.) g8( a16[ bes c8] a16[ bes c8] |
  bes16[ c d8] d16[ e]) f8 a,4. g16[( f]) |
  
  }
  \alternative {
    { f2 r}
    
    %page 4
    { f r }
  }
  r4 r8 f8 bes8. ( [ c16 bes8]) a |
  \repeat volta 2 {
    g4 r8 bes es8.[( f16 es8]) d |
    c4 r8 f16[( es] d[ es c d] es8[ d]) |
    c16[( d]) bes8 a16[ bes] g8 d'4 bes8 d |
    g,8 r a16[( bes]) c8 fis,4 r8 es'16[( d] |
    
    c16[ d es d] c[ d bes c]) a[( bes]) c8 bes a16[( g]) |
    g4 r8 g c8.[( d16 c8]) bes |
    a4 r8 c f8.[( g16 f8]) es |
    
    d4 r8 es16[( d] c[ d c d] es[ f d es] |
    f8[ es] d16[ es c8])  b8 g8 c16[( d es8]) |
    
    d16[( es f8]) e8 d16[( c]) c4 g8 c |
    a4 f8 f' d4 bes8 e |
    c4 r8 f16[( es] d[ es c d] es8 d] |
    
    c16[ d bes c] a[ bes g a] ) bes[( c]) d8 es16[( d]) c[( bes])
    
    
   }
   \alternative {
   { bes4 r8 f bes8.[( c16 bes8]) a }
   { bes2. s4 }
   }
   \bar "||"
}

% violin one     
vinotes = \relative c'' {
  \global
  \tempo Allegro \partial 8 f8 |
  d8-> bes c f,-. bes16 c bes c d es d es |
  c d c d es f es f d f es d c8.-> bes16 | \abr
  
  \repeat volta 2 {
  bes4 r8\f f'-. d-> bes-. r f'\mf |
  d-> bes-. c-. f,-. bes-. bes-. bes-. d-. |
  c4 c d f8 bes, | \abr
  
  a16 bes a bes c bes c a d8-. bes-. c-. f,-. |
  bes-. bes-. bes-. d-. c-. c-. c-. c-. |
  d-. es-. c4-. d16 f es d c8.-- bes16 | \abr
  
  bes4 r8 f8-.\p  d-. f-. bes16( c bes8) |
  f4 r8 bes-.\mp f-. bes-. d16( es d8) | 
  d4 r8 d-.\mf bes-. d-. f-. d-. | \abr
  
  % page 3
  bes8-- r es--\mp r d-- r c-- r |
  bes-- r a-- r a4 g |
  f16\p( g f g f8-.) f f4. f8 | \abr
  f4. e8-. f-. a-. a16( bes c8) |
  bes8-.\< d d16( e f8) a8-.\! r e-. r  
  
  }
  \alternative {
    { f4 r8 f8-.\f bes,16->(c d8) 	c4\prall | \abr}
    
    %page 4
    { f4 r8 g,8\p a4-- r8 a-. }
  }
  bes2--~ bes4. f8-. |
  \repeat volta 2 {
  g4-- r8 bes-. es4-- r8 es-. | \abr
  c4-- f8-. es-. d-. r es-. d-. |
  c-. bes-. a'-. g-. fis4 f-. |
  g8.--( f16) es d c bes a4 g16 f es d | \abr
  
  % page 5
  es8-. d-. c'-. bes-. a-. es'-. d-. fis,-. |
  g4-- r8 g-- c4-- r8 bes-. |
  a4-- r8 c-. f4-- r8 es-. | \abr
  
  d4.-- d8-. c4 es |
  f8--( es d4) b c8-. es-. |
  d-. c-. es-. d-. c4-- g-- | \abr
  
  % page 6
  a4-_ f-_ bes-_ bes-_ |
  c-. f8-. es-. d r es-. c-. |
  c-. bes-. a-. g'-. f-. d-. c-. c-. | \abr
   }
   \alternative {
   {bes4-- r8 f8-. bes4-- r8 f8-. }
   { bes2. s4 }
   }
   \bar "||"
}

%violin two 
viinotes = \relative c'' {
  \global
  \partial 8 f8-. |
  d-. bes c-. f, bes g bes bes |
  g g a a bes bes bes a | 
  \repeat volta 2 {
    bes4-. r8 c-.\f bes4-> r8 c |
    bes4-. f g bes |
    bes-. a-. bes-. bes8-. r |
    
    % page 2
    a16 bes a bes c bes c a bes4-_ f-_ |
    d-_ f8-. f-. g-. bes-. a-. a-. |
    bes-. bes-. bes-. a\prall bes4-_ f-_ | 
    
    bes4 r8 d, bes-. d-. f-. d-. |
    d4 r8 f-. d-. f-. bes-. bes-. |
    bes4 r8 bes-. f-. bes-. d-. bes-. |
    
    % page 3
    f8-- r a--\mp r bes-- r f-- r |
    f-- r f--\p r f4 e |
    f r r2 |
    
    r2 f4 f16( g a8) |
    bes8\< r bes16( c d8) f8-. r d-.\> r \! 
  }
  \alternative {
  {c4 r8 a8-.\f f bes4-> a8}
  {c4 r r r8 c,-.}
  }
  f8.->(g16 f8) es-. d4.-- d8-.
  \repeat volta 2 {
  es4-- r8 f-. g4-- r8 bes8-. | 
  
  a4-- bes8-. a-. bes-. r bes-. a-. |
  g-. f-. es'-. e-. d4 bes |
  bes-. g-. fis-- g8-. r |
  
  % page 5
  r4 fis8 g fis4.\prall fis8 |
  g4-- r8 g-. g4-- r8 es8-. |
  f4-- r8 a-. bes4-- r8 a-. |
  
  bes4.-- a8-. g4 g |
  c as g g8 g |
  as4-- g8-. b-. g4-- g-- |
  
  % page 6
  f4-_ f-_ f-_ es8-. g-. |
  a4-. bes8-. a-. bes r bes-. a-. |
  g-. g-. a-. bes-. bes-.\< bes-. bes-. a-. \!|
  }
  \alternative {
    { bes4-- r8 f-. d4-- r8 d-. }
    { f2. s4 }
  }
}

%alt one intro
viiinotes = \relative c' {
  \global
  \partial 8 r8 |
  f8->\mf d-. es-. c-. d-. es-. f-. f-. |
  g es f f f g f f |
  
  \repeat volta 2 {
    d4-- r r r8 f8-.\mf |
    f-. d-. c-. c-. d-. es-. f-. f-. |
    g4-. f-. f-. f8-. f-. |
    
    % page 2
    f2 f8-. d-. c-. c-. |
    d-. es-. f4-_ c-_ f-_ |
    f8-. g-. f4-_ f8-. g-. f-. es-. |
    
    d4 r4 r2 |
    r4 r8 d-. bes-. d-. f-. bes-. |
    bes4 r8 f-.\mf d-. f-. bes-. f-. |
    
    % page 3
    bes,8-- r f'-. r f-. r f-. r |
    d( e) f-- r c4 c |
    a4. a8-. bes4. d8 |
    
    c-. d-. c-. bes-. a-. c-. f4 |
    d8-. f-. f-. bes c r g-. r |
  }
  \alternative {
    { a4 r8 c,-. f4-> f}
    {a4 r8 c,-. c4-- r8 c-. }
  }
  bes2~-- bes4. bes8-.
  \repeat volta 2 {
  bes4-- r8 bes8-. c4-- r8 g'-. |
  
  f4-- f8-. f-. f-. r es-. f-. |
  g-. f-. a4-. a-. f-. |
  es2 d4 r8 g,-. |
  
  % page 5
  g4-- d' d4. c8-. |
  bes4-- r8 d-. c4-- r8 c-. |
  c4-- r8 f-. f4-- r8 f8-. |
  
  f4.-- f8-. c4 g' |
  f8--( g as) d,~ d2 |
  f4 g es c |
  
  % page 6
  c4-_ bes8-. d-. f4-_ es-_ |
  r f8-. f-. f r es-. f-. |
  g4 c,8-. es-. f4 f8 f |
  }
  \alternative {
    { d4-- r8 c8-. bes4-- r8 bes-. }
    { d2. s4 }
  }
  \bar "||"
}

%alt two intro
cellonotes = \relative c {
 \global
 \partial 8 r8 |
 bes8-> bes'-. bes-. a-. g-> es-. d-. bes-. |
 es-> c-. f-. f, bes-> es-. f-. f,-> |
 
 \repeat volta 2 {
 bes4-- r r r8 a-. |
 bes-. bes'-. bes-. a-. g-. es-. d-. bes-. |
 es-. c-. f f,-. bes16 c bes c d es d es |
 
 % page 2
 f g f g a g a f bes8-. bes,-. bes'-. a-. |
 g-. es-. d-. bes-. es-. c-. f-. f,-. |
 bes-. es,-. f4 bes8-. es-. f-. f,-. |
 
 bes4 r r2 |
 bes'8-.\p f-. bes,2. |
 r8 bes'\mp bes,2. |
 
 % page 3
 d8-.\f d'-. c-. c,-. bes-. bes'-. a-. a,-. |
 g-. g'-. f-. a,-. c4 c, |
 f8-. f'-. f-. es-. d-. c-. bes-. bes'-. |
 a-. bes-. a-. g-. f4 f8-. f,-. |
 bes4 bes8-. bes,-. c' r c, r
 }
 \alternative {
 { f-. f'-. f-. es-. d-. bes-. f'-. f,-. }
 {f8 f a-. c-. f8.->( g16 f8)-. es}
 }
 d8.->( es16 d8) c-. bes4.-- bes8-.
 \repeat volta 2 {
  es8.->( f16 es8) d-. c4-- r8 c-. | 
  
  f8-> es-. d-. c-. bes-. a-. g-. f-. |
  es-. d-. c4-. d-. d'-. |
  es8-. g-. c,-. a-. d-. c-. bes-. g-. |
  
  % page 5
  c-. bes-. a-. g-. d'-> c-. d-. d,-. |
  g8.--( a16 g8 f-.) e4-- r8 c'-. |
  f8.--( g16 f8 es-.) d4-- r8 f-. |
  
  bes-> a-. g-. f-. es-. d-. c-. bes-. |
  a-. g-. f-. f' g8.( f16 es8) c-. |
  f-. d-. g-. g,-. c-. g'-. e-. c-. |
  
  % page 6
  f,-> f'-. d-> bes-. bes'-> a-. g-. es-. |
  f-> es-. d-. c-. bes-. a-. g-. f-. |
  es-> c-. f-. es-. d-. bes-. f'-> f'-. |
 }
 \alternative {
   { bes8.--( c16 bes8) a-. g4-- r8 bes,-. }
   { bes'4-. bes,2 s4 }
 }
 \bar "||"
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
   \autoBeamOn
   \partial 8 r8 |
   <f bes d>4 <f c'> << bes \\ {d,8[ es]} >> <f bes>4 |
   <c g' c>4\arpeggio <c f a> << bes' \\ {f8[ g]} >> <c, f a>4\arpeggio |
   \repeat volta 2 {
     <d f bes>2\arpeggio r |
     <d f bes>4\arpeggio\mf <d c'> << bes' \\ {d,8[ es]} >> <f bes>4 |
     <g bes c> <f a c> <f bes d> <f bes> |
     
     % page 2
     <c f a>8 r <c f> r <d f>4 <c f c'> |
     << bes' \\ { d,8[ es]} >> <f bes>4 <g bes> <f a> |
     << { bes bes8[ a] d[ <es g,>] } \\ { <d, f>8[ g] <f c'>4 <f bes> } >> <f a c>4 |
     <d f bes>2\arpeggio r |
     R1 |
     r2 <d f bes>4 <f bes d> |
     
     % page 3
     <f bes>8 r <f a es'> r <f bes d> r <f c'> r |
     << bes4 \\ { <d, f>8[ e]} >> <f a>4 <c f a>\arpeggio <c e g> |
     <a c f>\arpeggio r <bes f>\arpeggio r |
     
     << { f' r } \\ { c8[ d c bes] } >> <a f'>4 r |
     <d f bes>\arpeggio r <a' c f>\arpeggio <e g c> |
   }
   \alternative {
     {
     <f a c>\arpeggio <c f a> << { bes'4. a8 } \\ { f8[ d] r4 } >>
     }
     {
       <f a c> r <c f a> f |
     }
   }
   << { bes2~ bes4. f8 } \\ { f8. g16 f8 es d4. f8 } >>
   \repeat volta 2 {
   <bes, es g>4 r <es g c> r |
   
   <c f a>\arpeggio r <d f bes>\arpeggio r |
   <g c>8 <f bes> <es a> <d g> <d fis>4\arpeggio <d f> |
   <es g> <es g c> << { fis8[ d]} \\ d4 >> <d g>4 |
   
   % page 5
   <c es>8 r << {fis[ g]} \\ d4 >> <d f a> r |
   <bes d g>\arpeggio r8 <d g> <c g' c>4 r8 <bes' es, bes> |
   <c, f a>4 r8 <f a c> <f bes f'>4 r8 <f a es'> |
   
   <f bes d>4\arpeggio r8 <a d>-. <g c>4-. r |
   << c4 \\ { f,8[ g]} >> <as d>4-. <d, g b>-.\arpeggio <es g c>-. |
   <f as d> <es g c>8 <d g b> <es g c> r8 <c g'>4 |
   
   % page 6
   <c f a>4\arpeggio << bes'2 \\ { <bes, f'>4 <d f> } >> <es bes'>4 |
   <c f a>\arpeggio r <d f bes> <es bes' es>8 <f a d> |
   << { c'8 bes <f a> <c g'> f bes bes a } \\ { g4 s d <g c> } >>
   }
   \alternative {
     { <d f bes>2 r }
     { <d f bes>2. s4 }
   }
   \bar "||"
}


pianoleftnotes = \relative c {
  \global
  \partial 8 r8 |
  bes4 bes'8 a g es d bes |
  es4-. f-. bes,8-. es-. f4 |
  \repeat volta 2 {
    bes,2 r |
    bes4 bes'8 a g es d bes |
    es4 f bes, d 
  
   % page 2
    f8 r a r bes4. a8 |
    g es d bes e4 f |
    bes8 es, f4 bes,8 es f4 |
    
    bes2 r |
    R1 |
    R1 |
    
    % page 3
    d,8-. d'-. c-. r r bes-. a-. r |
    r g-. f4 c c |
    f f8-. es-. d4-. r |
    
    a'8-. bes-. a-. g-. f4 r |
    bes, r c r |
  }
  \alternative {
    {
    f2 d8-. bes-. <f' c'>4
    }
    {
      f,4 r f'8. g16 f8 es |
     }
    }
  d8. es16 d8 c bes4. bes8 
  \repeat volta 2 {
  es8. f16 es8 d c4 c' |
  
  f, r bes r |
  es,8 d c bes << { a'4 bes } \\ d,2 >> |
  <es bes'>4 c <d a'>8 c bes4 |
  
  % page 5
  <c g'>8 bes a g d'4 r |
  g r8 f e4 r8 c |
  f4 r8 es? d4 r8 f |
  
  bes a-. g-. f-. es4-. r |
  a8 g f4-. g-. es8-. c-. |
  f4 g c,8 g' e c
  
  % page 6
  f4 d bes' g |
  f8 es d c bes a' g f |
  es c f es d bes f'4
  }
  \alternative {
    { bes2 r }
    { bes2. s4 }
  }
}

voicescore = \new Staff \with { midiInstrument = "voice oohs" }
{
  \oneVoice \voicenotes
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
  \header { piece = "voice + violini" }
  \paper { system-separator-markup = \slashSeparator }
  \score {
   <<

      \voicescore
    \new StaffGroup <<
        \viscore
        \viiscore
        \viiiscore
        \celloscore
      >>

%        \pianopart
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

