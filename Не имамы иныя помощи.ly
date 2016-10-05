
\version "2.18.2"
% automatically converted by musicxml2ly from /media/ddwrt/notes/imamy.xml

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\header {
  composer = "А.Рожнов"
  title = "Не имамы иныя помощи"
      tagline = ##f
}

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 15
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
  }

abr = { \break }
abr = {}

global = {
  \key fis \minor
  \time 4/4
  \autoBeamOff
}

sopvoice =  \relative a' {
  \global
  \partial 4 a | 
  <a cis>4. <gis b>8 a4 <gis b> | 
  <b d>4( <a cis>) <gis b>( a) | \abr
  
  <fis a>4. <eis gis>8 <eis gis>4 gis | % 4
  b4. a8 gis4 a | % 5
  d2 cis4 b | \abr
  
  b2 a4( cis) | % 7
  fis4 fis8 fis e!4 d | % 8
  d4. cis8 cis2 | \abr
  
  b4. bis8 cis4 b | \barNumberCheck #10
  a2 r4 a | % 11
  b4.\< b8 cis4\! d | \abr
  
  d4.\> cis8 cis2\! | % 13
  <d fis>4. <d fis>8 <cis e>4 <b d> | % 14
  cis2. r4 | % 15
  b4. b8 a4 gis | \abr
  
  fis2.\fermata r4 | % 17
  cis'4 cis d cis | % 18
  cis4. b8 b2 | % 19
  b4 b cis d | \barNumberCheck #20 \abr
  
  d4. cis8 cis4. r8 | % 21
  e4 e d cis | % 22
  fis2( e4 d | % 23
  cis2) d | \abr
  
  cis2 r4 a | % 25
  <a cis>4.( <gis b>8) a4 <gis b> | % 26
  <b d>4( <a cis>) <gis b>( a) | \abr
  
  <fis a>2( <eis gis>4) gis | % 28
  b4.( a8) gis4 a | % 29
  d2( cis4) b | \barNumberCheck #30
  b2( a4) r | \abr
  
  <d fis>4. <d fis>8 <cis e!>4 <b d> | % 32
  <b d>2 cis4 r | % 33
  b4. b8 a4 gis | \abr
  
  b4( a gis fis | % 35
  fis4 a gis b | % 36
  a1 | % 37
  gis1) | % 38
  fis1\fermata \bar "|."
}

altvoice =  \relative fis' {
  \global
  
  fis4 | % 1
  fis4. fis8 fis4 fis | % 2
  fis2 eis4( fis) | % 3
  cis4. cis8 cis4 eis\p | % 4
  gis4. fis8 eis4 fis | % 5
  fis4( gis) a gis | % 6
  gis2 fis4 a | % 7
  a4 a8 a b4 b | % 8
  b4. a8 a2 | % 9
  fis4. fis8 <eis gis>4 <eis gis> | \barNumberCheck #10
  fis2 r4 fis\p | % 11
  gis4. gis8 a4 b | % 12
  b4. a8 a2 | % 13
  a4. a8 a4 gis | % 14
  a2. r4 | % 15
  fis4.\p gis8 fis4 eis | % 16
  cis2. r4 | % 17
  a'4 a gis a | % 18
  a4. gis8 gis2 | % 19
  gis4 gis a b | \barNumberCheck #20
  b4. a8 a4. r8 | % 21
  a4 a gis a | % 22
  a2( ais4 b | % 23
  a!2) <gis b> | % 24
  a2 r4 fis | % 25
  fis2 fis4 fis | % 26
  fis2 eis4( fis) | % 27
  cis2. eis4\p | % 28
  gis4.( fis8) eis4 fis | % 29
  fis4( gis a) gis | \barNumberCheck #30
  gis2 fis4 r | % 31
  a4.\f a8 a4 gis | % 32
  gis2 a4 r | % 33
  fis4.\p fis8 fis4 fis | % 34
  eis4( fis eis fis | % 35
  fis1 | % 36
  fis1 | % 37
  fis2 eis) | % 38
  cis1 \bar "|."
}

tenorvoice =  \relative cis' {
  \global
  \partial 4 r4 | R1 | R | % 3
  r2 r4 cis | % 4
  cis4. cis8 cis4 cis | % 5
  fis2 <cis fis>4 <cis eis> | % 6
  <cis eis>2 << { cis } { fis4( cis) } >> | % 7
  cis4 cis8 cis e!4 e | % 8
  e4. e8 e2 | % 9
  d4. gis,16 [ a ] cis4 cis | \barNumberCheck #10
  cis2 r4 cis | % 11
  e!4. e8 e4 e | % 12
  e4. e8 e2 | % 13
  <d fis>4. <d fis>8 <cis e>4 e | % 14
  e2. r4 | % 15
  d4. d8 cis4 b | % 16
  a2. r4 | % 17
  e'!4 e e e | % 18
  e4. e8 e2 | % 19
  e4 e e e | \barNumberCheck #20
  e4. e8 e4. r8 | % 21
  cis4 cis d e | % 22
  fis1( | % 23
  e2) e | % 24
  e2 r R1 R | % 27
  r2 r4 cis | % 28
  cis2 cis4 cis | % 29
  fis2( <cis fis>4) <cis eis> | \barNumberCheck #30
  <cis eis>2 <cis fis>4 r | % 31
  <d fis>4. <d fis>8 <cis e!>4 e | % 32
  e2 e4 r | % 33
  d4. d8 cis4 b | % 34
  cis2( b4 a | % 35
  d4 cis b d | % 36
  cis1 | % 37
  b1) | % 38
  a1 \bar "|."
}

bassvoice =  \relative cis {
  \global
  \partial 4 r4 | R1 | R1 | % 3
  r2 r4 cis\p | % 4
  cis4. cis8 cis4 cis | % 5
  b2 cis4 cis | % 6
  cis2 fis | % 7
  fis4 fis8 fis gis4 gis | % 8
  e!4. a,8 a2 | % 9
  d4. d8 cis4 cis | \barNumberCheck #10
  <fis, fis'>2 r4 <fis fis'>\p | % 11
  e'!4. e8 e4 e | % 12
  e4. <a, a'>8 <a a'>2 | % 13
  d4. d8 e4 e | % 14
  a,2. r4 | % 15
  b4.\p b8 cis4 cis | % 16
  <fis, fis'>2.\fermata r4 | % 17
  <a a'>4 <a a'> <b b'> <a a'> | % 18
  <e! e'!>4. <e e'>8 <e e'>2 | % 19
  e'4 d cis b | \barNumberCheck #20
  <gis gis'>4. <a a'>8 <a a'>4. r8 | % 21
  <a a'>4 <a a'> <b b'> <cis cis'> | % 22
  <d d'>2( <cis cis'>4 <b b'> | % 23
  e2) <e, e'> | % 24
  a2 r R1 R | % 27
  r2 r4 cis\p | % 28
  cis2 cis4 cis | % 29
  b2( cis4) cis | \barNumberCheck #30
  cis2( fis4) r | % 31
  d4.\f d8 e!4 e | % 32
  e2 a,4 r | % 33
  b4.\p b8 cis4 d | % 34
  cis2.( d4 | % 35
  b4 cis d b | % 36
  cis1 | % 37
  <cis, cis'>1) | % 38
  <fis fis'>1\fermata \bar "|."
}

text = \lyricmode {
  Не и -- ма -- мы и -- ны -- я __ по -- мо -- щи, 
  не и -- ма -- мы и -- ны -- я на -- деж -- ды, __
  раз -- ве те -- бе, Вла -- ды -- чи -- це:
  ты нам по -- мо -- зи, 
  Вла -- ды -- чи -- це, Вла -- ды -- чи -- це, 
  ты нам по -- мо -- зи, ты нам по -- мо -- зи,
  на те -- бе на -- де -- ем -- ся, на те -- бе на -- де -- ем -- ся, 
  и то -- бо -- ю хва -- лим -- ся,
  тво -- и __ бо ес -- мы __ ра -- би, __ тво -- и бо ес -- мы __ ра -- би, __
  да не по -- сты -- ди -- мся, да не по -- сты -- ди -- мся.
}

% The score definition
\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
      instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    }
    <<
          \new Voice = "soprano" { \voiceOne \sopvoice }
          \new Voice  = "alto" { \voiceTwo \altvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \text }
       \new Staff \with {
      instrumentName = \markup { \right-column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    >>

  >>
  \layout {
%        #(layout-set-staff-size 20)
  }
  \midi {
      \tempo 4=80
  }
}

