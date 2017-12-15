\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Good King Wenceslas"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \override MultiMeasureRest.expand-limit = #3
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

Segno = { \mark \markup { \musicglyph #"scripts.segno" } }
Coda = {\mark \markup { \musicglyph #"scripts.coda" }}
SegnoCoda = {\mark \markup { \musicglyph #"scripts.segno" \musicglyph #"scripts.coda" }}

newbarnum = { \set Score.currentBarNumber =  #(+ 51 9) }

skipLine = { R1*8 }
skipLineTwo = { R1*9 }

skipOne = { R1*8 }
skipTwo = { R1*16 }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a | \abr
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \bar "||" \abr
  \pageTurn
  
  \skipLine
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a |
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \bar "||" \abr
  
  \skipOne
  \skipLine
  
  % 3 verse
e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a | \abr
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1 \bar "||"
  
  % 4 verse  
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a \abr
  \skipLineTwo
  
  \skipTwo
  s1_\markup"(5к = 1к)"
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |
  
  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |
  
  a4 a a gis |
  a gis fis2 |
  a,4 e' d d |
  e2 e |
  
  e4 e d d |
  cis cis e2 |
  e4 a a gis |
  a2( fis) |
  e1
  
  \skipLine
  cis'4 b a e |
  a e cis2 |
  d4 cis d b |
  cis2 cis |
  e4 e d b |
  cis cis e2 |
  a4 b a e |
  fis( e fis gis) |
  a1
  
  \skipOne
  \skipLine
  % 3 verse
  a4 a a gis |
  a gis fis2 |
  a,4 e' d d |
  e2 e |
  
  e4 e d d |
  cis cis e2 |
  e4 a a gis |
  a2( fis) |
  e1
  
  % 4 verse
  e4 e fis e |
  e fis e2 |
  d4 e d b |
  cis2 cis |
  e4 e fis e |
  e fis e2 |
  d4 e d b |
  cis2 cis |
  \skipLineTwo
  
  \skipTwo
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |
  
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |
  
  e4 fis e e |
  e e cis2 |
  d4 a a b |
  cis2 cis |
  
  a4 a a b |
  a a gis2 |
  a4 fis' e e |
  cis2( d) |
  cis1
  
  % 2 verse
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | \abr
  
  \skipLineTwo
  
  \skipOne
  
  % 3 verse
  a4 a a b |
  a a e'2 |
  d4 e d b |
  a2 a |
  a4 a a b |
  a a e'2 |
  d4 e d b |
  a2 a
  
    e'4 fis e e |
  e e cis2 |
  d4 a a b |
  cis2 cis |
  
  a4 a a b |
  a a gis2 |
  a4 fis' e e |
  cis2( d) |
  cis1
  
  % 4 verse
  \skipLine
  e4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a |
  e4 e fis gis |
  a a b2 |
  e4 d cis b |
  a2( d) |
  a1
  
  \skipTwo
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  a4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  a'4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  cis4 d e e |
  a e fis2 |
  d4 cis d b |
  a2 a |
  
  cis4 cis d b |
  fis' fis e2 |
  cis4 d e e |
  fis2( d) |
  a'1
  
  % 2 verse
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  
  fis4 fis e e |
  fis cis cis2 |
  d4 e d b
  cis2 cis |
  \skipLineTwo
  
  \skipOne
  
  % 3 verse
  a'4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a | 

cis,4 d e e |
  a e fis2 |
  d4 cis d b |
  a2 a |
  
  cis4 cis d b |
  fis' fis e2 |
  cis4 d e e |
  fis2( d) |
  a'1
  \newbarnum
  
  % 4 verse
  \skipLine
  a4 b a e |
  a e cis2 |
  d4 cis d b |
  cis2 cis |
  e4 e d b |
  cis cis e2 |
  a4 b a e |
  fis2( gis) |
  a1 \bar "||"
  \skipTwo
  s1 \bar "|."
}

iL = { \override Lyrics.LyricText #'font-series = #'bold }
nL = { \revert Lyrics.LyricText #'font-series }

verseOne = \lyricmode {
  \set stanza = "1. " Good King Wen -- ces -- las look'd out,
  On the Feast of Ste -- phen,
  When the snow lay round a -- bout,
  Deep and crisp and e -- ven;
  Bright -- ly shone the moon that night,
  Tho' the frost was cru -- el,
  When a poor man came in sight, 
  Gath -- 'ring win -- ter fu -- el.
}

verseTwoOne = \lyricmode {
  \set stanza = "2. " “Hith -- er, page, and stand by me,
  If thou know'st it, tell -- ing,
  Yon -- der peas -- ant, who is he?
  Where and what his dwell -- ing?” }

verseTwoTwo = \lyricmode {
  “Sire, he lives a good league hence,
  Un -- der -- neath the moun -- tain;
  Right a -- gainst the for -- est fence,
  By Saint Ag -- nes' foun -- tain.”
}

verseThree = \lyricmode {
  \set stanza = "3. " “Bring me flesh, and bring me wine,
  Bring me pine -- logs hith -- er:
  Thou and I will see him dine,
  When we bear them thith -- er.” }

verseThreeTwo = \lyricmode {
Page and mon -- arch, forth they went,
  Forth they went to -- geth -- er;
  Through the rude wind's wild la -- ment
  And the bit -- ter weath -- er.
}

verseFour = \lyricmode {
  \set stanza = "4. " “Sire, the night is dark -- er now,
  And the wind blows strong -- er;
  Fails my heart, I know not how,
  I can go no long -- er.” }

verseFourTwo = \lyricmode {
  \nL
  “Mark my foot -- steps, good my page;
  Tread thou in them bold -- ly:
  Thou shalt find the win -- ter's rage 
  Freeeze thy blood less cold -- ly.”
}

verseFive = \lyricmode {
  \set stanza = "5. " In his mas -- ter's steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ver -- y sod
  Which the saint had print -- ed.
  There -- fore, Chris -- tian men, be sure,
  Wealth or rank pos -- sess -- ing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}

SkipLine = { \repeat unfold 26 \skip 1 }

lyricscore = \lyricmode {
  \verseOne

  \verseTwoTwo
  \verseThreeTwo 

  \verseFour
}

lyricscoreThree = \lyricmode {
  \verseThree
}

lyricscoreFive = \lyricmode {
  \verseFive
}

lyricsbass = \lyricmode {
  \SkipLine \SkipLine
  \verseTwoOne
  \verseThree
  \SkipLine 
  \verseFourTwo
}


\bookpart {
  \paper {
    top-margin = 10
    left-margin = 15
    right-margin = 10
    bottom-margin = 10
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "sopranosFive"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsbass }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }

      \context Lyrics = "sopranosFive" {
        \lyricsto "soprano" {
          \lyricscoreFive
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
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
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
