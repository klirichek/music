\version "2.18.2"

\header {
  title = "Timor at tremor venerun super me"
  composer = "Orlando di Lasso"
}

global = {
  \key d \major
  \time 2/2
  \dynamicUp
  \autoBeamOff
}

soprano = \relative c' {
  \global
  \tempo "Molto lento"
  % Вписывайте музыку сюда
  r1 a'^\markup{\dynamic ppp \italic "molto sost."} a2 r | b1 | b2 e,4 \breathe c'4~ 
  c e2 a,4 a1 b2\fermata \breathe  b\pp a^\markup\italic "poco a poco cresc." b4 a b2 b
  
  r4 fis' e cis | d2 e | e1 | r4 b a2 | ais4 ais b2 |
  gis4.(^\markup\italic"più cresc." a!8 b2) | r4 a2 a4 | a2 cis2 | e4. e8 d2 \breathe | cis4( a4. gis16[ fis]) gis4 a1\fermata\ff
  
  b4.^\markup{\dynamic pp\italic "Un poco meno lento"} \mark \default b8 b4 b4 b2 e, fis2.\< gis4 a1~\fermata\! a2 r r1
  r2 r4 cis4~\mf cis8 cis\< cis2 cis4 cis1\> \mark \default cis2  r4\! cis~^\markup{\dynamic p \italic "Un poco meno lento"} cis cis cis2  
  
  cis2 d~ | d d^\markup\italic"cresc." | d d | r1
  r2 a gis4^\markup\italic"molto cresc." a b2 a4 \breathe a4. a8 gis4 a4.(\< b8 c2) b1\fermata\ff \bar "||"
  
  \tempo Adagio
  cis1\p | d2. d4 | e2 e | r2 c4.^\markup{\dynamic rf \italic marc.} c8 | c4\< c c c\! |
  c2 c | r1^\markup\italic"rall." | r4 b2^\markup{\dynamic p \italic "più lento"} b4 | b b gis gis | a2 ais~
  
  \mark #1 ais2 r | r1 r1 | r2 a!2^\markup\dynamic"rf" | a4 b b4. b8 | e,4 g2^> a4 \breathe |
  gis2\> a~ | a\! r2 d2.\p\< d4\! | e2\< fis4\! d~(^\markup\italic"dolce canto" | d8 cis16 b cis4) d2 \breathe \mark #2 a2.^\markup{\dynamic p \italic "poco accel"} a4
  
  a1 | r4 e'2 cis4 | d d2 b4^\markup\italic"cresc." | r4 e a, d~( | d8\>[ cis] b2) ais4\! |
  b \breathe dis4.^\markup{\dynamic rf \italic "più accel."} e8 cis4 | b2 r | a ais4 b^\markup\italic"cresc." | b2 r | \mark #3 r4 b\< ais b\! |
  
  fis'2 r8 cis4 e8~ | e b4 d8 r a4 cis8~^\markup\italic"decresc. molto" | cis e4 b8 r d4 a8~ | a c4 g8 r d'4 b8 |
  fis'4. cis4 \breathe e b8~ | b d4 a e' a,8 | b4( a2 gis4) | a1~\> a~ a~ a\!\fermata \bar "|."
  
}

altoOne = \relative c' {
  \global
  % Вписывайте музыку сюда
  d1^\markup{\dynamic ppp \italic "molto sost."} d d2 fis~ fis gis~ gis r4 e
  e e a,2( d) d~ d\fermata \breathe g\pp fis1^\markup\italic "poco a poco cresc." dis4 dis e2
  
  fis4 \breathe a a2~ a4 a a a~( a8[ gis16 fis]) gis4 a2 r4 d, fis2 fis4 cis( fis2)
  b, e~^\markup\italic"più cresc." e r4 cis~ cis fis e2 cis \breathe d4. d8 e4 cis( b8[ e,]) e'4 cis1\fermata\ff
  
  d4.\pp d8 d4 d | e2 cis | cis2.\< e4 | e2\fermata\! fis4.\pp fis8 | fis4 fis4 fis2 b, \breathe cis~ |
  cis4\< dis e2\! \breathe | eis4.\p\< eis8 eis4 eis | eis2(\> fis) | eis1\! r4\p a2 a4
  
  a2 a | b g4 \breathe g~( g fis8 e fis2) | e4 \breathe e dis e
  fis2 e | r1 | r2 e2^^ e4\< e a2 gis1\fermata\! \bar "||"
  
  a1\pp | a2( fis) | e1 | f2^- f | e\f e4 e~ |
  e e e2 | cis\> d^\markup\italic"rall." | b\! \breathe dis4.\pp dis8 | dis4 fis b,2 | e r4 cis~( |
  
  cis8[ b] cis4) d \breathe d | d c c4. b8 | d4 cis?2^> dis4 | e2 e4 \breathe e | fis g g4. fis8 | a4 d,2^> a4 |
  b2(\> cis) | d\p r | d1\pp | r4 g fis fis | e2\> a\! | r2 r4 fis~\p |
  
  fis fis e2 | e e | fis4 a d,2^\markup\italic"cresc." \breathe | e d~ | d\> cis4 fis\! |
  fis4 \breathe b4.^\markup\dynamic"rf" b8 a4 | gis  \breathe gis4. a8 fis4 | e e fis fis | gis \breathe gis4. gis8 ais4 | b \breathe fis4. fis8 e4 |
  
  dis4 \breathe fis e2 | b'4 g? \breathe a2 | gis( fis) | e d^\markup\italic"decresc." \breathe
  a'2 gis | fis e4 \breathe e | g?( fis) e2 | cis1 | r4 d\pp\> d2 | e1~ e\!\fermata |
  
}

altoTwo = \relative c' {
  \global
  % Вписывайте музыку сюда
  r2 fis~^\markup{\dynamic ppp \italic "molto sost."} fis fis \breathe fis dis~ dis e~ e g
  c, \breathe e fis4.( e8 fis2) g\fermata r4 d\pp d2(^\markup\italic "poco a poco cresc." b8[ cis d e]) fis4 fis gis2
  
  a4 \breathe a, e'2 fis e~ e e g r r4 fis dis dis
  e e^\markup\italic"più cresc." b2 \breathe cis2. fis4 fis cis a'4. a8 a2 r4 a~ a8 a e4 e b e1\fermata\ff
  
  g4.\pp g8 g4 g | gis2 a | a,2.\< b4 | cis2\fermata\! r | r1 | r1 |
  r1 | gis'4.\p\< gis8 gis4 gis4 | gis2( a)\> | gis1\! | r2 e4.\p e8 |
  
  e2 fis | g r4 d | a'2.^\markup\italic"cresc." a4 | g2 fis4 b,4 |
  d2 cis4 \breathe cis | e^\markup\italic"molto cresc." e \breathe g2 | fis4 d cis( b | c8\<[ b c d] e2) | e1\fermata\!
  
  e1\pp | fis2( a) | a1 | a2^- a4 \breathe a^\markup\dynamic"rf" | g\< g4. g8 g4 | 
  g\! g2^> g4 | r1^\markup\italic"rall." | r2 \breathe fis4.\pp fis8 | fis4 dis e4.( d8 | cis[ b] cis2) fis4 |
  
  fis2 fis4 \breathe fis | g e e4. e8 | fis4 fis2^> fis4 | b,2 cis | r4 d d4. d8 | cis4 b2^> cis4 |
  e2\> e\! | r fis\pp | g g~ | g4 e a2~ | a\> fis4\! \breathe fis~\p | fis^\markup\italic"poco accel." fis fis2
  
  r1 | a2 a4 a~ | a fis g2^\markup\italic"cresc." | gis4 a fis2 | fis\> fis4 cis\! |
  dis \breathe fis^\markup{\dynamic"rf" \italic " più accel."} b, e | e \breathe e4. e8 d?4 |
      cis \breathe cis4. cis8 dis4^\markup\italic"cresc." | e \breathe e eis fis | fis2 r |
  
  fis4. d?8 a'2 | gis4 r8 g fis fis4 cis8 \breathe | e4 e d d | r8 c4 c8 g'2^\markup\italic"decresc."|
  fis4 \breathe fis e2 | d cis | r1 | e1 | d4\> fis4.( e8 d4~ | d cis8[ b] cis2)\! | cis1\fermata
}

tenorOne = \relative c' {
  \global
  % Вписывайте музыку сюда
  r2 a~^\markup{\dynamic ppp \italic "molto sost."} a a~ a \breathe b~ b b~ b g~
  g4 \breathe  e2 e4 d8[ e fis g] a2 g1\fermata  r r2 b2^\markup\italic "poco a poco cresc."
  
  d cis4 e( d8[ a] d4. cis16[ b]) cis4 b2 r4 a d2 d4 d cis2 b
  r2 r4 e,~ e^\markup\italic"più cresc." e fis2 fis r r4 a4. a8 a4 a2 b a1\fermata\ff
  
  g4.\pp g8 g4 g | e2 a | fis2.\< e4 | a2\fermata\! a4.\pp a8 | a4 a b2 | gis gis~\<
  gis4 b cis2\! | cis4.\p\< cis8 cis4 cis4 | gis gis\! r2 | r4 gis2\p gis4 | a2 a~
  
  a1 | g4 b b2^\markup\italic"cresc." a1 r1
  r2 r4 a | e a g2 | a4 \breathe fis e e | e1\< | e\fermata\!
  
  a2^\markup{\dynamic p \italic " marc."} cis4 e | d2( a4. b8) | cis1 | r | c4.^\markup\dynamic"rf"\< c8 c4 c4  |
  g2 g | a4.\>( g8^\markup\italic"rall."\! fis[ e] fis4) | g2 \breathe fis4.\pp fis8 | fis4 fis e b' | a a r2 |

  r2 a | b4 g g4. g8 | a4 ais2^> b4 \breathe | gis4.( fis16[ gis] a4) e | r1 | r1 |
  r2 r4 e^\markup\italic"marc cantabile" | fis8[( e fis g] a4) b | b g8([ a b cis] d4~ | d8[ cis16 b] cis4) d2 |
      r2 d\p~ | d4 d a2~
  
  a cis | cis4 cis4.( d8 e4) | d a b2~^\markup\italic"cresc." | b4 cis d \breathe a | b b(\> cis2\!)
  b4 \breathe b^\markup\dynamic"rf" gis a | e2 r | r4 a fis b^\markup\italic"cresc." | e,2 r | r4 b' fis g |
  
  fis4 \breathe d'? cis2 | e4 d \breathe d cis | cis b r8 b a4 | c g \breathe g2^\markup\italic"decresc."
  a2 e | fis r | r r4 e~ | e e a2~ | a1\> | a( a)\fermata\!
}

tenorTwo = \relative c {
  \global
  % Вписывайте музыку сюда
  r2 fis~^\markup{\dynamic ppp \italic "molto sost."} fis fis \breathe fis fis fis r e( c')
  g \breathe a~ a d, d1\fermata r4 d\pp d'2^\markup\italic "poco a poco cresc." b r4 e,
  
  a2 a4 a a2 a r4 b c c b g a2 r4 fis fis2
  e^\markup\italic"più cresc." gis4 gis a1 r2 a4. a8 a4 e fis2 e1~ e\fermata\ff
  
  r1 r1 r1 | r2\fermata d'4.\pp d8 | d4 d dis2 | e e,~\<
  e4 fis a2\! | gis4.\p\< gis8 gis4 gis4 | cis1\> cis\! | e2.\p e,4
  
  e4 \breathe e' d d | d2^\markup\italic"cresc." d~ | d1 | b2 b4^\markup\italic"molto cresc." gis |
  a2 a4 \breathe e | b' cis d2 | d4 \breathe a a b | a1\< b\fermata\! | \bar "||"
  
  r2 a\pp | a d | r2 a4.(^\markup{\dynamic rf \italic " marc."} b8 | c2^-) c | r1
  c4.\mf\< c8 c4 c | e\! e a,2^\markup\italic"rall."\> | d\! \breathe b\pp | b4 b2 e,4 | e e fis2~
  
  fis d | r1 | r1 | r2 r4 a' | d g, g4. b8 | a4 g2^> fis4 |
  e2\> a\! \breathe | a d4 d~( | d8[ cis] b2) b4 | g2( a)\> | a1\! | r2 d2~^\markup{\dynamic p \italic " poco accel."} |
  
  d4 d a2 | r r4 a | a d2 g,8(^\markup\italic"cresc."[ a] | b4) a \breathe a fis | fis2\> fis\! |
  fis2 r2^\markup\italic"più accel." | b^\markup\dynamic"rf" cis4 a~ | a e r2 | b'4.^\markup\italic"cresc." 
    b8 cis2 | d4 \breathe d cis b~
  
  b4 a \breathe a2 | b a | e \breathe b'4 fis | a e b'2^\markup\italic"decresc." |
  d4 cis2 b4~ | b \breathe a a2 | d4.( cis8 b2) | a e\pp\> | fis fis | e1~ e\fermata\!
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  r2 d~^\markup{\dynamic ppp \italic "molto sost."} d d \breathe d b~ b e r c~
  c a4 a d1 g,\fermata r r4 b e2
  
  d4^\markup\italic"cresc." d a2 d r4 a e'2 a g( d4. e8) fis2 b, 
  r4 e2^\markup\italic"più cresc." e4 a,2 fis~ fis r4 a~ a8 a a4 d2( a) e' a,1\fermata\ff

  r1 r1 r1 | r2\fermata d4.\pp d8 | d4 d b2 | e cis~\< 
  cis4 b a2\! | cis4.\p\< cis8 cis4 cis4 | cis2(\! fis) | cis1 | r2 a\p |
  
  a4 a d2 | g,4 g'^\markup\italic"cresc." g2 | d1 | e2 b4 e |
  d2 a | r1 | d2\f a4 e' | a,1\< e'\fermata\! \bar "||"
  
  a,1\pp | d | a' | f2^- f | r1 |
  c4.\mf\< c8 c4 c\! | a a d2^\markup\italic"rall."\> | g,\! b4.\pp b8 | b4 b e2 | a, fis |
  
  fis r4 d'| g c, c4. e8 | d4 fis2 b,4 | e2 a, | r1 r1 |
  r2 r4 a\p | d^. d4.^>( cis8[ b a] | g4^.) g g'4.(^> fis8 | e2)\> d\! | r2 d\p~ | d4 d d2~ |
  
  d2 r4 a'4~ | a a a2 | d,4 d g4.(^\markup\italic"cresc." fis8 | e4) a, d \breathe d | b b\> fis2\!
  b2 r | r4 e^\markup\dynamic"rf" cis d | a2 r | r4^\markup\italic"cresc." e' cis fis | b,2 r4 e |
  
  b4 d? a \breathe a' | e g d \breathe fis | cis e b \breathe d | a c g \breathe g' |
  d fis cis d | b d a \breathe a' | g d e2 | a,\pp a | d1\> a~ a\fermata\!
}

verse = \lyricmode {
  % Набирайте слова здесь
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Сопрано"
      shortInstrumentName = "Сопрано"
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Альт I"
      shortInstrumentName = "Альт I"
      \consists "Ambitus_engraver"
    } \new Voice = "alto1" \altoOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto1" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Альт II"
      shortInstrumentName = "Альт II"
      \consists "Ambitus_engraver"
    } \new Voice = "alto2" \altoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto2" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Тенор I"
      shortInstrumentName = "Тенор I"
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor1" \tenorOne
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Тенор II"
      shortInstrumentName = "Тенор II"
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor2" \tenorTwo
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor2" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Бас"
      shortInstrumentName = "Бас"
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
