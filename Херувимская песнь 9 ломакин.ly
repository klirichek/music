\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Херувимская песнь"
  subtitle = "№9"
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
  b1(\p | % 2
  ais2 b4) b | % 3
  cis2( b4) ais | \abr
  b4 ( cis8 [ d ])  b4 r | % 5
  a2\p( fis4 b | % 6
  a4 g8 [ fis ]) e4 r R1 | % 8
  b'2 ( cis4 ) b | \abr
  a4 a gis( a | \barNumberCheck #10
  b2 a4 gis | % 11
  fis2.)\pp fis4 | % 12
  fis2\fermata r \bar "||" | % 13
  b2. b4 | \abr
  ais2 ( b4) b | % 15
  cis2 ( b4) ais | % 16
  b4 (cis8 [ d )] b4 r | % 17
  a4 a fis b | \abr
  a4 ( g8 [ fis ] e4)  r R1 | \barNumberCheck #20
  b'2( cis4 b) | % 21
  a4 a gis( a | \abr
  b2 a4 gis | % 23
  fis2.) fis4 | % 24
  fis2\fermata r \bar "||" | % 25
  b1 ( | \abr
  ais2) b4 b | % 27
  cis2 b4 ais | % 28
  b4 cis8 ([ d )] b4 r | % 29
  cis2 d4 ( b) | \abr \barNumberCheck #30
  ais1 ( | % 31
  b2 ) b4 cis | % 32
  d2 ( cis4 b | % 33
  ais2 b4 cis | \abr
  b2 e4 d | 
  cis2 b4 ) b | % 36
  b1\fermata \bar "||" | % 37
  ais2 ( b) | % 38
  ais2\fermata  r \bar "||"| \abr
  \tempo "Allegro maestoso"
  \time 4/4
  b4.\f b8 cis4 b8 ( [ cis )] | \barNumberCheck #40
  d2 dis4 dis | % 41
  e2 ( dis4) dis | % 42
  e4 ( dis e ) cis\p | \abr
  cis4( b2 ais4) | % 44
  b2 r | % 45
  d2\p <g, d'>4 <a d> | % 46
  <b d>2. <a dis>4 | % 47
  e'2.\< e4\! | \abr
  <cis e>2. eis4 | % 49
  << { fis4( cis } \new Voice {\voiceThree ais2} >> d4) e | \barNumberCheck #50
  fis2. e4 | % 51
  <b d>1 | % 52
  <ais cis>2 r | % 53
  r2 b4\f d | \abr
  fis2 fis4 r | % 55
  r2 a,4 cis | % 56
  e2 e4 r | % 57
  r2 g,4 b | % 58
  d2 d4 r | \abr
  r2 ais4\p b | \barNumberCheck #60
  cis2 ( d4) ais | % 61
  b4\f( ais b) b | % 62
  b2.( ais4 | % 63
  b1)\p | % 64
  b1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicDown  
  fis1 ~ | % 2
  fis2. fis4 | % 3
  g2 ( fis4 ) fis | % 4
  fis2 fis4 r | % 5
  fis2 ( d4 g | % 6
  fis4 e8 [ d ] ) cis4 r | % 7
  d2( e4 g | % 8
  fis2.) fis4 | % 9
  fis4 fis eis ( fis | \barNumberCheck #10
  gis2 fis4 eis | % 11
  fis4 cis d) d | % 12
  cis2 r | % 13
  fis2. fis4 | % 14
  fis2. fis4 | % 15
  g2 (fis4) fis | % 16
  fis2 fis4 r | % 17
  fis4 fis d g | % 18
  fis4( e8 [ d ] cis4) r | % 19
  d4 d e g | \barNumberCheck #20
  fis1 | % 21
  fis4 fis eis( fis | % 22
  gis2 fis4 eis | % 23
  fis4 cis d) d | % 24
  cis2 r | % 25
  fis1 ~ | % 26
  fis2 fis4 fis | % 27
  g2 fis4 fis | % 28
  fis4 fis fis r | % 29
  fis2 fis | \barNumberCheck #30
  fis1 ~ | % 31
  fis2 g4 b | % 32
  b2 (fis ~ | % 33
  fis2. e4 | % 34
  d2 g4 fis | % 35
  e2 d4) e | % 36
  d1 | % 37
  fis1 | % 38
  fis2 r | % 39
  fis4. fis8 g4 g | \barNumberCheck #40
  b2 b4 b | % 41
  b2 ( a4 ) a | % 42
  g4 ( a b) g | % 43
  fis2 ( e) | % 44
  d2 r | % 45
  <d fis>2 e4 fis | % 46
  g2. fis4 | % 47
  <e g>2( <fis a>4) <g b> | % 48
  a2. <g b>4\f | % 49
  fis4( e <d g>) <cis cis'> | \barNumberCheck #50
  <b d'>4( <cis ais'> <d b'>) e | % 51
  fis2 ( eis ) | % 52
  fis2 r | % 53
  r2 fis4 b | % 54
  ais2 ais4 r | % 55
  r2 e4 a | % 56
  g2 g4 r | % 57
  r2 d4 g | % 58
  fis2 fis4 r R1 | \barNumberCheck #60
  fis4 fis fis fis | % 61
  fis2. fis4 | % 62
  fis2( e | % 63
  d4 dis e2) | % 64
  dis1 \bar "|."
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  d1 (| % 2
  cis2 b4 ) d | % 3
  cis4 ( e d ) cis | % 4
  d4( e8 [ fis )] d4 r R1 | % 6
  a2 a4 r | % 7
  fis4 b cis e | % 8
  d2 e4 d | % 9
  cis4 cis b( a8 [ fis ] | \barNumberCheck #10
  eis2 fis8 [ a cis b ] | % 11
  a2 b4) b | % 12
  a2 r | % 13
  d2. d4 | % 14
  cis2 ( b4) d | % 15
  cis4 (e d) cis | % 16
  d4( e8 [ fis ]) d4 r R1 | % 18
  a2. r4 | % 19
  fis4 b cis e | \barNumberCheck #20
  d2 e4 d | % 21
  cis4 cis b( a8 [ fis ] | % 22
  eis2 fis8 [ a cis b ] | % 23
  a2 b4) b | % 24
  a2 r | % 25
  d1 ( | % 26
  cis2) b4 d | % 27
  cis4 ( e ) d cis | % 28
  d4 e8 ([ fis ]) d4 r | % 29
  ais2 b4( d) | \barNumberCheck #30
  cis1( | % 31
  b4 d )cis e | % 32
  fis2( e4 d | % 33
  cis2 d4 ais | % 34
  b2 e,4 fis | % 35
  g2 fis4 )g | % 36
  fis1 | % 37
  cis'2 ( d) | % 38
  cis2 r | % 39
  d4. d8 e4 e | \barNumberCheck #40
  fis2 fis4 fis | % 41
  b,2. b4 | % 42
  b2. e4 | % 43
  d2 ( cis) | % 44
  fis,2 r R1*7 | % 53
  b1\rest
  r2 d4\f d | % 54
  cis2 cis4 r | % 55
  r2 cis4 cis | % 56
  b2 b4 r | % 57
  r2 b4 b | % 58
  a2 a4 r | % 59
  r2 cis4\p d | \barNumberCheck #60
  ais2 ( b4) cis | % 61
  fis4.( e8 d4) d | % 62
  d2( cis | % 63
  b4 a g2) | % 64
  fis1 \bar "|."
}


bassvoice = \relative c' {
  \global
  \dynamicDown
  b4 \p ( fis d b | % 2
  fis'4 e d ) b | % 3
  e2 ( fis4 ) fis | % 4
  b,2 b4 r | % 5
  d1\pp ~ | % 6
  d2 a4 r | % 7
  b1( ~ | % 8
  b2 ais4) b | % 9
  cis4 cis cis2( | \barNumberCheck #10
  cis1 | % 11
  fis2.)\pp fis4 | % 12
  fis2\fermata r | % 13
  b4( fis d) b | % 14
  fis'4( e d) b | % 15
  e2 ( fis4) fis | % 16
  b,2 b4 r | % 17
  d4 d d d | % 18
  d2( a4) r | % 19
  b4 b b b | \barNumberCheck #20
  b2 (ais4 b) | % 21
  cis4 cis cis2 (~ | % 22
  cis1 | % 23
  fis2.) fis4 | % 24
  fis2\fermata r | % 25
  b4( fis d b | % 26
  fis'4 e) d b | % 27
  e2 fis4 fis | % 28
  b,4 b b r R1 | \barNumberCheck #30
  fis'2 e4 ( fis) | % 31
  d4( b e) g | % 32
  fis1 ( | % 33
  <fis, fis'>1 | % 34
  b1~ | % 35
  b2.) b4 | % 36
  b1\fermata | % 37
  <fis fis'>1 | % 38
  <fis fis'>2\fermata r | % 39
  b'4.\f  b8 b4 b | \barNumberCheck #40
  b2 a4 a | % 41
  g2 (fis4) fis | % 42
  e4( fis g) e\p | % 43
  fis2 ( fis,) | % 44
  b2 r R1*7 | % 52
  r2 fis'4\f fis | % 53
  b1 | % 54
  fis2 fis4 fis | % 55
  a1 | % 56
  e2 e4 e | % 57
  g1 | % 58
  d2 d4\p d | % 59
  fis1 ~ | \barNumberCheck #60
  fis2. e4 | % 61
  d4(\f cis b) d | % 62
  fis1 ( | % 63
  b,1)\p | % 64
  b1\fermata \bar "|."
}

lyricsoprano = \lyricmode {
  \repeat unfold 8 \skip 1
  та -- йно
  \repeat unfold 83 \skip 1
  ал -- ли -- лу -- йя,
}

lyricscore = \lyricmode {
  И -- же Хе -- ру -- 
  ви -- мы, та -- йно, та -- йно
  о -- бра -- зу -- ю -- ще, И жи --
  во -- тво -- ря -- щей Тро -- йце, три -- свя -- ту -- ю
  
  песнь __ три -- свя -- ту -- \set associatedVoice = "soprano" ю \set associatedVoice = "alto" песнь __ при -- пе -- ва --
  ю -- ще. Вся --
  ко -- е ны -- не жи -- те -- йско -- е о -- тло --
  жим __ по -- пе -- че --
  ни -- е. А -- минь.
  
  Я -- ко да Ца -- ря всех по -- ды -- мем, всех __ по --
  ды -- мем. А -- нге -- льски -- ми не -- ви -- ди --
  мо до -- ри -- но -- си -- ма чи -- нми. Ал -- ли --
  лу -- йя, ал -- ли -- лу -- йя, ал -- ли -- лу -- йя,
  ал -- ли -- лу -- йя, ал -- ли -- лу -- йя.
}

lyrictenor = \lyricmode {
  \repeat unfold 6 \skip 1
  та -- йно
  \repeat unfold 77 \skip 1
  ал -- ли -- лу -- йя,
}

lyricbass = \lyricmode {
  \repeat unfold 47 \skip 1
  о -- тло -- жим __ ­
  \repeat unfold 18 \skip 1
  Ал -- ли -- лу -- 
  йя, ал -- ли -- лу -- йя, ал -- ли -- лу -- йя, ал -- ли --
  лу -- йя,
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
