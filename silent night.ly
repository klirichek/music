\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

global = {
  \key c \major
  \time 3/4
}

acc = \markup { \override #'(font-name . "LTSSymbols" ) "," }
sopvoice = \relative c'' {
  \autoBeamOff
  \dynamicUp
  \set Score.markFormatter = #format-mark-box-numbers
  \mark \default g4.( a8) g4 | e2. | g4. a8 g4 | e2. | d'2 d4 | b2. | c2 c4 | g2 r4 |
  a2 a4 | c4. b8 a4 | g4. a8 g4 | e2. | a2 a4 | c4. b8 a4 | g4. a8 g4 | e2 r4 |
  d'2 d4 | f4. d8 b4 | c2.( e2.) | c4( g) e | g4. f8 d4 | c2 r4 | R2. |
  
  \mark \default g'4.( a8) g4 | e2. | g4.( a8) g4 | e2. | d'2 d4 | b( a g) | c2 c4 | g2 r4 |
  a2 a4 | c4.( b8) a4 | g4. a8 g4 | e2. | a2 a4 | c4. b8 a4 | g4. a8 g4 | e2. |
  d'2 d4 | f4. d8 b4 | c2.( e2.) | c4( g) e | g4. f8 d4 | c2 r4 | R2. |
  
  \mark \default g'4.( a8) g4 | e2. | g4.( a8) g4 | e2. | d'2 d4 | b2. | c2 c4 | g2. |
  a2 a4 | c2 b8 a | g4. a8 g4 | e2. | a2 a4 | c4. b8 a4 | g4. a8 g4 | e2. |
  d'2 d4 | f4. d8 b4 | c2.( e2.) | c4( g) e | g4. f8 d4 | d2.( | c2.) \bar "|."
}

altvoice = \relative c' {
  \autoBeamOff
  e4.( f8) e4 | c2. | e4. f8 e4 | c2. | f2 f4 | f2. | e2 e4 | e2 r4 |
  f2 f4 | a4. g8 f4 | e4. f8 e4 | c2. | f2 f4 | a4. g8 f4 | e4. f8 e4 | c2 r4 |
  f2 f4 | g4. f8 f4 | e2.( | g2.) | e2 c4 | b4. b8  b4 | c2 r4 | R2. |
  
  e4.( f8) e4 | c2. | e4.( f8) e4 | c2. | f2 f4 | f2. | e4( f) e | e2 r4 |
  f2 f4 | a4.( g8) f4 | e4. f8 e4 | c2. | f2 f4 | f4. g8 f4 | e4. f8 e4 | c2. |
  f2 f4 | d4. f8 f4 | e2.( | g2.) | e2 c4 | b4. b8 b4 | c2 r4 | R2. 
  
  e4.( f8) e4 | c2. | e4.( f8) e4 | c2. | f2 f4 | f2. | f4( e) d | e2. |
  f2 f4 | a2 g8 f8 | e4. f8 e4 | c2. | f2 f4 | f4. g8 f4 | e4. f8 e4 | c2. |
  f2 f4 | b4. b8 b4 | a2.~ | a | e2 c4 | b4. b8 b4 | b2.( | c2.) 
  
}

tenorvoice = \relative c' {
  \autoBeamOff
  \dynamicUp
  
  c2 c4 | g2. | c4. c8 c4 | g2. | b2 b4 | d2. | c2 g4 | c2 r4 |
  c2 c4 | c4. c8 c4 | c4. c8 c4 | g2. | c2 c4 | c4. c8 c4 | c4. c8 c4 | g2 r4 |
  b2 b4 | d4. b8 d4 | c2.~ | c | c2 c4 | g4. g8 f4 | e2 r4 | R2. |
  
  c'2 c4 | g( a g) | c2 c4 | g2. | b2 b4 | d( c b) | c2 g4 | c2 r4 |
  c2 c4 | c2 c8[ d] | c4. c8 c4 | g2. | c2 c4 | a4 b c8[ d] | c4. c8 c4 | g2. |
  b2 b4 | b4. b8 d4 | c2.~ | c | g2 g4 | g4. g8 f4 | e2 r4 | R2. |
  
  c'2 c4 | g2. | c2 c4 | g2. | b2 b4 | d2. | c2 c4 | c2. |
  c2 c4 | c2 c8 d | c4. c8 c4 | g( a bes) | c2 c4 | a4 b c8[ d] | c4. c8 c4 | g2. |
  b2 b4 | d4. d8 d4 | e2.( | c) | g2 g4 | g4. g8 f4 | f2.( | g2.)
 
}

bassvoice = \relative c {
  \autoBeamOff
  c2 c4 | c2. | c4. c8 c4 | c2. | g'2 g4 | g2. | c,2 c4 | c2 r4 |
  f2 f4 | f4. f8 f4 | c4. c8 c4 | c( e g) | f2 f4 | f4. f8 f4 | c4. c8 c4 | c2 r4 |
  g2 g4 | b4. g8 g4 | c2.~ | c | c2 c4 | g4. g8 g4 | c2 r4 | R2. |
  
  c2 c4 | c2. | c2 c4 | c2. | g'2 g4 | g2. | c,2 c4 | c2 r4
  f2 f4 | f2 f4 | c4. c8 c4 | c2. | f2 f4 | f4. f8 f4 | c4. c8 c4 | c2. |
  g'2 g4 | g4. g8 g4 | c,2.~ | c | g'2 g4 | g,4. g8 g4 | c2 r4 | R2. |
  
  c2 c4 | c2. | c2 c4 | c2. | g'2 g4 | g2. | a4( g) f | <c g'>2. |
  f2 f4 | f2 f8 f | c4. c8 c4 | c2. | f2 f4 | f4. f8 f4 | c4. c8 c4 | c2. |
  g'2 g4 | gis4. gis8 gis4 | a2( g?4 | fis2.) | g2 g4 | g,4. g8 g4 | g2.( | <c e>) |
}

verseone = \lyricmode {
  Sti -- lle Nacht, hei -- li -- ge Nacht, A -- lles schläft, ein -- sam wacht.
  Nur das trau -- te, ho -- chhei -- li -- ge Paar, Hol -- der Kna -- be im lo -- cki -- gen Haar.
  Schlaf in hi -- mmli -- scher Ruh, Schlaf in hi -- mmli -- scher Ruh... 

  Si -- lent night, ho -- ly night. All is calm, __ all is bright. 
  Round young Vir -- gin Mo -- ther and child. Ho -- ly In -- fant so ten -- der and mild. 
  Sleep in hea -- ven -- ly peace. __ Sleep in hea -- ven -- ly peace. 
 
  Ночь ти -- ха, ночь свя -- та. Свет "с не" -- бес льёт__ зве -- зда.
  Бо -- жий Сын пе -- ле -- на -- ми по -- вит. "В ви" -- фле -- е -- мском ве -- рте -- пе ле -- жит.
  Спи, Мла -- де -- нец Свя -- той. __ Спи, Мла -- де -- нец Свя -- той. __
}

versetwo = \lyricmode {
  \override LyricHyphen.minimum-distance = #1.0
  [Шти -- ле нáхт, хáй -- ли -- ге нáхт, á -- лес шлефт, áйн -- зам вáхт.
  Нýр дас трáу -- те, хо -- хáй -- ли -- ге пáр, __ хóль -- дэр кнá -- бэ им лё -- ки -- ген хáр.
  Шлáф ин хи -- мли -- шер рý, __ шлáф ин хи -- мли -- шер рý]
}

violinone = \relative c'' {
  \global
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \set Score.markFormatter = #format-mark-box-numbers

  d2\p d4 | f4.\< d8 b4 | c2.\>( e2.\!) \breathe | c4 g e | g4. f8 d4 | c2. | d4(\<-- e-- f--)\! |
  \mark \default g2.\> | e\< | g\> | e\! | f~ | f | e | e \breathe | a | a\< | g\> | e\! | a | c4 b a | g2. e |
  
  f | g2 f4 | e2 c'4 | e2. | c4 g e | g f d | c2. \breathe | d4--( e-- f--) | 
  \mark \default g4. a8 g4 | e2. |
  g4. a8 g4 | e2. | d'2 d4 | b a g | c2. | g \breathe | a2 a4 | c4. b8 a4 | g4. a8 g4 |
  e2. | a2 a4 | c4. b8 a4 | g2. | e | d'2 d4 | f4. d8 b4 | c2.( | e)
  
  c4 g e | g4. f8 d4 | c2. \breathe | d4 e f | 
  \mark \default g2. | e | g4. a8 g4 | e2. | d' | b4 a g | c2. |
  g4 a bes | a2 a4 | c4. b8 a4 | g4. a8 g4 | e2. | a2\< a4 | c b\! a | g2. | e |
  d'2 d4 | f4. d8 b4 | c2.( | e) | e, | f | d | c \bar "|."
}

shift = { R2.*7 }

violintwo = \relative d' {
  \global
  \shift
  b4--( c-- d--) | e2.\> | c\< | e\> | c\! d~ d c~ c \breathe
  f~ f e c f | a4 g f | e2. c 
  
  d d | c2 e4 | g2. | e2 c4 | b2. | c \breathe |
  b4--( c-- d--) | e4. f8 e4 | c2. | e4. f8 e4 | c2. | f2 f4 | f2. | e4 f e | e2. \breathe 
  f2 f4 | f2. | e4. f8 e4 | c2. | f2 f4 | a4. g8 f4 | e2. c | f2 f4 | g4. f8 g4 | g2.~ g
  
  e2 c4 | b d b | c2. \breathe | d4 e f | e2. c | e4. f8 e4 | c2. | f~ f e | e4 f g | f2.~ f 
  c~ c | f2\< f4 | a g\! f | e2. c | f2 f4 | b2. | a2.~ a | c,2. d b c \bar "|."
}

cello = \relative g {
  \global
  \shift
  g4--\<( g-- g--)\! | c2. g c g g b c g \breathe
  f | a2 b4 | c2.~ c2 r4 | f,2. | f4 a b | c2.~ c4 r r |
  g2. | b2 g4 | c, g'2 | c2. c g <e g> \breathe
  g4--( g-- g--) c,2. g' c g | g2 b4 | d c b |
  c2 g4 | c,2. \breathe
  f2 f4 | a2 c8[ d] | c2.~ c f, | f4 a b | c2. g g | b2 d4 | e2.( \parenthesize g)
  
  c,2 g4 | g b g | <c, g'>2. \breathe
  <g g'> | c'2 g4 | c2 g4 | c,2. g' | g2 b4 | d c b | c2 g4 | c, c c | f2 f4 | a4. g8 f4 |
  e4. f8 e4 | c2. f~ | f2 b4 | c2. g | <g b>2 q4 | <gis d>2 q4 |
  << { c2.~ c } \\ { a2 g4 fis2. } >> g2.~ g <f g> <e g> \bar "|."
  
}

scoreARight = \relative c' {
  \global
  <f b>2. | q | <e a>( | <e c'>) \breathe | <c e> | <d f> | <c e> | <b d>\< | <c e>4\! r r | \break
}

scoreALeft = \relative g {
  \global
  <g d'>2. | <gis d'> | << { c2.~ | c } \\ { a2 g4 | fis2. } >> \breathe | g2.( | <g,g'>) | <c g'> |
  g8[ g' g, g' g, g']( | <c,g'>4) r r \break
}
 
\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "Stille Nacht / Silent night / Ночь тиха"
  %opus = "№ 140"
  composer = \markup { \column { "т.: Йозеф Мор, 1816г" "м.: Франц Грубер, 1818г" }}
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\bookpart {
   \header { piece = "Хор" }
  \score {

  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "C" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \global \voiceOne \sopvoice }
      \new Voice  = "alto" { \global \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \verseone }
    \new Lyrics \lyricsto "soprano" { \versetwo }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \global \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \global \voiceTwo \bassvoice }
    >>
  >>
  \layout { 
    %#(layout-set-staff-size 17)
  }
  \midi {
    \tempo 4=120
  }
}
}

\bookpart {
   \header { piece = "Instruments" }
\score { 
  <<
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Violin1" 
      shortInstrumentName = #"V1"
      midiInstrument = "violin"
    }
    <<
      \clef treble
      { \violinone }
    >>
    \new Staff \with {
     instrumentName = #"Violin2"
     shortInstrumentName = #"V2"      
     midiInstrument = "violin"

    }
    <<
      \clef treble
      { \violintwo }
    >>
    
    \new Staff \with {
     instrumentName = #"Cello"
     shortInstrumentName = #"Vc."
     midiInstrument = "cello"

    }
    <<
      \clef bass
      { \cello }
    >>
  >>
  \new PianoStaff \with {
    instrumentName = "Piano"
    } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } { \scoreARight }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreALeft }
    >>
  >>
  \layout {
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=120
  }
}

}

\bookpart {
   \header { piece = "Full" }
\score { 
  <<
    \new ChoirStaff
    <<
    \new Staff \with {
      instrumentName = \markup { \column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "C" "А"  } }
      midiInstrument = "voice oohs"
      } <<
      \new Voice = "soprano" { \shift R2. \voiceOne \sopvoice }
      \new Voice  = "alto" { \shift R2. \voiceTwo \altvoice }
      >> 
    \new Lyrics \lyricsto "soprano" { \verseone }
    \new Lyrics \lyricsto "soprano" { \versetwo }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef bass \shift R2. \voiceOne \tenorvoice }
        \new Voice = "bass" { \shift R2. \voiceTwo \bassvoice }
      >>
    >>
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = #"Violin1" 
        shortInstrumentName = #"V1"
        midiInstrument = "violin"
      }
      <<
        \clef treble
        { \violinone }
      >>
      \new Staff \with {
       instrumentName = #"Violin2"
       shortInstrumentName = #"V2"      
       midiInstrument = "violin"
      }
      <<
        \clef treble
        { \violintwo }
      >>
      \new Staff \with {
       instrumentName = #"Cello"
       shortInstrumentName = #"Vc."
       midiInstrument = "cello"
  
      }
      <<
        \clef bass
        { \cello }
      >>
    >>
    \new PianoStaff \with {
      instrumentName = "Piano"
      } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } { \scoreARight }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreALeft }
      >>
  >>
  \layout {
  #(layout-set-staff-size 17)
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=120
  }
}

}
