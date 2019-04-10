\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)


\header {
  title = "Can't Help Falling in Love"
  composer = "George David Weiss, Hugo Peretti, Luigi Creatore"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

%use this as temporary line break
%abr = { \break }

% uncommend next line when finished
abr = {}

global = {
  \key c \minor
  \tempo "Moderato" 4=72
  \time 4/4
}

soprano = \relative c' {
  \global
  % Вписывайте музыку сюда
  \oneVoice R1*2 |
  es2\mp^\markup\tiny"Unis." bes' |
  es,2. \tuplet 3/2 {r8 f g } |
  as2 g |
  f2. \tuplet 3/2 { r8 r bes, } |
  c2 d |
  es4 r \tuplet 3/2 { f g as } |
  g2 f4.( es8) |
  
  es2. r4 |
  es2\mf <f bes> |
  \voiceOne es2. \tuplet 3/2 { r8 f g } | \abr
  as2 g4.( f8) |
  g( f4.~ f4) \oneVoice \tuplet 3/2 { r8 r bes,^\markup\tiny"Unis."} | 
  c2 <bes d> | \abr
  es4 r \tuplet 3/2 { <c f> <es g> <es as>} |
  <es g>2 <d f> |
  <bes es>2. r4 | \abr
  \voiceOne d8 g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  d,8 g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  d,8 g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  <f bes>4 q( <e bes'>8) <e g> <e bes'> <e g> |
  as2. \oneVoice r4 |
  es2^\markup\tiny"Unis." bes' |
  
  es,2. \tuplet 3/2 { r8 f g } |
  as2 g |
  f2. \tuplet 3/2 { r8 r bes, } |
  
  c2 <bes d> |
  <c es>4 r \tuplet 3/2 { <c f> <es g> <es as> } |
  <es g>2 <d f> |
  
  <bes es>2. \tuplet 3/2 { r8 r bes } |
  c2 <bes d> |
  <c es>4 r \tuplet 3/2 { <c f> <es g> <es as> } |
  
  <es g>2 <d f> |
  <bes es>2. r4 |
  \voiceOne  d8\f g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  
  d,8 g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  d,8 g~ \tuplet 3/2 {g^\markup\tiny"div." <g bes> <g d'> } <a c>2 |
  <f bes>4 q( <e bes'>8) <e g> <e bes'> <e g> |
  
  as2.\cresc <d, as'>4 |
  bes'2. r4 |
  \key d \minor \oneVoice f2\ff^\markup\tiny"Unis." c' |
  f,2. \tuplet 3/2 { r8 g a } |
  
  bes2 a |
  g2. \tuplet 3/2 { r8 r c, } |
  d2 <c e> |
  
  <d f>4 r \tuplet 3/2 { <d g> <f a> <f bes> } |
  <f a>2 <e g> |
  <c f>2. \tuplet 3/2 { r8 r c^\markup\tiny"Unis." } |
  
  d2 e |
  f4 r \tuplet 3/2 { <d g> <f a> <f bes> } |
  \oneVoice a2( c) |
  \voiceOne <f, bes>2( <e g c>)^\markup\tiny"div." |
  <f a c>1~ |
  q |
  R1
  
}

alto = \relative c' {
  \global
  % Вписывайте музыку сюда
  s1*11 |
  es2. \tuplet 3/2 { r8 f es } |
  
  es2 es |
  es8( d4.~ d4) s4
  s1*4 |
  d8 d~ \tuplet 3/2 { d d d } es4( d) |
  d8 d~ \tuplet 3/2 { d d d } d4( c) |
  d8 d~ \tuplet 3/2 { d d d } es4( f) |
  s1 |
  es2( d4) s |
  s1*12 |
  d8 d~ \tuplet 3/2 { d d d } es4( d) |
  d8 d~ \tuplet 3/2 { d d d } d4( c) |
  d8 d~ \tuplet 3/2 { d d d } es4( f) |
  s1
  es2( d4) s |
  f2( e4) s |
  s1*10
  f1
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*2 es2\mp bes' |
  es,2. \tuplet 3/2 {r8 f g } |
  as2 g |
  f2. \tuplet 3/2 { r8 r bes } |
  as2 bes |
  g4 r \tuplet 3/2 { as bes c } |
  bes2 bes4.( as8) |
  
  g2. r4 |
  es'2\mf d |
  c2( bes4) \tuplet 3/2 { r8 bes bes } |
  
  c2 bes |
  bes2. \tuplet 3/2 { r8 r bes } |
  as2 f |
  
  g4 r \tuplet 3/2 { as bes c} |
  bes2 bes |
  g2. r4 |
  
  g8 g~ \tuplet 3/2 { g f f } fis2 |
  g8 g~ \tuplet 3/2 { g f f } fis2 |
  g8 g~ \tuplet 3/2 { g f f } fis4( d) |
  
  g4 g( c,8) c c c |
  f2( bes4) r |
  es,2 bes' |
  
  es,2. \tuplet 3/2 { r8 f g } |
  as2 g |
  f2. \tuplet 3/2 { r8 r bes } |
  
  as2 f |
  g4 r \tuplet 3/2 { as bes c } |
  bes2 bes |
  
  g2. \tuplet 3/2 { r8 r bes } |
  as2 f |
  g4 r \tuplet 3/2 { as bes c } |
  
  bes2 bes |
  g2. r4 |
  g8 g~ \tuplet 3/2 { g f f } fis2 |
  
  g8 g~ \tuplet 3/2 { g f f } fis2 |
  g8 g~ \tuplet 3/2 { g f f } fis4( d) |
  g4 g( c,8) c c c |
  
  f2\cresc( bes4) bes |
  g2( c4) r |
  \key d \minor f,2\ff c' |
  f,2. \tuplet 3/2 { r8 g a } |
  bes2 a |
  g2. \tuplet 3/2 { r8 r c } |
  bes2 g |
  
  a4 r \tuplet 3/2 { bes c d } |
  c2 c |
  a2. \tuplet 3/2 { r8 r c } |
  
  bes2 g |
  a4 r \tuplet 3/2 {bes c d } |
  c2( a) |
  d( c) |
  c1~ |
  c |
  R
}

verse = \lyricmode {
  Wise men say on -- ly fools rush in,
  but I can't help fall -- ing in love with __ you.
  Shall I stay? Would it be a __ sin? __ 
  If I can't help fall -- ing in love with you.
  
  Like a riv -- er flows
  su -- rely to the sea,
  dar -- ling so it goes
  some things are meant to be.
  
  Take my hand, take my whole life too.
  For I can't help fall -- ing in love with you.
  For I can't help fall -- ing in love with you.
  
  Like a riv -- er flows
  su -- rely to the sea,
  dar -- ling so it goes
  some things are meant to be, to be.
  
  Take my hand,
  take my whole life too.
  For I can't help fall -- ing in love with you.
  For I can't help fall -- ing in love __ with __ you. __
}

right = \relative c' {
  \global
  % Вписывайте музыку сюда
  \tuplet 3/2 4 { r8\mp bes es  g es bes r bes es g es bes |
  r g bes es bes g r g bes es bes g |
  r bes es g es bes r bes f' bes f bes, | \abr
  
  r bes es g es bes r bes es g es bes |
  r c es as es c r c es bes' es, bes |
  r c es as es c r d f bes f d | \abr
  
  r c es as es c r d f bes f d |
  r es g c g es r c es as es c |
  r bes es g es bes r bes d f d as | \abr
  
  r g bes es bes g r g bes es bes g |
  r\mf bes es g es bes r bes f' bes  f bes, |
  r bes es g es bes r bes es g es bes | \abr
  
  r c es as es c r bes es bes' es, bes |
  r d f bes f d r bes d f d bes |
  r c es as es c r d f bes f d | \abr
  
  r es g c g es r c f as f c |
  r bes es g es bes r bes d f d as |
  r g bes es bes g r bes\< es g es bes\! | \abr 
  }
  
  <bes d g>4 <d g bes> <fis, c' es> <fis c' f> |
  <g bes d> <bes d g> <c fis a> <es fis a> |
  <bes d g> q << <c a'>2 \\ {es4 f} >> | \abr
  
  <d f bes>4 <f bes> <des e bes'> <des e g> |
  <c es as> <as c es> << { r4 <bes' bes'> } \\ <as, c d>2  >> |
  \tuplet 3/2 4 { r8 bes es g es bes r bes f' bes f bes, | \abr
                  
  r bes es g es bes r bes es g es bes |
  r c es as es c r bes es bes' es, bes |
  r c es as es c r d f bes f d | \abr
  
  r c es as es c r d f bes f d |
  r es g c g es r c f as f c |
  r bes es g es bes r bes d f d as | \abr
  
  r g bes es bes g r bes es g es bes |
  r c es as es c r d f bes f d |
  r es g c g es r c f as f c | \abr
  r bes es g es bes r bes d f d as |
  r g bes es bes g r bes\< es g es bes |
  }
  <bes d g>4\f <d g bes> <fis, c' es> <fis c' f> | \abr
  
  <g bes d> <bes d g> <c fis a> <es fis a> |
  <bes d g> q << <c a'>2 \\ {es4 f} >> |
  
  <d f bes>4 <f bes> <des e bes'> <des e g> |
  <c es as> <as c es> <as c d> <as c d f> |
  <bes d f bes> <bes d f> << { r4 <c' c'> } \\ <bes, d e>2 >> |
  \key d \minor
  \tuplet 3/2 4 { <a c f>8\ff q q q q q <c g' c> q q q q q |
  <c f> q q q q q <c f a> q q q q q | \abr
  <d f bes> q q q q q <c f c'> q q q q q |
  <d f bes> q q q q q <e g c> q q q q q  |
  <d f bes> q q q q q <e g c> q q q q q | \abr
  <d f a d> q q q q q <d f bes d> q q q q q |
  <c f a c> q q q q q <c e g c> q q q q q |
  <c f a> q q q q q  <c f c'> q q q q q | \abr
  <d f bes> q q q q q <e g c> q q q q q | 
  <d f a d> q q q q q <d f bes d> q q q q q |
  <c f a c> q q q q q <c f a> q q q q q | \abr
  <d f bes d> q q q q q <e g c e> q q q q q |
  }
  <f a c f>2-> q-> |
  \repeat tremolo 16 { <f a>32-> <c' f>-> } |
  <f, a c f>8^^ r r4 r2
}

left = \relative c {
  \global
  % Вписывайте музыку сюда
  es2\mp bes |
  es, bes' |
  es d |
  c bes |
  as g |
  f bes |
  as bes |
  c4. bes8 as2 |
  bes bes, |
  es bes4 bes' |
  es2\mf d |
  c bes | \abr
  as g |
  bes bes, |
  as' bes | \abr
  c4. bes8 as2 |
  bes bes, |
  es es'\< | \abr
  
  g,4.\! g8 d4 d' |
  g,4. g8 d4 d' |
  g f fis d | \abr
  g4. g8 c,4. c8 |
  f,4. f8 bes4 bes, |
  es'2 d | \abr
  c bes |
  as g |
  f bes | \abr
  
  as bes |
  c4. bes8 as2 |
  bes bes, | \abr
  es2 es' |
  as, bes |
  c4. bes8 as2 | \abr
  bes bes, |
  es es'\< |
  g,4.\f g8 d4 d' | \abr
  
  g,4. g8 d4 d' |
  g f fis d |
  g4. g8 c,4. c8 | \abr
  f,4. f8 bes4 bes, |
  g'4. g8 c4 c, \bar "||" |
  \key d \minor f4.\ff f8 e4. e8 |
  d4. d8 c4. c8 | \abr
  bes'4. bes8 a4. a8 |
  g4 ~ \tuplet 3/2 { g8 a bes } c4 c, |
  bes'4. f8 c'4. g8 | \abr
  d'4 ~ \tuplet 3/2 { d8 d c } bes4. bes8 |
  c4~ \tuplet 3/2 { c8 a f } c4 c' |
  f,4~ \tuplet 3/2 { f8 f g } a4 a | \abr
  bes4. f8 c'4. g8 |
  d'4~ \tuplet 3/2 { d8 d c } bes4. bes8 |
  c2 c, | \abr
  c' c, |
  <f f'>4-> q8^^ <c c'>-> <f f'>4-> q8^^ <c c'>-> |
  \repeat tremolo 16 {f,32-> f'-> } |
  <f, f'>8^^ r r4 r2 \bar "|."
  
}

femalePart = \new Staff \with {
    printKeyCancellation = ##f
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "S." "A." }
    \accidentalStyle modern-voice-cautionary
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  
malePart = \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName =  "B."
    printKeyCancellation = ##f
    \accidentalStyle modern-voice
  } <<
    \clef bass
    \new Voice = "bass" { \oneVoice \bass }
  >>

choirPart = \new ChoirStaff <<
  \femalePart
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \malePart
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "P-no"
  printKeyCancellation = ##f
  \accidentalStyle piano-cautionary
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
    \choirPart
    \pianoPart
  >>
  \layout { 
  \context {}
  }
}

\include "articulate.ly"

\score {
  \unfoldRepeats \articulate
  <<
    \choirPart
    \pianoPart
  >>
  \midi {
    \tempo 4=72
  }
}

\book {
  \bookOutputSuffix "piano"
  \score {
    \unfoldRepeats \articulate
    <<
      \pianoPart
    >>
    \midi {
      \tempo 4=72
    }
  }
}


\book {
  \bookOutputSuffix "pianofem"
  \score {
    \unfoldRepeats \articulate
    <<
      \pianoPart
      \femalePart
    >>
    \midi {
      \tempo 4=72
    }
  }
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument) (string? string?)
 #{
   \unfoldRepeats <<
     \new Staff = "females" \new Voice = "females" << \soprano \alto >>
     \new Staff = "bass" \new Voice = "females" { \bass }
     \new Staff = "piano" \with { midiInstrument = "acoustic grand" } \new Voice = "piano" << \right \left >>
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.midiInstrument = "voice oohs"
       \set Score.tempoWholesPerMinute = #(ly:make-moment 72 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto "females" \verse
   >>
 #})

\book {
  \bookOutputSuffix "bari"
  \score {
    \unfoldRepeats \articulate
    {
      \rehearsalMidi "bass" "tenor sax"
    }  \midi {}
  }
}

\book {
  \bookOutputSuffix "fem"
  \score {
    \unfoldRepeats \articulate
    {
      \rehearsalMidi "females" "tenor sax"
    }  \midi {}
  }
}
