\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Небо и земля"
  subtitle = "(ст. на Литии)"
  composer = "муз. В. Лебедева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr= {}

global = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Величественно и скоро"
  e4\<( g8\![ f\>] e4) e |
  e2 \! e | % 3
  e2.( d4) | % 4
  c4 ( d ) c2 | \abr
  c2 g4 ( a ) | % 6
  b1 | % 7
  d4 d d d8[( c]) | % 8
  b4 ( a8 [ g ] a4 g8 [ b ] \abr
  d4 c b2 ) | \barNumberCheck #10
  d1 | % 11
  <a d>2 << { d } \new Voice { \voiceThree g,4( a) } >>| % 12
  <b d>4 d d d \abr
  d1 | % 14
  d2 d | % 15
  e2 d4( b) | % 16
  d4 ( c ) b c8( [ b) ] \abr
  a2 ( b4 a ) | % 18
  g1 | % 19
  a2. a4 | \barNumberCheck #20
  d4 ( e d ) b \abr
  c4 ( a ) b a | % 22
  b2 b | % 23
  b2 b4 b8( [ a) ] | % 24
  b2. c4 \abr
  b4 ( a ) b d8( [ c) ] | % 26
  b2 b4 b\sp | % 27
  c4 ( b ) a d8([ c )] | % 28
  b2 b4 b \abr
  e2. e8( [ d) ] | \barNumberCheck #30
  c2 c4 c | % 31
  b4 ( c ) b g | % 32
  a1 \abr
  R1*9
  <dis fis>2 <dis fis>4 <e g> | % 43
  <dis fis>2 <dis fis>4 <e g> | % 44
  <fis a>4 <dis fis> <e g> <e g> \abr
  <dis fis>2 <dis fis> | % 46
  e4 ( dis ) e ( fis ) | % 47
  g4 ( a g8 [ fis ) ] e4 | % 48
  e4( d) c^\markup\italic "Замедляя" e \abr
  d1 ~ | \barNumberCheck #50
  d1 | % 51
  e4^\markup{ \dynamic ff \italic "1-й темп" } ( g8 [ f ] e4 ) e | % 52
  e2 e | \abr
  e4 ( d c b ) | % 54
  a4 d c \< d | % 55
  c2 \! ( g4 a ) | % 56
  g2. g4 | \abr
  d'2 e4 d | % 58
  c2 d4 b | % 59
  e2 c4( a) | \barNumberCheck #60
  d2 g,4 \breathe g | \abr  
  d'2 ( e4 ) d | % 62
  c4 c d d |
  \times 2/3  {
    d2 d4
  }
  d4. d8 | % 64
  d2 \breathe d4\p d | \abr
  c2 ( d | % 66
  e2 ) c | % 67
  d2. ( c4 | % 68
  b2. ) <b d>4 | % 69
  \arpeggioBracket <b d>1\arpeggio \fermata \pp \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  g2. d'4 | % 2
  c2 b4 ( a ) | % 3
  e1 | % 4
  e2 a | % 5
  g4 ( fis ) e ( fis ) | % 6
  g4 ( fis g e ) | % 7
  a4 a g a | % 8
  g4 ( fis8 [ g ] fis4 g | % 9
  a2 g4 e ) | \barNumberCheck #10
  d1 | % 11
  fis2 e4( fis) | % 12
  g4 b a b | % 13
  c2 ( g4 a ) | % 14
  b4 ( fis ) g2 | % 15
  g2 g | % 16
  a2 g4 g | % 17
  g2( fis) | % 18
  g4 ( e d e ) | % 19
  fis4 ( g fis ) fis | \barNumberCheck #20
  g2. g4 | % 21
  g2 fis4 fis | % 22
  g4 ( a ) g ( fis8 [ e ) ] | % 23
  fis2 fis4 e | % 24
  fis4 ( g fis ) fis | % 25
  fis2 fis4 g | % 26
  fis2 fis4 fis8( [ g) ] | % 27
  a4 ( e ) e e | % 28
  e4 ( fis ) b, b'8 [ a] | % 29
  g4 ( a b ) b | \barNumberCheck #30
  b4 ( a ) e fis | % 31
  g4 ( e ) g8( [ fis) ] e4 | % 32
  fis1 | % 36
  R1*3  |
  r2 r4 e | % 37
  e1 ~ | % 38
  e2 e4 e | % 39
  e2 e4 e | \barNumberCheck #40
  e4 e e e | % 41
  e4 e r2 | % 42
  b'2 b4 b | % 43
  b2 b4 b | % 44
  b4 b b b | % 45
  b2 b | % 46
  b2 b | % 47
  b4 ( a b ) b | % 48
  e,8 ( [ fis ] g4 ) a a | % 49
  c4 ( b8 [ a ] b4 g8 [ a ] | \barNumberCheck #50
  b2. a8[ b8 ) ] \breathe | % 51
  g2. d'4 | % 52
  c4 ( b8 [ a ) ] b4 ( a ) | % 53
  e4 ( b' a g8 [ fis ) ] | % 54
  e4 e a g | % 55
  g2 ( e ) | % 56
  g2. \breathe g4 | % 57
  g2 g4 g | % 58
  g2 g4 g | % 59
  g2 g | \barNumberCheck #60
  g2 g4 g | % 61
  g2. g4 | % 62
  g4 g g g | % 63
  \once \override TupletBracket #'stencil = ##f
  \once \override TupletNumber #'stencil = ##f
  \times 2/3  {
    g2 g4
  }
  g4. g8 | % 64
  g2 g4 g | % 65
  a2 ( g | % 66
  g2 ) g | % 67
  g4 ( fis\< e a | % 68
  g2.\>) g4\! | % 69
  g1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e4 ( d c
  ) e4 | % 2
  e2 e | % 3
  b4 ( g a b ) | % 4
  c4 ( b ) c ( d ) | % 5
  e2 e | % 6
  d1 | % 7
  d4 d d d | % 8
  d1 ~ | % 9
  d1 | \barNumberCheck #10
  d1 R1 | % 12
  r4 d d d | % 13
  d1 | % 14
  d2 d | % 15
  c2 d | % 16
  d2 d4 e | % 17
  e4 ( a, d2 ) | % 18
  b4 ( c b2 ) | % 19
  a2. d4 | \barNumberCheck #20
  d4 ( c g ) g | % 21
  e'2 d4 d | % 22
  d2 d | % 23
  dis2 dis4 e | % 24
  dis4 ( e dis ) e | % 25
  dis2 dis4 e | % 26
  dis2 dis4 dis | % 27
  e4 ( b ) c g8( [ a) ] | % 28
  b2 b4 b | % 29
  b2. e4 | \barNumberCheck #30
  e2 e4 e | % 31
  d4 ( c ) d d | % 32
  d1 | % 33
  d2 d4 d | % 34
  d1 | % 35
  d4 d d d | % 36
  b4 b b r
  r2 r4 b | % 38
  c2 b4 c | % 39
  d2 c4 c | \barNumberCheck #40
  b4 g a b | % 41
  c4 c b2( | % 42
  fis'2) fis4 g | % 43
  fis2 fis4 g | % 44
  a4 fis g g | % 45
  fis2 <b, fis'> | % 46
  e4 ( b ) cis ( dis ) | % 47
  e4 ( c? b ) b8( [ d) ] | % 48
  c4 ( b ) e8 [( d) ] e( [ fis) ] | % 49
  g2. ( b,8 [ c ] | \barNumberCheck #50
  d4 e f2 )  \breathe | % 51
  e4 ( d c ) e | % 52
  e4 ( d8 [ c ) ] b2 | % 53
  b4 ( g a b ) | % 54
  c4 b a d | % 55
  e2 ( c ) | % 56
  g2. \breathe g4 | % 57
  g2 g4 g | % 58
  g4 ( a ) b g | % 59
  a4 ( b ) c2 | \barNumberCheck #60
  b2 g4 \breathe g | % 61
  b2 ( a4 ) b | % 62
  c4 a b b | % 63
  \times 2/3  {
    b4 ( a ) g
  }
  b4. b8 | % 64
  b2 b4 b | % 65
  c2. ( b4 | % 66
  c2 ) g4 ( a ) | % 67
  b2 ( c | % 68
  d2. ) <b d>4 | % 69
  \arpeggioBracket <b d>1\arpeggio
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c4 ( b c
  ) b4 | % 2
  a2 g4 ( fis ) | % 3
  g4 ( e fis g ) | % 4
  a4 ( g ) a ( b ) | % 5
  c2 c | % 6
  g1 | % 7
  fis4 fis e fis | % 8
  g4 ( a8 [ b ] c4 b8 [ g ] | % 9
  fis2 g ) | \barNumberCheck #10
  d1 R1 | % 12
  r4 g fis g | % 13
  a2 ( e4 fis ) | % 14
  g4 ( a ) b2 | % 15
  c2 b4( g) | % 16
  fis2 g4 e8( [ d) ] | % 17
  c2 ( d ) | % 18
  g1 | % 19
  d4 ( e d ) c | \barNumberCheck #20
  b4 ( c b ) e | % 21
  a,4 ( c ) d d | % 22
  g2 g | % 23
  b2 b4 c | % 24
  b2. a4 | % 25
  b4 ( c ) b a | % 26
  b2 b4 b\sp| % 27
  a4( g) fis e8( [ fis) ] | % 28
  g4 ( a ) b g8( [ fis )] | % 29
  e4 ( fis g ) g | \barNumberCheck #30
  a2 a4 a | % 31
  b4 ( a ) g b | % 32
  d1 | % 33
  <fis, a>2 <e g>4 <fis a> | % 34
  <g b>2 ( <fis a>4 <g b> ) | % 35
  <a c>4 <a c> <e g> <fis a> | % 36
  g4 g g r | % 37
  r2 r4 g | % 38
  a2 g4 a | % 39
  b2 a4 a | \barNumberCheck #40
  g4 e fis g | % 41
  a4 a <b, b'>2 ~ | % 42
  q q4 q | % 43
  q2 q4 q | % 44
  q q q q | % 45
  q2 q4 ( <a a'> ) | % 46
  <g g' b>4 ( <a a'> ) g' ( fis ) | % 47
  e2 ( e8 [ fis ) ] g( [ b) ] | % 48
  a4 ( b ) c c | % 49
  g1 ~ | \barNumberCheck #50
  g1 | % 51
  c4 ( b c ) b | % 52
  a2 g4 ( fis ) | % 53
  g4 ( e fis g ) | % 54
  a4 g a b | % 55
  c2 ( c, ) | % 56
  g'2. g4 | % 57
  f2 f4 f | % 58
  e2 d4 d | % 59
  c4 ( d ) e2 | \barNumberCheck #60
  g2 g4 g | % 61
  f2. f4 | % 62
  e4 e d d | % 63
  \once \override TupletBracket #'stencil = ##f
  \once \override TupletNumber #'stencil = ##f
  \times 2/3  {
    d4 ( c ) b
  }
  <g d'>4. <g d'>8 | % 64
  <g d'>2 \breathe <g d'>4\p <g d'> | % 65
  e'2 ( d | % 66
  c4 d ) e2 | % 67
  <g, g'>1 ~ | % 68
  <g g'>2. <g g'>4 | % 69
  \arpeggioBracket <g g'>1\arpeggio\fermata\pp
}

lyricscore = \lyricmode {
  Не -- бо и зем -- ля
  днесь про -- ро -- чес -- ки __ да воз -- ве -- се --
  лят -- ся, Ан -- ге -- ли и че -- ло -- ве -- цы
  ду -- хов -- но  да тор -- жест -- ву -- ют: __
  я -- ко Бог во пло -- ти я -- ви -- ся, __ 
  су -- щим во тьме и се -- ни се -- дя -- щим, ро --
  ждей -- ся от Де -- вы, вер -- теп __ и яс -- ли
  при -- я -- ша То -- го: 
  вол -- сви __ от во -- сток в_Ви -- фле -- ем да -- ры при -- но -- сят,
  мы же хва -- лу не --
  до -- стой -- ны -- ми уст -- на -- ми, ан -- гель
  -- ски __ То -- му при -- не -- сем. __ Сла -- ва в_выш
  -- них Бо -- гу, и на зем -- ли __ мир; при -- и --
  де бо -- ча -- я -- ни -- е я -- зы -- ков,
  при -- шед спа -- се нас от ра -- бо -- ты вра
  -- жи -- я, от ра -- бо -- ты вра -- жи -- я.
}

lyricalto = \lyricmode {
  \repeat unfold 68 \skip 1
}

lyricdown = \lyricmode {
  \repeat unfold 64 \skip 1
  па -- сты -- ри -- е __ чу -- до про -- по -- ве -- ду -- ют,
  вол -- сви от во -- сток в_Ви -- фле -- ем да -- ры при -- но -- сят, мы __
}

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  %ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
  
      \new Staff \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \lyricdown }

    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
