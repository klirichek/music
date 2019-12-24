\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Да воскреснет Бог"
  subtitle = "(концерт №34) "
  composer = "Д. Бортнянский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key f \major
  \time 3/4
  \numericTimeSignature
    \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr = {}

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }

sopvoice = \relative c'' {
  \global
  \oneVoice
  \tempo "Vivace"
  c2\f c4 |
  c2-> c4 |
  c r r |
  R2. | \abr
  
  r4 r8 f8 e d |
  c4-> c8 c bes a |
  g4-> g a | \pbr
  
  bes8.->([ c16] d4 ) c |
  c8[( bes] a4) g |
  f r8 c' a f |
  c'4 r8 c c c | \abr
  
  f4 r8 d b b |
  c4 r8 c c e |
  f4-> f e |
  d d8 d c c | \abr
  
  c4 c8 c b b |
  c4 r r |
  R2. |
  r4 g8. g16 a8 a | \pbr
  
    
  
  bes2-> bes4 |
  a4 r4\fermata e'8. e16 |
  f4.->( e8) d r |
  e8. e16 d4( cis) | \abr
  
  d4 r r |
  R2.*5 |
  r4 d8.^\markup\italic"Все" c?16 bes8 a |
  bes4 g r | \pbr
  
  r c8. bes16 a8 g |
  f4 f8 r f' e |
  d4 d8 r e f | \abr
  g4 bes,8 bes bes bes |
  a8. a16 a4 r |
  g8. g16 f4->( e) |
  f4 r r | \abr
  r bes a |
  g g g |
  f2->( e4) |
  \time 4/4 f2 r4\fermata \tempo Largo f\mp
  \key bes \major | \pbr
  
  bes4 bes8 bes bes4 r |
  r8 f bes bes16 c d4 bes8 r | \abr
  r bes d d16 es f4 d8 r |
  r4 f8 d f16[( es]) es es es8 c | \abr
  es16[( d]) d8 r4 r2 |
  r8 d d c c[( bes]) bes a | \pbr
  
  a16([ g8]) g16 g8 r f[( a]) c f |
  f16[( e f d]) c8 b c4. bes8 | \abr
  a8 f g a c[( bes]) a g |
  f8. e16 e8 f a[( g f]) e | \abr
  f4 r r2 |
  r8 <a c> <a f'> <a e'> <f d'>[( <a f'>]) <g e'> <f d'> | \pbr
  
  <e cis'> <e a> r4 r8 a f' d |
  cis4-> cis8 r d4 d8 r | \abr
  c?4. b8 b16( a8) gis16 gis8 gis |
  a r e'4( d) c | \abr
  b a gis8.-> gis16 gis8 gis |
  a2 r4 r8\fermata a\p | \bar "||" \key f\major
  \tempo "Andante, maestoso" a4 a bes4.-> a8 | \pbr
  
  g8. g16 g4 r g8 g |
  f4 e8 e f4 g |
  a8. a16 a8 a a4 r8 a | \abr
  g4-> g8 g g4 g |
  g4.-> g8 g4 r |
  g2( a) |
  c4( bes2) a4 | \abr
  g2 r\fermata |
  \tempo "Allegro moderato"
  <a c>2.\mf^\markup\italic"Две" <g bes>4 |
  q( <f a>) <e g> <f a> |
  <bes d>2. <a c>4 | \pbr
  
  <a c>2( <g bes>4) r |
  <bes e>2. q4 |
  << \new Voice { \voiceOne f'4.( g16[ f] \oneVoice <e g,>4 <d f,>~ q <c e,>2) } { \voiceTwo a2 s4 s s s2 } >> \oneVoice <b d,>4 | \abr
  <c e,> g( f) g |
  a4. f8 f4 r |
  R1*3 |
  c'2.^\markup\italic"Все" bes?4 |
  a( f) a b |
  c2 g4 a | \pbr
  
  bes?( g bes) c |
  d2. d4 |
  cis2. e4 |
  a,4. a8 a4 r |
  e'2. e4 | \abr
  g( f) e d |
  cis( a) b cis |
  d2. c!4 |
  bes2( b | \pbr
  
  c4 g c) bes? |
  a r f'2~ |
  f e |
  e( d~ | \abr
  d c4.) c8 |
  b2. b4 |
  e,2. e4 |
  e2 r | \abr
  R1*3 |
  c'2. c4 | \pbr
  
  b?( g) a b |
  c4. c8 c4 r |
  cis2.-> cis4 |
  d( e f d | \abr
  e g-> f) e |
  f4 r r2 |
  R1 |
  c2. c4 | \pbr
  
  d4( f) es d |
  c( a) bes c |
  d2. bes4 |
  a( f a b |
  c1~ |
  c~ |
  c~ |
  c~ | \pbr
  
  c~ |
  c2. d4 |
  es1-> |
  d~ | \abr
  d-> |
  c~ |
  c2 bes |
  a g |
  a1~ | \abr
  a |
  g~ |
  g~ |
  g2 f4) e |
  f1\fermata
  
  
}

altvoice = \relative c'' {
  \global
  \oneVoice
  a2\f f4 |
  g2 g4 |
  f4 r8 f e f |
  g4-> g8[( e]) f[( g]) |
  
a8. g16 f8 f f f |
  f4-> f8 f e f |
  d4-> d fis | \abr
  
  g8.->[( a16] bes4) a |
  a8[( g] f4) e |
  f8 c f f a4 |
  r8 g g g g4
  
  r8 f f f f4 |
  r8 e g4 g |
  f-> f g |
  a g8 g g g |
  
  g4 g8 g f f |
  e r c8. c16 d8 d |
  e2 f4 |
  g e8. e16 f8 f |
  
  g2-> f4 |
  e4 r\fermata a8. a16 |
  f4.->( g8) a r |
  g8. g16 f4( e) |
  
  d r r |
  r f\mf^\markup\italic"Одна" e |
  g2-> f4 |
  f e d |
  d2-> d4 |
  
  cis8 r e8.^\markup\italic"Все" cis16 d8 e |
  f4 d r |
  r bes'8. a16 g8 f |
  
  e4 c c |
  c c8 r a' g |
  bes4 bes8 r g a |
  
  bes4 g8 e e e |
  f8.-> f16 f4 r |
  d8. d16 c2-> |
  c8 r f4 f |
   
  f2.~ |
  f4 d d |
  c2.-> |
  \time 4/4 c2 r \fermata
  
  \key bes \major r4 r8 d\mp es[( g]) f es |
  d d d d16 es f4 d8 r |
  
  r f bes bes16 c d4 bes8 r |
  r4 d,8 f g g16 g g8 a |
  bes f r4 r2 |
  r8 bes bes-> a a[( g]) g f |
  
  f16[( e8]) e16 e8 r f4 f8 a |
  bes[( a]) g f e[( g f]) e |
  
  f4 r r r8 d |
  c2~ c4. c8 |
  
  c f a f bes4 g8 e |
  f c r4 r2 |
  
  r8 cis d e f4 f8 a |
  g8->[( a16 bes]) a8 g f[( g a]) f |
  
  e4( a8) f e8. d16 d8 d |
  c2 r |
  
  f4 e d8.-> d16 d8 d |
  c2 r4 r8\fermata f\p |
  \key f\major f4 f f4.-> f8 |
  
  f8. e?16 e4 r e8 e |
  d4 cis8 cis d4 e |
  f8. f16 f8 f f4 r8 f |
  
  f4-> f8 f f4 e |
  f4.-> f8 f4 r |
  e2( f) |
  a4( g2) f4 |
  
  e2 r\fermata |
  f2.\mf^\markup\italic"Одна" f4 |
  f1 |
  r4 d( e) fis |
  
  g4. g8 g4 r |
  c,2. c4 |
  f?( d e f |
  g2.) g4 |
  
  c, e( d) e |
  f4. c8 c4 r |
  R1*4 |
  f2.^\markup\italic"Все" f4 |
  e( c) e fis |
  
  g2 d4 e |
  f?( d f) g |
  a1~ |
  a~( |
  a~ | 
  
  a~ |
  a~ |
  a |
  g~ |
  
  g4.) g8 g2 |
  a4( bes c) a |
  g2.( a8[ g] |
  f4 g a f |
  
  e2.) a4 |
  gis2 r |
  a2. a4 |
  gis( e) fis gis |
  
  a2. g?4 |
  fis( d) e fis |
  g2. f?4 |
  e2. e4 |
  
  f1->( |
  e~ |
  e |
  f4 g a f |
  
  g e-> c' bes |
  a4.) a8 a4 r |
  bes2. bes4 |
  a( f) g a |
  
  bes( d) c bes |
  a( f g) a |
  bes2. g4 |
  f1 |
  
  g2. f4 |
  f( e) f g |
  a2.-> g4 |
  g( f) g a |
  
  bes2.->(  a4 |
  g bes a g |
  fis1-> |
  fis4 d e fis |
  
  g d g f? |
  e c d e |
  f1~ |
  f~ |
  f~ |
  
  f~ |
  f2 e4 d |
  e1 |
  c2.) c4 |
  c1\fermata 
}

tenorvoice = \relative c' {
  \global
  \oneVoice
  c2\f f4 |
  e2 e4 |
  f r8 c c c |
  c4 c c |
  
  c8. bes16 a8 d c bes |
  a4-> a8 a bes c |
  d4-> d c |
  
  bes4->( g) a d( c) bes |
  a8 a a a c4 |
  r8 c c c c4 |
  
  r8 b b b d4 |
  r8 g, c4 c |
  c-> c c |
  c b8 b c e |
  
  d4 d8 d d d |
  g, r e8. e16 f8 f |
  g2 a4 |
  bes bes a |
  
  g2-> g4 |
  a r\fermata a8. a16 |
  a2-> a8 r |
  bes8. bes16 a4.( g8) |
  
  f4 r r |
  r a\mf^\markup\italic"Один"  g |
  bes2-> a4 |
  a g f |
  f2-> f4 |
  
  e8 r a8.^\markup\italic"Все" a16 a8 a |
  a2 f4 |
  r d'8. c16 bes8 a | 
  
  g4 e g |
  a a r |
  d8 c bes[( a]) g f |
  
  e4 e8 g g g |
  f8.-> f16 f4 r |
  bes8. bes16 a4->( g)
  a4 r r |
  
  r bes c |
  d d bes a2->( g4)
  \time 4/4 a2 r\fermata |
  
  \key bes \major r4 r8 f\mp g[( bes]) a g |
  f4 r r8f <f bes> q16 <a c> |
  
  <bes d>4 <f bes>8 r r q <bes d> q16 <c es> |
  <d f>4 <bes d>8 r r2 |
  
  r4 <f d'>8 <f bes> <g es'> <es c'>16 q <d bes'>8 <c a'> |
  <d bes'> <d f> r4 r2 |
  
  r8 c' g bes a[( c]) a f |
  g([ f e d'] c[ bes? a)] g |
  
  f a c f e[( d]) c bes |
  a8. g16 g8 a c[( bes a]) g |
  
  a a c a d4 bes8 g |
  a a r4 r2 |
  
  r8 a b cis d4 d8 f |
  e[( f16 g]) f8 e d4 a8 r |
  
  e'4. d8 c8. b16 b8 b |
  a4 r f' e |
  
  d c b8.-> b16 b8 b |
  e,2 r4 r8\fermata c'8\p |
  \key f \major c4 c d4.-> c8 |
  
  c8. c16 c4 r c8 c |
  a4 a8 a a4 c? |
  c8. c16 c8 c c4 r8 c |
  
  b4-> b8 b b4 c |
  d4.-> d8 d4 r |
  c1 |
  c2. c4 |
  
  c2 r\fermata R1*7
  c2.\mf^\markup\italic"Все" bes?4 |
  a( f) a b |
  c2 g4 a |
  bes?2. bes4 |
  
  a( f bes a |
  g e f) g |
  a2 r |
  r4 c2 a4 |
  
  g4. g8 g4 r |
  r d'2 bes4 |
  a4. a8 a4 r |
  d2. d4 |
  cis( a) b cis |
  
  d2 cis4 d |
  e( cis d) e |
  d1~( |
  d |
  
  c?~ |
  c~ |
  c2.) a4 |
  a r r2 |
  
  R1 |
  e'2. d4 |
  c?( a) c d |
  e2. d4 |
  
  cis( a) b cis |
  d2.( c?4 |
  b d c b |
  c2 g~ |
  
  g1~ |
  g a~ |
  a |
  
  c4.) c8 c4 r |
  f2.-> f4 |
  e( c) d e |
  f2. es4 |
  
  d( bes) c d |
  es2. es4 |
  d( bes) d e? |
  f4. f8 f4 r |
  
  e2. d4 |
  d( c) d e |
  f2.-> e4 |
  e( d) e f |
  
  g2.->( f4 |
  e d c bes |
  a1->~ |
  a4 fis g a |
  
  g1->~ |
  g4 e f? g |
  f2 bes |
  c d |
  c1 |
  
  a2 f |
  bes1~ |
  bes4 g c bes |
  a2.) a4 a1\fermata
}

bassvoice = \relative c {
  \global
  \oneVoice 
  f2\f a4 |
  c2-> bes4 |
  a r8 a g f |
  e4-> e8[( c]) d[( e]) |
  
  f8. e16 f4 r |
  r r8 f g a |
  bes4-> bes a |
  
  g4->( e) f |
  bes( c) c, |
  f r8 f f f |
  e4 r8 e e e | \abr
  
  d4 r8 g, g g |
  c4 r8 g' e c |
  a'4-> e g |
  f f8 f e c | \abr
  
  g'4 g8 g g, g |
  c4 r r |
  c4. c8 c c |
  c2.~( | \abr
  
  c4 e) d |
  cis4 r\fermata cis8. cis16 |
  d4.->( e8) f r |
  g8. g16 a2 | \abr
  
  d,8 r d4\mf^\markup\italic"Один" d |
  d2.~ |
  d2 d4 |
  d cis d |
  bes->( a) gis | \abr
  
  a8 r8 cis4^\markup\italic"Все" a4 |
  d8. e16 f4 d |
  g g, bes | \abr
  
  c? c e |
  f8. f,16 f4 r |
  bes'8 bes g[( f]) e d | \abr
  c4 c8 cis cis cis |
  d8. d16 d4 r |
  bes8. bes16 c?2-> |
  f,4 r r | \abr
  r d' c |
  bes bes bes |
  c2.-> |
  \time 4/4 f,2 r2\fermata \bar "||" 
  \key bes \major  \abr
  
  r4 r8 bes\mp bes4 bes8 bes |
  bes4 r r8 bes d d16 f | \abr
  bes4 bes,8 r r bes bes bes16 bes |
  bes1 | \abr
  
  bes4 bes8 d c es16 es f8 f, |
  bes bes r4 r2 | \abr
  
  c4 c8 c c2~ |
  c1 | \abr
  f,4 r r r8 bes |
  c2~ c4. c8 | \abr
  f,4 r r8 g c c |
  f f, r a d4( cis8) d | \abr
  
  a'4 a, a2~ |
  a4 a d8[( es f]) d | \abr
  a[( b c]) d e8. e16 e8 e |
  a,2 a~ | \abr
  a4 a e'8.-> e16 <e e,>8 q |
  a,2 r4 r8\fermata f'\p 
  \bar "||" \key f \major f4 f bes4.-> f8 | \abr
  
  c'8. c,16 c4 r c8 c |
  d4 a8 a d4 c? |
  f8. f,16 f8 f f4 r8 f' | \abr
  
  d4-> d8 d d4 c |
  b4.-> b8 b4 r |
  c1 |
  c4( e2) f4 | \abr
  c2 r\fermata |
  R1*8
  
  f2.\mf^\markup\italic"Все" f4 |
  e( c) e fis |
  g2 d4 e | \abr
  
  f2. f4 |
  e( c d) e |
  f2 r |
  R1 | \abr
  
  R1*2 |
  a2. g4 |
  f( d) f g |
  a2. g4 | \abr
  f( d) e f |
  g2. g4 |
  f2 fis |
  g4( d g f? | \abr
  
  e4.) e8 e2 |
  f4( g a) f |
  c( d e cis |
  d e f d | \abr
  a bes c) a |
  e'1~ |
  e |
  e~ |\abr
  e2 e |
  d1 ( |
  g4 f e d |
  c1~ | \abr
  
  c~-> |
  c2 bes? |
  a1 |
  d | \abr
  c?4 bes-> a g |
  f4.) f8 f4 r |
  R1 |
  f'~ | \abr
  
  f~ |
  f~ |
  f~ |
  f2 d | \abr
  
  c1~( |
  c~ |
  c~ |
  c~ | \abr
  
  c~ |
  c~ |
  c~-> |
  c |
  bes~-> |
  bes |
  a2 d |
  c b |
  c1~ | \abr
  c~ |
  c~ |
  c |
  <f f,>2.) q4 |
  q1\fermata
  \bar "|."
}

bassvoiceii = \relative c' { \global }

lyricss = \lyricmode {
\repeat unfold 5 \skip 1
и ра -- сто -- ча -- тся, и ра -- сто -- ча -- тся вра -- 

зи, __ вра -- зи __ Е -- го, и да бе -- жат, и да бе -- 
жат, и да бе -- жат, и да бе -- жат от ли -- ца Е -- го не -- на --
ви -- дя -- щи -- и Е -- го. Я -- ко и -- сче --

за -- ет дым. \repeat unfold 7 \skip 1
\skip 1
та -- ко да по -- ги -- бнут

та -- ко да по -- ги -- бнут, да по -- ги -- бнут \skip 1 \skip 1
\repeat unfold 12 \skip 1
да по -- ги -- бнут, по -- ги -- бнут. А

пра -- ве -- дни -- цы да во -- зве -- се -- ля -- тся,
да во -- зве -- се -- ля -- тся, да во -- зра -- ду -- ю -- тся пред
Бо -- гом, да на -- сла -- дя -- тся в_ве --

се -- ли -- и, да __ на -- сла -- дя -- тся в_ве -- се -- ли --
и, да на -- сла -- дя -- тся в_ве -- се -- ли -- и, в_ве -- се -- ли --
и. Во -- спо -- йте Бо -- гу, во --

спо -- йте, во -- спо -- йте Бо -- гу, по -- йте,
по -- йте и -- ме -- ни Е -- го, по -- йте,
по -- йте и -- ме -- ни Е -- го. \repeat unfold 5 \skip 1

\repeat unfold 16 \skip 1
\repeat unfold 11 \skip 1
\skip 1 Ди -- вен Бог __ во свя -- тых сво --

их. __ Бог И -- зра -- и --
лев, Бог И -- зра -- и -- лев.
Ди -- вен Бог __ во свя -- тых сво -- их,

Бог __ И -- зра -- и -- лев. И -- зра -- и -- лев, ди -- вен
Бог __ во свя -- тых __ сво -- их, Бог И -- зра --

и -- лев, Бог __ И -- зра --
и -- лев, И -- зра -- и -- лев
Ди -- вен

Бог __ во свя -- тых сво -- их, Бог И -- зра --
и -- лев, ди -- вен

Бог __ во свя -- тых __ сво -- их, Бог И -- зра --

и -- лев.
}

lyricsa = \lyricmode {
Да во -- скре -- снет Бог, и ра -- сто -- ча -- тся вра --
зи Е -- го и ра -- сто -- ча -- тся, \repeat unfold 6 \skip 1

\repeat unfold 3 \skip 1
Е -- го, и да бе -- жат, и да бе -- жат
и да бе -- жат, и да бе -- жат \repeat unfold 13 \skip 1
Я -- ко и -- сче -- за -- ет дым, \repeat unfold 4 \skip 1

\repeat unfold 3 \skip 1 Да и -- сче -- знут, да и -- сче --
знут. Я -- ко та -- ет воск от ли -- ца о --
гня, та -- ко да по -- ги -- бнут, та -- ко да по -- 

ги -- бнут, по -- ги -- бнут \repeat unfold 4 \skip 1 да по --
ги -- бнут от ли -- ца Бо -- жи -- я, да по -- ги -- бнут, да по --
ги -- бнут, по -- ги -- бнут.

А пра -- ве -- дни -- цы \repeat unfold 27 \skip 1

\repeat unfold 12 \skip 1
в_ве -- се -- ли --
и. Во -- спо -- йте Бо -- гу, во -- спо -- йте

Во -- спо -- йте Бо -- гу, во -- спо -- йте, во -- спо -- йте.
\repeat unfold 7 \skip 1
\repeat unfold 7 \skip 1 Да -- ди -- те сла -- ву

Бо -- го -- ви: на И -- зра -- и -- ле ве -- ле -- ле -- по -- та Е -- го, и
си -- ла Е -- го на о -- бла -- цех, на __ о -- бла --
цех. Ди -- вен Бог, во __ свя --

тых сво -- их, \repeat unfold 4 \skip 1
\repeat unfold 6 \skip 1
Ди -- вен Бог __ во свя --
тых сво -- их, Бог __ И -- ра --

и -- лев, Бог __ И -- зра --
и -- лев, ди -- вен Бог __ во свя --
тых сво -- их, __ Бог И -- зра -- и -- лев, И --

зра --
и -- лев, ди  -- вен Бог __ во свя --

тых __ сво -- их, Бог __ И -- зра -- и -- лев,
ди -- вен Бог __ во свя -- тых сво -- их, __ Бог И --

зра --
и -- лев.
}

lyricst = \lyricmode {
\repeat unfold 14 \skip 1
и ра -- сто -- ча -- тся, и ра -- сто -- ча -- тся вра --
зи, __ вра -- зи  \repeat unfold 10 \skip 1
\repeat unfold 8 \skip 1 от ли -- ца Е -- го не -- на --
ви -- дя -- щи -- и Е -- го. \repeat unfold 7 \skip 1 и -- сче -- 

за -- ет дым. \repeat unfold 18 \skip 1
та -- ко да по -- ги -- бнут, \repeat unfold 4 \skip 1

\repeat unfold 5 \skip 1 да по -- ги -- бнут,  \skip 1
\repeat unfold 12 \skip 1
да -- по -- ги -- бнут, по -- ги -- бнут.

А пра -- ве -- дни -- цы да во -- зве -- се -- 
ля -- тся, да во -- зве -- се -- ля -- тся
да во -- зра -- ду -- ю -- тся пред Бо -- гом

да на -- сла -- дя -- тся в_ве -- се -- ли --
и, да на -- сла -- дя -- тся в_ве -- се -- ли -- и, в_ве -- се -- ли --
и. \repeat unfold 8 \skip 1

\repeat unfold 11 \skip 1
по -- йте и -- ме -- ни Е -- о, по -- йте,
по -- йте и -- ме -- ни Е -- го. \repeat unfold 5 \skip 1

\repeat unfold 28 \skip 1

Ди -- вен Бог __ во свя -- тых сво -- их, Бог И --
зра -- и -- лев. Бог И --

зра -- и -- лев, Бог и -- зра -- и -- лев. Ди -- вен Бог __ во свя --
тых сво -- их Бог __ И -- зра --

и -- лев,
ди -- вен Бог __ во свя -- тых сво --
их, __ Бог И -- зра --

и -- лев, ди -- вен Бог __ во свя -- тых сво --

их, __ Бог И -- зра -- и -- лев, __ Бог И -- зра -- и -- лев.
\repeat unfold 10 \skip 1

\skip 1 и -- лев.
}

lyricsb = \lyricmode { 
\repeat unfold 20 \skip 1

\repeat unfold 3 \skip 1 Е -- го и да бе -- жат, и да бе -- 
жат, и да бе -- жат, и да бе -- жат \repeat unfold 7 \skip 1
\repeat unfold 6 \skip 1 Я -- ко и -- сче -- за --

ет дым. \repeat unfold 8 \skip 1
Я -- ко та -- ет воск от ли -- ца __ о -- 
гня, та -- ко да по -- ги -- бнут гре -- шни -- цы

от ли -- ца Бо -- жи -- я. Да по -- ги -- бнут, по --
ги -- бнут от ли -- ца Бо -- жи -- я. \repeat unfold 4 \skip 1
\repeat unfold 7 \skip 1

\repeat unfold 9 \skip 1
\skip 1 \skip 1 да во -- зве -- се -- ля --
тся \repeat unfold 9 \skip 1

да на -- сла -- дя --
тся в_ве -- се -- ли --
и. Во -- спо -- йте Бо -- гу, во -- спо -- йте

по -- йте Бо -- гу, по -- йте,
\repeat unfold 7 \skip 1 по -- 
йте \repeat unfold 10 \skip 1

\repeat unfold 16 \skip 1
\repeat unfold 11 \skip 1
\skip 1

Ди -- вен Бог __ во свя -- тых сво -- их,
Бог и -- зра -- и -- лев.

Ди -- вен Бог __ во свя -- тых сво --
их, __ Бог и -- зра -- и -- лев. И -- зра --

и -- лев. Бог __ И -- зра --
и -- лев, __ Бог __
И -- зра --

и -- лев, Бог __

И -- 
зра --
и -- лев.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
  
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "soprano" { \voiceOne \sopvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \lyricss }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricsa }
  
      \new Staff = "tenorstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricst }
      
     \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsb }
    >>
        % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
    \midi {
    \tempo 2=60
  }
}
}

