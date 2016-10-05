\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.4)

\header {
  title = "Крест хранитель"
  composer = "А. Архангельский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  indent = 4
  ragged-last-bottom = ##f
}

global = {
  \key g \minor
  \time 4/4
  \tempo "Andante"
  \autoBeamOff
}

abr = { \break }
abr = {}

soprano = \relative c'' {
  \global
  \dynamicUp
  g2.\p fis4 | % 2
  g4( bes) a g | % 3
  g4 fis8 [ e ] fis4 fis | % 4
  g2. r4 | % 5
  bes2. a4 \abr | % 6
  bes2 a4 bes | % 7
  c4( d8 [ es ] d4) c | % 8
  bes4( a8 [ bes ] c [ bes a g ] | % 9
  fis4 g a) g | \barNumberCheck #10 \abr
  fis2. a4 | % 11
  g4( bes a) g | % 12
  a1 \breathe| % 13
  bes2 bes4 c | % 14
  d2( es4 d | % 15
  c2 bes) \abr | % 16
  c2 a4 r | % 17
  c2( a4) bes | % 18
  c2( d4 es | % 19
  d2) c | \barNumberCheck #20
  c2 bes4 r \abr | % 21
  d1\p | % 22
  d2 d | % 23
  d4. d8 d4 d | % 24
  d4. d8 d2 \breathe | % 25
  es1-> | % 26
  d4. d8 d2 \abr | % 27
  <c es>2( <d f>4 <es g>) | % 28
  <d f>2 <c es> | % 29
  <c es>2 d4 d | \barNumberCheck #30
  c4( bes) a bes | % 31
  a1 | % 32
  g1 \bar "||" | % 33
  \time 3/4  \tempo "Allegro moderato" bes2 bes4 | % 34
  d4 c bes | % 35
  a2 bes4 | % 36
  c4. bes8 a4 | % 37
  c2. \abr | % 38
  c2 d4 | % 39
  es4( f8 [ g  f  es ] ) | \barNumberCheck #40
  es2 d4 | % 41
  d2.\f ~ | % 42
  d2 d4 | % 43
  d2 d4 | % 44
  d4 d r \abr | % 45
  d2. | % 46
  g2 f4 | % 47
  es4( d) c | % 48
  d2. | % 49
  c2. | \barNumberCheck #50
  bes2.\fermata | % 51
  \bar "||" \time 4/4 \tempo Andante a1->\p \abr | % 52
  bes2 bes4 bes | % 53
  bes2 a4^"rit." d | % 54
  c4( bes) a bes | % 55
  a1 | % 56
  g1\fermata \bar "|."
  
}

alto = \relative c' {
  \global
  
  d2. d4 | % 2
  d2 d4 d | % 3
  d4 d d d | % 4
  d2. r4 | % 5
  f2. f4 | % 6
  f2 f4 f | % 7
  f2. f4 | % 8
  f2.( es4 | % 9
  d2.) d4 | \barNumberCheck #10
  d2. fis4 | % 11
  g2. g4 | % 12
  fis1 | % 13
  g2 g4 a | % 14
  bes1( | % 15
  f1) | % 16
  a2 f4 r | % 17
  f2. f4 | % 18
  a1( | % 19
  a4 bes g2) | \barNumberCheck #20
  f2 f4 r | % 21
  fis2.( a4) | % 22
  a8 [ g fis g ] fis2 | % 23
  bes4. a8 g4 fis | % 24
  g4. g8 g2 | % 25
  g1 | % 26
  f4. f8 f2 | % 27
  a1 | % 28
  a2 a | % 29
  a2 bes4 g | \barNumberCheck #30
  g2 g4 g | % 31
  g4( fis8 [ e ] fis2) \abr| % 32
  d1 | % 33
  \time 3/4  f2 f4 | % 34
  f4 f f | % 35
  f2 f4 | % 36
  a4. f8 f4 | % 37
  a2. | % 38
  a2 bes4 | % 39
  a2. | \barNumberCheck #40
  c2 bes4 | % 41
  a2. ~ | % 42
  a2 a4 | % 43
  g4( c) bes | % 44
  bes4 a r | % 45
  bes2. | % 46
  g2 c4 | % 47
  bes2 bes4 | % 48
  bes2. | % 49
  a2. | \barNumberCheck #50
  f2. | % 51
  \time 4/4  fis1 | % 52
  g2 g4 g | % 53
  g2 fis4 g | % 54
  g2 g4 g | % 55
  g2( fis) | % 56
  d1 \bar "|."
  
}

tenor = \relative c' {
  \global
  bes2. a4 | % 2
  bes4( d) c bes | % 3
  a4 a a a | % 4
  bes2. r4 | % 5
  d2. c4 | % 6
  d2 c4 d | % 7
  es4( f8 [ g ] f4) es | % 8
  d4( c8 [ d ] es [ d ] c4 | % 9
  a4 bes c) bes | \barNumberCheck #10
  a2. c4 | % 11
  bes2( c4) cis | % 12
  d1 \breathe| % 13
  d2 d4 f | % 14
  f2( g4 f | % 15
  c2 d) | % 16
  es2 c4 r | % 17
  es2( c4) d | % 18
  es2( f4 g | % 19
  f2) es | \barNumberCheck #20
  es2 d4 r | % 21
  a2.( c4) | % 22
  c8 [ bes a bes ] a2 | % 23
  d4. c8 bes4 a | % 24
  bes4. bes8 bes2 \breathe | % 25
  bes1 | % 26
  bes4. bes8 bes2 | % 27
  c1 | % 28
  c2 c | % 29
  <c es>2 <bes d>4 bes | \barNumberCheck #30
  es4( d) c d | % 31
  es4( d2 c4) | % 32
  bes1 | % 33
  \time 3/4  d2 d4 | % 34
  f4 es d | % 35
  c2 d4 | % 36
  es4. d8 es4 | % 37
  f2.-> | % 38
  es2 d4 | % 39
  c4( d8 [ es  d  c ] ) | \barNumberCheck #40
  a2 bes4 | % 41
  fis'2. ~ | % 42
  fis2 fis4 | % 43
  g4( fis) g | % 44
  g2 fis4 | % 45
  d2. | % 46
  d2 f4 | % 47
  bes,2 g'4 | % 48
  f2. | % 49
  es2. | \barNumberCheck #50
  d2. | % 51
  \time 4/4  d1 | % 52
  d2 d4 d | % 53
  d2 d4 d | % 54
  es4( d) c d | % 55
  es2( d4 c) | % 56
  b1 \bar "|."
  
}

bass = \relative c {
  \global
  g2( bes4) d | % 2
  g2 fis4 g | % 3
  d4 d d d | % 4
  g,2. r4 | % 5
  bes2( d4) f | % 6
  bes2 f4 f | % 7
  f2. f4 | % 8
  bes,2( a8 [ bes ] c4 | % 9
  d2.) d4 | \barNumberCheck #10
  d2. d4 | % 11
  es2. es4 | % 12
  d1 | % 13
  g2 g4 f | % 14
  bes1( | % 15
  a2 bes) | % 16
  f2 f,4 r | % 17
  f'2. f4 | % 18
  f1 ~ | % 19
  f2 a | \barNumberCheck #20
  bes2 bes,4 r | % 21
  d1 | % 22
  d2 d | % 23
  d4. d8 d4 d | % 24
  g4. g8 g2 | % 25
  c,1 | % 26
  bes'4. bes,8 bes2 | % 27
  f'1 | % 28
  f2 f | % 29
  f2 bes,4 bes | \barNumberCheck #30
  c4( d) es d | % 31
  c4( d2.) | % 32
  g,1 | % 33
  \time 3/4  bes4( d) f | % 34
  bes4 a bes | % 35
  f2 f4 | % 36
  f4. f8 f4 | % 37
  f2. | % 38
  f2 f4 | % 39
  f2. | \barNumberCheck #40
  f2 bes4 | % 41
  d2. ~ | % 42
  d2 c4 | % 43
  bes4( a) g | % 44
  d'4 d, r | % 45
  g2. | % 46
  bes2 a4 | % 47
  g4( f) es | % 48
  f4( d bes) | % 49
  f'2. | \barNumberCheck #50
  bes,2.\fermata | % 51
  \time 4/4  d1 | % 52
  g4( d) bes g | % 53
  d'2 d4 bes | % 54
  c4( d) es d | % 55
  c2( d) | % 56
  g,1\fermata \bar "|."
  
}

verse = \lyricmode {
  Крест хра -- ни -- тель все -- я все -- ле -- нны -- я.
  Крест хра -- ни -- тель все -- я __ все -- ле -- нны -- я, все -- ле -- нны -- я,
  Крест кра -- со -- та __ Це -- ркви,
  Крест ца -- рей __ де -- ржа -- ва,
  Крест __ ве -- рных, ве -- рных у -- тве -- ржде -- ни -- е
  Крест А -- нге -- лов, А -- нге -- лов сла -- ва и де -- мо -- нов я -- зва.
  Крест хра -- ни -- тель все -- я все -- ле -- нны -- я,
  Крест кра -- со -- та __ Цер -- кви,
  Крест ца -- рей __ де -- ржа -- ва.
  Крест ве -- рных у -- тве -- ржде -- ни -- е.
  Крест А -- нге -- лов сла -- ва и де -- мо -- нов я -- зва.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "С" "А" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Т" "Б" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
