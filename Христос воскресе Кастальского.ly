\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
    title = "Христос воскресе!"
    opus = "№77"
    composer = "А. Кастальский"
    %arranger = "перелож для см. хора"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
%mbr = {}
  
global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Бодро"
  \partial 4 g4\mf |
  c4. d8 e8.[ d16] c8 e |
  d4( e) d4. r8 | \abr
  f8.[( e16] d8[ c])
  d8[ e] f[ g] |
  a4 g8[ f] g4 r8 e |
  g4 g16[ f e8] f4 f | \abr
  c2( d4) b |
  e2 d4 c |
  a4 r8 e'\f f4. <a c,>8 | \abr
  <f a>4 q8 <e a> << { a4.( g8) } \new Voice { \voiceThree d8[( e] f4) } >> \voiceOne
  <e g>4 r q q8 <e a> | \abr
  <d f>4 <c e>16[ d c8] d4 r8 d |
  g8 g f e d4 e |
  d4 e8 e f4 r8 d | \abr
  c4. d8 e8.[ d16] c8 e |
  d4( e) d4. r8 |
  f8.[( e16] d8[ c])
  d8[ e] f[ g] | \abr
  a4 g8[ f] g4 r8 e |
  g4 g16[ f e8] f4 f |
  c2( d4) b |
  e2 d4 d | \abr
  e8 c <bes d> <bes e> <a f'>4( <c e>8 <f d>) |
  <c g'> c <bes d> <bes e> <a f'>4( <c e>8 <f d>) | \abr
  <c g'>4 c d e | 
  f2 g4 g |
  \tempo Замедляя a2 a4 <a f> |
  \arpeggioBracket
  <g d>1->\arpeggio |
  <g e>\arpeggio\fermata \bar "|."
}

altvoice = \relative c' {
  \global
  \partial 4
  g4 |
  g f g g8 g |
  g2 g4. r8 |
  a4( f8[\< g])
  a4 a8[ c]\! |
  c4 c8[ d] c4 r8 g |
  bes4 bes a a |
  a2. a4 |
  
  a4(\> b) a g\! |
  a8 a-> a-> a-> a-> a a4 |
  a4 a8 a a4.( g8) |
  g8 c-> c-> c-> c-> c-> c4-> |
  a4 a a r8 b |
  c8 c a g a4 g |
  
  g4 g8 g a4 r8 b |
  g4 f g g8 g |
  g2 g4. r8 |
  a4( f8[ g])
  a4 a8[ c] |
  c4 c8[ d] c4 r8 g |
  bes4 bes a a |
  a2. a4 |
  a4( b) a b |
  c8 c bes bes a4( g8 a) |
  g c bes bes a4( g8 a) |
  g4 g f a |
  a2 c4 c |
  c2 c4 d |
  b1 |
  c1 \bar "|."
  
}

tenorvoice = \relative c {
  \global
  \dynamicUp
  \partial 4
  g4\mf |
  c4. b8 c4 c8 c |
  b2\> b4.\! r8 |
  d4.( e8) 
  d8[ c] d[ e] |
  f4 e8[ f] e4 r8 c8 |
  d4 d d d |
  c2( b4) d |
  c4( b) d e |
  a, r8 e' d4. e8 |
  d4 f8 f f[( e] d4) |
  e4( c) <e g> q8 <e a> |
  <d f>4 e d r8 g |
  g g c, c c4 c 
  b4\> b8 c d4\! r8 d |
  c4. b8 c4 c8 c |
  b2 b4. r8 |
  d4.(\< c8)
  d8[ c] d[ e]\! |
  f4 e8[ f] e4 r8 c |
  d4 d d d |
  c2( b4) d |
  c4( b) a g |
  g2 r8 c e d |
  c4 g r8 c8 e d |
  g,4 <c e> d cis |
  d2 e4 e |
  e2 f4 <d f> |
  d1 |
  \arpeggioBracket <c e>1\arpeggio \bar "|."
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4
  g4 |
  e d c e8 e |
  g4( e) g4. r8 |
  d4.( e8)
  f8[ g] a[ c] |
  a4 a8[ d] c4 r8 c |
  g4 g d d |
  f2. f4 |
  e2 f4 e |
  a, r8 a d4. a8 |
  d4 c8 c b2 |
  c2 c'4 c8 a |
  d,4 e f r8 g |
  e8 e f g f4 e |
  g4 e8 e d4 r8 g |
  e4 d c e8 e |
  g4( e) g4. r8 |
  d4.( e8)
  f[ g] a[ c] |
  a4 a8[ d] c4 r8 c |
  g4 g d d |
  f2. f4 |
  e2 f4 g |
  c,2 r8 a'8 <g bes> <f a> |
  <e g>4 c r8 a' <g bes> <f a> |
  e4( c) bes a |
  d2 c4 c' |
  a2 f4 <d a'> |
  \arpeggioBracket<g b>1\arpeggio->
  <g c,>1\arpeggio\fermata \bar "|."
  
}

texta = \lyricmode {
Хри -- стос во -- cкре -- се из ме -- ртвых
сме -- рти -- ю смерть по -- прав, и су -- щим во гро -- 
бех  жи -- вот __ да -- ро -- вав. Хри -- стос во -- скре -- се, во --
скре -- се из ме -- ртвых, сме -- рти -- ю смерть по -- прав 
смерть по -- прав и су -- щим во гро -- бех жи -- вот да -- ро -- вав. Хри --
стос во -- скре -- се из ме -- ртвых сме -- рти -- ю смерть по -- прав 
и су -- щим во гро -- бех жи -- вот да -- ро --
вав. Хри -- стос во -- скре -- се, Хри -- стос во -- скре --
се, Хри -- стос во -- скре -- се, во -- скре -- се, во -- скре -- се!
}

textup = \lyricmode { 
   \repeat unfold 25 { \skip 1}
   Хри -- стос во -- скре -- се из ме -- ртвых, сме -- рти -- ю
} 
textdown = \lyricmode { 
  \repeat unfold 25 { \skip 1}
  Хри -- стос во -- скре -- се из ме -- ртвых
  сме -- рти -- ю 
  \repeat unfold 39 { \skip 1}
  Хри -- стос во -- скре -- се, Хри -- стос во -- скре -- се,
} 
  
\score {
  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \with {
      alignAboveContext = "upstaff"
    } \lyricsto "soprano" { \textup }
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textdown }
  >>
  }
  \layout {}
  \midi {
    \tempo 4=60
  }
}

