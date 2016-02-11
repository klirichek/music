\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\header {
  title = "Ангел вопияше"
  composer = "Макаров"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key fis \minor
  \time 3/4
  \autoBeamOff
  \dynamicUp
}

sopranoOne = \relative c'' {
  \global
  e2-> d4 | % 2
  cis4( d4) e4 | % 3
  fis2.-> | % 4
  e2. | % 5
  d2 d4 | % 6
  cis2( b4) | % 7
  cis2. | % 8
  e4 e4 e4 | % 9
  e2 e4 | 
  e2 e4 | % 11
  e2 e4 | % 12
  fis2.-> | % 13
  e2. | % 14
  b4 ( cis4 ) d4 | % 15
  cis2 b4 | % 16
  cis2 r4 | % 17
  e2.-> | % 18
  d2 d4 | % 19
  e2.-> | 
  d2. | % 21
  dis4 dis4 dis4 | % 22
  e2. | % 23
  fis4 ( e4 dis4 ) | % 24
  e2 e4 | % 25
  e2-> e4 | % 26
  e2 e4 | % 27
  e2 e4 | % 28
  e2. | % 29
  fis2-> \p fis4 | 
  e2. | % 31
  d2 d4 | % 32
  cis2 b4 | % 33
  cis2.\fermata | % 34 \break
  \change Staff= "sa"
  \key d \major \time 4/4 | % 34
  \set Timing.measurePosition = #(ly:make-moment -1/4)
  \voiceOne
  cis4  | % 35
  d2 cis4 cis4 | % 36
  d4 d4 d4 a4 | % 37
  b8 cis8 d8 e8 fis4 fis4 | % 38
  d2 d2 | % 39
  cis4 cis4 d4 d4 | 
  a8 a8 b8( [ d8 )] cis8 b8 a4 | % 41
  r4 fis'4 g2 | % 42
  fis4( e4) d2 | % 43
  fis4 fis8 fis8 g4 g8 g8 | % 44
  fis4( e4) d2 | % 45
  <a cis>2 q | % 46
  d4 d4 d2 | % 47
  d4 c4 c4 c4 | % 48
  c2 b2 | % 49
  a4 b4 c4 b4 | 
  a2 a4 a4 | % 51
  a4. a8 a2 | % 52
  d2. d4 | % 53
  d2 cis4 cis4 | % 54
  d2 r2\fermata \bar "|."
  
}

sopranoTwo = \relative c'' {
  \global
  cis2 b4 | % 2
  a4(  b4) cis4 | % 3
  d2. | % 4
  cis2. | % 5
  b2 b4 | % 6
  a2( gis4) | % 7
  a2. | % 8
  d4 d4 d4 | % 9
  cis2 cis4 | \barNumberCheck #10
  d2 d4 | % 11
  cis2 \breathe cis4 | % 12
  d2. | % 13
  cis2. | % 14
  a2 a4 | % 15
  a2 gis4 | % 16
  a2 r4 | % 17
  a2. | % 18
  a2 a4 | % 19
  a2. | \barNumberCheck #20
  a2. | % 21
  b4 b4 b4 | % 22
  b2. | % 23
  b2. | % 24
  b2 b4 | % 25
  cis2 cis4 | % 26
  b2 cis4 | % 27
  d2 -> d4 | % 28
  cis2. | % 29
  d2 d4 | \barNumberCheck #30
  cis2. | % 31
  b2 b4 | % 32
  a2 gis4 | % 33
  a2. \bar "||" % 34
}

altoOne = \relative c'' {
  \global
  a2 a4 | % 2
  a2 a4 | % 3
  gis2. | % 4
  a2. | % 5
  fis2 d4 | % 6
  e2. | % 7
  a2. | % 8
  b4 a8 [ gis8 ] fis8 [ e8 ] | % 9
  a2 a4 | \barNumberCheck #10
  b4 ( -> a8 [ gis8 ) ] fis8 [ e8 ] | % 11
  a2 a4 | % 12
  gis2. -> | % 13
  a2. | % 14
  d,4( e4) fis4 | % 15
  e2 e4 | % 16
  a2 r4 | % 17
  g2. -> | % 18
  fis2 fis4 | % 19
  g2. -> | \barNumberCheck #20
  fis2. | % 21
  fis4 fis4 fis4 | % 22
  gis?2. | % 23
  a4 ( gis4 fis4 ) | % 24
  gis2 gis4 | % 25
  a2 -> a4 | % 26
  gis2 a4 | % 27
  b2 b4 | % 28
  a2. | % 29
  gis2 -> gis4 | \barNumberCheck #30
  a2. | % 31
  fis2 d4 | % 32
  e2 e4 | % 33
  a2. \fermata % 34 
  \break
  \change Staff= "sa"
  \key d \major \time 4/4 % 34
  \set Timing.measurePosition = #(ly:make-moment -1/4)
  \voiceTwo a4^\markup{\dynamic f \italic"Скорее"} | % 35
  a2 a4 a4 | % 36
  a4 fis4 fis4 fis4 | % 37
  g8 a8 b8 cis8 d4 d4 | % 38
  a2 a2 | % 39
  a4 a4 a4 a4 | 
  fis8 fis8 g8 [ b8 ] a8 g8 fis4 | % 41
  r4 a4\f b2 | % 42
  a4( g4) fis2 | % 43
  a4 -> a8 a8 g4 g8 g8 | % 44
  a4(\> g4) fis2 \breathe | % 45
  g2 \p g2 | % 46
  <fis a>4 <fis a>4 <fis a>2 | % 47
  fis4 fis4 fis4 a4 | % 48
  a2 g2 | % 49
  fis4 g4 a4 g4 | 
  fis2 \breathe e4 \f e4 | % 51
  fis4. fis8 fis2 \breathe| % 52
  b2. b4 | % 53
  a2 g4 g4 | % 54
  fis2 r2 \bar "|."
  
}

tenor = \relative c' {
  \global
  s2.*33
  \key d \major \time 4/4 % 34
  \set Timing.measurePosition = #(ly:make-moment -1/4)
  e4 | % 35
  fis2 e4 e4 | % 36
  fis4 d4 r2 R1 | % 38
  fis2 fis2 | % 39
  e4 e4 fis4 fis4 |
  r2 r4 d4 | % 41
  d4 d4 d2 | % 42
  d4( cis4) d2 | % 43
  d4 d8 d8 d4 d8 d8 | % 44
  d4( cis4) d2 \breathe | % 45
  e2 e2 | % 46
  d4 d4 d2 | % 47
  d4 d4 d4 d4 | % 48
  d2 d2 | % 49
  d4 d4 d4 d4 |
  d2 \breathe cis4 cis4 | % 51
  d4. d8 d2 \breathe | % 52
  e2. e4 | % 53
  fis2 e4 e4 | % 54
  a,2 r2 \bar "|."
  
}

bass = \relative c' {
  \global
  s2.*33
  a4 \f | % 35
  d2 a4 a4 | % 36
  d4 d,4 r2 R1 | % 38
  d'2 d2 | % 39
  a4 a4 d4 d,4 s2. s4 \f | % 41
  r4 d'4 d2 | % 42
  a2 d,2 | % 43
  d4 -> fis8 a8 d4 d8 d8 | % 44
  a2 d,2 | % 45
  <a a'>2 a2 | % 46
  d4 d4 d2 | % 47
  d4 d4 d4 fis4 | % 48
  g2 g2 | % 49
  d4 d4 d4 d4 | 
  d2 a4 \f a4 | % 51
  d4. d8 d2 | % 52
  <g, g'>4 ( <a a'>4 <b b'>4 ) <g g'>4 | % 53
  <a a'>2 a4 a4 | % 54
  d2 r2\fermata \bar "|."
  
}
verseb = \lyricmode {
  Све -- ти -- ся, све
  -- ти -- ся, Сла -- ва бо Го -- спо -- дня  ли -- куй ны -- не, и ве -- се
  -- ли -- ся Си -- о -- не; Ты же, чис -- та --
  я, чис -- та -- я кра -- суй -- ся, Бо -- го --
  ро -- ди -- це, о воз -- ста -- ни -- и рож --
  дест -- ва Тво -- е -- го.
}

verse = \lyricmode {
  Ан -- гел во -- пи --
  я -- ше бла -- го -- дат -- ней: Чи -- ста -- я
  Де -- во ра -- дуй -- ся, и па -- ки ре -- ку,
  ра -- дуй -- ся: Твой Сын вос -- кре -- се три --
  дне -- вен от гро -- ба, и мерт -- вы -- я воз
  -- дви -- гну -- вый, лю -- ди -- е ве -- се -- ли
  -- те -- ся.
 Све -- ти -- ся, све
  -- ти -- ся, но -- вый И -- е -- ру -- са -- ли --
  ме; Сла -- ва бо Го -- спо -- дня на те -- бе
  воз -- си -- я. ли -- куй ны -- не, и ве -- се
  -- ли -- ся Си -- о -- не; Ты же, чис -- та --
  я, чис -- та -- я кра -- суй -- ся, Бо -- го --
  ро -- ди -- це, о воз -- ста -- ни -- и рож --
  дест -- ва Тво -- е -- го.
  
}

verset = \lyricmode {
  \repeat unfold 12 \skip 1
  Ли -- куй,
}

\score {
  \new ChoirStaff <<
    
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "С" "А" }
      shortInstrumentName = \markup \center-column { "С" "А" }
    } <<
      \new Voice = "soprano3" {  s4*21 s2*9 s2*15 s4*15 s4*15 }
    >>
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "СI" "СII" }
      shortInstrumentName = \markup \center-column { "СI" "СII" }
    } <<
      \new Voice = "soprano1" { \voiceOne \sopranoOne }
      \new Voice = "soprano2" { \voiceTwo \sopranoTwo }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "А"
      shortInstrumentName = "А"
    } \new Voice = "alto1" \altoOne
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Т" "Б" }
      shortInstrumentName = \markup \center-column { "Т" "Б" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
     \new Lyrics \with {
 %      alignAboveContext = "tb"
     \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verset
    \new Lyrics \lyricsto "bass" \verseb
  >>
  \layout { 
  
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=100
  }
}
