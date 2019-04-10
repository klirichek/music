\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18.5)

\header {
  title = "Серенада Пьеро"
  subtitle = "Из телефильма «Приключения Буратино»"
  %composer = "С. Монюшко (1819-1872)"
  %arranger = "arranger"
  poet = "Слова Ю. Энтина"
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
  \key e \minor
  \time 4/4
}

abr = { \break }
abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  
  R1
  \repeat volta 2 {
    R1*6
    b4\p d8 b e4 e |
    fis8 g fis e~ e2 | \abr
    
    b4 c8 b e4 e8 e |
    g a g fis8~ fis2 |
    b,4 dis8 fis a c b ais | \abr
    
    b4~ b16 a g fis e4 r16 e e e |
    g4. g8 a a g a | \abr
    
    b4\fermata r r2 |
    \key e \major R1 |
    r2^\markup\italic"Припев" b,4\mf b | \abr
    
    b2 gis'4 fis8 a~ |
    a gis~ gis4 r b,8 cis |
    ais2 e'4 dis8 fis~ | \abr
    
    fis e~ e4 r e8 e |
    e4 e8 e e4 cis8 e |
    fis2 b,4 b | \abr
    
    b2 gis'4 fis8 a~ |
    a gis~ gis4 r b,8 bis |
    cis2 a'4 gis8 b~ | \abr
    
    b a~ a4 r a8 b |
    c4 e2 c4 |
    b16[( a]) g8~ g2. | \abr
    
    r4 \tuplet 3/2 4 { r8 a a a g g g fis fis } |
    \key e \minor e4 r r2
  }
  R1*7
}

scoreVoiceL = \lyricmode {
  \set stanza = "1. " Позд -- не -- ю ночь -- ю в_не -- бе од -- на
  так соб -- лаз -- ни -- тель -- но све -- тит лу -- на. И я_б хо -- тел для Вас с_не --
  бес е -- ё дос -- тать, но как мне быть_― ведь ночь -- ю нуж -- но
  спать. \set stanza = "Припев: " Не нуж --
  на мне ма -- ли -- на, не страш -- на мне ан -- ги --
  на, не бо -- юсь я воо -- бще ни -- че -- го. Лишь бы
  толь -- ко Маль -- ви -- на, лишь бы толь -- ко Маль -- ви --
  на, лишь бы толь -- ко Маль -- ви -- на
  о -- бо -- жа -- ла ме -- ня од -- но -- го.
}

scoreVoiceLL = \lyricmode {
 \set stanza = "2. " У -- тром на зо -- рьке ра -- нней по -- рой
 сол -- ныш -- ко низ -- ко ви -- сит над зем -- лёй.
 И я_б хо -- тел для Вас с_не -- бес е -- го до -- стать,
 но как мне быть_― ведь у -- тром тру -- дно встать.
}

scoreVoiceLLL = \lyricmode {
 
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

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  \tempo "Умеренно"
  r4 r8\p a16 a a8 g16 g g8 fis |
  \repeat volta 2 {
    << { e4 r8 a16 a a8 g16 g g8 fis |
         e4 r8 a16 a a8 g16 g g8 fis | \abr
         
         fis4 r8 b16 b b8 a16 a a8 g |
         fis2 r8 fis g fis |
         e4 r r2
       } \\ {
         r8 <g, b> r4 r2 |
         r8 <g b> r4 r2 |
         
         r8 <a d> r4 r2 |
         r8 <b dis> r q r2 |
         r8 g e' g, g' e b g | \abr
    } >>
    
    r g <b e> g <b g'> g <b e> g |
    r g e' g, g' e b g |
    r g <b e> g <b g'> g <b e> g | \abr
    
    r g e' g, g' e b g |
    r a <d fis> a <d a'> a <d fis> a |
    r b dis b fis' b, dis b | \abr
    
    <b e g b>2 <c e g> |
    q q | \abr
    
    <dis fis b>4\fermata r8 a'16\mf a a8 gis16 gis gis8 fis |
    \key e \major r8 gis, e' b gis' e b gis |
    r gis <b e> gis <b gis'> gis b gis | \abr
    
    r8 gis e' b gis' e b gis |
    r gis <b e> gis <b gis'> gis <b e> gis |
    r ais e' cis fis e cis ais | \abr
    
    r ais <cis e> ais <cis fis> ais <cis e> ais |
    r a <cis e> a <cis a'> a <cis e> a |
    r b <dis fis> b <dis b'> b <dis fis> b | \abr
    
    r gis e' b gis' e b gis |
    r gis <b e> gis <b gis'> gis <b e> gis |
    r a e' cis a' e cis a | \abr
    
    r a <cis e> a <cis a'> a <cis e> a |
    <c e a>1 |
    <b e g> | \abr
    
    r4 <a b dis fis>8 r r2 |
    \key e \minor 
    << { r4\p r8 a'16 a a8 g16 g g8 fis } \\
       { r8 <g, b> r4 r2 } >> \abr
  }
    << { e'4 r8 a16 a a8 g16 g g8 fis |
         e4 r8 a16 a a8 g16 g g8 fis |
         
         fis4 r8 b16 b b8 a16 a a8 g | \abr
         fis2 r8 fis g fis |
         e4 r r2
       } \\ {
         r8 <g, b> r4 r2 |
         r8 <g b> r4 r2 |
         
         r8 <a d> r4 r2 |
         r8 <b dis> r q r2 |
         r8 g e' g, g' e b g |
    } >>
    
    r g <b e> g <b g'> g <b e> g |
    <g b e>1 \bar "|."
 

}

scoreInstrLeft = \relative c, {
  \global
  \dynamicUp
  \clef bass
  R1
  
  \repeat volta 2 {
    <e e'>8 r b' r e, r b r |
    <e e'> r b' r e, r b r
    
    <d d'> r a' r d, r a r |
    <b b'> r fis'r <b, b'> r r4 |
    <e e'> b' e, b |
    
    e b e b |
    <e e'> b' e, b |
    e b e b |
    
    <e e'> b' e, b |
    d a d a |
    b b' dis fis |
    
    <e g>2 <c g'> |
    q <a e' a> |
    
    <b fis' b>4\fermata r r2 |
    \key e \major <e, e'>4 b' e, b |
    e b e b |
    
    <e e'> b' e, b |
    e b e b |
    <fis' fis'> cis' fis, cis |
    
    fis cis fis cis |
    a' e' a, e |
    <b b'> fis' <b, b'> fis' |
    
    <e e'> b' e, b |
    e b e b |
    a' e' a, e |
    
    a e a e |
    <a e'>1 |
    <e b' e> |
    
    <b b'>8 r r4 r2 |
    \key e \minor  <e e'>8 r b' r e, r b r |
  }
  <e e'>8 r b' r e, r b r |
    <e e'> r b' r e, r b r
    
    <d d'> r a' r d, r a r |
    <b b'> r fis'r <b, b'> r r4 |
    <e e'> b' e, b |
    
    e b e b |
    <e b' e>1

}

scoreInstrChords =  \chords {
  \global
  R1
  \repeat volta 2
  {
  e1:m
  R
  d
  b
  e:m
  R1*4
  d1
  b
  e2:m c |
  c a:m7
  b1
  e
  R1*3
  fis1:7
  R
  a
  b
  e
  R
  a
  R
  a:m
  e:m
  b:7
  e:m
  }
  R
  R
  d
  b
  e:m
  R
  R

}


scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "НАР"
  } <<
    \new Staff = "right" \with {
      %midiInstrument = "church organ"
      %midiInstrument = "acoustic grand"
      midiInstrument = "harpsichord"
    } << \scoreInstrChords \scoreInstrRight >>
    \new Staff = "left" \with {
      %midiInstrument = "church organ"
%      midiInstrument = "acoustic grand"
      midiInstrument = "harpsichord"
    } \scoreInstrLeft
  >>

\bookpart {
  \header {
  piece = "F-mol"
  }
  \score {
    \transpose e f
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "Fis-mol"
  }
  \score {
    \transpose e fis
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "G-mol"
  }
  \score {
    \transpose e g
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "Gis-mol"
  }
  \score {
    \transpose e gis
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}


\bookpart {
  \header {
  piece = "A-mol"
  }
  \score {
    \transpose e a
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "Bes-mol"
  }
  \score {
    \transpose e bes
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "B-mol"
  }
  \score {
    \transpose e b
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
    \header {
      piece = "E-mol (original)"
  }
  \score {
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
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\include "articulate.ly"

\bookpart {
  \score {
    \unfoldRepeats \articulate
    \transpose e a
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \midi {
      \tempo 4=120
    }
  }
}
