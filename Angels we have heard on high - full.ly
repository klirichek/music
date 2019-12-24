\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Angels we have heard on high"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key g \major
  \time 4/4
      \set Score.markFormatter = #format-mark-box-numbers

  %\numericTimeSignature
  
}

U = { \change Staff = right }
D = { \change Staff = left }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

pause = { \tempo "Moderato" 4=84   \global 
 R1*7 }

verseonesoprano = \relative c'' {
    b4 b b b8[ d] |
    d4. c8 b4 a |
    b4 b8 a b4 d |
    b4. a8 g2
    
    b4 a b b8[ d] |
    d4. c8 b4 a |
    b4 b8[ a] b4 d |
    b4. a8 g2 
}

refrainonesoprano = \relative c'' {
    d2( e8[ d c b] |
  c2 d8[ c b a] |
  b2 c8[ b a g] |
  a4.) a8 d,2 | \abr
  
  g4 a b c |
  b2 a | \breathe
  
  d2( e8[ d c b] |
  c2 d8[ c b a] | \abr
  
  b2 c8[ b a g] |
  a4.) fis8 d2 |
  g4 a b c |
  b1 |
  a2~( a4. g8
  
  g1~ g) 
}

versetwosoprano = \relative c'' {
    b4 b b b8[ d] |
    d4. c8 b2 |
    b4 a b d |
    b4. a8 g2 |
    b4 b b d |
    d4. c8 b2 |
    b4 a b d |
    b4. a8 g2
}

refraintwosoprano = \relative c'' {
  d2( e8[ d c b] |
  d2 d8[ c b a] |
  b2 d8[ b a g] |
  a4.) a8 d,2 |
  g4 a b c |
  b2 a4 r |
  d2( e8[ d c b] |
  c2 d8[ c b a] |
  b2 c8[ b a g] |
  a4. ) a8 d,2 |
  g4 <fis a> <g b> <g c> |
  b2( a4. g8) |
  g1 
}

refrainthreesoprano = \relative c'' {
  d2( e8[ d c b] |
  c2 d8[ c b a] |
  b2 c8[ b a g] |
  <a fis>4.) <a fis>8 d,2 |
  g4 a b c |
  b2 a4 r |
  d2( e8[ d c b] |
  b2 c8 b a g
  a4.) a8 d,2 |
  g4 a b c |
  <b g>2( <d a>)
  g1 \bar "||"
}

versethreesoprano = \relative c'' {
    b4 b b d |
    d4. c8 b2 |
    b4 a b d |
    b4. a8 g2 |
    b4 b b d |
    d4. c8 b2 |
    b4 a b d |
    b4. a8 g2
}

verseonealto = \relative c'' {
    g4 g g g8[ b] |
    b4. a8 g4 fis |
    g4 g8 fis g4 g |
    d4. c8 b2 |
    
    g'4 fis g g8[ b]
    b4. a8 g4 fis |
    g4 g8[ g] g4 b |
    g4. fis8 g2
}

refrainonealto = \relative c'' {
 d2( b4 gis |
  a2 fis4 d |
  g2 e4 c |
  d) cis d2 |
  
  b4 d g e |
  d2 d | \breathe
  
  b'4( a gis2 |
  a4 g fis2 |
  g4 fis e2 |
  d4) cis d2 |
  g4 fis g e |
  d1 |
  c1(
  
  b1~ b)
}

versetwoalto = \relative c'' {
    g4 g fis fis |
    a fis g2 |
    g4 fis g g |
    g fis g2 |
    g4 g fis fis g a g2 |
    g4 fis g g |
    g fis g2
}

refraintwoalto = \relative c'' {
  g4( b8[ a] gis2 |
  e4 a8[ g] fis2 |
  d4 g8[ fis] e2 |
  d4.) c8 d2 |
  d4 fis g g |
  g2 fis4 r |
  g( b8[ a] gis2 |
  a4 a8[ g] fis2
  g4 g8[ fis] e2
  d4.) c8 d2 |
  d4 c b e |
  <d g>2( <d fis>) |
  d1
  
}

versethreealto = \relative c'' {
    g4 g g g |
    g4. a8 g2 |
    g4 fis g g |
    g fis d2 |
    g4 g g g |
    g4. a8 g2 |
    g4 fis g g |
    g4. fis8 d2
}

refrainthreealto = \relative c'' {
 b4( a gis2 |
 a2 a4 fis |
 g2. e4 |
 d4.) d8 d2 |
 e4 d d e |
 g2 fis |
 g( gis4 e |
 d2 c4 d4~ |
 d) cis d2 |
 d4 fis g a |
 d,2( fis) |
 <g b>1
}

sopvoice = \relative c'' {
  \global
  \pause
  \dynamicUp
  
  \secondbar
  \autoBeamOff
  
  \mark \default 
\verseonesoprano
\refrainonesoprano
R1*2
\mark \default
\versetwosoprano
\refraintwosoprano

R1*8
\mark \default
\versethreesoprano
\refrainthreesoprano
  
  
  %\tempo 4=96

}


altvoice = \relative c'' {
  \global
  \pause
  \dynamicUp 
  \autoBeamOff
  
  \verseonealto
  \refrainonealto
 R1*2
 \versetwoalto 
 \refraintwoalto
 R1*8
 
 \versethreealto
 \refrainthreealto
}

versetwotenor = \relative c' {
  
      d4 d d d |
    e d d2 |
    d4 d d d |
    d4. c8 b2 |

    d4 d d d |
    e d d2 |
    d4 d d d |
    d8[ e d] c b2 |
}

refraintwotenor = \relative c' {
  
    b2( e2~ |
    e d~ |
    d c4. b8 |
    a4.) a8 fis2 |
    g4 d' d e |
    d2 d4 r |
    b4( d2 e4~ |
    e c2 d4~
    d4 b2 c4 |
    a4.) a8 fis2 |
    g4 c g e' |
    d4( c8 b c2) |
    b1
}

versethreetenor = \relative c' {
  
d4 d e d |
e4. d8 d2 |
d4 d d d |
d4. c8 b2 |
d4 d e d |
e fis8[ d] d2 |
d4 d d d |
d8[ e d] c b2
}

refrainthreetenor = \relative c' {
  
d2( b4 e |
e2 d |
d2  e8[ d c b] |
a[ b c]) d a2
b4 a g g |
g( b8[ d]) d2 |
d2.( e8[ d] |

b8 a g fis g4 g |
e8[ fis]) g4 fis2 |
g4 d' d8[ e] e4 |
d4( c8[ b] c4. b8) |
b1
}

versetwobass = \relative c' {
  
    g4 g b b |
    a d, g2 |
    g4 d g b |
    d d, g2 |
    
    g4 g b b |
    e, fis g2 |
    g4 d g b, |
    d d g2 |
}

refraintwobass = \relative c' {
  g2( e4 gis |
  a2 d,4 fis |
  g2 c,4 e |
  fis) e d( c) |
  b d g c, |
  d( e) d r |
  g2( e4 gis |
  a2 d,4 fis
  g2 c,4 e |
  fis) e d( c) |
  b d e c |
  d1 |
  g
}

versethreebass = \relative c' {
  g4 g e b |
  c8[ d e] fis g2 |
  g4 d g b8[ c] |
  d4 d, g2 |
  g4 g e b |
  a8[ c] d[ fis] g2 |
  g4 d g8[ a] b[ c] |
  d[ e d] c b2
}

refrainthreebass = \relative c' {
  g4( f e gis |
  a g fis d |
  g e c e |
  d4.) d8 <d fis>2
  e4 fis g c, |
  d( g8[ b]) d4( c) |
  b4( g8[ f] e4 gis |
  
  g8[ fis e d] e4 b |
  a) a d( c) |
  b d g8[ e] c[ a ] |
  d2~( d4 d,) |
  <g d'>1
}

tenorvoice = \relative c' {
  \global
  \pause
  \dynamicUp 
  R1*25
  
    \versetwotenor
    
    \refraintwotenor
    
    R1*8
    \versethreetenor
    
    \refrainthreetenor

}


bassvoice = \relative c' {
  \global
  \pause
  \dynamicUp
  R1*25
  \versetwobass
  \refraintwobass
  
  R1*8
  \versethreebass
  \refrainthreebass

  

}
frscore = \lyricmode {
Les an -- ges dans nos cam -- pag -- nes,
Ont en -- ton -- né l’hym -- ne des cieux;
Et l’é -- cho de nos mon -- ta -- gnes
Re -- dit ce chant mé -- lo -- dieux
}

itscore = \lyricmode {
Sop -- ra~i cie -- li~e~an -- cor più sù
dol -- ce can -- ti gli~an -- ge -- li.
E dai mon -- ti fin qua giù
por -- tan gio -- ia~ai de -- bo -- li.
}

enscore = \lyricmode {
Come to Beth -- le -- hem and see
Him whose birth the an -- gels sing.
Come, a -- dore on bend -- ed knee
Christ the Lord, the new -- born king.
}

lyricscorea = \lyricmode {
  And the mount -- ains in re -- ply E -- cho still' their joy -- ous strains.
}

refrain = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis De -- o, Glo --
  ri -- a in ex -- cel -- sis De -- o.
}

lyricscore = \lyricmode {
%   \set stanza = \markup { \dynamic "mf" } An -- gels we have heard on high
%  Swee -- tly sing -- ing o'er the plains,
  
%  \lyricscorea

 \set stanza = "1. " \frscore
  
 \refrain
 
 \set stanza = "2. " \itscore
 
 \refrain
 
 \set stanza = "3. " \enscore
 
 \refrain
  

}



choirpart = \new ChoirStaff \unfoldRepeats << 
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        \RemoveEmptyStaves
        
      } <<
        \new Voice = "soprano" { \voiceOne  \sopvoice }
        \new Voice  = "alto" { \voiceTwo  \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
        \RemoveEmptyStaves
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \tenorvoice }
        \new Voice = "bass" {  \voiceTwo  \bassvoice }
      >>
    >>
    
% violin one intro    
voin = \relative c'' {
  d2 e |
  e d |
  d e |
  d d \breathe |
  b4 d2 c4 |
  b4 a8 g a4. c8 |
  b1
}

%violin two intro
vtin = \relative c'' {
 b2 b |
 c a |
 b c |
 a fis |
 d4 fis g a |
 g2 fis |
 g1
}

%alt one intro
aoin = \relative c'' {
 g4 f e2 |
 r4 a8 g fis2 |
 r4 g8 fis e2 |
 d4 cis d2 |
 b4 d8 c b4 c |
 d4 a8 b c4. d8 |
 b1
}

%alt two intro
atin = \relative c {
  \aoin
}

% violin one part a
voa = \relative c'' {
  b2 b4 b8 d |
  d4. c8 b2 |
  b4 a b d |
  b4. a8 g2
  
  b4 a b d |
  d4. c8 b4 a |
  b~ b8 a b4 d |
  b4. a8 g2
}

%violin two part a
vta = \relative c'' {
 g2 g4 g8 b |
 g2~ g |
 g~ g |
 g4. d8 d2
 
 g4 fis g b |
 g2~ g |
 g4~ g8 fis g2 |
 g4. d8 d2
}

% alt one part a
aoa = \relative c' {
 d2 d |
 d~ d |
 d~ d |
 d4. c8 b2
 
 d4 c d2 |
 d2~ d4 c |
 d2~ d |
 d4. c8 b2
}

%alt two part a
ata = \relative c' {
  g2 g |
  b4. a8 g2 |
  g4 fis g b |
  d,8 e fis4 g2
  
  g2~ g |
  b4. a8 g2 |
  g4~ g8 d g4 b |
  d, e8 fis g2
}

% violin one ref a
vora = \relative c'' {
  d2 e8 d c b |
  c2 d8 c b a |
  b2 c8 b a g |
  a2 d, |
  g4 a b c |
  d2~ d |
  b2 gis |
  a fis |
  g2 e |
  a d, |
  g4 a b c |
  b1 |
  a |
  g2 a |
  b a8 r \tuplet 3/2 4 { c8 fis a
  g fis g b, d g a g a c, e a
  b a b d, g b a g a c, fis a }
  s1*42
  
}

%violin two ref a
vtra = \relative c'' {
  b2~ b4 gis |
  a2~ a4 fis |
  g2~ g4 e |
  fis2 d |
  d4 fis g a |
  b a8 g a2 |
  g2 e~ |
  e d
  d2 c |
  fis d |
  d4 fis g a |
  g1 |
  fis
  d2 e |
  g fis |
  b c |
  d c

}

% alt one ref a
aora = \relative c'' {
  g2. gis4 |
  e2 fis4 d |
  d2 e4 c |
  d4 cis d2 |
  b4 c d e |
  g2 fis |
  d2~ d |
  c~ c |
  b2 c4 a |
  d4 cis d cis |
  d2 d4 e |
  d1 
  d2 c |
  b c |
  d d4 c |
  g'2 a |
  b a |
  s1*42
}

%alt two ref a
atra = \relative c' {
 a1*8
}

% violini part up
vlpartup = \relative c {
  \global 
  \key g\major
  
  \voin
  \voa
  \vora
}

% violini part down
vlpartdown = \relative c {
  \global 
  \key g\major
  \vtin
  \vta
  \vtra
}


%violine score
vlscore = \new Staff \with {
  instrumentName = "Vl"
  shortInstrumentName = "Vl"
  midiInstrument = "violin"
} {
  << \vlpartup  \\ \vlpartdown >>
}

% alto part up
apartup = \relative c {
  \global 
  \key g\major
  \aoin
  \aoa
  \aora
}

% alto part down
apartdown = \relative c {
  \global 
  \key g\major
  \atin
  \ata
  \atra
}

%alto score
ascore = \new Staff \with {
  instrumentName = "Alt"
  shortInstrumentName = "A"
  midiInstrument = "viola"
} {
  \clef bass << \apartup  \\ \apartdown >>
}

%flute intro
flin = \relative c''' {
  g2 gis |
  a fis |
  g~ g |
  a d, \breathe |
  b4 d2 e4 |
  d2 fis |
  g1
  
}

% flute one
flo = { s1*8 }

% flute refrain one
flro = \relative c'''{
  b2 gis |
  a fis |
  g e4 g |
  a4. d8 d2 |
  b4 a g e |
  g2 \startTrillSpan fis \stopTrillSpan \breathe |
  r4 r gis2 |
  a fis4 d |
  g2 e4 g |
  a4. d8 d2 |
  b4 a g e |
  d1 |
  c2 r4 r |
  \tuplet 3/2 4 {g'8 fis g b, d g a g a c, e a
  b a b d, g b a g a c, fis a 
  g fis g b, d g a g a c, e a
  b a b d, g b a g a c, fis a}
  s1*22
  s1*20
  
}


flutepart =  {
  \global 
  \key g\major
  \flin
  \flo
  \flro
  
}

fscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "F"
  midiInstrument = "flute"
} {
  \flutepart
}

% piano rigth up intro
pruin = \relative c'' {
  d2 e8 d c b |
  c2 d8 c b a  |
  b2 c8 b a g |
  a4. a8 d,2 |
  g4 <a fis> <b g> <c a> |
  b4 a8 g a4.\startTrillSpan g8 \stopTrillSpan|
  g1
}

% piano rigth down intro
prdin = \relative c'' {
  <g b>2 gis |
  << e2 \\ {s4 a8 g } >> fis2
  << d2 \\ {s4 g8 fis } >> e2
  d4 cis a2 |
  b4 d8 cis d4 e |
  <d g>2 <d fis>4. c8 |
  <d b>1
}

% piano left up intro
pluin = \relative c' {
  d2 b4 e |
  c2 a4 d |
  b2 g |
  e4 g fis2 |
  g4 a g e |
  g4 a8 b c2 |
  g1
}

% piano left down intro
pldin = \relative c' {
  g4 f e fis |
  a8 g fis e d4 fis |
  g8 fis e d c4 b |
  a2 d4 c |
  b d g, a8 c |
  d2 d4 d, |
  g1
}

% piano rigth up a
prua = \relative c'' {
  s1*8
}

% piano rigth down a
prda = \relative c'' {
s1*8
}

% piano left up a
plua = \relative c' {
s1*8
}

% piano left down a
plda = \relative c' {
s1*8
}

% piano rigth refrain a
prr = \relative c' {
  \oneVoice
  <b d g>2 <b e gis> |
  <c e a> <a d fis> |
  <b d g> <a c e> |
  <a d fis> <fis a d> |
  <b d g>4 <c d fis a> <d g b> <e a c> |
  << { <g b>4 a8 g <fis a>2 <d' g,>2 e4 b } \\
     { d,2~ d b'4 a <b gis e>2 } >>
  <e, a c>2 <d fis a d>
  << { b'2 c4 a~ <a g>2 d,2 g4 <a fis> <b g> <c a> } \\
     { <d, g>2 <c e> d4 cis a2 d2 d4 e} >>
    <d g b> <g b d>2 <b d g>4 |
    <a d fis>2( <a c fis>)
    <b d g>4 <g, b d> <c' e a> <e, c a> |
    <d' g b> <g, d b> <a d fis> <fis d c> |
    <b, d g>2 <c e a> <e g b> << <d fis a> \\ { d4( c)} >>
    
}

% piano rigth b
prb = \relative c'' {
  \oneVoice
  b8 d, g b~ b d, fis b |
  d d, fis <a c> <g b>2 |
  <g b>8 d <fis a> d <g b> d <b' d> d, |
  <d g b>4. <c fis a>8 <b d g>2 |
  r8 b d g r d fis b |
  r e, fis a g d b d |
  <b d> g <c d> a <g b d>4 << { <d' g>8 b' <g b>4~ <fis b>8 a g2 } \\ 
    { b,4  d8 e d c <b d>2 } >> 
}

% piano rigth refrain b
prrb = \relative c'' {
  \oneVoice
  <g b d>2 <gis b e>4. <gis b d>8 |
  <a c>2 <fis a d>4. <fis a c>8 |
  <fis b>2 << { c'8 b a g a g fis e d2 } \\
              { e2 d a } >>
  <b d>8 g <d' fis> a <b d g>4 <e g c> |
  << <g b>2 \\ { d8 e d cis} >>
  <d fis a>2 |
  <g b d>2 <gis c e>4. <gis b d>8 |
  <a d>2 <fis a d>4. <fis a d>8 |
  <d g b>2 << { c'8 b a g } \\ e2 >>
  << { a8 g fis e } \\ d2 >> <d a>2
  s1*24
}

% piano left refrain
plr = \relative c {
 \oneVoice
 <g g'>2 <e e'> |
 <a a'> <d, d'> |
 <g g'> <c, c'> |
 <d d'> << <fis' a>2 \\ { d4 c} >>
 << { g4 d g2~ g4 a8 b c2 } \\
    { b,4 d g, c d2 d } >>
 <g' g,>4 <f f,> <e e,> <gis gis,> |
 <a a,> <g g,> <fis fis,> <d d,>
 <g, g'> <fis fis'> <a e'> <c a'> |
 << { a'4. g8 fis2 g4 a g a } \\
    { d,2~ d4 c b d g e } >>
 <d b'>2( <d d,>)
 \tuplet 3/2 4 { d8 d' d, d' d, d' d, d' d, d' d, d' }
 <g,, g,>2~ q |
 <g g'> <d d'>4 a' |
 <g d' g>1 |
 q1~ |
}

% piano left b
plb = \relative c {
  \oneVoice
  <g d' g>2 <b fis' b>
  << { e4 d } \\ <a a'>2 >> <g g'>8 d' b d |
  <g, g'>4 <d d'> <g g'> b |
  d8 d, e fis g d' g d |
  <g, d' g>2 <b fis'> |
  << { e4 d g d} \\ { <a a'>2 g} >> 
  <g d'>4 <d a' d> g8 a b c |
  d4~ d8 e16 fis g8 a b c |
}

% piano left up refrain b
plurb = \relative c' {
  fis2  e4. e8
  e2 d4. d8 |
  d2 g,4. b8 |
  a2 fis |
  d2~ d |
  g2 a |
  d2 e4. e8 |
  e2 d4. d8 |
  s2 g,4. b8 |
  a2 fis
}

% piano left down refrain b
pldrb = \relative c' {
  d8 c b a gis e fis gis |
  a g fis e fis d e fis |
  g fis e d e4 c |
  fis e d8 c b a |
  g4 d g8 a c e |
  d4 e d2 |
  b'8 a g f gis e f gis |
  a g fis e fis d e fis |
  g fis e d e4 c |
  fis e d8 c b a
  s1*24
  
}


scoreInstrRight = \relative c'' {
  \global
  << {\pruin \prua } \\
     { \prdin \prda } >>
  \prr
  \prb
  \prrb
}


scoreInstrLeft = \relative c {
  \global
    << {\pluin \plua} \\
       {\pldin \plda } >>
    \plr
    \plb
        << {\plurb } \\
       {\pldrb } >>
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
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    { 
    %  \transpose c bes {
    << \choirpart
       \fscore
       \vlscore
       \ascore
       \scoreInstrPart
    >>
    }
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }      
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    { 
    %  \transpose c bes {
    << \choirpart

    >>
    }
    %  }  % transposeµ
    \layout { 
      \context {
        \Score       skipBars = ##t
    
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
         \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }      
}


