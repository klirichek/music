\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

%#(set-global-staff-size 19)
\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(include-special-characters)
}

\header {
  title = "Щедрик"
  subtitle = "(для смешанного хора)"
  arranger = "Н. Леонтович"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}

global = {
  \key g \minor \time 3/4
}

ten = \markup\italic ten.

PartPOneVoiceOne =  \relative bes' {
  \global
  \tempo Allegretto
  bes4\mf-> \mark "Соло" a8 bes8 g4^\ten \repeat volta
  2 {
    | % 2
    bes4-> a8 bes8 g4^\ten | % 3
    \mark Хор bes4\pp^\markup\italic simile a8 bes8 g4 | % 4
    bes4 a8 bes8 g4 | % 5
    bes4^\markup\italic"poco cresc." a8 bes8 g4 | % 6
    bes4 a8 bes8 g4 | % 7
    bes4 a8 bes8 g4 | % 8
    bes4 a8 bes8 g4 | % 9 \break
    bes4 a8 bes8 g4 | \barNumberCheck #10
    bes4 a8 bes8 g4 | % 11
    bes4 a8 bes8 g4 | % 12
    bes4 a8 bes8 g4 | % 13
    bes4\mp a8 bes8 g4 | % 14
    bes4 a8 bes8 g4 | % 15
    bes4 a8 bes8 g4 | % 16
    bes4 a8 bes8 g4 | % 17
    d'4\mf c8 d8 bes4 | % 18
    d4\< c8 d8 bes4 | % 19
    d4 c8 d8 bes4 | \barNumberCheck #20
    d4 c8 d8 bes4 | % 21
    g'4\f g8 g8 f8([ es8 ]) | % 22
    d4 d8 d8 c8([ bes8 ]) | % 23
    c4 c8 c8 d8([ c8 ]) | % 24
    g4\dim g8 g8 g4 | % 25
    d8\mf\< [ e8 fis8 g8 a8 bes8 ] | % 26
    c8([\> d8 ]) c4 bes4 | % 27
    d,8\pp\< [ e8 fis8 g8 a8 bes8 ] | % 28
    c8([\> d8 ]) c4 bes4 | % 29
    bes4\!_\markup{\dynamic mp \italic "poco a poco dim"} a8 bes8 g4 | \barNumberCheck #30
    bes4 a8 bes8 g4 | % 31
    bes4 a8 bes8 g4 | % 32
    bes4 a8 bes8 g4 | % 33
  }
  \alternative {
    {
      \mark Соло bes4\mf a8 bes8 g4 | % 2
    }
    {
      | % 34
      g2.\pp ~
    }
  } | % 35
  g2. ~ | % 36
  g2. | % 37
  \mark Соло d'4-> c8 d8 g,8 r8 \bar "|."
}

PartPOneVoiceTwo =  \relative g' {
  \global 
  R2. \repeat volta 2 {
    R2.*3 | % 5
    g2.\pp | % 6
    f2. | % 7
    es2. | % 8
    d2. | % 9
    g2.\p | \barNumberCheck #10
    f2. | % 11
    es2. | % 12
    d2. | % 13
    g4 g8 g8 g4 | % 14
    g4 g8 g8 g4 | % 15
    g4 g8 g8 g4 | % 16
    g4 g8 g8 g4 | % 17
    bes4 a8 bes8 g4 | % 18
    bes4 a8 bes8 g4 | % 19
    bes4 a8 bes8 g4 | \barNumberCheck #20
    bes4 a8 bes8 g4 | % 21
    g4 g8 g8 g4 | % 22
    g4 g8 g8 g4 | % 23
    g4 g8 g8 g4 | % 24
    g4 g8 g8 g4 | % 25
    d2. | % 26
    e4 fis4 g4 | % 27
    d2. | % 28
    e4 fis4 g4 | % 29
    d2.( | \barNumberCheck #30
    c2.  | % 31
    f2. | % 32
    es2. | % 33
    
  }
  \alternative {
    {
      d2) r4
    }
    {
      | % 34
      d2.\repeatTie ~
    }
  } | % 35
  d2. ~ | % 36
  d2. | % 37
  bes'4-> a8 bes8 g8 r8 \bar "|."
}

PartPTwoVoiceOne =  \relative es' {
  \global
  R2. \repeat volta 2 {
    R2.*7 | % 9
    es2.\p | \barNumberCheck #10
    d2. | % 11
    c2. | % 12
    g2. | % 13
    c4 c8 c8 c4 | % 14
    d4 d8 d8 d4 | % 15
    es4 es8 es8 es4 | % 16
    d4 d8 d8 d4 | % 17
    d2.\mf | % 18
    e2.\< | % 19
    f4( es4) d4 | \barNumberCheck #20
    g8( [ f8 ]) es4 d4 | % 21
    d4\f es8 es8 d8([ c8 )] | % 22
    d4 d8 d8 d4 | % 23
    es4 es8 es8 f8([ es8 )] | % 24
    d4\dim d8 d8 d4 | % 25
    bes4\mf\< a8 bes8 g4 | % 26
    bes4\> a8 bes8 g4 | % 27
    bes4\pp\< a8 bes8 g4 | % 28
    bes4\> a8 bes8 g4 | % 29
    g2.\! ~ | \barNumberCheck #30
    g2. ~ | % 31
    g2. ~ | % 32
    g2. ~ | % 33
    
  }
  \alternative {
    {
      g2 r4
    }
    {
      | % 34
      bes4 a8 bes8 g4
    }
  } | % 35
  bes4 a8 bes8 g4 | % 36
  bes4 a8 bes8 g4 R2.^\markup\italic rit. \bar "|."
}

PartPTwoVoiceTwo =  \relative es {
  \global
  R2. \repeat volta 2 {
    R2.*7 \break R2.*4 | % 13
    es4\mp es8 es8 es4 | % 14
    g4 g8 g8 g4 | % 15
    c4 c8 c8 c4 | % 16
    g4 g8 g8 g4 | % 17
    g4 g8 g8 g4 | % 18
    g4 g8 g8 g4 | % 19
    g4 g8 g8 g4 | \barNumberCheck #20
    g4 g8 g8 g4 | % 21
    bes4-> a8-> bes8-> g4->_\ten | % 22
    bes4_\markup\italic"simile" a8 bes8 g4 | % 23
    bes4 a8 bes8 g4 | % 24
    bes4 a8 bes8 g4 | % 25
    d2. | % 26
    d2. | % 27
    d2. ~ | % 28
    d2 es4 | % 29
    f2.( | \barNumberCheck #30
    es2.| % 31
    d2. | % 32
    c2. | % 33
    
  }
  \alternative {
    {
      g2) r4 
    }
    {
      | % 34
      g2.\repeatTie ~
    }
  } | % 35
  g2. ~ | % 36
  g2. R2. \bar "|."
}

vs = \lyricmode {
  Щед -- рик, щед -- рик, щед -- рi -- воч -- ка, при -- ле -- тi -- ла ла -- стi -- воч -- ка,
  ста -- ла со -- бi ще -- бе -- та -- ти гос -- по -- да -- ря ви -- кли -- ка -- ти:
  &flqq;Ви -- йди, ви -- йди, гос -- по -- да -- рю, по -- ди -- ви -- ся на ко -- ша -- ру,
  там о -- веч -- ки по -- ко -- ти -- лись,
  а яг -- нич -- ки на -- ро -- ди -- лись.
  В_те -- бе то -- вар весь хо -- ро -- ший,
  бу -- деш ма -- ти мiр -- ку гро -- шей,
  в_те -- бе то -- вар весь хо -- ро -- ший,
  бу -- деш ма -- ти мiр -- ку гро -- шей.
  В_те -- бе жiн -- ка чор -- но -- бро -- ва.
  Хоч не гро -- шi то по -- ло -- ва,
  в_те -- бе жiн -- ка чор -- но -- бро -- ва&frqq;.
  Щед -- рик, щед -- рик,
  М...
  ла -- стi -- воч -- ка.
}

va = \lyricmode {
  Ста -- ла со -- бi ще -- бе -- та -- ти,
  
  
  
}
vt = \lyricmode {
  
  \repeat unfold 20 \skip 1
  В_те -- бе то -- вар хо -- ро -- ший,
  \repeat unfold 16 \skip 1
  Хоч не гро -- шi то по -- ло -- ва,
  в_те -- бе жiн -- ка чор -- но -- бро -- ва. М... 
  Щед -- рик, щед -- рик, щед -- рi -- воч -- ка, при -- ле -- тi -- ла
}
vb = \lyricmode {
    \repeat unfold 48 \skip 1

  В_те -- бе жiн -- ка М... __
}


% The score definition
\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.instrumentName = \markup { \center-column { \line {"Сопрано"} \line {"Альт"} } }
        \set Staff.shortInstrumentName = \markup { \center-column { \line {"С"} \line {"А"} } }
        <<
          \new Voice = "soprano" { \clef treble \voiceOne \PartPOneVoiceOne }
          \new Voice = "alt" { \voiceTwo \PartPOneVoiceTwo }
        >>
        \new Lyrics \lyricsto "soprano" \vs
        \new Lyrics \lyricsto "alt" \va
      >>
      \new Staff = "tb" \with {
        instrumentName = \markup { \center-column { \line {"Тенор"} \line {"Бас"} } }
        shortInstrumentName = \markup { \center-column { \line {"Т"} \line {"Б"} } }
      }
        <<
          \new Voice = "tenor" { \clef bass \voiceOne \PartPTwoVoiceOne }
          \new Voice = "bass" { \voiceTwo \PartPTwoVoiceTwo }
        >>
        \new Lyrics \with { alignAboveContext = "tb" } \lyricsto "tenor" \vt
        \new Lyrics \lyricsto "bass" \vb
    >>

  >>
  \layout {
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=240
  }
}

