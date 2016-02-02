\version "2.16.2"

keyTime = { \key d \major \time 4/4 }

soprano = \relative a'  { 
  \clef "treble"
  \dynamicUp
  
  \autoBeamOff a8.\mp g16 fis8 e d e fis d | \autoBeamOn e16[ fis g e fis8.] e16[ d8 cis] d4| r2 r4 r16 fis\p[ g a] |
  b8[ d16] cis[ d8 b a a16 g] fis4 \autoBeamOff | e8.\mp fis16 g8 e fis8. g16 a8 e | 
  \autoBeamOn fis16\mf[ g a8] b16[ cis d8] cis[ b] a4 |
  \autoBeamOff a8. g16 fis8 e d e fis a | 
  \autoBeamOn b16[ cis d8 d8.] b16[ a8 a16 g] fis4 | b16\mf[ a g b a8 fis] r2 |
  
  b16\mp[ a g b a8.] r16 r2 | a4\p( g a\> g | a g a g\!) |
  r2 r4 d'8\p[ d16 d] d4( a2.) | 
  \autoBeamOff a8.\mp g16 fis8 e d e fis d |
  r4 r8 fis8\p a[ g] g[ fis] | r8 a cis[ d] a2 | a4 a b8 b cis4 |
  
  d4 d8 a d fis e d | d4 d d8 cis d4 | 
  \autoBeamOn r2 g,16\mp[ a b cis d8( a)] |
  r2 fis16\mp\<[ g a8 a fis] | g16[ a b8] a16[ b cis8] b16[ cis d8] b16[ cis dis8] |
  \key e \major e4\f r r2 | 
  \autoBeamOff r r4 e,8 gis16 b |
  
  \autoBeamOn e2 r8 b16[ b b b b b] | b8.[ a16 gis a b cis gis8 fis] gis4 |
  \autoBeamOff fis8.\mf gis16 a8 fis gis8. a16 b8 fis | 
  \autoBeamOn gis16[ a b8] cis16[ dis e8] dis[ cis] b4 | 
  \autoBeamOff b8.\f a16 gis8 fis e fis gis e |
  \autoBeamOn cis'16[ cis cis cis b8.] a16[ gis8 fis] e4 | 
  \autoBeamOff e'8 e << e2. { s4 s\mark \markup { \italic "rit." } s} >> | 
  %<cis e>16 <cis e> <cis e> <cis e> <b e>8. <a fis'>16 <gis e'>4 <b dis>| <b e>1\fermata
  %<< { e16 e e e e8. fis16 e4 dis e1\fermata } \\ { cis16 cis cis cis b8. a16 gis4 b b1 }  >>
  \autoBeamOn
  << { \voiceOne e16[ e e e e8.] fis16 e4 dis e1\fermata } \new Voice { \voiceTwo \autoBeamOff cis16[ cis cis cis b8.] a16 gis4 b b1 }  >>
  \bar "|."
  
}

alto = \relative a' { 
  \clef "treble" \dynamicUp
  \autoBeamOff
  a8.\mp g16 fis8 e d e fis d | e16 fis g e fis8. e16 d8 cis d4 | fis16\p[ e] d[ cis] d8 a b16[ a] b[ cis] d8 fis |
  g e fis16 g a b fis8 e fis4 | cis8.\mp d16 e8 cis d8. e16 fis8 e | d16 e fis8 fis a e e e4 |
  fis8. g16 fis8 e d e fis d | d g fis d d cis d4 | r2 g16\mf fis e g fis4 | 
  
  r4 r8 r16 g\p fis8 e d4 | fis4( e fis\> e fis e fis e\p) |
  a8.\mp g16 fis8  e d e fis d | e16 fis g e fis8. e16 d8 cis d4 | cis\p( b cis d) |
  e16\mp fis g e fis8. e16 d8 cis d4 | r2 r8 e\p a[ g] | fis4 fis e8 e e4 |
  
  fis4 fis8 e fis a g fis | g4 a b8 a16 g fis4 | b16\mp a g b a8 fis r4 r16 a16 g fis |
  e\mp\< fis g8 g e d16 e fis8 fis d | e16 fis g8 fis16 g a8 g16 a b8 gis16 a b8 |
  \key e \major b8.\f a16 gis8 fis e fis gis e | fis16 gis a fis gis8. fis16 e8 dis e4 |
  
  b'8. a16 gis8 fis e fis gis e | fis16 gis a fis gis8. fis16 e8 dis e4 |
  fis8.\mf gis16 a8 fis e8. fis16 gis8 fis | gis fis e gis fis16 e dis cis b4| gis'8.\f fis16 e8 dis e fis gis e |
  a16 a a a gis8. fis16 e8 dis e4 | r4 b'8 b b2 | cis16 cis cis cis b8. a16 gis4 fis | gis1\fermata
}

tenor =  \relative a {
  \clef "G_8" \dynamicUp
  \autoBeamOff
   r1 | a8.\mp g16 fis16 g a b fis8 e fis4 | a8. g16 fis8 e d e fis d |
   e16\mf fis g e fis8. e16 d8 cis d4 | r8 a'16 a a4 r8 a16 a a4 | fis8 g16 a b8 fis gis a16 b cis4 |
   d8. b16 a8 g fis g a c | b16 b b b a8. b16 a8 a a4 | b\mp\( a g fis\) |
   
   b16 cis d8 d8. r16 r2 | cis4( b cis\> b | cis b cis b\!) |
   a\p( g a b | cis d) b8[ a] fis4| fis( g a b) |
   r8 a\p cis[ b] b[ g] a4 | r2 r4 r8 cis | d[ cis d] a b[ gis] a4 |
   
   a8.\mp g16 fis8 e d e fis16[ g] a8 | b16\mf b b b a8. g16 fis8 e d4 | r8\mp d'16 d d8 a16 a a2 |
   r8\mp a16 a a4\< r8 a16 a a4 | r8 a16 a a8 a16 a a8 a16 a b a[ gis8] |
   \key e \major gis8.\f cis16 b8 a gis a b gis | b8.\mf a16 gis a b cis cis8 b16 a gis4 |
   
   r8 gis16 b e2 r4 | r8 b16 b b b b b cis8 b b4 |
   r8 b16\mf b b8 b( b) b16 b b8 b | b gis cis b ais b16 cis dis4 | e8.\f cis16 b8  a gis a b d |
   e16 e e e e8. e16 b8 a gis4 | r2 gis8 a b gis | a16 a a a gis8. a16 b4 b | b1\fermata
   
  }
  
bass = \relative g {
  \clef "bass" \dynamicUp
  \autoBeamOff
  R1*2 | a8.\mp g16 fis8 e d e fis d |
  e16\mf fis g e fis8. e16 d8 cis d a16 a | a4 r8 a16 a a4 r8 b16 cis | d8 cis b cis16 d e d cis b a4 |
  d16 d d d d8. d16 d8 e fis16[ e] d8 | g16 g g g a8. g16 fis8 e d4 | g\mp\( fis e d\)
  
  r4 r8 r16 g\p a8 a, d4 | d8\mf a'16 a a8 a d,\> a'16 a a8 a~ | a a16 a a8 a16 a a8 a16 a a8 a\! |
  d,4\mp( e fis g | a2) a8 a d,4 | d( e fis g |
  a2) r2 | e8.\mp fis16 g8 e fis8. g16 a8 e | fis16 g a8 b16 cis d8 cis8 b a4 |
  
  a8. g16 fis8 e d e fis d | g16 g g g fis8. g16 a8 a, d4 | r r8\mp a'16 a a8 a16 a d,8 d16 d |
  a4.\mp\< a16 a a4. a16 a | a8 a16 a a8 a16 a a8 a16 a b8 b |
  \key e \major e4\f r4 r r8 b16 b | b'4 r8 b,16 b b'8 b, e4 |
  
  r4 r8 gis16 b e,2 | dis8 b e16 fis gis a b8 b, e dis16 cis |
  b4.\mf b8 e4. b8 | e8 dis cis cis fis fis b16 a gis[ fis] | e8.\f e16 e8 fis b b, e16[ fis] gis8 |
  a16 a a a b8. cis16 b8 b, e4 | r2 e8 fis gis e | a,16 a a a e'8. a16 b4 b, | e1\fermata
}

sorpanot = \lyricmode {
  Deck the Halls with boughs of hol -- ly,
  Fa la la la la, la la la la.
  Fa la la la la, la la la la la la la. 
  Don we now our gay ap -- par -- el,
  fa la la, la la, la, la la la.
  Troll the an -- cient Yule -- tide ca -- rol,
  Fa la la la, la la la la la. Fa la la la la la.
  Fa la la la la, Ah __ Fa la la la __
  Hail the new ye lads and lass -- es,
  Fa la la.
  Come Sing come 
  Fa la la la la, 
  Heed -- less of wind and wea -- ther, 
  Fa la la la la. Fa la la la la, __
  Fa la la la la, Fa la la, Fa la la, Fa la la, Fa la la la!
  Come Strike the harp
  Fa la la la la la, Fa la la la la la la la la.
  Fol -- low me in mer -- ry mea -- sure, 
  Fa la la, la la la, la la la.
  While I tell of Yule -- tide trea -- sure, 
  Fa la la la la, la la la la.
  Deck the Halls! 
    Fa la la la la, la la la la!

}

altot = \lyricmode {
  Deck the Halls with boughs of hol -- ly, 
  Fa la la la la, la la la la.
  'Tis the sea -- son to be jol -- ly, 
  Fa la la la la la la la la.
  Don we now our gay ap -- par -- el, 
  fa la la,  la la, la, la la.
  Troll the an -- cient Yule -- tide ca -- rol, 
  Fa la la la la la la. Fa la la la la.
  Fa la la la. Ah. __ 
  Fast a -- way the old yer pass -- es,
  Fa la la la la la la la la. Ah __
  Fa la la la la la la la la.
  Come Sing
  Fa la la la la,
  Heed -- less of wind and wea -- ther,
  Fa la la la la la. Fa la la la la la.
  Fa la la la la la la la, Fa la la la la,
  Fa la la, Fa la la, Fa la la, Fa la la,
  See the bla -- zing Yule be -- fore us,
  Fa la la la la, la la la la.
  Strike the harp and join the cho -- rus,
  Fa la la la la, la la la la.
  Fol -- low me in mer -- ry mea -- sure, 
  Fa la la la, Fa la la la la.
  While I tell of Yule -- tide trea -- sure, 
  Fa la la la la, la la la la.
  Deck the Halls! 
  Fa la la la la, la la la la!
}

tenort = \lyricmode {
  Fa la la la la la la la la.
  'Tis the sea -- son to be jol -- ly, 
  Fa la la la la, la la la la.
  Fa la la, Fa la la, Fa la la la la, la la la la.
  Troll the an -- cient Yule -- tide ca -- rol, 
  Fa la la la la, la la la la. Fa la la la,
  
  Fa la la la. Ah. __ Ah. __ la la.
  Ah. __ Fa la la la.
  Sing Fa __ la la __ la.
  Heed -- less of wind and wea -- ther,
  Fa la la la la, la la la la la.
  Fa la la, Fa la la. Fa la la, Fa la la, Fa la la, Fa la la, Fa la la la __
  See the bla -- zing Yule be -- fore us,
  Fa la la la la la la la la la.
  
  Strike the harp __
  Fa la la la la la  la la la.
  Fol -- low me in mer -- ry mea -- sure. Fa la la la, Fa la la la, 
  While I tell of Yule -- tide trea -- sure, 
  Fa la la la  la, la la la la.
  Deck the Halls! Sing
  Fa la la la la, la la la la!
}

basst = \lyricmode {
  'Tis the sea -- son to be jol -- ly, 
  Fa la la la la, la la la la.
  Fa la la, Fa la la, Fa la la la la, Fa la la la la la la.
  Fa la la la la, the Yule -- tide ca -- rol.
  Fa la la la la, la la la la. Fa la la la,
  
  Fa la la la. Fa la la la la. Fa la la la la. __ Fa la la, Fa la la, Fa la la la.
  Ah __ la la la.
  Ah __
  Sing we joy -- ous, all to -- geth -- er, Fa la la  la la la la la la.
  Heed -- less of the wind and wea -- ther,
  Fa la la la, la la la la. la.
  Fa la la. Fa la la. Fa la la, Fa la la, Fa la la, Fa la la, Fa la la, Fa la la la la!
  Fa la la!
  Fa la la la la!
  
  Strike the harp __ 
  Fa la  la la la la la la la,
  Fa la la, la la, 
  Fa la la la la, Fa la la la la. __
  While I tell of Yule -- tide trea -- sure, 
  Fa la la la la, la la la la.
  Deck the Halls! Sing 
  Fa la la la la, la la la la!
}

\paper {
  #(set-default-paper-size "a4")
  
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  indent = 10\mm
}
#(set-global-staff-size 16)
  
\header {
  title = "Deck the Halls"
  subsubtitle = \markup { \column \center-align { \line { Arranged for the New Berlin Eisenhower }
                                 \line { Interstate Choral Ensemble  } 
                                 \line { Natalie Baertschy, Director } } }
  arranger = "Arranged by: Jeff Torres"
  %tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with \with-url #"http://lilypond.org/" \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) } }             
  tagline = ""
}


\score { 
  
  \new ChoirStaff <<    
    \new Staff = "sopranos" <<
      \tempo "Lighty " 4 = 74
      \set Staff.midiInstrument = #"voice oohs"
      \set Staff.instrumentName = #"Soprano"
      \set Staff.shortInstrumentName = #"S"
      \new Voice = "sopranos" { \keyTime  \soprano }
    >>
    \new Lyrics \lyricsto "sopranos" { \sorpanot }
    \new Staff  = "altos" <<
      \set Staff.midiInstrument = #"voice oohs"
      \set Staff.instrumentName = #"Alto"
      \set Staff.shortInstrumentName = #"A"
      \new Voice = "altos" { \keyTime \alto }
    >>
    \new Lyrics \lyricsto "altos" { \altot }
    \new Staff = "tenors" <<
      \set Staff.midiInstrument = #"voice oohs"
      \set Staff.instrumentName = #"Tenor"
      \set Staff.shortInstrumentName = #"T"
      \new Voice = "tenors" { \keyTime \tenor }
    >>
    \new Lyrics \lyricsto "tenors" { \tenort }
    \new Staff = "basses" <<
      \set Staff.midiInstrument = #"voice oohs"
      \set Staff.instrumentName = #"Bass"
      \set Staff.shortInstrumentName = #"B"
      \new Voice = "basses" { \keyTime \bass }
    >>
    \new Lyrics \lyricsto "basses" { \basst }
  >>
  \layout {
    \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
    }
  }
  \midi {}
}
