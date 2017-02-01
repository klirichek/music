\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Милость мира"
  subtitle = "№11"
  composer = "свящ. М. Виноградов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
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
  
  \tempo "Скоро" e2-> c |
  f-> e |
  b c4 c |
  c2 b |
  c r\fermata | \bar "||" \abr
  r2 g4. g8 |
  a2 a4. a8 |
  g2 r\fermata \bar "||"
  g4. a8 b4 c | \abr
  d2.\> c4\! b1 |
  r2\fermata r \tempo "Умеренно"|
  r4 g4\p a g8 g | \abr
  c4 b8 a g4 c8 d |
  e4.-- d8 cis4 a | \abr
  
  f'4\> e d\! c? |
  b c e4. d8 |
  d4.( c8) c4 r | \abr
  b8 b b b c4 b |
  d(\> c)\! b2 |
  c e4 d | \abr
  d2( b |
  a b) |
  a\p r\fermata \bar "||"
  g'->\f g-> fis2.\> fis4\! |
  e2 e4 e | \abr
  d2. g,4 |
  f'?2 e4 d |
  c a\> g2\! | \abr
  g4( e'2 d4 |
  c g'2) f4 | \break
  e2 d |
  e r4 g, |
  <b d>2 b | \abr
  <c e>-> <b d>4 r |
  R1*2 |
  a2 b4 c | \abr
  d2 c | \break
  b c4(\cresc d) |
  e2 d4 d |
  c2\< d4 e\! | \abr
  f1 |
  e |
  d( |
  <d g>) |
  <c e>2 r\fermata \bar "||"
  g1\p |
  a2 r\fermata \bar "||" \abr
  a1 |
  g2 r\fermata \bar "||" \break
  \tempo "Медленно" \cadenzaOn g4 g2. \bar ""|
  g4 a2. \bar "" a4 c2. \bar "" a4\> a\! a \bar "" \abr
  g2.\! \breathe \bar "" g4 c2.\> \bar "" b4\!  a g\! g2(\< f4) \bar "" a2(\! g4) f \bar "" \abr
  e1\pp \bar "|" r2 r gis4( a) b2 a4 gis gis \bar "" c2(\> b4 a2)\! \bar "" \abr
  gis!2 a1\fermata\p \bar "" r4 a bes2-> a4 \nat g f1 \bar "" <f a>2-> <f g>2 <e g>1\fermata \cadenzaOff \bar "|."  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g2-> g |
  a-> g |
  g g4 a |
  g2 f e r |
  r2 e4.\p e8 |
  f2 f4. f8 |
  e2 r |
  g4. g8 g4 g |
  b2. c4 g1 |
  r2 r |
  r4 e\p f e8 e |
  a4 g8 f e4 g8 g |
  g4.-- f8 a4 a |
  a4 a a a |
  g g g4. g8 |
  g2 g4 r |
  gis8\mf gis gis gis a4 gis |
  b( a) gis2 |
  a gis4 gis |
  a2( g |
  fis g) |
  fis r |
  b2 b |
  b2. a4 |
  g2 g4 g |
  g2. g4  |
  b2 c4 g |
  e fis g2 |
  e4( g2. |
  g2 a4) a |
  g2 g |
  g r4 g |
  g2 g |
  fis2-> g4 r |
  R1*2 |
  e2\p e4 e |
  e2 e |
  e e |
  e gis4 gis |
  a2 a4 a |
  a\f( d2 g,4) |
  g1 |
  a( |
  g) |
  g2 r
  e1 |
  f2 r
  f1 |
  d2 r|
  e4\p e2. e4 f2. f4 a2. f4 f f
  e2. \breathe e4 e2. e4 e e e( cis d) f2( e4) d
  c1 r2 r e2\p e4( gis) a e e e2. e2
  e4( d) c1 r4 c4 cis2 cis4 e d1 d2 d \nat c1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  c2 c |
  c c |
  f e4 d |
  e2 d |
  c r | \abr
  r2 c4. c8 |
  c2 c4. c8 |
  c2 r |
  b4. c8 d4 e | \abr
  f2. e4 d1 |
  r2 r |
  r4 c b c8 c | \abr
  a4 b8 b c4 e8 d | 
  cis4. d8 e4 cis | \abr
  d cis d d |
  d e g4. f8 |
  f4.( e8) e4 r |
  e8 e e e e4 e |
  e2 e |
  e e4 e |
  e1( |
  a,4 d2 cis4) |
  d2 r
  d2 e |
  dis2. dis4 |
  e2 c4 c |
  b2. b4 |
  d2 c4 b |
  c c b2 |
  c2.( b4 |
  e2) d |
  c b |
  c r |
  R1
  r2 r4 d4 |
  e2 d2 |
  c b |
  a gis4 a |
  b2 a |
  gis2 a4( b) |
  c2 b4 b |
  a2 b4 c |
  d1( |
  c)
  f1~ |
  f1 |
  e2 r |
  c1\p |
  c2 r
  c1 |
  b2 r|
  g4 c2. bes4 a2. c4 c2. c4 c c
  c2. \breathe c4 e2. d4 c bes! a2. b2. b4
  c1 r2 r b4( c) d2 c4 b b e2( d4 c2)
  b2 a1 r4 a4 g2 a4 bes8[( a]) a1 b2 b c1
}


bassvoice = \relative c {
  \global
  \dynamicUp
  c2 e |
  f c |
  d e4 f |
  g2 g, |
  c r\fermata
  r2 c4.\p c8 |
  f2 f,4. a8 |
  c2 r\fermata |
  g'4. g8 g4 g |
  g2. g4 g1 |
  r2\fermata r4
  g,\p c2 c4 c |
  c c8 c c4 c8 b |
  a4. a8 a4 a |
  d e f fis |
  g g g( a8) b |
  c2 c,4 r |
  e8\mf e e e e4 e |
  e2 e |
  a, b4 b |
  c2( cis |
  d1 )
  d2\p r\fermata |
  g\f e |
  b'2. <b b,>4 |
  <c c,>2 c,4 e |
  g2. g4 |
  g2 g4 g |
  <g g,> q q2 |
  c,2( e4 g |
  c2) f, |
  g g, |
  c r |
  R1
  r2 r4 g' |
  c2 <g b> |
  a <gis e> |
  c,\p b4 a |
  gis2 a4( c) |
  e2 e |
  e e4 e |
  a2 a4 a |
  a2(\f b |
  c g4) e |
  <f c'>1( |
  <g b>) |
  <c c,>2 r\fermata |
  c,1 f2 r\fermata |
  f1 |
  g2 r\fermata |
  <c, c,>4\p q2. q4 <f f,>2. q4 q2. q4 f, a
  c2. \breathe c4 a2. b4 c cis d2. g,2. g4
  \nat c1\pp
  <c c,>4( <d d,>) <e e,>1\p~ q2 q4 q q q2.~ q2
  q2 <f f,>1\p\fermata r4 f4 e2 e4 cis4 d1 g,2 g \nat c1\fermata
}

lyricscore = \lyricmode {
  Ми -- лость ми -- ра, же -- ртву хва -- ле -- ни -- я.
  И со ду -- хом тво -- им.
  И -- ма -- мы ко Го -- спо -- ду.
  До -- сто -- йно и пра -- ве -- дно есть
  по -- кла -- ня -- ти -- ся От -- цу, и Сы -- ну,
  и Свя -- то -- му Ду -- ху.
  Тро -- и -- це е -- ди -- но -- су -- щней и не -- ра -- зде -- льней.
  Свят, свят, свят Го -- сподь Са -- ва -- оθ, 
  и -- сполнь не -- бо и зе -- мля
  сла -- вы Тво -- е -- я.
  О -- са -- нна
  в_вы -- шних, бла -- го -- сло -- вен гря -- дый во и -- мя Го -- спо -- дне,
  о -- са -- нна в_вы -- шних.
  А -- минь. А -- минь.
  Те -- бе по -- ем, Те -- бе бла -- го -- сло -- вим,
  Те -- бе бла -- го -- да -- рим, Го -- спо -- ди, 
  и мо -- ли -- мти -- ся, Бо -- же наш, и мо -- ли -- мти -- ся, Бо -- же наш.
}

lyricbass = \lyricmode {
  \repeat unfold 23 \skip 1
  До -- сто -- йно и 
  \repeat unfold 48 \skip 1
  сла -- вы
  \repeat unfold 3 \skip 1
  О -- са -- нна
  в_вы -- шних.
  \repeat unfold 12 \skip 1
  о -- са -- нна
  \repeat unfold 25 \skip 1
  И мо_-
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
      
      \new Lyrics = "bass"

      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
      
      \context Lyrics = "bass" {
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
      \tempo 2=90
    }
  }
}
