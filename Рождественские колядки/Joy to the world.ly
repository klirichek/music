\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "Joy to the world"
  poet = "Isaac Watts (1719)"
  composer = "Lowell Mason (1848)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator
}


abr = { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key d \major
  \time 4/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
%  \override DynamicText.X-offset = #-2.5
  \override MultiMeasureRest.expand-limit = #2
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4
  
  
  % soprano 1
  \mark \default
  d4->_\f cis8.-> b16-> a4.-> g8 |
  fis4 e d4. a'8 |
  b4.\< b8 cis4. cis8\! | \abr
  
  d2. r8 d |
  d[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8)\! d' |
  d[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8)\! fis | \abr
  
  fis8 fis\< fis fis16[( g]) a4.\! g16[( fis]) |
  e8\< e e e16[( fis])\! g4. fis16[( e]) |
  d8\<( d'4) b8 a8.[(\! g16] fis8) g | \abr
  
  fis4 e d2 |
  R1*3
  
  % soprano 2
  \mark \default
  a'4_\mp_\< a8. d16 cis4. e8 |
  a,8(\! d4) cis8 d4. r8 | \abr
  
  R1*2 | r2 r4 r8 d |
  d8[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8)\! fis | \abr
  
  a4.\> g16[( fis])\! e8 e e e16[( fis]) |
  g4.\> fis16[( e]) d8\! d d d |
  d'4\< d d8( cis16[ b]\! a8) g | \abr
  fis4 e d2 |
  R1*4
  \abr
  
  % soprano 3
  \break
  \change Staff = tenorstuff
  \mark \default
  d4_\f-> d8.-> d16-> d4.-> g8 |
  fis4 e d4. fis8 |
  g4.\< g8 e4. e8\! |
  d2. r8 fis | \abr
  
  fis([\> a])\! g([\> fis])\! fis8.([\> e16] d8)\! fis |
  fis([\> a)]\! g[(\> fis)]\! fis8.[(\> e16] d8)\! r |
  r4. a8 a8 d a a | \abr
  
  a4 r8 a8 a e' a, a |
  a\<( d4) e8 fis8.[( g16]\! a8) g |
  fis4 e d2
  

  R1*12
   \break
  \change Staff = upstaff 
  %soprano 4
  
  \mark \default
  d'4_\ff_\< cis8. b16 a4. g8 |
  fis4 e\! d4. a'8_\< |
  b4. b8 cis4. cis8 |
  d2.\! r8 d | \abr
  
  d4 d d4. d8 |
  d4 d d8.[( e16] fis8) fis |
  <d fis> q q q16[( <g e>]) <a fis>4. <g e>16[( <fis d>]) | \abr
  
  <d e>8 q q <d e>16[( <d fis>]) <e g>4. fis16[( e]) |
  d4. <cis e>8 <d fis>8.[( <e g>16]) <fis a>8[( <e g>]) |
  <d fis>4 <cis e> <a d>2
  
  R1*6
  \bar "|."
  
  
}


altvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  R1*4
  
  % alto 11
  fis4 a8. g16 fis4. e8 |
  d4 cis d4. fis8 |
  g4. g8 e4. e8 |
  
  fis2. r8 fis |
  fis([ a)] g([ fis)] fis8.([ e16] d8) fis |
  fis([ a)] g([ fis)] fis8.([ e16] d8) d |
  
  d8 d d d16[( e]) fis4. e16([ d)] |
  cis8 cis cis cis16[( d]) e4. d16[( cis)] |
  d8( a'4) g8 e4( d8) e |
  
  d4 cis d2 |
  R1*3
  
  % alto 2
  fis4 e8. a16 a4. a8 |
  a4 g fis4. r8 |
  
  R1*3 | r2 r4 r8 d |
  d4. d8 cis cis cis cis16[( d]) |
  e4. d16[( cis]) b8 b b b |
  d( fis4) g8 a8.[( e16] fis8) e |
  
  d4 cis d2 | R1*4
  
  %alto 3
    \change Staff = tenorstuff
  d4 cis8. b16 a4. d8 |
  d4 cis d4. d8 |
  d4. d8 cis4. cis8 |
  d2. r8 d |
  
  d4 d d4. d8 |
  d4 d d( d8) a |
  a a a a a4. a8 |
  
  a a a a a4.  a8 |
  a( d4) cis8 d8.[( e16] fis8) e |
  d4 cis a2 |
 
  R1*12
   \change Staff = upstaff
  %R1*12
  
  % alto 4
  
  d'4 cis8. b16 a4. g8 |
  fis4 e d4. a'8 |
  b4. b8 cis4. cis8 |
  d2. r8 d8 |
  
  d8[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8\!) d' |
  d8[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8\!) d' |
  b8\< b b b8 d4.\! d8\< |
  
  <g, b>8 q q q16[( a]) b4.\! a16[(\> g])\! |
  fis4.\< a8 a4 d8[( b]) |
  a4 a fis2\! |
  R1*6
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4
  
  % tenor 1
  a4 d8. d16 d4. b8 |
  a4 g fis4. d'8 |
  d4. d8 a4. a8 |
  
  d,2. r8 d' |
  d4 d d4. d8 |
  d4 d d4. r8 |
  
  r4 r8 a8 a a a a |
  a4. a8 a a a a |
  fis8( a4) d8 cis8.[( a16] d8) b |
  
  a4 g fis2 |
  R1*3
  
  % tenor 2
  d'4 cis8. b16 a4. g8 |
  fis4 e d4. a'8\< |
  b4. b8 cis4. cis8 |
  d2.\! r8 d |
  d8[(\> cis])\! b[(\> a])\! a8.[(\> g16] fis8)\! r8 |
  r2 r4 r8 d16[( e]) |
  
  fis8\< fis fis fis16[( g]) a4. g16[( fis]) |
  e8 \< e e e16[( fis]) g4.\! fis16[( e]) |
  fis8( d'4) d8 e4( d8) b |
  
  a4 g fis2 | R1*4
  
  %tenor 3
    \change Staff = bassstuff
   fis4 a8. g16 fis4. b8 |
  a4 a8[( g]) fis4. a8 |
  b4. b8 a4. g8 |
  fis2. r8 a |
  
  a[( cis]) b[( a]) a8.[( g16] fis8) a |
  a[( cis]) b[( a]) a8.[( g16] fis8) a16[( g]) |
  fis8 fis fis fis16([ g)] a4. g16[ fis] |
  
  e8 e e e16([ fis)] g4. fis16([ e)] |
  fis8.[( g16] a8) a a4( d8) b |
  a4 a8[( g]) fis2
  
  R1*12
  \change Staff = downstaff
 % R1*12
  
  %tenor 4
  
  d'4 cis8. b16 a4. g8 |
  fis4 e d4. a'8 |
  b4. b8 cis4. cis8 |
  d2. r8 d |
  
  d4 d d4. d8 |
  d4 d d8.[( e16] fis8) fis |
  <fis d> q q q16[( <g e>]) <fis d>4. <g e>16[( <fis d>]) |
  
  <b, d>8 q q q q4. fis'16[( e]) |
  d4. <cis e>8 <d fis>8.[( <e g>16]) <d fis>8[( <b e>]) |
  <d fis>4 <cis e> d2 |
  R1*6
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4
  
  %bass 1
  d4-> d8.-> d16-> d4.-> g,8-> |
  a4 a d4. r8 |
  R1 |
  
  r2 r4 r8 d8 |
  d4\< d d4.\! d8 |
  d4\< d d4.\! r8 |
  
  r4 r8 d d\< d d d\! |
  a4. a8 a\< a a a\! |
  d16[( e] fis4) g8 a4( b8) g |
 
  a4 a, d2 |
  R1*3
  
  % bass 2
  R1 | r2 r4 r8 fis |
  
  g4. g8 a4. a8 |
  d,2. r4 |
  R1*2 |
 
  R1
  r2 r4 r8 fis16[( e]) |
  fis8( d'4) b8 a8.[( g16] fis8) g |
  
  
  a4 a, d2 | R1*4
  
  %bass 3
  \change Staff = bassstuff
  d4-> d8.-> d16-> d4.-> g,8 |
  a4 a d4. d8 |
  g4. g8 a4. a8 |
  d,2. r8 d |
  
  d4 d d4. d8 |
  d4 d d4. a'8 |
  d,8\< d d d16[( e]) fis4.\! e16[( d]) |
  
  a8\< a a a a4.\! a8 |
  d4. a8 d4. g,8 |
  a4 a d2
  
   
   R1*12
   \change Staff = downstaff
   %  R1*12
  
  %bass 4

  d'4 cis8. b16 a4. g8 |
  fis4 e d4. a'8 |
  b4. b8 cis4. cis8 |
  d2. r8 d |
  
  d8[( cis]) b[( a]) a8.[( g16] fis8) d' |
  d8[( cis]) b[( a]) a8.[( g16] fis8) d' |
  b8 b b b a4. a8 |
  
  g8 g g g g4. e8 |
  a4. a8 a4 d,8[( <g g,>]) |
  <a a,>4 q <a d,>2
  R1*6
  
}

lyricscore = \lyricmode {
  \set stanza = "1. " Joy to the World; the Lord is come!
Let earth re -- ceive her King!
Let e -- v'ry heart pre -- pare Him room,
And Heaven and na -- ture sing.
And Heaven and na -- ture sing.
And Heaven, and Heaven, and na -- ture sing.

 \set stanza = "2. " Joy to the earth, the Sa -- vior reigns!

rocks, hills and plains

Re -- peat the sound -- ing joy.
Re -- peat the sound -- ing joy.
Re -- peat, re -- peat  the sound -- ing joy.

 \set stanza = "3. " No more let sins and so -- rrows grow,
Nor thorns in -- fest the ground;
He comes to make his bless -- ings flow
Far as the curse is found.
Far as the curse is found.
Far as the curse is found.

 \set stanza = "4. " He rules the world with truth and grace,
And makes the na -- tions prove
The glo -- ries of His right -- eous -- ness,
And won -- ders of His love.
And won -- ders of His love.
And won -- ders, won -- ders of His love.
}

lyricscorea = \lyricmode {


\repeat unfold 47 \skip 1
Sa -- vior

\repeat unfold 21 \skip 1

\repeat unfold 8 \skip 1 %No more let sins and so -- rrows grow,
\repeat unfold 6 \skip 1 %Nor thorns in -- fest the ground;
\repeat unfold 8 \skip 1 %He comes to make his bless -- ings flow
Far as the curse is found.
Far as the curse is found.
Far as, % far as the curse is found.


}

lyricscoret = \lyricmode {


\repeat unfold 22 \skip 1
And Heaven and na -- ture sing.
And Heaven and na -- ture sing,


\repeat unfold 14 \skip 1
Let men their songs e -- mploy;
While fields and floods, 
Re -- peat the sound -- ing joy.
Re -- peat the sound -- ing joy.
Re -- peat, re -- peat the sound -- ing joy.

% No more let sins and so -- rrows grow,
% Nor thorns in -- fest the ground;
\repeat unfold 14 \skip 1

%He comes to make his bless -- ings flow
\repeat unfold 8 \skip 1
Far as the curse is found.
Far as the curse is found.
Far as, % far as the curse is found.


}

lyricscoreb = \lyricmode {

\repeat unfold 48 \skip 1

\repeat unfold 8 \skip 1 

% No more let sins and so -- rrows grow,
% Nor thorns in -- fest the ground;
\repeat unfold 14 \skip 1

%He comes to make his bless -- ings flow
%\repeat unfold 9 \skip 1
Far as the curse is found.
Far as the curse is found.
Far as, far as the curse is found.

He rules the world with truth and grace,
And makes the na -- tions prove
The glo -- ries of His right -- eous -- ness,m
And won -- ders of His love.
}

choirscore = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >>
      
      \new Staff = "tenorstuff" \with {
        instrumentName = \markup { \right-column { "Тенор"  } }
        shortInstrumentName = \markup { \right-column { "Т"  } }
        midiInstrument = "voice oohs"
      } {\clef "treble_8" \global s1*31 }
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "alto" { \lyricscorea }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Staff = "bassstuff" \with {
        instrumentName = \markup { \right-column { "Бас" } }
        shortInstrumentName = \markup { \right-column { "Б" } }
        midiInstrument = "voice oohs"
      } {\clef bass \global s1*31 }
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
%      \new Lyrics \lyricsto "bass" { \lyricscoreb }
       
    >>

vinotes = \relative c''' {
  d4->\ff-\markup\italic"(marcato)" cis8.->( b16-- a4.) g8-. |
  fis4-> e-> d-> a'->\mf\<( |
  a8-.) g16 fis e8.\<^\markup\italic"marcato" d16 cis b a8\! d8-. e-. |
  
  d8\prall cis4 d8-> d16-> d,\p\< e fis g a b cis |
  \mark \default
  d4\f-> r r8 a'16->\ff g-> a8-. g-. |
  fis4-> e-> d2-> |
  
  r8 b8-. g'4-> r8 cis,8-. a'-. cis,-. |
  d16\p\< fis, g a b a b cis d cis d e fis e fis g |
  a4--\f b8-- a a16\> b a g fis e fis g\!|
  
  a4-- b8-- a a16\> b a g fis e fis g |
  a8-.\p-\markup\italic"secco" d,-. a'4.-> a16\f g fis a g fis |
  e8-. a,-. g'4.-> g16 fis e\> g fis e |
  
  fis4\! d'8-.\f b-. a8.\prall g16 fis8-. g-. |
  fis4-> e-> d16-> fis,\> g a b cis d e |
  fis4--^\markup\italic"secco"(\mp e8.-.) d16( cis8) a-. e'4--~\< |
  
  e8-.\! d4-- g8-. g--( fis16 e fis8-.) e-. |
  d4\startTrillSpan d8-.\stopTrillSpan cis-. cis8-- e16( d\> cis b a g |
  \mark \default
  fis4->)\mf a8.^\markup\italic"dolce" d16-> cis8-.\> a-.\! e'4--(\< |
  
  e8)\! d4 g8 g fis16 g fis e d cis |
  b8 g'16 fis e d cis b a8 e'16 d cis b a g |
  fis d e fis g a b cis d cis d e fis e fis g | 
  
  a4 g~ g16 g fis e d cis d e |
  d4\p d~-- d16 cis d\> e fis e fis g |
  a4.--\p g16( fis e4.--) e16( fis |
  
  g4.) fis16 e d4.-> d8 |
  d4\f\< d d8->\! cis16 b a8-. g-. |
  fis4-> e-> d-> d16 e fis g |
  
  % page 6
  a4 gis8. d'16 cis8 a16 b cis d e fis |
  g4 fis8. e16 d8 b16 cis d e fis g |
  a4 g8. fis16 e8. d16 cis b a g |
  
  fis8-> e16 d g8-.\< e-. fis4 e\! |
  \mark \default
  d4-> d8.-> d16-> d4.-> g8 |
  fis4-> e-> d-> r8 fis |
  
  % page 7
  g4. g8 e4. e8 |
  d2.\< r8\! fis |
  fis\> a\! g\> fis\! fis8.\> e16 d8-.\! fis |
  
  fis\> a\! g\> fis\! fis8.\> e16 d8-.\! r |
  r4 r8 a-.\mf d-> fis16( g a8-.->) g16-> fis-> |
  e8-> a, a4 r8 e'16 fis g8 fis16 e |
  
  % page 8
  fis8-> d16-. d-. d8-> e-> fis8.( g16 a8-.) g |
  fis4\f e d4. r8 |
  R1 |
  
  r4 a16\pp\< b cis d e fis g a b cis d e |
  fis8-.\mf fis-. fis-. fis16-> g-> a4.-> g16-> fis-> |
  g8-. g-. g-. g16-> fis-> e2-> |
  
  % page 9
  fis8-. fis-. fis-. fis16-> g-> a4.-> g16-> fis-> |
  g8-. g-. g-. g16-> fis-> e2-> |
  fis8-. fis-. fis-. fis16-> g-> a4.-> g16-> fis-> |
  
  e8-. e-. e-. e16-> fis-> g4.-> fis16-> e-> |
  d8-.\ff a'-. b-> a16-> g-> a8-. d,-. g-. fis16\prall e |
  fis4 r r2
  
  % page 10
  r8 a,-> d-> e-> fis-> fis16-> g-> a8-> g16-> fis-> |
  e8->\< e-> e-> e16-> a-> a4-> g16 a b cis\! |
  \mark \default
  d4-> cis8.-> b16-> a16-> d, e fis g a b cis |
  
  d a fis a a g fis e d cis b a g fis e d |
  r8 g g'-> g, r a-. e'-> a |
  d,16 d, e fis g a b cis d a b cis d e fis g |
  
  % page 11
  a4 d,8-. d-. a'16-> a, b cis d e fis g |
  a4 d,8-. d-. fis16-> a, b cis d e fis g |
  fis4-> fis-> fis8-> fis16-> g-> a8-> g16-> fis-> |
  
  g4-> e-> e8-> e16-> fis-> g8-> fis16-> e-> |
  d8-> a d-> e fis8.-> g16-> a8-> g-> |
  fis4-> e-> d16 d, e fis g a b cis |
  
  % page 12
  d d, e fis g a b cis d g, a b cis d e fis |
  g8-. g-. g-. fis16-> e-> d8-> a-> d-> e-> |
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  fis8-. fis16-> g-> a8-> g16-> fis-> e8-> a,-> e'-> a-> |
  
  a16 d, e fis g a b cis d2\fermata \bar "||"
  \set Score.currentBarNumber = #67
  a16 d, e fis g a b cis \repeat tremolo 8 d16~
  d16-.->\! r r8 r4 r2 \bar "|."
  
}

vipart = \relative c {
  \global
  \vinotes
}

viscore = \new Staff \with {
  instrumentName = "V1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} {
  \vipart
}

viinotes = \relative c'' {
  fis4->\ff a8.->( g16-- fis4.) e8-. |
  d4-> cis-> d-> a\mf |
  b2\< a4-> fis8-. b-. |
  
  a2\f fis16-> d\p\< cis d e cis d e |
  \mark \default
  fis4->\f r r8 fis'16->\ff e-> fis8-. e-. |
  d4-> cis-> d2-> |
  
  r8 g, b4-> r8 a-. cis-. a-. |
  fis16\p\< d e fis g fis g a b a b cis d cis d e |
  fis4--\f g8-- fis fis16\> g fis e d cis d e\! |
  
  fis4-- g8-- fis fis16\> g fis e d cis d e |
  fis8-.\p a,-. fis'4. fis16\f e d fis e d |
  a8-. e-. e'4. e16 d a e' d cis |
  
  d4 d8-.\f g-. e8. e16 d8 e |
  d4-> cis-> fis,16-> d\> e fis g a b cis |
  d4--\mp a e a |
  
  a\< g a2\! |
  fis4 gis a8-- cis16 \> b a g fis e |
  \mark \default
  d4->\mf e8. a16-> a4.-> a8 |
  
  a4 g fis r8 fis |
  g4. g8 e4. e8 |
  d cis16 d e fis g a b a b cis d cis d e |
  
  fis e d cis d8~ d16 cis d4. d8 |
  d8\> cis\! b\> a\! a8.\> g16 fis8\! r |
  d'4.\p d8 cis4. cis16 d |
  
  e4. d16 cis b4.-> b8 |
  fis4.\f\< g8 a8.->\! e16 fis8-. e-. |
  d4-> cis-> d2->
  
  %page 6
  e4 d e4. r8 |
  b'4 d8. cis16 b4 d |
  d d8 e cis4 e, |
  
  d e \< d cis\! |
  \mark \default
  a4-> cis8.-> d16-> a4.-> d8-> |
  d4-> cis-> d-> r8 d |
  
  %page 7
  d4. d8 cis4. cis8 |
  d2.\< r8\! d |
  d4\< d d4.\! d8 |
  
  d4 d d4. r8 |
  r4 r8 a-. a-> d16( e fis8-.->) e16-> d-> |
  cis8-> a a4 r8 a16 d e8 d16 cis |
  
  % page 8
  d4-> d8-> cis-> d8.( e16 fis8-.) e |
  d4\f cis a4. r8 |
  r4 a8\pp a16 a a a b cis d e fis g |
  
  a2\p\< a4 a\! |
  d8-. d-. d-. d16-> e-> fis4.-> e16-> d-> |
  e8-. e-. e-. e16-> d-> cis2-> |
  
  %page 9
  d8-. d-. d-. d16-> e-> fis4.-> e16-> dis-> |
  e8-. e-. e-. e16-> d-> cis2-> |
  d8-. d-. d-. d16-> e-> fis4.-> e16-> d-> |
  
  d4-> d-> d4.-> d8 |
  d-.\ff d-. d-. cis-. d-. a-. b-. cis-. |
  d4 r r2 |
  
  % page 10
  fis,4 fis a8 d16-> e-> fis8-> e16-> d-> |
  d8->\< d-> d-> d-> e4-> e->\! |
  \mark \default
  d-> d8.-> d16-> d8-> d16-> d-> a'8-> g-. |
  
  fis4-> e-> d8-> a16-> a-> d8-. d-. |
  d4. d8 cis4. cis8 |
  d4-> a8-> a d4-> fis8-> e |
  
  % page 11
  d8\> cis\! b\> a\! a8.\> g16 fis8-.\! fis |
  fis\> a\! g\> fis\! fis8.\> e16 d8-.\! d' |
  d4-> d-> d8-> d16-> e-> fis8-> e16-> d-> |
  
  e4-> d-> d8-> d-> e-> b-> |
  a4-> fis8-> a d8.-> e16-> fis8-> e-> |
  d4-> cis-> d2-> |
  
  % page 12
  fis8-. fis16-> g-> a4-> g-> e-> |
  d-> d-> a8-> fis-> a-> cis-> |
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  d8-. d16-> e-> fis8-> e16-> d-> e8-> a,-> e'-> d-> |
  
  e8-> e16-> e-> e8-> e-> fis2-> |
  \set Score.currentBarNumber = #67
  e8-> e16-> e-> e8-> e-> \repeat tremolo 8 fis16~ |
  fis16-.->\! r r8 r4 r2
  
}

viipart = \relative c {
  \global
  \viinotes
}

viiscore = \new Staff \with {
  instrumentName = "V2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} {
  \viipart
}

viiinotes = \relative c'' {
  d4->\ff d r8 d16-> cis-> d8-. b-. |
  a4-> g-> fis-> d\mf |
  d\< e e8-. d-. d-. e-. |
  
  e2\f\< d |
  \mark \default
  d4->\! d8.-> d16-> d4.-> b8 |
  a4-> g-> fis-> r8 a8 |
  
  b4.\p\< b8 cis4. cis8 |
  d4.->\ff d16-> d-> d4.-> d16-> d-> |
  d4->\< d8-> d-> d4->\! a4 |
  
  d4->\< d-> d\! r |
  r r8 a8\f a a a a |
  a4 r8 a a a a a |
  
  fis8-> a4 d8 cis8. a16 d8-> b-. |
  a4-> g-> fis4.-- r8 |
  a'4--\mp e2 cis4 |
  
  d4.\< cis8 d4 r4\! |
  d2 e4-- r |
  \mark \default
  d4->\mf cis8. b16-> a4.-> g8 |
  
  fis4 e d r8 a'8-. |
  b4.-- b8-. cis4.-- cis8-> |
  d2-- r4 r8 d |
  
  d8-> cis\! b\> a\! a8.\> g16\! fis8-. d' |
  b\> a\! g\> fis\! fis8.\> e16 d8-.\! r |
  r2 a''2\p |
  
  b2 g4. g8-> |
  d2\f e4-> d8-. b-. |
  a4-> g-> fis2-> |
  
  % page 6
  a4 b a4. r8 |
  d4 e8 fis fis g fis4 |
  a b a8 e e4 |
  
  d4 b\< a g\! |
  \mark \default
  fis-> a8.-> g16-> fis4.-> b8-> |
  a4-> a8-> g-> fis4-> r8 a |
  
  % page 7
  b4. b8 a4. g8 |
  fis2.\< r8\! a8 |
  a\> cis\! b\> a\! a8.\> g16 fis8-.\! a |
  
  a\> cis\! b\> a\! a8.\> g16 fis8-.\! a16 g |
  fis8-.\mp fis-. fis-. fis16-> g-> a4.-> g16 fis |
  e8 e e e16 fis g4. fis16 e |
  
  % page 8
  fis8. g16 a8 a a4 d8 b |
  a4\f a8 g fis4. r8 |
  a8-.\pp a16-> a-> a8-. a-. fis4-> a |
  
  d16\pp e fis g a4 d, e |
  a2~\mf a8 a16-> a-> a8-. a-. |
  a2~-> a8 a16-> a-> a8-. a-. |
  
  % page 9
  a2-> b4-> b-> |
  a-> a-> a8-> a16-> a-> a8-. a-. |
  a4-> a-> a8-. a16-> a-> a8-. a-. |
  
  b4 b b8-> b16-> b-> b8-. b-. |
  a8-.\ff fis e4 d16 e fis8 e8 a-. |
  a4 r r2
  
  % page 10
  d,4-^ cis8.-^ b16-^ a4-^ a8-. a-. |
  a'8->\< a-> a-> a-> a-> a16-> a-> a8-> a->\! |
  \mark \default
  a2-> a4. g8 |
  
  a4-> g-> fis4.-> a8 |
  b4. b8 a4. g8 |
  fis4-> fis8-> e fis4-> a-> |
  
  % page 11
  fis8\> a\! g\> fis\! fis8.\> e16 d8-.\! a |
  a\> cis\! b\> a\! a8.\> g16 fis8-.\! r |
  b'4-> b-> a-> a-> |
  
  g-> g-> g8-> g16-> a-> b8-> a16-> g-> |
  fis8-> d d4-> a' d8-> b-> |
  a4-> a-> fis2-> |
  
  % page 12
  d'8-. d16-> e-> fis4-> d b |
  b b fis8-> d-> fis-> a-> |
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  a4-^ e-^ \repeat tremolo 8 fis16 |
  
  fis8-> fis16-> fis-> fis-> fis fis-> fis fis2-> | \bar "||"
  \set Score.currentBarNumber = #67
  fis8-> fis16-> fis-> fis-> fis fis-> fis \repeat tremolo 8 fis16~
  fis16-.->\! r r8 r4 r2 \bar "|."
}

viiipart = \relative c {
  \global
  \viiinotes
}

viiiscore = \new Staff \with {
  instrumentName = "Alt"
  shortInstrumentName = "A"
  midiInstrument = "viola"
} { \clef alto \viiipart
}

vcnotes = \relative c {
  d4->\ff d8.-> d16-> d4.-> g8-> |
  a-> g-> a-> a,-> d-> d16\mf e fis8 e16 fis |
  g8-. fis-. g-. e-. a-. fis-. b-. g-. |
  
  a4\f a, d2 |
  \mark \default
  d4-> d8.-> d16-> d4.-> g8-. |
  a-. g-. a-. a,-. d8-> d16 e fis8 e16 fis |
  
  g8-.\p\< fis-. g-. e-. a-. b-. a-. a,-. |
  d4.\>\ff d16-> d-> d4.-> d16-> d->\! |
  d4-> d-> d4.-> d8 |
  
  d4->\< d-> d->\! r4 |
  r r8 d d d d d |
  a4 r8 a8 a a a a-> |
  
  d16 e fis4 g8 a4 b8-. g-. |
  a4-> a,-> d4.-- r8 |
  d'4--( cis8.-.) b16( a4.--) g8 |
  
  fis4-- e-- d4.-- cis8-> |
  b2-- a4-- r |
  \mark \default
  R1 |
  
  r2 r4 r8 d-. |
  g4.-- g8-. a4.-- a8-. |
  d,2-- r4 r8 d |
  
  d4->\< d-> d4.->\! r8 |
  r2 r16 a\p b cis d16\> cis d e\! |
  fis8-. fis-. fis-. fis16-> g-> a4.-- g16-> fis-> |
  
  e8-. e-. e-. e16-> fis-> g4.-- fis16->_\markup{\italic sub \dynamic f} e-> |
  fis8 d'4 b8 a8.-> g16\! fis8-. g-. |
  a4-> a,-> d2->
  
  % page 6
  cis4 b a4. r8 |
  g'4 a8 fis b4 a8. g16 |
  fis4 g8 e a b cis a |
  
  b4 e,8-.\< g-. a4 a,\! |
  \mark \default
  d4-> d8.-> d16-> d4.-> g,8-> |
  a4-> a-> d-> r8 d |
  
  % page 7
  g4. g8 a4. a8 |
  d,2.\< r8\! d |
  d4\< d d4.\! d8 |
  
  d4 d d4. a'8 |
  d,8-.\mp d-. d-. d16-> e-> fis4.-> e16 d |
  a8-> a-> a-> a-> a4. a8_\markup\italic"cresc." |
  
  % page 8
  d4. a8 d4. g,8 |
  a4\f a d4. a16\pp a |
  a2.~ a8 a16-> a-> |
  
  a2.~ a8 a16-> a-> |
  a2\mp a4 a |
  a a a2 |
  
  % page 9
  a'4-> a-> a8-. a16-> a-> a8-. a-. |
  a4-> a-> a2-> |
  a4 a a2 |
  
  g4 g g2 |
  fis8-> d'-. g,-. a-. fis4-> e8-. a-. |
  d,4 r r2 
  
  % page 10
  d4-^ cis8.-^ b16-^ a4-^ a8-. a-. |
  a4->\< a-> a-> g->\! |
  \mark \default
  fis2->~ fis4. g8-> |
  
  a4-> a d4.-> d8 |
  g4. g8 a4. a8 |
  d,2.~ d8 d16-> d-> |
  
  % page 11
  d4 d d4. d8 |
  d4 d d4. d'8 |
  b8-> b b b a4.-> a8 |
  
  b8-> b b b b4.-> b8-> |
  a4-> a,-> a-> d8-> g-> |
  a4-> a,-> d2-> |
  
  % page 12
  d'4-> d8.-> d16-> d2 |
  d4 d8 d16 d d4-^ cis8.-^  b16-^ |
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  a2-^ a8 a16 a a8 a |
  
  a4-> a,8-> a d2->\fermata | \bar "||"
  \set Score.currentBarNumber = #67
  a'4-> a,8-> a \repeat tremolo 8 d16~
  d16-.->\! r r8 r4 r2 \bar "|."
  
  
}

vcpart = \relative c {
  \global
  \vcnotes
}

vcscore = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "C"
  midiInstrument = "cello"
} { \clef bass \vcpart }

scoreInstrRight = \relative c' {
  \global
  \tempo "Maestoso"
  <d fis d'>4_\markup\italic"(marcato)"\ff
  << { <a' cis>8. <g b>16 } \\ d4 >> <d fis a>4. <b e g>8 |
  <a d fis>4 <a cis e> <fis a d> <d' a'>\mf\<  |
  << { <g b>2 <a cis>4 } \\ { d,4 e e8[ fis] } >> <fis b d>8 <e e'>\! | \abr
  
  
  << { r8 cis'4 d8 } \\ <e, a>2\f >> <fis a d>2 |
  \mark \default
  <d fis d'>4\ff-> << { <a' cis>8.-> <g b>16-> } \\ d4 >> <d fis a>4.-> <b e g>8-> |
  <a d fis>4-> <a cis e>-> <fis a d>4.-> <d' fis a>8 | \abr
  
  <d g b>4.\pp\< <d g b>8 <e a cis>4. <e a cis>8 |
  <d fis a d>2.->\ff r8 <fis d'>8 |
  <fis d'>8\> <a cis>\! <g b>\> <fis a>\! <fis a>8.\> <e g>16 <d fis>8-.\! <fis d'>-- | \abr
  
  <fis d'>8\> <a cis>\! <g b>\> <fis a>\! <fis a>8.\> <e g>16 <d fis>8-.\! <d fis> |
  <d fis>-.\p <d fis>-. <d fis>-. <d fis>16( <e g> <fis a>4.) <e g>16( <d fis> |
  <cis e>8) <cis e>-. <cis e> <cis e>16 <d fis> <e g>4. <d fis>16( <cis e> | \abr
  
  < d d,>4.\f\<) <d g b>8 <cis e a>4 <b d fis>8 <b e g>\! |
  <a d fis>4-> <a cis e>-> <fis a  d>4.-- r8 | 
  
  \tag #'pure { R1 \abr R1*2 }
  \tag #'rehearsal { << R1*3 \new Staff \with {
      \remove "Time_signature_engraver"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    } << \relative c'' {\key d \major fis4--( e8.-.) d16( cis8) a-. e'4--~\< |
      e8-.\! d4-- g8-. g--( fis16 e fis8-.) e-. |  d4\startTrillSpan d8-.\stopTrillSpan cis-. cis8-- e16( d cis b a g) } 
                        \\ \relative c'' { d4--_"Rehearsal only" a e a | a\< g a2\! | fis4 gis a8-- cis16  b a g fis e} >> >> }

\mark \default
  <fis' a>4--\mf^\markup\italic"dolce" a8. <a d>16 <a cis>4.-- <a e'>8 | \abr
  
  << { a8 d4 cis8 } \\ {a4 g } >> <fis d'>4 r8 a,8\< |
  b4.-- b8 cis4.-- cis8 |
  <fis, a d>2\! r4 r8 d'8\mp | \abr
  
  d4\< d d\! r8 <d d'>8\< |
  <d d'>4 <d d'> <d d'>\! r8 <d fis>\p |
  <d a'>4.-- << { g16 fis } \\ d8 >> <cis e>4.-- <cis e>16 <d fis> | \abr
  
  <e g>4. <d fis>16 <cis e> <b d>4. <b d>8_\markup{\italic sub \dynamic f} |
  << {  d'4\< d d8->\! cis16 b } \\ { d,8 fis4 g8 <e a>[ e] } >> <d fis a>8 <b e g> |
  <a d fis>4 <g cis e> <fis a d>2-> | \abr
  
  % page 6
  <g e' a>4 <b d gis> <a cis e a>4. r8 |
  <d g b>4 << { <e a>4 fis8[ g] a[ d] } \\ { cis,8 fis d4 fis } >> |
  <a d a'>4 << { d8 e cis[ b] } \\ { b4 e, } >> a8 e |
  
  <d fis>8 <b d> <b e g>4 <a d fis> <g cis e> |
  \mark \default
  <fis a d>4 <a cis d>8. <g b d>16 << { d'8 a16 a d8 g } \\ { <fis, a>4. <b d>8 } >> |
  <a d fis>4 << { <cis e>4 d8 a16 a } \\ { a8 g <fis a>4 } >> <fis a d>8 <a cis d> |
  
  % page 7
  << { d8-> d16-. d-. g8-. d-. e-> e16-. e-. a8-. e-. } \\ { b4 <b d> cis cis } >>
  << { d8-> a16-.\< a-. <a d>8-. <a e'>-. <d fis>-> <a e'>-> <d fis>->\! <d fis a>-> } \\ { fis,4 s s s } >>
  <a d fis>4 << { <b g'>8 <a fis'> } \\ d4 >> <a d fis>8. <g e'>16 << { d'16 e fis g} \\ { fis,8 r } >>
  
  << { <fis' a>4 g8 <fis a,> <fis a,>8. <e g,>16 } \\ { d8 cis d4 d } >> <fis, a d>8 a8-.-> |
  a8-> a-. a-. a-. a-> d a-. a |
  a4 r8 a8-. a-. e' a,-. a |
  
  % page 8
  <fis a d>8-> <d fis a cis>-> <fis a d>-> <a cis e>-> <d fis>16 <cis e> <d fis> <e g> <d fis a>8 <b e g> |
  <a d fis>8 a16-. a-. << <cis e>4 \\ { a8 a } >> <fis a d>2 |
  <fis a>4->\pp a8-. a-. d4-> a-> |
  
  <fis a d>4-.\mp <a e'>8-. <a e'>-. <d fis>4 <a e'> |
  <a d fis> <a d fis>4. <d fis>16-> <e g>-> <d fis a>4-> |
  <a e' g>4 <a e' g> <a cis e>8 <e' g>16 <d fis> <cis e> <e g> <d fis> <cis e> |
  
  % page 9
  <a d fis>4 <a d fis> << <b dis fis>2-> \\ {a4 a } >> |
  <a b e g>4 <a b e g> <a cis e>16 <b d> <a cis> <b d> <cis e> <d fis> <e g> <cis e> |
  <a d fis>4 <a d fis> <fis a d>8-> <d' fis>16 <e g> <d fis a>4-> |
  
  <g, b d e> <g b d e> <g b d e>2-> |
  <fis a d>4-> r r2 |
  r8\ff <fis' a>8-. << { b8-> a16-> g-> <d a'>8-> <d a>-> g-> fis16-> e-> } \\ { g8 e s4 <d b g> } >>
  
  % page 10
  <d a fis>8-. <a fis d>-. <d a fis>-. <e cis a>-. <fis d>-. <d a fis>-. <fis d a>-. <a fis d>-. |
  <e d a>4->\< q-> q-> <e cis a g>->\! |
  \mark \default
  << { <d fis,>2\fff <a a'>4. <d g>8 } \\ { a4 cis8. b16 d8 d16 d d8 b } >>
  
  <a d fis>4 <a cis e>8 a << { d8 a16 a } \\ <a fis>4 >> <d a fis>8 <d cis a fis> |
  <d b g>8 d16 d <g d b>8 <d b g> <e cis a g> e16 e <a e a,>8 e |
  <fis a d>8-> a16-> a-> <fis a d>8-> <a cis e>-> <a d fis>-> <a a'> <d fis> <a e'> |
  
  % page 11
  << { d4 d d8. e16 } \\ { <fis, a>8 <a cis> <g b> <fis a> <fis a>4 } >> <d' fis>8 <d a fis> |
  << { d4 d d8. e16 <d fis>8 q } \\ { <fis, a>8 <a cis> <g b> <fis a> q4 a } >> |
  <b d fis>8-> q-> q-> <d fis>16-> <e g>-> <a, d fis a>4.-> <a e' g>16-> <d fis>-> |
  
  <g, b d e>8-> q-> q-> <g b e>16-> fis'-> <b, e g>4. <a d fis>16-> <g e'>-> |
  <fis a d>8-> <d fis a>-> <fis a d>-> <a cis e>-> <a d fis>8. <e' g>16 <d fis a>8 <b e g> |
  <a d fis>4 <a cis e> <fis a d>8 <a d fis>8-> q-> <d fis>16-> <e g>-> |
  
  % page 12
  <d fis a>4. <e g>16-> <d fis>-> <g, b d e>8-> q q << { e'16-> fis-> } \\ <g, b>8 >> |
  <b e g>4-> <g b e> <fis a d>-^ <a cis>8.-^ <g b>16-^ |
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  <fis a>4-^ <fis a d> << { e'8 e16 e } \\ <a, d>4 >> <a d e>8 q |
  
  <a d e>8 <a d fis> <g a cis e>4\fff -> <d fis a d>2\fermata | \bar "||"
  \set Score.currentBarNumber = #67
  
  <a' d e>8 <a d fis> <g a cis e>4 -> <d fis a d>2\fermata |
  R1
}

scoreInstrLeft = \relative c, {
  \global
  \dynamicDown
  <d d'>4-> <d d'>8.-> <d d'>16-> <d d'>4.-> <g g'>8-> |
  <a a'>8-> <g g'>-> <a a'>-> <a, a'>-> d8-> d16 e fis8 e16 fis |
  g8-. fis-. g-. e-. a-. fis-. b-. g-. |
  
  a4 <a a,> <d d,>2 |
  <d d,>4-> <d d,>8.-> <d d,>16-> <d d,>4.-> <g g,>8 |
  <a a,> <a, a,>-> <a a,>-> <a a,>-> <d d,>4.-> <d d,>8-> |
  
  <g g,>8-. <fis fis,>-. <g g,>-. <e e,>-. <a a,>-. <b b,>-. <a a,>-. <a, a,>-. |
  <d d,>4.-> <d d,>16-> <d d,>-> <d d,>4.-> <d d,>16-> <d d,>-> |
  <d d,>4->\< <d d,>-> <d d,>4.->\! <d d,>8-> | 
  
  <d d,>4->\< <d d,>-> <d d,>4.->\! r8 |
  r4 r8 <d a'>8->\f\< <d a'>-> <d a'>-> <d a'> -> <d a'>-> |
  <a a'>4->\! r8 <a a'>8->\f\< <a a'>-> <a a'> -> <a a'>-> <a a'>->\! |
  
  d,16-> e-> fis4-> g8-> a4-> b8-. g-. |
  a4-> a,-> d4.-- r8 |

  \tag #'pure { R1 \abr R1*2 }
  \tag #'rehearsal { << R1*3 \new Staff \with {
      \remove "Time_signature_engraver"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    } << \relative c'' { \clef bass \key d \major a4-- e2 cis4 | d4.\< cis8 d4 r4\! | d2 e4-- r} \\ 
                        \relative c' {d4--( cis8.-.) b16( a4.--) g8 | fis4-- e-- d4.-- cis8-> | b2-- a4-- r} >> >> }
  
  d''4-> <cis e>8. b16 a4.-- g8 |
  
  fis4 e d r8 <fis fis,>8 |
  <g g,>4.-- <g g,>8 <a a,>4.-- <a a,>8 |
  <d, d,>2 r4 r8 d |
  
  d4 d d  r |
  r2 r4 r8 d16 e |
  fis4.-- fis16 g a4.-- g16 fis |
  
  e4. e16 fis g4. fis,16_\markup{\italic sub \dynamic f} e |
  fis8 d'4 b8 a8.-> g16 fis8 g |
  a4-- <a a,> <d, d'>2-> 
  
  % page 6
  <cis cis'>4 <b b'> <a a'>4. r8 |
  <g' g'>4 <a a'>8 <fis fis'> <b b'>4 <a a'>8. <g g'>16 |
  <fis fis'>4 <g g'>8 <e e'> <a a'> <b b'> <cis cis'> <a a'> |
  
  <b b'>4 <e, e'>8 <g g'> <a a'>4 <a a,> |
  <d, d'>2.~ <d d'>8 <g g,> |
  <a a,>4 <a a,> <d d,>4. <d d,>8 |
  
  % page 7
  <g, g'>4. <g g'>8 <a a'>4. <a a'>8 |
  <d d,>2.\< r8\! <d d,> |
  <d d,>2 <d d,> |
  
  <d d,> <d d,> |
  <d fis>1\mp |
  <e a,> |
  
  % page 8
  \ottava -1
  <d d,>4. <a a,>8 <d d,>4. <g, g,>8 |
  <a a,>4 <a a,> <d d,>2 |
  <a a,>1 |
  
  <a a,> |
  <a a,>~ |
  <a a,>2. <a a,>4~ |
  
  % page 9
  <a a,>2 <a a,>2~-> |
  <a a,>2. <g g,>4-> |
  <fis fis,>2.-> <fis fis,>4-> |
  
  <g g,>2.-> <e e,>4 |
  \ottava 0
  <a a,>2~ <a a,>8 <fis fis'>-. <e e'>-. <a a'> |
  << { r8 <d d'>8-. <g d'>-> <g a cis>-> <fis a>-> fis-.} \\ {<d d,>2~ <d d,>8 <fis fis,> } >> <g g,>-. <e e,>-.
  
  % page 10
  \ottava -1
  <a, a,>1-> |
  <a a,>->
  <fis fis,>2->\fff~ <fis fis,>4. <g g,>8 |
  
  <a a,>2 <d, d,> |
  <g g,> <a a,> |
  <d, d,>1 |
  
  % page 11
  \ottava 0
  \repeat tremolo 4 <d' d,>8 <d a'>2 |
  \repeat tremolo 4 <d d,>8 <d a'>2 |
  \ottava -1
  <b b,>2 <a a,> |
  <g g,>2. <e e,>4 |
  <a a,>2. \ottava 0 <d d,>8 <g g,> |
  <a a,>4 \ottava -1 <a, a,> <d d,>2 |
  
  % page 12
  \ottava -1
  <c c,> <b b,> |
  <g g,> <a a,> |
  q q |
  
  q <d, d,>\fermata | \ottava 0
  
  \ottava -1
  <a' a,>2 \repeat tremolo 8 { d,,32 d' } |
  d,16-.-> \ottava 0 r r8 r4 r2
  
}

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P-no"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \keepWithTag #'pure \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \keepWithTag #'pure \scoreInstrLeft }
  >>
  
scoreInstrRehersalPart =   \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P-no"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \keepWithTag #'rehearsal \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \keepWithTag #'rehearsal \scoreInstrLeft }
  >>  


abr = { \break }

% separate choir part
\bookpart {
  \header { piece = "SATB" }
\score {
  %  \transpose c bes {
  <<
    \choirscore
  >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 19)
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

abr = {}

\bookpart {
\header { piece = "SATB+Piano" }
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 10
  system-separator-markup = \slashSeparator
}


\score {
  %  \transpose c bes {
  <<
%    \choirscore
    \choirscore
    \scoreInstrRehersalPart
  >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 16)
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

% Archi partiture
\bookpart {
\header { piece = "Archi" }
\paper { system-separator-markup = \slashSeparator }
\score {
  <<
    \viscore
    \viiscore
  >>
  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
}

% Archi partiture
\bookpart {
\header { piece = "Alt" }
\paper { system-separator-markup = \slashSeparator page-count = 1 }
\score {
  <<
    \viiiscore
  >>
  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
}

\bookpart {
\header { piece = "Cello" }
\paper { system-separator-markup = \slashSeparator page-count = 1 }
\score {
  <<
    \vcscore
  >>
  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
}

% instruments partiture
\bookpart {
\header { piece = "Instruments" }
  \paper {
    page-count = #10
%  top-margin = 15
%  left-margin = 15
%  right-margin = 10
%  bottom-margin = 15
%  indent = 10
%  ragged-bottom = ##f
  system-separator-markup = \slashSeparator
}
\score {
  %  \transpose c bes {
  <<
%    \choirscore
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \scoreInstrPart
  >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

\bookpart {
\header { piece = "Conductor" }
  \paper { system-separator-markup = \slashSeparator 
  system-system-spacing #'basic-distance = #8
  page-count = #12
  
  }
\score {
  %  \transpose c bes {
  <<
%    \choirscore
    
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \choirscore
    \scoreInstrPart
  >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 14)
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #2
    }
    \context {
      \PianoStaff
      \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #2
      \override StaffGrouper.staff-staff-spacing.basic-distance = #2
    }
    \context {
      \ChoirStaff
      \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
      \override StaffGrouper.staff-staff-spacing.basic-distance = #2
    }
  %Metronome_mark_engraver
  }
}
}

\bookpart {
\score {
  %  \transpose c bes {
  \unfoldRepeats \articulate <<
%    \choirscore
    
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \choirscore
    \scoreInstrPart
  >>
    %  }  % transposeµ
  \midi {
    \tempo 4=90
  }
}
}
