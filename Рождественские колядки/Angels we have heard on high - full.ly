\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "Angels we have heard on high"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-numbers
  \override MultiMeasureRest.expand-limit = #1
  \secondbar

  %\numericTimeSignature
  
}

U = { \change Staff = right }
D = { \change Staff = left }



%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

pause = {  \global 
 R1*9 }

tmpo = { \tempo "Moderato" 4=130 }

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
  c2 d8[ c b a] |
  b2 c8[ b a g] |
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
  c2 d8[ c b a]
  b2 c8 b a g
  a4.) a8 d,2 |
  g4 a b c |
  <b g>2( <d a>)
  g1 \bar "|."
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
 e2 d4 fis
 d2 c4 d4~ |
 d) cis d2 |
 d4 fis g a |
 d,2( fis) |
 <g b>1
}

sopvoice = \relative c'' {
  \global \tmpo
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

c[ b a g] a4 d8[ c]
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
  
  a8[ g fis e] fis4 d
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
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \tenorvoice }
        \new Voice = "bass" {  \voiceTwo  \bassvoice }
      >>
    >>


% flute

flutenotes = \relative c'' { 
  % intro
  b2\mf( d |
  g b,)
  e2 d |
  g, \tuplet 3/2 4 { a8 b c d e fis } |
  \tuplet 3/2 4 { g fis g b, d g fis e fis a, d fis } |
  \tuplet 3/2 4 { e d e g, b e d e d fis, b d } \abr
  
  \tuplet 3/2 4 { c d c b c e d b c d e fis } |
  \tuplet 3/2 4 { g d g d b d b g b g d g }
  a2\fermata\trill  r2
  
  % verse 1
  \mark \default
  R1*4
  R1*4
  
  %refrain 1
  b'2 e,4 gis |
  a g fis2 |
  r4 d g2 |
  
  % page 2
  a2 d |
  d4 d8 c b a g4
  
  % page 3
  g2 fis |
  d'2 e4 b |
  c d8 e d4 a |
  b g c2 |
  a2 d,4 e8 fis |
  g4 a b c | \abr
  
  % page a4
  b2 g |
  a \startTrillSpan a\stopTrillSpan  |
   \tuplet 3/2 4 { g8 fis g b, d g a g a c, e a |
                                 b a b d, g b a g a c, fis a |
                                 g fis g b, d g a g a c, e a | } \abr
  
  % page a5
  \tuplet 3/2 4 { b8 a b d, g b a g a c, fis a }
  \mark \default
  g2 d |
  d4 e8 fis g2 |
  d1 |
  d8 e d4 g4. a8 
  
  % page a6
  b4 c d fis |
  g2 b,4. c8 |
  d4 a g2 |
  
  % page a7
  d2 g, |
  b' e, |
  a d, |
  g c4 b |
  a g fis2
  \tuplet 3/2 4 {g8 d g a fis a a g a c g a }
  
  \tuplet 3/2 4 { b8 c b g a b a g a } d,4 |
  d2 e |
  e fis |
  d e |
  
  %52
  d1 |
  b4 a g2 |
  g \tuplet 3/2 4 { a8 b c d g fis | }
  
  \tuplet 3/2 4 {g fis g b, d g a g a c, e a |
                 b a b d, g b a g a c, fis a }
  \tuplet 3/2 4 {g fis g b, d g a g a c, e a |
                 b g d g d b a\< b c d e fis\! }
  
  % 59
 \tuplet 3/2 4 { g fis g b, d g fis e fis a, d fis } |
  \tuplet 3/2 4 { e d e g, b e d e d fis, b d }
  
  \tuplet 3/2 4 { c d c b c e d b c d e fis } |
  
  % 62 
  \tuplet 3/2 4 { g8 d g d b d b g b g d g |
                   d e fis g a b c d e fis g a }
  \mark \default
  
  %64
  \tuplet 3/2 4 { b8 a b d, g b g fis g b, d g |
                  e d e d fis a g fis g d g b |
                  g fis g d fis a g fis e d c b |
                  d g b d, fis a g fis g g, b d }
  
  \tuplet 3/2 4 { g fis g b, d g e g e g d' g, |
                  e g e fis g a g fis g b, d g |
                  b g d a' fis d g d g b g b |
                  g d g fis d fis } g4 r
  
  \tuplet 3/2 4 { b8 a b g d g e b e gis e gis |
                  a e a e c e fis d fis a fis a |
                  g fis g b, d g c g e g fis e |
                  d fis d e fis g fis a fis a d a }
  
  g4 a b c |
  d2. r4 |
  \tuplet 3/2 4 { g,8 fis g b, d g e gis e b e gis |
                  a e c e d c d fis e d e fis }
  \tuplet 3/2 4 { g fis g b, d g e d e b d b |
                  e d e cis d e d a b cis d fis |
                  g d g a d, a' } b4 \tuplet 3/2 4 { c8 b a } |
  b2 d |
  g1
  
  \bar "|."
  
}

% violin one     
vinotes = \relative c'' {
  R1*3 |
  r2 \tuplet 3/2 4 { c8\mp\< d e fis g a } |
  b2\f \ottava 1 d4 fis |
  g2 fis4 b, |
  
  e2 d |
  g,2. a8 b |
  a2\fermata\trill r2
  \ottava 0
  
  % verse 1
  \mark \default
  b,2 b4 b8 d |
  d4. c8 b4 a |
  b b8 a b4 d |
  b4. a8 g2 | \abr
  
  b4 a b b8 d |
  d4. c8 b4 a |
  b b8 a b4 d |
  b4. a8 g2 |
  
  % refrain 1
  d'2 e8 d c b |
  c2 d8 c b a |
  b2 c8 b a g
  
  % page 2
  a4. a8 d,4  d8 e16 fis |
  g4 a b c |
  
  % page 3
  b4 a8 g a2 |
  d e |
  e fis |
  g e |
  d4 cis d2 |
  d2. g4 |
  
  %page a4
  g2 d |
  c d4~ \tuplet 3/2 { d8 e fis } |
  g4.\> r8\p a,2 |
  b c8 d e fis |
  \tuplet 3/2 4 { g fis g b, d g a g a c, e a }
  
  % page a5
  \tuplet 3/2 4 { b a b d, g b a g a c, fis a }
  \mark \default
  g2 d |
  d4. c8 b2 |
  b4 a b d |
  b4. a8 g2
  
  % page a6
  g' fis |
  g4 d d2 |
  b4 a b d
  
  % page 7
  b4. a8 g2 |
  d'2 e8 d c b |
  c2 d8 c b a |
  b2 c8 b a g
  a4. a8 d,2 |
  g4 a b c
  
  b2 \tuplet 3/2 4 { a8 b c d e fis } |
  g2 gis |
  a1 |
  g |
  
  % 52
  a4. d8 d2 |
  g,4 fis e2 |
  d4 c8 b a2 |
  g a |
  b a |
  
  g a |
  b \tuplet 3/2 4 { c8 d e fis g a } |
  
  % 59
  b2\f \ottava 1 d4 fis |
  g2 fis4 b, |
  
  e2 d | \ottava 0
  g,2. a8 b |
  a1
  
  \mark \default
  b,4 b b d |
    d4. c8 b2 |
    b4 a b d |
    d1 |
    d2 e4 g |
    d4. fis8 g4 d8 c |
    b4 a b d |
    d2 g,4~ g16 a b c 
    
    d2 e |
    e d |
    d c |
    d1
    
    g,4 a b c |
    b2 a4~ \tuplet 3/2 4 { a8 b c }
    
    d2 e8[ d c b] |
  c2 d8[ c b a]
  b2 c8 b a g
  a4. a8 d,2 |
  g4 a b c |
  <b g>2( <d a>)
  g1 \bar "|."

}

%violin two 
viinotes = \relative c'' {
  R1*3 |
  r2 a2 |
  d d |
  b b |
  
  g2 g |
  g1 |
  d'2\fermata r |
  
  % verse 1
  \mark \default
  g,2 g g4. fis8 g4 fis |
  g g8 d g2 |
  g4 fis d2 |
  
  g4 d g g8 b |
  b4. a8 g4 fis |
  g g8 d g2 |
  g4. d8 d2 |
  
  % refrain 1
  d'8 c b a gis4. b8 |
  c b a g fis4. a8 |
  b a g fis e4 c 
  
  % page 2
  d4 cis d2 |
  d4 d g e |
  
  % page a3
  g2 fis |
  g b |
  c a |
  b g |
  fis4 a a2 |
  b4 a b c |
  
  % page a4
  d2 b |
  g fis |
  g4.\> r8\p e2 |
  g fis g a |
  
  % page a5
  b a |
  \mark \default
  b b |
  a4 fis g2 |
  g4 fis g2 |
  g4 fis d2 
  
  % page a6
  d' d |
  d4. c8 b2 |
  g4 fis g2
  
  % page 7
  g4 fis g2 |
  g4 b8 a gis2 |
  e4 a8 g fis2 |
  d4 g8 fis e2
  d4. c8 d2 
  d4 fis g g |
  g2 fis4 a |
  g2 b |
  c d |
  b c |
  
  % 52
  a4. a8 a4 b8 c |
  d2 b4 c |
  b2 fis |
  d e |
  g fis |
  d e |
  g fis4\< a\! |
  
  % 59-61 = 5-7
  d2 d |
  b b |
  g2 g  |
  
  g1 |
  d' |
  
  \mark \default
  g,4 g g g |
    g4. a8 g2 |
    g4 fis g g |
    g fis d2 |
    g2 g |
    g4. a8 g2 |
    g4 fis g2 |
    g4. fis8 d2
    
    b'1 |
    c |
    b2 g |
    a1
    
    e4 d d e |
    g2 fis |
  
g2 gis4 e~ |
 e2 d4 fis
 d2 c4 d4~ |
 d cis d2 |
 d4 fis g a |
 d,2( fis) |
 <g b>1 \bar "|."
}

%alt one intro
viiinotes = \relative c' {
  R1*3 |
  r2 c |
  b8 d b d a d a d |
  g, b g b fis b fis b |
  
  e,8 g e g d g d g |
  b d b d b d a d |
  fis2\fermata r2 |
  
  % verse 1
  \mark \default
  d2 d |
  d d |
  d d |
  d4. c8 b2
  
  d e |
  fis e4 d |
  d1 |
  d4. c8 b2 |
  
  %refrain 1
  b b |
  e d |
  d g, |
  
  % page 2
  fis4 e fis a |
  g a d c |
  
  % page a3
  d2 d |
  d e |
  a d, |
  d c |
  d4 e fis2 |
  g4 fis g e |
  
  % page a4
  d1 |
  d |
  b2 c |
  d c |
  b c |
  
  % page a5
  d c |
  \mark \default
  d fis |
  e4 d d2 |
  d2 d |
  d4. c8 b2 |
  
  % page a6
  b' b |
  g4 a g2 |
  d d 
  
  % page 7
  d8 e d c b2 |
  b e~ |
  e d~ |
  d c4. b8 |
  a4. a8 fis2 |
  g4 d' d e |
  d2 d4 c |
  b d2 e4~ |
  e c2 d4~ |
  d b4 c2 |
  
  % 51
  a4. a8 fis2 |
  g4 c g e' |
  d c8 b c2 |
  b c |
  d c |
  b c |
  d << c { s4\< s\!} >> |
  
  % 59-61 = 5-7
  b8 d b d a d a d |
  g, b g b fis b fis b |
  e,8 g e g d g d g |
  
  b d b d b d a d |
  a d a d a d a d |
  
  \mark \default
  d4 d e d |
e4. d8 d2 |
d4 d d d |
d4. c8 b2 |
d2 e4 d |
e fis8 d d2 |
d d |
d1
  
  g1 |
  a |
  g2 e |
  d fis |
  
 b,4 a g g |
g( b8[ d]) d2 |
  
d2. e8[ d] |

c[ b a g] a4 d8[ c]
b8 a g fis g4 g |
e8[ fis] g4 fis2 |
g4 d' d8[ e] e4 |
d4( c8[ b] c4. b8) |
b1 \bar "|."

}

%alt two intro
cellonotes = \relative c {
 %intro
  
  R1*3 |
  r2\mp d\< |
  g\f fis |
  e d |
  
  c b |
  d,1 |
  d'2\fermata r2 |
  
  % verse 1
  \mark \default
  g2 g4 g8 b |
  b4. a8 g4 d |
  g g8 fis g4 b |
  d d, g2 |
  
  g4 fis e2 |
  b e4 fis |
  g2 g4 b |
  d, e8 fis g2 |
  
  %refrain 1
  g2 e |
  a d, |
  g c, |
  
  % page 2
  d4 a d c |
  b fis g e |
  
  % page a3
  d2 d'4 c |
  b a gis e |
  a g fis d |
  g fis e2 |
  d4 a' d2 |
  b4 d g c, |
  
  % page a4
  d1 |
  d, |
  g\< |
  g\> |
  g\< |
  
  % page a5
  g2.\< d'4\! |
  \mark \default
  g2 b |
  a4 d, g2 |
  g4 d g, b |
  d d, g d' |
  
  % page a6
  g2 b |
  e,4 fis g2 |
  g4 d g b,
  
  % page 7
  d4 d g,2 |
  g' e4 gis |
  a2 d,4 fis |
  g2 c,4 e |
  fis e d c |
  b fis g c |
  d e d r |
  b'8 a g fis e4 gis |
  a8 g fis e d4 fis |
  g8 fis e d c4 e |
  
  % 51
  fis e d c |
  b d e c |
  d2 d, |
  g1 |
  g |
  g |
  g2 << d' { s4\< s\! } >> |
  
  % 59-61 = 5-7 
 g2 fis |
  e d |
  c b |
  
  d1 |
  << d, { s2\< s\! } >>
  
  \mark \default
  g'4 g e b |
  c8[ d e] fis g2 |
  g4 d g b8[ c] |
  d4 d, g2 |
  g2 e4 b |
  a8 c d fis g2 |
  g4 d g8 a b c |
  d e d c b2 |
  
  g4 f e gis |
  a g fis d |
  g e c e |
  d4. d8 d2
  
  e4 fis g c, |
  d( g8[ b]) d4( c) |
  
  b4 g8[ f] e4 gis |
  
  a8[ g fis e] fis4 d
  g8[ fis e d] e4 b |
  a a d( c) |
  b d g8[ e] c[ a ] |
  d2~( d4 d,) |
  <g d'>1 \bar "|."
  
}

flutepart = { \global \tmpo \flutenotes }
vipart = { \global \tmpo \vinotes }
viipart = { \global \tmpo \viinotes }
viiipart = { \global \tmpo \viiinotes }
cellopart = { \global \tmpo \cellonotes }


fscore = \new Staff \with {
  instrumentName = "Fl"
  shortInstrumentName = "F"
  midiInstrument = "flute"
} {
  \flutepart
}

viscore = \new Staff \with {
  instrumentName = "V1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} {
  \vipart
}

viiscore = \new Staff \with {
  instrumentName = "V2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} {
  \viipart
}

%alto score
viiiscore = \new Staff \with {
  instrumentName = "Alt"
  shortInstrumentName = "A"
  midiInstrument = "viola"
} {
  \clef alto \viiipart
}

celloscore = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "C"
  midiInstrument = "violin"
} {
  \clef bass \cellopart
}

% piano rigth up intro
pianorightupintro = \relative c'' {
  d2 e8 d c b |
  c2 d8 c b a  |
  b2 c8 b a g |
  a4. a8 d,2 |
  g4 <a fis> <b g> <c a> |
  b4 a8 g a4.\startTrillSpan g8 \stopTrillSpan|
  g1
}

% piano rigth down intro
pianorightdownintro = \relative c'' {
  <g b>2 gis |
  << e2 \\ {s4 a8 g } >> fis2
  << d2 \\ {s4 g8 fis } >> e2
  d4 cis a2 |
  b4 d8 cis d4 e |
  <d g>2 <d fis>4. c8 |
  <d b>1
}

% piano left up intro
pianoleftupintro = \relative c' {
  d2 b4 e |
  c2 a4 d |
  b2 g |
  e4 g fis2 |
  g4 a g e |
  g4 a8 b c2 |
  g1
}

% piano left down intro
pianoleftdownintro = \relative c' {
  g4 f e fis |
  a8 g fis e d4 fis |
  g8 fis e d c4 b |
  a2 d4 c |
  b d g, a8 c |
  d2 d4 d, |
  g1
}

% piano rigth up a
pianorightupparta = \relative c'' {
  s1*8
}

% piano rigth down a
pianorightdownparta = \relative c'' {
s1*8
}

% piano left up a
pianoleftupparta = \relative c' {
s1*8
}

% piano left down a
pianoleftdownparta = \relative c' {
s1*8
}

% piano rigth refrain a
pianorightrefa = \relative c' {
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
pianorightpartb = \relative c'' {
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
pianorightrefb = \relative c'' {
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
pianoleftref = \relative c {
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
pianoleftpartb = \relative c {
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
pianoleftuprefb = \relative c' {
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
pianoleftdownrefb = \relative c' {
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


pianorightnotes = \relative c'' {
  \tmpo
  \global
  <g b>2\mf <a d> |
  <g g'> <fis b> |
  <e e'>-\markup\italic"cresc." <g d> |
  <c, e g> <c d fis a> |
  <b d g> <d a' d> |
  <b e g> <b fis' b> | \abr
  
  <c e g> <d g d'> |
  <b d g> <d g b> |
  <c d fis a>2\fermata r2 |
  
  % verse 1
  \mark \default
  R1*4
  R1*4
  
  % refrain 1
  
  \tuplet 3/2 4 { b'8 g d b d g b gis e d e gis }
  \tuplet 3/2 4 { a e c a c e fis d c a d fis }
  \tuplet 3/2 4 { g d b b' g d c' g e g e c }
  
  % page 2
  \tuplet 3/2 4 { fis d a g cis e fis, a d a d fis }
  \tuplet 3/2 4 { g d g, a' d, a b' d, b c' g c, }
  
  % page a3
  \tuplet 3/2 4 { b' g d b d g a fis d c d fis |
                  b fis d b d fis b e, b d e gis |
                  a e c a c e fis d a d fis a |
                  g d b d g b c g e c e g |
                  a fis d a e' a fis d a d fis a |
                  g d g, a' fis d b' g d c' g e }
  
  % page a4
  \tuplet 3/2 4 { b'8 g d g d b d b d g d g |
                a g d c d g } << <d a'>2 \\ \tuplet 3/2 4 { a8 b c d e fis } >>
  <b, d g>2 <c e a> |
  <d g b> <c d fis a> |
  <b d g>4 <b' d g> <c, e a> <c' e a> |
  
  % page a5
  <d, g b> <d' g b> <c, d fis a> <d' fis a> |
  \mark \default
  g,8 d b' d, d' fis, b d, |
  <a' d> e <fis c'> d  b' d, g d |
  <g b> d <fis a> d <g b> d <g d'> d |
  <g b> d fis <c a'> <b g'> d g d | \abr
  
  % page a6
  b' d, g d d' fis, b d, |
  <g d'> e a <d, c'>  <g b> d g d |
  <g b> d <fis a> d <g b> d <g d'> d |
  
  % page 7
  <g b> d fis <c a'>  <b g'> d g b |
  b d, g d b' e, gis b |
  c e, a c a d, fis a |
  b d, g b c g e g |
  a fis d e fis d a d |
  g d a' d, b' d, <e c'> g
  b d, g e a fis d fis |
  g d b' d, gis e b' e, |
  <c a'> e c' e, a d, fis a |
  b d, g d e g c g |
  
  % 52
  a d, a e' <d fis> a a' d, |
  g d <fis a> d <g b> e <g c> e |
  <d b'> g d g a fis d c |
  <b d g>2 <c e a>
  <d g b> <c fis a> |
  <b d g>4 <b' d g> <c, e a> <c' e a> |
  <d, g b> <d' g b> <c, d fis a>\< <d' fis a>\!
  
  %59-61 = 5-7
    <b, d g>2 <d a' d> |
  <b e g> <b fis' b> | 
  <c e g> <d g d'> |
  
  <b d g>2 <d g b>|
  <c d fis a> <d fis a d> |
  
  \mark \default
  
  b'8 d, g d b' g d g |
  e g d a' g d b' d, |
  <d b'> g <fis a> d <g b> d <g d'> d |
  <g b> d fis <c a'> g' d b d |
  
  %68
  b' d, g d g e b' d, |
  a' e fis d g d b' d, |
  g d <fis a> d <g b> d <g d'> d |
  g d <c fis> d g d b d |
  
  %72
  g d b' d, gis e b' e, |
  a e c' e, fis d a' e |
  g d b' fis e g c g |
  a fis d fis a fis d c |
  
  <b g'> e a d, b' g c e, |
  b' g d g a fis d fis |
  g d b' d, gis e b' d, |
  c e a e fis d a' d, |
  
  g d b' d, c' g d g |
  a d, fis e fis d a' d, |
  g d a' fis <d b'> g <e c'> a |
  <d, g b>4 << { g4 a2 } \\ { c,8 b r4 <c d fis> } >> |
  <g b d g>1
  
  \bar "|."
  
  
%  \pianorightpartb
%  \pianorightrefb
}


pianoleftnotes = \relative c' {
  \tmpo
  \global
  <g d'>2 <fis d'> |
  << b1 \\ { e,2 d } >> |
  << g1 \\ { c,2 b } >> |
  <d d,>1 |
  <g, g'>2 <fis fis'> |
  <e e'> <d d'> |
  
  <c c'> <b b'> |
  <d d'>1 
  \ottava -1 <d, d'>2 r2 |
  \ottava 0
  %verse 1
  R1*4
  R1*4
  
  % refrain 1
  
  <g' g'>2 <e e'> |
  <a a'> <d, d'> |
  <g g'> <c, c'> | \abr
  
  <d d'>4 <c a'> <d d'> <c c'> |
  \ottava -1
  <b b'> <fis fis'> <g g'> < e e'> |
  
  % page a3
  <d d'>2 <d' d'>4 <c c'> |
  <b b'> <a a'> <gis gis'> <e e'> |
  <a a'> <g g'> <fis fis'> <d d'> |
  <g g'> <fis fis'> <e e'>2 |
  <d d'>4 c' d2 \ottava 0 |
  <b b'>4 <d d'> <g g'> <c c'> 
  
  % page a4
  <d d,>1 |
  \ottava -1 <d, d,> |
  <g g,> |
  <g g,> |
  <g g,> |
  
  % page a5
  <g g,> |
  \ottava 0 <g g'>2 <b b'> |
  <a a'>4 <d, d'> <g g'>2 |
  <g g'> 4 <d d'> <g g'> b |
  d d, <g g'>2
  
  % pagd a6
  <g g'> <b b'> |
  <e, e'>4 <fis fis'> <g g'>2 |
  <g g'>4 <d d'> <g g'> <b, b'> |
  
  % page 7
  <d d'>2 <g, g'> |
  <g' g'> <e e'>  |
  <a a'> <d, d'> |
  <g g'> <c, c'>4 <e e'> |
  <d d'>2. <c c'>4 |
  <b b'> <fis fis'> <g g'> <c c'>
  <d' d,>1
  <g g,>2 <e e,> |
  <a a,> <d, d,> |
  <g g,> <c, c,>4 <e e,>
  
  %52
  <fis fis,> <e e,> <d d,> <c c,> |
  <b b,> <d d,> <e e,> <c c,> |
  <d d,>2 \ottava -1 <d, d,> |
  <g g,>1
  
  <g g,>  \ottava 0 |
  <g' g,>~ |
  q2 <d d,> |
  
  %59-61 = 5-7
    <g, g'>2 <fis fis'> |
  <e e'> <d d'> |
  \ottava -1 <c c'> <b b'> |
  
  <d d'>1~ |
  q2 <d, d'> |
  
  \mark \default
  < g g'>2 \ottava 0<e' e'>4 <b b'> |
  <d d'>2 \ottava -1 <g, g'> |
  <g g'>4 <d' d'> <g g'> < b, b'> |
  <d d'>2 <g, g'> \ottava 0
  
  % 68
  <g' g'>2 <e e'>4 \ottava -1 <b b'> |
  <a a'> <d, d'> <g g'>2 |
  <g g'>4 \ottava 0 <d' d'> <g g'>2 |
  <d d'>  <g, g'>
  
   <g' g'>4 <f f'> <e e'> <d d'> |
  <c c'> <a a'> <d d'>2 |
  <g g'> <c, c'> |
  <d d'>1
  
  <e e'>4 <fis fis'> <g g'> <c, c'> |
  <d d'>1 |
  <g g'>2 <e e'> |
  <a, a'> <d d'>
  
  <g g'> <e e'>4 <b b'> |
  <a a'>2 <d d'>4 <c c'> |
  <b b'> <d d'> g8 e c a |
  <d d'>2 <d, d'> |
  <g g'>1

%    \pianoleftpartb
%        << {\pianoleftuprefb } \\ {\pianoleftdownrefb } >>
}


pianopart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \pianorightnotes
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \pianoleftnotes }
  >>
  
  
instrscore = <<
  \fscore
  \new StaffGroup <<
  \viscore
  \viiscore
  \viiiscore
  \celloscore
  >>
%  \choirpart
  \pianopart
>>

fullscore = <<
  \fscore
  \new StaffGroup <<
  \viscore
  \viiscore
  \viiiscore
  \celloscore
  >>
  \choirpart
  \pianopart
>>

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  
\bookpart {
  \header { piece = "Flute" }
  \score {
    \fscore
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Violini" }
   \paper { system-separator-markup = \slashSeparator }
  \score {
    << \viscore \viiscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Alto" }
  \score {
    << \viiiscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Cello" }
  \score {
    << \celloscore >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Piano" }
   \paper { system-separator-markup = \slashSeparator page-count = #2 }
  \score {
    << \pianopart >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}

\bookpart {
  \header { piece = "Instruments" }
  \paper { system-separator-markup = \slashSeparator }
  \score {
    \instrscore
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
  
\bookpart {
  \header { piece = "Conductor" }
  \paper { system-separator-markup = \slashSeparator 
  system-system-spacing #'basic-distance = #8
   }
  \score {
    \fullscore
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }      
}


\bookpart {
  \score {
    << \choirpart >>
    \layout { 
      \context {
        \Score       skipBars = ##t
    
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
%         \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }      
}

\bookpart {
  \score {
   \unfoldRepeats \articulate << \fullscore >>
    \midi {
      \tempo 4=90
    }
  }      
}

