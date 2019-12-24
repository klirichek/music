\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

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
  title = "title"
  composer = "composer"
  %arranger = "arranger"
  poet = "poet"
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
  g,8 cis d \key c\major \transpose d c \sone 
  s2
  s1*3
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
  g,8 cis d \key c\major \transpose d c \aone

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

righttrans = \relative c''' {
  \key b \major
  \dynamicNeutral
  << \voiceOne <fis b dis fis>1 \new Voice { \voiceThree r4 r8. dis,16 fis2 } \new Voice { \voiceTwo s2 s8 \D b,16[ b'] \U dis[ fis b8] } >>
  << \voiceOne <fis b e fis>1 \new Voice { \voiceThree r4 r8. e,16 fis2 } \new Voice { \voiceTwo s2 s8 \D b,16[ b'] \U dis[ fis b8] } >>
  << \voiceOne <cis, e gis cis>1 \new Voice { \voiceThree r4 r8. cis,16 fis2 } \new Voice { \voiceTwo s2 s8 \D cis16[ cis'] \U e[ gis cis8] } >>
  << { <b, dis fis b>2 fis4 <b gis e>8[ <cis ais fis>]} \\ { \voiceTwo r4 \D b,8[ <cis e>] \U fis8[ dis] } >>
  \bar "||" \abr
  
  \oneVoice \mark \default <b dis fis>4 q <ais cis fis> q |
  <dis fis>8 b <e gis> b <dis fis> b <dis fis>4 |
  <fis dis ais>4 q <gis e b> <b gis e> |
  <b fis e b> <ais fis cis> <gis e>8 cis, <fis ais>4 |
  <gis e b> q <fis cis ais> q | \abr
  
  <fis dis ais> q <fis dis b> q |
  <fis cis b> q q <fis ais,>8 cis |
  <fis dis b>4 <gis e b> <fis dis b>8[ b,] dis[ fis] |
  \mark \default <fis dis b'>8 b, <fis' dis> b, <fis' cis> ais, <fis' cis> ais,
  <fis' dis> b, <dis gis cis> dis' <b fis> dis, <fis dis> b, |
  <dis fis> ais <dis fis> ais <e' gis> b <e gis b e>4 | \abr
  
  <b' cis>8 fis gis fis <e cis ais> dis cis ais |
  << { gis'8 fis16 e~ e4 } \\ { e8 b b e } >> <cis fis> ais <cis fis ais cis>4 |
  r8 ais' <b fis dis> cis <b gis> dis, <b' dis gis> gis |
  <b cis fis>8 fis <b cis> fis <cis fis ais>4 <fis ais cis>8 e |
  <fis dis> b, <gis' e> b, <dis fis> b <e fis> ais, |
  \mark \default <dis fis b> b <b dis fis> <dis fis b> <fis cis ais> ais <fis cis ais> cis | \abr
  
  <dis fis> b <e gis cis> dis' <b fis> dis, <b' fis> dis, |
  <fis ais> dis <fis ais> dis <e gis> b <e gis> b |
  <e fis b>  b <e gis> fis <e ais,> dis <cis ais> fis |
  <e gis> b <e gis> b <cis fis> b <cis fis> ais |
  r8 ais' <b fis dis> cis <b gis>8 dis, <gis dis> b, |
  <cis fis>8 b <cis fis> b <fis' ais> cis <cis fis> ais | \abr
  
  <fis' e> b, <e gis> b <dis fis> b <d ais' b d> <g b> |
}

scoreInstrRight = \relative c'' {
  \global
   \transpose b d \righttrans
   
  \mark \default \key c\major <g c e>16 e g c <g g'>8 e' <d b g> <e c> <f c g> <d b> |
  <e c>16 g, a c <d b>8 g, <c e> g <g c e> f' |
  <g e b>16 g, b e <g g,>8 <e b> <f c a> f, <f' c a> f, |
  <g' c,> <d g,> <c f> e <d g,> c b g |
  <f a> c <f a c> d' <g, b> d < b' d> g | \abr
  
  <e g b> e <g c> d' <c a> e, <a c> e'|
  <c a d,>8 d <c a d,> d <b f> d <b f> d |
  <c g> f, <a c> f <g c> e <g c> e' |
  <b g d> d <b f d> d <b g d>4 <g d a>8 b, |
  <c f a c> 4 <f a c f> <c' a f c> <a f c a> |
  <g d g,>8 e c'16 e c'8 e4\fermata \ottava 1 <c' g e c> \bar "|."
  
  
}

lefttrans = \relative c' { \key b \major
  \dynamicUp
  <b b,>1 |
  <b b'> |
  <b b'> |
  <b b,> | \abr
  
  <b b,>2 <fis fis'> |
  <b b,>1 |
  <dis dis,>2 <e e,> |
  <fis fis,> <fis fis,>4 fis, |
  <e' e,>2 <fis fis,> | \abr
  
  <dis dis,> <gis gis,> |
  <fis fis,> <fis fis,>4 <fis, fis,> |
  <b b,>1 |
  <b b,>2 fis' |
  <b, b,> b |
  <dis dis,> <e e,>2 | \abr
  
  <fis fis,>2. q4 |
  <e e,>4 e <fis fis,>2 |
  <dis dis,>4 fis8[ ais] gis4 gis, |
  <fis' fis,>2. fis8[ fis,] |
  <b b,>4 b <b b,> <fis fis'> |
  <b b,> fis' <fis fis,> <fis, fis,> | \abr
  
  <b b,> <fis fis'> <b b,>2 |
  <dis dis,>4 dis <e e,> e |
  <fis fis,> fis,8[ fis'] cis4 <fis fis,> |
  <e e,>4 e <fis fis,> fis |
  <dis dis,>4 dis <gis gis,> gis |
  <fis, fis'> fis' <fis fis,> <fis, fis,> | \abr
  
  <b b,>4 <e e,> <b b,> g8[ g'] |
   }

scoreInstrLeft = \relative c {
  \global
   \transpose b d \lefttrans
  \key c\major <c c,>4 <c c'> <g g'> d'' |
  <c, c,> g' <c, c,> <c c'> |
  <e e,> e <f f,> c' |
  <g g,> d' <g, g,>4 <g, g,> |
  <f, f'> c''' <g, g,> d'' | \abr
  
  <e, e,> d' <a a,> <a, a,> |
  <g g'>4 g' <g, g'> <g g,> |
  <c c,> <f f,> <c c,>2 |
  <g g'>4 d'' <g,, g,>2 |
  <f f,>4. q8 q2 |
  \ottava -1 <c c,>1
  
}


flone = \relative c'' {
  d2 a'4. g8 |
  fis4 a8 b a4 r |
  fis2 g8 a b d |
  cis4 b a r |
  g b cis e |
  fis d \breathe a2 |
  a e |
  d r8
}

fltwo = \relative c'' {
  a8 d e |
  fis2 e8 fis g cis, |
  d2 r8 d fis g |
  a2 b8 cis b a |
  e2. r8 b16 a |
  b8 a16 g~ g4 cis8 d e cis |
  a2 \breathe \tuplet 3/2 { fis4 e d } |
  a'2 e8 fis16 g~ g8 cis, |
  d2. r4
}

flpart = \relative c {
  \global
  \key d\major
  s1*4
  \flone
  \fltwo
  
  s1*19
}

flscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "Fl"
  midiInstrument = "flute"
} {
  \flpart
}


vloneup = \relative c'' {
  r2 r8 a d e |
  fis4 d cis8 d e cis |
  d2( fis) \breathe |
  cis d |
  e4 d cis r |
  e2 e4 cis |
  d2 \breathe fis |
  e cis |
  fis r4 r
}

vlonedown = \relative c'' {
  d2 a |
  a( d) |
  a b |
  a2. r4 |
  b2 a |
  a cis |
  cis a4 g |
  fis2 r4 r
}

vltwoup = \relative c'' {
  d2 cis4 a |
  a b8. a16~ a8 r r4 |
  fis'2 g4 fis |
  e d cis b8. a16 |
  g4 b cis8 d e g |
  a2 \breathe d |
  cis cis8 d16 cis~ cis8 a |
  a4 b8. a16~ a8 r8 r4
}

vltwodown = \relative c'' {
  a2 g |
  fis4 g8. fis16~ fis8 r r4 |
  cis'2 d |
  cis4 b a g8. fis16 |
  e4 g a8 b cis e |
  d cis~ cis4 \breathe b2 |
  a a4 g |
  fis g8. fis16~ fis8 r r4
}

vlpartup = \relative c {
  \global
  \voiceOne
  
  \key d\major
  R1*3
  \vloneup
  \vltwoup
  s1*19
}

vlpartdown = \relative c {
  \global
  \voiceTwo
  \key d\major
  R1*4
  \vlonedown
  \vltwodown
}

vlscore = \new Staff \with {
  instrumentName = "Archi"
  shortInstrumentName = "A"
  midiInstrument = "violin"
} {
  << \vlpartup  \\ \vlpartdown >>
}

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



\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \new ChoirStaff <<
         \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S" "A"  } }
        shortInstrumentName = \markup { \right-column { "S" "A"  } }
        midiInstrument = "voice oohs"
      } << 
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >>
%       \scoreVoicePart
     >>
     \flscore
     \vlscore
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \new ChoirStaff <<
         \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S" "A"  } }
        shortInstrumentName = \markup { \right-column { "S" "A"  } }
        midiInstrument = "voice oohs"
      } << 
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >>
%       \scoreVoicePart
     >>
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}


