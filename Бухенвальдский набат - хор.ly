\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Бухенвальдский набат"
  composer = \markup\column{"Музыка В. Мураделли" "Стихи А.Соболева" "Аранжировка В.Акопова"}
  piece = "Coro"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \minor
  \time 4/4
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


solovoice = \relative g {
  \global
  \set melismaBusyProperties = #'()
  \set Score.markFormatter = #format-mark-circle-numbers
  \dynamicUp
  
  \tempo "Grave"
  R1*2 \bar "||"
  
  \mark | % 3
  \slurDashed g8.\ffff ( as16 g8. f16
  es8. d16 c8. d16 | % 4
  es4 c ) r2 \abr | % 5
   es8. (  c16 c4 es8. c16 c8. es16 | % 6
  g8. g16 g8. as16 g4 ) r | % 7
   as8. (  bes16 as8. g16 f8. es16 d8. es16 | % 8
  f4 d ) r2 \abr | % 9
   g8. (  g16 \< g8. as16 \! g4 ) r |
  \barNumberCheck #10
   g8. ( g16 \< g8. as16 \! g4 ) r \bar "||" \abr
  \mark | % 11
   c8. \mf (  c16 c8. c16 c8. c16 c8. c16 | % 12
  c4 c2. ) | % 13
   bes8. (  bes16 bes8. bes16 bes8. bes16 bes8.
  bes16 | \abr % 14
  bes1 ) | % 15
   as8. (  as16 as8. as16 as8. d,16 es8. f16 | % 16
  g4 g2. ) \abr | % 17
   b8. (  b16 b8. c16 b2 ) | % 18
   c8. (  c16 c8. d16 c4 )  c8. (
   c16 | % 19
  d4 d2 )  c8. \< (  d16 \! | \barNumberCheck #20
  es4 c2 )  g8. (  g16 \abr | % 21
  as2 g | % 22
  c2 \< ~ c8 \mf ) r c8. \< c16 \bar "||"
  \mark  | % 23
  d4 -\markup\italic"Tutti" \f d2 c8. d16 \abr | % 24
  es4 c2 g8. g16 | % 25
  as2\<-\markup\italic"poco rall." g\! \bar "||"
  \mark  | % 26
  \tempo "Tempo di marcia"
  c8 -> -. r r4 r2 | % 27
  g8.\ffff (  as16 g8. f16 es8. d16 c8. d16 \abr | % 28
  es4 c ) r2 | % 29
   es8. (  c16 c4 es8. c16 c8. es16 |
  \barNumberCheck #30
  g8. g16 g8. as16 g4 ) r \abr | % 31
   as8. (  bes16 as8. g16 f8. es16 d8. es16 | % 32
  f4 d ) r2 | % 33
   g8. (  g16 \< g8. as16 \! g4 ) r \abr | % 34
   g8. (  g16 \< g8. as16 \! g4 ) r \bar "||"
  \mark  | % 35
   c8. \mf (  c16 c8. c16 c8. c16 c8. c16 | % 36
  c4 c2. ) \abr | % 37
   bes8. (  bes16 bes8. bes16 bes8. bes16 bes8.
  bes16 | % 38
  bes1 ) | % 39
   as8. (  as16 as8. as16 as8. d,16 es8. f16 \abr |
  \barNumberCheck #40
  g4 g2. ) | % 41
   b8. (  b16 b8. c16 b2 ) | % 42
   c8. (  c16 c8. d16 c4 )  c8. (
   c16 \bar "||"
  \mark  | % 43
  d4 d2 )  c8. \< (  d16 \! \abr | % 44
  es4 c2 )  g8. (  g16 | % 45
  as2 g | % 46
  c2 \< ~ c8 \mf ) r c8.-\markup\italic"Tutti" \< c16  \bar "||"
  \mark | % 47
  d4 \f d2 c8. d16 \abr | % 48
  es4 c2 g8. g16 | % 49
  as2 \< g \! \bar "||"
  \mark | \barNumberCheck #50
  \tempo "Meno mosso"
  c8 -> -. r r4 r2 | % 51
  g8.\ffff (  as16 g8. f16 es8. d16 c8. d16 \abr | % 52
  es4 c ) r2 | % 53
   es8. (  c16 c4 es8. c16 c8. es16 | % 54
  g8. g16 g8. as16 g4 ) r \abr | % 55
   as8. (  bes16 as8. g16 f8. es16 d8. es16 | % 56
  f4 d ) r2 | % 57
   g8. (  g16 \< g8. as16 \! g4 ) r \abr | % 58
   g8. (  g16 \< g8. as16 \! g4 ) r \bar "||"
  \mark  | % 59
   c8. \mf (  c16 c8. c16 c8. c16 c8. c16 |
  \barNumberCheck #60
  c4 c2. ) \abr | % 61
   bes8. (  bes16 bes8. bes16 bes8. bes16 bes8.
  bes16 | % 62
  bes1 ) | % 63
   as8. (  as16 as8. as16 as8. d,16 es8. f16 \abr | % 64
  g4 g2. ) | % 65
   b8. (  b16 b8. c16 b2 ) | % 66
   c8. (  c16 c8. d16 c4 )  c8. (
   c16 \bar "||" \abr
  \mark  | % 67
  d4 d2 )  c8. \< (  d16 \! | % 68
  es4 c2 )  g8. (  g16 | % 69
  as2 g | \abr \barNumberCheck #70
  
  c2 -\markup{ \italic {allargando} } \< ~ c8 \! ) r \tempo "Meno mosso" c8. \mf \< -\markup\italic"Tutti" c16
  \bar "||"
  \mark | % 71
  d4 \f d2 c8.
  d16 \abr | % 72
  es4 c2 \bar "!"
  g8. \ff g16 \bar "||"
  \mark  | % 73
  as2 -\markup{ \italic {rall.} } \< g \! | % 74
  c1 \fff \< ~ | % 75
  c \ffff \fermata \bar "|."
}


sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  R1*2 \bar "||"
  R1*8 \bar "||"
  R1 | % 12
  r4 f \f ( e es | % 13
  d4 \> ) r \! r2 | % 14
  r4 es ( d des | % 15
  c4 \> ) r \! r2 | % 16
  R1*6 | % 22
  r2 r4 c8. \< c16 \! \bar "||"
  d4 \f d2 c8. d16 | % 24
  es4 c2 g8. g16 | % 25
  as2 \< g \bar "||"
  <g c>8 \f -> -. r r4 r2 | % 27
  R1*8 \bar "||"
  R1 | % 36
  r4 f' \ffff ( e es | % 37
  d4 \> ) r \! r2 | % 38
  r4 es ( d des | % 39
  c4 \> ) r \! r2 | \barNumberCheck #40
  R1*3 \bar "||"
  R1*3 | % 46
  r2 r4 c8.\ffff \< c16 \! \bar "||"
  d4 d2 c8. d16 | % 48
  es4 c2 g8. g16 | % 49
  as2 \< g  \bar "||"
  <g c>8 \f -> -. r r4 r2 | % 51
  R1*8 \bar "||"
  R1 | \barNumberCheck #60
  r4 f' \ffff ( e es | % 61
  d4 \> ) r \! r2 | % 62
  r4 es ( d des | % 63
  c4 \> ) r \! r2 | % 64
  R1*3 \bar "||"
  R1*3 | \barNumberCheck #70
  r2 r4 c8. \< c16 \! \bar "||"
  d4 \ffff d2 c8. d16 | % 72
  es4 c2 \bar "!"
  g8. \ff g16 \bar "||"
  as2 \< g | % 74
  c1 \! \fff \< ~ | % 75
  c1 \ffff \! \fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicDown  
  R1*2 \bar "||"
  R1*8 \bar "||"
  R1
  | % 12
  \slurDashed r4  <f as>( q q~ | % 13
  q ) r4 r2 | % 13
  r4  <es g> ( <e g> <e g> | % 15
  <f as>) r r2 
  R1*6
  r2 r4 g8. g16 \bar "||"
  <f as>4 q2 q8. q16 | % 24
  g4 g2 es8. es16 | % 25
  f2 d \bar "||"
  es8 -> -. r r4 r2 R1*9
  r4 <f as> ( q q~ | % 37
  q4) r4 r2 | % 37
  r4 <es g>( <e g> q  | % 38
  <f as>) r4 r2 |
  R1*6 |
  r2 r4  g8. g16 |
  <f as>4 q2 q8. q16 |
  g4 g2 es8. es16 |
  f2 d |
  es8-.-> r r4 r2 
  
  R1*9
  
  r4 <f as>( q q~ |
  q) r4 r2 |
  r4 <es g>( <e g> q |
  <f as>) r4 r2 
  
  R1*6
  
  r2 r4 g8.\ffff g16 |
  <f as>4 q2 q8. q16 |
  g4 g2 es8. es16 |
  f2 d |
  c1~ c
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  R1*11
  r4 <c f>( <c e> <c es> |
  d) r4 r2 |
  r4 <bes es>( <bes d> <bes des> |
  c) r4 r2
  R1*6
  r2 r4 c8. c16 |
  c4 c2 c8. c16 |
  c4 c2 c8. c16 |
  d2 b |
  c8-.-> r r4 r2 |
  R1*9 |
  r4 <c f>( <c e> <c es> |
  d) r4 r2 |
  r4 <bes es>( <bes d> <bes des> |
  c) r4 r2 |
  R1*6 |
  r2 r4 c8. c16 |
  c4 c2 c8. c16 |
  c4 c2 c8. c16 |
  d2 b |
  c8-.-> r r4 r2 |
  R1*9 |
  r4 <c f>( <c e> <c es> |
  d) r r2 |
  r4 <bes es>( <bes d> <bes des> |
  c) r r2 |
  R1*6 |
  r2 r4 c8. c16 |
  c4 c2 c8. c16 |
  c4 c2 c8. c16 |
  d2 b |
  c1~ c\fermata 
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \slurDashed
  R1*11
  r4 f(\f f f |
  bes)\> r4\! r2
  r4 es,( e e |
  f)\> r4\! r2
  R1*6
  r2 r4 e8.\< e16 |
  f4\f f2 f8. f16 |
  c4 c2 g'8. g16 |
  f2 \< g |
  <g c,>8-.->\f r r4 r2 |
  R1*9 |
  r4 f(\ffff f f |
  bes)\> r\! r2 |
  r4 es,( e e |
  f)\> r4\! r2 |
  R1*6 |
  r2 r4 e8.\ffff e16 |
  f4 f2 f8. f16 |
  c4 c2 g'8. g16 |
  f2\< g |
  <g c,>8-.->\f r r4 r2
  R1*9 |
  r4 f\ffff( f f |
  bes)\> r\! r2 |
  r4 es,( e e|
  f)\> r\! r2 |
  R1*6 |
  r2 r4 e8.\ffff e16 |
  f4 f2 f8. f16 |
  c4 c2 g'8.\ff g16 |
  <d f>2\< <g, g'> |
  <c \parenthesize c,>1~\fff\< q\ffff
  
}

lyricscore = \lyricmode {
  А __ А __
  И вос -- ста -- ли, и вос -- ста -- ли, и вос -- ста -- ли вновь!
  А __ А __
  Э -- то сто -- нет, э -- то сто -- нет Ти -- хий о -- ке -- ан.
  А __ А __
  Бе -- ре -- ги -- те, бе -- ре -- ги -- те, бе -- ре -- ги -- те мир! __
}

lyricssolo = \lyricmode {
  Лю -- ди ми -- ра, на ми -- ну -- ту встань -- те! 
  Слу -- шай -- те, слу -- шай -- те: гу -- дит со всех сто -- рон_— э -- то раз -- да -- ёт -- ся в_Бу -- хен -- валь -- де 
  ко -- ло -- коль -- ный звон, ко -- ло -- коль -- ный звон. 
  Э -- то воз -- ро -- ди -- лась и о -- креп -- ла в_мед -- ном гу -- ле пра -- вед -- на -- я 
  
  кровь. Э -- то жерт -- вы о -- жи -- ли из пеп -- ла 
  и вос -- ста -- ли вновь, и вос -- ста -- ли вновь. И вос -- ста -- ли, и вос -- ста -- ли, и вос -- 
  ста -- ли вновь! _ И вос -- ста -- ли, и вос -- 
  ста -- ли, и вос -- ста -- ли вновь! Сот -- ни ты -- сяч за -- жи -- во сож --
  
  жён -- ных стро -- ят -- ся, стро -- ят -- ся, в_ше -- рен -- ги к_ря -- ду ряд. 
  Ин -- тер -- на -- ци~о -- наль -- ны -- е ко -- лон -- ны с_на -- ми го -- во -- рят, 
  с_на -- ми го -- во -- рят. Слы -- ши -- те гро -- мо -- вы -- е рас -- ка -- ты? 
  Э -- то не гро -- за, не у -- ра -- ган. Э -- то, вих -- рем а -- том -- ным объ --
  
  я -- тый, сто -- нет о -- ке -- ан, Ти -- хий о -- ке -- ан. Э -- то сто -- нет, э -- то 
  сто -- нет Ти -- хий о -- ке -- ан. __ _  Э -- то сто -- нет, э -- то 
  сто -- нет Ти -- хий о -- ке -- ан. Лю -- ди ми -- ра, на ми -- ну -- ту
  встань -- те! Слу -- шай -- те, слу -- шай -- те: гу -- дит со всех сто -- рон_—
  
  э -- то раз -- да -- ёт -- ся в_Бу -- хен -- валь -- де ко -- ло -- коль -- ный звон, 
  ко -- ло -- коль -- ный звон. Звон плы -- вёт, плы -- вёт над всей зем -- лё -- ю, 
  и гу -- дит взвол -- но -- ван -- но э -- фир… лю -- ди ми -- ра, будь -- те зор -- че 
  втро -- е, бе -- ре -- ги -- те мир, бе -- ре -- ги -- те мир! Бе -- ре -- 
  
  ги -- те, бе -- ре -- ги -- те, бе -- ре -- ги -- те 
  мир! __ _  Бе -- ре -- ги -- те, бе -- ре -- 
  ги -- те, бе -- ре -- ги -- те мир! __ _
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    %ragged-bottom = ##f
    ragged-last-bottom = ##f
    
  }
  \score {
    <<
    %  \transpose c bes {
    \new Staff = "solostaff" \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar."
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solobar" { \clef bass \oneVoice \solovoice }
        \new Lyrics \lyricsto "solobar" { \lyricssolo }
      >>
      
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
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
  >> 
    %  }  % transposeµ
    \layout { 

      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
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
    {<<
          \new Staff = "solostaff" \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar."
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solobar" { \clef bass \oneVoice \solovoice }
        \new Lyrics \lyricsto "solobar" { \lyricssolo }
      >>
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
    >>
    }
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
