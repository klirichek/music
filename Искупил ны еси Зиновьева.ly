\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Тропарь «Искупил ны еси»"
  composer = "свящ. В. Зиновьев"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 4/4
  \numericTimeSignature
}

curve = {
  \shape #'((1 . -1) (0 . 0) (0 . 0) (-1 . 0)) Tie
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  d4 a f' e8 d | % 2
  d4 ( cis8 b cis4 ) \fermata a | % 3
  bes4 a8 g a4 ( f8 [ a ] | % 4
  g4 ) f8([ e]) d4 r | % 5
  r4 c' d bes8 d | % 6
  c4 f f2 ( | % 7
  e8 [ d c d ) ] c4( bes) | % 8
  a2. r4 | % 9
  r4 a8 f bes4 a8 g | \barNumberCheck #10
  a4 ( f' e cis ) | % 11
  d8 \breathe a gis a bes4 a | % 12
  <e' g>4.( <d f>8) <cis e>4 \fermata c8([ d]) | % 13
  e4. \f e8 e4 \breathe a,\p | % 14
  g4. g8 g4 \breathe c8 c | % 15
  c2. c4 | % 16
  \time 2/4  c4 c8^\markup S1 e | % 17
  \time 4/4  f2. f4 | % 18
  f4 ( d c) bes | % 19
  a4( bes a g | \barNumberCheck #20
  f2 bes ) \breathe | % 21
  a2 g4 g | % 22
  f1 \fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f4 f a g8 f | % 2
  g2. f4 | % 3
  g4 f8 e f4 ( d8 [ f ] | % 4
  e4 ) d8 [ cis ] d4 s s a' bes g8 bes | % 6
  a4 c d ( c8 [ bes ] | % 7
  bes2 ) g | % 8
  f2. s2 f8 d g4 f8 e | \barNumberCheck #10
  f4 ( a g2 ) | % 11
  f8 a gis a bes4 a | % 12
  a2 a4 a | % 13
  g4. g8 g4 f | % 14
  e4. e8 e4 e8 f16 [ g ] | % 15
  a4 ( g8 [ a ] bes4 ) a | % 16
  g4 c8 bes | % 17
  a4 ( d c ) bes | % 18
  a4 ( bes a ) g | % 19
  f1 ~ | \barNumberCheck #20
  f1 | % 21
  f2 e4 e | % 22
  f1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  a4 a d e8 d | % 2
  e2.\fermata d4 | % 3
  d4 d8 d d2( | % 4
  a4) a d e | % 5
  f2. f8 f | % 6
  f4 f f2( | % 7
  g2) c, | % 8
  c2. r4 | % 9
  r4 d8 d d4 d8 d | \barNumberCheck #10
  d2 ( cis4 e ) | % 11
  d8 \breathe a gis a bes4 a | % 12
  a2 a4 c | % 13
  c4. c8 c4 c | % 14
  c4. c8 c4 \breathe c8 c | % 15
  c2. c4 | % 16
  c4 c8 c | % 17
  c4 ( f2 ) f4 | % 18
  f2. d4 | % 19
  << { c4 ( bes c d | \barNumberCheck #20       
  c2 d ) } \new Voice {\voiceThree \curve f,1~ f } >> \breathe | % 21
  c'2 c4 c | % 22
  f,1
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  <d a'>4 <d a'> <d a'> <cis
  a'>8 <d a'> | % 2
  <a a'>2.\fermata d4 | % 3
  <g, g'>4 <a a'>8 <bes bes'> <a a'>2 ~ | % 4
  a4 a d e | % 5
  f2. f8 f | % 6
  f4 a bes ( a8 [ g ] | % 7
  c,2 ) e | % 8
  f2. a,8 a | % 9
  d2. d8 d | \barNumberCheck #10
  d2 ( <a a'> ) | % 11
  <d a'>8 a gis a bes4 a | % 12
  a'2 a,4\fermata f' <g c,>4.\f q8 q4 \breathe <f f,>\p | % 13
  c4.  c8 c4\breathe c8 d16[ e] | % 15
  f4 ( e8 [ f ] g4 ) f | % 16
  e4 a8 g | % 17
  f4 ( bes a ) g | % 18
  f2. f4 | % 19
  f4 ( d c bes | \barNumberCheck #20
  a2 g ) | % 21
  c2 <c c,>4 q | % 22
  f,1 \fermata
}

lyricscore = \lyricmode {
  Ис -- ку -- пил ны е -- си __
  от кля -- твы за -- кон -- ны -- я 
  чест --  но -- ю Тво -- е -- ю кро -- ви -- ю 
  на крес --  те при -- гвоз -- див -- ся, 
  и ко -- пи -- ем про -- бодь -- ся, 
  без -- сме -- рти -- е, без -- смер -- ти -- е 
  ис -- то -- чил е -- си че -- ло -- ве -- ком, 
  Спа -- се наш, __ сла -- ва Те -- бе.
}

lyricdown = \lyricmode {
  \repeat unfold 13 \skip 1
  чест -- но -- ю
  \repeat unfold 6 \skip 1
  на кре -- сте
}



\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  ragged-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprano" "Аlto"  } }
        shortInstrumentName = \markup { \right-column { "S" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff \with {
        instrumentName = \markup { \right-column { "Tenor" "Bass" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
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
    \tempo 4=60
  }
}
}
