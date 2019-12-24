\version "2.18.0"
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 20)


\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}


\header {
	  title = "O come, all ye faithful"
	  subsubtitle = "(Adeste fideles)"
	  composer = "М. и Т. Джон Френсис Вейд"
	  tagline = ##f
}


global = {
  \key g\major
  \time 4/4
}

secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key g \major
  \time 4/4
  \secondbar
}


keyTime = { \key g \major \time 4/4 \secondbar}

soprano = \relative g'  { 
  \partial 4
  \dynamicUp
  g4 | g2 d4 g | a2 d, |
  b'4 a b c | b2 a4
  g \break | g2 fis4 e | fis( g) a b | fis2( e4.) d8 | d2.r4 |
  d'2 c4 b | c2 b \break | a4 b g a | fis2 d4 \breathe
  g | g fis g a | g2 d4 \breathe
  b'| b a b c | b2 a4
  b | c b a g | fis2 g4( c) |
  b2( a4.) g8 | g1 | \bar "||" \pageBreak
  
  s1*8
    d'2^\markup { \dynamic ff " S1+S2" } c4 b | c2 ( b) | a4( b) g( a) | fis2 d4 \breathe g\mf|
  g4 fis g a | g2 d4 \breathe b'\cresc | b a b c | b2 a4 b\f |
  c4 b\cresc a g | fis2 g4( c) | b2(\ff a4.) g8 | g1 \bar "|."
}


sopranoone = \relative d' {
  \autoBeamOff
  \dynamicUp
  d'4.\f( c8) b[ c] d[ b] | c4.( b8) a[ b c a] | b4 d g e | d2 d2 | \break
  b4( cis) d e | d cis8[ b] a4 b | a( d2) cis4 | d2. r4 | \break

}

sopranotwo = \relative b' {
  b4.( a8) g[ a] b[ g] | a4.( g8) fis g a fis] | g4 a b c | b2 a |
  g2 a4 a | b g fis g | fis2 g | fis2. r4 |
}  

solo = \relative g'' {
  \autoBeamOff
  \dynamicUp
  g4.^\markup { \dynamic ff " Solo"}( fis8 e[ fis g e] | fis4. e8 dis[ e fis dis] | e4) b b8[ a] b[ cis] | d2 d4 r |
  r1 | r4 d,\mf d'2( | d4) r r2 | r4 d,\f d'2( | d4) g,\cresc d' e | fis8[ g fis e] d2 | d4(\ff g2) fis4 | g1 |
}

alto = \relative d' { 
  d4 | d2 d4 d | e2 d |
  d4 d d e | d2 d4
  b | b( cis) d cis | d2 d4 d | d2(cis4.) d8 | d2. r4 |
  d2 e8 fis g4 | g( fis) g2 | d4 d e e | d2 d4
  d | d1~ | d2 b4 
  d4 | d d d d | d2 d4
  g | fis g d d8 cis | d2 d4( e) | 
  d2~ d4. b8 | b1 
  
  R1*8
  d2 e4 e | c2( b4 dis) | e( b) b( a) | a2 a4
}
altooneend = \relative d'
 {
   d1~_"A1" | d1 | d1~ | d2. b4 | a g a b8 c | d2 d4( c) | d2 c | b1
 }

altosolo = \relative d'
{
  g2\f d4 g a2 d, b'4 a b c b2 a
    g fis4 e fis g fis g fis2( e4.) e8 d2. r4 
}


tenor =  \relative b {
  \partial 4
  b4 | b2 b4 b | c2 a |
  g4 a g g | g2 fis4
  g | g2 a4 a | a( g) fis d | a'2( g4.) fis8 | fis2. r4 |
  b2 c4 d | c2 d | d4 g, b c | a2 fis4 \breathe
  b | b a b c | b2 b4 \breathe
  g4 |
  g fis g a |
  g2 fis4
  d' | d d a a | a2 g |
  g( fis4.) fis8 | g1 |
  R1*8
  d'2 c4 b | c2( b) | a4( b) g( a) | a2 fis4 \breathe s4 | b a b c | b2 b4 \breathe <g b> |
  <g b> <fis a> <g b> <fis a>| <g b>2 <fis a>4 <g b>| a g a g | a2 g | b a | g1
  }
  
bass = \relative g {
  \partial 4
  g4 | g2 g4 g | g2 fis |
  g4 fis g c, | d2 d4
  e | e2 d4 a | d( b) fis g |a2( a4.) d8 | d2. r4 |
  b'2 a4 g | a2 g |
  fis4 g e c | d2 d4  r4 |
  r1 |
  r2. g4 |
  g fis g a |
  g2 fis4  g |
  a g fis e | d( c) b( c) |
  d2( d4.) g,8 | g1 |
  R1*8
  <b g'>2 <c g'>4 <e g> | <a, a'>2( <b fis'>2) | cis4( dis ) e( a,) | d2 d4 r4 |
  <d, d'>1~ q2. r4 | <d d'>1~ q2. <g d'>4 | <a d> <g d'> <fis d'> e' | d( c) b( a) | <d g>2 <d d,> | <g, d'>1
}

refrain = \lyricmode {
   O come, let us a -- dore him,
    O come, let us a -- dore him,
    O come, let us a -- dore him,
    Christ the Lord!
}

verseone = \lyricmode {
  \set stanza = "1. " O come, all ye faith -- ful
    Joy -- ful and tri -- um -- thant
    O come ye, O come ye to Beth -- le -- hem;
    Come and be -- hold him Born the King of An -- gels:
   \refrain
    Glo -- ry to God in the high -- est:
    \refrain
}

verseonelatin = \lyricmode {
  \set stanza = "3. " A -- de -- ste fi -- de -- les læ -- ti tri -- u -- mpha -- ntes,
Ve -- ni -- te, ve -- ni -- te in Be -- thle -- hem.
Na -- tum vi -- de -- te re -- gem a -- nge -- lo -- rum.
Ve -- ni -- te a -- do -- re -- mus
Ve -- ni -- te a -- do -- re -- mus
Ve -- ni -- te a -- do -- re -- mus Do -- mi -- num!
}

versesolo = \lyricmode {
    Glo -- ry in __ the __ high -- est:
    O come, __ O come, __ let us a -- dore Him,
    Christ the Lord!
}

versetwohalf = \lyricmode {
  \set stanza = "2. " Sing, __ choirs of an -- gels, __  Sing in ex -- ul -- ta -- tion,
  Sing, __ all ye cit -- i -- zens of heav'n__ a -- bove;
}

violinone = \relative g' {
  \partial 4
  g4 | g2 d4 g | a2 d, | b'4 a b c | b a8 g a4 g | g2 fis4 e |
  fis g a b | fis( e8 d e4.) d8 | d2. r4 | d'2 c4 b | c2 b |
  a4 b g a | fis4. e8 d4 \breathe g | g fis g a | g2 d4 b' | b a b c |
  b2 a4 b | c b a g | fis2 g4 c | b a8 g a4.\startTrillSpan g8\stopTrillSpan | g1 |
  
  d'4. c8 b c d b | c4. b8 a b c a | b4 d g e | d2 d | b4 cis d e |
  d cis8 b a4 b | a d e2 | fis4. e8 d e fis d | d2 e4 e | c2 b |
  a4 b b8 a b cis | d2. g,4 | g fis g a | g2 d4 b' | b a b c |
  b2 a4 b c b8 c d4 e | fis8 g fis e d4 c | b2 a | g1 |\bar "|."
}

violintwo = \relative d' { \partial 4
  d4 | d2 d4 d | e2 d | d4 d d e | d c8 b d4 b | b4( cis) d cis |
  d2 d4 d | d2( cis4.) a8 | a2. r4 | d2 e8 fis g4 | g fis g2 |
  d4 d e e | e2. r4 | d1~ | d2 b4 d | d1~ | d2. g4 | fis g d d8 cis | d2 d4 e | d c8 b c4.\startTrillSpan b8\stopTrillSpan | b1 |
  
  b'4. a8 g a b g | a4. g8 fis g a fis | g4 a b c | b a8 g a2 | g a4 a |
  b g fis g | fis a2 cis4 | d2 a | b c4 b | a2 fis |
  e4 fis g2 | fis4. e8 fis4 r | d1~ | d2. g4 | g a g4. fis8 |
  g4 fis8 e fis4 g | fis g a b8 c | d2 b4 g | g2 fis | d1 |\bar "|."
}

viola = \relative d' { \partial 4
  b4 | b2 b4 b | c2 a | g4 a g g | g2 fis4 g | g2 a4 a |
  a g fis d | a'2( g4.) fis8 | fis2. r4 | b2 c4 d | c2 d |
  d4 g, b c | a4. g8 fis4 b | b a b c | b2. r4| r1 | r2 r4 d | d d a a | r1 | g2 fis4.\startTrillSpan g8\stopTrillSpan | g1 |
  
  d'2 d | d d | d e | g4 g fis2 | e fis4 e |
  fis e e8 d cis b | d4 fis g e | a4. g8 fis4 d8 fis | g2 g4 g | e2 dis |
  cis4 dis e2 | fis4 a,8 g a4 b | b a b c | b2 g4 d'| d1~ |
  d2. d4 | d d d g | a2 g4 e | d2. c4 | b1 |\bar "|."
}

cello = \relative g {
  \partial 4
  g4 g2 g4 g | g2 fis | g4 fis g c, | d2 d4 e | e2 d4 a |
  d b fis g | a2~ a4. d8 | d2. r4 | b'2 a4 g | a2 g |
  fis4 g e c | d2. r4 | r1 | r2 r4 g | g fis g a |
  g2 fis4 g | a g fis e | d c b c |d2~ d4.\startTrillSpan g,8\stopTrillSpan | g1 |
  
  g'2 d4 g | a2 d,4 fis | g fis e a | b c d2 | e d4 cis |
  b e, fis g | a2 a | d c? | b c4 e | a,2 b |
  cis4 dis e a, | d,2. r4 | d1~ | d2. g4 | g fis g a |
  b a8 g d4 g | a g fis e | d c b a | d2 d | g1 | \bar "|."
}


organrightup = \relative c'' {
  \global
  \partial 4 g4 | g2 d4 g | a2 d, |
  b'4 a b c | b2 a4
  g  | g2 fis4 e | fis( g) a b | fis2( e4.) d8 | d2.r4 |
  d'2 c4 b | c2 b  | a4 b g a | fis2 d4 
  g | g fis g a | g2 d4 
  b'| b a b c | b2 a4
  b | c b a g | fis2 g4( c) |
  b2( a4.) g8 | g1 \bar "||"
  
<b d>4. <a c>8 <g b> <a c> <b d> <g b> |
c4. b8 a b c a | b4 d g e | << d2 {s4 a8 g} >> d'2 |
b4 cis d e | 
d cis8 b <fis a>4 d |
a' d2 cis4 |
fis4. e8 d e fis d |
g4. fis8 e fis g e |
fis4. e8 dis e fis dis |
e4 b b8 a b cis |
d2. g,4 |
g fis g a |
g2 d4 b'4 |
<b g> a b c |
<g b>2 <fis a>4 <g b> |
c b8 c d4 <g,e'> |
fis'8 g fis e d2 |
d4 g2 fis4 | g1 |

\bar "|."
}
  
organrightdown = \relative c' {
    \global
  \partial 4 
  
  d4 | d2 d4 d | e2 d |
  d4 d d e | d2 d4
  b | b( cis) d cis | d2 d4 d | d2(cis4.) d8 | d2. r4 |
  d2 e8 fis g4 | g( fis) g2 | d4 d e e | d2 d4
  d | d1~ | d2 b4 
  d4 | d d d d | d2 d4
  g | fis g d d8 cis | d2 d4( e) | 
  d2~ d4. b8 | b1 
  
  
d1 |
<c e>2 d |
<d g>4 a' <g b> <fis c'> |
<g b>4 e <d fis>2 |
<e g>2 <d a'>4 <e a> |
<fis b> <e g> e8 d cis b |
<d fis>4 <fis a> <a e'>2 |
<a d>2( a) |
<g d'> <g c>4 <g b> |
<a c>2 <fis b> |
a4 fis <e g>2 |
<d fis>2. g4 |
d1~ |
d2 b4 <d g> |
<< d1~ { s2 g4. fis8 } >> d2. d4 |
<d fis> <d g> <d a'> b'8 c |
<a d>2 g4 <e g c> |
<g b>2 <a c> |
<g b>1
}  

organleftup = \relative c' {
    \global
 b4 | b2 b4 b | c2 a |
  g4 a g g | g2 fis4
  g | g2 a4 a | a( g) fis d | a'2( g4.) fis8 | fis2. r4 |
  b2 c4 d | c2 d | d4 g, b c | a2 fis4 \breathe
  b | b a b c | b2 b4 \breathe
  g4 |
  g fis g a |
  g2 fis4
  d' | d d a a | a2 g |
  g( fis4.) fis8 | g1 | \bar "||"
  
g2 d4 g | 
a2 d, |
b'4 a b c |
b2 a | 
g2 fis4 e
fis g a b |
fis2 e |
d <a'd fis> |
<g d'> <g c e>4 <g b e> |
c2 b4 dis |
<a e'> b <g b> a |
a2. a4 |
b a b c |
b2 g4 <g b> |
<g b> <fis a> <g b> <a c> |
<g b>2 <fis a>4 <g b> |
a g a b8 c |
<< { d2~ d4 c } \new Voice { \voiceFour a2 g }  >> <g b d>2 <a c> |
<g b>1
}

organleftdown = \relative c' {
    \global
  \partial 4 <g g,>4 | q2 q4 q | q2 <fis fis,> |
  <g g,>4 <fis fis,> <g g,>  c, | d2 d4
  e | e2 d4 a | d( b) fis g |a2( a4.) <d d,>8 | q2. r4 |
  b'2 a4 g | a2 g |
  fis4 g e c | d2 d4  r4 |
  r1 |
  r2. g,4 |
  g fis g a |
  g2 fis4  <g' g,> |
  <a a,> <g g,> <fis fis,> <e e,> | d( c) b( c) |
  d2( d4.) g,8 | g1 |
  
  
g1~ |
g2 fis |
g4 fis e a |
b c d2 |
e d4 cis |
b e, fis g |
a1 |
d2 c? |
b c4 e |
<a, a'>2 <b fis'>
cis4 dis e a, |
d?2. r4 |
<d, d'>1~ |
q~ |
q~ | 
q2. <g d'>4 |
<a d> <g d'> <fis d'> <e' g> |
d c b a |
d2 <d, d'> |
<g d'>1 \bar "|."
}

scoreARight = {
  \set Score.skipBars = ##t
  << \organrightup \\ \organrightdown >>
}

scoreALeft = {
  \set Score.skipBars = ##t
  << \organleftup \\ \organleftdown >>
}

choirPart =   \new ChoirStaff  <<
    \new Staff \with { shortInstrumentName = #"sl" midiInstrument = "voice oohs" }
    <<
      \clef treble
      \new Voice = "solo" { \keyTime R4 R1*28 \solo }
    >>
    \new Lyrics \lyricsto "solo" { \versesolo }
    
    \new Staff \with {
      instrumentName = \markup { \column { "S1" \line { "S2" } } }
      shortInstrumentName = \markup { \column { "S1" \line { "S2" } } }
      midiInstrument = "voice oohs"
    }
    <<
      \new Voice = "sopone" { \voiceOne \keyTime R4 R1*20 \sopranoone }
      \new Voice = "soptwo" { \voiceTwo R4 R1*20 \sopranotwo }
    >>
    \new Lyrics \lyricsto "sopone" { \versetwohalf }
    
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "S" \line { "A" } } }
      shortInstrumentName = \markup { \column { "S" \line { "A" } } }
      midiInstrument = "voice oohs"
    }
    <<
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto \showStaffSwitch \change Staff= "tb" \stemUp b4^\markup { \dynamic mf " A2+T"} \hideStaffSwitch \change Staff="sa" \voiceTwo \altooneend }
    >>
    \new Lyrics \lyricsto "Sop" { \verseone }
    \new Lyrics \lyricsto "Sop" { \verseonelatin }
    
    \new Staff \with {
      instrumentName = #"Alto" 
      shortInstrumentName = #"A"
      midiInstrument = "voice oohs"
    }
    <<
      \clef treble
      \new Voice { \voiceOne \keyTime r4 R1*20 \altosolo }
    >>

   \new Staff = "tb" \with {
      instrumentName = \markup { \column { "T" \line { "B" } } }
      shortInstrumentName = \markup { \column { "T" \line { "B" } } }
      midiInstrument = "voice oohs"
    }
    <<
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
  >>
  
violinOnePart = \new Staff \with {
      instrumentName = #"Violin1" 
      shortInstrumentName = #"V1"
      midiInstrument = "violin"
    }
    <<
      \clef treble
      { \keyTime \violinone }
    >>
    
violinTwoPart = \new Staff \with {
     instrumentName = #"Violin2"
     shortInstrumentName = #"V2"      
     midiInstrument = "violin"

    }
    <<
      \clef treble
      { \keyTime \violintwo }
    >>

altoPart = \new Staff \with {
     instrumentName = #"Alto"
     shortInstrumentName = #"A"
     midiInstrument = "violin"

    }
    <<
      \clef alto
      { \keyTime \viola }
    >>
    
celloPart = \new Staff \with {
     instrumentName = #"Cello"
     shortInstrumentName = #"Vc."
     midiInstrument = "cello"

    }
    <<
      \clef bass
      { \keyTime \cello }
    >>

violiniPart = \new StaffGroup <<
  \violinOnePart
  \violinTwoPart
  \altoPart
  \celloPart
  >>
  
organPart = \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } {  \scoreARight }
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>
  
 organParts = { \organPart } 
  
 
instrPart = << 
  \violiniPart
  \organPart
>>
  

\bookpart {
  \header { piece = "Хор" }
  \score { 
    \choirPart
    \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header { piece = "Клавир" }
  \score { 
    \organParts
    \layout {  }
  }
}


\bookpart {
  \header { piece = "Instruments" }
  \score { 
    \instrPart
    \layout {  }
  }
}

\bookpart {
  \header { piece = "Cello" }
  \score { 
    \celloPart
    \layout { }
  }
}

\bookpart {
  \header { piece = "(cello)" }
  \score { 
     \new Staff \with {
     instrumentName = "Viola"
     shortInstrumentName = #"Vl."
     midiInstrument = "cello"
    }
    <<
      \clef alto
      { \keyTime \cello }
    >>
    \layout { }
  }
}

\bookpart {
  \header { piece = "Full" }
  \score { 
  
    <<
      \choirPart
      \instrPart
    >>
    \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}

