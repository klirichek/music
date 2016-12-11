\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\header {
  title = "Descendit de cœlis"
  composer = "William Byrd"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  %  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 25
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key g \minor
  \time 4/2
  \numericTimeSignature
  \dynamicUp
  \autoBeamOff
}

superius = \relative c'' {
  \global
  \secondbar  
  R\breve*5 \abr
  R\breve |
  d1 bes |
  a d2 f~ |
  f e f d |
  f1 f | \abr 
  R\breve |
  r2 d d d |
  es es d1 |
  g,2 g2. f4 es d |
  es2 c g'1 | \abr  
  R\breve
  r1 r2 c |
  c c f2. es4 |
  d2 c es bes |
  c es d2. c4 | \abr
  
  b1 r |
  d es |
  d bes |
  R\breve*2 | \abr
  r2 c1 es2 |
  d bes r c |
  f1 es2 d~ |
  d4 c d bes d2 d |
  es d c2. bes4 | \abr
  a2 a bes2. c4 |
  d g, bes1 a2 |
  bes1 g2 bes~ |
  bes4 c d1 bes2 | \abr
  es1 d~ |
  d r |
  r2 f, bes2. c4 |
  d g, bes1 a2 | \abr
  
  bes g a1 |
  g r2 c |
  d2. es4 f2 c |
  es f d1~ | \abr
  d r |
  R\breve*3 |
  r1 c | \abr
  f1. es2 |
  d1 d |
  r r2 c~ |
  c g'1 f2 | \abr
  es d d1 |
  r2 d f1 |
  es2 d2. g,4 c2 |
  b\breve \bar "||" \abr
  
  \mark "2. pars" R | 
  r2 bes d f~ |
  f4 es d2 c4. c8 d2 |
  bes1 g2 bes |
  d f2. es4 d2 | \abr
  c4. c8 bes2 d2. c4 |
  bes1 r2 c |
  d f2. f4 es2 |
  d2. d4 c2 bes~ |
  bes a bes1 | \abr
  R\breve*2 |
  f2. g8[ a] bes4 c d es |
  f2 c bes2. c4 | \abr
  d bes d2. c4 bes2~ |
  bes a bes1 |
  f2. g8[ a] bes4 c d es |
  f2. es4 d1 | \abr
  
  d1 r |
  R\breve |
  r2 bes1 a2 |
  bes g c2. c4 |
  bes1 a4 g a bes | \abr
  c1 r2 f~ |
  f e f c |
  es?2. es4 d2 d~ |
  d c bes1 ~ | \abr
  bes r2 d~ |
  d c d g, |
  a2. a4 g2 d'~ |
  d c d a |
  bes2. a4 g2 es'~ | \abr
  es d c1 |
  b2 c g'2. f4 |
  es2 d2. c4 c2~ |
  c b4 a b1\fermata \bar "|."
}


medius = \relative c'' {
  \global
  R\breve*2 |
  g1 es |
  d g2 bes~ |
  bes a4 g bes2 a | \abr
  g2. f4 es d c2 |
  f f g d |
  r1 bes' |
  g f |
  a2 c2. bes4 bes2~ | \abr
  bes a2. g4 g2~ |
  g fis g1 |
  r2 g g g |
  bes bes a g |
  g1 r2 es | \abr
  es c g' d4 g~ |
  g f e d e f2 e4 |
  f1 r2 f |
  f f c'2. bes4 |
  a g g1 fis2 |
  
  g1 r2 g~ |
  g bes g es |
  r1 r2 f |
  c'1 bes2 a~ |
  a g g r | \abr
  r1 g |
  bes a |
  f r2 g |
  bes1 a2 g~ |
  g4 f f1 e2 | \abr
  f1 r |
  R\breve*2 |
  r1 r2 d | \abr
  es2. f4 g d g2~ |
  g fis g2. f4 |
  es d c2 f1 |
  R\breve | \abr
  
  bes,2 d2. es4 f d |
  es d g2. f4 es2 |
  d bes f'2. g8[ f] |
  es4 d c2 f1 | \abr
  r f |
  bes1. a2 |
  g1 fis2 fis |
  g1. g2 |
  f?1 r |
  f c' |
  bes2 a1 g2~ |
  g fis g2. f4 |
  es d c bes8[ a] g4 a bes2 | \abr
  r2 d f1 |
  es2 d2. c4 a2 |
  bes g g'2. g4 |
  g\breve \bar "||" \abr
  
  r2 a g bes~ |
  bes4 a g2 f4. f8 d2 |
  f g a1 |
  R\breve*2 | \abr
  r1 r2 d,2~ |
  d e f2. es4 |
  d d2 bes4 c1 |
  r2 bes a4. a8 bes2 |
  f'1 f | \abr
  R\breve |
  bes,2. c8[ d] es4 f g a |
  bes2 f2. g8[ a] bes2 |
  a2. g4 f2 bes, | \abr
  bes1 bes'2. a4 |
  g2 f es d |
  d1 r2 bes'2~ |
  bes a bes g | \abr
  
  f2. f4 g1 |
  c, bes |
  R\breve |
  r1 r2 f'2~ |
  f e f c | \abr
  es2. es4 d1 |
  r2 bes'1 a2 |
  bes g bes2. bes4 |
  f2 f1 e2 | \abr
  f2 d f2. es4 |
  d2 es d1 |
  d r |
  r2 g1 fis2 |
  g d bes'2. a4 | \abr
  g1 g~ |
  g2 es c g'~ |
  g4 a bes2 g1 |
  g\breve\fermata \bar "|."
  
}


sextus = \relative c'' {
  \global
  g1 es |
  d g2 bes~ |
  bes4 a g f g1 |
  f2 d es d~ |
  d4 c8[ bes] c2 d1 | \abr
  R\breve*2 |
  f1 d |
  c2 g' bes f |
  f1 r2 f | \abr
  g a bes bes |
  a1 d, |
  R\breve*2 |
  r1 r2 g | \abr
  g g bes bes a g g1 |
  r2 c, d2. es4 |
  f g a f g1 |
  R\breve \abr
  
  r2 d1 es2 |
  d bes r g'~ |
  g bes g f~ |
  f4 g a2 r1 |
  f2 c'1 a2 | \abr
  g2. g4 c,1 |
  r2 g' c1 |
  bes2 a2. g4 bes2~ |
  bes4 a g2. f8[ es] d4 c |
  bes1 r | \abr
  c2 f d g~ |
  g f4 as g2 f4. es8 |
  d4 es f2. es4 g2~ |
  g4 a bes2 g f | \abr
  r1 r2 d |
  g2. a4 bes g bes2~ |
  bes a4 g f bes, d2~ |
  d4 es f d es2 c | \abr
  
  g'1 f |
  r2 d g2. a4 |
  bes g bes1 a4 g |
  a bes2 a4 bes1~ | \abr
  bes r |
  R\breve*2 |
  r2 g1 c2~ |
  c bes a2. g8[ a] | \abr
  bes1 a2 g~ |
  g fis g d |
  es d2. c8[ d] es4 f |
  g1 r | \abr
  g2 bes1 a2 |
  g g1 fis2 |
  g2. f4 d2 es |
  d\breve \bar "||" \abr
  
  R\breve*2 |
  r1 r2 d2 |
  g bes2. a4 g2 |
  f4. f8 d2 es f | \abr
  g1 r2 f |
  g bes2. bes4 a2 |
  g4. g8 f2. es8[ d] es4 c |
  d1 r2 f~ |
  f4 es c2 d1 | \abr
  bes2. c8[ d] es4 f g a |
  bes2 f g es |
  d d bes1 |
  c2 f2. es4 f g8[ a] | \abr
  bes2. a4 g2 f |
  es c bes2. c4 |
  d es f2 g1 |
  r bes | \abr
  
  a bes2 g |
  a2. a4 g2 bes~ |
  bes4 es, f as g2. f8[ es] |
  d4 c d e f1 |
  r r2 c'~ | \abr
  c g bes f |
  g2. g4 c,2 f |
  g1 g2 f~ |
  f c d bes4 c | \abr
  d4 es f2. g4 a2 |
  g1 g |
  r2 d1 bes2 |
  c g d'2. c4 |
  bes1 r2 g'~ | \abr
  g d es c |
  g'2. f4 es2 d |
  c bes c1 |
  d\breve\fermata \bar "|."
}


tenor = \relative c' {
  \global
  R\breve |
  g1 g~ |
  g g |
  bes g |
  g f | \abr
  bes c |
  d d |
  c bes |
  c d |
  c d | \abr
  es d |
  d bes |
  c d |
  d c |
  c bes | \abr
  c bes |
  c\breve |
  a1 bes |
  a g |
  a a | \abr
  
  g g |
  bes c |
  d\breve |
  c1 d |
  c c | \abr
  c c |
  bes c |
  d bes |
  g bes |
  g g | \abr
  f g |
  bes c |
  bes bes |
  g bes | \abr
  c d~ |
  d d |
  c d |
  bes c | \abr
  
  bes a |
  bes c |
  bes c |
  c bes | \abr
  bes c |
  d d |
  d d |
  c c |
  a c | \abr
  bes c |
  d bes |
  a g |
  g bes | \abr
  g f |
  g a |
  g\breve~ |
  g \bar "||" \abr
  
  f1 g |
  bes bes |
  bes a |
  g bes |
  bes a | \abr
  g f |
  bes c |
  bes a |
  bes c |
  c bes | \abr
  d c |
  d c |
  bes d |
  c d ~ |\abr
  d bes |
  c g |
  bes g |
  f g | \abr
  
  a g |
  f g |
  bes c |
  bes a |
  bes c | \abr
  c bes |
  bes c |
  bes bes |
  a g | \abr
  f f |
  g bes |
  a bes |
  g a |
  g g~ | \abr
  g\breve~ |
  g~ |
  g~ |
  g\fermata \bar "|."
}

contratenor = \relative c' {
  \global
  R\breve*3 |
  r1 g1 |
  es d | \abr
  g2 bes1 a4 g |
  bes2 a g2. g4 |
  a2 f f'1 |
  R\breve |
  r1 f | \abr
  c bes2 g |
  d' a4 d2 c4 bes a |
   g2 c2. b8[ a] b4 c |
   d c2 b4 c1 |
   r2 g g g | \abr
   es' es d1 |
   c g2 c |
   c f2. es4 d2~ |
   d a r g |
   c2. bes4 a2 d | \abr
   
   d1 r2 g,~ |
   g4 d g2 es c |
   g' g bes2. bes4 |
   f2 c' f1~ |
   f2 c e f~ | \abr
   f4 es c d es f g2~ |
   g4 f d e f1 |
   R\breve |
   r2 d1 bes2~ |
   bes4 c d2 es c | \abr
   c1 r |
   R\breve |
   r1 r2 g |
   bes2. c4 d g, bes2~ | \abr
   bes a bes2. a4 |
   g2 d r1 |
   r f2 bes~ |
   bes4 c d g, g'2 f4 es | \abr

   d4. c8 bes4 a d1 |
   R\breve r2 g,2 a4 g a bes |
   c1 r2 f,~ | \abr
   f bes1 a2 |
   g1 fis2 fis |
   g2. g4 d2 d |
   e c c1 |
   c'2 f1 es2 | \abr
   d1 c2 g4 a |
   bes c d2. c4 bes a8[ bes] |
   c2 a r g~ |
   g es'1 d2 | \abr
   c bes r a |
   c bes a d, |
   g bes1 g2 |
   g\breve \bar "||" \abr
   
   R\breve*2 |
   d'1 e2 f~ |
   f4 es d2 d4. d8 g,2 |
   bes f r1 | \abr
   r2 g a bes~ |
   bes4 a g2 f2. f4 |
   bes1 r2 c |
   d f2. es4 d2 |
   c f, f1 | \abr
   R\breve*3 |
   f2. g8[ a] bes4 c d es | \abr
   f2 bes, d1 |
   g,2 r r1 |
   r2 d'1 g,2 |
   a4 bes c2 bes1 | \abr
   
   r2 f'1 e2 |
   f c es?2. f4 |
   g2 f es2. d8[ c] |
   d2 bes c1 |
   r2 g a2. a4 | \abr
   g1 r |
   R\breve |
   es2. f4 g a bes2 |
   R\breve | \abr
   r2 bes1 a2 |
   bes es, g2. g4 |
   d1 d' |
   g r2 d~ |
   d bes d c | \abr
   bes2. a4 g2 es' |
   d c r d |
   g2. f4 es1 |
   d\breve\fermata \bar "|."
}

bassus = \relative c {
  \global
  R\breve*5 \abr
  es1 c |
  bes2 d g bes |
  f1 r |
  r bes |
  f d2 bes | \abr
  es c g'1 |
  d2 d g2. f4 |
  es d c2 g'1~ |
  g r2 c, |
  c c es2. d4 | \abr
  c1 g |
  r2 c c c |
  f2. es4 d2 bes4 c |
  d es f2 c es |
  c c d1 | \abr
  
  g,2. a4 b2 c |
  g1 r |
  r2 g'1 bes2 |
  a f r d |
  f2. e4 c2 f | \abr
  c1 r2 c |
  g'1 f2. es4 |
  d c d2 g1 |
  r r2 bes, |
  es bes c2. c4 | \abr
  f1 r |
  r2 d es2. f4 |
  g2 d es1~ |
  es2 bes2. c4 d2 | \abr
  c1 g2 g' |
  bes2. a4 g2 d |
  es f bes,1 |
  r2 bes es f | \abr
  
  g1 d |
  g2. f4 es d c2 |
  g'1 f2. es4 |
  c2 f bes,1~ | \abr
  bes r |
  r d |
  bes'1. a2 |
  g1 e2 e |
  f d c1 | \abr
  r c |
  g'2 d g1 |
  c,2 d es2. d4 |
  c bes c2 bes bes | \abr
  c g d'4. es8 f4 d |
  es f g2 d2. d4 |
  g,2. a4 bes2 c |
  g\breve \bar "||" \abr
  
  r2 d' es g~ |
  g4 f es2 d bes |
  bes1 r2 d |
  es g2. f4 es2 |
  d2. bes4 c2 d | \abr
  es1 d |
  g r2 f |
  bes,4. bes8 d2 c1 |
  bes f'~ |
  f bes, | \abr
  R\breve*4 \abr
  r1 bes2. c8[ d] |
  es2 f g4 a bes2 |
  bes, bes'2. a4 bes2 |
  c f, bes bes, | \abr
  
  d1 r |
  r r2 es~ |
  es d es c |
  g'2. g4 f2 a |
  g1 f4 f2 es4 | \abr
  c4. d8 es4. f8 g4. a8 bes2 |
  g1 f |
  r bes,2. c4 |
  d es f2 bes1 | \abr
  bes,2. c4 d1 |
  r r2 g~ |
  g fis g d |
  es2. es4 d1 |
  r2 g1 c,2 | \abr
  es bes c2. c4 |
  g2 c1 b2 |
  c g c1 |
  g\breve\fermata \bar "|."
}

superiusl = \lyricmode {
  De -- scen -- dit de cœ -- _ list, de cœ -- lis,
  mis -- sus ab ar -- ce Pa -- tris, Pa -- _ _ _ _ _ tris,
  mis -- sus ab ar -- ce Pa -- _ tris, ab ar -- ce Pa -- _
  tris; in -- tro -- i -- vit,
  in -- tro -- i -- vit per au -- rem vir -- gi -- _ _ nis, per au -- rem vir -- gi --
  nis in re -- gi -- o -- nem no -- _ stram, in re -- gi -- o -- nem
  no -- stram, __ in re -- gi -- o -- nem no -- 
  _ _ _ _ stram, in re -- gi -- o -- nem no -- _ stram __
  in --
  du -- cus sto -- la, in -- du -- tus
  sto -- _ la pur -- pu -- re -- _ _ _ a.
  Et ex -- i -- vit per au -- re -- am por -- tam, et ex -- i -- vit per
  au -- re -- am por -- _ tam, et ex -- i -- vit per au -- re -- am por -- _ tam,
  lux __ _ _ _ _ _ _ et de -- _
  _ _ _ _ _ _ cus, lux __ _ _ _ _ _ _ et de --
  cus u -- ni -- ver -- sæ fa -- bri -- cæ mun -- _ _ _ 
  di, u -- ni -- ver -- sæ fa -- bri -- cæ mun -- _ di, __
  u -- ni -- ver -- sæ fa -- bri -- cæ, u -- ni -- ver -- sæ fa -- bri -- cæ mun --
  _ _ _ di, fa -- bri -- cæ mun -- _ _ _ _ di.
}

mediusl = \lyricmode {
  De -- scen -- dit de cœ -- _ _ _ _ _ _ 
  _ _ _ lis, de cœ -- lis, de -- scen -- dit de cœ -- _ _
  _ _ _ _ lis, mis -- sus ab ar -- ce Pa -- _ tris, mis --
  us ab ar -- ce Pa -- _ _ _ _ _ _ tris, mis -- sus ab ar -- ce Pa -- _ _ _ 
  tris; in -- tro -- i -- vit per au -- rem vir -- gi -- nis,
  in -- tro -- i -- vit per au -- rem vir -- _ _ gi --
  nis in
  re -- gi -- o -- nem no -- stram, no -- _ _ _ _ stram,
  in re -- gi -- o -- nem no -- _ _ _ _ stram, no -- _ _ _ _ _ stram
  in -- du -- tus sto -- la pur -- pu -- re -- a,
  in -- du -- tus sto -- la __ pur -- pu -- re -- _ _ _ _ _ _ a,
  in -- du -- tus sto -- _ _ la pur -- pu -- re -- a.
  Et ex -- i -- vit per au -- re -- am por -- _ tam.
  et __ ex -- i -- vit per au -- re -- am, per au -- re -- am por -- tam,
  lux __ _ _ _ _ _ _ et de -- _ cus, et de -- _
  cus, lux et de -- _ _ _ cus u -- ni -- ver -- sæ
  fa -- bri -- cæ mun -- di, u -- ni -- ver -- sæ
  fa -- bri -- cæ, u -- ni -- ver -- sæ fa -- bri -- cæ, u -- ni --
  ver -- sæ fa -- bri -- cæ mun -- _ di, u -- ni -- ver -- sæ fa -- bri --
  cæ mun -- _ di, fa -- bri -- cæ mun -- di.
}
sextusl = \lyricmode {
  De -- scen -- dit de cœ -- _ _ _ _ list, de cœ -- _ _ _ lis,
  de -- scen -- dit de cœ -- _ lis, mis --
  sus ab ar -- ce Pa -- tris, mis -- 
  sus ab ar -- ce Pa -- _ tris, ab ar -- ce Pa -- _ _ _ tris;
  in -- tro -- i -- vit, in -- tro -- i -- vit __ _ _ per au -- rem
  vir -- gi -- nis, per au -- rem vir -- gi -- _ _ _ _ _ _ nis
  in re -- gi -- o -- _ _ _ _ _ _ _ _ nem no -- _ _ _ stram,
  in re -- gi -- o -- nem no -- _ _ stram, in re -- gi -- o -- nem no -- _
  _ stram, in re -- gi -- o -- nem no -- _ _ _ _ _ stram __ 
  in du -- tus sto -- _ 
  la pur -- pu -- re -- a, pur -- pu -- re -- _ _ _ a,
  in -- du -- tus sto -- la pur -- pu -- _ _ re -- a.
  Et ex -- i -- vit per au -- re -- am por -- _
  tam, et ex -- i -- vit per au -- re -- am por -- _ _ tam, por -- _ _ tam,
  lux __ _ _ _ _ _ _ et de -- _ cus, et de -- cus, lux __ _ _ _ 
  _ et de -- _ _ _ cus, et de -- _ _ cus u --
  ni -- ver -- sæ fa -- bri -- cæ mun -- _ _ _ _ _ _ _ _ _ di, u -- 
  ni -- ver -- sæ fa -- bri -- cæ mun -- _ di, u -- ni -- ver -- sæ fa --
  _ _ _ bri -- cæ mun -- di, u -- ni -- ver -- sæ fa -- bri -- cæ, u --
  ni -- ver -- sæ fa -- bri -- cæ mun -- di, mun -- _ di.
}
tenorl = \lyricmode {
  De -- scen -- dit __ _ _ _ _ 
  de -- _ _ cœ -- _ _ _ _ _ _ 
  lis, __ _ mis -- sus ab __ _ ar -- _ ce __ _
  pa -- _ _ _ _ _ _ _ tris; __
  _ in -- tro -- _ _ i -- _ vit per
  au -- rem __ _ vir -- _ gi -- _ _ nis in
  re -- _ _ _ _ gi -- _ o --
  _ _ nem __ _ no -- _ _
  _ _ _ _ _ _ stram __ _
  in -- du -- _ tus sto -- la __ _ pur -- _ _
  _ _ _ pu -- re -- _ a. __ _
  _ _ _ _ _
  Et ex -- _ i -- vit __ _ per au -- re -- _
  am __ _ por -- _ _ _ _ _ tam, __ _
  lux __ _ _ _ _ et de -- _
  _ _ cus __ _ _ _ _
  _ _ u -- ni -- ver -- _ sæ __ _ _ _
  _ _ fa -- _ _ _ _ bri --
  _ cæ __ _ mun -- _ _ _ _ _ di. __
}
contratenorl = \lyricmode {
  De -- scen -- dit
  de cœ -- _ _ _ _ lis, de cœ -- _ lis, de --
  scen -- dit de cœ -- _ _ _ _ _ _ _ _ _ _ _ _ _ lis, mis -- sus ab
  ar -- ce Pa -- tris, mis -- sus ab ar -- ce Pa -- tris, ab ar -- ce Pa -- _
  tris; in -- tro -- i -- vit per au -- rem vir -- gi -- nis, per au -- rem vir -- _
  _ _ _ _ _ _ gi -- _ _ nis, per au -- rem __ _ vir -- gi --
  nis in re -- gi -- o -- nem no --
  _ _ _ _ stram, in re -- gi -- o -- nem no -- _ _
  _ _ _ _ stram, no -- _ _ _ _ stram in --
  du -- tus sto -- la pur -- pu -- re -- a, pur -- pu -- re -- a, in -- du -- tus
  sto -- la pur -- _ pu -- _ _ _ _ _ re -- a, in -- du -- tus
  sto -- la, in -- du -- tus sto -- la pur -- pu -- re -- a.
  Et ex -- i -- vit per au -- re -- am por -- tam,
  et ex -- i -- vit per au -- re -- am, et per au -- re -- am por -- _ tam,
  lux __ _ _ _ _ _ 
  _ et de -- cus, lux et de -- _ _ cus
  u -- ni -- ver -- sæ fa -- bri -- cæ mun -- _ _ _ _ di, fa -- _ bri --
  cæ mun -- _ _ _ di,
  u -- ni -- ver -- sæ fa -- bri -- cæ mun -- di, u -- ni -- ver -- sæ
  fa -- bri -- cæ, fa -- bri -- cæ mun -- _ _ _ di.
}
bassusl = \lyricmode {
  De -- scen -- dit de cœ -- _ lis, de -- scen -- dit de
  cœ -- _ _ lis, de cœ -- _ _ _ _ lis,__ mis -- sus ab ar -- ce
  Pa -- tris, mis -- sus ab ar -- ce Pa -- _ _ _ _ _ tris, ab ar -- ce Pa --
  tris, Pa -- _ _ tris; in -- tro -- i -- vit per au -- rem vir -- gi --
  nis, per au -- rem vir -- _ _ gi -- nis, per au -- rem vir -- gi --
  nis in re -- gi -- o -- nem no -- _ _ _
  _ stram, in re -- gi -- o -- nem no -- _ stram, in re -- gi --
  o -- nem no -- _ _ _ _ stram, no -- _ _ _ stram __
  in -- du -- tus sto -- la pur -- pu -- re -- a,
  in -- du -- tus sto -- la pur -- pu -- re -- _ _ _ a, in --
  du -- tus sto -- _ _ _ _ _ _ la pur -- pu -- _ _ re -- a.
  Et ex -- i -- vit per au -- re -- am, et ex -- i -- vit per au -- re -- am por --
  _ _ tam, per au -- re -- am por -- tam, por -- tam,
  lux __ _ _ _ _ _ _ et de -- _ _ _ _ _ _
  cus u -- ni -- ver -- sæ fa -- bri -- cæ mun -- _ di, fa -- bri --
  cæ mun -- _ _ _ _ _ _ di, fa -- bri -- _ _ _ cæ
  mun -- _ di, u -- ni -- ver -- sæ fa -- bri -- cæ, u -- ni --
  ver -- sæ fa -- bri -- cæ mun -- _ _ _ _ di.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for superius
      \new Staff = "superius" \with {
        instrumentName = \markup { \center-column { "Superius" \bold"S"  } }
        shortInstrumentName = "S"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "superius" { \superius } }   
      \new Lyrics = "superius"
      
      %staff for medius
      \new Staff = "meduis" \with {
        instrumentName = \markup { \center-column { "Medius" \bold"A1"  } }
        shortInstrumentName = "A1"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "medius" { \medius } }   
      \new Lyrics = "medius"
      
      %staff for sextus
      \new Staff = "sextus" \with {
        instrumentName = \markup { \center-column { "Sextus" \bold"A2"  } }
        shortInstrumentName = "A2"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "sextus" { \sextus } }  
      \new Lyrics = "sextus"
      
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = \markup { \center-column { "Tenor" \bold"T1"  } }
        shortInstrumentName = "T1"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
      
      %staff for contratenor
      \new Staff = "contratenor" \with {
        instrumentName = \markup { \center-column { "Contratenor" \bold"T2"  } }
        shortInstrumentName = "T2"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "contratenor" { \clef "G_8" \contratenor } }
      \new Lyrics = "contratenor"
      
      %staff for bassus
      \new Staff = "bassus" \with {
        instrumentName = \markup { \center-column { "Bassus" \bold"B"  } }
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \override Staff.NoteHead.style = #'baroque \new Voice = "bassus" { \clef "bass" \bassus } }
      \new Lyrics = "bassus"
      
      %lyrics
      \context Lyrics = "superius" { \lyricsto "superius" { \superiusl }}
      \context Lyrics = "medius" { \lyricsto "medius" { \mediusl }}
      \context Lyrics = "sextus" { \lyricsto "sextus" { \sextusl }}
      \context Lyrics = "tenor" { \lyricsto "tenor" { \tenorl }}
      \context Lyrics = "contratenor" { \lyricsto "contratenor" { \contratenorl }}
      \context Lyrics = "bassus" { \lyricsto "bassus" { \bassusl }}
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 2=90
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "superius" \new Voice = "superius" { \superius }
     \new Staff = "medius" \new Voice = "medius" { \medius }
     \new Staff = "contratenor" \new Voice = "contratenor" { \contratenor }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "sextus" \new Voice = "sextus" { \sextus }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

% MIDI для репетиции:
\book {
  \bookOutputSuffix "superius"
  \score {
    \rehearsalMidi "superius" "soprano sax" \superiusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "medius"
  \score {
    \rehearsalMidi "medius" "soprano sax" \mediusl
    \midi { }
  }
}


\book {
  \bookOutputSuffix "sextus"
  \score {
    \rehearsalMidi "sextus" "tenor sax" \sextusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "contratenor"
  \score {
    \rehearsalMidi "contratenor" "soprano sax" \contratenorl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \bassusl
    \midi { }
  }
}
