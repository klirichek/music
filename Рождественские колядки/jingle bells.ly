\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {           
  title = "Jingle bells"
  composer = "муз. James Pierpont"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 18
  right-margin = 15
  bottom-margin = 10
  indent = 0
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
%  system-separator-markup = \slashSeparator
  ragged-last = ##t
}

secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
}

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \secondbar
}

globalv = {
  \global
  \autoBeamOff
  \dynamicUp
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

vbreathe = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

soprano = \relative c' {
  \globalv
  R1*2 |
  d8^\markup\italic"I куплет" b' a g d4 r8 d16 d |
  d8 b' a g e4 r8 e |
  e c' b a fis4 r |
  d'8 d c a b4 r8 \breathe d, |
  d b' a g d4 r8 d16 d | \abr
  d8 b' a g e4 r8 e |
  e c' b a d d d8. d16 |
  e8 d c a g4 r | \bar "||"
  
  b8^\markup\italic"Припев" b b4 b8 b b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b4
  b8 a a b a4 \vbreathe d \breathe |
  
  b8 b b4 b8 b8 b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b b |
  d d c a g4 r \bar "||" |
  
  d8^\markup\italic"II куплет" b' a g d4 r |
  d8 b' a g e4 r |
  e8 c' b a fis4 r |
  d'8 d c a b4 r |
  d,8 b' a g d4 r |
  d8 b' a g e4 r8 e |
  e c' b a d4 d |
  e8 d c a g4. r8 |
  
  \repeat volta 2 {
  b8^\markup\italic"Припев tutti" b b4 b8 b b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b4
  b8 a a b a4 \vbreathe d \breathe |
  
  b8 b b4 b8 b8 b4 |
  b8 d g,8. a16 b4 r |
  }
  \alternative {
    { c8 c c8. c16 c8 b b b | d8 d c a g4. r8 | }
    { c8 c c8. c16 c8 b b4 | d4 d c a \noBreak | g2. r4 \bar "|." | }
  }
}

childalto = \relative c' {
    \globalv
  R1*2 |
   d8 b' a g d4 r8 d16 d |
  d8 b' a g e4 r8 e |
  e c' b a fis4 r |
  d'8 d c a b4 r8  d, |
  d b' a g d4 r8 d16 d | \abr
  d8 b' a g e4 r8 e |
  e c' b a d d d8. d16 |
  e8 d c a g4 r | 
  
  g8 g g4 g8 g g4 |
  g8 g d8. d16 g4 r |
  e8 e e8. e16 e8 d d4
  d8 d d d d4  fis  |
  
  g8 g g4 g8 g8 g4 |
  g8 g d8. d16 g4 r |
  e8 e e8. e16 e8 d d d |
  fis fis fis fis g4 r  |
  
  d8 d d d d4 r |
  d8 d d d e4 r |
  e8 e e e fis4 r |
  fis8 fis fis fis g4 r |
  d8 d d d d4 r |
  d8 d d d e4 r8 e |
  e e e e fis4 fis |
  fis8 fis fis fis g4. r8 |
  
  \repeat volta 2 {
  g8 g g4 g8 g g4 |
  g8 g d8. d16 g4 r |
  e8 e e8. e16 e8 d d4
  d8 d d d fis4 fis  |
  
  g8 b b4 b8 b8 b4 |
  b8 d g,8. a16 b4 r |
  }
  \alternative {
    { e,8 e e8. e16 e8 d d d | fis8 fis fis fis g4. r8 | }
    { e8 e e8. e16 e8 d d4 | d4 d e fis \noBreak | g2. r4  | }
  }
}

alto = \relative c'' {
  \globalv
  R1*10
  g8 g g4 g8 g g4 |
  g8 g d8. d16 g4 r |
  e8 e e8. e16 e8 d8 d4 |
  g8 g g g fis4 fis |
  g8 g g4 g8 g g4 |
  g8 g d8. d16 g4 r |
  e8 e e8. e16 e8 d d d |
  fis fis fis fis g4 r |
  
  d8 d d d d4 r |
  d8 d d d c4 r |
  c8 e e e d4 r |
  fis8 fis fis fis d4 r |
  d8 d d d d4 r |
  d8 d d d c4 r8 c |
  c e e e fis4 fis |
  fis8 fis fis fis g4. r8 |
  
  \repeat volta 2 {
    g8 g g4 g8 g g4 |
    g8 g d8. d16 g4 r |
    e8 e e8. e16 e8 d8 d4 |
    g8 g g g fis4 fis |
    g8 g g4 g8 g g4 |
    g8 g d8. d16 g4 r |
    
  }
  \alternative {
    { e8 e e8. e16 e8 d d d | fis8 fis fis fis g4. r8 | }
    { e8 e e8. e16 e8 d d4 | fis4 fis fis fis | g2. r4 | }
  }
}

tenor = \relative c' {
  \globalv
  R1*18
  \break
  b8 b b b b4 r |
  b8 b b b g4 r |
  g8 g g c c4 r |
  c8 c a c b4 r |
  b8 b b b b4 r |
  b8 b b b g4 r8 g |
  a8 a c c c4 c |
  a8 a a c b4. r8 |

  \repeat volta 2 {
    d8 d d4 d8 d d4 |
    d8 b b8. c16 d4 r |
    g,8 g g8. g16 g8 g d'4 |
    cis8 cis cis cis d4 c |
    d8 d d4 d8 d d4 |
    d8 b b8. c16 d4 r |
    
  }
  \alternative {
    { g,8 g g8. g16 g8 g g g | d'8 d a c b4. r8 | }
    { g8 g g8. g16 g8 g g4 | d'4 d a c | b2. r4 }
  }
}

bass = \relative c' {
  \globalv
  R1*18
  g8 g g g g4 r |
  g8 g g g c,4 r |
  c8 c c c d4 r |
  d8 d d d g4 r |
  g8 g g g g4 r |
  g8 g g g c,4 r8 c |
  a8 a a a d4 d |
  d8 d d d g4. r8 |

  \repeat volta 2 {
    g8 g g4 g8 g g4 |
    g8 g d8. d16 g4 r |
    c,8 c c8. c16 g8 g g'4 |
    e8 e a, a d4 \vbreathe d \breathe |
    g8 g g4 g8 g g4 |
    g8 g d8. d16 g4 r |
    
  }
  \alternative {
    { c,8 c c8. c16 g8 g g g | d'8 d d d g4. r8 | }
    { c,8 c c8. c16 g8 g g4 | d'4 d d d | g2. r4 }
  }
}

sopranol = \lyricmode {
  \set stanza = "1." Бле -- щет яр -- кий снег слов -- но ве -- тер са -- ни мчат
  зве -- нит ве -- сё -- лый смех
  с_бу -- бе -- нца -- ми в_лад.
  На сан -- ках рас -- пис -- ных про -- ка -- тить -- ся каж -- дый рад
  И льёт -- ся на -- ша пе -- сен -- ка с_бу -- бе -- нчи -- ка -- ми в_лад.
  
  Динь -- динь  -- дон, динь -- динь -- дон, бу -- бен -- цы зве -- нят,
  слы -- шен смех со всех сто -- рон с_бу -- бен -- ца -- ми в_лад, хэй!
  Динь -- динь дон, динь -- динь дон, бу -- бен -- цы зве -- нят,
  слы -- шен смех со всех сто -- рон с_бу -- бен -- чи -- ка -- ми в_лад.
  
  \set stanza = "2." К_нам при -- шла зи -- ма
  пусть ме -- тель ме -- тёт,
  здрав -- ствуй, Ро -- жде -- ство, 
  здрав -- ствуй, Но -- вый год.
  Пусть гро -- зит мо -- роз, важ -- но хму -- ря бровь,
  мы пе -- сен -- ку спо -- ём с_бу -- бен -- чи -- ка -- ми вновь.
  
  \repeat volta 2 {
    Динь -- динь -- дон, динь -- динь -- дон, бу -- бен -- цы зве -- нят,
    слы -- шен смех со всех сто -- рон с_бу -- бен -- ца -- ми в_лад, хэй!
    Динь -- динь -- дон, динь -- динь -- дон, бу -- бен -- цы зве -- нят,
    
  } 
  \alternative {
    { слы -- шен смех со всех сто -- рон с_бу -- бе -- нчи -- ка -- ми в_лад. }
    { слы -- шен смех со всех сто -- рон с_бу -- бе -- нца -- ми в_лад. }
  }
}

violinone = \relative c'' {
  \global
  e8^\markup\italic"Вступление" e4 e8 e d4 d8 |
  <d c> q <e c> <fis c> <g b,> r <d a>4 |
  d,8^\markup\italic"I куплет" b' a g d4. d8 |
  d b' a g e4. e8 | \abr
  e c' b a d4. d8 |
  e d c a b4. d,8 |
  d b' a g d4. d8 |
  d b' a g e4. e8 |
  e c' b a d d d d | \abr
  e d c a g8 r d'4 |
  b8^\markup\italic"Припев" b b4 b8 b b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b b16 b | \abr
  b8 a a b a r d4 |
  b8 b b4 b8 b b4 |
  b8 d g,8. a16 b2 |
  c8 c c8. c16 c8 b b b |
  d d e fis g4 r | \abr
  <b, g>4.^\markup\italic"II куплет" q8 q2 |
  q4. q8 <c g>2 |
  q4. q8 <d a>2 |
  d4 c8 a b2 | \abr
  <b g>4. q8 q2 |
  q4. q8 <c g>4 <e c> |
  <e c>4. q8 <fis d>2 |
  d4 e8[ fis] <g d>4 r \abr
  \break
  \repeat volta 2 {
  <b, g>8^\markup\italic"Припев tutti" q q4 q8 q q4 |
  q8 <d a> <g, d>8. <a fis>16 <b g>2 |
  <c g>8 q q8. q16 q8 <b g> q q | \abr
  b8 a a b <a fis>4 <d fis,> |
  <b g>8 q q4 q8 q q4 |
  q8 <d a> <g, d>8. <a fis>16 <b g>4 <b d> | \abr
  
  }
  \alternative {
    { <e c>8 q q8. q16 q8 <d b> q8 q | d8 d <e c> fis <g d>2}
    { <e c>8 q q8. q16 q8 <d b> q8 q | d4 d e <fis c> | g2. r4}  
  }
  \bar "|."
}

violinfirst = \relative c'' {
  \global
  e8^\markup\italic"Вступление" e4 e8 e d4 d8 |
  d d e fis g r d4 |
  d,8^\markup\italic"I куплет" b' a g d4. d8 |
  d b' a g e4. e8 | \abr
  e c' b a d4. d8 |
  e d c a b4. d,8 |
  d b' a g d4. d8 |
  d b' a g e4. e8 |
  e c' b a d d d d | \abr
  e d c a g8 r d'4 |
  b8^\markup\italic"Припев" b b4 b8 b b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b b16 b | \abr
  b8 a a b a r d4 |
  b8 b b4 b8 b b4 |
  b8 d g,8. a16 b2 |
  c8 c c8. c16 c8 b b b |
  d d e fis g4 r | \abr
  b,4.^\markup\italic"II куплет" b8 b2 |
  b4. b8 c2 |
  c4. c8 d2 |
  d4 c8 a b2 | \abr
  b4. b8 b2 |
  b4. b8 c4 e |
  e4. e8 fis2 |
  d4 e8[ fis] g4 r \abr
  \break
  \repeat volta 2 {
  b,8^\markup\italic"Припев tutti" b b4 b8 b b4 |
  b8 d g,8. a16 b2 |
  c8 c c8. c16 c8 b b b | \abr
  b8 a a b a4 d |
  b8 b b4 b8 b b4 |
  b8 d g,8. a16 b4 d | \abr
  
  }
  \alternative {
    { e8 e e8. e16 e8 d d8 d | d8 d e fis g2}
    { e8 e e8. e16 e8 d d8 d | d4 d e fis | g2. r4}  
  }
  \bar "|."
}

violinsecond = \relative c'' {
  \global
  c8^\markup\italic"Вступление" c4 c8 c b4 b8 |
  c c c c b r a4 |
  d,8^\markup\italic"I куплет" b' a g d4. d8 |
  d b' a g e4. e8 | \abr
  e c' b a d4. d8 |
  e d c a b4. d,8 |
  d b' a g d4. d8 |
  d b' a g e4. e8 |
  e c' b a d d d d | \abr
  e d c a g8 r d'4 |
  b8^\markup\italic"Припев" b b4 b8 b b4 |
  b8 d g,8. a16 b4 r |
  c8 c c8. c16 c8 b b b16 b | \abr
  b8 a a b a r d4 |
  b8 b b4 b8 b b4 |
  b8 d g,8. a16 b2 |
  c8 c c8. c16 c8 b b b |
  d d e fis g4 r | \abr
  g,4.^\markup\italic"II куплет" g8 g2 |
  g4. g8 g2 |
  g4. g8 a2 |
  d4 c8 a b2 | \abr
  g4. g8 g2 |
  g4. g8 g4 c |
  c4. c8 d2 |
  d4 e8[ fis] d4 r \abr
  \break
  \repeat volta 2 {
  g,8^\markup\italic"Припев tutti" g g4 g8 g g4 |
  g8 a d,8. fis16 g2 |
  g8 g g8. g16 g8 g g g | \abr
  g4 g fis4 fis |
  g8 g g4 g8 g g4 |
  g8 a d,8. fis16 g4 b | \abr
  
  }
  \alternative {
    { c8 c c8. c16 c8 b b8 b | d8 d c fis d2}
    { c8 c c8. c16 c8 b b8 b | d4 d e c | g2. r4}  
  }
  \bar "|."
}

violintwo = \relative c'' {
  \global
  <g c>8 q4 q8 q8 <g b>4 q8 |
  fis4 d g8 r fis4 |
  d8 d d d d4. d8 |
  d d d d c4. c8 |
  c e e e fis4. fis8 |
  fis fis fis fis g4. d8 |
  d d d d d4. d8 |
  d d d d c4. c8 |
  c e e e fis fis fis fis |
  fis fis fis fis g r a4 |
  g8 g g4 g8 g g4 |
  g8 a d,8. fis16 g4 r |
  e8 e e8. e16 e8 d d g16 g |
  g8 g g g fis r fis4 |
  g8 g g4 g8 g g4 |
  g8 a d,8. fis16 g2 |
  e8 e e8. e16 e8 d d g |
  c c c c b4 r |
  
  d,4. d8 d2 |
  d4. d8 e2 |
  e4. e8 fis2 |
  <fis a> 2 g8 d e fis |
  d4. d8 d2 |
  d4. d8 e4 g |
  a4. a8 a2 |
  d4. a8 b4 r |
  
  \repeat volta 2 {
  d,8 d d4 d8 d d4 |
  d b8. c16 d2 |
  e8 e e8. e16 d8 d d d |
  <e g>4 <cis g'> d8 d e fis |
  d d d4 d8 d d4 |
  d b8. c16 d4 g |
  
  }
  \alternative {
    { g8 g g8. g16 g8 g g g | c8 c d4 b2 }
    { g8 g g8. g16 g8 g g g | c4 c c d | <b d>2. r4 }
  }
  
}

violinthird = \relative c'' {
  \global
  g8^\markup\italic"Вступление" g4 g8 g8 g4 g8 |
  fis4 d g8 r fis4 |
  d8^\markup\italic"I куплет" d d d d4. d8 |
  d d d d c4. c8 |
  c e e e fis4. fis8 |
  fis fis fis fis g4. d8 |
  d d d d d4. d8 |
  d d d d c4. c8 |
  c e e e fis fis fis fis |
  fis fis fis fis g r a4 |
  g8^\markup\italic"Припев" g g4 g8 g g4 |
  g8 a d,8. fis16 g4 r |
  e8 e e8. e16 e8 d d g16 g |
  g8 g g g fis r fis4 |
  g8 g g4 g8 g g4 |
  g8 a d,8. fis16 g2 |
  e8 e e8. e16 e8 d d g |
  c c c c b4 r |
  
  d,4.^\markup\italic"II куплет" d8 d2 |
  d4. d8 e2 |
  e4. e8 fis2 |
  <fis a> 2 g8 d e fis |
  d4. d8 d2 |
  d4. d8 e4 g |
  a4. a8 a2 |
  d4. a8 b4 r |
  
  \repeat volta 2 {
  d,8^\markup\italic"Припев tutti" d d4 d8 d d4 |
  d b8. c16 d2 |
  e8 e e8. e16 d8 d d d |
  e4 cis d8 d e fis |
  d d d4 d8 d d4 |
  d b8. c16 d4 g |
  
  }
  \alternative {
    { g8 g g8. g16 g8 g g g | c8 c d4 b2 }
    { g8 g g8. g16 g8 g g g | c4 c c d | <b d>2. r4 }
  }
  
}

zigzag = { \once \override Glissando.style = #'zigzag }

violinsolo = \relative c'' {
  \global
  R1*26 |
  \repeat volta 2 {
    g8 fis e d g fis e d |
    g fis e d g fis e d |
    c g c e g d g b |
    a e a cis d c b a |
    g fis e d g fis e d |
    g fis e d g fis e d |
    
  }
  \alternative {
    { c g c e g d g b | d d d'4 \zigzag g, \glissando g'8 r }
    { c,,, g c e g d g b \noBreak | d4 d c a \noBreak g2. r4 }
  }
}
toleft = \change Staff="left"
toright = \change Staff="right"

right = \relative c'' {
  \global
  \oneVoice
  \ottava #1
  <g' c e>8^\markup\italic"Вступление" q q8. q16 q8 <g b d> q q16 q |
  <a c b>8 q <a c e> <a c d fis> <g b d g> r \ottava #0 <a,, d>4 |
  r8^\markup\italic"I куплет" <d g b> r <b d g> r <g b d> r q |
  r <d' g b> r <b d g> r <g c e> r q |
  r <c e a> r <a c e> r <a c d> r <c d fis> |
  r <c fis a>4 q8 r <d g b> r q |
  r q r <b d g> r <g b d > r q |
  r <d' g b> r <b d g> r <g c e > r q |
  r <a c e > r <c e a > r <c a d fis > r <c d fis a >
  
  r <a c d fis>4 q8 <b d g>4-. <fis' a d>-- |
  r8^\markup\italic"Припев" <d g b> r q r q r q |
  r <fis b d> r <fis a d> <g b d>4. q8 |
  r <g c e>4 <e g c>8 r <d g b>4 <g b d>8 |
  
  b <e, g a>4 b'8 <fis a>4 <fis a d> |
  r8 <g b d> r q r q r q |
  r <d a' b> <b d g>8. <c d a>16 <d g b>2 |
  <g c e>8 q4 q8 q <g b d>4 q8 |
  <fis a d>4 <a c d fis> <g b d g> <fis' a d> |
  
  d16^\markup\italic"II куплет" b b' b, a' b, g' b, << d4 \\ {d16 b d b} >> d b d b |
  d b b' b, a' b, g' b, << e4 \\ {e16 g, c g } >> c g c g |
  e' c c' c, b' c, a' c, << fis4 \\ {fis16 c d c } >> d c d c |
  d' d, d' d, c' d, a' d, b' g d b g d r8 |
  
  d'16 b b' b, a' b, g' b, << d4 \\ {d16 b d b} >> d b d b |
  d b b' b, a' b, g' b, << e4 \\ {e16 g, c g } >> c g c g |
  e' c c' e, b' e, a e << { d'4 r8 d } \\ {d16 d, fis d a' fis d' fis, } >> |
  e' fis, d' fis, c' fis, a fis g d g' d b g d b |
  
  \repeat volta 2 {
    <d g>^\markup\italic"Припев tutti" b \repeat unfold 9 { <d g> b } <d g> a d <fis a> \repeat unfold 4 { <g b> d }
    \repeat unfold 5 { <g c> e } \repeat unfold 3 { <g b> d }
    <g b> e <g a> e <g a> e <g b> e <d fis a>4 s8 \voiceOne d16 d'
    \oneVoice \repeat unfold 9 { <g, b>16 d }
    <b' d> d, <d g> a c <fis a> \repeat unfold 4 {<g b> d}
    
  }
  \alternative {
    { \repeat unfold 5 {<c' e> g} \repeat unfold 3 {<b d> g} | fis g \ottava #1 a b c d e fis g g, b d g8 \ottava #0 <g,, b d g>}
    {\repeat unfold 5 {<c' e>16 g} \repeat unfold 3 {<b d> g} \noBreak | d,16 e fis g a b c d fis g \ottava #1 a b c d e fis \noBreak <g, b d g>2. \ottava #0 <g, b d g>4}
  }
}

left = \relative c, {
  \global
  \oneVoice
  <c c'>8  <g'' c e>4 <e g c>8 <g,, g'>8 <g'' b d>4 <d g b>8 |
  <d, d'> <d' a' d>4 <d a' c>8 <g,, g'>8 r <d'' fis>4 |
  <g, g'>-. d'-. <g,, g'>-. d'-. |
  <g g'>-. d'-. <c, c'>-. g'-. |
  <a, a'>-. e'-. <d d'>-. a'-. |
  <d, d'> <e e'>8-. <fis fis'>-. <g g'>-. <fis fis'>-. <e e'>-. <d d'>-. |
  <g g'>4 d' <g,, g'> d' |
  <g g'> d' <c, c'> g' |
  <a, a'> e' <d d'> a |
  
  <d d'>8-. q-> <e e'>-. <fis fis'>-. <g g'>4-. <d d'>--
  \repeat unfold 4 { <g g'>8 <fis fis'> <e e'> <d d'> }
  <c c'> g' c e <g, g'> d' g b |
  <a, a'> e' a cis  d <c, c'> <b b'> <a a'> |
  \repeat unfold 4 { <g g'>8 <fis fis'> <e e'> <d d'> }
  <c c'> g' c e <g, g'> d' g b |
  d-. <d,, d'>4-> <d' a' d>8-. <g, d' g>4 -. <d a' d>
  
  g8 <b' d>4 q8 g <b d>4 q8 |
  g, <b' d>4 q8 c, <g' c e>4 q8 |
  c, <e g c>4 q8 d <a' c d>4 q8 |
  d,, <fis' a d>4 q8 g, <d' g b>4 b'16 g |
  g,8 <b' d>4 q8 g <b d>4 q8 |
  g, <b' d>4 q8 c, <g' c e>4 q8 |
  a, <e' a c>4 q8 d8 <fis a d>4 <a d fis>8 |
  d,, <fis' a d>4 <fis a c>8 g, <d' g b>4 q8
  
  \repeat volta 2 {
  g, <d' g b>4 q8 g, <d' g b>4 q8 |
  g, <d' g b> d, <fis' a b> g, <d' g b>4 q8 |
  c <g' c e>4 q8 g, <d' g b>4 q8 |
  <a, a'> <e'' a cis>4 q8 d,16 d' fis a d \toright fis <a c!>8 |
  \toleft g,, <d' g b>4 q8 g, <d' g b>4 q8 |
  g, <d' g b> d, <fis' a d> g, <g' b d>4 <b d g>8 |
  
  }
  \alternative {
    {c, <g' c e>4 q8 g, <g' b d>4 <b d g>8 | <d,, d'>8 <fis' a d>4 <a c d fis>8 g, <g' b d g>4 <g,, g'>8 }
    {c' <g' c e>4 q8 g, <g' b d>4 <b d g>8 | <d,, d'>4 <e' a c> <d, d'> <c' fis a c> | r16 g a b c d e fis g4 <g,, g'>}
  }
  \bar "|."
}


violinsoloPart = \new Staff \with {
  shortInstrumentName = \markup\column {"Vn" "Solo"}
  midiInstrument = "violin"
} { \oneVoice \violinsolo }

violinPart = \new Staff \with {
  instrumentName = \markup\column{"Vn1" "Vn2"}
  shortInstrumentName = "V-ni"
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

violinfirstPart = \new Staff \with {
  instrumentName = "Vn. 1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} { \oneVoice \violinfirst }

violinsecondPart = \new Staff \with {
  instrumentName = "Vn. 2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} { \oneVoice \violinsecond }

violinthirdPart = \new Staff \with {
  instrumentName = "Vn. 3"
  shortInstrumentName = "V3"
  midiInstrument = "violin"
} { \oneVoice \violinthird }


pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>

choirpart = \new ChoirStaff
  <<    
    \new Staff = #"sa" \with {
      instrumentName = \markup { \column { "S" "A"  } }
      shortInstrumentName = \markup { \column { "S" "A"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    
    \new Lyrics = "soprano"
       
    \new Staff \with {
      shortInstrumentName = \markup { \column { "T" "B" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenor }
        \new Voice = "bass" {  \voiceTwo \bass }
    >>
    
     %lyrics
     \context Lyrics = "soprano" { \lyricsto "soprano" { \sopranol }}
  >>
  
childpart = \new ChoirStaff
  <<    
    \new Staff = #"sa" \with {
      instrumentName = \markup { \column { "S" "A"  } }
      shortInstrumentName = \markup { \column { "S" "A"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \childalto }
    >>
    
    \new Lyrics = "soprano"
    
     %lyrics
     \context Lyrics = "soprano" { \lyricsto "soprano" { \sopranol }}
  >>

%midi output
\score {
      \unfoldRepeats
    <<
      \choirpart
      \violinsoloPart
      \violinPart
      \pianoPart
    >>
    \midi {
      \tempo 4=90
    }
  }
 
%book with instruments
\bookpart {
  \header {
    piece = "Хор"
  }
  \score {
    <<
      \choirpart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\bookpart {
  \header {
    piece = "Дети"
    arranger = "перел. С. Дружининой"
  }
  \score {
    <<
      \childpart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
  \header {
    piece = "Violini"
  }
  \score {
    <<
      \violinsoloPart
      \violinPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
  \header {
    piece = "Violini"
  }
  \score {
    <<
      \violinsoloPart
      \violinfirstPart
      \violinsecondPart
      \violinthirdPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
  \header {
    piece = "Piano"
  }
  \score {
      \pianoPart
    \layout { 
    }
  }
}

\bookpart {
  \header {
    piece = "Instruments"
  }
  \score {
    <<
      \violinsoloPart
      \violinPart
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \header {
    piece = "Full"
  }
  \paper {
      system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \violinsoloPart
      \violinPart
      \choirpart
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}