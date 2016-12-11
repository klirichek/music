\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\header {
  title = "Kolęda - Lulajźe Jezuniu"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-bottom = ##f
    system-separator-markup = \slashSeparator

}

global = {
  \key as \major
  \time 3/4
  \numericTimeSignature
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
abr = {}

sopone = \relative c'' {
  \global
  \dynamicUp
  \secondbar
  \repeat volta 3 {
  R2.*4
  R2.*16
  <c es>4 q q |
  des des4. c8 |
  bes4 bes des |
  des c2 \breathe |
  <as c>2. |
  <bes des> |
  <g des'> }
  \alternative {
    { << {des'4 c2} \new Voice {\voiceThree as2. } >> }
    { << {des4 c2\fermata} \new Voice {\voiceThree as2. } >> }
  }
}

soptwo = \relative c'' {
  \global
  \dynamicUp
  \repeat volta 3 {
    R2.*4
    R2.*16
    as4 as as |
    as as a |
    f f as |
    as as2 \breathe |
    << {es2.} \new Voice {\voiceFour as4 g ges} >> \break
    f2. |
    es4 bes4. f'8 |
  }
  \alternative
  {
    {<es as>2. }
    {<es as>2.\fermata}
  }
}


altvoice = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  \repeat volta 3 {
    R2.*4
    c4 c c |
    des des4. c8 |
    bes4 bes des |
    f8[( es]) es2 | \abr
    c4 c c |
    des des4. c8 |
    bes4 es4. des8 |
    des4 c2 \bar "||" | \abr \break
   
    es4^\markup\italic"Припев" es as |
    f f4. es8 |
    des4 des f |
    f es2 |
    c4 c c | \abr
    des des4. c8 |
    bes4 es4. des8 |
    des4 c2 | \break \abr
  
    es4 es as8[( g]) |
    f4 f4. es8 |
    des4 des f |
    f es2 |
    c4 c c | \abr
    des des4. c8 |
    bes4 es4. des8 |
  }
  \alternative {
    { des4 c2 | }
    { des4 c2\fermata \bar "|." }
  }
}

pripev = \lyricmode {
  \repeat volta 3 {
    Лу -- лай -- же, Йе -- зу -- нью, лу -- лай -- же, лу -- лай, а ты го,
    ма -- ту -- лу пўа -- чу у -- ту -- лай.
    Лу -- лай -- же Йе -- зу -- нью, лу -- лай -- же, лу -- лай,
    а ты го, ма -- ту -- лу пўа -- чу у -- }
  \alternative { { ту -- лай. } {ту -- лай. } }
}

verseone = \lyricmode {
  \set stanza = "1." Лу -- лай -- же, Йе -- зу -- нью, мо -- я пэ -- рэ -- ўко
  лу -- лай у -- лу -- бъё -- нэ мэ пьещ -- чи -- дэў -- ко.
  
}

versetwo = \lyricmode {
  \set stanza = "2." Лу -- лай -- же, пень -- кью -- хны мой а -- ньё -- лэ -- чку.
  Лу -- лай же, ма -- лю -- хны свя -- та квя -- тэ -- чку.
}

versethree = \lyricmode {
  \set stanza = "3."
  Цыт, цыт, цыт, вшыс -- цы ще спачь за -- би -- ра -- че
  Мо -- е -- го Дже -- чён -- тка нэ пшэ -- бу -- дзай -- че.
}


koledadown = \lyricmode {
   \verseone
   \pripev
}


koledaup = \lyricmode {
  \repeat unfold 44 \skip 1
  Лу -- лай -- же Йе -- зу -- нью, лу -- лай -- же, лу -- лай, (А…)
}

Flute = \relative c'' {
  \global
  \secondbar
    \repeat volta 3 {
    as2. |
    f |
    g |
    es |
    es | \abr
    f |
    g |
    as |
    as4 g ges |
    f2. |
    es | \abr
    es |
    es'4 es as |
    f f4. es8 |
    des4 des f |
    es2. |
    as, | \abr
    f |
    bes |
    es,4 es'2 |
    es4 es as8 g |
    f4 f4. es8 |
    des4 des f | \abr
    es2. |
    c |
    des |
    des |
    }
    \alternative {
      { des4 c2 }
      { des4 c2\fermata \bar "|."}
    }
}

ViolaOne = \relative c'' {
  \global
  \repeat volta 3 {
    <c es,>2. |
    <des bes> |
    q |
    <c as> |
    q | \abr
    <des bes> |
    <des g,> |
    <c es,> |
    q |
    <des bes> |
    q | \abr
    <c as> |
    <es c> |
    <f des>2~ q8[ <es c> ] |
    <des bes>2 q4 |
    des c2 |
    <c es,>2. | \abr
    <des bes> |
    <des g,> |
    r4 r \tuplet 7/4 {as16 bes c des es f g} |
    as2 es4 |
    des <des f>4. <c es>8 |
    <des bes>2 des4 | \abr
    des4 c2 |
    <c es,>2. |
    des2~ des8[ es] |
    bes4 es2 |
  }
  \alternative {
    { es2. }
    {as2.\fermata \bar "|."}
  }
}

ViolaTwo = \relative c' {
  \global
  \repeat volta 3 {
    c8[-. as]-. c[-. as] r4 |
    des8[-. bes]-. des[-. bes]-. r4 |
    des8[-. g,]-. des'[-. g,]-. r4 |
    c8[-. as]-. c[-. as]-. r4 |
    as8[-. c]-. es[-. c]-. as'4-. | \abr
    des,8[-\markup\italic"sim." f] bes[ f] des'4 |
    des,8[ es] g[ des'] bes4 |
    c,8[ es] as[ es'] c4 |
    as,8[ c] es[ c'] as4 |
    des,8[ f] bes[ f'] des4 |
    bes,8[ des] f[ des'] bes4 | \abr
    c,8[ es] as[ es] c'4 |
    as2. |
    as2 a4 |
    f2 g4 |
    as2. |
    c,8[-\markup"pizz." es] as[ es] c'4 | \abr
    des,8[ f] bes[ f] des'4 |
    des,8[ es] g[ es] bes'4 |
    << <as c>2. \\ {s4\< s s\!} >>
    <as c>2. |
    <f as>4 as f |
    f2 <f as>4 | \abr
    <es as>2. |
    as4 g ges |
    f bes4. as8 |
    g2 bes4 |
  }
  \alternative {
    { as2.}
    { as2.\fermata \bar "|." }
  }
}

PianoRight =  \relative a' {
  \global
  \repeat volta 3 {
    c8[-. es]-. c[-. es]-. as[-. c]-. |
    des,[-. f]-. des[-. f]-. bes[-. des]-. |
    des,[-. f]-. des[-. f]-. bes[-. des]-. |
    c,8[-. es]-. c[-. es]-. as[-. c]-. |
    r4 c8[-. es,]-. c'4-. | \abr
    r4 des8[-. f,]-. des'4-. |
    r4 bes8[-. des,]-. bes'4-. |
    r4 c8[-. es,]-. c'4-. |
    r4 c8[-. es,]-. c'4-. |
    r4 des8[-. f,]-. des'4-. |
    r4 bes8[-. des,]-. bes'4-. | \abr
    r4 c8[-. es,]-. c'4-. |
    <c, as es>2. |
    << { as2 a4 } \\ {<f des'>2~ q8 <es c'>} >> |
    <des f bes>2 <es g des'>4 |
    << { des'4 c2 } \\ { <as es>2.} >> |
    r4 c'8[-. es,]-. c'4-. |
    r4 des8[-. f,]-. des'4-. |
    r4 bes8[-. des,]-. bes'4-. |
    <as, es c>4 <c es,>8[ <es as,>] <as c,>[ <c es,>] |
    es4-. <as,, es c>4 <c as es> |
    <as f des> << {des4. c8 } \\ { <as f>4 <a es> } >> |
    <bes f des> << {bes as} \\ {<des f,>2} >> | \abr
    << { r4 c8[-. es]-. as[-. c]-. } \\ <as, es c>2. >> |
    <as c es as>4\arpeggio as,8[ c] es[ as] |
    <bes f des>[\arpeggio des] f[ bes] des[ as] |
    <g, es bes>[\arpeggio bes] es[ g] es[ des] |
  }
  \alternative {
    { <es, c as>[ as] c[ es] as4  }
    { << { <as, es c as>2.\fermata } \\ {r4 r8 \ottava #1 c'8 as'4\fermata} >>}
  }
}

PianoLeft =  \relative f {
  \global
  \repeat volta 3 {
    as2.\mp |
    bes |
    es, |
    as |
    as\p | \abr
    bes |
    bes |
    as |
    as |
    bes |
    g | \abr
    as |
    <as as,>4 q q |
    <des des,> q <f, f,> |
    <bes bes,> q <es, es,> |
    <as as,>2. |
    q | \abr
    <bes bes,> |
    <es, es,> |
    <as as,> |
    q |
    <des, des,>2 <f f,>4 |
    <bes, bes,>2 <es es,>4 | \abr
    <as as,>2. |
    q |
    <bes bes,> |
    <es, es,> |
  }
  \alternative {
    { <as as,>2. }
    { <as, as,>2.\fermata \bar "|."}
  }
}


FlutePart = {
  \new StaffGroup <<
    \new Staff \with {
        instrumentName = "Flute"
        shortInstrumentName = \markup \right-column { "Fl." }
        midiInstrument = "flute"
      } {
        \oneVoice \Flute
      }
  >>
}


ViolaPart = {
  \new StaffGroup <<
    \new Staff \with {
        instrumentName = "V1"
        shortInstrumentName = "V1"
        midiInstrument = "violin"
      } {
          \oneVoice \ViolaOne 
        }      
    \new Staff \with {
        instrumentName = "V2"
        shortInstrumentName = "V2"
        midiInstrument = "pizzicato strings"
      } {
          \oneVoice \ViolaTwo 
        }
  >>
}

ChoirPart = {
  \new ChoirStaff <<
    
    \new Staff = "choirdown" \with {
        instrumentName = "С"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "sopone" { \voiceOne \sopone }
        \new Voice = "soptwo" { \voiceTwo \soptwo }
      >> 
      
      \new Lyrics = "textup"
      
      \new Staff = "choirup" \with {
        instrumentName = "А"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "alto" { \oneVoice \altvoice }
      >> 
      \new Lyrics = "textdown"
      \new Lyrics = "textdowntwo"
      \new Lyrics = "textdownthree"
      \context Lyrics = "textup" { \lyricsto "alto" { \koledaup }}
      \context Lyrics = "textdown" { \lyricsto "alto" { \verseone \pripev }}
      \context Lyrics = "textdowntwo" { \lyricsto "alto" { \versetwo }}
      \context Lyrics = "textdownthree" { \lyricsto "alto" { \versethree }}
    >>
}

PianoPart = {
  \new PianoStaff \with {
       instrumentName = "Piano"
       shortInstrumentName = "Pno."
     } <<
       \new Staff \new Voice { \clef treble \PianoRight }
       \new Staff \new Voice { \clef bass \PianoLeft }
     >>
}

\bookpart {
  \header {
      piece = "Хор"
  }
  \score {
    %  \transpose c bes {
    \ChoirPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Instruments"
  }
  \score {
    %  \transpose c bes {
    <<
      \FlutePart
      \ViolaPart
      \PianoPart
    >>
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}



\bookpart {
  \header {
    piece = "Flute + Violini"
  }
  \score {
    %  \transpose c bes {
    <<
      \FlutePart
      \ViolaPart
    >>    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Ф-но"
  }
  \score {
    %  \transpose c bes {
    \PianoPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Full"
  }
  \score {
    %  \transpose c bes {
    <<
      \FlutePart
      \ViolaPart
      \ChoirPart
      \PianoPart
    >>
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

%midi only unfolded repeats
\score { \unfoldRepeats
  %  \transpose c bes {
  <<
    \FlutePart
    \ViolaPart
    \ChoirPart
    \PianoPart
  >>
  
  %  }  % transposeµ
  
  \midi {
    \tempo 4=120
  }
}

\book {
  \bookOutputSuffix "A-dur"
    \bookpart {
  \header {
      piece = "Хор"
  }
  \score {
    \transpose as a {
    \ChoirPart
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Instruments"
  }
  \score {
    \transpose as a {
    <<
      \FlutePart
      \ViolaPart
      \PianoPart
    >>
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}



\bookpart {
  \header {
    piece = "Flute + Violini"
  }
  \score {
    \transpose as a {
    <<
      \FlutePart
      \ViolaPart
    >>    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Ф-но"
  }
  \score {
    \transpose as a {
    \PianoPart
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Full"
  }
  \score {
    \transpose as a {
    <<
      \FlutePart
      \ViolaPart
      \ChoirPart
      \PianoPart
    >>
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
}

\book {
  \bookOutputSuffix "Bes-dur"
    \bookpart {
  \header {
      piece = "Хор"
  }
  \score {
    \transpose as bes {
    \ChoirPart
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Instruments"
  }
  \score {
    \transpose as bes {
    <<
      \FlutePart
      \ViolaPart
      \PianoPart
    >>
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}



\bookpart {
  \header {
    piece = "Flute + Violini"
  }
  \score {
    \transpose as bes {
    <<
      \FlutePart
      \ViolaPart
    >>    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Ф-но"
  }
  \score {
    \transpose as bes {
    \PianoPart
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
      piece = "Full"
  }
  \score {
    \transpose as bes {
    <<
      \FlutePart
      \ViolaPart
      \ChoirPart
      \PianoPart
    >>
    
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
}