\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")

\paper {
%  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  %indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

\header {
  title = "Sepulto Domino"
  subtitle = "ZWV 55/27"
  composer = \markup\right-column{ "Jan Dismas Zelenka" "(1679-1745)"}
  tagline = ##f
}

global = {
  \key g \minor
  \time 4/4
  \autoBeamOff
}

mBreak = { \break }
mBreak = {}

tutti = ^\markup \italic "Tutti"
fine =  {
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "Fine"
}
solo = ^\markup\italic "Solo"
dcalfine = { 
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.C. al Fine" 
}
barnumbering = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

soprano = \relative c'' {
  \global
  \dynamicUp
  \barnumbering
  \tempo grave
  % Вписывайте музыку сюда
  g2\tutti a4 a |
  bes4. bes8 bes2\fermata \bar "||"
  r4 es, bes'4. bes8 |
  bes4 aes2 g4 |
  bes2 aes( | \mBreak
  
  g2.) g4 |
  g g g4. f8 |
  g4 g aes4. aes8 |
  aes4 aes2 aes4 |
  a?2( bes~ |
  bes4 a4. d,8 a'4~ | \mBreak
  
  a4 g8[ fis] g2~ |
  g4 fis8[ e]) fis2\fermata\fine \bar "|." 
  r2 r4  a|
  bes bes bes8[( g] bes4 |
  a4.) a8 g2 |
  r4 g g g \mBreak
  
  g2. f4 |
  e( f4. e8 e4) |
  d2 \bar "||" r |
  r r4 d'~\solo |
  d d d2 |
  bes bes4. bes8 \mBreak
  
  g2 f4 f |
  g2 f4 bes~ |
  bes bes bes g |
  c4. c8 c4 bes |
  a2 g |
  r r4\tutti a \mBreak
  
  bes4 bes bes8[( g] bes4 |
  a4.) a8 g2 |
  r4 g g g |
  
  g2. f4 |
  e( f4. e8 e4) |
  d1 \dcalfine
}

sopranoVerse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = \markup \dynamic p
  Se -- pul -- to Do -- mi -- no, si -- gna -- tum est mo -- nu -- men -- tum,
  vol -- ven -- tes la -- pi -- dem ad o -- sti -- um mo -- nu -- men --
  ti: Po -- nen -- tes mi -- li -- tes, qui cu -- sto --
  di -- rent il -- lud. Ac -- ce -- den -- tes prin -- ci -- 
  pes sa -- cer -- do -- tum ad __ Pi -- la -- tum, pe -- ti -- e -- runt il -- lum. Po -- 
  nen -- tes  mi -- li -- tes, qui cu -- sto -- di -- rent il -- lud.
}

alto = \relative c' {
  \global
  \dynamicUp
  % Вписывайте музыку сюда
  d2\tutti es4 d |
  d4. d8 es2\fermata \bar "||"
  r2 r4 es |
  es4. es8 es4 es~ |
  es8 f g2( f4~ | \mBreak
  
  f4) e2 e4 |
  e e c4. c8 |
  d2 r4 e |
  g4. f8 f4 f |
  f2 f~ ( |
  f4 c d2~ | \mBreak
  d1) |
  d\fermata \bar "|."
  r4 fis g fis |
  g4. g8 g4 g~( |
  g f?4.) f8 e4 |
  r e e e | \mBreak
  
  e4. e8 e4( d |
  cis d2 cis4) |
  d2 \bar "||" r2 |
  R1 |
  r4 g2\solo g4 |
  g2 es | \mBreak
  
  es4. es8 d4 d |
  es es2 d4 |
  r2 g4. g8 |
  g4 g fis( g~ |
  g fis) g2 |
  r4\tutti fis g fis \mBreak
  
  g4. g8 g4 g~( |
  g f4.) f8 e4 |
  r e e e |
  e4. e8 e4( d |
  cis d2 cis4) |
  d1 \bar "|."
}

altoVerse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = \markup \dynamic p
  Se --   pul -- to Do -- mi -- no, si -- gna -- tum est mo -- nu -- men -- 
  tum, vol -- ven -- tes la -- pi -- dem ad o -- sti -- um mo -- nu -- men --
  ti: Po -- nen -- tes mi -- li -- tes, mi -- li -- tes, qui cu -- sto --
  di -- rent il -- lud. Ac -- ce -- den -- tes 
  prin -- ci -- pes  sa -- cer --  do -- tum pe -- ti -- e -- runt il -- lum. Po -- nen -- tes
  mi -- li -- tes, mi -- li -- tes,  qui cu -- sto -- di -- rent il -- lud.
}

tenor = \relative c' {
  \global
  \dynamicUp
  % Вписывайте музыку сюда
  bes2\tutti c4 c |
  bes4. bes8 g2\fermata \bar "||" 
  r2 r4 g |
  c4. c8 c4 bes~ |
  bes es c2 | \mBreak
  
  c2. c4 |
  c c c2~ |
  c8 c b4 r c |
  c4. c8 c4 c~ |
  c c d2( |
  c2. bes8[ a] | \mBreak
  
  bes2. a8[ g] ) |
  a1\fermata \bar "|."
  r4 a bes a(~ |
  a8[ g]) d'2( c4~ |
  c) c c2 |
  r4 c c c \mBreak
  
  c4. c8 cis4( d |
  e b a2) |
  a \bar "||" d~\solo |
  d4 d d2 |
  bes bes4. a8 |
  g8[( a] bes4) c d | \mBreak
  
  es4 es, bes' bes |
  es,2 bes' |
  r r4 es~ |
  es es d cis |
  d2 g, |
  r4\tutti a bes a~ \mBreak
  
  a8[ g] d'2( c4~ |
  c) c c2 |
  r4 c c c |
  c c cis( d |
  e8[ d16 cis] b4 a2) |
  a1 \bar "|."
}

tenorVerse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = \markup \dynamic p
  Se -- pul -- to Do -- mi -- no, si -- gna -- tum est mo -- nu -- men --
  tum, vol -- ven -- tes la -- pi -- dem ad o -- sti -- um mo -- nu -- men --
  ti: Po -- nen -- tes __ mi -- li -- tes, qui cu -- sto --
  di -- rent il -- lud. Ac -- ce -- den -- tes prin -- ci -- pes __ sa -- cer --
  do -- tum ad Pi -- la -- tum, pe -- ti -- e -- runt il -- lum. Po -- nen -- tes
  __ mi -- li -- tes, qui cu -- sto -- di -- rent il -- lud.
  
}

bass = \relative c' {
  \global
  \dynamicUp
  % Вписывайте музыку сюда
  g2\tutti g4 fis |
  g4. g8 es2\fermata \bar "||"
  r2 r4 es4 |
  aes4. aes8 aes4 es~ |
  es es f2 | \mBreak
  
  c4 c8[( d] e[ f g aes]) |
  bes4 bes aes4. aes8 |
  g2 r4 c, |
  f4. f8 f4 f~ |
  f es d( g, |
  f'2 fis | \mBreak
  
  g1) |
  d1\fermata \bar "|."
  r4 d g d |
  g4.( f8 es2 |
  f4.) f8 c4 c' |
  c c c2~ | \mBreak
  
  c4 bes a2~(  |
  a4 gis a2) |
  d, \bar "||" r2 |
  R1*3 \mBreak
  
  R1*5 |
  r4\tutti d g d | \mBreak
  
  g4.( f8 es2 |
  f4.) f8 c4 c' |
  c c c2~ |
  c4 bes a2~( |
  a4 gis a2) |
  d,1 \bar "|."
}

bassVerse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = \markup \dynamic p
  Se -- pul -- to Do -- mi -- no, si -- gna -- tum est mo -- nu -- men --
  tum, vol -- ven -- tes la -- pi -- dem ad o -- sti -- um mo -- nu -- men --
  ti: Po -- nen -- tes  mi -- li -- tes, qui cu -- sto -- di --
  rent il -- lud.
  Po -- nen -- tes
  mi -- li -- tes, qui cu -- sto -- di -- rent il -- lud.
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Сопрано"
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Альт"
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Тенор"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Бас"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

% MIDI для репетиции:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { \tempo 4=60 }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { \tempo 4=60 }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerse
    \midi { \tempo 4=60 }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { \tempo 4=60 }
  }
}
