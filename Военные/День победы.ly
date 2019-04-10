\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "«День Победы»"
  subtitle = "(оригинал)"
  composer = "Музыка Д. Тухманова"
  arranger = "Переложение и обработка для концертного"
  poet = "Слова В. Харитонова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  system-separator-markup = \slashSeparator
}

global = {
  \set Score.markFormatter = #format-mark-box-numbers
  \key a \minor
  \time 4/4
  \tempo "Alla Marcia"
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
%mbr = {}

% once place text markup below dynamic
swp = \once \override TextScript.outside-staff-priority = #1

soprano = \relative c' {
  \global
  \dynamicUp
  R1 | \mark \default \bar ".|:"
  e2\f( c' |
  f,1) |
  f8[( g b d]~ d b4 g8 |
  f2 e) |
  e8[ f e c']~ c a4 e8 | \abr
  
  e8[ f e b']~ b2 |
  e,8[ f e d']~ d c4 b8 |
  a4~ a8 r r2 \bar "||"| \mbr
  R1*3 | \abr
  R1*6 | \abr
  R1*6 | \abr
  R1*6 | \abr
  R1*6 | \abr
  \mark \default <c e>1( |
  <b e>) |
  <d e>( |
  <c f>2) ( << <b e>) {s16\> s4. s16\!} >> \bar "||" R1*2 | \abr
  R1*6 | \abr
  
  \mark \markup{ \box 8c } r2  e8.-> e16-> e8.-> d16-> |
  b4-> a r2 |
  r b8. a16 gis8. a16 |
  b2 r |
  \mark \markup{ \box 8d } r b4-> a-> |
  a gis r2 | \abr

  r2 a4 g |
  g2 f~ |
  f4 f8 g a8. a16 g8 f |
  a1 |
  R1*2 | \abr
  
  R1*3 |
  \mark \default e2\f( c' |
  f,1) |
  f8[( g b d]~ d b4 g8 | \abr
  
  f2 e) |
  e8[ f e c']~ c a4 e8 | 
  e8[ f e b']~ b2 |
  e,8[ f e d']~ d c4 b8 |
  a4~ a8 r r2 \bar "||"| \mbr
  R1 \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  
  R1*3 |
   r2  e'8.-> e16-> e8.-> d16-> \bar "||"
  b4-> a2.~ |
  a4~ a8 r b8. a16 gis8. a16 | \abr
  
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g |
  g2 f~ | \abr

  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r |
  fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r  \bar "||"
  \mark \default a8.-> a16-> b2.~-> \abr
  b2 a~ |
  a1~ |
  a2~ a8 r r4 |
  \arpeggioBracket
  <cis e>1~\arpeggio |
  q~ |
  q~ |
  q~ |
  q8 r r4 r2 \bar "|."
   
  %soprano
}

alto = \relative c' {
  \global
  R1 |
  c2(\f a' |
  d,1 ) |
  d8[( e d f~] f d4 d8 |
  d2 c) |
  \mark \markup{ \box 1a } e8[ f e c']~ c a4 e8 | \abr
  
  e8[ f e b'~ ] b2 |
  e,8[ f e d'] d c4 b8 |
  a4~ a8 r r2 | \bar "||"
  R1*3 | \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  
  e1~ |
  e |
  e( |
  f2) ( << e ) {s16\> s4. s16\!} >> \bar "||" R1*2 \abr
  
  R1*6 \abr
  r2 c'8.-> c16-> c8.-> b16-> |
  b4-> a r2 |
  r b8. a16 gis8. a16 |
  b2 r |
  r b4-> a-> |
  a gis r2 | \abr
  
  r2 f4 e |
  e2 d2~ |
  d4 d8 e f8. f16 e8 d |
  c1 |
  R1*2 \abr
  
  R1*3 c2(\f a' |
  d,1 ) |
  d8[( e d f~] f d4 d8 | \abr
  d2 c) |
  e8[ f e c']~ c a4 e8 | 
  e8[ f e b'~ ] b2 |
  e,8[ f e d'] d c4 b8 |
  a4~ a8 r r2 | \bar "||"
  R1 | \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  
  R1*3 |
  r2 c8.-> c16-> c8.-> b16-> |
  \mark \default b4-> a2.~ |
  a4~ a8 r b8. a16 gis8. a16 | \abr
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g |
  g2 f~ | \abr
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r |
  fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  a8.-> a16-> b2.->~ \abr
  
  b2 a~ |
  a1~ |
  a2~ a8 r r4 |
  a1~ |
  a~ |
  a~ |
  a~ |
  a8 r r4 r2
  %alt
}

tenor = \relative c {
  \global
  R1 |
  e2\f( c' |
  f,1) |
  f8[( g b d]~ d b4 g8 |
  f2 e ) |
  e'1~ \abr
  e |
  gis, |
  a4~ a8 r r2 |
  R1*3 \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  
  R1*2 |
  \change Staff = "tenorstaff"
  e2\p( c' |
  f,1) |
  f8[( g b d]~ d b4 g8 |
  f2 e)  \bar "||" \abr
  \change Staff = "malevoice"
  
  e8[( e16 f] e8[ c']~ c2)( |
  b2.)~ b8 r |
  e,8[ f e d']~ d2 |
  c( << b) {s16\> s4. s16\!} >> \mbr
  R1*2 \abr
  R1*6 \abr
  
  r2 <c e>8.-> q16-> q8.-> <b d>16-> |
  b4-> a r2 |
  r b8. a16 gis8. a16 |
  b2 r |
  r b4-> a-> |
  a gis r2 | \abr
  
  r2 cis4 cis |
  e2 d~ |
  d4 d8 e f8. f16 e8 d |
  c1 |
  R1*2 | \abr
  
  R1*3 |
  e,2( c' |
  f,1) |
  f8[( g b d]~ d b4 g8 | \abr
  f2 e ) |
  e'1~ |
  e |
  gis, |
  a4~ a8 r r2 |
  R1 \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  R1*3
  r2 <c e>8.-> q16-> q8.-> <b d>16-> |
  b4-> a2.~ |
  a4~ a8 r b8. a16 gis8. a16 | \abr
  
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g |
  g2 f2~ | \abr
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r |
  fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  a8.-> a16-> b2.->~ |
  b2 a~ |
  a1~ |
  a2~ a8 r r4 |
  
  <cis e>1~ |
  q~ |
  q~ |
  q~ |
  q8 r r4 r2
  %tenor
}

bass = \relative c {
  \global
  R1 |
  << { \voiceFour e1( } \new Voice { \voiceTwo e2 a } >>
  \voiceTwo
  f1) |
  g,1( |
  c2 e ) |
  e1~ | \abr
  e |
  e |
  a,4~ a8 r r2 |
  R1*3 \abr
  
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  
  R1*2 |
    \change Staff = "barstaff"
  \mark \default <a a'~>1( 
  <d a'>) |
  <g, g'~>( |
  <c g'>2.) r4 | \abr
  \change Staff = "malevoice"
  e8[( e16 f] e8[ a]~ a2)( |
  gis2.)~ gis8 r |
  e8[ f e b'~] b2 |
  a2( gis)
  R1*2 \abr
  R1*6 \abr
  
  r2
  <e c'>8.-> q16-> q8.-> <d b'>16-> |
  b'4-> a r2 |
  r b8. a16 gis8. a16 b2 r |
  r b4-> a-> |
  a gis r2 \abr
  
  r2 a4 g |
  g2 f~ |
  f4 f8 g a8. a16 g8 f |
  a1 |
  R1 |
  R1 \abr
  
  R1*3 |
  << { \voiceFour e1( } \new Voice { \voiceTwo e2 a } >>
  \voiceTwo
  f1) |
  g,1( |
  c2 e ) |
  e1~ |
  e |
  e |
  a,4~ a8 r r2 |
  R1 \abr
  R1*6 \abr
  R1*6 \abr
  R1*6 \abr
  R1*3
  r2
  <e' c'>8.-> q16-> q8.-> <d b'>16-> |
  b'4-> a2.~ |
  a4~ a8 r 
  b8. a16 gis8. a16 |
  
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g |
  g2 f~ | \abr
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r |
  fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  
  a8.-> a16-> b2.->~ | \abr
  b2  a~ |
  a1~ |
  a2~ a8 r r4 |
  \arpeggioBracket
  <a e a,>1~\arpeggio
  q~ |
  q~ |
  q~ |
  q8 r r4 r2
}

solo = \relative c {
  \global
  \dynamicUp
  R1*6 \abr
  
  R1*3 
  \mark \default e8.\f^"Solo" e16 e8 e r4 e8 e |
  a8. e16 a8. e16 a4 e8 d |
  c c c e a c b a | \abr
  
  b2 r |
  \mark \default e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b |
  c2 c8.-> c16-> c8.-> b16-> \bar "||"
  \mark \default b4-> a2.~ | \abr
  
  a4~ a8 r b8. a16 gis8. a16 |
  b1~ |
  b2 b4-> a-> |
  \mark \default a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g \abr
  
  g2 f~ |
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r | \bar "||"
  \mark \default fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r | \abr
  
  a8.-> a16-> b2-> a4->~ |
  a r r2 | \bar "||" \mbr
  R1*4 \abr
  
  R1*4
  \mark \markup{ \box 8a } e8.\f e16 e8 e r4 e8 e |
  a8. e16 a8. e16 a4 e8 d | \abr
  
  c c c e a c b a |
  b2 r | \bar "||"
  \mark \markup{ \box 8b } e,8. e16 e8 e r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b |
  c2 c8.-> c16-> c8.-> b16-> \bar "||" \mbr

  b4-> a2.~ |  
  a4~ a8 r b8. a16 gis8. a16 |
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b | \abr
  
  a2 a4 g |
  g2 f~ |
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r | \bar "||" \mbr
  \mark \markup{ \box 8e } fis8.-> fis16-> fis8-> fis->~ fis4 r | \abr
  
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  
  a8.-> a16-> b2-> a4->~ |
  a r r2 | \bar "||" \mbr
  R1*3 \abr
  
  R1*5 |
  \mark \default e8. e16 e8 e r4 e8 e | \abr
  
  a8. e16 a8. e16 a4 e8 d |
  c c c e a c b a |
  b2 r | \bar "||"
  \mark \default e,8. e16 e8. e16 r4 e8 e |
  b'8. e,16 b'8. e,16 b'4 e,8 f |
  e8. e16 e8 gis b d c b | \abr
  
  c2 c8.-> c16-> c8.-> b16-> \bar "||"

  \mark \default b4-> a2.~ |  
  a4~ a8 r b8. a16 gis8. a16 |
  b1~ |
  b2 b4-> a-> |
  \mark \default a gis2.~ | \abr
  
  gis4 gis8 a b d c b |
  
  a2 a4 g |
  g2 f~ |
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r | \bar "||" \abr
  
  \mark \default fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  a8.-> a16-> b2-> a4->~ | \pbr
  a r c8.-> c16-> c8.-> b16-> \bar "||"
  b4-> a2.~ |  
  a4~ a8 r b8. a16 gis8. a16 | \abr
  
  b1~ |
  b2 b4-> a-> |
  a gis2.~ |
  gis4 gis8 a b d c b |
  a2 a4 g |
  g2 f~ | \abr
  
  f4 f8 g a8. a16 g8 f |
  a1( |
  e2.~ e8) r | \bar "||"
  fis8.-> fis16-> fis8-> fis->~ fis4 r |
  gis8.-> gis16-> gis8-> gis->~ gis4 r |
  a8.-> a16-> b2.~-> | \abr
  
  b2 a2~ |
  a1~ a~ a~ a~ a~ a~ |
  a8 r r4 r2 
}

verse = \lyricmode {
 А…
 
 \repeat unfold 11 { \skip 1 }
 Э -- тот день По -- бе -- ды
 по -- ро -- хом про -- пах
 э -- то празд -- ник
 э -- то ра -- дость __
 со сле -- за -- ми на гла -- зах
 А… \repeat unfold 9 {\skip 1}
 
  Э -- тот день По -- бе -- ды __ по -- ро -- хом про -- пах __
  э -- то празд -- ник __ с_се -- ди -- но -- ю на вис -- ках,
  э -- то ра -- дость __ со сле -- за -- ми на гла -- зах __
  День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды! __
  А!…
  
}

mailverse = \lyricmode {
 \repeat unfold 5 { \skip 1}
 М…
}

versesolo = \lyricmode {
  День По -- бе -- ды, как он был от нас да -- лёк! Как в_ко -- стре по -- тух -- шем та -- ял у -- го -- лёк.
  Бы -- ли вёр -- сты об -- го -- ре -- лы -- е в_пы -- ли, э -- тот день мы при -- бли -- жа -- ли, как мог -- ли.
  
  Э -- тот день По -- бе -- ды __ по -- ро -- хом про -- пах __
  э -- то празд -- ник __ с_се -- ди -- но -- ю на вис -- ках,
  э -- то ра -- дость __ со сле -- за -- ми на гла -- зах __
  День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды!
  
  Дни и но -- чи у мар -- те -- нов -- ских пе -- чей не смы -- ка -- ла на -- ша Ро -- ди -- на о -- чей,
  дни и но -- чи бит -- ву труд -- ну -- ю ве -- ли, э -- тот день мы при -- бли -- жа -- ли, как мог -- ли.
  
  Э -- тот день По -- бе -- ды __ по -- ро -- хом про -- пах __
  э -- то празд -- ник __ с_се -- ди -- но -- ю на вис -- ках,
  э -- то ра -- дость __ со сле -- за -- ми на гла -- зах __
  День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды!
  
  Здрав -- ствуй, ма -- ма, воз -- вра -- ти -- лись мы не все… бо -- си -- ком бы про -- бе -- жать -- ся по ро -- се!
  Пол -- Ев -- ро -- пы про -- ша -- га -- ли, пол -- зем -- ли, э -- тот день мы при -- бли -- жа -- ли как мог -- ли.
  
  Э -- тот день По -- бе -- ды __ по -- ро -- хом про -- пах __
  э -- то празд -- ник __ с_се -- ди -- но -- ю на вис -- ках,
  э -- то ра -- дость __ со сле -- за -- ми на гла -- зах __
  День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды! __
  
  Э -- тот день По -- бе -- ды __ по -- ро -- хом про -- пах __
  э -- то празд -- ник __ с_се -- ди -- но -- ю на вис -- ках,
  э -- то ра -- дость __ со сле -- за -- ми на гла -- зах __
  День По -- бе -- ды! День По -- бе -- ды! День По -- бе -- ды! __
  
}

\score {
  \transpose a bes {
  <<
  \new Staff \with {
     midiInstrument = "choir aahs"
      instrumentName = "Solo"
  } \new Voice = "solo" { \clef bass \oneVoice \solo }
  \new Lyrics \lyricsto "solo" \versesolo
  \new ChoirStaff <<
    \new Staff = "male" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Sopr." "Alto" }
      shortInstrumentName = \markup \center-column { "S" "A" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff = "tenorstaff" \with {
      midiInstrument = "choir aahs"
      shortInstrumentName = \markup \center-column { "T" }
    } { \clef bass \key a \minor \new Voice { s1*40 } }
        \new Staff = "barstaff" \with {
      midiInstrument = "choir aahs"
      shortInstrumentName = \markup \center-column { "Br" "B" }
    } { \clef bass \key a \minor \new Voice { s1*40 } }
    \new Staff = "malevoice" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bar." "Bass" }
      shortInstrumentName = \markup \center-column { "T" "Br" "B" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \mailverse
  >>

  >>
  } %transpose
  \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }}
  \midi {
    \tempo 4=100
  }
}
