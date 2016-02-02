\version "2.18.2"

\header {
  title = "Timor at tremor venerun super me"
  composer = "Orlando di Lasso"
}

global = {
  \key d \major
  \time 2/2
}

soprano = \relative c' {
  \global
  % Вписывайте музыку сюда
  r1 a' a2 r | b1 | b2 e,4 \breathe c'4~ 
  c e2 a,4 a1 b2\fermata \breathe  b a b4 a b2 b
  
  r4 fis' e cis | d2 e | e1 | r4 b a2 | ais4 ais b2 |
  fis4.( a8 b2) | r4 a2 a4 | a2 cis2 | e4. e8 d2 \breathe | cis4( a4. gis16[ fis]) gis4 a1\fermata
  
  b b b b b e, fis gis a
  cis cis cis cis cis cis cis cis cis
  
  cis d d d d
  a gis a b a a a gis a b c b
  
  cis d d e e c c c c c c
  c c b b b b gis gis a ais
  
  ais e' c d d b e a, d d c b ais
  b dis e cis b a ais b b b ais b
  
  fis' cis e e b d a cis cis e b d a a c g d' b
  fis' cis e b b d a e' a, b a gis a a a a
  
}

altoOne = \relative c' {
  \global
  % Вписывайте музыку сюда
  d1 d d2 fis~ fis gis~ gis r4 e
  e e a,2( d) d~ d\fermata \breathe g fis1 dis4 dis e2
  
  fis4 \breathe a a2~ a4 a a a~( a8[ gis16 fis]) gis4 a2 r4 d, fis2 fis4 cis( fis2)
  b, e~ e r4 cis~ cis fis e2 cis \breathe d4. d8 e4 cis( b8[ e,]) e'4 cis1\fermata
  
  d d d d e cis cis e e fis fis fis fis fis b, cis
  cis dis e eis eis eis eis eis fis eis r a a
  
  a a b g g g fis e fis e e dis e
  fis e e e e a gis
  
  a a fis e f f e e e
  e e e cis d b cis cis cis fis b, e cis
  
  cis b cis d d d c c b d cis dis e e e fis g g fis a d, a
  b cis d d g fis fis e a fis
  
  fis fis e e e fis a d, e d d cis fis
  fis b b a gis gis a fis e e fis fis gis gis gis ais b fis fis e
  
  cis fis e b' g a gis fis e d
  a' gis fis e e g fis e cis d d e e
  
}

altoTwo = \relative c' {
  \global
  % Вписывайте музыку сюда
  r2 fis~ fis fis \breathe fis dis~ dis e~ e g
  c, \breathe e fis4.( e8 fis2) g\fermata r4 d d2( b8[ cis d e]) fis4 fis gis2
  
  a4 \breathe a, e'2 fis e~ e e g r r4 fis dis dis
  e e b2 \breathe cis2. fis4 fis cis a'4. a8 a2 r4 a~ a8 a e4 e b e1\fermata
  
  g g g g gis a a, b cis
  gis' gis gis gis gis a gis e e
  
  e fis g d a' a g fis b,
  d cis cis e e g fis d cis b c b c d e e
  
  e fis a a a a a g g g g 
  g g g fis fis fis dis e d cis b cis fis
  
  fis fis fis g e e e fis fis fis b, cis d d d cis b cis
  e e fis g g g e a a fis fis fis fis fis
  
  a a a a fis g gis a fis fis fis cis
  dis fis b, e e e e d cis cis cis dis e e eis fis fis
  
  fis d a' gis g fis fis cis e e d d c c g'
  fis fis e d cis e d fis e d d cis b cis cis
}

tenorOne = \relative c' {
  \global
  % Вписывайте музыку сюда
  r2 a~ a a~ a \breathe b~ b b~ b g~
  g4 \breathe  e2 e4 d8[ e fis g] a2 g1\fermata  r r2 b2
  
  d cis4 e( d8[ a] d4. cis16[ b]) cis4 b2 r4 a d2 d4 d cis2 b
  r2 r4 e,~ e e fis2 fis r r4 a4. a8 a4 a2 b a1\fermata
  
  g g g g e a fis e a a a a a b gis gis
  gis b cis cis cis cis cis gis gis gis gis a a
  
  a g b b a
  a e a g a fis e e e e
  
  a cis e d a b cis c c c c 
  g g a g fis e fis g fis fis fis fis e b' a a

  a b g g g a ais b gis fis gis a e
  e fis e fis g a b b g a b cis d d cis b cis d d d d a
  
  a cis cis cis d e d a b b cis d a b b cis
  b b gis a e a fis b e, b' fis g
  
  fis d' cis e d d cis cis b b a c g g
  a e fis e e e a a a a
}

tenorTwo = \relative c {
  \global
  % Вписывайте музыку сюда
  r2 fis~ fis fis \breathe fis fis fis r e( c')
  g \breathe a~ a d, d1\fermata r4 d d'2 b r4 e,
  
  a2 a4 a a2 a r4 b c c b g a2 r4 fis fis2
  e gis4 gis a1 r2 a4. a8 a4 e fis2 e1~ e\fermata
  
  d' d d d dis e e,
  e fis a gis gis gis gis cis cis e e,
  
  e e' d d d d d b b gis
  a a e b' cis d d a a b a b
  
  a a d a b c c
  c c c c e e a, d b b b e, e e fis
  
  fis d a' d g, g b a g fis
  e a a d d d cis b b g a a d
  
  d d a a a d g, a b a a fis fis fis
  fis b cis a a e b' b cis d d cis b
  
  b a a b a e b' fis a e b'
  d cis b b a a d cis b a e fis fis e e
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  r2 d~ d d \breathe d b~ b e r c~
  c a4 a d1 g,\fermata r r4 b e2
  
  d4 d a2 d r4 a e'2 a g( d4. e8) fis2 b, 
  r4 e2 e4 a,2 fis~ fis r4 a~ a8 a a4 d2( a) e' a,1\fermata

  d d d d b e cis 
  cis b a cis cis cis cis cis fis cis a
  
  a a d g, g' g d e b e
  d a d a e' a, e'
  
  a, d a' f f
  c c c c a a d g, b b b b e a, fis
  
  fis d' g c, c e d fis b, e a,
  a d d cis b a g g g' fis e d d d d d
  
  d a' a a a d, d g fis e a, d d b b fis
  b e cis d a e' cis fis b, e
  
  b d a a' e g d fis cis e b d a c g g'
  d fis cis d b d a a' g d e a, a d a a
}

verse = \lyricmode {
  % Набирайте слова здесь
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Сопрано"
      shortInstrumentName = "Сопрано"
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Альт I"
      shortInstrumentName = "Альт I"
      \consists "Ambitus_engraver"
    } \new Voice = "alto1" \altoOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Альт II"
      shortInstrumentName = "Альт II"
      \consists "Ambitus_engraver"
    } \new Voice = "alto2" \altoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto2" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
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
      midiInstrument = "choir aahs"
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
      midiInstrument = "choir aahs"
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
