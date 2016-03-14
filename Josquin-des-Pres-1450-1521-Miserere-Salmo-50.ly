\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-global-staff-size 15)
#(set-default-paper-size "a4")

\paper {
%  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  %indent = 4
  ragged-bottom = ##f
  %ragged-last-bottom = ##f
  %print-page-number = ##f
}

\header {
  title = "Miserere - Salmo 50"
  subtitle = ""
  composer = "Josquin des Pres 1450-1521"
  piece = "Prima pars"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \minor
  \time 2/2
  \autoBeamOff
}

mBreak = { \break }
mpageBreak = { \pageBreak }
mBreak = {  }
mpageBreak = {  }
ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

cantus = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*6 \mBreak
  
  b2. b4 |
  b2 b |
  b b |
  c1 |
  b |
  r2 a |
  b c |
  d1 | \mBreak
  
  c2 a |
  b g |
  a b |
  c2. b8[ a] |
  c4 b g4. f8 |
  g4 a g a8[ g] |
  a1 ~ | \mBreak
  
  a~ |
  a |
  R1*2 |
  g1 |
  a2 b~ |
  b b |
  g a | \mpageBreak
  
  b2. b4 |
  b g a b |
  b c b a~ |
  a b f2 |
  e8[ f g a] b4 c~ |
  c b8[ a] g2 | \mBreak
  
  e2 e |
  r4 g a b |
  c4. b8 a4 g |
  f d e2 |
  d a'~ |
  a4 a \ficta bes2 | \mBreak
  
  a4 d d d~ |
  d c8[ b] c2 |
  d1~ |
  d |
  b2 c |
  d b |
  c d4 a | \mBreak
  
  c4 c a c~ |
  c8 b a2 g4 |
  a1 |
  R1*2 |
  r2 r4 a \mpageBreak
  
  b4 c d2 |
  c b4 a~ |
  a g f2 |
  e1 |
  R1*2 | \mBreak
  
  R1 |
  r2 a~ |
  a4 a a e |
  f g a d,8[ e] |
  f[ g] a2 g8[ f] |
  e4 a g c~ \mBreak
  
  c8[ b] a2 g4 |
  a c c c |
  b c2 b8[ a] |
  g4 g g g |
  f g e2 |
  d8[ e] f[ g] a[ e] g4 | \mBreak
  
  f e2 d4 |
  e1 |
  r2 g~ |
  g4 g g g |
  g4. f8 e2 |
  d1 \mpageBreak
  
  R1*6 \mBreak
  
  R1*6 \mBreak
  
  R1 |
  r2 d |
  e f |
  g r4 d |
  f4. g8 a4. b8 |
  c1 |
  r2 a~ |
  a4 a a2 \mBreak
  
  g g |
  g c~ |
  c4 c c c |
  b2 b |
  a a |
  g1 |
  r2 a |
  g4 e f2 \mpageBreak
  
  e4 c' b g |
  a2 g |
  r r4 c, |
  d e2 d4 |
  e1 |
  r2 b'~ | \mBreak
  
  b4 b b2 |
  a c~ |
  c4 b g2~ |
  g4 a b2 |
  r g |
  a b |
  g a~ |
  a4 a b2 \mBreak
  
  g a~ |
  a4 a b2 |
  g a |
  b g |
  a2. a4 |
  b2 g |
  a2. a4 |
  a a a2 | \mBreak
  
  b2. g4 |
  g2 a~ |
  a4 a b2 |
  g a~ |
  a4 g8[ f] g4 a~ |
  a f e2 |
  d r |
  a'2. a4 \mpageBreak
  
  a2 a |
  \ficta bes \ficta bes! |
  a1 |
  a |
  r2 d, |
  f d |
  e4. f8 g[ a] b4~ | \mBreak
  
  b8[ a] a2 g4 |
  a1~ |
  a |
  R1 |
  r2 d |
  c a |
  r4 c2 b8[ a] \mBreak
  
  b4 g2 c4~ |
  c8[ b a g] f4 a~ |
  a g8[ f] e2 |
  d r4 a' |
  b c d2 |
  r4 a b c | \mBreak
  
  d2 c |
  b4 a2 g8[ f] |
  e2 d4 e |
  f e4. d8 d4 |
  e2 r |
  g2. g4 |
  g2 g \mpageBreak
  
  g4 g g2 |
  f4 d8[ e] f[ g] a4~ |
  a8[ b] c2 b8[ a] |
  b2 g |
  g1~ |
  g \bar "||"
} % cantus

altus = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*6 \mBreak
  
  R1*2 |
  e2. e4 |
  e2 e |
  e e |
  f1 |
  e |
  r2 d | \mBreak
  
  e2 f |
  g1 |
  f2 d |
  e f |
  g4. f8 e[ d] e4~ |
  e d8[ c] b2 |
  a1 ~ | \mBreak
  
  a1 |
  R1 |
  c1 |
  d2 e~ |
  e e |
  c d |
  e2. e4 |
  e2 c | \mpageBreak
  
  d2 e~ |
  e4 e d2 |
  e4. c8 d[ e] f4~ |
  f8[ e] e2 d4 |
  e2 r |
  e e | \mBreak
  
  r2 r4 e |
  e e d2 |
  c4 a8[ b] c[ d] e4~ |
  e8[ d] d2 \ficta cis4 |
  d2 d, |
  a' g | \mBreak
  
  a2 b |
  c a~ |
  a4 f f2 |
  r f |
  g a |
  f g |
  a r4 f | \mBreak
  
  g4 a f g |
  a4. c8 b2 |
  a r4 a |
  b c d2 |
  c4 a \ficta bes2 |
  a4. f8 g4 f | \mpageBreak
  
  d4 e2 d4 |
  e2 r |
  R1 R1 |
  a2. a4 |
  a2 a | \mBreak
  
  a2 g |
  a1 |
  e |
  R1*3 \mBreak
  
  R1*3 |
  r4 e' e e |
  d e2 d8[ c] |
  b4 d c b | \mBreak
  
  a g f2 |
  e1 |
  g2. g4 |
  g g e4. f8 |
  g2 g |
  r d'~ | \mpageBreak
  
  d4 d d d |
  e2 c4. a8 |
  a2 r4 d |
  d d d d |
  e2 c4. a8 |
  a2 a4 d | \mBreak
  
  b c d b |
  r e e c |
  d e c4. a8 |
  a4 d b g |
  c4. d8 e4 f~ |
  f8 e d4. \ficta cis8[ cis b] \mBreak
  
  d2 r |
  R1 |
  r2 d~ |
  d4 d d d |
  d d d2 |
  c1 |
  e2. e4 e2 e | \mBreak
  
  r2 e |
  e e |
  c g'~ |
  g4 g g d |
  f2 f |
  e r4 e |
  c2 d |
  e r4 a, \mpageBreak
  
  g a e2 |
  a r |
  R1*2 |
  b2. b4 |
  b2 b \mBreak
  
  b b |
  c1~ |
  c |
  b |
  r2 e, |
  a g |
  e f~ |
  f4 f g2 \mBreak
  
  e f~ |
  f4 f g2 |
  e a |
  g e |
  f2. f4 |
  g2 e |
  f2. f4 |
  f f d2 | \mBreak
  
  g2. e4 |
  e2 f~ |
  f4 f g2 |
  e f~ |
  f4 e8[ d] e4 d |
  f4. g8 a2 |
  r a~ |
  a4 a a2 \mpageBreak
  
  d, a' |
  g d~ |
  d4 e f g |
  a1 |
  R1*3 \mBreak
  
  R1 |
  r2 d, |
  f d |
  e4. f8 g[ a] b4~ |
  b8[ a] a2 g4 |
  a e f2 |
  e c' \mBreak
  
  d2 e |
  r4 e f4. e8 |
  c4 d2 c4 |
  d4. c8 a4 f' |
  e e d4. c8 |
  a4 d8[ c] b[ a] a4~ \mBreak
  
  a g a e |
  g f d2 |
  a' r |
  r d, |
  g g4 e |
  e2 e'~ |
  e e \mpageBreak
  
  e e |
  d d |
  c1 |
  b~ |
  b~ |
  b \bar "||"
} % altus

tenorI = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*6 \mBreak
  R1*8 \mBreak
  
  R1*4 |
  g2. g4 |
  g2 g |
  g g | \mBreak
  
  f1 |
  e ~ |
  e |
  R1*5 | \mpageBreak
  
  R1*6 \mBreak
  
  R1*4 |
  d'2. d4 |
  d2 d | \mBreak
  
  d2 d |
  e1 |
  d~ |
  d |
  R1*3 | \mBreak
  
  R1*6 | \mpageBreak
  
  R1*3 |
  c2. c4 |
  c2 c |
  c c | \mBreak
  
  d1 |
  c~ |
  c |
  R1*3 \mBreak
  
  R1*6 \mBreak
  
  R1 |
  b2. b4 |
  b2 b |
  b b |
  c1 |
  b1~ \mpageBreak
  
  b1 |
  R1*5 \mBreak
  
  R1*6 \mBreak
  
  a2. a4 |
  a2 a |
  a a |
  b1 |
  a~ |
  a |
  R1*2 \mBreak
  
  R1*8 \mpageBreak
  
  R1*4 |
  g2. g4 |
  g2 g | \mBreak
  
  g g |
  a1 |
  g~ |
  g |
  R1*4 \mBreak
  
  R1*8 \mBreak
  
  R1*6 \mBreak
  f2. f4 |
  f2 f \mpageBreak
  
  f f |
  g1 |
  f~ |
  f |
  R1*3 \mBreak
  
  R1*7 \mBreak
  
  R1*6 \mBreak
  
  R1*5 |
  e2. e4 |
  e2 e \mpageBreak
  
  e e |
  f1 |
  e~ |
  e~ |
  e~ |
  e \bar "||"
} % tenorI

tenorII = \relative c' {
  \global
  % Вписывайте музыку сюда
  b2. b4
  b2 b |
  b b |
  c1 |
  \[b2 g'\] |
  f4 e2 b8[ a] | \mBreak
  g1~ |
  g |
  R1*6 \mBreak
  
  R1*4 |
  r2 b2~ |
  b4 b b b |
  c2 c | \mBreak
  
  d1 |
  c4. b8 a[ g] a4~ |
  a g8[ f] e4 a |
  f g2 e4 |
  e1 |
  R1*3 \mpageBreak
    
  R1*6 \mBreak
  
  R1*4 |
  f2. f4 |
  f2 g | \mBreak
  
  f2 d |
  a'1 |
  f2 r |
  f'1 |
  e2 c |
  f e |
  c r4 f | \mBreak
  
  e4 c f e |
  c e4. d8 e4 |
  c2 r4 c |
  d e f2 |
  e4 d2 c8[ \ficta bes] |
  c4 d c d8[ c] | \mpageBreak
  
  b8[ a] a2 g4 |
  a c d f~ |
  f8[ e] e2 d4 |
  e2 r |
  e2. d4 |
  c b a g | \mBreak
  
  f4 e d2 |
  e r |
  a2. a4 |
  a e f g |
  a d,8[ e] f[ g] a4~ |
  a g8[ f] e4 a | \mBreak
  
  c d b2 |
  a1 |
  r4 e' c d |
  e2 e, |
  R1*2 \mBreak
  
  R1*3 |
  g4. g8 g4 g |
  e4. f8 g2 |
  g1 \mpageBreak
  
  g2. g4 |
  g g a2 |
  f4. d8 d2 |
  r4 g g g |
  g g a2 |
  f4. d8 d4 d \mBreak
  
  g e f g |
  e r a a |
  f g a f~ |
  f8[ d] d4 g e |
  c c'4. b8[ a g] |
  f4 g e2 | \mBreak
  
  d r |
  f2. f4 |
  e2 d |
  g g |
  f4 d f2 |
  e1 |
  r2 c'~ |
  c4 c c2 | \mBreak
  
  b b |
  b e~ |
  e4 e e e |
  d2 b |
  c d |
  b1 |
  r2 r4 a |
  b c d2 \mpageBreak
  
  c r4 b |
  c d e2 |
  d4 b c2 |
  b r |
  R1 |
  r2 e~ | \mBreak
  
  e4 e e e |
  e2 e |
  e1 |
  e~ |
  e |
  c2 d |
  e c |
  d2. d4 \mBreak
  
  e2 c |
  d2. d4 |
  e2 c |
  d e |
  c d~ |
  d4 d e2 |
  c d~ |
  d4 d d d \mBreak
  
  d2 e ~ |
  e4 c c2 |
  d2. d4 |
  e2 c |
  d4 f e f~ |
  f8[ e] d2 \ficta cis4 |
  d1 |
  r2 d~ \mpageBreak
  
  d4 d d2 |
  d d4 d |
  d1 |
  d2 r |
  d f |
  d f4. e8 |
  c4 g'4. f8[ e d] \mBreak
  
  e4 c b2 |
  a1~ |
  a |
  R1*3 |
  r2 a | \mBreak
  
  g e |
  r a |
  a a |
  d, d |
  R1 |
  f2. e4 \mBreak
  
  d2 e4 a |
  b c d2 |
  c b4 a~ |
  a g a2 |
  b2. g4 |
  g1 |
  r2 c~ \mpageBreak
  
  c4 c c c |
  a2 a |
  a1 |
  g~ |
  g~ |
  g \bar "||"
} % tenorII


bassus = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*2 |
  e2. e4 |
  e2 e |
  e e |
  f1 | \mBreak
  e1 ~ |
  e |
  R1*6 | \mBreak
  
  R1*4 |
  e2. e4 |
  e2 e |
  a, a | \mBreak
  
  d1 |
  a~ |
  a |
  R1*5 \mpageBreak
    
  R1*6 \mBreak
  
  R1*4 |
  d2. d4 |
  d2 g, | \mBreak
  
  d'2 b |
  a1 |
  d |
  r2 d |
  e a, |
  d e |
  a, r4 d | \mBreak
  
  c4 a d c |
  a2 e' |
  a,1 |
  r2 r4 d |
  e f g2 |
  f e4 d~ | \mpageBreak
  
  d4 c b2 |
  a r |
  R1*2 |
  r2 a'2~ |
  a4 g f e | \mBreak
  
  d c b2 |
  a1~ |
  a |
  R1*3 \mBreak
  
  R1 |
  r4 a' a a |
  g a2 g8[ f] |
  e2 r |
  R1*2 \mBreak
  
  R1 |
  r2 g2~ |
  g4 g g g |
  e4. f8 g2 |
  \[ c,1 |
  g~ \mpageBreak
  
  g \] |
  R1*5 \mBreak
  
  R1*6 \mBreak
  
  r2 d'2~ |
  d4 d d2 |
  c d |
  g,1 |
  d' |
  a |
  r2 a2~ |
  a4 a a2 \mBreak
  
  e' e |
  e c~ |
  c4 c c c |
  g'2 g |
  f d |
  e r4 e |
  f2 f |
  e r4 d \mpageBreak
  
  e f g2 |
  f2  r4 e |
  f g a2 |
  g4 e f2 |
  e1 |
  e2. e4 | \mBreak
  
  e2 e |
  a, a |
  c2. d4 |
  e1~ |
  e |
  R1*3 \mBreak
  
  R1*8 \mBreak
  
  R1*6 |
  d2. d4 |
  d2 d \mpageBreak
  
  d d |
  g,1 |
  d'~ |
  d~ |
  d |
  R1*2 \mBreak
  
  R1 |
  d2 f |
  d f4. e8 |
  c4 g'4. f8[ e d] |
  e4 c b2 |
  a d |
  c a \mBreak
  
  r2 c2~ |
  c4 c d2 |
  a r4 a |
  b c d2 |
  r4 a b c |
  d2. c4 \mBreak
  
  b2 a |
  R1 |
  r2 r4 c |
  d e f2 |
  e1 |
  R1 |
  c2. c4 \mpageBreak
  
  c2 c |
  d d |
  a1 |
  e'~ |
  e~ |
  e \bar "||"
} % bassus

versecantus = \lyricmode {
  Mi -- se -- re -- re me -- i De -- us se -- cun -- dum ma --
  gnam mi -- se -- ri -- cor -- di -- am tu -- _ _ _ _ _ _ _ _ am __
  et se -- cun -- dum mul -- ti --
  tu -- di -- nem mi -- se -- ra -- ti -- o -- num tu -- _ a -- _ _ _ _ rum
  de -- le de -- le i -- ni -- qui -- ta -- tem me -- _ _ am Mi -- se -- re --
  re me -- i De -- _ _ us __ am -- pli -- us la -- va me ab
  i -- ni -- qui -- ta -- te me -- _ a et
  a pec -- ca -- to me -- o __ mun -- da me
  qui -- ni -- am i -- ni -- qui -- ta -- _ _ _ _ tem __ _ me -- _
  _ _ am e -- go co -- gno -- _ _ sco et pec -- ca -- tum me -- um con -- tra -- me est
  sem -- _ _ per Mi -- se -- re -- re me -- i De -- us
  Mi -- se -- re -- re me -- i __ _ De -- _ us ec -- ce e --
  nim in in -- i -- qui -- ta -- ti -- bus con -- ce -- ptus sum et in pec -- ca --
  
  tis con -- ce -- pit me __ _ ma -- ter me -- _ a Mi --
  se  -- re -- re me -- i De -- _ us ec -- ce e -- nim ve -- ri -- tat --
  em di -- le -- xi -- sti in -- cer -- ta et -- oc -- cul -- ta sa -- pi -- en -- ti -- ae
  tu -- ae ma -- ni -- fe -- sta -- sti mi -- _ _ _ _ _ hi Mi -- se --
  
  re -- re me -- i De -- us a -- sper -- ges me __ _ _ Do --
  _ mi -- ne __ hy -- so -- po et __ _ _ 
  mun -- da -- _ _ _ _ bor la -- va -- bis me et su -- per
  ni -- vem de -- _ _ _ al -- _ ba -- _ _ _ bor Mi -- se -- re -- re
  me -- i De -- _ _ _ _ _ _ _ _ us. __
}

versealtus = \lyricmode {
  Mi -- se -- re -- re me -- i De -- us se --
  cun -- dum ma -- gnam mi -- se -- ri -- cor -- di -- am __ _ _  tu -- am __
  et se -- cun -- dum mul -- ti -- tu -- di -- nem mi --
  se -- ra -- ti -- o -- num __ _ _ tu -- a -- _ rum de -- le
  i -- ni -- qui -- ta -- tem me -- _ _ _ _ am Mi -- se -- re --
  re me -- i De -- _ us am -- pli -- us la -- va me ab
  i -- ni -- qui -- ta -- te __ _ me -- a et a pec -- ca -- to me -- o mun -- _ _ da
  me __ _ _ _ Mi -- se -- re -- re
  me -- i De -- us
  et pec -- ca -- tum me -- _ _ um con -- tra
  me est sem -- per Mi -- se -- re -- re me -- i De -- us ti --
  bi so -- li pec -- ca -- _ vi et ma -- lum co -- ram te fe -- _ ci ut iu --
  sti -- fi -- ce -- ris in ser -- mo -- ni -- bus tu -- _ is et vin -- cas cum __ _ _ iu -- di -- ca -- _ 
  ris Mi -- se -- re -- re me -- i De -- us ec -- ce e -- nim
  in i -- ni -- qui -- ta -- ti -- bus con -- ce -- ptus sum con -- ce -- ptus sum con --
  
  ce -- _ ptus sum Mi -- se -- re -- re
  me -- i De -- us ec -- ce e -- nim ve -- ri -- tat --
  em di -- le -- xi -- sti in -- cer -- ta et oc -- cul -- ta sa -- pi -- en -- ti -- ae
  tu -- ae ma -- ni -- fe -- sta -- sti mi -- _ _ _ hi __ _ _ Mi -- se -- re --
  re me -- i De -- _ _ _ us
  a -- sper -- ges me __ _ _ Do -- _ mi -- ne hy -- so -- po hy --
  so -- po et mun -- _ da -- _ _ bor __ _ _ la -- va -- bis -- me __ _ _ la -- va -- _
  bis me et su -- per ni -- vem de -- al -- ba -- _ bor Mi -- se --
  re -- re me -- i De -- us. __
}

versetenorI = \lyricmode {
  Mi -- se -- re -- re me -- i % \italic
  De -- us __ %\italic
  Mi -- se -- re -- re
  me -- i De -- us __
  Mi -- se -- re -- re me -- i
  De -- us __
  
  Mi -- se -- re -- re me -- i De -- us __
  Mi -- se -- re -- re me -- i De -- us __
  
  Mi -- se -- re -- re
  me -- i De -- us __
  
  Mi -- se -- re -- re
  
  me -- i De -- us __
  Mi -- se -- re -- re
  me -- i De -- us. __
  
}

versetenorII = \lyricmode {
  Mi -- se -- re -- re me -- i De -- 
  _ _ _ _ _ us __
  Mi -- se -- re -- re me -- i
  De -- us __ _ _ _ _ _ Mi -- se -- re -- _ re
  Mi -- se -- re -- re
  me -- i De -- us am -- pli -- us la -- va me ab
  i -- ni -- qui -- ta -- te me -- _ _ a et a pec -- ca -- to me -- _ _ _ o mun --
  _ _ da me mun -- _ _ _ da me Mi -- se -- re -- re me -- i
  De -- _ _ us quo -- ni -- am i -- ni -- qui -- ta -- tem __ _ me -- _ am e --
  go co -- gno -- sco e -- go co -- gno -- sco
  Mi -- se -- re -- re me -- i De -- us
  
  ti -- bi so -- li pec -- ca -- _ vi et ma -- lum co -- ram te fe -- _ ci ut
  iu -- sti -- fi -- ce -- ris in ser -- mo -- ni -- bus tu -- is et vin -- cas cum __ _ iu -- di -- ca -- 
  ris Mi -- se -- re -- re me -- i De -- _ _ us ec -- ce e --
  nim in i -- ni -- qui -- ta -- ti -- bus con -- ce -- ptus sum et in pec -- ca --
  tis con -- ce -- pit me ma -- ter me -- a Mi --
  se -- re -- re me -- i De -- us __ ec -- ce e -- nim ve -- ri --
  tat -- em di -- le -- xi -- sti in -- cer -- ta et __ oc -- cul -- ta sa -- pi -- en -- ti --
  ae tu -- ae ma -- ni -- fe -- sta -- sti mi -- _ _ _ _ _ hi Mi --
  se -- re -- re me -- i De -- us a -- sper -- ges me __ _ _ Do -- _ _ _ mi -- ne __ hy --
  so -- po et mun -- da -- _ bor la -- va -- bis me et su -- per ni -- vem de -- al -- _ _ ba -- _ bor Mi --
  se -- re -- re me -- i De -- us. __
}

versebassus = \lyricmode {
  Mi -- se -- re -- re me -- i De -- 
  us __ 
  Mi -- se -- re -- re me -- i
  De -- us __
  Mi -- se -- re -- re
  me -- i De -- us am -- pli -- us la -- va me ab
  i -- ni -- qui -- ta -- te me -- a et a pec -- ca -- to me -- o __
  mun -- da me Mi -- se -- re -- re
  me -- i De -- us __
  e -- go co -- gno -- _ _ sco
  Mi -- se -- re -- re me -- i De -- us __ _
  
  Mi -- se -- re -- re me -- i De -- us ec -- ce e -- 
  nim in i -- ni -- qui -- ta -- ti -- bus con -- ce -- ptus sum con -- ce -- ptus sum et
  
  in pec -- ca -- tis con -- ce -- pit me ma -- ter me -- a Mi -- se --
  re -- re me -- i De -- _ us __
  
  Mi -- se -- re -- re
  
  me -- i De -- us __
  a -- sper -- ges me __ _ _ Do -- _ _ _ mi -- ne hy -- so -- po
  et __ mun -- da -- bor la -- va -- bis me et su -- per ni -- _
  _ vem de -- al -- _ ba -- bor Mi -- se --
  re -- re me -- i De -- us. __
  
}


%showLastLength = R1*8
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Cantus"
    } {
      \override Score.BarNumber.break-visibility = #end-of-line-invisible
      \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
      \new Voice = "cantus" \cantus
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "cantus" \versecantus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Altus"
    } {
      \clef "treble_8"
      \new Voice = "altus" \altus
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "altus" \versealtus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor 1"
    } {
      \clef "treble_8"
      \new Voice = "tenorI" \tenorI
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenorI" \versetenorI
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor 2"
    } {
      \clef "treble_8"
      \new Voice = "tenorII" \tenorII
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenorII" \versetenorII
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bassus"
    } {
      \clef bass
      \new Voice = "bassus" \bassus
    }
    \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bassus" \versebassus
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

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "cantus" \new Voice = "cantus" { \cantus }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "tenorI" \new Voice = "tenorI" { \tenorI }
     \new Staff = "tenorII" \new Voice = "tenorII" { \tenorII }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
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

\book {
  \bookOutputSuffix "cantus"
  \score {
    \rehearsalMidi "cantus" "soprano sax" \versecantus
    \midi { }
  }
}

\book {
  \bookOutputSuffix "altus"
  \score {
    \rehearsalMidi "altus" "soprano sax" \versealtus
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenorI"
  \score {
    \rehearsalMidi "tenorI" "soprano sax" \versetenorI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenorII"
  \score {
    \rehearsalMidi "tenorII" "tenor sax" \versetenorII
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \versebassus
    \midi { }
  }
}


