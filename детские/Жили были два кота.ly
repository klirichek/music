\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\header {
  title = "Вставайте, люди русские"
  subtitle = "из кантаты «Александр Невский»"
  composer = "С. Прокофьев (1891 - 1953гг.)"
  poet = "Слова В. Луговского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

global = {
  \key fis \major
  \numericTimeSignature
  
}

solo = \relative c' {
  \global
  \tempo "Оживлённо"
  \autoBeamOff
  \time 2/4
  R2 |
  r4 cis8\mf cis |
  fis fis eis eis |
  dis dis cis cis |
  dis dis eis cis |
  fis4 cis8 cis |
  fis fis eis eis |
  dis dis cis cis |
  dis dis eis cis |
  fis4 fis8 fis |
  \time 3/4
  cis'4. ais8 gis fis |
  gis4 dis8 dis eis cis |
  \time 2/4 fis4 fis8 fis |
  \time 3/4 cis'4. ais8 gis fis |
  b4 gis8 b ais fis |
  \time 2/4 gis4\fermata cis,8-\markup "poco rit." cis |
  fis-\markup "a tempo" fis eis eis |
  dis dis cis cis |
  dis dis eis cis |
  fis4 cis8 cis |
  fis fis eis eis |
  dis dis cis cis |
  dis dis eis cis |
  fis r fis fis |
  gis gis dis dis |
  fis fis fis fis |
  gis gis dis dis|
  fis fis r dis' |
  cis b ais gis |
  fis r \once \override NoteHead.style = #'cross fis' r | \bar "|."
  
}


verses = \lyricmode {
  
  
}


right = \relative c' {
  \global
  \oneVoice
  <fis gis b cis>4->\mf \clef bass <fis, gis b cis>->~ |
  q <gis b cis>8 q |
  <ais cis fis>4-. <ais cis eis>-. |
  <fis ais dis>-. <fis ais cis>-. |
  <gis b dis>-. <gis b eis>8-. <gis b cis>-. |
  <ais cis fis>4-. <fis ais cis>8 q |
  <ais cis fis>4-. <ais cis eis>-. |
 <fis ais dis>-. <fis ais cis>-. |
  <gis b dis> <gis b eis>8 <gis b cis> |
  <ais cis fis>4 \clef treble fis'8 fis |
  <fis ais cis>4.(\< <cis fis ais>8-.)\! <cis gis'>-. <cis fis>-. |
  <dis fis gis>4 <b dis>8-. q-. <b eis>-. <b cis>-.
  <ais cis fis>4 fis'8 fis |
  <fis ais cis>4.( <cis e ais>8->) <cis e gis>-. <cis e fis>-. |
  <dis fis b>4 <dis fis gis>8-. <dis fis b>-. <dis fis ais>-. <dis fis>-. |
  <b dis gis>4\fermata \clef bass <dis, b' cis>8 <eis b' cis> |
  <ais cis fis>4-. <ais cis eis>-. |
  <fis ais dis>-. <fis ais cis>-. |
  <gis b dis>-. <gis b eis>8-. <gis b cis>-. |
  <ais cis fis>4 cis8 cis |
  r <ais cis fis> r <ais cis eis> |
  r <fis ais dis> r <fis ais cis> |
  r <gis b dis> r <gis b cis> |
  r ais-.[ \clef treble cis-. fis-.] |
  <b, dis gis>4-. <gis b dis>-. |
  <ais cis fis>-. q8-. q-. |
  r <b dis gis> r <gis b dis> |
  r <ais cis fis> r <fis' ais dis>--( |
  <eis gis cis>-.)[ <dis fis b>-. <cis eis ais>-. <b dis gis>-.] |
  <ais cis fis>-. r <ais' cis fis>-> r
  
}

left = \relative c' {
  \global
  \oneVoice
  cis4-> cis,->~ |
  cis r8 cis,8 |
  r fis r eis |
  r dis r cis |
  r dis r eis |
  r fis r cis |
  r fis r eis |
  r dis r cis |
  r dis r eis |
  r fis r4 |
  r8 fis-.[ cis'-. fis-. gis-. ais-.] |
  b4 r8 gis r cis, |
  r8 fis-.[ dis-. cis-.] |
  r8 fis,-.[ cis'-. fis-. gis-. ais-.] |
  b4 r8 gis r gis, |
  r cis4.\fermata |
  r8 fis, r eis |
  r dis r cis |
  r dis r eis |
  r fis r cis' |
  fis,4-. eis-. |
  dis-. cis-. |
  dis-. eis8-.[ cis-.] |
  fis4 r
  r8 gis r cis, |
  r fis r cis |
  gis'4-. cis,-. |
  fis r |
  cis'2-> |
  fis,8-. r fis-> r
}

pianoPart = \new PianoStaff \with {
  instrumentName = "P-no"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
     \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "С"
    shortInstrumentName = "С"
    } \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
  \layout { 
   
  
  }
  \midi {
    \tempo 4=80
  }
}
