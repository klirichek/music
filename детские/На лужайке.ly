\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18.5)

\header {
  title = "На лужайке"
  composer = "Ма??"
  %arranger = "arranger"
  poet = "Слова Прокофьева"
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

global = {
  \key g \minor
  \time 4/4
 % \numericTimeSignature
}

abr = { \break }
abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Andantino"
  r2 r8 r r4 |
  r2 r4 r |
  r2 r4 d8 d | \abr
  d'4 g, r g8 a |
  g fis fis r r4 d8 d |
  d' a r4 r c8 bes |
  a g g r r4 g8 g | \abr
  
  g es es r r4 g4 |
  d2. d8 d |
  d d d r r4 d |
  g2 r4 d8 es |
  f4 f' bes, c | \abr
  
  bes a8 r r a' bes b |
  c r r4 r8 f, e es |
  d r r4 r d,8 d |
  d'4 g, g a | \abr
  
  g fis r8 ges'[ f e] |
  es[ d des c] bes r  d r |
  g r r4 r f,8 f |
  d'4 f, d' f, | \abr
  
  d' c r f,8 f |
  c'4 f, c' f, |
  c' bes r d,8 d |
  bes'4 d, bes' d, | \abr
  bes' a r8 ges'8[ f e] |
  es[ d des c] bes r d r |
  g r r4 r d,8 d | \abr
  
  d'4 g, g a |
  g fis r8 a' bes b |
  c r r4 r8 f, e es |
  d r r4 r d,8 d | \abr
  
  d'4 g, g a |
  g fis r8 ges'[ f e] |
  es[ d des c] bes r d r |
  g r r4 r d,8 es | \abr
  
  f4 f' bes, c |
  bes a r8 a' bes b |
  c r r4 r8 f, e es |
  d r r4 r d,8 d | \abr
  
  d'4 g, g a |
  g fis r8\fermata ges'[^\markup\italic"rit." f e] |
  es[ d es c] bes r\fermata d r |
  g r r4 r r | \bar "|."
}

scoreVoiceL = \lyricmode {
  На лу -- жай -- ке, на про -- та -- лин -- ке про -- мо -- чи -- ли зай -- ки ва -- лен -- ки,
  ё -- жик про -- бо -- вал вну -- шить: «На -- до ва -- лен -- ки су -- шить».
  Но е -- жа под -- ня -- ли на смех: Ха -- ха -- ха -- ха, хи -- хи -- хи -- хи!
  И пой -- ма -- ли страш -- ный на -- сморк, А -- _ а, Ап -- чхи!
  И ко -- не -- чно с_не -- при -- выч -- ки об -- чи -- ха -- ли ру -- ка -- ви -- чки,
  об -- чи -- ха -- ли ру -- ка -- ви -- чки.
  А -- _ а, Ап -- чхи!
  И те -- перь с_у -- тра до но -- чи: Ха -- ха -- ха -- ха! Хи, хи, хи, хи!
  То и знай, сти -- рай пла -- то -- чки, А -- _ а, ап -- чхи!
  И сти -- ра -- ют, и сти -- ра -- ют, ха -- ха -- ха -- ха, хи -- хи -- хи -- хи!
  И чи -- ха -- ют, и чи -- ха -- ют; А -- _ а, Ап -- чхи!
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  r2 r8 <es ges> <d f> <cis e> |
  <c es> <b d> <c es> <a c> <g bes>4 <a c d> |
  <bes d g>8 r r4 r <d, g bes> |
  
  r <d g d'> r <d g bes> |
  r <d fis> r <c a'> |
  r <c d a'> r q |
  r <d g bes> r q |
  
  r <c g' c> r <c es g> |
  r <d g> r q |
  r <d fis> r <c d fis> |
  <bes d g>2 r4 <bes d>8 <c es> |
  <d f>4 <d' f> <g, bes> <a c> |
  
  <g bes> <f a>8 r r <f' a> <g bes> <gis b> |
  <a c> r r4 r8 <d, f> <cis e> <c es> |
  <bes d> r r4 r r |
  r <bes, d g> r q |
  
  r <d fis> r8 <es' ges> <d f> <cis e> |
  <c es> <b d> <bes des> <a c> <g bes>8 r <fis c' d> r |
  <bes d g>\arpeggio r r4 r <d f>8 <c es>
  <f d'>4 <d f> <f d'> <c f> |
  
  <es d'> <es c'> r <es f>8 q |
  <es c'>4 <a, f'> <c c'> <a f'> |
  \acciaccatura d'8 <c, c'>4 <bes bes'> r <bes d>8 q |
  <d bes'>4 <bes d> <d bes'> <bes d> |
  
  <es bes'> <c a'> r8 <es ges> <d f> <cis e> |
  <c es> <b d> <bes des> <a c> <g bes>8 r <fis c' d> r |
  <bes d g>\arpeggio r r4 r r |
  
  r <d, g bes> r q |
  r <c d fis> r8 <fis' a> <g bes> <gis b> |
  <a c>  r r4 r8 <d, f> <cis e> <c es> |
  <bes d> r8 r4 r r |
  
  r <d, g bes> r q |
  r <c d fis> r8 <es' ges> <d f> <cis e> |
  <c es> <b d> <bes des> <a c> <g bes>8 r <fis c' d> r |
  <bes d g>\arpeggio r r4 r <bes, d>8 <c es> |
  
  <d f>4 <d' f> <g, bes> <a c> |
  \acciaccatura c8 <g bes>4 <f a> r8 <fis' a> <g bes> <gis b> |
  <a c>  r r4 r8 <d, f> <cis e> <c es> |
  <bes d> r8 r4 r r |
  
  r <bes, d g> r q |
  r <d fis> r8 <es' ges> <d f> <cis e> |
  <c es> <b d> <c es> <a c> <g bes>8 r\fermata <a c d>8 r |
  <g d' g>8 r r4 r r
}

scoreInstrLeft = \relative c {
  \global \clef bass
  \dynamicUp
  r2 r8 r r4 |
  r2 r8 r <c c'>4
  <g d' bes'>8 r r4 d'8 g r4 |
  
  bes r g r |
  a r fis r |
  d r fis r |
  g r f? r |
  
  es r c r |
  bes r bes r |
  a r a r |
  g2 r4 r |
  bes4 <f' bes d> es r |
  
  c es' f, r |
  a, f' <c' es> r |
  bes, f' <bes d> r |
  g, r bes r |
  
  a r r r |
  r2 r4 <d c'>8 r |
  <g, d' bes'>\arpeggio r d'4 g, r
  bes f' <bes d> r |
  
  a, f' <c' es> r |
  f,, f' <c' es> r |
  bes, f' <bes d> r |
  g d' f r |
  
  c, g' <c es> r |
  r2 r4 <d, c'>8 r |
  <g, d' bes'>\arpeggio r d'4 g, r |
  
  g' r bes r |
  a r d, r |
  d a' fis' r |
  g, d' <g bes> r |
  
  bes, r g r |
  a r r2 |
  r r4 <d, c'>8 r |
  <g, d' bes'>\arpeggio r d'4 g, r |
  
  bes d' f, d' |
  c, es' f, r |
  a, f' <c' es> r |
  bes, f' <bes d> r |
  
  g, r bes r |
  a r r2 |
  r r4 <d c'>8 r |
  <g, d' bes'>8 r r4 r r

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
  %  \transpose f fis
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
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
