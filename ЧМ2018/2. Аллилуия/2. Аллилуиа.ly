\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Аллилуйя любви"
  subtitle = "(перелож. О. Серебровой)"
  composer = "А. Рыбников"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
  urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}

global = {
  \key d \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOn
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set Score.markFormatter = #format-mark-circle-numbers
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }
pbr = { \pageBreak }
con = { \cadenzaOn }
coff = { \cadenzaOff \bar "|" }
cbr = { \bar "" }

% uncommend next line when finished
abr = {}
%pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }



sopvoice = \relative c' {
  \global
  \autoBeamOff
  \oneVoice
  R1*2 |
  \mark \default d8^\markup"A" d d d d d d e |
  fis4 fis2 r4 |
  d8 d d d g4 a | \abr
  b2. r4 |
  cis8^\markup"S" cis cis cis cis cis cis e |
  d4 d2 r4 |
  d8 a a a a a a b | \abr
  a2. r4 |
  d,8^\markup"A" d d d d d d e |
  fis4 fis2 r4 |
  d8 d d d g g g a | \abr
  b2. r4 |
  \voiceOne cis8^\markup"S" cis cis cis cis cis cis e |
  d4 d2 r4 |
  d8 a a a a a a g | \abr
  fis2. r4 \mark \default \bar "||"
  a1^\markup"A" d, |
  \oneVoice d2.~( \autoBeamOn d8 e |
  fis e fis e fis e fis e | \abr
  fis d a g~ g4) fis |
  e'2 d |
  d4( cis) d2 |
  R1 \abr
  \voiceOne
  \autoBeamOff
  R1
  \mark \default
  r2 r8 g' g g~ |
  g fis4.~ fis2~ |
  fis r8 g g g~ | \abr
  g fis4. ~ fis2~ |
  fis8 r r4 r2 |
  R1 |
  a1~ |
  a4 r r d,,8 d | \bar "||"  \abr
  \mark \default d4 d8 d d d e fis~ |
  fis fis4. r4 d8 d |
  d4 d8 d g g a b~ |
  b b4. r4 d8 d | \abr
  cis4 cis8 cis cis d e d~ |
  d d4. r4 <g b,>8 q |
  q <fis a,> <e g,> <d fis,>~ q4 <g b,>8 q | \abr
  <g ais,> <fis b,> <e cis> <d b> ~ q4 <g b,>8 q |
  q2( <fis a,>4 <e g,>) |
  <fis a,>1 |
  \oneVoice r2^\markup\italic"унис." r4 d,8 d \bar "||" |
  \mark \default d4 d8 d d d e fis~ |
  fis fis4. r4 d8 d |
  d4 \voiceOne d8 d g g a b~ |
  b b4. r4 d8 d |
  cis4 cis8 cis cis d e d~ |
  d d4.~ d2 | \abr
  \mark \default a1 |
  d, |
  << {
  d'2~ ( d4. e8 |
  \autoBeamOn fis e fis e fis e fis e | \abr
  fis d a g~ g4) fis |
  e2 d |
  d'4( cis) d2~ |
  d1 | \abr
     } \new Voice { \voiceThree 
       a1~
       a~ |
       a4 s2.
       s1 |
       fis2 s2
       s1
                    }
     >>
  \autoBeamOff   
  r2 r8 g'8 g g~ | \bar "||"
  \mark \default g fis4.~ fis2~ |
  fis r8 g8 g g~ | \abr
  g fis4.~ fis2~ |
  fis1 |
  R1*2 |
  \bar "||" \mark \default R1 |
  a,1 |
  d, |
 \autoBeamOn
  << { d'2( ~ d4. e8 |
       fis e fis e fis e fis e |
       fis d a g~ g4) fis | \abr
     } \new Voice { \voiceThree
                    a1~ |
                    a~ |
                    a4. s8 s2
     }
  >>
  e2 d |
  <d' d,>4( <cis cis,>) <d d,>2~ |
  q2 r2 |
  \autoBeamOff
  \mark \default r2 r8 <g g,> q q~ |
  q <fis fis,>4.~ q2 |
  r2 r8 <g g,> q q~ |
  q <fis fis,>4.~ q2 |
  R1\abr
  \mark \default
  \tempo "meno mosso"
  d2. r4 |
  e2. r4 |
  f2. r4 |
  \time 2/4 g2 |
  \time 4/4 a1~ |
  a4 r4 r2 \bar "|."
}


altvoice = \relative c' {
  \global
  \autoBeamOff
 s1*2
 s1*12
 cis8 cis cis cis cis cis cis e |
 d4 d2 r4 |
 d8 a a a a a a g |
 fis2. r4 |
 s1*8
 r2 r8 g'8 g g~ | \bar "||"
 g fis4.~ fis2~ |
 fis r8 g8 g g~ |
 g fis4.~ fis2~ |
 fis1~ |
 fis8 r r4 r2 |
 R1 |
 a1~ |
 a4 r r d,8 d |
 d4 d8 d d d e fis~ |
 fis fis4. r4 d8 d |
 d4 d8 d g g d <d g>~ |
 q q4. r4 q8 q |
 <cis fis>4 q8 q q <b fis'> <cis fis> <d fis>~ |
 q q4. r4 b8 b |
 a a a a~ a4 d8 d |
 cis d e d~ d4 e8 e |
 e1 |
 d |
 s1*3
 d4 d8 d g g d <d g>~ |
 q q4. r4 q8 q |
 <cis fis>4 q8 q q <b fis'> <cis fis> <d fis>~ |
 q q4.~ q2 |
 a'1 |
 d, |
 d2~( d4. e8 |
 \autoBeamOn
 fis e fis e fis e fis e |
 fis d a g~ g4) fis |
 e'2 d |
 d4( cis) <d fis>2~ |
 q1 |
 \autoBeamOff
 r2 r8 <e a> q q~ |
 q <d a'>4.~ q2~ |
 q r8 q8 q <cis ais'>~ |
 q q4.~ q2 |
 <d b'>1 |
 R1*2 |
 R1 |
 a'1 |
 d,2~( d4. e8) |
 \autoBeamOn
 fis( e fis e fis e fis e |
 fis d a g~ g4) fis |
 e'2 d |
 d4( cis) d2~ |
 d1~ |
 \autoBeamOff
 d2 r8 g g g~ |
 g fis4.~ fis2~ |
 fis r8 g g g~ |
 g fis4.~ fis2~ |
 fis1 |
 R1
 <fis a>2. r4 
 <gis b>2. r4 |
 <a c>2. r4 |
 <g b d>2 |
 <fis a d>1~ |
 q4 r4 r2
}


bassvoice = \relative c {
  \global
  \oneVoice
 \autoBeamOff
 R1*2
 R1*8
 d8 d d d d d d e  |
 fis4 fis2 r4 |
 d8 d d d g g g a |
 b2. r4 |
 R1*4 |
 a1 |
 d, |
 \autoBeamOn
 d2.~( d8 e |
 fis e fis e fis e fis e | 
 fis4 a8 g~ g4) fis |
 e2 d |
 d4( cis) d2 |
 R1
 
 \autoBeamOff
 r2 r8 g g g~ |
 g fis4.~ fis2~ |
 fis r8 g8 g g~ |
 g fis4.~ fis2~ |
 fis1~ |
 fis8 r r4 r2 |
 R1*2 |
 r2 r4 d8 d |
 d4 d8 d d d e fis~ |
 fis fis4. r4 d8 d |
 d4 d8 d g g a g~ |
 g g4. r4 g8 g |
 ais4 ais8 ais fis fis fis b~ |
 b b4. r4 d,8 d |
 d d d d~ d4 d8 d |
 fis fis fis b~ b4 b8 b |
 a1 |
< \parenthesize d d,> |
r2 r4 d,8 d |
d4 d8 d d d e fis~ |
fis fis4. r4 d8 d |
d4 d8 d g g a g~ |
g g4. r4 g8 g |
ais4 ais8 ais fis fis fis b~ |
b b4.~ b2 |
a1 |
d, |
d~ |
d~ |
d |
e2 d |
fis <b b,>( |
<a d,>1) |
r2 r8 a a d,~ |
d d4.~ d2~ |
d r8 d d fis~ |
fis fis4.~( fis2 |
b,1) |
R1*2 |
a'1 |
d, |
d~ |
d~ |
d |
e2 d |
d4( cis) d2~ |
d1~ |
d2 r8 g g g~ |
g fis4.~ fis2~ |
fis r8 g g g~ |
g fis4.~ fis2~ |
fis1 |
R1 |
<d a'>2. r4 |
<d b'>2. r4 |
<d c'>2. r4 |
\time 2/4 <d b'>2 |
\time 4/4 <d a'>1~ |
q4 r4 r2
}

toalto = { \set associatedVoice = "alto" }
tosoprano = { \set associatedVoice = "soprano" }

lyricsoprano = \lyricmode {
  \repeat unfold 82 \skip 1
 А -- лли -- лу -- йя __ 
 А -- лли -- лу -- йя
 \repeat unfold 93 \skip 1
 А -- лли -- лу -- йя
 А -- лли -- лу -- йя __
 а -- лли -- лу -- йя, __
 а -- лли -- лу -- йя!
}

lyricalto = \lyricmode {
  Де -- ти два -- дцать пе -- рво -- го сто -- ле -- тья,
  на -- ча -- лся ваш но -- вый век.
  Не -- у -- же -- ли ве -- чно не от -- ве -- тит
  на во -- прос со -- гла -- сья че -- ло -- век,
  две ду -- ши, не -- су -- щих -- ся в_про -- стра -- нстве
  по -- лто -- ра -- ста о -- ди -- но -- ких лет,
  мы вас у -- мо -- ля -- ем о со -- гла -- сье_—
  без со -- гла -- сья сча -- стья в_жи -- зни нет.
  
  А -- лли -- лу -- йя, а -- лли -- лу -- \toalto йя,
  а -- лли -- лу -- йя, __ а -- лли -- лу -- йя __
  А __
  а -- лли -- лу -- йя во -- злю -- бле -- нной па -- ре! 
  Мы за -- бы -- ли, бра -- нясь и пи -- ру -- я,
  для че -- го мы на зе -- млю по -- па -- ли
  А -- лли -- лу -- йя лю -- бви,
  А -- лли -- лу -- йя лю -- бви,
  А -- лли -- лу -- \tosoprano йя!
  А -- лли -- лу -- йя всем бу -- ду -- щим де -- тям!
  Что -- бы жизнь не ле -- те -- ла а -- ллю -- ром
  Мы про -- кля -- тым во -- про -- сам о -- тве -- тим:
  А -- лли -- лу -- йя
  а -- лли -- лу -- йя. __
  А -- лли -- лу -- йя, __ 
  А -- лли -- лу -- йя! __
  \toalto А -- лли -- лу -- йя, а -- лли -- лу -- йя, __
  а -- лли -- лу -- йя, __
  а -- лли -- лу -- йя! __
  А -- лли -- лу -- и -- йя! __
}

lyricbass = \lyricmode {
\repeat unfold 126 \skip 1
А -- лли -- лу_- 
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {

      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricsoprano
      \new Lyrics \lyricsto "soprano" { \lyricalto }

      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef "bass" \oneVoice \bassvoice }
      >>
      
       \new Lyrics \lyricsto "bass" { \lyricbass }

      >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
 \urllogo
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
      
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
