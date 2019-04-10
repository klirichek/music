\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 17.8)

\header {
  title = "Ангелы поют"
  subtitle = " "
  %opus = "№ 140"
  %composer = \markup { \column { "т.: Йозеф Мор, 1816г" "м.: Франц Грубер, 1818г" }}
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 14
  indent = 15
  %system-separator-markup = \slashSeparator
  %ragged-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
}

globali = {
  \key e \major
  \time 3/8
  \secondbar
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #3
}

global = {
  \globali
  \autoBeamOff
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

markss = \relative c' {
  \set Score.markFormatter = #format-mark-box-numbers
  s4.*16
  s4.\mp
  s4.*15
  \mark \default
  s4.^\markup\italic"Solo"
  
  s4.*18
  \mark \default
  s4.^\markup\italic"Хор"
  s4.*18
  \mark \default
  s4.*16
  \mark \default
  s4.*26
  \mark \default
  s4.^\markup\bold "Ярко"
  s4.*18
  \mark \default
  s4.*16
  \mark \default
  s4.*26
  \mark \default
  s4.*16
  \mark \default
  s4.*26
  \tempo "Largo"
  s4.*7
  \bar "||"
}

cimbpart = \drummode {
  R4.*5
  hh4.
  hh4.
  r4 hh8
  hh4.
  R4.*4
  hh4.
  hh4.
  r4 hh8
  hh4.
  r
  hh
  r
  hh
  r
  hh
  r
  hh
  r
  hh
}

drumPart = \new DrumStaff  \with {
        instrumentName = "Triangolo."
        shortInstrumentName = "Tr."
        midiInstrument = "tinkle bell"
%        drumStyleTable = #percussion-style
        \override StaffSymbol.line-count = #1
%        \hide Stem
      }
{
  \cimbpart
}


violinone = \relative c'' {
  \globali
  b4.~ |
  b |
  cis |
  fis, |
  gis~ |
  gis~ |
  gis~ |
  gis |
  b'~ |
  b |
  cis |
  fis, |
  gis~ |
  gis |
  gis |
  gis |
  
  
  \ottava #1
  e'4.~ |
  e |
  dis~ |
  dis |
  cis ~ |
  cis8 b cis |
  b4.~ | 
  b \abr
  \ottava #0
  
  gis4.~ |
  gis4 a8 |
  fis4.~ |
  fis4 e8 |
  e4.~ |
  e | \abr
  
  e4. |
  r |
  b~ |
  b |
  dis |
  e | \abr
  
  % page 2
  b |
  e |
  dis8 cis dis |
  e4. |
  e |
  dis | \abr
  
  cis |
  b |
  gis |
  b |
  a8 b a |
  gis4.~ | \abr
  
  gis~\> |
  gis\! |
  r |
  gis' |
  b8 a gis |
  a gis fis | \abr
  
  % page 3
  gis4 e8 |
  gis4. |
  b8 a gis |
  a gis fis |
  gis4 e8 |
  \ottava 1 e'4. |
  dis4 e8 | \abr
  
  cis4 b16 cis |
  b4. |
  gis |
  b8 a gis |
  a gis fis |
  gis4.~\> |
  gis~ | \abr
  
  gis\! | \ottava 0
  r |
  \ottava 1
  fis8 fis fis |
  fis gis a |
  b b b |
  b a gis | \abr
  
  % page 4
  fis fis fis |
  fis gis a |
  b b b |
  b a gis |
  gis4. |
  b8 a gis | \abr
  
  a gis fis |
  gis4. |
  gis |
  b8 a gis |
  a gis fis |
  gis4. |
  e'4 e8 | \abr
  
  dis4 e8 |
  cis4 b16 cis |
  b4 a8 |
  gis4 gis8 |
  b4 a8 |
  gis4 a8 |
  gis4 fis8 | \abr
  
  % page 5
  gis4 gis8 |
  \ottava 0
  b, a gis |
  a gis fis |
  gis4. |
  gis4 gis8 |
  b a gis | \abr
  
  a gis fis |
  gis4. |
  e'4 e8 |
  dis4 e8 |
  b4 b8 |
  b a gis | \abr
  
  gis\pp a b |
  a4 gis8 |
  gis4.~ |
  gis~ |
  gis |
  r | \abr
  
  %page 6
  gis'4.\f |
  b8 a gis |
  a gis fis |
  gis4 e8 |
  gis4. |
  b8 a gis | \abr
  
  a gis fis |
  gis4 e8 |
  e'4. |
  dis4 e8 |
  cis4 b16 cis |
  b4. | \abr
  
  gis4. |
  b8 a gis |
  a gis fis |
  gis4.~ |
  gis~ |
  gis | \abr
  
  % page 7
  r4.
  fis8 fis fis |
  fis gis a |
  b b b |
  b a gis |
  fis fis fis | \abr
  
  fis gis a |
  b b b |
  b a gis |
  gis4. |
  b8 a gis |
  a gis fis | \abr
  
  gis4. |
  gis |
  b8 a gis |
  a gis fis |
  gis4. |
  e4 e8 | \abr
  
  %page 8
  dis4 dis8 |
  cis4 b16 cis |
  b4 a8 |
  gis4 gis8 |
  b4 a8 |
  gis4 a8 | \abr
  
  gis4 fis8 |
  gis'4 gis8 |
  b a gis |
  a gis fis |
  gis4. |
  gis4 gis8 | \abr
  
  b a gis |
  a gis fis |
  gis4. |
  e'4 e8 |
  dis4 e8 |
  b4 b8 | \abr
  
  %page 9
  b a gis |
  gis a b |
  a4 gis8 |
  gis4.~\> |
  gis~ |
  gis\! | \abr
  
  r |
  \ottava 1 e'4.~ |
  e |
  dis~ |
  dis |
  cis~ | \abr
  
  cis8 b cis |
  b4.~ |
  b | \ottava 0 |
  gis4.~ |
  gis4 a8 |
  fis4.~ | \abr
  
  %page 10
  fis4 e8 |
  e4.~ |
  e ~ |
  e |
  r |
  \ottava 1 e'4 e8 | \abr
  
  dis4 e8 |
  b4 b8 |
  b a gis |
  e'4 e8 |
  dis4 e8 |
  b4 b8 | \abr
  
  b a gis |
  gis4 gis8 |
  b a gis |
  a gis fis |
  gis4. |
  gis4 gis8 | \abr
  
  %page 11
  b a gis |
  a gis fis |
  gis4. |
  e'4 e8 |
  dis4 e8 |
  b4 b8 | \abr
  
  b a gis |
  gis a b |
  a4 gis8 |
  gis4.~\> |
  gis~ |
  gis~\! | \abr
  
  gis4 r8\fermata |
  e'4. |
  dis4 e8 |
  b4.^\markup\italic"molto rit." |
  b8 a gis\fermata |
  gis a^\markup\italic"rubato" b |
  a4 gis8^\markup\italic"rit." |
  e'4.\fermata^\markup\italic"cresc." |
  \bar "||"
  
}

violintwo = \relative c'' {
  \globali
  gis4. |
  gis |
  a |
  dis, |
  e~ |
  e~ |
  e~ |
  e |
  gis'~ |
  gis |
  a |
  dis, |
  e~ |
  e |
  e |
  e |
  
  
  
  cis'4.~ |
  cis |
  gis |
  b |
  a~ |
  a8 gis a |
  gis4.~
  gis
  
  e4.~ |
  e~ |
  e |
  dis |
  e~ |
  e
  
  e |
  r |
  gis,~ |
  gis |
  a |
  gis |
  
  gis~ |
  gis |
  a |
  gis |
  cis |
  b |
  
  a |
  gis |
  e |
  gis |
  fis8 gis fis |
  e4.~ |
  
  e~ |
  e |
  r |
  e' |
  gis8 fis e |
  fis e dis |
  
  %page 3
  e4. |
  e |
  gis8 fis e |
  fis e dis |
  e4. |
  gis  |
  fis4 gis8 |
  
  a4 gis16 a |
  gis4. |
  e |
  gis8 fis e |
  fis e dis |
  e4.~ |
  e~ |
  
  e |
  r |
  dis8 dis dis |
  dis e fis |
  gis gis gis |
  gis fis e |
  
  %page 4
  dis dis dis |
  dis e fis |
  gis gis gis |
  gis fis e |
  e4. |
  gis8 fis e |
  
  fis e dis |
  e4. |
  e |
  gis8 fis e |
  fis e dis |
  e4. 
  cis'4 cis8 |
  
  b4 cis8 |
  a4 gis16 a |
  gis4 fis8 |
  e4 e8 |
  gis4 fis8 |
  e4 fis8 |
  e4 dis8 |
  
  %page 5
  e4 e8 |
  gis,8 fis e |
  fis e dis |
  e4. |
  e4 e8 |
  gis fis e |
  
  fis e dis |
  e4. |
  cis'4 cis8 |
  b4 gis8 |
  gis4 gis8 |
  gis fis e |
  
  e fis gis |
  fis4 e8 |
  e4.~ |
  e~ |
  e |
  r |
  
  %page 6
  e'4. |
  gis8 fis e |
  fis e dis |
  e4. |
  e |
  gis8 fis e |
  
  fis e dis |
  e4. |
  gis |
  fis4 gis8 |
  a4 gis16 a |
  gis4. |
  
  e4. |
  gis8 fis e |
  fis e dis |
  e4.~ |
  e~ |
  e |
  
  %page 7
  r |
  dis8 dis dis |
  dis e fis |
  gis gis gis |
  gis fis e |
  dis dis dis |
  
  dis e fis |
  gis gis gis |
  gis fis e |
  e4. |
  gis8 fis e |
  fis e dis |
  
  e4. |
  e |
  gis8 fis e |
  fis e dis |
  e4. |
  gis,4 gis8 |
  
  %page 8
  b4 gis8 |
  a4 gis16 a |
  gis4 fis8 |
  e4 e8 |
  gis4 fis8 |
  e4 fis8 |
  
  e4 dis8 |
  e'4 e8 |
  gis fis e |
  fis e dis |
  e4. |
  e4 e8 |
  
  gis fis e |
  fis e dis |
  e4. |
  gis4 gis8 |
  b4 gis8 |
  gis4 gis8 |
  
  %page 9
  gis fis e |
  e fis gis |
  fis4 e8 |
  e4.~ |
  e~ |
  e |
  
  r |
  cis'~ |
  cis |
  gis |
  b |
  a~ |
  
  a8 gis a |
  gis4.~ |
  gis |
  e~ |
  e~ |
  e |
  
  %page 10
  dis4. |
  e~ |
  e~ |
  e |
  r |
  gis4 gis8 |
  
  b4 gis8 |
  gis4 gis8|
  gis fis e |
  cis'4 cis8 |
  b4 b8 |
  gis4 gis8 |
  
  gis fis e |
  e4 e8 |
  gis fis e |
  fis e dis |
  e4. |
  e4 e8 |
  
  %page 11
  gis fis e |
  fis e dis |
  e4. | gis4 gis8 |
  b4 gis8 |
  gis4 gis8 |
  
  gis fis e |
  e fis gis |
  fis4 e8 |
  e4.~ |
  e~ |
  e~ |
  
  e4 r8 |
  cis'4. |
  b |
  gis |
  gis8 fis e |
  e fis gis |
  fis4 e8 |
  gis4.
}

flute = \relative c'' {
  \globali
  R4.*16
  
  cis4.~^\markup\italic"dolce" |
  cis |
  b8~ b16 a gis fis |
  gis4. |
  a8 b cis~ |
  cis4. |
  b8~ b16 a gis fis |
  gis4.
  
  b4.~ 
  b |
  a~ |
  a |
  gis~ |
  gis
  
  gis |
  r |
  e' |
  gis8 fis e |
  fis e dis |
  e4.
  
  %page 2
  e4. |
  gis8 fis e |
  fis4 dis8 |
  e4 b8 |
  gis4.~ |
  gis |
  
  a |
  b |
  e |
  gis8 fis e |
  fis e dis |
  e4.~ |
  
  e~ |
  e |
  r |
  b~ |
  b |
  dis |
  
  %page 3
  e |
  b4 e8 |
  gis fis e |
  fis4 b,8 |
  e4. |
  cis' |
  b |
  
  a |
  gis |
  e |
  gis8 fis e |
  dis4. |
  e~ |
  e ~ |
  
  e |
  r |
  b4.\mf~ |
  b |
  b8 e4~ |
  e8 b4 |
  
  %page 4
  b4. |
  b4 fis'8 |
  e4.~ |
  e |
  b~ |
  b |
  
  b |
  e |
  b~ |
  b |
  b |
  e |
  gis |
  
  gis |
  e |
  e |
  b4 b8 |
  e4 b8 |
  b4 b8 |
  b4 b8 |
  
  %page 5
  e4 e8 |
  e4. |
  b |
  b |
  e4 e8 |
  e4. |
  
  b |
  b |
  cis |
  dis |
  e |
  cis |
  
  b\pp~ |
  b |
  e~ |
  e~ |
  e |
  r
  
  %page 6
  b4.\f |
  e |
  dis8 e fis |
  e4. |
  b |
  e |
  
  dis8 e fis |
  e4 b8 |
  cis4. |
  b |
  a |
  e' |
  
  b~ |
  b |
  dis8 e fis |
  e4.~ |
  e~ |
  e |
  
  %page 7
  r |
  b~ |
  b |
  e~ |
  e8 b4 |
  b4.~ |
  
  b4 fis'8 |
  e4. |
  e |
  b~ |
  b |
  dis8 e fis |
  
  e4. |
  b |
  e |
  dis8 e fis |
  e4. |
  cis |
  
  %page 8
  b |
  e~ |
  e |
  e~ |
  e~ |
  e |
  
  b |
  e4 e8 |
  gis fis e |
  fis e dis |
  e4. |
  e4 e8 |
  
  gis fis e |
  fis e dis |
  e4. |
  cis' |
  gis |
  e |
  
  %page 9
  b |
  b |
  dis |
  e~ |
  e~ |
  e |
  
  r |
  gis~ |
  gis |
  gis~ |
  gis |
  e~ |
  
  e |
  e~ |
  e |
  b~ |
  b |
  a~ |
  
  %page 10
  a |
  gis~ |
  gis~ |
  gis |
  r |
  cis |
  
  b |
  b |
  cis |
  gis' |
  gis |
  e |
  
  e |
  b |
  e |
  dis |
  e |
  b
  
  %page 11
  e |
  dis |
  e |
  cis |
  b |
  e |
  
  e |
  b |
  b |
  b~\> |
  b~ |
  b~\! |
  
  b4 r8
  gis'4. |
  gis |
  b, |
  cis\fermata  \breathes |
  b |
  b4 b8 |
  b4.\fermata
}

toleft = \change Staff="left"
toright = \change Staff="right"

toup = { \showStaffSwitch \toright}
todown = { \hideStaffSwitch \toleft}

right = \relative c'' {
  \globali
  R4.*16
  \ottava 1
  <cis e gis cis>8.^\markup\italic"dolce" e16 gis cis |
  e8 cis gis |
  dis' b gis |
  dis gis b |
  <cis, e a cis>8. cis16 e a |
  cis8 a e |
  b' b, e |
  gis4.
  \ottava 0
  
  gis8 b, e |
  gis e b |
  << fis'4.~ \\ {e4 b8 } >>
  << {fis'4 e8 } \\ <dis a>4. >>
  <e gis,>8 b e |
  gis e b |
  
  gis8 b e |
  gis e b |
  gis b e |
  gis e b |
  fis' dis b |
  gis b e |
  
    
  %page 2
  gis e b
  gis b e |
  fis dis b |
  gis b e |
  \toleft cis,,16 gis' cis \toright e gis cis |
  \toleft b,, dis gis b \toright dis gis |
  
  \toleft a,, e' a \toright cis e a |
  \toleft gis,, e' gis b \toright e gis |
  b8 e gis |
  e b gis |
  fis e dis |
  <e b gis>4 b8 |
  
  <e b gis>4\cresc b8 |
  <e b gis>4 b8 |
  <e b gis>4 b8 |
  <gis' b,>4--\f e8 |
  <gis b>4 b,8 |
  <dis a'>4 b8 |
    
  %page 3
  <e gis>4 b8 |
  <e gis b>4 b8 |
  <e gis b>4 b8 |
  <dis a'>4 b8 |
  gis'8 e16 gis b e |
  e, cis e gis cis e |
  dis, b dis fis b dis |
  
  cis, a cis e a cis |
  b8 gis16 fis e8 |
  <e gis>8 b <e gis> |
  <gis b> b, <gis' b> |
  <b, dis a'> fis'16 e dis8 |
  <e b gis>4 b'8 |
  <gis b e> <e gis,>16 b <e gis,>8 |
  
  <gis b e> <e gis,>16 b <e gis,>8 |
  <gis b e> gis16 fis e b |
  <dis fis>8 b dis |
  <b dis fis b>4 <dis fis>8 |
  <e gis>8 b e |
  <b e gis b>4 <e gis>8 |
  
  %page 4
  <dis fis> b dis |
  <b dis fis b> fis'16 e dis b |
  <gis' b>8 e gis |
  <e gis b e>4 e16 gis |
  b8 gis e |
  b e gis |
  
  <a dis,>4 b,8 |
  gis'8 e gis |
  b gis e |
  b e gis |
  <dis a'> fis b, |
  e gis b |
  e, gis16 cis e8 |
  
  dis8 b16 gis dis8 |
  cis8 e16 a b cis |
  b8 gis16 e b8 |
  gis' e b |
  gis16 b e gis b8 |
  e8 b a |
  gis b, dis |
  
  %page 5
  e8 gis b |
  e b gis |
  <fis dis>4 b,8 |
  e gis b |
  gis b e |
  gis e b |
  
  fis' b, fis |
  <e gis>4 b8 |
  e8 gis16 cis e8 |
  dis8 b16 gis dis8 |
  e8 gis16 a b cis |
  b8 gis16 e cis8 |
  
  b8\pp e gis |
  <a fis dis b>4 <gis e>8~ |
  <e gis b \parenthesize e>\cresc <e gis,>16 b <e gis,>8 |
  <e gis b e>8\! <e gis,>16 b <e gis,>8 |
  <e gis b e>8 <e gis,>16 b <e gis,>8 |
  <e gis b e>4. |
  
  %page 6
  gis8\f b e |
  gis e b |
  fis' dis b |
  gis b e |
  gis e b |
  gis b e |
  
  fis dis b |
  e b gis |
  e gis cis |
  dis b gis |
  a cis e |
  b gis e |
  
  b e16 gis b8 |
  e b gis |
  fis b dis |
  <gis, b e> <e gis,>16 b <e gis,>8 |
  <gis b e> <e gis,>16 b <e gis,>8 |
  <gis b e> <e gis,>16 b <e gis,>8 |
  
  %page 7
  <gis b e>4 e8 |
  <dis fis> b dis |
  <b dis fis b>4 <dis fis>8 |
  <e gis> b e |
  <b e gis b>4 <e gis>8 |
  <dis fis> b dis |
  
  <b e gis b>8 fis'16 e dis b |
  <gis' b>8 e gis |
  <e gis b e>4 e16 gis |
  b8 gis e |
  b e gis |
  <dis a'>4 b8 |
  
  gis' e gis |
  b gis e |
  b e gis |
  <a dis,> fis b, |
  e gis b |
  e, gis16 cis e8 |
  
  %page 8
  dis8 b16 gis dis8 |
  cis e16 a b cis |
  b8 gis16 e b8 |
  gis' e b |
  gis16 b e gis b8 |
  e b a |
  
  gis b, dis |
  e gis b |
  e b gis |
  <dis fis>4 b8 |
  e gis b |
  gis b e |
  
  gis e b |
  e b fis |
  <e gis>4 b8 |
  e gis16 cis e8 |
  dis b16 gis dis8 |
  e gis16 a b cis |
  
  %page 9
  b8 gis16 e cis8 |
  b e gis |
  <a fis dis b>4 << { <gis e>8~ <e gis b e>4 r8 } \\ { s8 r <e gis,>16 b <e gis,>8} >>|
  << { <gis b e>4 r8 } \\ { r8 <e gis,>16 b <e gis,>8 } >>
  << { <gis b e>4 r8 } \\ { r8 <e gis,>16 b <e gis,>8 } >>
  
  <gis b e>4. |
  cis16\f gis cis, e gis cis  |
  e e, cis' e, gis e |
  dis' b gis dis gis b |
  dis dis, b' dis, gis dis |
  cis' a e cis e a |
  
  cis cis, a' cis, e cis |
  b' gis e b e gis |
  b b, gis' b, e b |
  gis' e b gis b e |
  gis gis, e' gis, b gis |
  fis' e b gis b e |
  
  %page 10
  fis dis b fis b dis |
  e b e gis b gis |
  e8 <gis e'>16 b gis8 |
  e <gis e'>16 b gis8 |
  e <gis e'>16 b gis8 |
  e16 gis cis8 e |
  
  dis,16 gis b8 dis |
  e, gis b |
  e b gis |
  e' cis gis |
  dis' b gis |
  e gis b |
  
  e b gis |
  e gis16 b e8 |
  <b gis> <a fis> <gis e> |
  <fis dis>4 b,8 |
  e8 gis b |
  gis b e |
  
  %page 11
  gis e b |
  fis' b, fis |
  e gis b |
  <e, gis cis e>4. |
  <dis gis b dis> |
  <e gis b cis> |
  
  <e gis b> |
  b8 e gis |
  dis fis b |
  e16\> b gis e gis b |
  e b gis e gis b |
  e b gis e gis b\pp |
  
  e4\pp r8 |
  <cis gis e cis>4. |
  <b gis dis b> |
  <b gis e a,> |
  <b gis e cis gis>\arpeggio\fermata \breathes |
  <gis e b> |
  <a fis dis b> |
  <b, e gis b e>\fermata\arpeggio

}

left = \relative c {
  \globali
  R4.*16
  
  <cis cis,>4.~
  q |
  <b b,>~
  q |
  <a a,>~
  q |
  <e' e,>~
  q
  
  q~ |
  q |
  <b b,>~ |
  q |
  <e e,>~ |
  q~ |
  
  q~
  q |
  q--~ |
  q |
  <b b,> |
  <e e,> |
  
  %page 2
  q--~ |
  q |
  <b fis b,> |
  <e e,> |
  \voiceTwo <cis cis,>
  <b b,> |
  
  <a a,> |
  <gis gis,> |
  \oneVoice
  <e' e,>~ |
  q |
  <b b,> |
  <e e,>4-> b8 |
  
  <e b e,>4-> b8 |
  <e b e,>4-> b8 |
  <e b e,>4-> b8 |
  <e e,>4.--~ |
  q |
  <b fis b,> |
  
  %page 3
  <e e,> |
  q~ |
  q |
  <b fis b,> |
  <e e,> |
  <cis cis,> |
  <b b,> |
  
  <a a,> |
  <gis gis,> |
  <e' e,> |
  q |
  <b fis b,> |
  <e e,>4-> b8 |
  <e b e,>4-> b8 |
  
  <e b e,>4-> b8 |
  <e e,>4.-> |
  <b b,>4 fis8 |
  <b b,>4 fis8 |
  <e' e,>4 b8 |
  <e e,>4 b8 |
  
  %page 4
  <b b,>4 fis8 |
  <b b,>4 fis8 |
  <e' e,>4 b8 |
  <e e,>4 b8 |
  <e e,>4.
  <e e,>
  
  <b fis b,> |
  <e e,> |
  q~ |
  q |
  <b fis b,> |
  <e e,> |
  <cis' cis,> |
  
  <b b,> |
  <a a,> |
  <gis gis,> |
  <e e,>~ |
  q |
  q |
  <b b,> |
  
  %page 5
  <e e,> |
  q |
  <b fis b,> |
  <e e,>4 b8 |
  <e e,>4.
  q |
  
  <b fis b,> |
  <e e,> |
  <cis' cis,> |
  <b b,> |
  <e, a,> |
  <gis cis,> |
  
  <e e,> |
  <b b,> |
  <e e,>4 b8 |
  <e b e,>4 b8 |
  <e b e,>4 b8 |
  <e b e,>4 <b b,>8 |
  
  %page 6
  <e e,>4.->~ |
  q |
  <b fis b,> |
  <e e,> |
  q->~ |
  q |
  
  <b fis b,> |
  <e e,> |
  <cis' cis,> |
  <b b,> |
  <a a,> |
  <gis gis,>
  
  <e e,> |
  q |
  <b fis b,> |
  <e e,>4 b8
  <e b e,>4 b8
  <e b e,>4 b8
  
  %page 7
  <e e,>4. |
  <b fis b,>4 fis8 |
  <b fis b,>4 fis8 |
  <e' e,>4 b8 |
  <e e,>4 b8 |
  <b fis b,>4 fis8 |
  
  <b fis b,>4 fis8 |
  <e' e,>4 b8 |
  <e e,>4 b8 |
  <e e,>4 b8 |
  <e e,>4 b8 |
  <b fis b,>4 fis8 |
  
  <e' e,>4 b8 |
  <e e,>4 b8 |
  <e e,>4.
  <b fis b,>4 fis8 |
  <e' e,>4.
  <cis cis,>
  
  %page 8
  <b' b,> |
  <a a,> |
  <gis gis,> |
  <e e,> |
  q |
  q |
  
  <b' b,> |
  <e, e,> |
  q |
  <b fis b,> |
  <e e,> |
  q |
  
  q |
  <b fis b,> |
  <e e,> |
  <cis' cis,> |
  <b b,> |
  <e, a,> |
  
  %page 9
  <gis cis,> |
  <e e,> |
  <b' b,> |
  <e, e,>4 b8 |
  <e e,>4 b8 |
  <e e,>4 b8 |
  
  <e e,>4. |
  <cis cis,>~ |
  q |
  <b b,>~ |
  q |
  <a a,>~ |
  
  q |
  <gis gis,>~ |
  q |
  <e' e,>~ |
  q |
  <b b,> |
  
  %page 10
  q |
  <e e,>~ |
  q~ |
  q~ |
  q |
  <cis' cis,> |
  
  <b b,> |
  <a e a,> |
  <cis gis cis,> |
  <cis cis,> |
  <b b,> |
  <a a,> |
  
  <cis cis,> |
  <e, e,> |
  q |
  <b' b,> |
  <e, e,> |
  q |
  
  %page 11
  q |
  <b' b,> |
  <e, e,> |
  <cis' cis,> |
  <b b,> |
  <a a,> |
  
  <gis cis,> |
  <e e,> |
  <b' b,> |
  <e, e,>~ |
  q~ |
  q~ |
  
  q4 r8\fermata |
  <cis cis,>4. |
  <b b,> |
  <a a,> |
  <e e,>\fermata\sustainOn |
  <e' e,> |
  <b b,> |
  <e, e,>\fermata 
}  


 
violiniPartOne = \new Staff \with {
  instrumentName = "Violin 1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} <<
    \markss
     \oneVoice \violinone
  >>
  
violiniPartTwo = \new Staff \with {
  instrumentName = "Violin 2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} <<
    \markss
     \oneVoice \violintwo
  >>

violiniPartS = <<
  \violiniPartOne
  \violiniPartTwo
>>

violiniPart = \new Staff \with {
  instrumentName = "Violini"
  shortInstrumentName = \markup \right-column { "V1" "V2" }
  midiInstrument = "violin"
} <<
    \markss
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl"
  midiInstrument = "flute"
} <<
     \markss
     \oneVoice \flute
  >>
  
pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  
  \new Staff = "right"  << \markss \right >>
  \new Staff = "left"  { \clef bass \left }
>>




\bookpart {
  \header { piece = "Piano" }
  \score {
      \transpose e es {
    \pianoPart      
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper { system-separator-markup = \slashSeparator }
  \header { piece = "Violini" }
  \score {
      \transpose e es {
    \violiniPartS
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header { piece = "Flute" }
  \score {
      \transpose e es {
    \flutePart
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper { system-separator-markup = \slashSeparator }
  \header { piece = "Instruments" }
  \score {
      \transpose e es
      {
    <<
      \drumPart
    \violiniPart
    \flutePart
    \pianoPart      
    >>
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}



\include "articulate.ly"

% midi output
\bookpart {
  \score {
    \unfoldRepeats \articulate
    %  \transpose c bes {
    <<
      \drumPart
      \flutePart
      \violiniPart
      \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 8=160
    }
  }
}

