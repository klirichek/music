\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№6 «Милость мира»… и «Тебе поем»…"
  composer = "П. Чесноков"
  %opus = "оп. 42"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

melon = { \set melismaBusyProperties = #'() }

meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \allowBreak }
cbar = { \cadenzaOff \accidentalStyle default \bar "|" \cadenzaOn }
cber = { \cadenzaOff \accidentalStyle default \bar "!" \cadenzaOn }

stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
natt = { \accidentalStyle forget }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathess = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
%breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }
%breathelow = { \once \override BreathingSign.text = \markup { \line { \translate #'(0 . -7) \musicglyph #"scripts.upbow"  } } \breathe }
breathes = { \tag #'V1 \tag #'V3  { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } } \tag #'V2 \tag #'V4 { \once \override BreathingSign.text = \markup { \line { \translate #'(0 . -7) \musicglyph #"scripts.upbow"  } } } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% mark with numbers in squares
marksnumbers = {  \set Score.rehearsalMarkFormatter = #format-mark-numbers }


% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }


%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key d \major
  \time 3/4
  \autoBeamOff
}

milost_soprano = \relative c'' {
  \global
  \dynamicUp
  \tempo "Молитвенно." 4=66
  d2\mf cis8[( b]) |
  d2 b4 |
  \breathes cis cis d | \abr
  
  e4.( d8) cis[( b]) |
  ais4\>~ 8\! r8\fermata d8\< e |
  fis4\! d e |
  fis2~\> 8\! r\fermata | \abr
  
  fis4. b,8 e d |
  cis[( e] d4) cis8[( b]) |
  ais4\>~ 8\! r8\fermata fis4\mf |
  d'2( cis4) | \abr
  
  b2 \breathes cis8[( d]) |
  e4 e d |
  cis2 \breathes d8\< e |
  fis4.\! 8 e g | \abr
  
  % page 26
  
  fis8[( e d cis]) \breathes b4 |
  e4. d8 cis\> b |
  a2\! 4 |
  d4\p\> a\! r4 | \abr
  
  \time 4/4
  b4.\p 8 8 8 8 8 |
  \time 3/4
  a4 a r |
  fis4\p 4 4 |
  4\> 4~8\! r \bar "||" | \abr
  
  \tempo "Немного скорее. Торжественно" 4=92
  d'2\f e4 |
  fis2 \breathes d4 |
  e e8[( d]) cis4 |
  d4~8 r8 d[( e]) |
  fis2.~ | \abr
  
  2( e8[ d])\> |
  cis4.\mf b8 ais b |
  cis4~8 r r4 |
  r r d |
  g2( \after 8. \! fis4\>) | \abr
  
  e4.\mf d8 cis d |
  e4~8 r a,4\f |
  fis'2 d4 |
  e4.( d8\> cis[ b])\! |
  ais2~8 r8 | \abr
  
  %page 27
  
  fis4\p d'8[( cis]) b4 |
  ais2. \breathes |
  b4\< fis'8[( e]) d4\! |
  cis2\< \breathes cis4\! |
  b4( cis8[ b]) cis[( d]) | \abr
  
  e2 \breathes 4 |
  e4\< d8[( e]) cis[( d])\! |
  e4 e \breathes d8[(\f e]) |
  fis2 d4 |
  e4 e \breathes e\f | \abr
  
  fis2 d4 |
  e e \breathes e\f |
  fis2.( |
  d |
  e2) e4 \breathes |
  e4.( d8 e4 | \abr
  
  \after 2 \! d2.\>) |
  d2~8 r8 \bar "||"
  
  \time 4/4 \tempo "Покойно. Медленно." 4=44
  r2 fis,\p |
  2~4 r4 \bar "||" |
  fis1\p |
  2~8 r\fermata r4 | \abr
  
  R1*7 |
  r2 r4 \breathes fis\mf |
  b4\<( d2\!) cis4 |
  b2\> 4\! \breathes b4\< | \abr
  
  e4.\! 8 4 d8[( e]) |
  fis4.\> d8 d4\! d\mf |
  cis4. b8 ais4 4 | \abr
  
  b4.\> 8 4~8\! r |
  a2\p g4 g |
  fis1 \breathes |
  1~\p |
  4. b,8 4~8 r \bar "|."
}

milost_alt = \relative c' {
  \global
  \dynamicDown
  d4( fis) g |
  fis2 g4 |
  g g fis |
  
  g2 g4 |
  fis4~8 r8 fis a |
  a4 g b |
  a2~8 r8 |
  
  b4. b8 e, fis |
  g4( fis) g |
  fis4~8 r8 fis4 |
  d8[( e fis g] a4) |
  
  g2 a4 |
  g4 g a |
  a2 a8 a |
  a4( b8) b b b |
  
  %26
  b2 fis4 |
  e8[( fis] g) g g g |
  fis[( e g fis]) e4 |
  d4 d r4 |
  
  g4. 8 8 fis e e |
  fis4 fis r |
  e4 4 4 |
  d d~8 r8 |
  
  fis4( a) a |
  a2 fis4 |
  e8[( fis]) g4 g |
  fis4~ 8 r8 r4 |
  r r b4 |
  
  ais2( gis4) |
  ais4. fis8 8 8 |
  fis4~8 r8 fis8[( g?]) |
  a?2.( |
  b4 cis d) |
  
  a4. 8 8 8 |
  4~8 r8 a4 |
  a2 fis4 |
  e8[( fis] g2) |
  fis2~8 r8 |
  
  %27
  d2. |
  e2 fis4 |
  fis2.( |
  g2.) \breathes |
  fis2.(
  
  e4) fis8[( e]) fis[( g]) |
  a2.~ |
  4( b8[ a]) b[( cis]) |
  d4( a) fis |
  e8[( fis]) g4 a |
  
  a2 fis4 |
  e8[( fis]) g4 a |
  a2.( |
  fis |
  e4 fis) g |
  a2( g4 |
  
  fis2.) |
  fis2~8 r8 |
  r2 d2 |
  e2~4 r4 |
  e2( d) |
  cis2~8 r8 \dynamicUp fis4^\markup\italic"проникновенно" |
  
  b,4(\< d2)\> cis4\! |
  d2~4 \breathes b4\< |
  e4.\! d8 cis4 b | \abr
  
  %28
   d2~\> 4\! \breathes b4 |
  d4\< cis8[( d]) e4 e8[( d])\! |
  \after 2. \! fis1\> \breathes | \abr
  
  \dynamicDown
  fis4\mf( e8[ d] cis4 e |
  fis4.) fis8 fis4~8 r8 |
  r4 fis4\p e8[( fis]) g4 |
  fis( g8[ e]) fis4 fis |
  
  e8[( fis]) g4 g g |
  fis4. 8 4 r |
  r g\p\< fis8\! fis e e |
  
  d4. 8 4~8 r |
  r4 e2 4 |
  r d2 4 |
  b2\< cis\! |
  cis4.\> b8\! 4~8 r
}

milost_tenor = \relative c' {
  \global
  \dynamicUp
  b2 4 |
  2 4 |
  4 4 4 |
  
  2 b8[( cis]) |
  cis4~8 r8\fermata b8 cis |
  d4 4 4 |
  2~8 r8\fermata |
  
  4. b8 8 8 |
  2 b8[( cis]) |
  4~8 r8\fermata fis,4 |
  b2( a4) |
  
  b2 \breathes a4 |
  b4 b a |
  a2 \breathes b8 cis |
  d4. 8 8 cis |
  
  
  %26
  d8[( g fis e]) \breathes d4 |
  b4. b8 cis d |
  cis2 4 |
  d4 d r |
  
  b4. 8 8 8 8 8 |
  a4 a r4 |
  ais4 4 4 |
  b4 4~8 r8 |
  
  a4( b) cis |
  fis2 d4 |
  b4 b e |
  a,4~8 r8 d8[( e]) |
  fis2.~ |
  
  2. |
  fis4( e8) d cis b |
  ais4~8 r8 r4 |
  r r fis'4 |
  e2( d4) |
  
  cis4 d e8 d |
  cis4~8 r8 a4 |
  fis'2 d4 |
  b2( cis4) |
  cis2~8 r8
  
  %27
  R2. |
  fis,4 e'8[( d]) cis4 |
  b2. \breathes |
  b4 g'8[( fis]) e4 |
  d( cis) b |
  
  b2 \breathes b4 |
  cis b a8[( b]) |
  cis4 g' \breathes g |
  fis2 d4 |
  b b \breathes cis\f |
  
  fis2 d4 |
  b b \breathes cis\f |
  fis2.( |
  d |
  b2) b4 |
  cis2( b4 |
  
  a2.) |
  2~8 r |
  r2 a\p |
  ais2~4 r |
  ais2\p( gis) |
  ais2~8 r\fermata r4 |
  
  r4 fis4\p g~8 r |
  r4 fis fis r |
  r b g~8 r |
  
  %28
  r8 fis8 8 8 4 r |
  r fis g8[( d' cis b] |
  a4 d4~) 8 \breathes d cis cis |
  
  b2.( cis8[ b]) |
  <ais d>4. <ais cis>8 4~8 r |
  r4 d\p b b8[( cis]) |
  d4( e8[ cis]) d4 \breathes d |
  
  b d d8[( cis]) b[( cis]) |
  d4( a8) 8 4 r |
  r b8\p[( cis]) d8 d cis cis |
  
  b4.\> 8 4~8\! r |
  r4 b2 4 |
  r b2 4 |
  <gis e>2\p\< <ais e>\! |
  <fis e>4.\> <fis d>8\! 4~8 r
  
}

milost_bass = \relative c {
  \global
  \dynamicDown
  b4( d) e |
  b'( a) g8[( fis]) |
  e4 4 d |
  
  cis( d) e |
  fis4~8 r8 b a |
  d4 b g |
  d2~8 r8 |
  
  b'4. a8 g fis |
  e[( cis] d4) e |
  fis4~8 r8 fis4 |
  b,8[( cis d e] fis4) |
  
  g8[( a] g4) fis |
  e e fis |
  a2 a8 a |
  d8[( cis] b8) a g e |
  
  %26
  b'2 b8[( a]) |
  g[( fis] e) e e e |
  a2 g4 |
  fis fis r |
  
  <d g,>4. 8 8 8 8 8 |
  d4 4 r |
  cis8[( d]) cis4 <cis fis,> |
  b4 4~8 r |
  
  d4( fis) a |
  d4.( cis8) b[( a]) |
  g[( fis]) e4 a |
  d,4~8 r r4 |
  r r d' |
  
  cis2( b4) |
  fis4. 8 8 8 |
  4~8 r fis[( g?]) |
  a?2.~ |
  2. |
  
  a4 b cis8 b |
  a4~8 r a4 |
  d4.( cis8) b[( a]) |
  g[( fis] e2) |
  fis2~8 r8 |
  
  %27
  b,2. |
  cis2 e4 |
  d2.( |
  e) \breathes |
  fis2.( |
  
  g4 ) fis e |
  a2.~ |
  2 4 |
  d4.( cis8) b[( a]) |
  g[( fis]) e4 a |
  
  d4.( cis8) b[( a]) |
  g8[( fis]) e4 a |
  d2( cis4 |
  b2 a4 |
  g fis) e |
  a2.( |
  
  d,2.) |
  2~8 r |
  r2 d |
  cis2~4 r |
  cis2( b) |
  <cis fis,>2~8 r r4 |
  
  r4 b e~8 r |
  r4 b b r |
  r g' e~8 r |
  
  %28
  r b8 8 8 4 r |
  r b a2( |
  d fis8) fis a a |
  
  g1 |
  fis4. 8 4~8 r |
  r4b8[( a]) g[( fis]) e4 |
  b'2 4 8[( a]) |
  
  g[( fis]) e4 a a |
  d,4. 8 4 r |
  r e4 fis8 8 8 8 |
  
  g4. 8 4~8 r |
  r4 cis,2 4 |
  r fis2 4 |
  fis,2 2 |
  b4. 8 4~8 r
}

milost_lyric_soprano   = \lyricmode {
  \repeat unfold 68 _
  ис -- полнь
  не -- бо и зем -- ля ис -- полнь
  сла -- вы Тво -- е -- я,
  _ _ _ _ _ % осанна в вышних
  бла -- го -- сло -- вен, бла -- го -- сло -- вен гря -- дый, гря --
  дый во и -- мя Гос -- под -- не,
  \repeat unfold 19 _
  и мо -- лим Ти ся, и 
  мо -- лим Ти ся, Бо -- же наш, и мо -- лим Ти ся
  Бо -- же наш, мо -- лим Ти ся, Бо -- же наш.
%ssss
}

milost_lyric_alt   = \lyricmode {
  Ми -- лость ми -- ра, жерт -- ву хва --
  ле -- ни -- я. И со ду -- хом тво -- им.
  И -- ма -- мы ко Го -- спо -- ду. До -- стой --
  но и пра -- вед -- но есть по -- кла -- ня -- ти -- ся От
  
  цу и Сы -- ну и Свя -- то -- му Ду -- ху,
  Тро -- и -- це е -- ди -- но -- сущ -- ней и не -- раз -- дель -- ней.
  Свят, свят, свят Гос -- подь Са -- ва -- оθ,
  ис -- 
  полнь не -- бо и зе -- мля, ис -- полнь __
  сла -- вы Тво -- е -- я, о -- сан -- на в_вы -- шних,
  
  бла -- го -- сло -- вен, бла --
  го -- сло -- вен, о -- сан -- на в_вы -- шних, о --
  сан -- на в_вы -- шних, о -- сан -- на в_вы -- 
  шних. А -- минь. А -- минь. Те --
  бе по -- ем, Те -- бе бла -- го -- сло --
  
  вим, Те -- бе бла -- го -- да -- рим, 
  Го -- спо -- ди, и мо -- лим Ти ся, и
  мо -- лим Ти ся, Бо -- же наш, и мо -- лим Ти ся
  Бо -- же наш, Бо -- же, Бо -- же, Бо -- же, Бо -- же наш.
%aaaa
}

milost_lyric_tenor   = \lyricmode {
  \repeat unfold 68 _
  ис -- полнь
  _ _ _ _ _ ис -- полнь
  сла -- вы _ _ _
  _ _ _ _ _ % осанна в вышних
  бла -- го -- сло -- вен, бла -- го -- сло -- вен гря -- дый, 
  во и -- мя Гос -- под -- не,
  \repeat unfold 68 _
  %tttttt
}

milost_lyric_bass   = \lyricmode {
  \repeat unfold 68 _
  ис --
  полнь _ _ _ _ _
  ис -- полнь
  _ _ _ _ _ _ _ _ _ _
  бла -- го -- сло -- вен, бла --
  го -- сло -- вен _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  Те -- бе по -- ем, Те -- бе
  бла -- го -- сло -- вим, Те -- бе бла -- го -- да --
  рим, Го -- спо -- ди, 
  \repeat unfold  30 _
%bbbb
}

  \paper {
    top-margin = 15
    left-margin = 20
    right-margin = 10
    bottom-margin = 35
    indent = 10
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }


\bookpart {

  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \milost_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \milost_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \milost_lyric_soprano
      \new Lyrics \lyricsto "alto" \milost_lyric_alt
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \milost_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \milost_bass }
      >>
      \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \milost_lyric_tenor
      \new Lyrics \lyricsto "bass" \milost_lyric_bass
        >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
        \remove Caesura_engraver
      }
      %Metronome_mark_engraver
      \context {
        \Voice
        \consists Caesura_engraver
      }
    }
    \midi {
      \tempo 4=66
    }
  }

}

   