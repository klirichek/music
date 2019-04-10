\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Золотая рыбка"
  composer = "С. Монюшко (1819-1872)"
  %arranger = "arranger"
  poet = "Слова И. Захаревича"
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
  \key d \minor
  \time 3/4
  \numericTimeSignature
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
  \partial 4 r4 |
  R2.*2 |
  \repeat volta 3
  {
    R2.*2 |
    d8 e f4 bes |
    bes2 a4 |
    gis8 a d4 f, | \abr
    
    e4 r r |
    e8 f g4 a |
    f2 e4 |
    \tuplet 3/2 { d8 cis d } e4 e |
    e2 r4 |
    e8 f g4 a |
    g2 f4 | \abr
    
    g8 a bes4 d |
    c2 r4 |
    c8 bes a4 bes |
    f'2\fermata gis,4 |
    \tuplet 3/2 { a8 gis a } \acciaccatura c bes4.\fermata  a8 | \abr
    
    d,2 r4 |
    R2.*6
  }
  R2. |
  R2.\fermata \bar "|."
}

scoreVoiceL = \lyricmode {
  \set stanza = "1. " Зо -- ло -- та -- я рыб -- ка по ре -- ке плы -- вёт.
  На лу -- гу ре -- бё -- нок цве -- ти -- ки а -- лы рвёт.
  ―_Вый -- ди, вый -- ди, рыб -- ка, из хо -- лод -- ных волн,_―
  мо -- лит так ре -- бё -- нок, весь о -- жи -- да -- нья полн.
}

scoreVoiceLL = \lyricmode {
 \set stanza = "2. " ―_Ах, там мрак и хо -- лод, нет и солн -- ца там…
 Все цве -- точ -- ки, рыб -- ка, хо -- чешь, те -- бе от -- дам!
 ―_Мне, ди -- тя, не ну -- жен а -- лый твой цве -- ток,_―
 хо -- лод -- на ду -- шо -- ю я, как степ -- ной по -- ток.
}

scoreVoiceLLL = \lyricmode {
 \set stanza = "3. " Грусть тво -- я на -- прас -- на! Пол -- но слё -- зы лить,_―
 в_хо -- ло -- де и мра -- ке мне так при -- ят -- но жить!..
 И вздох -- нул ре -- бё -- нок, но не пла -- кал он,
 толь -- ко не ви -- да -- ли боль -- ше е -- го у волн.
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c' {
  \global
  \dynamicNeutral
  \partial 4 d4~(\p |
  d8 g bes d f4~ |
  f8 e d f, a4~ |
  \repeat volta 3 {
    a8[ g] bes) r cis,4 |
    d2. |
    r4 <f, bes f'> <d' f bes> |
    r <cis g' bes> <cis g' a> |
    r <d a' d> <a d f> |
    
    r <bes d e> q |
    r <a cis e g> <a cis e a> |
    r <a d f> <a e'> |
    r <a d e> <gis d' e> |
    r <a cis e> q |
    r <bes c? g'> <bes c> |
    r <a c g'>_\markup\italic"cresc." <a c f>
    
    r <g d' g> <e' g d'> |
    r <f c'> <c f c'> |
    r8. bes'16 <d, f a>4 <d f bes> |
    <d gis d'>8.\f q16 q2\fermata |
    r4 <d g? bes>->\p( <a cis a'>)\fermata |
    
    d2 d4~(_\markup\italic"dolce" |
    d8 e g bes d4~ |
    d8 cis d f, a4~ |
    a8[ g] bes) r d, r |
    \acciaccatura e f2 f4~( |
    f8\< g bes d f4~ |
    f8\> e d f, a4~\!
  }
  a8[ <e g>] bes'8) r <g, cis> r |
  <f d'>2.\fermata
}

scoreInstrLeftU = \relative c {
  \global
  \oneVoice
  \clef bass \partial 4 r4 |
  d, <g' bes d> q |
  \voiceOne r <f a d> q |
  \repeat volta 3 {
    \oneVoice a, <e' g d'> <e g f> |
    d <f a> q |
    s2.*4 |
    
    \voiceOne a4 r r |
    \oneVoice d,2( c4 |
    b2 bes4 |
    a2) r4 |
    <c c,>2.( |
    f, |
    bes) |
    a |
    <d d,> |
    <bes bes,>8. bes16 bes2\fermata |
    \voiceOne r4 g'-> <e g>\fermata |
    \oneVoice d <d f> <f a> |
    
    d, <d' g bes> <d g bes d> |
    \voiceOne r <f a d> q |
    \oneVoice d, <g' bes d> <g bes> |
    \voiceOne r <f a d> q |
    \oneVoice g, <g' bes d> q |
    a, <f' a d> q 
  }
  a,8 r r4 <a e'>8 r |
  <d, a' d>2.\fermata

}

scoreInstrLeftD = \relative c {
 \partial 4 s4 |
  s2.
  d2.
  \repeat volta 3 {
    s2.*2
    \oneVoice <d, d'>2.( |
    <e e'> |
    <f f'> |
    <g g'> |
    \voiceTwo a2.)
    s2.*9 |
    a2. |
    s2.*2 |
    d2. |
    s |
    d |
    s2.*2
  }
  s2.*2
}

scoreInstrLeft = \relative c'' {
  << \scoreInstrLeftU \\ \scoreInstrLeftD >>
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
  piece = "E-mol"
  }
  \score {
    \transpose d e
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

\bookpart {
  \paper { left-margin = 14 }
  \header { piece = "F-mol" }
  \score {
    \transpose d f
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


\bookpart {
  \paper { left-margin = 13 right-margin = 9 }
  \header { piece = "Fis-mol" }
  \score {
    \transpose d fis
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


\bookpart {
  \header {
  piece = "G-mol"
  }
  \score {
    \transpose d g
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
  }
}

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
  }
}

