\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Хвалите Господа с небес №2"
  subtitle = "Концерт №26"
  composer = "А. Архангельский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key es \major
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
  \tempo "Не скоро" 4=84
  \partial 4
  \secondbar  
  es\p | % 1
  es2 es4 es | % 2
  es1 ~ | % 3
  es1 ~ | % 4
  es2 bes | \abr % 5
  bes4. bes8 bes4 bes | % 6
  bes4 es\p es2 ~ | % 7
  es1 ~ | % 8
  es2 es4 es | % 9
  es2( bes) | \barNumberCheck #10
  bes1 \abr | % 11
  <bes g>2 r4 es, \break | % 12
  bes'1(~ | % 13
  bes4 a g f | % 14
  c'2) c | % 15
  c4. bes8 bes4 bes \abr | % 16
  << { d2 d4 c } {s4\> s\! s\< s\!} >> | % 17
  << { c2( bes4 a)} {s4 s\> s s\!} >> | % 18
  bes2(^\markup\italic"dim." g) | % 19
  f4 r r f' \abr | \barNumberCheck #20
  f4( es8 [\> d ] es4\!) d | % 21
  c4( g' f es | % 22
  d4) c bes bes | % 23
  a4 f\p( g a) \abr | % 24
  bes2 bes8( [ a) ] bes4 | % 25
  a4( es' d c) | % 26
  bes4( a g2) | % 27
  f4 a\mf c c \abr | % 28
  f4.\< f8 f4 f\! | % 29
  f2. f4 | \barNumberCheck #30
  es2 es4 es | % 31
  es1 \abr | % 32
  es2.( d4) | % 33
  es4 bes\p es2 ~ | % 34
  es2. d4 | % 35
  es4(\> g2) f4\! \abr | % 36
  es4 es d r R1*4 | % 41
  r4 bes\f d d | % 42
  es4. es8 d4 d | % 43
  es4 es f f8 f \abr | % 44
  f4( es d2) | % 45
  c1 | % 46
  bes4 r r2 | % 47
  r4 c f\> es\! \abr | % 48
  d4( c8 [ bes ] c4) bes | % 49
  as2 g | \barNumberCheck #50
  f2. r4 | % 51
  r2 r4 bes \abr | % 52
  bes2 bes4 bes | % 53
  bes1 | % 54
  bes1 ~ | % 55
  bes1 \abr | % 56
  bes2\pp r \break | % 57
  es2.\p es4 | % 58
  es1( ~ | % 59
  es1 ~ \abr| \barNumberCheck #60
  es2 bes ~ | % 61
  <bes as>1) | % 62
  bes2 es,4\p es \break | % 63
  bes'1 ~( \abr | % 64
  bes4\> a g\!) f | % 65
  c'2 c | % 66
  c4.( bes8) bes2 | % 67
  d2. c4 \abr | % 68
  c2( bes4\> a | % 69
  bes2\! g) | \barNumberCheck #70
  f4 c'2\f c4 | % 71
  f1 \abr | % 72
  f1 | % 73
  es1 ~ | % 74
  es2 es | % 75
  es2.\>( d4)\! | % 76
  es2. r4 R1 | % 78
  r4 c(\mf f) es8( [ d )] | % 79
  es1 \abr | \barNumberCheck #80
  bes2.\> r4\! R1 | % 82
  r4 f\p( es) d | % 83
  es1 | % 84
  es1\pp\fermata \bar "|."
}

sopIII = \relative c'' {
  \partial 4

  a4\rest |
  b2\rest a4\rest g\p | % 2
  as4.( g8 as4 bes | % 3
  c4. bes8 c4 as | % 4
  bes2) as4( g) | % 5
  as4. g8 as4 f | % 6
  g2 s4 g | % 7
  bes2( as4 bes | % 8
  c2) bes4 as | % 9
  bes2( as4 g) | \barNumberCheck #10
  as2.( f4) | % 11
}


altvoice = \relative c' {
  \global
  \dynamicDown
  \partial 4
  es4\p |
  es2 es4 es |
  f4.( es8 f4 g |
  as4. g8 as4 f |
  g2) d4( es) |
  f4. es8 f4 d |
  es2 r4 es\p |
  g2( f4 g |
  bes as) g f |
  g2( d4 es) |
  f2.( d4) |
  es2 r |
  r r4 d |
  es2-> es |
  r4 a g f |
  f4. f8 f4 r |
  r e\mf f g8 g |
  a4( f e f) |
  f( e d e) |
  f f( g a) |
  bes2~( bes8[ a]) bes4 |
  a1( |
  bes4) g f e |
  f r r f |
  f( es!8[ d]) es4 d8[( e]) |
  f4( bes a g) |
  f( es d e) |
  f f a a | \abr
  as4. as8 as4 as |
  as2. g4 |
  g( as) g as |
  bes( g as g) |
  f( g^\markup\italic"dim." as2) |
  g r4 es\p |
  f( g as) f |
  g( bes2) as4 |
  g f f f\p |
  bes1~( |
  bes4 as!8[ g]) as4 g |
  f( c'\> bes as\!) | \abr
  g\p( f es2) |
  d4 f bes bes |
  bes4. bes8 as!4 as |
  g g f f8 bes | \abr
  a2( bes) |
  bes( a) |
  bes4 f bes(\> as8[ g] |
  as2.\!) as4 |
  as2( g4) f |
  es( d) es( c) |
  d2. r4 |
  r c f( es |
  d2) es4 g |
  g( f es d) |
  es2( c^\markup\italic"dim." |
  d1) 
  d2 r |
  r <es g>4\p q |
  <f as>2.( <g bes>4 |
  <as c>2. <f as>4 | \abr
  <g bes>2 <d f>4 <es g> |
  f2 d) |
  <g es>2 r |
  r d4\p d | \abr
  es2-> es |
  r4 a(\< g) f\! |
  f2 f |
  r4 e\mf( f) g | \abr
  a( f e f |
  f e d e) |
  f a2 a4 |
  as!1 | \abr
  as |
  g4( as g as |
  bes g) as( g) |
  f( g as2) | \abr
  g2. r4 |
  r f\mf( bes) as8[( g]) |
  as1( |
  g4 as^\markup\italic"dim." g f) |
  es bes\p( es) des8[( c]) |
  des1( |
  c2 ces |
  bes1) |
  bes
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  r4 |
  R1*11
  r2 r4 bes | % 13
  c2->( bes4 a | % 14
  es'2) es | % 15
  es4. d8 d4 r | % 16
  r4 bes bes\< bes8 bes \! | % 17
  << {a2( bes4 c)} {s4 s\> s s\!} >> | % 18
  d4(^\markup\italic"dim." c bes2) | % 19
  a4 a( bes c) | \barNumberCheck #20
  d2( c4) d8 ( [ es ]) | % 21
  f4( es d g | % 22
  f4) es d c | % 23
  c4 a( bes c) | % 24
  d2 c4 bes | % 25
  c4( g' f es) | % 26
  d4( c bes2) | % 27
  a4 c f f | % 28
  bes,4.\< bes8 c4 c\! | % 29
  d2. d4 | \barNumberCheck #30
  es2 d4 c | % 31
  bes2( as4 bes) | % 32
  c2( bes) | % 33
  bes2 r4 g | % 34
  as4( bes c) as | % 35
  bes2.\> bes4\! | % 36
  bes4 a bes r | % 37
  r4 bes( c d) | % 38
  es2 es8( [ d) ] es4 | % 39
  d2.\> r4\! | \barNumberCheck #40
  bes2.( a4) | % 41
  bes4 d f f | % 42
  es4. bes8 bes4 bes | % 43
  bes4 bes bes bes8 bes | % 44
  f'1 | % 45
  es1 | % 46
  d2 r4 r | % 47
  r4 es d c | % 48
  f2( es4) d | % 49
  c2 bes4( a) | \barNumberCheck #50
  bes4 f bes(\> as8 [ g ]\! | % 51
  as2. g4 | % 52
  f4 as) g bes | % 53
  bes4( as g f) | % 54
  g2( es^\markup\italic"dim." | % 55
  f1) | % 56
  f2 r | R1*6 | % 63
  r2 bes4\p bes | % 64
  c2->(\> bes4)\! a | % 65
  es'2 es | % 66
  es2 d | % 67
  r4 bes2 bes4 | % 68
  a2( bes4\> c | % 69
  d4\! c bes2) | \barNumberCheck #70
  a4 f'2 f4 | % 71
  bes,2( c) | % 72
  d1 | % 73
  es2( d4 c | % 74
  bes2) as4 ( bes) | % 75
  c2( bes) | % 76
  bes4 bes\mf( es) des8 ([ c )] | % 77
  des1( | % 78
  c2 ces | % 79
  bes4 c!^\markup\italic"dim." bes as) | \barNumberCheck #80
  g2. r4 | % 81
  r4 f\p( bes) as8 ([ g )] | % 82
  as1( | % 83
  g) | % 84
  g
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4
  r4 |
  R1*13
  r4 f g a | % 15
  bes4. bes,8 bes4 r | % 16
  r4 c\mf d e8  e | % 17
  f4( f, g a) | % 18
  g2( c) | % 19
  f,4 r r f' | \barNumberCheck #20
  f1 ~ | % 21
  f1 | % 22
  f2. f4 | % 23
  f1\p ~ | % 24
  f1 | % 25
  f1 ~ | % 26
  f1 | % 27
  f4 f\mf es es | % 28
  d4. d8 c4 c | % 29
  b2. b4 | \barNumberCheck #30
  c4( c') bes! as | % 31
  g4( es f g) | % 32
  as4( g^\markup\italic"dim." f2) | % 33
  es2 r4 es\p | % 34
  es2. es4 | % 35
  es2. d4 | % 36
  es4 c bes r | % 37
  r4 d\p( es f) | % 38
  g2 f4 g8( [ as ]) | % 39
  bes4( as g f) | \barNumberCheck #40
  es4\p( d c2) | % 41
  bes4 bes'\f as as | % 42
  g4. g8 f4 f | % 43
  es4 es d d8 d | % 44
  c2( d) | % 45
  f1 | % 46
  bes,2 bes | % 47
  bes1 ~ | % 48
  bes1 | % 49
  bes1 | \barNumberCheck #50
  bes1 | % 51
  bes1 | % 52
  bes1 ~ | % 53
  bes1 ~ | % 54
  bes1 ~ | % 55
  bes1 | % 56
  bes2\pp r R1*8 | % 65
  r4 f'(\< g) a\! | % 66
  bes2 bes, | % 67
  r4 c\mf(  d) e | % 68
  f4( f, g a | % 69
  g2 c) | \barNumberCheck #70
  f,4 f'2\f es!4 | % 71
  d2( c) | % 72
  b1 | % 73
  c4( c' bes as | % 74
  g4 es) f( g) | % 75
  as4(\> g f2)\! | % 76
  es1 | % 77
  es1 ~ | % 78
  es1 ~ | % 79
  es1 | \barNumberCheck #80
  es1 | % 81
  es1 ~ | % 82
  es1 ~ | % 83
  es1 | % 84
  es1\pp\fermata
}

lyricscoreI = \lyricmode {
  \repeat unfold 11 \skip 1
  хва -- ли -- те Е -- го в_Вы --
  шних, хва -- ли -- те Го -- спо -- да, хва --
  ли -- те Е -- го в_Вы -- шних, хва --
  ли -- те Го -- спо -- да с_не -- бес, хва --
  ли -- те Е -- го в_Вы -- шних,
  \repeat unfold 15 \skip 1
  хва -- ли -- те Го -- спо --
  да с_не -- бес,
  \repeat unfold 15 \skip 1
  хва -- ли -- те
  Го -- спо -- да с_не -- бес, хва --
  ли -- те Е -- го в_Вы --
  шних. А -- лли -- лу -- йа,
  а -- лли -- лу -- йа, а -- лли -- лу -- йа, а -- лли --
  лу -- йа,
  \repeat unfold 8 \skip 1
  а -- лли -- лу -- йа, а -- лли -- лу -- йа.
}

lyricscore = \lyricmode {
  Хва -- ли -- те, хва -- ли -- те __
  Го -- спо -- да с_не -- бес, хва -- ли -- те Е -- го __ в_Вы --
  шних, хва -- ли -- те, хва -- ли -- те Го -- спо -- да,
  хва -- ли -- те Е -- го __ в_Вы -- шних, хва --
  ли -- те Го -- спо -- да с_не -- бес, хва -- ли -- те Е -- го __ в_Вы -- шних, хва -- ли -- те
  Го -- спо -- да с_не -- бес, хва -- ли -- те Е -- го __
  в_Вы -- шних, хва -- ли -- те Го -- спо -- да
  с_не -- бес, хва -- ли -- те Е -- го __
  в_Вы -- шних, хва -- ли -- те Го -- спо -- да с_не -- бес, хва -- ли -- те Е --
  го __ в_Вы -- шних. хва -- ли -- те
  Го -- спо -- да __ с_не -- бес, хва -- ли --
  те Е -- го __ в_Вы --
  шних. А -- лли -- лу -- йа,
  а -- лли -- лу -- йа, а -- лли -- лу -- йа, а -- лли --
  лу -- йа, а -- лли -- лу -- йа, а -- лли -- лу -- йа,
  а -- лли -- лу -- йа, а -- лли -- лу -- йа.
}

lyricscoret = \lyricmode {
  хва -- ли -- те Го -- спо -- да,
  \repeat unfold 15 \skip 1
  хва_-
  \repeat unfold 51 \skip 1
  хва -- ли -- те
  \repeat unfold 5 \skip 1
  хва -- ли_-
  \repeat unfold 5 \skip 1
  а -- лли -- лу -- йа, а -- лли -- лу -- йа, 
  \repeat unfold 12 \skip 1
  А -- лли -- лу -- йа, а -- лли -- лу -- йа.
}

lyricscoreb = \lyricmode {
  хва -- ли -- те Го -- спо -- да,
  хва -- ли -- те Е -- го __ в_Вы -- шних, хва --
  ли -- те Е -- го __
  в_Вы -- шних,
  \repeat unfold 23 \skip 1
  хва -- ли -- те Е -- го __
  в_Вы -- шних,
  \repeat unfold 15 \skip 1
  хва -- ли -- те Е -- го
  в_Вы -- шних.
  а -- лли -- лу -- йа,
  \repeat unfold 12 \skip 1
  а -- лли -- лу -- йа.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
            \new Lyrics = "sopranosI"

      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "sopranoIII" { \voiceThree \sopIII }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
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

      \context Lyrics = "sopranosI" {
        \lyricsto "soprano" {
          \lyricscoreI
        }
      }
      \context Lyrics = "sopranos" {
        \lyricsto "alto" {
          \lyricscore
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyricscoret
        }
      }
      \context Lyrics = "basses" {
        \lyricsto "bass" {
          \lyricscoreb
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
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
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
      
      \new Lyrics = "sopranosI"
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "sopranoIII" { \voiceThree \sopIII }
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
      \context Lyrics = "sopranosI" {
        \lyricsto "soprano" {
          \lyricscoreI
        }
      }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=84
    }
  }
}
