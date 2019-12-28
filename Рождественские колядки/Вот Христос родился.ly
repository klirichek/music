\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Вот Христос родился"
  subtitle = " "
%  composer = "М. Матвеев"
%  poet = "Слова Е. Руженцева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \time 2/2
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set Score.markFormatter = #format-mark-box-numbers
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

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


sopvoice = \relative c'' {
  \global
  \key d \major
  \dynamicUp
  \secondbar  
  
  \repeat volta 3
  {
  a4 fis d'4. b8 |
  b2 a |
  fis4 fis g e |
  e2 d \breathe |
  a'4 fis d'4. b8 |
  b2 a |
  fis4 a g e |
  e2 d | \breathes |
  
  e4 e8[ fis] g4 e |
  fis fis8[ g] a4 fis |
  e4 e8[ fis] g4 e |
  fis fis8[ g] a4 fis |
  a2 a |
  b b |
  cis cis |
  d4 a b g |
  fis2( e) |
  fis1
  
   a2 a |
    b b |
    cis cis |
    d4 a b g 
  }
  \alternative {
    { fis2( e) d1 }
    { a'2( cis)  d1 }
  }
  
  
  
 \bar "||"
}

altvoice = \relative c' {
  \global
  \key d \major
  \dynamicDown
  
  \repeat volta 3
  {
  fis4 d b'4. g8 |
  g2 fis |
  d4 d e cis |
  cis2 d | \breathe
  fis4 d b'4. g8 |
  g2 fis |
  d4 fis e cis |
  cis2 d \breathes
  
  cis4 cis8[ d] e4 cis |
  d4 d8[ e] fis4 d |
  cis4 cis8[ d] e4 cis |
  d d8[ e] fis4 d |
  fis2 fis |
  g g |
  e e |
  fis4 fis g e |
  d2( cis) |
  d1 |
  
    fis2 fis
    g g |
    e e |
    fis4 fis g e
  }
  \alternative {
    { d2( cis) d1 }
    { fis2( e) fis1 }
  }
 
  
  
  \bar "||"
}



lyricscore = \lyricmode {
  \set stanza = "1. " Вот Хри -- стос ро -- ди -- лся,
  к_нам при -- шёл на зе -- млю.
  И на се -- не в_я -- слях
  Он спо -- ко -- йно дре -- млет.
  Ан -- ге -- лы с_не -- бес сле -- те -- ли,
  в_честь Мла -- де -- нца пе -- сню пе -- ли:
  
%  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!»
%  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!» Бо -- гу!»
}

lyricscoreII  = \lyricmode {
  \set stanza = "2. " К_па -- сту -- хам у -- бо -- гим
  ан -- ге -- лы спу -- сти -- лись,
  ра -- до -- стью ве -- ли -- кой
  с_ни -- ми по -- де -- ли -- лись:
  «Вы не бо -- йтесь, не стра -- ши -- тесь,
  в_Ви -- фле -- ем ско -- рей спе -- ши -- те!
  
  Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!»
  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!» Бо -- гу!»
  
}

lyricscoreIII  = \lyricmode {
  \set stanza = "3. " Па -- сту -- хи по -- ко -- рно,
  в_ра -- до -- сти и ве -- ре,
  со -- бра -- лись в_до -- ро -- гу
  и спе -- шат к_пе -- ще -- ре.
  Там Мла -- де -- нца у -- ви -- да -- ли,
  в_Нём Хри -- ста о -- ни у -- зна -- ли:
  
%  «Сла -- ва, сла -- ва, сла -- ва, сла -- ва в_вы -- шних Бо -- гу!»
}

scorechoir = \new ChoirStaff
<<
  \new Staff = "upstaff" \with {
    instrumentName = "Сопрано"
    shortInstrumentName = "С"
  } <<
    \new Voice = "soprano" { \oneVoice \sopvoice }
  >> 
  
  \new Lyrics \lyricsto "soprano" { \lyricscore }
  \new Lyrics \lyricsto "soprano" { \lyricscoreII }
  \new Lyrics \lyricsto "soprano" { \lyricscoreIII }
  
 \new Staff = "downlstaff" \with {
    instrumentName = "Альты"
    shortInstrumentName = "А"
  } <<
    \new Voice  = "alto" { \oneVoice \altvoice }
  >> 
>>


abr = {}
pianonotesrightup = \relative c' {
  \key e \major
  <e gis b>2 q |
  <e a cis> q |
  <fis b dis> q |
  e'4 b cis <e, a> |
  <e~ gis>2 <e fis> |
  <gis, b e>1 |  \bar "||" \abr
  
  \mark \default
  b'4 e, <cis' e>4. <a cis>8 |
  <a cis>2 <gis b> |
  gis a4 fis |
  fis2 e |
  b'4 e, <cis' e>4. <a cis>8 |
  <a cis>2 <gis b> |
  <e gis>4 <gis b> <fis a> <dis fis> | \abr
  
  <dis fis>2 <b e> \breathe |
  r4 fis' a dis |
  r gis, b e |
  <fis, a> <b dis> fis' a |
  <gis,~ b> <gis b e> <e' gis> <gis b> |
  <e, gis b>2 q |
  <e a cis> q | \abr
  
  <fis b dis> q |
  <b e>4 <gis b> <a cis> <fis a> |
  <e gis>2 <dis fis> |
  e~ e |
  \breathe <e gis b>2. q4 |
  <e a cis>2. q4 |
  <fis b dis>2. q4 | \abr
  
  e'4 b <a cis> <fis a> |
  <e~ gis>2 <e fis> |
  <gis, b e>1 |
  
    \mark \default
  \repeat volta 2 {
   b'4 e, <cis' e>2 |
   <a cis> b |
   gis a |
   fis e
  }
  
  r4 <b' b'>2 q4 |
  r q2 q4 |
  r b8 b' b,4 b' |
  r b,8 b' b,4 b' |
  <e,, gis b>2 q |
  <e a cis> q | \abr
  
  % page 2
  <fis b dis> q |
  e'4 b cis a |
  gis2 fis |
  e1 \breathe |
  e'2~ e |
  e~ e |
  dis ~ dis | \abr
  
  e~ e |
  <e b gis> <dis a fis> |
  <e b gis e>1 \bar "||" \abr
  
  % verse 3
    \mark \default
  <e gis>4 b <e a> cis |
  <a' cis>2 b4 gis |
  e2~ e |
  <b~ dis> <b e> |
  <b e>4 e, <cis' e>2 |
  <e~ a> <e gis> | \abr
  
  <gis, b e~ > e'2 |
  <b~ dis> <b e> \breathe
  fis4 fis8 gis a4 fis |
  gis4 gis8 a b4 gis |
  r4 b b' \ottava 1 b'
  r e,, e' e' | \ottava 0 \abr
  
  <e,,, gis b>2 q |
  <e a cis> q |
  <fis b dis > q |
  e'4 b cis a |
  gis2 fis |
  e1 | \abr
  
  e'2^\markup\bold"ritard." e |
  e~ e |
  dis~ dis |
  e e |
  e dis |
  e1 \bar "|."
  
  
}

pianonotesrightdown = \relative c'' {
  \key e \major
  s1 |
  s |
  s |
  <gis b>2 <e a>4 cis |
  b2~ b4 a |
  s1 |
  
  gis'4 e~ e2 |
  e~ e |
  e e4 dis |
  dis2 b
  gis'4 e~ e2 |
  e~ e |
  s1 |
  
  s |
  <dis fis>2 s |
  <e gis> s |
  dis4 a' dis~ dis |
  e, s s s |
  s1 |
  s |
  
  s |
  e2 e |
  b~ b |
  b~ b |
  s1 |
  s |
  s |
  
  <gis' b>2 dis4 cis |
  b2 b4 a |
  s1 |
  
  \repeat volta 2 {
    gis'4 e~ e2 |
    e~ e |
    e fis |
    dis e
  }
  
  <dis fis>2 s |
  <e gis> s |
  <fis b dis> s |
  <gis b e> s |
  s1 |
  s |
  
  % page 2
  s1
  <gis b>2 a4 fis |
  e2 dis |
  b1 |
  
  <gis' b>4. q8 q2 |
  <a cis>4. q8 q2 |
  <fis b>4. q8 q2 |
  
  <gis b>2 <a cis>4 <fis a> 
  s1 |
  s
  
  % verse 3
  s1 |
  cis'2 <b e> |
  <gis b> <a cis> |
  fis gis |
  gis4 e~ e2 |
  cis' b |
  
  e4 dis cis a |
  b a gis2 |
  dis1 |
  e |
  <fis b dis>2 s |
  <gis b e> s |
  
  s1*3 |
  <gis cis>2 a4 fis |
  e2 dis |
  b1 |
  
  <gis' b>4. q8 q2 |
  <a cis>4. q8 q2 |
  <fis b>4. q8 q2 |
  <gis b>2 <a cis>4 <fis a> |
  <gis b>2 <fis a> |
  <e gis b>1
  
  
  
}

pianonotesleftup = \relative c, {
  \key e \major
  \oneVoice <e e'>1
  <a a'>2. <gis gis'>4 |
  <fis fis'>2 <b b'>4 <a a'> |
  <gis gis'>2 <a a'> |
  <b~ b'> <b~ b,> |
  b1
  
  \voiceOne
  b'2 a~ |
  a b |
  b a |
  b4 a gis2 |
  b a |
  a gis |
  b b~ |
  
  b4 a gis2 |
  r4 <fis b>2 q4 |
  r <b e>2 <gis e'>4 |
  r <fis b>2 q4 |
  r <b e>2 <gis e'>4 |
  
  \oneVoice <b e,>1 |
  <a a,> |
  
  <b b,> |
  <gis gis,>2 <a a,> |
  <b b,>2. <a a,>4 |
  <gis gis,>2 <fis fis,> |
  <e b'> q |
  <a, a'> q |
  <b b'> <a a'> |
  
  <gis gis'> <a a'> |
  <b~ b'> <b b,> |
  <b e,>1 |
  \voiceOne 
  \repeat volta 2 {
    b'2 gis |
    a gis |
    b cis |
    b~ b |
  }
  
  b~ b |
  e,~ e |
  b'~ b |
  e,~ e |
  b'1 |
  a |
  
  % page 2
  \oneVoice <fis fis,>2 <b, b'>4 <a a'> |
  <gis gis'>2 <a a'> |
  <b~ b'> <b a'> |
  <e gis>1 |
  <e b'>2 q |
  <a, a'> q |
  <b b'> <a a'> |
  
  <gis gis'>4 <e e'> <a a'> <cis cis'> |
  <b b'~>1 |
  <e b'> |
  
  
  % verse 3
  <e b' e>2 <cis a' cis>
  \voiceOne a'2 gis4 b |
  e2~ e |
  b~ b |
  b gis4 cis |
  cis2 b4 e |
  
  b2 a4 cis |
  b2~ b |
  b1 |
  b |
  b2~ b |
  b~ b |
  
  \oneVoice <e, b'>2 q |
  <a, a'> q |
  <fis fis'> <b b'>4 <a a'> |
  <gis gis'>2 <a a'> |
  \voiceOne b'2 a |
  \oneVoice <e gis>1 |
  
  <e b'>2 q |
  <a, a'> q |
  <b b'> <a a'> |
  <gis gis'>4 <e e'> <a a'> <cis cis'> |
  <b b'>1 <e b'>
  
  
}

pianonotesleftdown = \relative c {
  \key e \major
  s1
  s
  s
  s
  s
  s
  
  e2 a, |
  cis4 dis e2 |
  e4 dis cis2 |
  b e |
  e a,~ |
  a4 cis8 dis e2 |
  e b~ |
  
  b2 e |
  b~ b |
  e~ e |
  b~ b |
  e~ e |
  s
  s
  
  s1*7
  
  s1*4
  \repeat volta 2 { 
    e2 cis |
    a4 cis e2 |
    e4 cis fis a |
    b a gis2
  }
  
  r4 b,2~ b4 |
  r e,2~ e4 |
  r b'2~ b4 |
  r4 e,2~ e4 |
  e'1 |
  a, |
  
  % page 2
  s1*10
  
  % verse 3
  s1
  a4 cis e2 |
  e'4 dis cis a |
  b4 a gis fis |
  e2 cis |
  a4 cis8 dis e2 |
  
  <e b'> a4 s |
  b b, e2 |
  b4 b8 cis dis4 b |
  e e8 fis gis4 e |
  r b dis b |
  r e gis e |
  
  s1*4 |
  b1 |
  s1*7
  
}

scoreInstrRight = {
  \global
  << \pianonotesrightup \\ \pianonotesrightdown >>
}

scoreInstrLeft = {
  \global
  \dynamicUp
  << \pianonotesleftup \\ \pianonotesleftdown >>
}

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreInstrLeft }
  >>


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    
    ragged-last-bottom = ##f
  }
  \score {
 %     \transpose es f {
     <<
       \scorechoir
     >>
    
 %     }  % transposeµ
    \layout { 
      \context {
        \Score
%         \override BarNumber.break-visibility = #end-of-line-invisible
%          \override BarNumber.self-alignment-X = #LEFT
%          \override BarNumber.stencil  = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
%          barNumberVisibility = #all-bar-numbers-visible
%          barNumberVisibility = #(every-nth-bar-number-visible 2)
}
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    
    ragged-last-bottom = ##f
  }
  \score {
 %     \transpose es f {
   <<
     \scoreInstrPart
   >>

    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
      }
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
 %     \transpose es f {
     <<
     \scoreInstrPart
    >>
%      }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
