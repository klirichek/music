 \version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "День Победы"
  composer = "Д. Тухманов"
  poet = "Вл. Харитонов"
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
  \multirests
  \placeDynamicsLeft
  \set Score.markFormatter = #format-mark-circle-numbers
  
  \key c \major
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  \mark 35
  e2\f( c' |
  f,1) |
  f8[( g] b d4 b g8 |
  f2 e) |
  e8[( f] e c'4 a e8 | \abr
  
  e[ f] e b'4~ b4.) |
  e,8[( f] e d'4 c b8 |
  a4) r r2 |
  \mark 36
  R1*8
  \mark 37
  R1*11 | \abr
  
  r2\f b8. b16 b8 b~ |
  b4 r b8. b16 b8 b |
  a8. a16 b2 a4~ |
  a r r2 | \abr
  
  \mark 38
  e2\f( c' |
  f,1) |
  f8[( g] b d4 b g8 |
  f2 e) |
  e8[( f] e c'4 a e8 | \abr
  
  e[ f] e b'4~ b4.) |
  e,8[( f] e d'4 c b8 |
  a4) r r2 |
  \mark 39
  R1*3 \abr
  
  r4 f'8. f16 f8 f~ f4~ |
  f8 r r4 r2 |
  R1*2 |
  r2 e8.\f e16 e8. d16 | \abr
  
  % page 3
  \mark 40
  d4 c2.~ |
  c4~ c8 r d8. c16 b8. c16 |
  d1~ |
  d2 d4 c | \abr
  
  c4 b2.~ |
  b8 r b c d f e d |
  c2~ c8 r r4 |
  R1*4 | \abr
  
  r2 b8.\f b16 b8 b~ |
  b4 r b8. b16 b8 b |
  a8. a16 b2 a4~ |
  a r r2 | \abr
  
  %page 4
  \mark 41
  e2\f( c' |
  f,1) |
  f8[( g] b d4 b g8 |
  f2 e) |
  e8[( f] e c'4 a e8 | \abr
  
  e[ f] e b'4~ b4. |
  e,8[ f] e d'4 c b8 |
  a4) r r2 |
  \mark 42
  e8.\f e16 e8 e r4 e8 e | \abr
  
  a8. e16 a8. e16 a4 e8 d |
  c8. c16 c8 e a c b a |
  b2. r4 | \abr
  
  % page 5
  e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b | \abr
  
  c2~ c8 r r4 |
  \mark 43
  r2\mf e4. e8 |
  e4 e2.~ |
  e8 r r4 f4. f8 |
  f4 f2.~ | \abr
  
  f8 r r4 e4. e8 |
  e4 e2.~ |
  e8 r r4 cis4\f cis |
  d2 d~ | \abr
  
  % page 6
  d8 r d d d8. d16 d8 d |
  c1~ |
  c2.~ c8 r | \abr
  
  b8. b16 b8 b~ b4 r |
  b8. b16 b8 b~ b4 r |
  a8. a16 b2 a4~ | \abr
  
  a4 r e'8.\f e16 e8. d16 |
  \mark 44
  d4 c2.~ |
  c4~ c8 r d8. c16 b8. c16 |
  d1~ | \abr
  
  % page 7
  d2 d4 c |
  c b2.~ |
  b8 r b c d f e d |
  c2 cis4 cis | \abr
  
  d2 d~ |
  d8 r d d d8. d16 d8 d |
  c1~ |
  c2.~ c8 r | \abr
  
  fis8. fis16 fis8 fis~ fis4 r |
  gis8. gis16 gis8 gis8~ gis4 r |
  a8. a16 a2. |
  a1 |
  < a e> \ff~ |
  q~ |
  q8 r r4 r2
  
  \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e2\f( c' |
  f,1) |
  d8[( d] d f4 d d8 |
  c2 c) |
  e8[( f] e e4 e e8 |
  
  e8[ f] e e4~ e4.) |
  e8[( f] e f4 e e8 |
  a4) r r2 |
  R1*8 |
  R1*11 |
  
  r2 fis8. fis16 fis8 fis~ |
  fis4 r4 gis8. gis16 gis8 gis |
  a8. a16 b2 a4~ |
  a r r2 |
  
  % page 2
  e2( c' |
  f,1) |
  d8[( d] d f4 d d8 |
  c2 c) |
  e8[( f] e e4 e e8 |
  
  e8[ f] e e4~ e4. |
  e8[ f] e f4 e e8 |
  a4) r r2 |
  R1*3 |
  
  r4 d8. d16 d8 d~ d4~ |
  d8 r r4 r2 |
  R1*2 |
  r2 c8. c16 c8. b16 |
  
  % page 3
  b4 a2.~ |
  a4~ a8 r b8. a16 gis8. a16 |
  b1~ |
  b2 b4 a |
  
  a gis2.~ |
  gis8 r gis a b d c b |
  a2~ a8 r r4 |
  R1*4 |
  
  r2 fis8. fis16 fis8 fis~ |
  fis4 r gis8. gis16 gis8 gis |
  a8. a16 b2 a4~ |
  a r r2 |
  
  % page 4
  e2( c' |
  f,1) |
  d8[( d] d f4 d d8 |
  c2 c) |
  e8[( f] e e4 e e8 |
  
  e8[ f] e e4~ e4. |
  e8[ f] e f4 e e8 |
  a4) r r2 |
  e8. e16 e8 e r4 e8 e |
  
  a8. e16 a8. e16 a4 e8 d |
  c8. c16 c8 e a c b a |
  b2. r4 |
  
  % page 5
  e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b |
  
  c2~ c8 r r4 |
  r2 e,4. e8 |
  e4 e2.~ |
  e8 r r4 d'4. d8 |
  d4 d2.~ |
  
  d8 r r4 d4. d8 |
  d4 d2.~ |
  d8 r r4 a4 g |
  g2 f~ |
  
  % page 6
  f8 r f g a8. a16 g8 f |
  a2.~( a8[ g16 f] |
  e2.~ e8) r |
  
  fis8. fis16 fis8 fis~ fis4 r |
  gis8. gis16 gis8 gis~ gis4 r |
  a8. a16 b2 a4~ |
  
  a4 r c8. c16 c8. b16 |
  b4 a2.~ |
  a4~ a8 r b8. a16 gis8. a16 |
  b1~ |
  
  % page 7
  b2 b4 a |
  a gis2.~ |
  gis8 r gis a b d c b |
  a2 a4 g
  
  g2 f~ |
  f8 r f g a8. a16 g8 f |
  a2.~( a8[ g16 f] |
  e2.~ e8) r |
  
  b'8. b16 b8 b~ b4 r |
  b8. b16 b8 b~ b4 r |
  a8. a16 b2. |
  b1 |
  cis~ |
  cis~ |
  cis8 r r4 r2
}


tenorvoice = \relative c
{
  \global
  \dynamicDown
  \autoBeamOff
   e2\f( c' |
   f,1) |
   f8[( g] b d4 b g8 |
   g2 g) |
   e8[( f ] e c'4 a e8 |
   
   e[ f] e b'4~ b4.) |
   e,8[( f] e d'4 c b8 |
   a4) r r2 |
   R1*8 |
   R1*11 |
   
   r2\f b8. b16 b8 b~ |
   b4 r b8. b16 b8 b |
   a8. a16 b2 a4~ |
   a r4 r2 |

   % page 2
   e2(\f c' |
   f,1) |
   f8[( g] b d4 b g8 |
   g2 g) |
   e8[( f] e c'4 a e8 |
   
   e8[ f] e b'4~ b4. |
   e,8[ f] e d'4 c b8 |
   a4) r r2 |
   R1*3 |
   
   r4\mf <d f>8. q16 q8 q q4~ |
   q8 r r4 r2 |
   R1*2 |
   r2\f e8. e16 e8. e16 |
   
   % page 3
   e4 e2.~ |
   e4~ e8 r e8. e16 e8. e16 |
   d1~ |
   d2 d4 d |
   
   d d2.~ |
   d8 r b c d f e d |
   c2~ c8 r r4 |
   R1*4 |
   
   r2 b8.\f b16 b8 b~ |
   b4 r b8. b16 b8 b |
   a8. a16 b2 a4~ |
   a r r2 |
   
   % page 4
   e2\f( c' |
   f,1) |
   f8[( g] b d4 b g8 |
   g2 g) |
   e8[( f] e c'4 a e8 |
   
   e[ f] e b'4~ b4. |
   e,8[ f] e d'4 c b8 |
   a4) r r2 |
   e8.\f e16 e8 e r4 e8 e |
   
   a8. e16 a8. e16 a4 e8 d |
   c8. c16 c8 e a c b a |
   b2. r4 |
   
   % page 5
   e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b |
  
  c2~ c8 r r4 |
  r2\mf e4. e8 |
  e4 e2.~ |
  e8 r r4 <d f>4. q8 |
  q4 q2.~ |
  
  q8 r r4 <d e>4. q8 |
  q4 q2.~ |
  q8 r r4 cis4\f cis |
  d2 d~ |
  
  % page 6
  d8 r d d d8. d16 d8 d |
  c1~ |
  c2.~ c8 r |
  
  b8. b16 b8 b~ b4 r |
  b8. b16 b8 b~ b4 r |
  a8. a16 b2 a4~ |
  
  a4 r e'8.\f e16 e8. e16 |
  e4 e2.~ |
  e4~ e8 r e8. e16 e8. e16 |
  d1~ |
  
  % page 7
  d2 d4 d |
  d d2.~ |
  d8 r b c d f e d |
  c2 cis4 cis |
  
  d2 d~ |
  d8 r d d d8. d16 d8 d |
  c1~ |
  c2.~ c8 r |
  
  <b fis'>8. q16 q8 q~ q4 r |
  <b gis'>8. q16 q8 q~ q4 r |
  <a a'>8. q16 <b a'>2. |
  q1 |
  <e a>1~\ff |
  q~ |
  q8 r r4 r2
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  e2( c' |
  f,1) |
  d8[( d] d f4 d b8 |
  c2 c) |
  a8[( a] a e'4 c a8 |
  
  b[ b] b d4~ d4. ) |
  b8[( b] b f'4 e e8 |
  a4) r r2 |
  R1*8 |
  R1*11 |
  
  r2 fis8. fis16 fis8 fis~ |
  fis4 r gis8. gis16 gis8 gis |
  a8. a16 b2 a4~ |
  a r r2 |
  
  %page 2
  e2( c' |
  f,1) |
  d8[( d] d f4 d b8 |
  c2 c) |
  a8[( a] a e'4 c a8 |
  
  b8[ b] b d4~ d4. |
  b8[ b] b f'4 e e8 |
  a4) r r2 |
  R1*3 |
  
  r4 <d d,>8. q16 q8 q q4~ |
  q8 r r4 r2 |
  R1*2 |
  r2 e,8. e16 e8. 16 | 
  
  % page 3
  e4 e2.~ |
  e4~ e8 r e8. e16 e8. e16 |
  f1~ |
  f2 f4 f |
  
  e4 e2.~ |
  e8 r gis a b d c b |
  a2~ a8 r r4 |
  R1*4 |
  
  r2 fis8. fis16 fis8 fis~ |
  fis4 r gis8. gis16 gis8 gis |
  a8. a16 b2 a4~ |
  a r r2 |
  
  % page 4
  e2( c' |
  f,1) |
  d8[( d] d f4 d b8 |
  c2 c) |
  a8[( a] a e'4 c a8 |
  
  b8[ b] b d4~ d4. |
  b8[ b] b f'4 e e8 |
  a4) r r2 |
  e8. e16 e8 e r4 e8 e |
  
  a8. e16 a8. e16 a4 e8 d |
  c8. c16 c8 e a c b a |
  b2. r4 |
  
  % page 5
  e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b |
  
  c2~ c8 r r4 |
  r2 e,4. e8 |
  e4 e2.~ |
  e8 r r4 f4. f8 |
  f4 f2.~ |
  
  f8 r r4 e4. e8 |
  e4 e2. ~ |
  e8 r r4 a g |
  g2 f~ |
  
  % page 6
  f8 r f g a8. a16 g8 f |
  a2.~( a8[ g16 f] |
  e2.~ e8) r |
  
  f8. f16 f8 f~ f4 r |
  gis8. gis16 gis8 gis~ gis4 r |
  a8. a16 b2 a4~ |
  
  a4 r e8. e16 e8. e16 |
  e4 e2.~ |
  e4~ e8 r e8. e16 e8. e16 |
  f1~ |
  
  % page 7
  f2 f4 e |
  e e2.~ |
  e8 r gis a b d c b |
  a2 a4 g |
  
  g2 f~ |
  f8 r f g a8. a16 g8 f |
  a2.~( a8[ g16 f] |
  e2.~ e8) r |
  
  <fis b>8. q16 q8 q~ q4 r |
  <gis b>8. q16 q8 q~ q4 r |
  a8. a16 b2. |
  b1 |
  <a cis>1~ |
  q~ |
  q8 r r4 r2
}

lyricscore = \lyricmode {
  А… А… А… 
  А…
  День По -- бе -- ды, День По -- бе -- ды, День По -- бе -- ды
   А… А… А… 
   А…
   День По -- бе -- ды. Э -- тот День По -- 
   бе -- ды по -- ро -- хом про -- пах, э -- то
   празд -- ник с_се -- ди -- но -- ю на вис -- ках
   
   День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды!
    А… А… А… 
   Здрав -- ствуй, ма -- ма, воз -- вра -- 
   ти -- лись мы не все, бо -- си -- ком бы про -- бе -- жать -- ся по ро -- се…
   
   Пол Ев -- ро -- пы про -- ша -- га -- ли, пол зем -- ли, э -- тот день мы при -- бли -- жа -- ли как мог --
   ли.
   День По -- бе -- ды!
   День По -- бе -- ды!
   День По -- бе -- ды!
   Э -- то ра -- дость
   со сле -- за -- ми на гла -- зах.
   
   День По -- бе -- ды!
   День По -- бе -- ды!
   День По -- бе -- ды!
   
   Э -- тот день По -- бе -- ды!
   По -- ро -- хом про -- пах,
   э -- то празд -- ник с_се -- ди -- но -- ю на вис -- ках,
   э -- то ра -- дость со сле -- за -- ми на гла -- зах,
   
   День По -- бе -- ды!
   День По -- бе -- ды!
   День По -- бе -- ды!
   А!‥
}

partfour = {
  \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "alto" { \oneVoice \altvoice }
      >> 
      
      %\new Lyrics \lyricsto "alto" { \lyricscore }
      
      \new Staff = "tenorstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "tenor" { \oneVoice \clef "treble_8" \tenorvoice }
      >> 
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      
       \new Staff = "bassstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "bass" { \oneVoice \clef bass \bassvoice }
      >> 
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 30
    indent = 10
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
      
      
      
      
      %\new Lyrics \lyricsto "bass" { \lyricscore }
      
      % alternative lyrics above up staff
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
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=120
    }
  }
}
