\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Agnus Dei"
  subtitle = "(Requiem, №5)"
  composer = "Gabriel Fauré"
  arranger = "ed. by Pawel Jura"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-1.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
%  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key f \major
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \autoBeamOff
  \tempo "Andante"
  R2.*18
  g4\f fis r |
  dis\p e \breathe f |
  e\< a( c) | \abr
  
  % page 2
  e4.\f r8 g,4 |
  g fis r | \break
  dis\p e f |
  f(\< a c) |
  d2\f \breathe es4 |
  es( d) r |
  d c a |
  f\> d e\! | \abr
  
  f4. r8 r4 |
  R2.*14
  \break c'2.\p~ |
  2 c4 | \abr 
  
  c2\p c4 |
  ces es ces |
  bes2 bes4 |
  a cis a |
  gis2 gis4 |
  gis( fis) e |
  \after 2. \! \after 4.\> es2.\< \abr
  
  %page 3
  c'4 c c |
  c2 c4 |
  ces( es) ces |
  bes2 bes4 |
  a( cis) a |
  as2 as4 |
  as( f) g | \abr
  
  as2 bes4 |
  c2 c4 |
  b2 c4 |
  des2 des4 |
  c2 cis4 |
  d2\f d4 |
  c2. |
  bes | \abr
  
  a2. |
  R2.*5 |
  \bar "||" \time 4/4 \tempo "Molto largo" R1 |
  a4\pp a a4. a8 |
  a2 a | \abr
  
  r2 a4 a |
  a a c4. c8 |
  c2. r4 | 
  
  r4\< d d d |
  f4.\f f8 f2 |
  r4 c des2\dim |
  des4. r8 r4 gis,4 |
  a2 a4 r |
  r a\pp a a | \abr
  
  a1 |
  \bar "||" \key d\major \time 3/4 \tempo "Andante" a2 r4 |
  
  R2.*6 \bar "|."
  
  
}


altvoice = \relative c' {
  \global
  \autoBeamOff
  R2.*18
  es4 es r |
  a, bes \breathe b |
  a e'2 | \abr
  
  e4. r8 es4 |
  es es r |
  a, bes b |
  a( f' g) |
  fis2 \breathe g4 |
  f2 r4 |
  e4 g c, |
  c c c \abr
  
  c4. r8 r4 |
  R2.*16 \abr
  
  as'2\pp g4 |
  ges2 ges4 |
  ges ges f |
  e2 e4 |
  e e es |
  es2 des4 |
  des des des | \abr
  
  c as'4 as |
  as2 g4 |
  ges2 ges4 |
  ges2 f4 |
  e2 e4 |
  e2 es4 |
  es( f) g | \abr
  
  as2 as4 |
  as2 g4 |
  as2 as4 |
  as2 g4 |
  as2 as4 |
  as2 a4 |
  g2. |
  f | \abr
  
  e |
  R2.*5
  \time 4/4 R1 |
  f4 f f4. f8 f2 f | \abr
  
  r2 a4 a |
  a a a4. a8 |
  a2. r4 |
  r bes bes bes |
  c4. c8 c2 |
  r4 f,4 f2 |
  f4. r8 r4 gis |
  a2 a4 r |
  r d, d e | \abr
  
  f2( e) |
  \key d\major \time 3/4 d2 r4 |
  
  R2.*6 \bar "|."
  
  
  
}


tenorvoice = \relative c' {
  \global
  \autoBeamOff
  R2.*6 \dynamicUp
  r4^\markup\italic"(tutti)" c4\p c | \abr
  c d e |
  e f e8[( d]) |
  c4( bes) a \breathe |
  a2( g4) |
  f4. r8-\markup\italic"poco cresc." c'4 |
  c d e \breathe |
  e( f) e8[( d]) | \abr
  
  c4( bes) a |
  a\>( c) b |
  a4.\p r8 r4 | \dynamicDown
  R2. |
  bes4\f a r |
  fis\p g \breathe gis |
  a\< c( e) | \abr
  
  e4.\f r8 bes4 |
  bes a r |
  fis\p g gis |
  a(\< c es) |
  d2\f \breathe es4 |
  es( d) r |
  d c a |
  a\> a bes\! | \abr
  
  a4. r8 r4 |
  R2. | \dynamicUp
  r4 c\p c |
  c d e |
  e f c |
  c( d) c8[( bes]) |
  c4 a d\f |
  f->( e) \breathe d\p | \abr
  
  d\> c a |
  c\!( e) d |
  c2. |
  b2\p b4 |
  c2 c4 |
  b2 b4 |
  c2. |
  R2.*2 | \abr \dynamicDown
  
  <c es>2\pp q4 |
  <ces es>2 q4 |
  <bes des> q q |
  <a cis>2 q4 |
  <gis b> q b |
  b( a) as |
  g\< as\> bes\! | \abr
  
  c <c es> q |
  q2 q4 |
  <ces es>2 q4 |
  <bes des>2 q4 |
  <a cis>2 q4 |
  <as ces>2 as4 |
  <as es'>2 <bes des>4 | \abr
  
  c2 bes4 |
  c2 c4 |
  b2 c4 |
  des2 des4 |
  c2 cis4 |
  d2\f d4 |
  e2. |
  f2. | \abr
  
  cis2.
  R2.*5
  \time 4/4 R1 |
  <a d>4\pp q q4. q8 |
  q2 q | \abr
  
  r2 <c e>4 q |
  q q <c f>4. q8 |
  q2. r4 |
  r <d f>\< q q |
  <c f>4.\f q8 q2 |
  r4 <as c> <as des>2 \dim |
  q4. r8 r4 cis |
  cis2 cis4 r |
  r <f, d'>4\pp q <g d'> | \abr
  
 %  << \new Voice { d'2( cis)}  \voiceThree a1 >>
   
%  <d' a~>2( <cis a>2) |
<< \new Voice { \voiceOne d'2( cis) } \voiceTwo a1 >>
\voiceOne
   
  \key d\major \time 3/4 <a d>2 r4 |
  
  R2.*6 \bar "|."
  
}


bassvoice = \relative c {
  \global
  \autoBeamOff
  R2.*18
  c4 c r |
  c c \breathe d |
  e e( a) | \abr
  
  c4. r8 c,4 |
  c c r |
  c c d |
  es2( c'4) |
  c2 \breathe bes4 |
  <f bes>2 r4 |
  <e a>4 q e |
  f f g | \abr
  f4. r8 r4 |
  R2.*16 |
  
  <as, as'>2 <c g'>4 |
  <es ges>2 q4 |
  <ges, ges'>4 q <bes f'> |
  <cis e>2 q4 |
  <e, e'> q <as es'> |
  ces2 des4 |
  es <es f> <es g> | \abr
  
  <as, es'> <as as'> q |
  q2 <c g'>4 |
  <es ges>2 q4 |
  <ges, ges'>2 <bes f'>4 |
  <cis e>2 q4 |
  <e, e'~>4( <gis e'>) <b es>4 |
  <c es>2 <es bes'>4 | \abr
  
  <f as>2 q4 |
  q2 <e g>4 |
  <f as>2 q4 |
  q2 <e g>4 |
  <f as>2 q4 |
  q2 <f a>4 |
  <e a>2. |
  <d a'> | \abr
  
  a'2.
  R2.*5
  \time 4/4 R1 |
  <d, f>4 q q4. q8 |
  q2 q | \abr
  
  r2 <c a'>4 q |
  q q q4. q8 |
  q2. r4 |
  r <f bes> q q |
  <f c'>4. q8 q2 |
  r4 <as c>4 <as des>2 |
  q4. r8 r4 as4 |
  g2 g4 r |
  r f f <d g> | \abr
  
  << \new Voice { \voiceTwo d2( g) } \voiceOne a1 >>
\voiceTwo
 % <d a'~>2( <g a>2) |
 % << \new Voice { d2( g)}  a1 >>
  
  \key d\major \time 3/4 <fis a>2 r4 |
  
  R2.*6 \bar "|."
  
}

lyricscores = \lyricmode {
  Ag -- nus De -- i, Ag -- nus De --
  i, qui tol -- lis pec -- ca -- ta mun -- di, do -- na, do -- na e -- is re -- qui --
  em.
  Lux æ --
  
  ter -- na lu -- ce -- at e -- is, lu -- ce -- at e -- is, Do -- mi -- ne,
  
}

lyricscorea = \lyricmode {
  
  \repeat unfold 25 \skip 1 
  
  Lux æ --
  
  ter -- na lu -- ce -- at e -- is, lu -- ce -- at e -- is, Do -- mi -- ne,
  cum sanc -- tis tu -- is in æ -- ter -- num qui -- a pi -- us, pi -- us
  
  es. Cum sanc -- tis tu -- is in æ -- ter -- num, qui -- a pi -- us
  es. Re -- qui -- em æ -- ter -- nam
  
  do -- na e -- is, Do -- mi -- ne, et lux per -- pe -- tu -- a lu -- ce -- at, lu -- ce -- at, lu -- ce -- at
  e -- is.
  
}

lyricscoret = \lyricmode {
 
 Ag -- nus
 De -- i, qui tol -- lis pec -- ca -- ta mun -- di, do -- na e -- is, do -- na
 
 e -- is re -- qui -- em.  
 
 Ag -- nus De -- i, Ag -- nus De --
  i, qui tol -- lis pec -- ca -- ta mun -- di, do -- na, do -- na e -- is re -- qui --
  em. Ag -- nus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, do -- na, do --
  na e -- is re -- qui -- em, sem -- pi -- ter -- nam re -- qui -- em.
  
  
  
  
  Lux æ --
  
  ter -- na lu -- ce -- at e -- is, lu -- ce -- at e -- is, Do -- mi -- ne,
  
  cum sanc -- tis tu -- is in æ -- ter -- num qui -- a pi -- us, pi -- us
  
  es. Cum sanc -- tis tu -- is in æ -- ter -- num, qui -- a pi -- us
  es. Re -- qui -- em æ -- ter -- nam
  
  do -- na e -- is, Do -- mi -- ne, et lux per -- pe -- tu -- a lu -- ce -- at, lu -- ce -- at, lu -- ce -- at
  e -- is.
}

lyricscoreb = \lyricmode {
  
}
  \paper {
    top-margin = 15
    left-margin = 20
    right-margin = 10
    bottom-margin = 35
    indent = 20
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
%                \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
        \new Voice  = "alto" { \voiceTwo \dynamicDown \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
       \new Lyrics \lyricsto "alto" { \lyricscorea }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \dynamicDown \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
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
                \RemoveAllEmptyStaves
                \accidentalStyle modern-voice-cautionary
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}


