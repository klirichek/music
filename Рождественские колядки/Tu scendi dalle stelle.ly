\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Tu scendi dalle stelle"
  composer = "Alfonso Maria de' Liguori (1696-1787)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key fis \major
  \time 6/8
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
  \tempo "Allegretto"
  \secondbar  
  R2. |
  r4. r4 cis8 |
  cis4 dis8 cis4 b8 |
  b ais4~ ais gis8 |
  ais8[( b]) cis cis[( b ais]) | \abr
  
  gis4.~ gis4 ais8 
  \repeat volta 2 {
    gis4 ais8 b4 ais8 |
    gis4. dis'4. |
    cis8[( dis]) cis b[( ais gis]) |
  }
  \alternative {
    { ais4.~ ais4 ais8 \abr }
    { ais4. ais8[( b]) cis8 }
  }
  b4 b8 gis8 ais b |
  ais4 ais8 ais b cis |
  cis[( b]) ais gis ais b |
  ais4.~ ais4 gis8 | \abr
  
  ais b cis cis[( b ais]) |
  gis4.~ gis4 ais8 |
  \repeat volta 2 {
    gis4 ais8 b4 ais8 |
    gis4. dis' |
    cis8[( dis]) cis b[( ais gis])
  }
  \alternative {
    { ais4.~ ais4 ais8 \abr }
    { fis8 r r r4. }
  }
  R2.*7
  \repeat volta 2 {
    R2. R \abr
    R
  }
  \alternative {
    { R }
    { r4. <ais fis>8[( <b gis>]) <cis ais> }
  }
  <b gis>4 q8 <gis eis>[( <ais fis>]) <b gis>|
  <ais fis>4 <ais cis,>8 <ais fis>[( <b gis>]) <cis ais> | \abr
  
  <cis ais>[( <b gis>]) <ais fis> <gis eis>[( <ais fis>]) <b gis> |
  <ais fis>4 r8 r4. |
  R2.*3 \abr
  R2.*2 |
  r4. r4 ais8 |
  gis4 ais8 b4 ais8 |
  gis4. dis' |
  cis8[(^\markup\italic"rit." dis]) cis b[( ais gis]) | \abr \break
  \tempo "tempo di barcarolla" \showStaffSwitch \change Staff= "soprano" \oneVoice <fis cis>4. r |
  r r4 cis'8 |
  cis4 dis8 cis4 b8 |
  b ais4~ ais gis8 |
  ais[( b]) cis cis[( b ais]) | \abr
  
  gis4.~ gis4 ais8 |
  gis4 ais8 b4 ais8 |
  gis4. dis' |
  cis8[( dis]) cis b[( ais gis]) |
  ais4.~ ais4 ais8 | \abr
  
  gis4 ais8 b4 ais8 |
  gis4. dis' |
  cis8[( dis]) cis b[( ais gis ]) |
  fis4. ais8[(^\markup\italic"accel. a tempo" b]) cis |
  b4 b8 gis8[( ais]) b | \abr \break
  
  \showStaffSwitch \change Staff= "upstaff" \voiceOne ais4 ais8 ais[( b]) cis |
  cis[( b]) ais gis[( ais]) b |
  ais4. r4 <gis eis>8 |
  <ais fis>[( <b gis>]) <cis ais> q[( <b gis> <ais fis>]) |
  <gis eis>4.~ q4 ais8 | \abr
  
  gis4 <ais fis>8 <b gis>4 ais8 |
  gis4. dis' |
  cis8[( dis]) cis b[( ais gis]) |
  ais4.~ ais4 ais8 |
  gis4 ais8 b4 ais8 | \abr
  
  gis4. dis' |
  cis8[( dis]) cis b[( ais gis ]) |
  fis4.~\fermata fis \bar "|."  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  R2. |
  r4. r4 ais8 |
  ais4 b8 ais4 gis8 |
  gis8 fis4~ fis eis8 |
  fis[( gis]) ais ais[( gis fis]) |
  
  eis4.~ eis4 fis8 |
  \repeat volta 2 { eis4 fis8 gis4 fis8 |
    eis4. b' |
    ais8[( b]) ais gis[( fis eis]) | }
  \alternative {
    { fis4.~ fis4 fis8 | }
    { fis4. fis8[( gis]) ais | }
  }
  gis4 gis8 eis8 fis gis |
  fis4 fis8 fis gis ais |
  ais[( gis]) fis eis fis gis |
  fis4.~ fis4 eis8 |
  
  fis gis ais ais[( gis fis]) |
  eis4.~ eis4 fis8 |
  \repeat volta 2 { eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) | }
  \alternative {
    { fis4.~ fis4 fis8 | }
    { fis cis-. cis-.~ cis cis-. cis-. | }
  }
  r8 cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  cis8-. cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  cis8-. cis-. cis-.~ cis cis-. cis-. |
  \repeat volta 2 { r8 cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  r8 cis-. cis-.~ cis cis-. cis-. | }
  \alternative {
    { r8 cis-. cis-.~ cis cis-. cis-. | }
    { r8 cis-. cis-.~ cis cis-. cis-. | }
  }
  \repeat unfold 9 {r8 cis-. cis-.~ cis cis-. cis-. |}
  cis cis cis fis4 fis8 |
  eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) |
  \showStaffSwitch \change Staff= "alto" \oneVoice \repeat unfold 4 { r8 ais, cis fis4. }
  r8 cis fis fis4. |
  r8 gis,8 cis eis4. |
  r8 gis,8 cis eis4. |
  r8 cis eis gis4. |
  r8 gis,8 cis eis4. |
  r8 ais, cis fis4. |
  
  r8 gis,8 cis eis4. |
  r8 cis eis gis4. |
  r8 gis, cis eis[( cis]) b |
  ais[( cis]) fis fisis[( gis]) ais |
  dis,[( gis]) fis eis[( fis]) gis |
  \showStaffSwitch \change Staff= "upstaff" \voiceTwo cis,[( fis]) eis fisis[( gis]) ais |
  ais[( gis]) fis eis[( fis]) gis |
  fis ais, cis fis4 cis8 |
  cis4 cis8 cis4. |
  cis4.~ cis4 cis8 |
  eis4 cis8 eis4 fis8 |
  eis4. eis |
  eis4 fis8 gis[( fis eis]) |
  fis4.~ fis4 fis8 |
  eis4 fis8 eis4 fis8 |
  eis4. <eis gis>4. |
  eis4 fis8 gis[( fis eis]) |
  cis4.~ cis
  
}

altvoicea = \relative c'' {
  \global
  \dynamicUp  
  R2. |
  r4. r4 ais8 |
  ais4 b8 ais4 gis8 |
  gis8 fis4~ fis eis8 |
  fis[( gis]) ais ais[( gis fis]) |
  
  eis4.~ eis4 fis8 |
  \repeat volta 2 { eis4 fis8 gis4 fis8 |
    eis4. b' |
    ais8[( b]) ais gis[( fis eis]) | }
  \alternative {
    { fis4.~ fis4 fis8 | }
    { fis4. fis8[( gis]) ais | }
  }
  gis4 gis8 eis8 fis gis |
  fis4 fis8 fis gis ais |
  ais[( gis]) fis eis fis gis |
  fis4.~ fis4 eis8 |
  
  fis gis ais ais[( gis fis]) |
  eis4.~ eis4 fis8 |
  \repeat volta 2 { eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) | }
  \alternative {
    { fis4.~ fis4 fis8 | }
    { fis cis-. cis-.~ cis cis-. cis-. | }
  }
  r8 cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  cis8-. cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  cis8-. cis-. cis-.~ cis cis-. cis-. |
  \repeat volta 2 { cis8-. cis-. cis-.~ cis cis-. cis-. |
  r cis-. cis-.~ cis cis16 cis cis cis |
  r8 cis-. cis-.~ cis cis-. cis-. | }
  \alternative {
    { cis cis-. cis-.~ cis cis-. cis-. | }
    { cis cis-. cis-.~ cis cis-. cis-. | }
  }
  \repeat unfold 9 {r8 cis-. cis-.~ cis cis-. cis-. |}
  cis cis cis fis4 fis8 |
  eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) |
  \oneVoice \repeat unfold 4 { r8 ais, cis fis4. }
  r8 cis fis fis4. |
  r8 gis,8 cis eis4. |
  r8 gis,8 cis eis4. |
  r8 cis eis gis4. |
  r8 gis,8 cis eis4. |
  r8 ais, cis fis4. |
  
  r8 gis,8 cis eis4. |
  r8 cis eis gis4. |
  r8 gis, cis eis[( cis]) b |
  ais[( cis]) fis fisis[( gis]) ais |
  dis,[( gis]) fis eis[( fis]) gis |
  \voiceTwo cis,[( fis]) eis fisis[( gis]) ais |
  ais[( gis]) fis eis[( fis]) gis |
  fis ais, cis fis4 cis8 |
  cis4 cis8 cis4. |
  cis4.~ cis4 cis8 |
  eis4 cis8 eis4 fis8 |
  eis4. eis |
  eis4 fis8 gis[( fis eis]) |
  fis4.~ fis4 fis8 |
  eis4 fis8 eis4 fis8 |
  eis4. <eis gis>4. |
  eis4 fis8 gis[( fis eis]) |
  cis4.~ cis
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  R2.*6
  \repeat volta 2 {
    R2.*3
  }
  \alternative {
    { R2. }
    { r4. <ais fis>8[( <b gis>]) <ais cis> | }
  }
  <b gis>4 q8 <gis eis> <ais fis> <b gis> |
  <ais fis>4 q8 q <b gis> <cis ais> |
  q[( <b gis>]) <ais fis>8 <gis eis> <ais fis> <b gis> |
  ais4.~ ais4 <gis eis>8 |
  <ais fis> <b gis> <cis ais> q[( <b gis> <ais fis>]) |
  <gis eis>4.~ q4 <ais fis>8 |
  \repeat volta 2 { <gis eis>4 <ais fis>8 <b gis>4 <ais fis>8 |
  <gis eis>4. <dis' b> |
  <cis ais>8[( <dis b>]) <cis ais> <b gis>[( <ais fis> <gis eis>]) | }
  \alternative {
    { ais4.~ ais4 ais8 | }
    { fis r4 r8 b4~ | }
  }
  b8 ais4~ ais8 gis4~ |
  gis8 ais4~ ais8 b4~ |
  b8 ais4~( ais8 gis) cis |
  cis4 dis8 cis4 b8 |
  b8 ais4~ ais gis8 |
  ais[( b]) cis cis[( b ais]) |
  gis4.~ gis4 ais8 |
  \repeat volta 2 { gis4 ais8 b4 ais8 |
  gis4. dis'4 dis8 |
  
  cis8 dis cis b[( ais gis]) }
  \alternative {
    { ais4.~ ais4 ais8 | }
    { fis4 fis8 fis4 fis8 }
  }
  \repeat unfold 3 { fis4 fis8 fis4 fis8 }
  fis4 fis8 fis r gis |
  ais[( b]) cis cis[( b ais]) |
  gis4.~ gis4 ais8 |
  gis4 ais8 b4 ais8 |
  
  gis4. dis' |
  cis8[( dis]) cis b[( ais gis]) |
  ais4.~ ais4 cis8 |
  b4 ais8 gis4 ais8 |
  b4. dis |
  cis4 cis8 cis4( b8) |
  ais4.~ ais4 r8 |
  r4. r4 ais8 |
  ais4 b8 ais4 gis8 |
  gis fis4~ fis eis8 |
  fis[( gis]) ais ais[( gis fis]) |
  
  eis4.~ eis4 fis8 |
  eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) |
  fis4.~ fis4 fis8 |
  eis4 fis8 gis4 fis8 |
  eis4. b' |
  ais8[( b]) ais gis[( fis eis]) |
  fis[( gis ais]) dis4 dis8 |
  gis,4 dis'8 cis4 cis8 |
  fis,4 fis8 dis'4 dis8 |
  gis,[( b]) dis cis4 cis8 |
  fis,4. r4 <gis eis>8 |
  <ais fis>[( <b gis>]) <cis ais> q[( <b gis> <ais fis>]) |
  <gis eis>4.~ q4 fis8 |
  b4 ais8 gis4 ais8 |
  b4. b |
  ais8[( b]) ais dis[( cis b]) |
  cis4.~ cis4 cis8 |
  b4 ais8 gis4 ais8 |
  b4. b |
  ais8[( b]) ais dis[( cis b]) |
  ais4.~ ais
}

bassvoice = \relative c {
  \global
  \dynamicUp
  \repeat unfold 5 { <fis, cis'>4.~ q } |
  cis'4.~ cis
  \repeat volta 2 {
    \repeat unfold 3 { cis4.~ cis } 
  }
  \alternative {
  { <fis, cis'>4.~ q | }
  { <fis fis'> fis'4 fis8 | }
  }
  cis4 cis8 cis cis cis |
  fis4 fis8 fis fis fis |
  fis4 fis8 cis cis cis |
  fis4 cis8 fis4 cis8 |
  
  fis fis fis fis,4( ais8) |
  cis4 cis8 cis4 fis8 |
  \repeat volta 2 { cis4 cis8 cis4 cis8 |
  cis4. cis |
  cis4 cis8 cis4. | }
  \alternative {
    { fis4( cis8 fis4) fis8 | }
    { fis,4.~ fis4 cis'8 | }
  }
  <fis, cis'>4.~ q4 cis'8 |
  fis4.~ fis4 cis8 |
  fis4.~ fis4 ais8 |
  ais4 b8 ais4 gis8 |
  
  gis8 fis4~ fis cis8 |
  fis[( gis]) ais ais[( gis fis]) |
  cis4.~ cis4 fis8 |
  \repeat volta 2 { cis4 fis8 gis4 fis8 |
  cis4. b'4 b8 |
  
  ais8 b ais gis[( fis cis]) | }
  \alternative {
    { <cis fis,>4.~ q4 fis8 | }
    {<cis fis,>4 q8 q4 q8 }
  }
  \repeat unfold 3 {<cis fis,>4 q8 q4 q8 }
   q4 q8 q r cis8 |
   fis[( gis]) ais ais[( gis fis]) |
   cis4.~ cis4 fis8 |
   cis4 fis8 gis4 fis8 |
   cis4. b' |
   ais8[( b]) ais gis[( fis cis]) |
   <cis fis,>4.~ q4 q8 |
   cis4 cis8 cis4 cis8 |
   cis4. cis4. cis4 cis8 cis4. |
   
   \repeat unfold 3 {<cis fis,>4.~ q4 cis8}
   fis,4.~ fis4 cis'8
   fis,4.~ fis |
   cis'~ cis |
   cis~ cis |
   cis~ cis4 cis8~ |
   cis4.~ cis |
   fis,~ fis |
   cis'~ cis |
   cis~ cis4 cis8~ |
   cis4.~ cis |
   fis, r |
   R2.*3 |
   r4. r4 cis'8 |
   fis4 fis8 fis4. |
   cis4.~ cis4 cis8 |
   cis4 cis8 cis4 cis8 |
   cis4. cis |
   cis4 cis8 cis4. |
   <fis fis,>4.~ q4 q8 |
   cis4 cis8 cis4 cis8 |
   cis4. cis |
   cis4 cis8 cis4. |
   <fis fis,>4.\fermata~ q
}

lyricscore = \lyricmode {
  \repeat unfold 13 \skip 1 
  \repeat volta 2 { \repeat unfold 9 \skip 1 }
  \alternative { { \skip 1 \skip 1 } {\skip 1 \skip 1 \skip 1}}
  \repeat unfold 23 \skip 1
  \repeat volta 2 { \repeat unfold 9 \skip 1 }
  \alternative { { \skip 1 \skip 1 } { \skip 1 Ca -- ro~e -- }}
  let -- to par -- go -- let -- to,
  quan -- to que -- sta po -- ver -- tà
  \repeat unfold 51 \skip 1
  nel -- lo
  a che pen -- si dim -- mi tu.
  O~a -- mo -- re~im -- men -- so
  un di mo -- rir per te,
  ris -- pon -- di,~io pen -- so, __ un di mo -- rir per te,
  ris -- pon -- di,~io pen -- so. __
}

lyricsoprano = \lyricmode {
  \repeat unfold 13 \skip 1
  \repeat volta 2 { \repeat unfold 9 \skip 1 }
  \alternative { { \skip 1 \skip 1 } { \skip 1 \skip 1 \skip 1 }}
  \repeat unfold 23 \skip 1
  \repeat volta 2 { \repeat unfold 9 \skip 1 }
  \alternative { { \skip 1 \skip 1 } { \skip 1 \skip 1 \skip 1 }}
    \repeat unfold 23 \skip 1
  ra.
  \set stanza = "3." 
  Tu dor -- mi,~o Ge -- so mi -- o, __ 
  ma~in -- tan -- to~il co -- re __
  non dor -- me, no ma veg -- lia~a tut -- te l'o -- re, __
  non dor -- me, no ma veg -- lia~a tut -- te l'o -- re.
  Deh, mio bel -- lo~e pu -- ro~Ag-
}

lyricalto = \lyricmode {
  \set stanza = "1." Tu scen -- di dal -- le stel -- le, __ o Re del Cie -- lo, __
  e 
  \repeat volta 2 { vie -- ni~in u -- na grot -- ta~al fred -- do~e~al ge -- }
  \alternative { { lo. __ E } { lo. O Bam -- } } bi -- no mi -- o di -- vi -- no, 
  i -- o ti veg -- go qui a tre -- mar, __
  o Di -- o be -- a -- to! __ Ah, \repeat volta 2 { quan -- to ti cos -- tò l'a -- ver -- mi~a  -- ma -- }
  \alternative { { to! __
  Ah, } { to! Din -- don, din, don } } din -- don, din -- don,…
  \repeat unfold 8 \skip 1
  din, don di -- li -- di -- li
  din, din, din, din, don, din -- don di -- li -- di -- li
  din, din, din, din, don
  \repeat volta 2 { \skip 1 din -- don din -- don \skip 1 \skip 1 di -- li -- di -- li
  \repeat unfold 4 \skip 1 }
  \alternative { { \repeat unfold 5 \skip 1 }
    { \skip 1 din, din \skip 1 \skip 1 } }
  \repeat unfold 38 \skip 1
  din don
  \repeat unfold 10 \skip 1
  din -- din don, din -- din don
  \repeat unfold 30 \skip 1
  veg -- lia~a tut -- te l'o -- re.
  Deh, mio bel -- lo~e pu -- ro~Ag-
  \repeat unfold 9 \skip 1
  dim -- mi tu.
  
}

lyrictenor = \lyricmode {
  \repeat unfold 25 \skip 1
  \repeat volta 2 { \repeat unfold 9 \skip 1 } 
  \alternative { { \skip 1 \skip 1 } { \skip 1 (m…) } }
  \repeat unfold 5 \skip 1
  \set stanza = "2." A Te che sei del mon -- do __ il cre -- a -- to -- re __ non 
  \repeat volta 2 { so -- no pan -- ni~e
  fuo -- co, o mi -- o Si -- gno -- } 
  \alternative { {re. __ 
  Non } { re. \repeat unfold 3 \skip 1 } }
  \repeat unfold 15 \skip 1
  più m'in -- na -- mo -- ra, __ giac -- ché
  ti fe -- ce~a -- mor po -- ve -- ro~an -- co -- ra. __
  giac -- ché
  ti fe -- ce~a -- mor po -- ve -- ro~an -- co -- ra. __
  \set stanza = "3." 
  Tu dor -- mi,~o Ge -- so mi -- o, __ 
  ma~in -- tan -- to~il co -- re __
  non dor -- me, no ma veg -- lia~a tut -- te l'o -- re, __
  non dor -- me, no ma veg -- lia~a tut -- te l'o -- re. __
  
}

lyricbass = \lyricmode {
  Drom… Drom…
  \repeat unfold 4 \skip 1
  \repeat volta 2 { \repeat unfold 3 \skip 1 }
  \alternative { { \skip 1 } { \skip 1 \skip 1 \skip 1 } }
  \repeat unfold 4 \skip 1
  \repeat unfold 12 \skip 1
  tre -- mar
  \repeat unfold 6 \skip 1
  be -- a -- to!~Ah,
  \repeat volta 2 { \repeat unfold 9 \skip 1 }
  \alternative { { \skip 1 \skip 1 } { \skip 1 Bom -- } }
   bom; bom -- bom; bom -- bom.
  \repeat unfold 13 \skip 1
  \repeat volta 2 { \repeat unfold 11 \skip 1 }
  \alternative { { \skip 1 \skip 1 } { \skip 1  Bom -- bom; bom -- } }
  bom; bom -- bom.
  \repeat unfold 10 \skip 1
  bom -- bom
  \repeat unfold 27 \skip 1
  Don -- don __
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
      \transpose fis g {
    \new ChoirStaff <<
      \new Staff = "soprano" \with {
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      }
      { \global s2.*75 }
      
      \new Staff = "alto" \with {
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      }
      { \global s2.*75 }
    
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        { \global s2.*75 }
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \with { alignAboveContext = "alto"} \lyricsto "soprano" { \lyricsoprano }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics = "alto"
%      \new Lyrics \lyricsto "aligner" { \lyricalto }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        { \global s2.*75 }
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
        \new NullVoice  = "aligner" { \altvoicea }
      >>
      \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" { \lyrictenor }
      \new Lyrics \lyricsto "bass" { \lyricbass }
      
      \context Lyrics = "alto" { \lyricsto "aligner" { \lyricalto } }

    >>
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
  \score {
    
      \transpose fis g {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = "soprano" \with {
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      }
      { \global s2.*75 }
      
      \new Staff = "alto" \with {
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      }
      { \global s2.*75 }
    
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        { \global s2.*75 }
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
        \new NullVoice  = "aligner" { \altvoicea }
      >> 
      
      \new Lyrics \with { alignAboveContext = "alto"} \lyricsto "soprano" { \lyricsoprano }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "aligner" { \lyricalto }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        { \global s2.*75 }
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" { \lyrictenor }
      \new Lyrics \lyricsto "bass" { \lyricbass }

    >>
      }  % transposeµ
    \midi {
      \tempo 8=240
    }
  }
}
