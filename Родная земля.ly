\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
 %   ragged-bottom = ##f
 %   ragged-last-bottom = ##f
    indent = 10
  }

global = {
  \key f \minor
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


soprano = \relative c' {
  \global
  \dynamicUp
  R1*4
  r2 r4 c8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8 \bar "!" c^\markup\italic "Припев" c c |
  bes2 r8 c c c |
  as2 r4 f8 g |
  as as as as des4 as |
  bes8 bes as bes c c c c |
  bes2 r8 c c c |
  as2 r4 f8 g |
  as as as as bes4 f |
  g8 g g as f4 r \bar "||" \abr
  
  
    r2 r4 c8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8_\markup\italic "(припев)" \bar "||"
  
    \abr
  \set Timing.measurePosition = #(ly:make-moment 0)
  
  
  r2 r4 c,8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8 \bar "!" c^\markup\italic "Припев" c c |
  bes2 r8 c c c |
  as2 r4 f8 g |
  as as as as des4 as |
  bes8 bes as bes c c c c |
  bes2 r8 c c c |
  as2 r4 f8 g |
  as as as as bes4 f |
  g8 g g as f2 |
  R1*2
  
  \bar "|."
}

alto = \relative c' {
  \global
  \dynamicUp
  R1*4
  r2 r4 c8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as \bar " " r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8 \bar "!" as^\markup\italic "Припев" as as |
  ges2 r8 e e e |
  f2 r4 f8 g |
  as as as as f4 f |
  g8 g f g as \bar " " as as as|
  ges2 r8 e e e |
  f2 r4 f8 g |
  as as as as bes4 f |
  g8 g g as f4 r
  \bar "||" \abr
  
  r2 r4 c8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as \bar " " r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8_\markup\italic "(припев)" \bar "||"
  
  \abr
  \set Timing.measurePosition = #(ly:make-moment 0)
  
  r2 r4 c,8 c |
  f c c c c c c c |
  g' c, c c c c r4 |
  c4 e g bes |
  bes as \bar " " r f8 f |
  f8. es16 es8 es es es f f |
  f8. es16 es8 es es es r4 |
  es g bes des |
  des c r8 \bar "!"
  
  as^\markup\italic "Припев" as as |
  ges2 r8 e e e |
  f2 r4 f8 g |
  as as as as f4 f |
  g8 g f g as \bar " " as as as|
  ges2 r8 e e e |
  f2 r4 f8 g |
  as as as as bes4 f |
  g8 g g as f2 |
  R1*2  
  \bar "|."
}



lyricscommon = \lyricmode {
  По лу -- жа -- йкам, по о -- пу -- шкам, как на пра -- здник, друг за дру -- жкой
  мы о -- пять ша -- га -- ем. Ско -- ро ка -- жду -- ю тро -- пи -- нку, чуть за -- 
  ме -- тну -- ю тра -- ви -- нку мы в_ле -- су у -- зна -- ем. 
  
  Есть у цве -- тка, есть у ру --
  чья о зе -- мле лю -- би -- мой на -- шей пе -- се -- нка сво -- я. Есть у цве --
  тка, есть у ру -- чья о зе -- мле лю -- би -- мой на -- шей
  пе -- се -- нка сво -- я.
  
  \set stanza = "2. " Ве -- те -- рок ле -- тит, сме -- ё -- тся,
  cи -- не -- ва в_ла -- до -- ни льё -- тся,
  cо -- лнце зо -- ло -- ти -- тся.
  К_нам бе -- рё -- зки вы -- бе -- га -- ют,
  b ро -- ма -- шки нам ки -- ва -- ют,
  b по -- ют си -- ни -- цы.
  
  \set stanza = "3. " Мы все -- гда в_ле -- су и в_по -- ле,
  как в_боль -- шой зе -- лё -- ной шко -- ле, 
  лю -- бим со -- би -- ра -- ться.
  И зе -- мля, и не -- бо ря -- дом,
  и так ра -- до -- стно ре -- бя -- там
  с_Ро -- ди -- ной встре -- ча -- ться.
  
  Есть у цве -- тка, есть у ру --
  чья о зе -- мле лю -- би -- мой на -- шей пе -- се -- нка сво -- я. Есть у цве --
  тка, есть у ру -- чья о зе -- мле лю -- би -- мой на -- шей
  пе -- се -- нка сво -- я.
  
}

tmtwo = \set Timing.measurePosition = #(ly:make-moment -3/8)

abr = {\break}
abr = {}

right = \relative c''' {
  \global
  \oneVoice
  \tempo "Умеренно"
  \tmtwo
  <as c>8\p q[ q] |
  <ges bes>2 r8 <e c'>8 q[ q] |
  <f as>2 r8 <as c>8 q[ q] |
  \repeat volta 3 {
    <ges bes>2 <bes des> | \abr
    <e, c'> \once \ottava #1 <c' c'>4. \ottava #0 r8 |
    << { r8 <c,, f>4 q8 r8 q4 q8 } \\ { as1 } >> |
    << { r8 <c e>4 q8 r8 q4 q8 } \\ bes1 >> | \abr
    << { r8 <c e>4 q8 r8 q4 q8 } \\ bes1 >> |
    << { r8 <c f>4 q8 r8 q4 q8 } \\ { as1 } >> |
    << { r8 <des es>4 q8 r8 q4 q8 } \\ { as2 g } >> | \abr
    << { r8 <des' es>4 q8 r8 q4 q8 } \\ { as2 g } >>
    << { r8 <des' es>4 q8 r8 q4 q8 } \\ { as2 g } >>
    << { r8 <c es>4 q8 r8^\markup\italic"Припев" q4 q8 } \\ { bes2 as } >>
    r8 bes[ des ges] bes[ c, e bes] | \abr
    r8 as[ c f] as[ c, f c] |
    r8 as[ des f] as[ as, des f] |
    << { as,8[ des g, des'] bes[ <c es> as <c es>] } \\ { as4 g bes as } >> \abr
    r8 bes[ des ges] bes[ c, e bes] |
    r as[ c f] as[ c, f c] |
    r c[ es as] r d,[ f bes] | 
  }
  \alternative {
    {<d, e g>2\arpeggio r8 <as'' c>8 q[ q]}
    {<d,, e g>2\arpeggio r8\p <as'' c>8 q[ q] |
    <des, ges bes>2\arpeggio _\markup\italic"замирая" <ges bes des>\arpeggio |
    <f g! a c>1\arpeggio\fermata }
 
  }
  \bar "|."
  
}

left = \relative c' {
  \global
  \oneVoice
  \tmtwo
  r8 r4 |
  ges8[( des' ges as] bes2) |
  f,8[( c' f g] as2) |
  \repeat volta 3 {
    ges,8[( des' ges as] bes[ c des es]) \clef bass |
    r c,,[( g' d'] e4.) r8 |
    << { r2 c, } \\ f,1 >> |
    << { r2 c' } \\ g1 >> |
    << { r2 c, } \\ g'1 >> |
    << { r2 c } \\ f,1 >> |
    bes2 es, |
    bes' es, |
    bes' es, |
    as es |
    ges c, |
    f1 |
    bes2 bes, |
    es as |
    ges c, |
    f1 |
    as2 bes |
  }
  \alternative
  {
    {
      c f,4 r
    }
    {
      c'2 f,~ |
      f1~ |
      f
    }
  }
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \left }
>>


\bookpart {
  \header {
    title = "Родная земля"
    piece = "Piano f-mol"
  }
  \score {
    
    <<
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
}

\bookpart {
  \header {
    title = "Родная земля"
    piece = "Piano fis-mol"
  }
  \score {
    \transpose f fis
    <<
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
}

\bookpart {
  \header {
    title = "Родная земля"
    piece = "Piano g-mol"
  }
  \score {
    \transpose f g
    <<
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
}


\bookpart {
  
    \header {
    title = "Родная земля"
    piece = "Сопрано"
  }


  \score {
   
    \transpose f g {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Сопрано" 
        shortInstrumentName = "С"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  
}

\bookpart {
  
    \header {
    title = "Родная земля"
    piece = "Альты"
  }
  
  \score {   
    \transpose f g {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Альт" 
        shortInstrumentName = "А"
      } <<
        \new Voice = "soprano" { \voiceTwo \alto }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
     }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  
}

\bookpart {
  

  
    \score {
      \unfoldRepeats
    
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Альт" 
        shortInstrumentName = "А"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceOne \alto }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscommon }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    %  }  % transposeµ

    \midi {
      \tempo 4=120
    }
  }
}



