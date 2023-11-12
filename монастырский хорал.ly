\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 19.9)

\header {
  title = "Монастырский хорал"
  composer = "А. Полетаев"
  poet = "сл. иеромонаха Романа"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}
 
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  \squaremarks
  
  \key g \minor
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*26
  g1 |
  g |
  
  % page 2
  a8 a a a bes2 |
  b8 b b b c4( es) |
  d1( |
  c~ |
  1 |
  bes)
  
  bes8 bes bes bes a4.( g8) |
  g1~ |
  8 r r4 r2 |
  bes8 bes bes bes bes2 |
  bes8 bes bes bes bes2 |
  
  bes8 bes bes bes b2 |
  c8 c c d es4( ges) |
  g!1( |
  ges~ |
  1 |
  g!2 ges) |
  
  f4 f f f |
  f2.( g4) |
  g1~ |
  1~ |
  8 r r4 r2 |
  
  
  % page 3
  R1*5 |
  \repeat volta 2 {
    g2. g4 |
    ges2. ges4 |
    ges1 |
    g!2( ges)
  }
  \alternative {
    { f8 f f f f4.( g8) | g1 }
    { f4 f f f }
  }
  f2.( g4) | g1 |
  
  R1*4
  f4 f f f |
  es2\fermata( d) |
  d1\fermata~ |
  1~ |
  1~ |
  4 r r2 
  
  
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
    R1*26
  d2( es) d2( es) |
  
  %page 2
  d8 d d d d2 |
  as'8 as as as g4( <ges b>) |
  <g! bes>1 |
  <es ges>1~ |
  1 |
  <d g!>1 |
  
  ges8 ges ges ges ges4.( g8) |
  g1~ |
  8 r r4 r2 |
  d2(_\markup"A…" es) |
  d( es) |
  
  d8 d d d as'2 |
  es8 es es g ges4( <ges bes>) |
  bes1 |
  bes( |
  a!) |
  bes |
  
  bes4 bes bes bes |
  c1 |
  bes~ |
  1~ |
  8 r r4 r2 |
  
  % page 3
  R1*5
  \repeat volta 2 {
    <g bes>2. q4 |
    <ges bes>2. q4
    q1 |
    <g! bes>2( <ges bes>2)
  }
  \alternative {
    {
      <f bes>8 q q q << \voiceFour a2 \new Voice { \voiceTwo f4.( g8) } >> \voiceTwo
      <g bes>1
    }
    {
      bes4 bes bes bes
    }
  }
  a1 |
  bes |
  R1*4 |
  bes4 bes bes bes |
  g2( <fis a>4. g8) |
  g1~
  1~
  1~
  4 r r2 |
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*8
  \mark 2
  <bes d>2. q4 |
  <bes c>2. q4 |
  <a c>1 |
  bes | \abr
  
  <bes c>8 q q q << \voiceOne c2 \new Voice { \voiceTwo a4.( g8) } >> |
  \oneVoice <g bes>1~ |
  2~8 r8 r4 |
  \mark 3 d'2( es) |
  d( <c bes>) | \abr
  
  <bes d>2( <b es>) |
  <c es>( es4 <es ges>)
  \mark 4 <d g!>2. q4 |
  <es ges>2. q4 |
  <es fis>1 |
  <d g!> | \abr
  
  <d f!>4 q q q |
  << \voiceTwo c1 \new Voice { \voiceOne f2.( g4) } >> \oneVoice |
  <d g>1 |
  \mark 5 bes1~ |
  1 | \abr
  
  bes8 bes bes bes bes2 |
  es8 es es es es2 |
  \mark 6 d1( |
  c~ |
  1 bes ) | \abr 
  
  c8 c c c c2 |
  bes1~ |
  8 r8 r4 r2 |
  \mark 7 bes8 bes bes bes bes2 |
  bes8 bes bes bes bes2 | \abr
  
  bes8 bes bes bes es2 |
  c8 c c es es4( c) |
  \mark 8 d1( |
  es1~ |
  1 |
  d) | \abr
  
  d4 d d d |
  f2.( g4) |
  d1~ |
  1~ |
  8 r8 r4 r2 | \abr
  R1
  
  \mark 9 g,8 g g g g2 |
  g8 g g g g2 |
  g8 g g g g2 |
  g8 g g g g2 | \abr
  
  \repeat volta 2 {
    \mark 10 d'2. d4 |
    es2. es4 |
    es1 |
    d |
  }
  \alternative {
    { d8 d d d c2 | d1 }
    { d4 d d d }
  }
  
  c1 |
  d |
  R1*4 |
  d4 d d d | \abr
  c2~\fermata 2 |
  bes1~ |
  1~ |
  1~ |
  4 r4 r2 | \bar "|."
   
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*8 |
  <d g>2. q4 |
  <es ges>2. q4 |
  <es fis>1 |
  <d g>1 | \abr
  
  <es ges>8 q q q << \voiceTwo d2 \new Voice { \voiceOne fis4.( g8) } >> \oneVoice
  <d g,>1~ |
  2~ 8 r8 r4 |
  << { \voiceOne bes'1~( 2 g bes2 as c4 a? bes c) } \new Voice { \voiceTwo f,2( g f es f1 g2 ges4 bes) } >>
  \oneVoice <g b>2. q4 |
  <bes c>2. q4 |
  <a c>1 |
  <g bes> | \abr
  
  <f bes>4 q q q |
  << \voiceOne a1 \new Voice { \voiceTwo f2.( g4) } >> \oneVoice |
  <g bes>1 |
  << {\voiceOne d2( es) d( es)} \new Voice { \voiceTwo g,1 g } >> \oneVoice |
  
  <g e'>8 q q q <g f'>2 |
  q8 q q f' g([ a bes c)] |
  <g bes>1( <es bes'> <c a'> <g g'>) |
  es'8 es es es d2 |
  <g, d'>1~ |
  8 r8 r4 r2 |
    << {\voiceOne f'2( g) f( g)} \new Voice { \voiceTwo bes,1_\markup"A…" bes } >> \oneVoice |
    <bes f'>8 q q q <g f'>2 |
    <c g'>8 q q <c a'> <c bes'~>4 <es bes'> |
    g1( c~ c g) |
    
    bes4 bes bes bes |
    a2.( g4) |
    g1~ 1\>~ 8\! r8 r4 r2 |
    R1
    
  
  
  <g, g'>8 q q q q2 |
  q8 q q q q2 |
  q8 q q q q2 |
  q8 q q q q2 | \abr
  
  \repeat volta 2 {
    g'2. g4 | c2. c4 | c1 g |
  }
  \alternative {
    { bes8 bes bes bes f4.( g8) g1 }
    { bes4 bes bes bes }
  } f2.( g4) |
  g1 |
  R1*4 |
  bes4 bes bes bes |
  a2\fermata( d,) |
  <d g,>1~ |
  1~\> |
  1~ |
  4\! r4 r2
  
  
  
  
}

lyricscore = \lyricmode {
  Гос -- по -- ди по -- ми -- луй,
  гос -- по -- ди по -- ми -- луй.
  (з.р.) _ _ _
  Гос -- по -- ди по -- ми -- луй
  Гос -- по -- ди по -- ми -- луй
  (з.р.)
  Русь е -- щё жи -- ва, Русь е -- щё по -- ет. А…
  Гос -- по -- ди по -- ми -- луй.
  С_му -- зы -- кой та -- кой хоть и -- ди на смерть
  дол -- го ли те -- бе Русь свя -- та -- я петь А…
  Гос -- по -- ди по -- ми -- луй.
  
  Ко -- ло -- коль -- ный звон над зем -- лёй плы -- вёт. Русь е -- щё жи -- ва, Русь е -- щё по -- ёт.
  \repeat volta 2 { Гос -- по -- ди по -- ми -- луй, } Гос -- по -- ди по -- ми -- луй
  Гос -- по -- ди по -- ми -- луй. Гос -- по -- ди по --
  ми -- луй.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 25
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
            \new Staff = "tstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } {
        \new Voice = "tenor" { \oneVoice \clef "treble_8" \tenorvoice }
      } 
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName =  "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        %\new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
      >>
      
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
    >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
                \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
