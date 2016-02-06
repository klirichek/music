\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\header {
  title = "Херувимская песнь"
  subtitle = "Софрониевская"
  composer = "Павел Григорьевич Чесноков (1877 - 1944)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
    top-margin = 15
  left-margin = 20
  right-margin = 15
  bottom-margin = 45
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key bes \major
  \time 4/4
}

br = { \bar "" }
soprano = \relative c'' {
  \global
  \dynamicUp
  % Вписывайте музыку сюда
  \cadenzaOn g2\p( bes a4 bes a g f1) \br f g \br a4( bes c d) \br
  bes2.( a4 bes a8[ bes] c4 bes a2. g4 \br a g8[ a] bes4 a g2 bes \br a4 bes a g f1) \br
  g2( a) \br bes a g( f) g1 \br bes\mf bes4( a bes c) \br d1( c2) bes \br
  
  c2.( d4) c4( bes8[ c] d4 c) \br bes( a bes c) \br bes2 a \br bes\> a g d g1 \bar "|"
  d'(\mf f2 c \br d1) \br d \br d2( g4 f) \br es( d c d) \br bes2.( a4 bes a8[ bes] c4 bes a2. g4 \br a g8[ a] bes4 a g2 bes \br a4 bes a g f1)
  \br g2( a) bes( a) \br g( f) \br g2.\<( a4) \bar "|" bes2\f( f') f1 \br f( es2) d \br g2.( f4) es( d8[ es] f4) \br g \br
  d( c d es) d2 c \br d c \br bes\> a g1 \bar "|" g2\p( bes a4 bes a g) \br f1 \[f g\] \br
  a4( bes) c( d) \br bes2.( a4 bes a8[ bes] \br c4 bes a2. g4 \br a g8[ a] bes4 a g2 \br bes a4 bes a g \br f1)
  
  g2( a) \br bes( a) \br g f g1 \bar "|" bes\mf bes4( a bes c) \br d1( c2 bes) \br c2.( d4) \br c4( bes8[ c] d4 c) \br
  \br bes4( a bes c) \br bes2 a \br bes\> a \br g d \br g1~ \br g~ \br g~ g~ \br g~ g2\! r2 \bar "||" d'2\p( c) d1 \bar "||"
  d1\mf( \br f2 c \br d1) \br d \br d2( g4 f) \br es( d c d) \br bes2.( a4 \br bes a8[ bes] c4 bes) \br \br a2.( g4 a g8[ a]) \br \br bes4( a) \br
  g2( bes) \br a4( bes) \br a( g) f1 \br g2( a) \br \br bes( a) \br g( f) \br g2.( a4) \bar "|"
  bes2\f( f') f1 \br f1 es2( d) \br \br es2.( f4) es( d8[ es] f4 es) \br
  
  \br d4( c d es d2) c2 \br d( c) bes \br a g1 \br r1 r1 \br
  d'2( f \br e4 f e d) \br d2 d \br f f \br f f~ f1~ \br
  f4 \br f f f \br f2 f \br d d~ d1~ d4 \br d d d \br
  d2 f \br f1( d) \br d2( f) \br bes,\f( f') \br f1 \br f \br es?2 d \br
  es2.( f4) \br es( d8[ es] f4 es) \br d( c d es) \br d2 c \br f es \br d c f1\>~ f2\! r2 \cadenzaOff \bar "|."
}

alto = \relative c' {
  \global
  % Вписывайте музыку сюда
  r1 es~ es bes2( es) d1 g2.( fis4) g1~( g4 f es2~ es d es d~
  d c es1~ es) es d2 f g( f) g4( d es2) d1 es d2( f g) g
  
  g1 g g g2 g g es d d d1 | g2( bes a4 bes a g d2 a'4 g) d1 
  g a4( bes a2) g4( f es2 d es f4 es d2 es d es4 d c2 es1~ es)
  es d4( es f es) d( c d c) bes( c d f) | bes1 bes4( a bes c) d2.( c4 b2) b c( bes) a2. a4
  bes1 bes4( a) g2 g g g4( f) f( es) d1 | r1 es es bes2( es) d1 
  g2 g4( fis) g1~( g4 f es2~ es d es d~ d c es1~ es)
  
  es1 d2( f) g f g4( d es2) | d1 es d2( f g1) g g
  g g2 g g es d d d1 c2 bes a1 es' d~ d2 r2 | g2.( a4) bes1 |
  g2( bes a4 bes a g d2 a'4 g) d1 g a4( bes a2) g4( f es2 d es) f4( es d2 es) d
  es4( d c2) es es es1 es d4( es f es) d( c d c) bes( c d f)
  bes1 bes4( a bes c) d2.( c4) b1 c2( bes) a1
  
  bes1~( bes4 a) g2 g1 g4( f) f( es) d1 s s 
  d2( f e4 f e d) d2 d f f f f~ f1~
  f4 f f f f2 f d d~ d1~ d4 d d d 
  d2 f f1( d) d2( f) bes1 bes4( a bes c) d2.( c4) b2 b
  c( bes) a1 bes bes4( a) g2 bes bes bes bes bes1~ bes2 r
  
}

tenor = \relative c' {
  \global
  \dynamicUp
  r1 g2.\p( bes4 a1) g2( a) bes1 c4( bes a d) d2( es d c~ c bes c bes~
  bes g c2. bes4 a2 g4 a) bes2( c) d d4( c) bes( c d c) bes2( a) f2\mf( g) g2.( a4) bes1(~ bes4 c) d2
  
  es2.( d4) es1 d2( es) d c d g,4( a) bes2 c g1 | bes2( d c4 d c bes a2 c4 bes) a( bes c2)
  bes1 c4( d es d) g,2\( c g c( f,) bes f bes( es,1) c2 c'4 bes a bes a g\)
  f1 bes4( c d c) bes( a bes a) g( a bes es) | d1 es d2( f g) f es( g) g( f4) f
  f( es d c) bes( d) es2 bes es d c g1~ | g g2.( bes4) a1 g2( a) bes1
  c4( bes) a( d) d2( es d c~ c bes c bes~ bes g c2. bes4 a2 g4 a)
  
  bes2( c) d2.( c4) bes4( c) d( c) bes2( a) | f( g) g2.( a4) bes1~( bes4 c d2) es2.( d4) es1
  d2( es) d c d g,4( a) bes2 c g1~ g~ g~ g~ g~ g2 r | bes( es) d1 |
  bes2\mf( d c4 d c bes a2 c4 bes ) a( bes c2) bes1 c4( d es d) g,2( c g c) f,( bes f) bes
  es,1 c2 c'4( bes) a( bes a g) f1 bes4( c d c) bes( a bes a) g( a bes es)
  d1 es d2( f) g( f) es( g) g( f)
  
  f4( es d c bes d) es2 bes( es) d c g1 g2( bes a4 bes a g)
  a1 a bes c4( d es? f) d2.( c4 d c8[ d] es4 d
  c2. bes4 c bes8[ c] d4 c bes2 d c4 d c bes a1)
  bes2 c d c bes( a) bes( c) d1\f es d2( f) g f
  es( g) g( f) f4( es d c) bes( d) es2 d g f <es g> <d f>1~ q2 r
  
  
}

bass = \relative c {
  \global
  r1 c1~( c2 f) d( c) bes( f') es2.( d4) g2\( c g c,( f) bes f bes,
  es1 c f\) f bes,4( c) d2 g4( a bes a) g2( f) bes,2( g) c( f) bes,( d es) g
  
  c2( a4 bes) c2( g4 a) bes2( c) g4( f es2) d c bes a g1~ g~ g~ g4 r r2 r1
  R1*13/1
  bes'1 f bes( g2) g c1 f,2. f4
  bes2.( g4) f2 es g g g g g1 | r c, c2( f) d( c) bes( f')
  es es4( d) g2( c g c, f bes f bes, es1 c f)
  
  f1 bes,4( c d2) g4( a) bes( a) g2( f) | bes,( g) c( f) bes,( d es g) c( a4 bes) c2( g4 a)
  bes2( c) g4( f) es2 d c bes a <g g'>( <f f'>) <es es'> <d d'> <c c'>1 q <g' d'>~ q2 r | g1 g~ |
  g~ g~ g4 r r2 R1*14/1
  bes'1 f bes g c f,
  
  bes2.( g4 f2) es g1 g2 g g1 g,2( bes a4 bes a g)
  d'1 d g f4( bes c f,) bes2.( f4 bes f8[ bes] c4 bes
  f2. g4 f g8[ f] d4 f g2 bes a4 bes a g d1)
  g2 f bes f g( d) g( f) bes1 f bes g2 g
  c1 f, bes2.( g4) f2 es bes bes' bes bes bes1~ bes2 r
}

sopranoVerse = \lyricmode {
  И -- же \repeat unfold 46 \skip 1 
  Вся -- ко -- е1 __ _ ""
  \repeat unfold 49 \skip 1 
  до -- ри -- но -- си -- ма чин -- ми, __ 
  до -- ри -- но -- си -- ма чин -- ми, __  до -- ри -- но --
  си -- ма чин -- ми. __ ""
}

altoVerse = \lyricmode {
  % Набирайте слова здесь
  И -- же хе -- ру -- ви -- 
  мы, хе -- ру -- ви -- мы тай -- но, тай -- но
  об -- ра -- зу -- ю -- ще, об -- ра -- зу -- ю -- ще и Жи -- во -- тво -- ря -- щей 
  Тро -- и -- це Три -- свя -- ту -- ю песнь при -- пе -- ва -- ю -- ще, 
  при -- пе -- ва -- ю -- ще.
  Вся -- ко -- е, вся -- ко -- е ны -- не жи -- тей -- ско -- е от -- ло -- жим __
  по -- пе -- че -- ни -- е, по -- пе -- че -- ни -- е, по -- пе -- че -- ни -- е.
  А -- минь.
  Я -- ко да Ца -- ря всех, Ца -- ря всех по -- ды -- мем, по -- ды -- мем, 
  ан -- гель -- ски -- ми не -- ви -- ди -- мо, не -- ви -- ди -- мо
  \repeat unfold 21 \skip 1 
  Ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а. __
}

bassVerse = \lyricmode {
  % Набирайте слова здесь
  \repeat unfold 72 \skip 1 
  по -- пе -- че -- ни -- е. __ ""
  \repeat unfold 12 \skip 1 
  до -- ри -- но -- си -- ма чин -- ми, но -- си -- ма чин -- ми. __
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      alignAboveContext = "sa"
      \override VerticalAxisGroup #'staff-affinity = #DOWN
    } \lyricsto "soprano" \sopranoVerse
    \new Lyrics \lyricsto "alto" \altoVerse
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "bass" \bassVerse
  >>
  \layout { 
      \context {
      \Staff
      % удаляем обозначение темпа из общего плана
      \remove "Time_signature_engraver"
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \tempo 2=100
  }
}

% MIDI для репетиции:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

