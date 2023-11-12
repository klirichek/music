\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Adeste, fideles"
  %composer = "Composer"
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

% mark with numbers in squares and circles
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }
circlemarks = { \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers }

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
  
  \key g \major
  \time 2/4
}

solovoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 8 \mark 1 g8 |
  g4 d8 g |
  a4 d, |
  b'8 a b c |
  b4 a8 a |
  g4 fis8 e |
  fis[( g]) a b | \abr
  
  fis4( e8.) d16 |
  d4 r |
  d' c8 b |
  c4 b |
  a8 b g a |
  fis8.[( e16]) d8 g | \abr
  
  g fis g a |
  g4 d8 b' |
  b a b c |
  b4 a8 b |
  c b a g | \abr
  
  fis4 g8[( a]) |
  b4( a8.) g16 |
  g4\fermata r | \abr
  
  
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 8 g8
  g2 |
  fis |
  g |
  g4 fis |
  g fis |
  fis2 | \abr
  
  fis4 e8. d16 |
  d2 |
  g4 fis |
  fis g |
  fis8 b g a |
  fis4 d8 r | \abr
  
  g2 |
  g |
  g |
  g4 fis8 \breathe g |
  c b a g | \abr
  
  fis4 g8 a |
  g4 a8. g16 |
  g4\fermata \mark 2 r8 \break g | \abr
  
  % page 2
  g4 d8 g |
  a4 d, |
  b'8 a b c |
  b4 a8 g |
  g4 fis8 e |
  fis[( g]) a b | \abr
  
  fis4 e8.[( d16]) |
  d2 |
  d'4 c8 b |
  c4 b |
  a8 b g a |
  fis8.( e16) d8 g | \abr
  
  g8 fis g a |
  g4 d8 b' |
  b a b c |
  b4 a8 b |
  c b a g |
  fis4 g8 c | \abr
  
  b4 a8. g16 |
  g2 |
  \mark 3 r4 r8 g |
  g4( d8) g |
  a4 d, |
  <g b>8 <fis a> <g b> <a c> |
  b4 a8 a | \abr
  
  g4( fis8) e |
  fis[( g]) a[( b]) |
  fis4 e8. d16 |
  d4 r |
  <g d'>4 <fis c'>8 <g b> |
  <a c>4 <g b> |
  <fis a>8[( b]) g[( a]) | \abr
  
  fis8.[( e16]) d8 g |
  g[( fis]) g a |
  g4 d8 b' |
  <g b>[( <fis a>]) <g b> < a c> |
  <g b>4 <fis a>8 <g b> | \abr
  
  <g c>[( <g b>]) <e a> <d g>  |
  <d fis>4( <d g>8) <a' c> |
  <g b>4 <a d>8. <b d>16 |
  <b d g>2 \bar "||"
  
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 8 d8 |
  d2 |
  d |
  d |
  d4 d |
  cis <\parenthesize b d> |
  d2 | \abr
  
  d4 cis8. d16 |
  a2 |
  d4 c |
  d d |
  d8 d e e |
  d4 a8 r | \abr
  
  d2 |
  d |
  <d b> |
  d4 d8 \breathe d |
  fis g d cis | \abr
  
  d4 d8 e |
  d4 <d fis>8. <d b>16 |
  q4\fermata r8 d | \abr
  
  d4 d8 d |
  d4 d |
  d8 d d d |
  d[( e]) d g |
  g4 fis8 e |
  d4 d8 d | \abr
  
  d4 cis8.[( d16]) |
  d2 |
  g8[( a]) a g |
  fis4 g |
  fis8 g e e |
  d[( cis]) a d | \abr
  
  d c d e |
  d4 d8 g |
  g fis g a |
  g4 fis8 f |
  e e e e |
  d4  d8 e | \abr
  
  d4 fis8. d16 |
  d2 |
  r4 r8 d |
  d4. d8 |
  d4 c |
  d8 d d fis |
  g4 fis8 d | \abr
  
  cis4( d8) cis |
  d4 d |
  d cis8. d16 |
  d4 r |
  d4 d8 d |
  d4 d |
  d8[( fis]) e4 |
  d8.[( cis16]) d8 d |
  d4 d8 d |
  d4 d8 d |
  d4 d8 d |
  d4 d8 d | \abr
  
  c[( d]) a b |
  c4( b8) <c e> |
  d4 <d fis>8. <d g>16 |
  <d g>2
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 8 b8 |
   b2 |
   a |
   b |
   b4 a |
   g a |
   a fis | \abr
   
   a4 g8. fis16 |
   fis2 |
   b4 a |
   a b |
   a8 b b c |
   a4 fis8 r | \abr
   
   b2 |
   b |
   g |
   b4 a8 \breathe b |
   d d a a | \abr
   
   a4 g8 a |
   b4 a8. g16 |
   g4\fermata r8 b |
   
   % page 2
   b8[( c]) d b |
   a4 fis16[( g a8]) |
   b8 a g a |
   g4 fis8 g |
   b8[( cis]) d cis |
   a4 a8 g | \abr
   
   a4 b8.[( fis16]) |
   fis8[( a d c]) |
   b[( c]) d d |
   c4 d |
   d8 d b c |
   a4 fis8 b | \abr
   
   b8 a b c |
   b4 b8 d |
   d c d e |
   d4 d8 d |
   c c cis cis |
   a4 g8 g | \abr
   
   g16[( a b c ]) d8. b16 |
   b2 |
   r4 r8 b |
   b4. b8 |
   a4 a |
   b8 c b d |
   d4 d8 a | \abr
   
   a4~8 a |
   a[( g]) fis[( b]) |
   a4 g8. a16 |
   a4 r |
   b a8 g |
   fis4 g |
   d8[( b']) b[( a]) | \abr
   
   a4 fis8 b |
   b[( a]) b c |
   b4 b8 b |
   b[( a]) b c |
   b4 a8 g | \abr
   
   
     e[( d]) c b |
  a'4( g8) c |
  b4 c8. b16 |
  b2
   
   
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 8 g8 |
  g2 |
  fis |
  g |
  d4 d |
  e d |
  d fis, | \abr
  
  a4 a8. d16 |
  d2 |
  b4 a |
  d g |
  fis8 g e c |
  d4 d8 r | \abr
  
  g2 |
  g |
  g, |
  g'4 fis8 \breathe g |
  a g fis e | \abr
  
  d4 b8 c |
  <d g>4 <d fis>8. g,16 |
  g4\breathe r8 g' | \abr
  
  % page 2
  g[( a]) b g |
  fis4 d16[( e fis8]) |
  g8 fis d a |
  b[( cis]) d e |
  e4 a8 a |
  d,8[( e]) fis g | \abr
  
  a,4 a8.([ d16)] |
  d2 |
  g4 fis8 g |
  a4 g |
  fis8 g e c |
  d4 d8 b' | \abr
  
  g2~ |
  4. g8 |
  g g g g |
  g4 d8 gis, |
  a a a a |
  d[( c]) b c | \abr
  
  d4 <d fis>8. <g g,>16 |
  q2 |
  r4 r8 g |
  <d g>4. <b g'>8 |
  <fis fis'>4 q |
  <g g'>8 d' g a |
  g4 fis8 fis | \abr
  
  e4( d8) a |
  d([ b)] fis[( <g g'>)] |
  a4 a8. <d fis>16 |
  q4 r |
  b'4 a8 g |
  fis4 g |
  d8[( dis]) e[( cis]) | \abr
  
  d8.[( a16]) d8 b' |
  b[( a]) b c |
  b4 b8 g |
  <d g>8[( <d fis>]) <d g>8 <d a'> |
  <d g>4 <d fis>8 g | \abr
  
  
  e[( d]) c b |
  a4( g8) c |
  d4 d8. g16 |
  <g g,>2
  
  
}

lyricscore = \lyricmode {
  \repeat unfold 40 \skip 1
  Ε -- λά -- τε με -- νί -- στη με χα -- ρά με -- γά -- λη
  ε -- λά -- τε ε -- λά -- τε στη
  Βη -- θλε -- έμ κει που γεν -- νη -- θη ο Σω -- τηρ τοῦ κόσ -- μου  ε -- 
  λά -- τε προσ -- κυ -- νησ -- τε, ε -- λά -- τε προσ -- κυ -- νησ -- τε, ε -- λά -- τε προσ -- κυ -- νησ -- τε
  Χρισ -- τον τον ϴε -- οῦ.
  
  Во -- спой -- те, лю -- ди ра -- дость не -- зем -- ну -- ю, вос --
  пой -- те, лю -- ди день тор -- жест -- ва! Ан -- гел при -- нёс всем весть бла -- 
  гу -- ю. Ли -- куй -- те и пой -- те, ли -- куй -- те и пой -- те, ли --
  
  куй -- те и пой -- те в_день Рож -- дест -- ва!
}

lyricsolo = \lyricmode {
  A -- de -- ste, fi -- de -- les, Læ -- ti tri -- um -- phan -- tes, ve -- ni -- te, ve -- ni -- te in 
  Beth -- le -- hem. Na -- tum vi -- de -- te, Re -- gem an -- ge -- lo -- rum. Ve --
  ni -- te, a -- do -- re -- mus, ve -- ni -- te, a -- do -- re -- mus, ve -- ni -- te, a -- do --
  re -- mus Do -- mi -- num.
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
    %\new StaffGroup 
    <<
      \new Staff = "solostaff" \with {
       % instrumentName = "Solo"
       % shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } {  \new Voice = "solo" { \oneVoice \solovoice } }
      
      \new Lyrics \lyricsto "solo" { \lyricsolo }
      
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
