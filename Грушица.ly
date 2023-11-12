\version "2.18.2"

%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Грушица"
  subtitle = "русская народная песня"
  %composer = "Ма??"
  arranger = "обработка А. Басурманова, В. Варней"
  %poet = "Слова Прокофьева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

squaremarks = {   }

global = {
  \key cis \minor
  \time 3/4
 % \numericTimeSignature
 \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
}

abr = { \break }
abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Задушевно"
  R2.*8
  e2 fis4 |
  gis2 e'4 |
  dis2 cis4 |
  b2. |
  dis2 cis4 |
  fis,2 a4 |
  cis2 b4 |
  b2. |
  a2 b4 |
  cis2 e4 |
  dis2 cis4 |
  gis2. |
  fis2 a4 gis2 fis4 | \abr
  
  cis'2.~ 2. |
  \bar "||"
  \mark 2
  e,2 fis4 |
  gis2 e'4 |
  dis2 cis4 |
  b2. |
  dis2 cis4 | \abr
  
  fis,2 a4 |
  cis2 b4 |
  b2. |
  a2 b4 |
  cis2 e4 |
  dis2 cis4 |
  gis2. |
  fis2 a4 | \abr
  
  gis2 fis4|
  cis'2.~ |
  2. |
  \mark 3
  \bar "||"
  cis2.~( |
  2 e4 |
  fis2. | \abr
  
  e4 \acciaccatura {dis16[ e] } dis4 cis)
  cis2.~ |
  2.~ |
  2.~ |
  2. |
  \mark 4 \bar "||" 
  e,2 fis4 | \abr
  
  gis2 e'4 |
  dis2 cis4 |
  b2. |
  dis2 cis4|
  fis,2 a4 |
  cis2 b4 |
  b2. |
  a2 b4 | \abr
  
  cis2 e4 |
  dis2 <cis fis>4 |
  <gis gis'>( <dis fis'> <cis e'>) |
  <fis dis'>2 <a fis'>4 |
  <gis e'>2 <fis dis'>4 |
  cis'2.~ |
  2. | \mark 5 \bar "||" \abr
  
  R2. |
  r8 cis8[( e dis] cis4) |
  r4 r8 dis[( fis dis] |
  gis[ fis] e4~ 8) r |
  r4 fis2~( |
  2~ 8[~ <fis a>] |
  e[ fis] gis2~ |
  2.) | \abr
  
  a,2 b4 |
  cis2 e4 |
  dis2 <cis fis>4 |
  << \voiceTwo gis2. \new Voice { \voiceOne e'4( dis cis) } >> |
  \oneVoice fis,2 a4 |
  gis2 fis4 |
  cis'2.~ |
  2. \mark 6 \bar "||" \abr
  
  cis2.~( |
  2 e4 |
  fis2. |
    gis4 \acciaccatura {fis16[ gis] } fis4 e) |
    cis2.( |
    bis |
    cis~ |
    2.) \fermata \bar "|."
  
}

scoreVoiceL = \lyricmode {
  Гру -- ши -- ца куд -- ря -- ва -- я, ой ты, ку -- че --
  ря -- ва -- я, ты сто -- ишь зе -- лё -- на -- я, ве -- ли -- ча -- ва --
  я. Все то -- бой лю -- бу -- ют -- ся: ре -- чень --
  ка глу -- бо -- ка -- я, зорь -- ка яс -- на -- я и я, о -- ди -- 
  но -- ка -- я. Ах! Ах!
  Да -- ле --
  ко у -- е -- хал мой си -- не -- гла -- зый, до -- ро -- гой, серд -- це
  ско -- рой встре -- чи ждёт и о нём по -- ёт.
  Ах! Ах! Ах!
  Гру -- ши -- ца в_са -- ду цве -- тёт, _ _ на -- шей встре -- чи ждёт.
  Ах! Ах!
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRightup = \relative c''' {
  \global
  
  cis2. |
  cis2 e4 |
  fis2. |
  e4 \acciaccatura {dis16 e } dis4 cis |
  cis2 cis4 |
  gis2 gis4 |
  cis2.~
  
  2.
  s2.*11
  gis,2.
  
  s2.*15
  gis'2.
  s2.*4
  a,2 <gis' b>8[ cis,] |
  <a' cis>2 a,16( gis fis e) |
  s2.*33
  gis2.
  
  
  
}

scoreInstrRightdwn = \relative c'' {
  \global
  <fis a>2\mf <gis b>4 |
  a2 cis4 |
  <b dis>2 <a cis>4 |
  gis2. |
  <fis dis>2 <fis a>4 |
  e2 <dis fis>4 |
  cis2.~ |
  
  2.
  \mark 1
  \bar "||"
  \oneVoice
  <cis, e>2 <dis fis>4 |
  <e gis>2 <cis' e>4 |
  <b dis>2 <a cis>4 |
  <gis b>2. |
  <b dis>2 <a cis>4 |
  <dis, fis>2 <fis a>4 | 
  
  <a cis>2 <gis b>4 |
  q2. |
  <fis a>2 <gis b>4 |
  <a cis>2 <cis e>4 |
  <b dis>2 <a cis>4 |
  \voiceTwo
  e4 \acciaccatura {dis16 e } dis4 cis |
  \oneVoice
  <dis fis>2 <fis a>4 <e gis>2 <dis fis>4 |
  
  <cis cis'>2.~ 2.
  \mark 2
  <cis' e>2 <dis fis>4 <e gis>2 <cis' e>4 <b dis>2 <a cis>4 |
  <gis b>2. |
   <b dis>2 <a cis>4 |
   
   % page 2
   <dis, fis>2 <fis a>4 |
   <a cis>2 <gis b>4 |
   q2. |
   <fis a>2 <gis b>4 |
   <a cis>2 <cis e>4 |
   < b dis>2 <a  cis>4 |
   \voiceTwo e4( dis cis) |
   \oneVoice <dis fis>2 <fis a>4 |
   
   <e gis>2 <dis fis>4 |
   <cis cis'>2.~ |
   2. |
   r8 fis8 cis16 dis e fis s4 |
   r8 fis dis cis s4 |
   dis,16[ fis a bis dis fis a bis] <a cis>8-- e |
   
   \ottava #1 <gis' e'~>4 e'16[ cis32 gis e cis gis e cis] gis cis e gis cis e gis \ottava #0 |
   <dis, fis>8--[ fis, <dis' fis> fis,] <fis' a>8[ a,] |
   <gis' e'>[ e <gis e'> e]  <bis' dis>[ fis] |
   <cis cis'>2.~ |
   2. |
   s2.*13
   R2.
   s2.
   cis8 gis' cis e gis cis --|
  
  <cis,,, e>2( <dis fis>4 |
  <e gis>2) <cis' e>4( |
  <b dis>2 <a cis>4 |
  <gis b>2.) |
  <b dis>2( <a cis>4 |
  <dis, fis>2 <fis a>4 |
  <a cis>2 <gis b>4 |
  q2.) | \abr
  
  <fis a>2 <gis b>4 |
  <a cis>2 <cis e>4 |
  <b dis>2 <a cis>4 |
  \voiceTwo 
  e4 \acciaccatura {dis16 e } dis4 cis |
  \oneVoice
  <dis fis>2 <fis a>4|
  <e gis>2 <dis fis>4 |
  <cis cis'>2.~ 2. |
  
  <fis' a>2 <gis b>4 |
  <a cis>2 <cis e>4 |
  <b dis>2 <cis e>4 |
  \voiceTwo gis2. |
  \oneVoice <dis fis>2 <fis a>4 |
  <e gis>2_\markup\italic"ritard" <dis fis gis>4 |
  r2 gis,16( cis e gis) |
  <cis, cis'>2.\fermata
  
  
}

scoreInstrRight = \relative c'' {
  \dynamicNeutral
  << \new Voice  { \voiceOne \scoreInstrRightup }
    \new Voice  { \voiceTwo \scoreInstrRightdwn }
  >>
}

scoreInstrLeft = \relative c {
  \global \clef bass
  \dynamicUp
  fis4 <a cis fis> q
  a, <a' cis fis> q |
  b, <a' b dis> q |
  e <gis b cis> q |
  fis <a cis fis> q |
  gis, <bis' fis' gis> q
  cis, <cis' e gis> q | \abr
  
  cis, <cis' e gis> q |
  cis, <e gis cis> q |
  cis <e gis cis> q |
  fis <a cis fis> <a b dis> |
  e <gis b e> q  |
  b, <b' dis fis> <b dis> |
  b, <b' dis fis> <b dis> | \abr
  
  e, <gis b e> q |
  e <gis b e> q |
  fis <a cis> <a cis fis> |
  a, <a' cis fis> q |
  b, <a' b dis> q |
  cis, dis e |
  fis <a cis> q |
  gis, <fis' gis bis> q | \abr
  
  cis <e gis> <e gis cis> |
  cis <e gis cis> q |
  cis8([ gis' e gis] e gis )
  cis,[^\markup\italic"simile" gis' e gis] e gis
  b,[ a' fis a] fis a |
  b,[ b' gis b] gis b |
  b,[ b' fis b] fis b | \abr
  
  b,[ b' fis b] fis b |
  a, [ gis' e gis] e gis |
  e,[ gis' e gis] e gis |
  fis[ cis' a cis] a cis |
  fis,[ cis' a cis] a cis |
  b,[ b' fis b] fis b |
  cis, [ cis' gis cis] gis cis |
  fis,[ cis' a cis] a cis | \abr
  
  gis,[ bis dis fis] gis bis |
  cis[ gis e gis] cis, gis' |
  cis[ gis e gis] cis, e |
  fis4 <a cis fis> q |
  a, <a' cis fis> r |
  b, <a' b dis> q | \abr
  
  e <gis b e> r |
  fis <a cis> q |
  gis, <bis' fis' gis> q |
  cis,4 e16[ e e8 gis a] |
  cis,4 <gis' cis e> q |
  cis,8( e gis cis \U gis' cis--) | \abr
  
  \D cis,, e gis cis \U gis' cis-- |
  \D fis,, a cis \U fis a cis-- |
  \D e,, gis b \U e gis b |
  \D b,, fis' b dis \U fis cis'-- |
  \D b,, fis' b dis \U fis cis'-- |
  \D e,, gis b \U e gis cis--
  \D e,, gis b \U e gis b |
  \D fis, a cis \U fis a cis-- | \abr
  
  \D a,, a' cis \U fis a cis-- |
  \D b,, a' b dis \U fis cis'-- |
  \D cis,, gis' cis \U e gis cis-- |
  \D fis,, a cis \U fis a cis-- |
  \D gis,, bis fis' gis bis fis' |
  cis,_\markup\italic"poco accel." e gis cis \U e gis |
  \D R2. \abr
  
  cis,,4^\markup\italic"a Tempo" <e gis cis> q |
  cis <e gis cis> q |
  fis <a cis fis> <a b dis> |
  e <gis b e> q |
  b, <b' dis fis> <b dis> |
  b, <fis' b> <fis b dis>  |
  e <gis b e> <b e> |
  e, <gis b e> q | \abr
  
  
  fis <a cis> q |
  a, <a' cis fis> q |
  b, <a' b dis> q |
  cis, dis e |
  fis <a cis> q |
  gis, <fis' gis bis> q |
  cis <e gis> q |
  cis <e gis> q | \abr
  
  fis,8 a cis fis a cis |
  a, cis fis a cis e |
  b, dis fis a cis fis |
  gis,, cis e gis cis e |
  fis,, a cis fis a cis |
  gis, bis dis gis bis dis |
  cis, e gis cis r4 |
  <cis e gis>2.\fermata

}



scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "НАР"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } \scoreInstrLeft
  >>



\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
    \transpose cis c
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
                      \RemoveAllEmptyStaves
                \accidentalStyle modern-voice-cautionary
      }
      \context {
        \Staff
                        \RemoveAllEmptyStaves
                \accidentalStyle modern-voice-cautionary
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=120
    }
  }
}
