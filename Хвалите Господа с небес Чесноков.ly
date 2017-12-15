\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "№9 «Хвалите Господа с небес…»"
  subtitle = "Причастен"
  composer = "П.Чесноков"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \major
  \time 3/4
  \numericTimeSignature
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

breath = { \once \override BreathingSign.text =
    \markup { \musicglyph #"scripts.tickmark" } \breathe }

breatha = { \once \override BreathingSign.Y-offset = -4 \breath }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo "Торжественно. Звучно. Светло" 4=80
  \partial 4
  \secondbar  
  b\f | % 1
  <b e>2 <b e>4 | % 2
  b4. b8 b  b | % 3
  cis2.(\> | \abr % 4 
  gis2)\! \breath gis4\< | % 5
  a4 a a\! | % 6
  cis2 ~ <cis e>4 | % 7
  <e gis>2.\f\> | % 8
  <b e>2\! r4 \abr | \barNumberCheck #9
  R2. |
  r4 r fis'\f | % 11
  fis2 fis4 | % 12
  fis4. fis8 b, b | % 13
  b2. ~ \abr | % 14
  b2 \breath b4 | % 15
  fis'2.\> | % 16
  b,2\! r4 R2.*2 \abr | % 19
  r4 r e,\f | \barNumberCheck #20
  b'8 [( ais ]) b[( cis )] dis4 \breath | % 21
  cis4.( gis'8 fis [ e ]) | % 22
  dis8 ([ e )] dis( [ cis )] b ([ a )] \abr | % 23
  gis4 b \breath e | % 24
  e4 e dis | % 25
  e4 e \breath e | % 26
  fis4 fis dis | \abr % 27
  e4 gis, \breath cis | % 28
  b8 ([ cis )] dis4 \breath b\f | % 29
  e2 e4 | \barNumberCheck #30
  b4. b8 b b | \abr % 31
  cis2.(\> | % 32
  gis2\!) gis4\< | % 33
  a4 a a | % 34
  cis2\! ~ <cis e>4 | % 35
  <e gis>2.\f\> \abr | % 36
  <b e>4\! r r | % 37
  r <dis fis> q | % 38
  <cis fis>2. ~ | % 39
  <dis fis>2 q4 | \barNumberCheck #40
  q \breath b\f b \abr | % 41
  b2. ~ | % 42
  b ~ | % 43
  b2 b4 | % 44
  b4 \breath cis\< dis\! \abr | % 45
  e2 e4 | % 46
  e2 r4 | % 47
  a2\ff( gis4 | % 48
  fis2) e4 | % 49
  fis2 fis4 | \barNumberCheck #50
  fis2 r4 |\abr % 51
  <dis gis>2.\ff( | % 52
  <cis fis>2) cis4 | % 53
  <cis e>2\> <b e>4 | % 54
  q2\! r4 | % 55
  e,2.\mf\< | % 56
  fis2. | % 57
  b2.(~\! \abr | % 58
  b2 a4 | % 59
  gis2. ~ | \barNumberCheck #60
  gis2\> fis4 | % 61
  e2. ~ | % 62
  e2) e4\p | % 63
  e2.\> ~ | % 64
  e4\! r \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  b | % 1
  gis2 gis4 | % 2
  <e gis>4. q8 q q | % 3
  q2. ~ | % 4
  e2 e4 | % 5
  <cis e>4 q q | % 6
  << { e4( fis a)} \new Voice {\voiceFour a2.} >> | % 7
  b2. | % 8
  gis2 r4 s2. | \barNumberCheck #10
  r4 r fis | % 11
  fis2 fis4 | % 12
  fis4. fis8 b, b  | % 13
  b'2.~ | % 14
  b2 b4 | % 15
  b2. | % 16
  fis2 b,4 | % 17
  e8 [( dis e fis ]) gis4 | % 18
  fis4.\> cis'8\! b\< a \!| % 19
  gis8 ([ a gis fis )] e4 | \barNumberCheck #20
  dis8 ( [ cis )] b4 \breatha b' | % 21
  b4( ais gis8 [ ais ] | % 22
  b4) b8 ([ a? ]) gis ([ fis )] | % 23
  e4 gis b | % 24
  a8 ([ gis )] a4 b | % 25
  b8 ([ cis )] b ([ a )] gis4 | % 26
  fis4 fis fis | % 27
  gis4 gis cis | % 28
  b4 b b8 ([ a )] | % 29
  gis2 gis4 | \barNumberCheck #30
  <e gis>4. q8 q q | % 31
  q2. ~ | % 32
  e2 e4 | % 33
  <cis e>4 q q | % 34
  << { e4( fis a)} \new Voice {\voiceFour a2.} >>| % 35
  b2. | % 36
  gis4 r r | % 37
  r4 b b | % 38
  ais2. ( | % 39
  b2) b4 | \barNumberCheck #40
  b4 b b | % 41
  b2. ~ | % 42
  b2. ~ | % 43
  b2 b4 | % 44
  b4 b b | % 45
  b2 b4 | % 46
  b2 r4 | % 47
  cis2. ~ | % 48
  cis2 cis4 | % 49
  cis2 cis4 | \barNumberCheck #50
  cis2 r4 | % 51
  b2. ( | % 52
  a2) a4 | % 53
  a2 gis4 | % 54
  gis2 r4 | % 55
  cis,2. | % 56
  dis2. | % 57
  e2.( ~ | % 58
  <cis e>2. | % 59
  e2 dis4 | \barNumberCheck #60
  cis2 dis4 | % 61
  e2. ~ | % 62
  e2) e4 | % 63
  e2.~ | % 64
  e4 r
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  b | % 1
  e2 e4 | % 2
  b4. b8 b b | % 3
  cis2.( | % 4
  gis2) \breath gis4 | % 5
  a4 a a | % 6
  cis2( e4) | % 7
  gis2. | % 8
  e2 <b e>4\f | % 9
  <dis fis>2 q4 | \barNumberCheck #10
  <cis fis>4. q8 q q | % 11
  <dis fis>2. ~ | % 12
  q2 fis4-> | % 13
  e4-> dis-> cis-> | % 14
  fis2->( e4) | % 15
  dis2. | % 16
  <dis b>2 r4 R2.*8 | % 25
  r4 r e,\f | % 26
  b'8( [ ais )] b( [ cis )] dis4 | % 27
  cis4.( gis'8 fis [ e ]) | % 28
  dis8 ([ e )] dis([ cis )] \breath b4 | % 29
  b2 b4 | \barNumberCheck #30
  b4. b8 b b | % 31
  cis2.( | % 32
  gis2) \breath gis4 | % 33
  a4 a a | % 34
  cis2( e4) | % 35
  gis2. | % 36
  e4 e\f e | % 37
  <dis fis>2 q4 | % 38
  <cis fis>4 q q | % 39
  <dis fis>2 q4 | \barNumberCheck #40
  q4 b b | % 41
  e4( dis8 [ e ]) dis([ cis )] | % 42
  fis4 e dis | % 43
  e4( dis8 [ e ]) dis ([ cis )] | % 44
  fis4 e dis | % 45
  e2 e4 | % 46
  e2 r4 | % 47
  << { a2( gis4 | % 48
  fis2) } {e2. e2} >> e4 | % 49
  <e fis>2 q4 | \barNumberCheck #50
  q2 r4 | % 51
  <dis gis>2.( | % 52
  <cis fis>2) cis4 | % 53
  <cis e>2 <b e>4 | % 54
  q2 r4 | % 55
  a2. | % 56
  a2. | % 57
  gis2.( | % 58
  fis2. | % 59
  b2. | \barNumberCheck #60
  a2. | % 61
  gis2. ~ | % 62
  gis2) gis4 | % 63
  gis2. ~ | % 64
  gis4 r
}


bassvoice = \relative c {
  \global
  \dynamicNeutral
  r4 R2.
  r4 r b\f | % 3
  <e, b'>2 q4 | % 4
  q4. q8 q q ] | % 5
  q2.~ | % 6
  q2 q4 | % 7
  <e' b'>2. | % 8
  q2 gis4 | % 9
  b2 b4 | \barNumberCheck #10
  <fis ais>4. q8 q q | % 11
  b2. ~ | % 12
  b2 \breath <a? b>4 | % 13
  <gis b>4 <fis b> <e b'> | % 14
  << { \voiceFour a2( gis4) } \new Voice {\voiceTwo b2. } >>| % 15
  \voiceTwo <fis b>2.\> | % 16
  <b, fis'>2\! r4 R2.*5 | % 22
  r4 r b\f | % 23
  e8 ([ dis  e  fis )] gis4  \breath| % 24
  fis4. cis'8 b  a  | % 25
  gis8 [( a  gis  fis )] e4 | % 26
  dis8 ( [ cis )] b4 \breatha b' | % 27
  b4( ais gis8 [ ais ] | % 28
  b4) b8 ([ a ]) gis ([ fis )] | % 29
  e2 e4 | \barNumberCheck #30
  r4 r b\f | % 31
  <e, b'>2 q4 | % 32
  q4. q8 q q| % 33
  q2. ~ | % 34
  q2 \breatha q4 | % 35
  <e' b'>2. | % 36
  q4 \breath <gis b> q | % 37
  b2 b4 | % 38
  <fis ais>4 q q | % 39
  b2 b4 | \barNumberCheck #40
  b4 \breath b <a? b> | % 41
  << { gis4( fis8 [ gis ]) fis( [ e )] } \new Voice { \voiceFour b'2 b4 } >> | % 42
  <a b>4 <gis b> <fis b> | % 43
  << { gis4( fis8 [ gis )] fis( [ e )] } \new Voice { \voiceFour  b'2 b4 } >>| % 44
  <a b>4 \breath <gis b> <fis b> | % 45
  <gis b>2 <gis b>4 | % 46
  <gis b>2 r4 | % 47
  << { fis2( gis4 | % 48
  a2) } { cis2. cis2 } >> cis4 | % 49
  <a cis>2 q4 | \barNumberCheck #50
  q2 r4 | % 51
  b2.( | % 52
  <b, a'>2) q4 | % 53
  <e a>2 <e gis>4 | % 54
  q2 r4 | % 55
  <e, b'>2. | % 56
  q | % 57
  q ~ | % 58
  q ~ | % 59
  q ~ | \barNumberCheck #60
  q ~ | % 61
  q ~ | % 62
  q2 q4 | % 63
  q2.~| % 64
  q4 r
}

lyricsoprano = \lyricmode {
  \repeat unfold 26 \skip 1 хва -- ли -- те Е -- го в_вы -- шних,
}
lyricalto = \lyricmode {
  Хва -- ли -- те Го -- спо -- да с_не -- бес, __
  хва -- ли -- те Е -- го __ в_вы -- шних.
  хва -- ли -- те Го -- спо -- да с_не -- бес __
  хва -- ли -- те. Хва -- ли -- те Го -- спо -- да с_не --
  бес, __ хва -- ли -- те, хва -- ли -- те, хва -- ли -- те, хва -- ли -- те, хва -- ли -- те, хва -- ли -- те, хва -- 
  ли -- те, хва -- ли -- те, хва -- ли -- те Го -- спо -- да с_не --
  бес, __ хва -- ли -- те Е -- го __ в_вы --
  шних. А -- лли -- лу -- йи -- я, а -- лли -- лу -- йи -- я,
  а -- лли -- лу -- йи -- я, а -- лли -- лу -- йи -- я,
  а -- лли -- лу -- йи -- я, а -- лли -- лу -- йи -- я. __
}
lyrictenor = \lyricmode { 
  \repeat unfold 30 \skip 1 хва -- ли -- те Е -- го __ в_вы -- шних,
}
lyricbass = \lyricmode {
  Хва -- ли -- те Го -- спо -- да с_не -- бес, __ хва -- ли -- те, хва --
  ли -- те Го -- спо -- да с_не -- бес, __ хва -- ли -- те Е --
  го __ в_вы -- шних.
  Хва -- ли -- те Го -- спо -- да с_не -- бес, __ хва -- ли -- те, хва -- ли -- те, хва -- ли -- те, 
  хва -- ли -- те Го -- спо -- да с_не -- бес, __ хва -- ли --
  те. А -- лли -- лу -- йи -- я, а -- лли -- лу -- йи -- я, а -- лли --
  лу -- йи -- я, а -- лли -- лу -- йи -- я,
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    ragged-last = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Lyrics = "sopranos"

      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
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
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricsoprano
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricalto
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyrictenor
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \lyricbass
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
          \lyricalto
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=80
    }
  }
}
