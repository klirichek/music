\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
    \set Score.markFormatter = #format-mark-box-numbers
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

\header {
  title = "О микрос Христос"
  composer = " "
  %arranger = "arranger"
%  poet = "poet"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
 
  \time 4/4
  \numericTimeSignature
    \set Score.markFormatter = #format-mark-box-numbers
      \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \override MultiMeasureRest.expand-limit = #2
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

abr = { \break }
%abr = {}

scoreVoice = \relative c'' {
  \global
   \key b \major
  \dynamicUp
  \autoBeamOff
%  \tempo "Andantino"
  R1*4
  \mark \default
  dis2 cis8[ dis] e[ ais,] |
  b2. dis8[ e] |
  fis2 gis8[ ais] gis[ dis] |
  cis2. r8 gis'16[ fis] |
  gis8[ fis16 e]~ e4 ais8[ b] cis[ ais] | \abr
  
  fis2 \tuplet 3/2 { dis4 cis b} |
  fis'2 cis8[ dis16 e~] e8[ ais,] |
  b2. r8 cis8 |
  \mark \default 
  dis2 cis8[ dis] e[ ais,] |
  b2. dis8[ e] |
  fis2 <gis b>8[ <ais cis>] <gis b>[ <dis gis>] | \abr
  
  fis2. r8 gis16[ fis] |
  gis2 ais8[ b] cis[ ais] |
  <fis dis>2 dis4 cis8[ b] |
  fis'2 cis8[ dis16 e~] e8[ ais,16 b~] |
  b2~ b8[ cis] dis[ cis] |
  \mark \default
  dis2 cis8[ dis] e[ ais,] | \abr
  
  b2. dis8[ e] |
  fis2 gis8[ ais] gis[ dis] |
  cis2. r8 gis'16[ fis] |
  gis8[ fis16 e~] e4 ais8[ b] cis[ ais] |
  fis2 \tuplet 3/2 { dis4 cis b } |
  fis'2 cis8[ dis16 e~] e8[ ais,16 b~] | \abr
  
  b2. r4 |
  \mark \default 
  \key c\major <c c'>2 <b b'> |
  <c c'>2 r4 r |
  b'2 <a c>8[ <b d>] <a c>[ <e c>] |
  g2. r8 a16[ g] |
  a8[ g16 f~] f4 b8[ c] d[ b] | \abr
  
  g2 \tuplet 3/2 { e4 d c } |
  g'2 d8[ e16 f~] f8[ b,16 c~] |
  c2~ c8[ d] e[ c] |
  g'2 f8[ e16 f~] f8[ b,16 c~] |
  c1~ |
  c
}

sone = \relative c' {
  
  fis2 e8 fis g cis, |
  d2 r8 d fis g |
  a2 b8 cis b fis |
  e2. r8 b'16 a |
  b8 a16 g~ g4 cis8 d e cis |
  a2 \breathe \tuplet 3/2 { fis4 e d } |
  a'2 e8 fis16 g~ g4 |
  d2
}

sthree = \relative c'' {
  a2 g |
  fis2. r4 |
  a2 b4 d |
  cis2. r4 |
  b2 cis4 e |
  fis2 d |
  cis cis |
  d2~ d8
}

sopvoice = \relative c' {
  \global
   \key d \major
  \dynamicUp
  \autoBeamOff
%  \tempo "Andantino"
  R1*3
  r2 r8
  a8 d e \sone r8 
  a,8 d e\sone r2
  \sthree 
  \key es \major bes8 es f \transpose d es \sone 
  r2
  R1*3
  \bar "|."
%  s1*2
}


aone = \relative c' {
  
  d2 cis8 cis cis cis |
  d2 r8 d8 fis g |
  fis2 g8 a g fis |
  e2. r8 g16 fis |
  g8 fis16 g~ g4 a8 b a a |
  fis2 \breathe \tuplet 3/2 { fis4 e d } |
  e2 e8 e16 cis~ cis8 cis |
  d2 
}

athree = \relative c' {
  fis2 e |
  d2. r4 |
  fis2 g4 b |
  a2. r4 |
  g2 a4 cis |
  d2 b |
  a2 a4 g |
  fis g fis8
}

altvoice = \relative c' {
  \global
   \key d \major
  \dynamicUp
  \autoBeamOff
%  \tempo "Andantino"
  R1*3
  r2 r8
  a8 d e \aone r8
  a,8 d e \aone r2
  \athree
  \key es\major bes8 es f \transpose d es \aone

}

scoreVoiceL = \lyricmode {
  
}

scoreVoiceLL = \lyricmode {
 
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c''' {
  \global
  \key d \major
  \dynamicNeutral
  << \voiceOne <a d fis a>1 \new Voice { \voiceThree r4 r8. fis,16 a2 } \new Voice { \voiceTwo s2 s8 \D d,16[ d'] \U fis[ a d8] } >>
  << \voiceOne <a d g a>1 \new Voice { \voiceThree r4 r8. g,16 a2 } \new Voice { \voiceTwo s2 s8 \D d,16[ d'] \U fis[ a d8] } >>
  << \voiceOne <e, g b e>1 \new Voice { \voiceThree r4 r8. e,16 a2 } \new Voice { \voiceTwo s2 s8 \D e16[ e'] \U g[ b e8] } >>
  << { <d, fis a d>2 a4 <d b g>8[ <e cis a>]} \\ { \voiceTwo r4 \D d,8[ <e g>] \U a8[ \mark \default  fis] } >>
  \bar "||" \abr
  
  \oneVoice <a d fis>4 <d, fis a> <cis e a> q |
  <fis a>8 d <g b> d <fis a> d <fis a>4 |
  <a fis cis>4 q <b g d> <d b g> |
  <d a g d> <cis a e> <b g>8 e, <a cis>4 |
  <b g d> q <a e cis> q | \abr
  
  <a fis cis> q <a fis d> q |
  <a e d> q q <a cis,>8 e |
  <a fis d>4 <b g d> <a fis d>8[ \mark \default d,] fis[ a] |
 <a fis d'>8 d, <a' fis> d, <a' e> cis, <a' e> cis,
  <a' fis> d, <g b e> fis' <d a> fis, <a fis> d, |
  <fis a> cis <fis a> cis <g' b> d <b' d g>8 fis | \abr
  
  <d' e>8 a b a <g e cis> fis e cis |
  << { b'8 a16 g~ g4 } \\ { g8 d d g } >> <e a> cis <a' cis e>8 fis |
  r8 cis' <d a fis> e <d b> fis, <d' fis b> b |
  <d e a>8 a <d e> a <e a cis>4 <a cis e>8 g |
  <a fis> d, <b' g> d, <fis a> d <g a> cis, |
  \mark \default <fis a d> d <d fis a> <fis a d> <a e cis> cis <a e cis> e | \abr
  
  <fis a> d <g b e> fis' <d a> fis, <d' a> g, |
  <a cis> fis <a cis> fis <g b> d <g b> d |
  <g a d>  d <g b> a <g cis,> fis <e cis> a |
  <g b> d <g b> d <e a> d <e a> cis |
  r8 cis' <d a fis> e <d b>8 fis, <b fis> d, |
  <e a>8 d <e a> d <a' cis> e <e a> cis | \abr
  
  <a' g> d, <g b> d <fis a> \key es\major f <as es' f as> <d f> |
   
  \mark \default  <bes es g>16 g bes es <bes bes'>8 g' <f d bes> <g es> <as es bes> <f d> |
  <g es>16 bes, c es <f d>8 bes, <es g> bes <bes es g> as' |
  <bes g d>16 bes, d g <bes bes,>8 <g d> <as es c> as, <as' es c> as, |
  <bes' es,> <f bes,> <es as> g <f bes,> es d bes |
  <as c> es <as c es> f' <bes, d> f < d' f> bes | \abr
  
  <g bes d> g <bes es> f' <es c> g, <c es> g'|
  <es c f,>8 f <es c f,> f <d as> f <d as> f |
  <es bes> as, <c es> as <bes es> g <bes es> g' |
  <d bes f> f <d as f> f <d bes f>4 <bes f c>8 d, |
  <es as c es> 4 <as c es as> <es' c as es> <c as es c> |
  <bes f bes,>8 g es'16 g es'8 g4\fermata \ottava 1 <es' bes g es> \bar "|."
  
  
}

scoreInstrLeft = \relative c {
  \global
  \dynamicUp
  \key d \major
  <d d,>1 |
  <d d'> |
  <d d'> |
  <d d,> | \abr
  
  <d d,>2 <a a'> |
  <d d,>1 |
  <fis fis,>2 <g g,> |
  <a a,> <a a,>4 a, |
  <g' g,>2 <a a,> | \abr
  
  <fis fis,> <b b,> |
  <a a,>~ <a a,>4 <a, a,> |
  <d d,>1 |
  <d d,>2 a4 a' |
  <d, d,>2. d4 |
  <fis fis,>2 <g g,>2 | \abr
  
  <a a,>2. q4 |
  <g g,>4 g <a a,>2 |
  <fis fis,>4 a8[ cis] b4 b, |
  <a' a,>2. a,,8[ a'] |
  <d d,>4 d <d d,> <a a'> |
  <d d,> a' <a a,> <a, a,> | \abr
  
  <d d,> <a a'> <d d,>2 |
  <fis fis,>4 fis <g g,> g |
  <a a,> a,8[ a'] e4 <a a,> |
  <g g,>4 g <a a,> a |
  <fis fis,>4 fis <b b,> b |
  <a, a'> a' <a a,> <a, a,> | \abr
  
  <d d,>4 <g g,> <d d,>8~ \key es\major q  <bes bes,>8[ <bes bes'>] |
  
  <es es,>4 <es es'> <bes bes'> f'' |
  <es, es,> bes' <es, es,> <es es'> |
  <g g,> g <as as,> es' |
  <bes bes,> f' <bes, bes,>4 <bes, bes,> |
  <as, as'> es''' <bes, bes,> f'' | \abr
  
  <g, g,> f' <c c,> <c, c,> |
  <bes bes'>4 bes' <bes, bes'> <bes bes,> |
  <es es,> <as as,> <es es,>2 |
  <bes bes'>4 f'' <bes,, bes,>2 |
  <as as,>4. q8 q2 |
  \ottava -1 <es es,>1
  
}

flintro = \relative c'' {
  d1 |
  d |
  e |
  fis2. r4
}

flone = \relative c'' {
  d2 a'4. g8 |
  fis4 a8 b a4 r |
  fis2 g8 a b d |
  cis4 b a r |
  g b cis e |
  fis d \breathe fis,2 |
  a e |
  d r8
}

fltwo = \relative c'' {
  a8 d e |
  fis2 e8 fis g cis, |
  d2 r8 d fis g |
  a2 b8 cis b fis |
  e2. r8 b'16 a |
  b,8 a16 g~ g4 cis8 d e cis |
  a2 \breathe \tuplet 3/2 { fis'4 e d } |
  a'2 e8 fis16 g~ g8 cis, |
  d2. r4
}

flthree = \relative c''' {
  a4. g16 fis e4 cis |
  d8 a e' fis d4 r |
  b fis' g b8[ d] |
  cis4 b8 a g fis e r |
  
  g4. e16 d cis4. e8 |
  fis4( a) \tuplet 3/2 { fis4 e d } |
  a'8 e16 d cis4 cis8 a16~ a g4 |
  fis4 g a8  \key es\major bes es f |
  es2 d4. bes16 as |
  g4 bes r r |
  
  g'2 as8 bes c es |
  d4 c bes r8 c16 bes |
  c8 bes16 as~ as4 d8 es f d |
  
  bes2 \tuplet 3/2 { g4 f es } |
  bes'2 f8 g16 as~ as d, es8~ |
  es2~ es8 f g es |
  
  bes'8 c bes4 f8 es d bes |
  c4 es as c8 d |
  es1\fermata \bar "|."
  
}

flpart = \relative c {
  \global
  \key d\major
  \flintro
  \flone
  \fltwo
  \flthree
}

flscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "Fl"
  midiInstrument = "flute"
} {
  \flpart
}

vloneintro = \relative c'' {
  a1 |
  a |
  b |
  d2 r8 a d e 
}

vloneup = \relative c'' {
  fis4 d cis8 d e cis |
  d2( fis) \breathe |
  cis d |
  e4 d cis r |
  d2 e4 cis |
  d2 \breathe fis |
  e cis |
  d r4 r
}

vlonedown = \relative c'' {
  d2 a |
  a( d) |
  a b |
  a2. r4 |
  b2 a |
  a d |
  cis a4 g |
  fis2 r4 r
}

vltwointro = \relative c' {
 fis1 |
 g |
 g |
 a2 r8 a d e
}

vltwoup = \relative c'' {
  d2 cis4 a |
  a b8. a16~ a8 r r4 |
  fis'2 g4 g8 fis |
  e4 d cis b8. a16 |
  g4 b cis8 d e g |
  fis2 \breathe d |
  cis cis8 d16 cis~ cis8 a |
  a4 b8. a16~ a8  d,4 e8
}

vlthreeup = \relative c' {
  fis2 e8 fis g cis, |
  d2 r8 d fis g |
  a2 b8 cis b fis |
  e2. r8 b'16 a |
  b8 a16 g~ g4 cis8 d e cis |
  a2 \breathe \tuplet 3/2 { fis4 e d } |
  a'2 e8 fis16 g~ g8 cis, |
  
  d4 g fis8 \key es\major d' es4^\markup\italic"+1↑" |
  
  g2 f8 bes as f |
  es4 f g r |
  
  bes2 as4. g8 |
  f4 es d r |
  c es d f |
  g2 es |
  d4 es d4. bes8|
  bes4 c8 as g4 bes |
  d2 d |
  c es4 as |
  bes1 \bar "|."
}

vltwodown = \relative c'' {
  a2 g |
  fis4 g8. fis16~ fis8 r r4 |
  cis'2 d |
  cis4 b a g8. fis16 |
  e4 g a8 b cis e |
  d cis~ cis4 \breathe b2 |
  a a4 g |
  fis g8. fis16~ fis8 d4 e8
}

vlthreedown = \relative c' {
  d2 cis4 cis |
  d2 r8 d fis g |
  fis2 g8 a g fis |
  e2. r8 g16 fis |
  g8 fis16 g~ g4 a8 b a4 |
  fis2 \tuplet 3/2 { fis4 e d } |
  e2 e8 d16 e~ e8 cis |
  
  d4 e d8 \key es\major d' es4 |
  es2 d |
  bes4 d es r |
  
  d2 c |
  bes2. r4 |
  as4 c bes d~ |
  
  d2 c |
  bes4 c bes as |
  g as8 f es4 g |
  
  bes2 bes
  as c4 es |
  g1
}

vlpartup = \relative c {
  \global
  \voiceOne
  
  \key d\major
  \vloneintro
  \vloneup
  \vltwoup
  \vlthreeup
}

vlpartdown = \relative c {
  \global
  \voiceTwo
  \key d\major
 \vltwointro
  \vlonedown
  \vltwodown
  \vlthreedown
}

vlscore = \new Staff \with {
  instrumentName = "Archi"
  shortInstrumentName = "A"
  midiInstrument = "violin"
} {
  << \vlpartup  \\ \vlpartdown >>
}

viscore = \new Staff \with {
  instrumentName = "V1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} { \vlpartup }

viiscore = \new Staff \with {
  instrumentName = "V2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} { \vlpartdown }

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreInstrLeft }
  >>
  
lyricscore = \lyricmode {
%   \set stanza = \markup { \dynamic "mf" } An -- gels we have heard on high
%  Swee -- tly sing -- ing o'er the plains,
  
%  \lyricscorea

 \set stanza = "1. " Ско -- рпа́ сти г'и́ а́ -- стро фо -- ти -- но́
 Та о -- са -- нна́ ап тон у -- ра -- но́
 И ха -- ра́ θа рθи́
 Ме́ -- са а~пта́ -- г'ье фос
 Сан Г'е -- ни -- θи́, о_ми -- кро́с Хри -- стос
 
 \set stanza = "2. "  Ка́ -- нон э -- вхи́ мэс ап тин кар -- дья́
 О́ лис тис г'ис та ми -- кра́ пэ -- дья́
 На хи θи́ па -- нду́ тис аг' -- а́ -- пис фос,
 Сан Г'е -- ни -- θи́, о_ми -- кро́с Хри -- стос
 
 \set stanza = "3. " А... \repeat unfold 14 \skip 1
 
 \set stanza = "4. " Ро -- ди́ -- зи~ав -- ги́ ме́ -- са сти́н пси -- хи́
 яа -- г'а́ -- пи зи́ ке мас о -- ди -- ги́
 Ки сти Ви -- фле -- е́м сто у -- ра́ -- нью фос,
 
 Сан Г'е -- ни -- θи́, о_ми -- кро́с Хри -- стос
  

}  

scorechoir = \new ChoirStaff <<
         \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S" "A"  } }
        shortInstrumentName = \markup { \right-column { "S" "A"  } }
        midiInstrument = "voice oohs"
      } << 
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \lyricscore }
%       \scoreVoicePart
     >>




\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \scorechoir
    >>
    \layout { 
      \context {
        \Score       skipBars = ##t
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
  piece = "Choir + Piano"
  }
  \score {
  %  \transpose f fis
    <<
     \scorechoir
      \scoreInstrPart
    >>
    \layout {}
  }
}

\bookpart {
  \header {
  piece = "Violini"
  }
  \score {
  %  \transpose f fis
    <<
     \viscore
     \viiscore
    >>
    \layout {}
  }
}

\bookpart {
  \header {
  piece = "Flute"
  }
  \score {
  %  \transpose f fis
    <<
     \flscore
    >>
    \layout {}
  }
}

\bookpart {
  \header {
  piece = "Instruments"
  }
  \score {
  %  \transpose f fis
    <<
     \flscore
     \vlscore
      \scoreInstrPart
    >>
    \layout {}
  }
}

\bookpart {
  \header {
  piece = "Conductor"
  }
  \score {
  %  \transpose f fis
    <<
     
     \flscore
     \vlscore
     \scorechoir
     \scoreInstrPart
    >>
    \layout {}
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
     
     \flscore
     \vlscore
     \scorechoir
     \scoreInstrPart
    >>
    \midi { \tempo 4=90 }
  }
}

