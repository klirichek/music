\version "2.24.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Архангельский глас"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

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
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

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
  
  \key g\major
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  b2 c( |
  b4 a b c |
  d2. e8[ f]) |
  e4 d \acciaccatura d8 c2 | \abr
  
  c2 b |
  c( d4 e d c b) a |
  g( a b2 | \abr
  
  a4 b8[ c] b4) a4 |
  g1 |
  b2( c |
  b4.) a8 g2 | \abr
  
  b4.( a8) b4( c) |
  d2.( c4 |
  b c e8[ d]) c[( b]) |
  c2. c4 | \abr
  
  c2( b4) a |
  b( cis d) e |
  \acciaccatura e8 d2( cis) |
  d1\fermata \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  g2 a( |
  g4 fis g a |
  b2. c8[ d]) |
  c4 b \acciaccatura b8 a2 |
  
  a2 gis |
  a2( b4 c |
  b a g) fis |
  e4( fis g2 |
  fis4 g8[ a] g4) fis4 |
  e1 |
  g2( a |
  g4.) fis8 e2 |
  g4.( fis8) g4( a) |
  b2.( a4 |
  gis a c8[ b]) a[( gis]) |
  a2. a4 |
  a2( g4) fis |
  g2( a4) g |
  \acciaccatura g8 fis2( e) |
  fis1
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d2 d |
  d1 |
  d1 |
  e4 4 2 |
  
  e2 2 |
  e2( d |
  d2.) d4 |
  b1 |
  
  b2. b4 |
  b1 |
  e1~ |
  4. b8 b2 |
  
  d2 d |
  d2. ( e4 |
  e2.) e4 |
  e2. d4 |
  
  d2. d4 |
  d4( e d) b |
  a1 |
  a
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  g2 d2( |
  d2 g |
  g4 f e2) |
  e4 e a2 |
  
  a2 e |
  a( g |
  g2.) d4 |
  e1 |
  
  b2. b4 |
  e1 |
  e1~ |
  4. b8 e2 |
  
  g2 g |
  g2.( a4 |
  e2.) e4 |
  a2.
  
  <d d,>4 |
  q2. q4 
  g,4( e fis) g |
  a2( <a a,>) |
  d,1
 \fermata}

lyricscore = \lyricmode {
  Ар -- хан -- гель -- ский глас
  во -- пи -- ем ти Чи --
  ста -- я. Ра -- дуй -- ся,
  Бла -- го -- дат -- на -- я,
  Гос -- подь, Гос -- подь с_То -- бо -- ю.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
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
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
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
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
