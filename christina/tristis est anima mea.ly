\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")
#(set-global-staff-size 15)
\paper {
%  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  %indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

\header {
  title = "Trístis est ánima méa"
  subtitle = "From Responsoria (1611)"
  composer = \markup\right-column{"Jacob Carlo Gesualdo, di Venosa" "(c. 1561 - 1613)" }
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
  \time 2/2
  \numericTimeSignature
  \autoBeamOff
}

sopranoOne = \relative c'' {
  \global
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  % Вписывайте музыку сюда
  R1 R1 es2 c~ | c4 bes c2 | r4 g4. g8 f4 |
  g2 f | r4 f'4. f8 es4 | g1 | c,4 c2 c4 | aes4 aes2 aes4 |
  % page 2
  c8[ d16 es] f2 f4 | R1 | es2 es4 f | c2 es | g1 | g,2 g~ |
  g r4 \autoBeamOn d'8 d d4. d8 d2 | r4 es8 es e4. e8 | e2 r | R1 |
  es2 es4  c8 c16 c bes2 \autoBeamOff bes | R1 | r2 c | r4 f2 des8[ c] |
  %page 3
  bes8[ c] des[ f]~ f f bes,4 | c1 \bar "||" f | r2 f16[ es des c] bes8[ c]~ | c f4 es8~ es16[ d! c bes] aes8[ c] 
  \time 3/4 \autoBeamOn es16 es \autoBeamOff es4 c8 r4 \time 3/4 b4 b b | bes g r | R2. | \time 2/2 R1 R1
  R1 \time 3/4 R2. | \time 3/4 e'4 e e | es c r | e e e | \time 2/2 es2 c | \autoBeamOn b8 b b2 b8 b | \autoBeamOff
  %page 4
  bes1 | a2. d4 | des2 c~ | c1~ | c \bar "||" es2 es~ | es4 des2 c4 |
  a8[ g16 a] bes2 g4 | g2 g | r4 g aes4. aes8 | bes4 es2 es4 | d d e2 | e r | r c |
  es4 c es4. d8 | c1~ | c2 b \bar "||" f'1 | r2 f16[ es des c] bes8[ c]~ |
  %page 5
  c f4 es8~ es16[ d! c bes] aes8[ c] | \time 3/4 \autoBeamOn es16 es es4 c8 r4 \time 3/4 b4 b b | bes g r | R2. |
  \time 2/2 R1 R R \time 3/4 R2. | \time 3/4 e'4 e e | es c r | e e e 
  \time 2/2 es2 c | \autoBeamOn b8[ b] b2 b8[ b] \autoBeamOff | bes1 | a2. d4 | des2 c~ | c1~ | c \bar "|." 
}

sopranoTwo = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1 | r2 r4 aes~ | aes g2 f4 | aes bes4. aes8 aes4 | bes8[ c d bes] es4 c~ |
  c c2 c4 | bes f2 g8 g~ | g g bes4 c8[ bes c d] | es4 f8[ g] c,4 f, | r es' es es |
  %page 2
  a,8[ f] bes2 a4 | b8 b c4 d8[ c16 d] es4 | c c2 c4 | g'1 | g,4 a8[ b] c2~ | c d~ |
  d r4 \autoBeamOn a8 a | a4. a8 a2 | r4 c8 c c4. c8 | c2 c4 d8 f | c f, \autoBeamOff aes8.[ g16] f8[ es] f[ g] |
  aes4 \autoBeamOn c8 c~ c[ c] es es16 es \autoBeamOff es2 es | R1 | r2 f | des8[ c bes c] des4 f~ |
  %page 3
  f f, bes2 | a1 | c | c16[ bes aes g] f4 f r | aes2 r8 es'16[ d!] c[ bes aes8] |
  \autoBeamOn c8 c16 c c8 es  r4 | R2. R2. | b4 b b | bes2 g | fis8 fis fis2 fis8 fis |\autoBeamOff
  f!1 | e2 r4 | R2. R2. R2. | R1 R1 |
  %page 4
  R1 | r2 c'4 bes~ | bes8[ aes g f] e[ f] g4~ | g f8[ e] f2 | g1 | c2 c~ | c4 bes g2 |
  f2. es4 | d2 d | r4 d f4. f8 | g4 bes2 bes4 | bes a2 a4~ | a gis r2 | r a |
  c4 aes c bes | aes g2 f8[ es] | f2 g | c1 | c16[ bes aes g] f4 f r |
  %page 5
  aes2 r8 es'16[ d!] c[ bes aes8] | \autoBeamOn c c16 c c8 es r4 | R2. R2. | b4 b b |
  bes2 g | fis8[ fis] fis2 fis8[ fis] \autoBeamOff | f!1 | e2 r4 | R2. R R |
  R1 R R | r2 c'4 bes~ | bes8[ aes g f] e[ f] g4~ | g f8[ e] f2 | g1
}

alto = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1 | r2 f | es2. c4 | des2 r | r c~ |
  c4 bes2 a4 | bes bes'4. b8 c4~ | c g4. g8 es4 | aes8[ g f e] f[ g aes bes] | c2 bes |
  %page 2
  f f | es bes | c1~ | c2 c' | e,4 f2 es8[ d] | es2 d ~ |
  d r4 \autoBeamOn f8[ f] | fis4. fis8 fis2 | r4 g8[ g] g4. g8 |  g2 r4 f | aes8[ c] f,[ c] des2 |
  c4 aes' aes8 aes4 aes16[ aes] \autoBeamOff | g2 g | R1 | es4 f8[ g] aes[ g] f4 | bes8[ aes] f4 bes8 aes4 g8 |
  %page 3
  \autoBeamOn f8[ g16 aes] bes8[ bes]~ bes[ f] \autoBeamOff f4 | f1 | a | r2 bes8.[ aes16] g[ f es8] | f4 \autoBeamOn c'8.[ c16] c8[ c,] r4 |
  aes'16[ aes] aes4 aes8 r4 | R2. R2. R2. R1 R1 R1 R2. c4 c c c, c r | c' c c | c,2. c4 | d8[ d] d2 d4 |
  %page 4
  es2 des | c r | r c | c1 | e | aes2 aes | f es |
  d2. c4 | b2 b | r4 b c4. c8 | es4 g2 g4 | f f c'2 | b e,4 f | e g2 f4 | \autoBeamOff
  g8[ f es f] g[ aes] g4~ | g8[ f es d] c2~ | c d | a'1 | r2 bes8.[ aes16] g[ f es8]
  %page 5
  f4 \autoBeamOn c'8.[ c16] c8[ c,] r4 | aes'16[ aes] aes4 aes8 r4 R2. R2. R2. |
  R1 R1 R1 R2. c4 c c | c, c r | c' c c |
  c,2. c4 | d8[ d] d2 d4 | es2 des | c r | r c | c1 | e | \autoBeamOff
}

tenorOne = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1 | r4 des2 c4~ | c bes c2 | f4. f8 g4 es~ | es d r4. f8~ |
  \autoBeamOn f[ f] e4 f2~ | f4 d2 g,4~ | g8[ g] es'4 c2 | aes4 r aes' aes | es2 es, |
  %page 2
  f2 c'4. c8 | g'2. g4~ | g8[ f16 g] aes2 f4 | g g2 g4 | c,1~ | c |
  b2 r4 d8[ d] | d4. d8 d2 | r4 g,8[ g] g4. g8 | g2 r | R1 |
  es'2 es4 es8[ aes,16 aes] bes2. bes4 | bes c8[ d] es[ d] c4 | aes8[ g] c4 c2 | f8[ es des es ] f4 f,~ |
  %page 3
  f8[ f] f4 f2~ | f1 | f' | r4 aes16[ g f es] des8[ bes] r4 | c8[ f,16 g] aes[ bes c8]~c es4 es16[ es] |
  es4 es r g g g | g, g r | d' d8[ d] d4~ | d c8[ bes] c4 c | d8[ d] d2 d4~ |
  d bes bes2 | c r4 c c c | aes aes r | c c c | aes2 aes | g8[ g] g2 g4~
  %page 4
  g8[ es] es4 f2~ | f1~ | f2 r4 e f4. g8 aes[ bes] c4 | c1 | R1*12
  f1 | r4 aes16[ g f es] des8[ bes] r4 |
  %page 5
  c8[ f,16 g] aes[ bes c8]~ c es4 es16[ es] | es4 es r g g g | g, g r | d' d8[ d] d4~ |
  d c8[ bes] c4 c | d8[ d] d2 d4~ | d bes bes2 | c r4 c c c | aes aes r | c c c |
  aes2 aes | g8[ g] g2 g4~ | g8[ es] es4 f2~ | f1~ | f2 r4 e f4. g8 aes[ bes] c4 | c1
}

tenorTwo = \relative c' {
  \global
  % Вписывайте музыку сюда
  aes2 g | f aes~ | aes aes | f es | f4 bes4. bes8 as4 |
  c1 | f,2 r4 c'~ | \autoBeamOn c8[ c] bes4 g2 | es'4 c2 c4 | r es2 es4~
  %page 2
  es4 des f,2 | g1 | es'2 es4 c | e,2 g~ | g1~ | g1~ |
  g2 r4 a8[ a] | a4. a8 a2 | r2 c8[ c] c4~ | c8[ c] c4 r2 | R1 |
  aes4 aes aes4. es'16[ es] | es2 es | r2 g,4 aes8[ bes] | c[ bes] aes4 f4. f8 | f2 f8[ f] bes[ c]
  %page 3
  des8[ c] bes[ des]~ des[ des] des4 | c1 | c | r2 r4 es16[ d c bes] | aes8[ aes] c16[ d es f] g8 aes4 aes,16[ aes] |
  aes4 aes r d d8[ d] d4~ | d c r | g' g g | g,2. g4 | a8[ a] a2 a4~ |
  a f f2 | g r4 g' g8[ g] g4~ | g f r | g g8[ g] g4~ | g f8[ es] f4 f | g8[ g] g2 g4~
  %page 4
  g8[ g] ges4 f2~ | f1~ | f2 a, | aes1 g | R1*12
  c1 | r2 r4 es16[ d c bes]
  %page 5
  aes8[ aes] c16[ d es f] g8 aes4 aes,16[ aes] | aes4 aes r d d8[ d] d4~ d c r | g' g g |
  g,2. g4 | a8[ a] a2 a4~ | a f f2 | g r4 g' g8[ g] g4~ | g f r | g g8[ g] g4~ |
  g f8[ es] f4 f | g8[ g] g2 g4~ | g8[ g] ges4 f2~ | f1~ | f2 a, | aes1 | g
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  R1 R R | des2 c | bes c~ |
  c f | d2. c4 | es4 es4. es8 c4 | c'8[ bes aes g] f[ e f g] | aes2 bes |
  %page 2
  R1 R1 | aes2 aes | g c,~ | c1~ | c2 g~ |
  g r4 \autoBeamOn d'8[ d] | d4. d8 d2 | r4 c8[ c] c4. c8 | c2 r | R1 |
  aes2 aes4 aes8[ c16 c] | es2 es | R1 | r2 r4 a, | bes8[ c des c] bes2 |
  %page 3
  bes4. bes8 bes2 | f'1 | f | r2 r4. aes16[ g] | f[ es des8] c4~ c8 aes4 aes8 |
  aes4 aes r g' g g | es es r | g g g | es2. es4 | d8[ d] d4 d2 |
  d des | c r4 | R2. R2. R2. | R1 R1 |
  %page 4
  R1 r2 r4 bes | bes2 c | r4 aes aes2 | c1 | aes'2 aes | a4 bes c2~ |
  c4 bes g2~ | g g | r4 g f4. f8 | es4 es2 g4 | bes f e2 | e  r4 a | c b c2 |
  c,1~ | c2 aes'~ | aes g | f1 | r2 r4. aes16[ g]
  %page 5
  f[ es des8] c4~ c8 aes4 aes8 | aes4 aes r g' g g | es es r | g g g |
  es2. es4 | d8[ d] d4 d2 | d des | c r4 | R2. R2. R2. |
  R1 R1 R1 | r2 r4 bes | bes2 c | r4 aes aes2 | c1 
}

versesi = \lyricmode {
  Trí -- _ stis est á -- ni -- ma mé -- a,
  á -- ni -- ma mé -- a,
  us -- que,
  us -- que ad mór -- _ tem,
  us -- que ad mór -- tem,
  ad mór -- tem: __
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae,
  quae cir -- _ cum -- dá -- bit me.
  Vos fú -- gam, __ 
  vos fú -- gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis. __
  Éc -- ce __ ap -- pro -- pín -- _ quat hó -- ra,
  et Fí -- li -- us hó -- mi -- nis tra -- dé -- tur
  in má -- nus pec -- ca -- tó -- rum.
  Vos fú -- gam, __ 
  vos fú -- gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis. __
}

versesii = \lyricmode {
  Trí -- _ stis est á -- ni -- ma mé -- _ a, __
  us -- que ad mór -- tem, á -- ni -- ma mé -- _ _ _ a
  us -- que ad mór -- _ _ tem, ad mór -- _ _ tem,
  us -- que ad mór -- _ _ tem: __
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  et vi -- gi -- lá -- te mé -- _ _ _ cum:
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae cir -- _ cum -- dá -- bit me.
  Vos fú -- _ gam,
  vos fú -- _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- _ _ _ _ bis.
  Éc -- ce __ ap -- pro -- pín -- quat hó -- ra,
  et Fí -- li -- us hó -- mi -- nis tra -- dé -- tur
  in má -- nus pec -- ca -- tó -- _ _ _ rum.
  Vos fú -- _ gam,
  vos fú -- _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- _ _ _ _ bis.
}

versea = \lyricmode {
  Trí -- _ stis est, tri -- _ stis est
  á -- ni -- ma, __ á -- ni -- ma mé -- _ _ a
  us -- que ad mór -- tem, __ ad mór -- _ _ _ tem: __
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  et vi -- gi -- lá -- te mé -- cum:
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae cir -- _ cum -- dá -- bit, quae cir -- _ _ _ _ _ cum -- dá -- bit me.
  Vos fú -- _ gam
  ca -- pi -- é -- tis,
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis.
  Éc -- ce ap -- pro -- pín -- quat hó -- ra,
  et Fí -- li -- us hó -- mi -- nis tra -- dé -- tur
  in má -- nus pec -- ca -- tó -- _ _ _ rum.
  Vos fú -- _ gam
  ca -- pi -- é -- tis,
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis.
}

verseti = \lyricmode {
  Trí -- _ stis est 
  á -- ni -- ma mé -- a, 
  á -- ni -- ma mé -- a,
  á -- ni -- ma mé -- a
  us -- que ad mór -- tem, 
  á -- ni -- ma mé -- _ _ _ a
  us -- que ad mór -- tem:
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae cir -- _ _ _ _ cum -- dá -- bit, 
  quae cir -- _ _ _ _ cum -- dá -- bit me. __
  Vos fú -- _ _ _ _ gam,
  vos fú -- _ _ _ _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- _ _ _ dam
  im -- mo -- lá -- ri __ pro vó -- bis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri __ pro vó -- bis, __
  pro vó -- _ _ _ _ bis.
  Vos fú -- _ _ _ _ gam,
  vos fú -- _ _ _ _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- _ _ _ dam
  im -- mo -- lá -- ri __ pro vó -- bis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri __ pro vó -- bis, __
  pro vó -- _ _ _ _ bis.  
}

versetii = \lyricmode {
  Trí -- _ stis est, __ 
  trí -- _ stis est
  á -- ni -- ma mé -- a, 
  á -- ni -- ma mé -- a
  us -- que,
  us -- que __ ad mór -- tem, 
  us -- que ad mór -- tem: __
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae cir -- _ _ _ _ cum -- dá -- bit me
  quae cir -- _ _ _ _ cum -- dá -- bit me.
  
  Vos fú -- _ _ _ _ gam,
  fú -- _ _ _ _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri __ pro vó -- bis,
  et é -- go vá -- dam,
  et é -- go vá -- _ _ _ dam
  im -- mo -- lá -- ri __ pro vó -- bis, __
  pro vó --  bis.
  
  Vos fú -- _ _ _ _ gam,
  fú -- _ _ _ _ gam
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri __ pro vó -- bis,
  et é -- go vá -- dam,
  et é -- go vá -- _ _ _ dam
  im -- mo -- lá -- ri __ pro vó -- bis, __
  pro vó --  bis.
}

verseb = \lyricmode {
  Trí -- _ stis est, __ 
  trí -- _ stis est á -- ni -- ma mé -- _ _ a 
  us -- que ad mór -- tem: __
  su -- sti -- né -- te hic,
  su -- sti -- né -- te hic,
  
  nunc vi -- dé -- bi -- tis tú -- bam,
  quae cir -- _ _ _ _ cum -- dá -- bit me.
  
  Vos fú -- _ _ _ _ gam __
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis,
  pro vó -- bis.
  Éc -- ce ap -- pro -- pín -- quat hó -- ra,
  et Fí -- li -- us hó -- mi -- nis tra -- dé -- tur
  in má -- nus pec -- ca -- tó -- rum.
  Vos fú -- _ _ _ _ gam __
  ca -- pi -- é -- tis,
  et é -- go vá -- dam,
  et é -- go vá -- dam
  im -- mo -- lá -- ri pro vó -- bis,
  pro vó -- bis,
  pro vó -- bis.
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
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
    \new ChoirStaff
    <<
    \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano I"
    } \new Voice = "soprano1" \sopranoOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano1" \versesi
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano II"
    } \new Voice = "soprano2" \sopranoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano2" \versesii
    >>
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \versea
    \new ChoirStaff <<
      \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
      \new Staff \with {
      midiInstrument = "choir aahs"
        instrumentName = "Tenor I"
      } {
        \clef "treble_8"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verseti
      \new Staff \with {
      midiInstrument = "choir aahs"
        instrumentName = "Tenor II"
      } {
        \clef "treble_8"
        \new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \versetii
    >>
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
    \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \verseb
  >>
  \layout { 
 \context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\consists Ambitus_engraver 

	
  }
}
  \midi {
    \tempo 4=100
  }
}

% MIDI для репетиции:
\book {
  \bookOutputSuffix "soprano1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \versesi
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \versesii
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \versea
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verseti
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \versetii
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseb
    \midi { }
  }
}

