\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Милость мира"
  composer = "А.А.Фрунза"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  b2 d |
  e b |
  a b4 c |
  d2. g,4 | \abr
  g2\fermata r \bar "||"
  \set Timing.measurePosition = #(ly:make-moment -1/2) g4 g |
  a2 c4 c |
  b2\fermata r \bar "||" \abr
  e4. b8 b4 b |
  d2. c4 |
  b2\fermata r \bar "||"
  \set Timing.measurePosition = #(ly:make-moment -1/4) g4 | \abr
  a4.( g8) a4 b |
  c4.( b8) c4 d |
  b2 b4 d |
  g4. g8 fis4 e | \abr
  d2 d |
  c4. c8 c4 c |
  b4. b8 a2 |
  a a4.\p a8 | \abr
  a4 b c e |
  d( c) b2 |
  d\p d4 c |
  b2( a) | \abr
  g1\fermata \bar "||"
  \key c \major c2 c4( d) |
  g2. e4 |
  e( d) c b | \abr
  c2 d4 e |
  f4. f8 e4 e |
  d2 d4 d |
  d4. d8 d4 cis | \abr
  d2 r4 d |
  d2 d4 c? |
  c2 c4 c |
  d4. d8 <d f>2 | \abr
  <c e>2 r8 c\p b c |
  d4. b8 c4 <c e> |
  <d f> <b d>8 q <c e>4 q |
  r q <c f> c | \abr
  r c <c d> q |
  <c e>1 |
  q \bar "||" |
  b2.( a4) | \abr
  g2\fermata r \bar "||" |
  a2.( g4) |
  fis2\fermata r \bar "||" |
  \tempo "Медленно"
  \key b \minor r r4 fis | \abr
  a( b) fis( g) |
  a2 r4 fis |
  a b fis g |
  a2 r4 fis | \abr
  d' d cis fis, |
  b2 r4 b\f |
  g' g fis b, |
  e2( d) | \abr
  d4( cis b) ais |
  b2 r4 a\p |
  c2 b4 a |
  g2 r4 d'\mf | \abr
  f2 e4 d |
  c c c( b~ |
  b2) bes4( a) |
  a2 g4( fis) | \abr
  e2 e |
  d a'( |
  d,) g |
  fis1\pp\fermata \bar "|."
  
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g2 a |
  g fis |
  e g4 e |
  g2. d4 |
  d2 r d4 d |
  e2 a4 a g2 r |
  e4. e8 e4 e |
  a2. a4 |
  g2 r d4 |
  e2 e4 g |
  g2 g4 a |
  g2 g4 a |
  g4. g8 g4 g |
  g2 gis |
  a4. a8 a4 a |
  g4. g8 g2 |
  fis2 fis4. fis8
  fis4 g a g |
  fis2 g |
  g g4 a |
  a( g2 fis4) |
  d1 |
  g2 a |
  g2. g4 |
  a2 as4 as |
  g2 g4 c |
  c4. c8 a4 a |
  a2 bes4 bes |
  a4. a8 g4 g |
  f2 r4 a |
  g2 g4 g |
  f2 f4 f |
  f4. f8 g2 |
  g r8 a a a |
  a4. a8 a4 a |
  a a8 a a4 a |
  r bes a a |
  r a as as |
  g1 |
  g |
  g4( fis e fis) |
  d2 r |
  fis2( e4 cis) |
  d2 r |
  r r4 d |
  fis2 d4( e) |
  fis2 r4 d |
  fis fis d e |
  fis2 r4 e |
  d fis fis fis |
  g2 r4 a |
  g b b b |
  ais2( b) |
  g( fis4) fis |
  fis2 r4 fis |
  fis2 fis4 fis |
  e2 r4 a |
  a2 gis4 gis |
  a a a2( |
  g) g |
  fis d |
  e4( d) cis2 |
  d2 c( |
  b) bes |
  a1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  d2 d |
  b b |
  e d4 c |
  b2. b4 |
  b2 r b4 b |
  c2 e4 d |
  d2 r |
  b4. b8 b4 b |
  a2. d4 |
  d2 r b4 |
  c2 c4 d |
  e2 e4 d |
  d2 d4 d |
  b4. b8 b4 c |
  d2 e |
  e4. e8 d4 d |
  d4. d8 cis2 |
  d2 d4. d8 |
  c?4 b a a |
  a2 g |
  d' e4 e |
  d2( c) |
  b1 |
  e2 f |
  e2. e4 |
  f2 f4 f |
  e2 e4 g |
  f4. c8 cis4 cis |
  d2 d4 e |
  f4. f8 e4 e |
  d2 r4 fis |
  g2 d4 e |
  f2 c4 c |
  <c d>4. q8 <b f'>2 |
  <c e>2 r8 e d e |
  f4. d8 e4 <e c> |
  <f d> <d b>8 q <c e>4 q |
  r q <c f> c |
  r c <c d> q |
  e1 |
  e |
  d2( c) |
  b2 r |
  d4( cis b bes) |
  a2 r |
  r2 r4 a |
  d2 b4( bes) |
  a2 r4 a |
  d d b bes |
  a2 r4 ais |
  b b cis cis |
  d2 r4 dis |
  e e fis fis |
  fis1 |
  e2( d4) cis |
  d2 r4 e |
  e2 dis4 dis |
  b2 r4 b |
  b2 b4 e |
  e e dis2( |
  e) e |
  d d |
  b a4( g) |
  fis2 fis( |
  g) e |
  fis1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  g2 fis |
  e d |
  c b4 a |
  g2. g4 |
  g2\fermata r 
  <g g'>4 q |
  q2 q4 <fis fis'> |
  <g g'>2\fermata r 
  g'4. g8 g4 g |
  fis2. fis4 |
  g2\fermata r  g4 |
  g2 g4 g |
  g2 g4 fis |
  g2 g4 fis |
  e4. e8 d4 c |
  b2 b' |
  a4. g8 fis4 fis |
  g4. fis8 e2 |
  d2 d4. d8 |
  d4 d d d |
  d( dis) e2 |
  b c4 c |
  d1 |
  <g g,> |
  \key c \major c2 c |
  c2. c4 |
  c2 c4 c |
  c2 bes4 bes |
  a4. a8 g4 g |
  f2 g4 g |
  a4. a8 a,4 a |
  d2 r4 c' |
  bes2 bes4 bes |
  a2 a4 a |
  as4. as8 g2 |
  <g c,> r8 <a a,> q q |
  q4. q8 q4 a |
  a a8 a a4 a |
  r g f f |
  r f f f |
  c'1 |
  c |
  <g g,> |
  q2\fermata r |
  <d d,>1 |
  q2\fermata r |
  \key b \minor r4 q\pp q2~ |
  q q |
  q4 q q2~ |
  q4 q q q |
  q q <cis cis,>2( |
  <b b,>4) b a a |
  g <g g'> <fis fis'>2( |
  <e e'>4) e' d d |
  cis2( d) |
  e( fis4) <fis fis,> |
  b, <b b,> <c c,>2( |
  a2) b4 b |
  <e e,> q <f f,>2( |
  <d d,>) <e e,>4 q |
  <a a,> <g g,> <fis fis,>2( |
  <e e,>4)( d) cis2 |
  d4( cis) b( a) |
  g2 a |
  <d, d'>1~ |
  q~ |
  q\fermata
}

lyricscore = \lyricmode {
  Ми -- лость ми -- ра, же -- ртву хва -- ле -- ни -- я.
  И со ду -- хом Тво -- им.
  И -- ма -- мы ко Го -- спо -- ду.
  До -- сто -- йно и пра -- ве -- дно есть,
  по -- кла -- ня -- ти -- ся От --
  цу и Сы -- ну и Свя -- то -- му Ду -- ху,
  Тро -- и -- це е -- ди -- но -- су -- щней и не -- ра -- зде -- льней.
  Свят, Свят, Свят Го -- сподь Са -- ва -- оф,
  и -- сполнь не -- бо и зе -- мля, сла -- вы, сла -- вы Тво -- е -- я,
  о -- са -- нна, о -- са -- нна, о -- са -- нна в_вы -- шних,
  Бла -- го -- сло -- вен гря -- дый во и -- мя Го -- спо -- дне, о сан -- на,
  о -- сан -- на в_вы -- шних.
  А -- минь. А -- минь.
  Те -- бе по -- ем, Те -- бе бла -- го -- сло -- вим, Те --
  бе бла -- го -- да -- рим, Те -- бе бла -- го -- да -- рим __ Го -- спо -- ди.
  И мо -- ли -- мти -- ся, и мо -- ли -- мти -- ся, и мо -- ли -- мти -- ся
  Бо -- же наш, Бо -- же -- наш.
}

lyricbass = \lyricmode {
  \repeat unfold 117 \skip 1
  Те -- бе __ по -- ем, Те -- бе __ бла -- го -- сло -- вим, Те -- бе __
  бла -- го -- да -- рим, Те -- бе
  \repeat unfold 7 \skip 1
  и мо -- ли -- мти -- ся, и мо -- ли -- мти -- ся
  \repeat unfold 7 \skip 1
  наш. __
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
      
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
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
