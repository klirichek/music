\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Херувимская песнь"
  subtitle = "№8"
  composer = "Ломакин"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key b \minor
  \time 4/4
  \autoBeamOff
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

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo Adagio
  
  \secondbar  
  R1*4\p | \abr
  a2.\f d4 | % 6
  d2 ( e4) e | % 7
  cis2( d4 e | % 8
  d2)\p d4 r | % 9
  b2( c4) c | \barNumberCheck #10
  b2 ( a4 ) d | \abr
  cis2 ( d4) cis | % 12
  d4.\p a8 a4 r | % 13
  b2 ( ais4) b | % 14
  a2. a4 | % 15
  a4(\pp gis8 [ fis ] gis4) gis | % 16
  a2\fermata r \bar "||" \abr
  R1*4 | % 21
  a4\f a d d | % 22
  d2 ( e4) e | \abr
  cis2( d4 e | % 24
  d2)\p d4 r | % 25
  b2 ( c4) c | % 26
  b2 ( a4) d | % 27
  cis2 d4 cis | % 28
  d4. a8 a4 r | \abr
  b2( ais4 b | \barNumberCheck #30
  a2) a4 a | % 31
  a4( gis8 [ fis ] gis4) gis | % 32
  a2\fermata r \bar "||"
  R1*2 \abr
  R |
  a2(\f d ~ | % 38
  d2) e4 e | % 39
  cis2 d4 e | \barNumberCheck #40
  d4.\p d8 d4 r | \abr
  b2 ( cis4) d | % 42
  b1 ~ | % 43
  b2 ais4 ais | % 44
  b4. b8 b4 r | % 45
  cis4 ( d) e2 | % 46
  d4 ( cis) b a | \abr
  b1\f( | % 48
  cis2 d | % 49
  e2 d4) cis | \barNumberCheck #50
  d1\fermata \bar "||" | % 51
  d1 | % 52
  cis2\fermata r \bar "||" | \abr
  \tempo "Allegro maestoso"
  \time 4/4
  d2.\f cis8 ( [ d ]) | % 54
  d2 e | % 55
  e4 ( fis) fis g | % 56
  e2 ( d4) d | % 57
  cis2 ( b4) b | \abr
  cis2 cis4 r | % 59
  cis2\p d4 e | \barNumberCheck #60
  d2 ( cis4) b8 ( [ cis ]) | % 61
  d4. d8 d4 b | % 62
  e2. d4 | \abr
  cis2 ( d4) d | % 64
  cis4( e2 b4) | % 65
  b2. r4 | % 66
  r2 e4 d | % 67
  cis4 ( d) cis r | \abr
  r2 fis4 e | % 69
  d4( e cis) d | \barNumberCheck #70
  b4( cis a) b | % 71
  g2 ( e'4) e | % 72
  d4( e fis) e | \abr
  d1( ~ | % 74
  d4 cis b) cis | % 75
  d2. d4 | % 76
  d4.( e8 d4 cis) | % 77
  d1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicDown  
  fis2 ( g4 ) fis | % 2
  e2 ( fis4) fis | % 3
  g2( fis4 gis | % 4
  a2) a4 r | % 5
  fis2( d8 [ e ]) fis4 | % 6
  g2. g4 | % 7
  e2( fis4 g | % 8
  fis2) fis4 r R1 | \barNumberCheck #10
  g2 ( fis4) a | % 11
  a2. g4 | % 12
  fis4. fis8 fis4 r | % 13
  fis2. fis4 | % 14
  e2 ( d4) cis | % 15
  d2 ( e4) d | % 16
  cis2 r | % 17
  fis4\p fis g fis | % 18
  e2 ( fis4) fis | % 19
  g2( fis4 gis | \barNumberCheck #20
  a2) a4 r | % 21
  fis4 fis d8 [ e ] fis4 | % 22
  g2. g4 | % 23
  e2( fis4 g | % 24
  fis2) fis4 r s1 | % 26
  g4 g fis a | % 27
  a2 a4 g | % 28
  fis4. fis8 fis4 r | % 29
  fis1 ( | \barNumberCheck #30
  e2) d4 cis | % 31
  d2 ( e4) d | % 32
  cis2 r | % 33
  fis2( g4 fis | % 34
  e2) fis4 fis | % 35
  g2 fis4 gis | % 36
  a4. a8 a4 r | % 37
  fis2( d8 [ e ] fis4 | % 38
  g2) g4 g | % 39
  e2 fis4 g | \barNumberCheck #40
  fis4. fis8 fis4 r | % 41
  g2 ( a4) b | % 42
  g2( a4 g | % 43
  fis2) fis4 e | % 44
  d4. d8 d4 r | % 45
  e4( fis) g8( [ e a g )] | % 46
  fis4 ( a) g fis | % 47
  g2( a4 g | % 48
  e4 a8 [ g ] fis2 | % 49
  g2 fis4) e | \barNumberCheck #50
  fis1 | % 51
  fis2( g4 fis) | % 52
  e2 r | % 53
  fis2 ( a4) g8 [ fis ] | % 54
  g2 g | % 55
  a4 ( ais) b b | % 56
  a2. a4 | % 57
  a2 ( gis4) gis | % 58
  a2 a4 r | % 59
  fis2 fis4 fis | \barNumberCheck #60
  fis2. fis4 | % 61
  fis4. fis8 fis4 r | % 62
  r4 gis\f a b | % 63
  a2. a4 | % 64
  a2 (gis) | % 65
  a2. r4 | % 66
  r2 gis4 b | % 67
  a2 a4 r | % 68
  r2 ais4 cis | % 69
  b2 ( a4) a | \barNumberCheck #70
  g2 ( fis4) fis | % 71
  e2 ( g4) g | % 72
  fis4( g a) g | % 73
  fis4( a g fis | % 74
  g2.) g4 | % 75
  fis4( g fis) a | % 76
  g2( fis4 e) | % 77
  fis1 \bar "|."
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  a2 ( b4) a | % 2
  cis2 ( d4) d | % 3
  e2( d4 b | % 4
  cis2) cis4 r | % 5
  a2 ( fis8 [ g ]) a4 | % 6
  b2. b4 | % 7
  a1 ( | % 8
  a2) a4 r | % 9
  d2 ( e4) e | \barNumberCheck #10
  d2. d4 | % 11
  e2 ( fis4) e | % 12
  d4. d8 d4 r | % 13
  d2 ( e4) d | % 14
  cis2 ( b4) a | % 15
  b2. b4 | % 16
  e,2 r | % 17
  a4 a b a | % 18
  cis2 ( d4) d | % 19
  e2( d4 b | \barNumberCheck #20
  cis2) cis4 r | % 21
  a4 a fis8 ( [ g ]) a4 | % 22
  b2. b4 | % 23
  a1 ~ | % 24
  a2 a4 r | % 25
  d2 ( e4) e | % 26
  d2. d4 | % 27
  e2 fis4 e | % 28
  d4. d8 d4 r | % 29
  d2( e4 d | \barNumberCheck #30
  cis2) b4 a | % 31
  b2. b4 | % 32
  e,2 r | % 33
  a2( b4 a | % 34
  cis2) d4 d | % 35
  e2 d4 b | % 36
  cis4. cis8 cis4 r | % 37
  a2( fis8 [ g ] a4 | % 38
  b2) b4 b | % 39
  a2 a4 a | \barNumberCheck #40
  a4. a8 a4 r R1 | % 42
  d2 dis4 ( e) | % 43
  d2 cis4 cis | % 44
  b4 ( fis8) fis fis4 r | % 45
  a2 cis | % 46
  d4 ( fis,) g8 ( [ b ]) d4 | % 47
  d2( dis4 e | % 48
  e2 d | % 49
  cis2 d4) a | \barNumberCheck #50
  a1 | % 51
  a2( b4 a) | % 52
  a2 r | % 53
  a2. a4 | % 54
  b2 b | % 55
  cis2 d4 d | % 56
  cis2 ( d4) fis | % 57
  e2. e4 | % 58
  e2 e4 r | % 59
  ais,2 b4 cis | \barNumberCheck #60
  b2 ( ais4) gis8 ( [ ais ]) | % 61
  b4. b8 b4 r | % 62
  r4 b e e | % 63
  e2 ( d4) fis | % 64
  e4( cis b e) | % 65
  dis2. r4 | % 66
  e2 e | % 67
  e4 ( fis) e r | % 68
  fis2 fis | % 69
  fis4 ( e2) d4 | \barNumberCheck #70
  d4 ( cis2) b4 | % 71
  b2 ( a4) a | % 72
  a2 ( d4) b | % 73
  a4( fis' e d | % 74
  e2.) e4 | % 75
  a,4( b a) d | % 76
  b2( a) | % 77
  a1 \bar "|."
}


bassvoice = \relative c {
  \global
  \dynamicDown
  d2.\p d4 | % 2
  a'2. a,4 | % 3
  cis2( d4 e | % 4
  <a, e'>2) <a e'>4 r | % 5
  d2.\f d4 | % 6
  g2 ( e4) e8 ( [ g ]) | % 7
  a2.( a,4 | % 8
  d2)\p d4 r | % 9
  g2. g4 | \barNumberCheck #10
  g,4( b d) fis | % 11
  a2. a,4 | % 12
  d4.\p d8 d4 r | % 13
  b2 ( cis4) d | % 14
  e2. <e, e'>4 | % 15
  <e e'>2.\pp <e e'>4 | % 16
  a2\fermata r | % 17
  d4\p d d d | % 18
  a'2. a,4 | % 19
  cis2( d4 e | \barNumberCheck #20
  a,2) a4 r | % 21
  d4\f d d d | % 22
  g2. e8 ( [ g ]) | % 23
  a2.( a,4 | % 24
  d2)\p d4 r | % 25
  g2. g4 | % 26
  g,4( b d) fis | % 27
  a2 a,4 a | % 28
  d4. d8 d4 r | % 29
  b2( cis4 d | \barNumberCheck #30
  e2) e4 e | % 31
  <e, e'>2. <e e'>4 | % 32
  a2\fermata r | % 33
  d1 (| % 34
  a'2) a,4 a | % 35
  cis2 d4 e | % 36
  a,4. a8 a4 r | % 37
  d1\f ( | % 38
  g2) g4 e8 ( [ g ]) | % 39
  a2 a,4 a | \barNumberCheck #40
  d4.\p d8 d4 r R1 | % 42
  g2 fis4 ( e) | % 43
  fis2 fis4 fis | % 44
  b,4. b8 b4 r | % 45
  a2 a' | % 46
  d,2 d4 d | % 47
  g2(\f fis4 e | % 48
  a1 | % 49
  a,2.) a4 | \barNumberCheck #50
  d1\fermata | % 51
  d1 | % 52
  a2\fermata r | % 53
  d2\f ( fis4) e8 ( [ d ]) | % 54
  g2 e | % 55
  a4 ( fis) b g | % 56
  a2 ( fis4) d | % 57
  a4( cis e) e | % 58
  a2 a,4 r | % 59
  fis'2\p fis4 fis | \barNumberCheck #60
  b,4( d fis) fis | % 61
  b,4. b8 b4 r | % 62
  r4 e\f fis gis | % 63
  a2 ( fis4) d | % 64
  e1 | % 65
  fis2. r4 | % 66
  r2 e4 gis | % 67
  a2 a,4 r | % 68
  r2 fis'4 ais | % 69
  b4( g a) fis | \barNumberCheck #70
  g4( e fis) dis | % 71
  e2 ( cis4) cis | % 72
  d2. g4 | % 73
  a1 ( | % 74
  a,2.) a4 | % 75
  d2. fis4 | % 76
  g2( a4 a,) | % 77
  d1\fermata \bar "|."
}

lyricsoprano = \lyricmode {
  \repeat unfold 30 \skip 1
  три -- свя -- ту -- ю
  \repeat unfold 60 \skip 1
  до -- ри -- но -- си -- ма
  \repeat unfold 2 \skip 1
  Ал -- ли -- лу -- йя,
  ал -- ли -- лу -- йя,
}

lyricscore = \lyricmode {
  И -- же Хе -- ру -- ви -- мы,
  и -- же Хе -- ру -- ви -- \set associatedVoice = "soprano" мы, та -- \set associatedVoice = "alto" йно, та -- йно
  о -- бра -- зу -- ю -- ще, та -- йно о  -- бра -- зу -- ю -- ще.
  И жи -- во -- тво -- ря -- щей Тро -- йце, и жи -- во -- тво -- ря -- щей
  
  Тро -- йце три -- свя -- ту -- ю песнь при -- пе -- ва -- ю -- ще,
  песнь __ при -- пе -- ва -- ю -- ще. Вся -- ко -- е
  ны -- не жи -- те -- йско -- е, вся -- ко -- е ны -- не жи -- те -- йско -- е.
  о -- тло -- жим __ по -- пе -- че -- ни -- е, о -- тло -- жим по -- пе --
  че -- ни -- е. А -- минь.
  
  Я -- ко да Ца -- ря всех по -- ды -- мем, всех __ по --
  ды -- мем. А -- нге -- льски -- ми не -- ви -- ди -- мо до -- ри -- но --
  си -- ма чи -- \set associatedVoice = "tenor" нми. Ал -- ли -- лу -- йя,
  ал -- ли -- лу -- \set associatedVoice = "alto" йя, ал -- ли -- лу -- йя, ал -- ли --
  лу -- йя, ал -- ли -- лу -- йя.
}


lyrictenor = \lyricmode {
  \repeat unfold 44 \skip 1
  три -- свя -- ту -- ю
}

lyricbass = \lyricmode {
  \repeat unfold 78 \skip 1
  о -- тло -- жим
}



\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Lyrics = "sopranos"

      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Дискант" "Альт"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "altos" 
      \new Lyrics = "tenors"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricbass }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricsoprano
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricscore
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyrictenor
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
