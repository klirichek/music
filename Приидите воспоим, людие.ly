\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Приидите воспоим, людие"
  subtitle = "(концерт №15) "
  composer = "Д. Бортнянский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key d \major
  \time 4/4
  \numericTimeSignature
    \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  
  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
    grob-interpret-markup grob (                         
      let (( dyntxt (ly:grob-property grob 'text ) )  )
      ( set! dyntxt (cond
        (( equal? dyntxt "f" ) "гр." ) 
        (( equal? dyntxt "p" ) "т." )
      )) #{ \markup \normal-text \italic $dyntxt #} )
    ))
  
  \dynamicUp
  
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr = {}

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

sopvoice = \relative c'' {
  
  
  \global
  \oneVoice
  \tempo "Оживлённо и величественно" 
  \partial 4 a8.\f a16 |
  d2-> d4 cis8. cis16 |
  d4 d r2 |
  r8 d4 d8 d[( cis d e]) | \abr
  
  fis8.-> d16 d4 r2 |
  g4.->\solo fis8 e[( cis]) d[( e]) |
  fis4.-> e8 d4 e8[( fis]) |
  g4.-> fis8 e[( cis]) d[( e]) | \abr
  
  fis4.-> e8 d4 r |
  d1\tutti\f( |
  cis4.->) cis8 d4 d |
  d2. cis4 |
  d4 r r2 | \pbr
  
  R1*4
  d1\tutti\f( |
  cis4.)-> cis8 d4 d |
  d2. cis4 |
  d a8. a16 fis'4 fis | 
  
  r e8. e16 a4 a |
  r d,8. d16 d2~ |
  d cis8 e[( d]) cis |
  d2( cis4) d8 e |
  
  fis2~ fis4\fermata r |
  r2 r4 e\p~( |
  e d2 cis4~ |
  cis b2 a4 |
  d~ d8.) d16 d4 d |
  
  cis4~ cis8. cis16 cis4 d |
  cis2( b4) b |
  a <cis e>2\solo <b d>8 <a cis> |
  <d fis>4( <cis e>) q8([ <b d>]) <a cis>4 | \abr
  
  <gis b>8 r <b d>2-> <a cis>4 |
  <gis b>8 r <d' fis>2-> <cis e>4 |
  q8.[( <b d>16] <a cis>2) <gis b>4 |
  a r r2 |
  R1*4 |
  
  r4 d2\solo e8.[( fis16]) |
  g4. fis8 fis[( e]) d[( cis]) |
  
  d4 r r2 |
  R1 |
  r4 d e fis8 fis |
  g4 fis8. fis16 fis4( e) |
  
  d4 r r2 |
  R1 |
  r4 a8.\tutti\f a16 d4. d8 |
  b4. b8 e4. e8 |
  
  cis4. cis8 fis4. fis8 |
  d4 d g2~( |
  g1 |
  fis2) fis4 e |
  d2( cis) |
  
  d r4 e |
  d2( cis) |
  d1\fermata
  
  \partiall d4\p |
  \set Score.currentBarNumber = #61
  d2.( e8.\espressivo[ d16]) |
  d2\p r4 d |
  e1\espressivo | 
  
  e2\p r4 dis |
  dis1\espressivo |
  dis2\p r |
  r4 e\p e d? |
  cis1 |
  
  cis4 cis\solo fis4.->( d8) |
  cis4 d\tutti\p cis( b) |
  ais cis\solo d8[( e fis]) cis |
  d4 d8 d\tutti cis4 b |
  
  ais2( b) |
  ais r4 fis\solo |
  b2~( b4 c8.[ b16]) |
  b8 r e4( fis g) |
  a,?2~( a4 b8.[ a16]) |
  
  a4 fis\tutti\p g g |
  fis2( e) |
  d4 a'\solo\p a8( c4 b8) |
  b4 b b8( d4 cis8) |
  
  cis4 fis2\tutti\p e4~ |
  e d2( cis8[ b]) |
  ais2( b4 cis |
  b2. ais4) |
  
  b8 fis\f b cis d2 |
  r8 d d e fis2 |
  r8 a, cis d e2 |
  
  r8 e e fis g2 |
  r4 d d2 |
  d4 d8 d d8. d16 d8 d |
  
  d8 fis4 fis8 e4~( e8[ fis16 e] |
  d4~ d8[ e16 d] cis4 e |
  a4.) cis,8 cis4 dis |
  
  e r r2 |
  r r4 a,\solo |
  d4. d8 cis cis cis d16[( e]) |
  
  fis4 fis b,4. d8 |
  cis4( e16[ d8]) d16 cis4( b) |
  a8 <a cis>[(\tutti\f <b d> <cis e>]) <d fis>2 |
  
  <cis e>8 q[( <b d>]) <a cis> <d fis>8. q16 q8 q |
  <cis e>4 r8 e\solo e8. d16 d8 d |
  
  d[( cis] e16[ d]) d[( b]) a4( gis) |
  a r8 a8\tutti\p b8.-> b16 b8 b |
  
  cis8-> cis16 cis cis8 cis e8.-> e16 e8 e\f |
  d4 d d2 |
  d4 d8 d d8. d16 d8 d |
  
  d4 r r2 |
  R1 |
  r4 d\tutti\f d8. d16 d8 d |
  
  cis1->\p\<( |
  d2-> e4.\f) e8 |
  d2.( cis4) |
  d1\fermata
}

altvoice = \relative c'' {
  \global
  \oneVoice
  \partial 4 a8.\f a16 |
  a2-> a4 a8. a16 |
  a4 fis r8 fis[( g]) a |
  b[( a]) b a g4.( a8) |
  
  a8.-> a16 a8 r d4\solo( cis |
  b4.->) a8 g[( e]) fis[( g]) |
  a4.-> g8 fis4 g8[( a]) |
  b4.-> a8 g[( e]) fis[( g]) |
  
  a4.-> g8 fis4 r |
  r2 b4\tutti\f( a~ |
  a4.)-> a8 a4 a |
  a2( g4.) g8 |
  fis4 r r <fis a>8.-\solo q16 |
  
  <g b>4.-> <fis a>8 <e g>[( <cis e>]) <d fis>[( <e g>]) |
  <fis a>4.(-> <e g>8) <d fis>4 <e g>8[( <fis a>]) |
  <g b>4 q8 <fis a> <e g>[( <cis e> <d fis> <e g>]) |
  <fis a>4.-> <e g>8 <d fis>4 r | \abr
  
  r2 b'4(\tutti\f a~ |
  a4.)-> a8 a4 a |
  a2( g4.) g8 |
  fis4 fis8. fis16 d'4 d | \abr
  
  r4 cis8. cis16 cis4 a |
  r b8. b16 b2~ |
  b a8 cis[( b]) a |
  b2( a4) a8 cis | \pbr
  
  d2~ d4\fermata r |
  r2 a2\p( |
  gis a4 e |
  fis2 e |
  gis4~ gis8.) gis16 gis4 gis | \abr
  
  a4~ a8. a16 a4 b |
  a2. gis4 |
  a4 r r2 |
  
  R1*4
  
  r4 <fis a>\solo <d fis> <e g?> |
  <fis a>( <g b>8.[ <fis a>16]) q8([ <e g>]) <d fis>4 | \pbr
  
  <cis e>4 <e g>2 <d fis>4 |
  <cis e> <g' b>2 <fis a>4 |
  q8.[( <e g>16] <d fis>2) <cis e>4 |
  d4 fis2 g8.[( a16]) |
  b4. a8 a[( g]) fis[( e]) | \abr
  
  fis4 r r2 |
  R1 |
  r4 fis g a8 a |
  b4 a8. a16 a4( g) | \abr
  fis4 r r2 |
  R1 |
  r4 fis8.\tutti\f fis16 fis4. fis8 |
  g4. g8 gis4. b8 | \pbr
  
  a4. a8 ais4. cis8 |
  b4 b b2( |
  e, cis' |
  d) d4 b |
  a1 | \abr
  
  fis2 r4 b |
  a2( g) |
  fis1\fermata \bar "||"
  
  \tempo "Медленно"
  \partiall b4\p 
  b1\espressivo |
  b2\p r |
  r4 cis4 cis2\espressivo | \abr
  
  cis2\p r |
  r4 c c4.(\espressivo b8) |
  b2\p r |
  r4 b4\p b b |
  b2~( b4.\espressivo ais8) | \pbr
  
  ais4 ais\solo d4.->( b8) |
  ais4 b\tutti\p ais( b8.[ fis16)] |
  fis4 ais\solo b8[( cis d]) ais |
  b8.[( fis16]) fis8 fis\tutti fis4 fis | \abr
  
  fis1 fis2 r |
  r4 fis\solo g( dis) |
  e r r2 |
  r4 e fis( cis) | \abr
  
  d d\tutti\p e e |
  d2.( cis4) |
  d4 fis\solo\p fis8( a4.) |
  gis4 gis gis8( b4.) | \pbr
  
  ais4 r g?2\p |
  fis4 fis g2~( |
  g4 fis8[ e] d4 g |
  fis2 e) | \abr
  
  \tempo "Оживлённо"
  d8 d\f d fis b2 |
  r8 fis b cis d2 |
  r8 e, a b cis2 | \abr
  
  r8 cis cis d e2 |
  r4 a, b2 |
  a8 fis[( g]) a b8. a16 b8 g | \pbr
  
  fis d'4 d8 cis4~( cis8[ d16 cis] |
  b4~ b8[ cis16 b] a4 b |
  cis4.) a8 a4 a | \abr
  
  gis8 r e4\solo a4. a8 |
  gis8 gis a16[( gis]) fis[( gis]) a2 |
  gis2 a8 a a b16[( cis]) | \abr
  
  d4 d gis,4. b8 |
  a4( b8.) b16 a4( gis) |
  a a\tutti\f a2 | \abr
  
  a4 a8 a a8. a16 a8 a |
  a4 r8 e\solo fis8. fis16 gis8 gis | \pbr
  
  a4( gis16[ fis]) e[( d]) cis4( b) |
  cis8 e\tutti\p a4~ a8. gis16 gis8 gis | \abr
  g?-> g16 g g8 g g8.-> g16 g8 g\f | 
  
  fis4 a b2 |
  a8 fis[( g]) a b8. b16 b8 g | \abr
  
  fis4 r8 a\solo a8. g16 g8 g |
  g[( fis] a16[ g]) fis[( e]) d4( cis) |
  d a'\tutti\f a8. a16 a8 a | \abr
  
  g1->\p\<( |
  fis2-> b4.)\f b8 |
  a2( g) |
  fis1\fermata \bar "|."
}

tenorvoice = \relative c' {
  \global
  \oneVoice
  \partial 4 a8.\f a16 |
  fis'2-> fis4 e8. e16 |
  d4-> d d4. d8 |
  d4 d8 fis g2 |
  
  fis8.-> fis16 fis4 r2 |
  d1->\solo~
  d4. d8 d4 d |
  d4.-> d8 d4 d |
  
  d4.-> cis8 d4 r |
  g\tutti\f fis e fis |
  g4.-> g8 fis4 fis |
  fis2( e4.) e8 |
  d r d8.\solo d16 d2~
  
  d1~ |
  d4. d8 d4 d |
  d1 |
  d4.-> cis8 d4 r |
  
  g\tutti\f fis e fis |
  g4.-> g8 fis4 fis |
  fis2( e4.) e8 |
  d4 r r fis8. fis16 |
  
  e4 cis r e8. e16 |
  d4( fis) fis fis8. fis16 |
  e2 e8 e4 e8 |
  e2~ e4 a,8 a |
  
  a2~ a4\fermata r |
  r2 cis2(\p |
  b a |
  d cis |
  b4~ b8.) b16 b4 b |
  
  a4~ a8. a16 a4 fis' |
  e2( d4.) d8 |
  cis4 r r2 |
  R1 |
  
  e,2.\solo e4 |
  e gis2 a4 |
  d,2( e4) e |
  a4 r r2 |
  R1*4 |
  
  d2.\solo d4 |
  d4. d8 a4 a |
  
  d,2 r4 a' |
  a4.-> a8 a4 a |
  d2 r4 d~ |
  d d8. d16 d2 |
  
  d4 r r a~ |
  a a8 a a2 |
  a4 r r a8.\tutti\f a16 |
  b4. b8 b4. b8 |
  
  cis4. cis8 cis4. cis8 |
  d4. d8 d4 d |
  cis2( e |
  d) d4 g |
  fis2( e) |
  
  d2 r4 g |
  fis2( e) |
  d1\fermata 
  \partiall fis4\p  |
  fis2.( g8.\espressivo[ fis16]) |
  fis2\p r4 fis |
  g2~( g4\espressivo~ g8.[ fis16]) |
  
  fis2\p r4 fis |
  fis1\espressivo |
  fis2\p r |
  r4 e\p e fis |
  g( fis e4.\espressivo fis8) |
  
  fis4 r r2 |
  r4 fis\tutti\p e( d) |
  cis r r2 |
  r4 fis\tutti\p e d |
  
  cis2( d) |
  cis r |
  R1*3 |
  
  r4 a\tutti\p b b |
  a2( g) |
  fis4 r r dis'\solo\p |
  e e, r eis' |
  
  fis fis, b\tutti\p cis( |
  ais) b e2~( |
  e4 d8[ cis] b4 e |
  d2 cis) |
  
  b4 r r8 d,\f fis b |
  d4 r r8 d a b |
  cis4 r r8 cis, e a |
  
  cis4 r r8 cis d e |
  fis4 fis g2 |
  fis8 d[( e]) fis g8. fis16 g8 b, |
  
  a8 d,[( fis]) gis a[( b cis a] |
  b[ a gis e] a4 gis |
  fis4.) fis8 fis4 fis |
  
  e r r a\solo |
  d4. d8 cis cis d16[( cis]) b[( a]) |
  b2 a4 r |
  
  R1 |
  r2 r4 r8 e\tutti\f |
  a4 a a2 |
  
  a4 a8 a a8. a16 a8 a |
  a r cis4\solo b8. b16 e,8 e |
  
  a4( d8.) d16 e4( e,) |
  a4 r8 cis\p d8. d16 d8 d |
  
  e-> e16 e e8 e cis8.-> cis16 cis8 cis\f |
  a4 fis' g2 |
  fis8 d[( e]) fis g8. g16 g8 b, |
  
  a r a4\solo b8. b16 cis8 cis |
  d4( cis16[ b]) a[( g]) fis4( e) |
  fis fis'\tutti\f fis8. fis16 fis8 fis |
  
  e1->(\tutti\p\< |
  d2-> g4.\f) g8 |
  fis2( e) |
  d1\fermata
}

bassvoice = \relative c' {
  \global
  \oneVoice 
  \partial 4 a8.\f a16 |
  d2-> d4 a8. a16 |
  fis4-> d r8 d[( e]) fis |
  g[( fis]) g a b[( a b cis]) |
  
  d8.-> d,16 d4 r2 |
  R1*3
  
  r2 d'4\tutti\f( cis |
  b) a g fis |
  e4.-> e8 d8.[( e16]) fis8.[( g16]) |
  a2. a,4 |
  d r r2 |
  
  R1*3 |
  r2 d'4(\tutti\f cis |
  b) a g fis |
  e4.-> e8 d8.[( e16]) fis8.[( g16]) |
  a2. a,4 |
  d r r d'8. d16 |
  cis4 a r cis8. cis16 |
  b4. b8 b4 b |
  gis8. e16 fis8 gis a4. a16 a |
  gis8. e16 fis8 gis8 a[( g]) fis e |
  
  d2~ d4\fermata r |
  <e e,>1\p~ |
  q~ |
  \set doubleSlurs = ##t
  <e e,>( |
  e4~) e8. e16 e4 eis |
  
  \set doubleSlurs = ##f
  fis4~ fis8. fis16 fis4 d |
  e?2. e,?4 |
  a4 r r2 |
  R1*6
  
  a2.\solo a4 |
  a cis2 d4 |
  g,2( a4) a |
  d r r2 |
  R1 |
  
  r4 <fis a>4\solo( <e g>) <d fis> |
  <cis e>4.-> q8 q4 <d fis>8[( <e g>]) |
  <d fis>4 r r2 |
  R1 |
  
  r4 <fis a> <e g> <d fis>8 q |
  <cis e>4 <d fis>8 q <fis a>4( <e g>) |
  <d fis> r r d8.\tutti\f d16 |
  g4. g8 e4. gis8 |
  
  a4. a8 fis4. ais8 |
  b4. b8 g4 g |
  a1( |
  d2) d4 g, |
  a2( a,) |
  
  b2 r4 g' |
  a2( a,) |
  d1\fermata \partiall b4\p |
  
  <b b'>1\espressivo b2\p r |
  r4 ais' ais2\espressivo |
  
  ais,2\p r |
  r4 a'? a2\espressivo |
  a,\p r |
  <g g'>2\p q4 <fis fis'> |
  <e e'>( <fis fis'> <g g'>4.\espressivo <fis fis'>8 ) |
  
  q4 r r2 |
  q2\tutti\p q |
  fis4 r r2 |
  r4 b\tutti\p ais b |
  
  fis'1 |
  fis,2 r |
  r4 dis'\solo e( fis) |
  g r r2 |
  r4 cis, d?( e) |
  
  fis <d, d'>4\tutti\p g g |
  a1 |
  <d, d'>4 r r2 |
  R1 |
  
  <fis fis'>1\tutti\p |
  q~ |
  q4 q <g g'>( <e e'> |
  <fis fis'>1) |
  
  b4 r r8 b\f d fis |
  b4 r r8 b fis gis |
  a4 r r8 a, cis e |
  
  a4 r r8 a b cis |
  d4 <d, d'> q2 |
  q4 q8 q q8. q16 q8 q |
  
  d4 r r2 |
  R1 |
  r2 r4 b\solo |
  
  e1~ |
  e |
  e,4 e' a4. a8 |
  
  d, d b cis16[( d]) e4. e8 |
  fis fis d8. d16 e2 |
  a,4 r r8 d[(\tutti\f fis d]) |
  
  a' a, r4 r8 d fis8. d16 |
  a'8 a, r4 r2 |
  
  R1*2 |
  r2 r4 r8 <a a'>\tutti\f |
  <d d'>1 |
  d4 d8 d d8. d16 d8 d |
  d r fis4\solo e8. e16 a,8 a |
  b4( g8.) g16 a2 |
  d8 d\tutti\f[( fis a]) d8. a16 fis8 d |
  
  <a a'>1->(\p\< |
  <b b'>2-> <g g'>4.\f) q8 |
  <a a'>1 |
  <d d,>1\fermata
}

bassvoiceii = \relative c' { \global }

lyrsoprano = \lyricmode {
  При -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, __
  лю -- ди -- е, Спа -- со -- во три -- дне -- вно -- е, три -- дне -- вно -- е во --
  ста -- ни -- е, Спа -- со -- во во -- ста -- ни -- е,
  
  Спа -- со -- во во -- ста -- ни -- е; при -- и -- ди -- те,
  при -- и -- ди -- те, при -- и -- ди -- те во -- спо -- им, __ во -- спо --
  
  им Спа -- со -- во три -- 
  дне -- вно -- е во -- ста -- ни -- е, им -- же и -- зба -- ви -- хо --
  мся а -- до -- вых не -- ре -- ши -- мых уз,
  
  и не -- тле -- ни -- е и 
  жизнь не -- тле -- ни -- е вси во -- спри -- я --
  хом, и не -- тле -- ни -- е и жизнь вси
  
  во -- спри -- я -- хом, во -- спри -- я -- хом зо -- ву --
  ще, зо -- ву -- ще: Ра -- спны -- йся, ра -- спны --
  йся, ра -- спны -- йся и по -- гре -- бы --
  
  йся, ра -- спны -- йся, ра -- спны -- йся и по -- гре -- бы -- йся, и по -- гре --
  бы -- йся, ра -- спны -- йся, ра -- спны --
  йся и по -- гре -- бы -- йся, ра -- спны -- йся, ра -- спны --
  
  йся и по -- гре -- бы --
  йся и во -- скре -- сый, и во -- скре -- сый, и во -- скре -- сый,
  и во -- скре -- сый, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  
  им, во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло -- ве -- ко --
  лю -- бче, Че -- ло -- ве -- ко -- лю -- бче, спа -- си
  ны во -- скре -- се -- ни -- ем Тво -- им, е -- ди -- не Че -- ло --
  
  ве -- ко -- лю -- бче, спа -- си ны во -- скре --
  се -- ни -- ем, во -- скре -- се -- ни -- ем Тво -- им, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло --
  ве -- ко -- лю -- бче.
}

lyralto = \lyricmode {
  При -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, во -- спо -- им, __
  лю -- ди -- е, Спа -- со -- во три -- дне -- вно -- е, три -- дне -- вно -- е во --
  ста -- ни -- е, Спа -- со -- во во -- ста -- ни -- е; при -- и --
  
  ди -- те, во -- спо -- им, __ во -- спо -- им, во -- спо -- им, __ лю -- ди -- е,
  Спа -- со -- во во -- ста -- ни -- е; при -- и -- ди -- те,
  при -- и -- ди -- те, при -- и -- ди -- те во -- спо -- им, __ во -- спо --
  
  им __ Спа -- со -- во три --
  дне -- вно -- е во -- ста -- ни -- е…
  Им -- же и -- зба -- ви -- хом --
  
  ся а -- до -- вых не -- ре -- ши -- мых уз, и не -- тле -- ни -- е и 
  жизнь, не -- тле -- ни -- е вси во -- спри -- я --
  хом, и не -- тле -- ни -- е и жизнь вси
  
  во -- спри -- я -- хом, во -- спри -- я -- хом зо -- ву --
  ще, зо -- ву -- ще: Ра -- спны -- йся, ра -- спны --
  йся, ра -- спны -- йся и по -- гре -- бы --
  
  йся, ра -- спны -- йся, ра -- спны -- йся и по -- гре -- бы -- йся, и по -- гре --
  бы -- йся ра -- спны -- йся, ра -- спны --
  йся и по -- гре -- бы -- йся, ра -- спны -- йся, ра -- спны --
  
  йся и по -- гре -- бы --
  йся и во -- скре -- сый, и во -- скре -- сый, и во -- скре -- сый,
  и во -- скре -- сый, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  
  им, во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло -- ве -- ко -- лю -- бче, Че -- ло -- ве -- ко --
  лю -- бче, Че -- ло -- ве -- ко -- лю -- бче, спа -- си
  ны во -- скре -- се -- ни -- ем Тво -- им, е -- ди -- не Че -- ло --
  
  ве -- ко -- лю -- бче, спа -- си __ ны во -- скре --
  се -- ни -- ем, во -- скре -- се -- ни -- ем Тво -- им, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  им е -- ди -- не Че -- ло -- ве -- ко -- лю -- бче, е -- ди -- не Че -- ло --
  ве -- ко -- лю -- бче.
}

lyrtenor = \lyricmode {
  При -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, во -- спо -- им,
  лю -- ди -- е, Спа -- со -- во три -- дне -- вно -- е во --
  ста -- ни -- е, Спа -- со -- во три -- дне -- вно -- е во -- ста -- ни -- е; при -- и -- ди --
  
  те, во -- спо -- им, лю -- ди -- е,
  Спа -- со -- во три -- дне -- вно -- е во -- ста -- ни -- е; при -- и --
  ди -- де, при -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, __ во -- спо --
  
  им Спа -- со -- во три -- 
  дне -- вно -- е во -- ста -- ни -- е…
  …а -- до -- вых не -- ре -- ши -- мых уз,
  
  и не -- тле -- ни -- е и 
  жизнь, не -- тле -- ни -- е и жизнь вси __ во -- спри -- я --
  хом, вси __ во -- спри -- я -- хом, и не -- тле -- ни -- е и
  
  жизнь вси во -- спри -- я -- хом, во -- спри -- я -- хом зо -- ву --
  ще, зо -- ву -- ще: Ра -- спны -- йся, ра -- спны --
  йся, ра -- спны -- йся и по -- гре -- бы --
  
  йся, ра -- спны -- йся и по -- гре -- 
  бы -- йся,
  и по -- гре -- бы -- йся, ра -- спны -- йся, ра --
  
  спны -- йся и по -- гре -- бы --
  йся и во -- скре -- сый, и во -- скре -- сый, и во -- скре --
  сый, и во -- скре -- сый, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  
  им, во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло -- ве -- ко -- лю -- бче,
  спа -- си, спа -- си
  ны во -- скре -- се -- ни -- ем Тво -- им, е -- ди -- не Че -- ло --
  
  ве -- ко -- лю -- бче, спа -- си ны во -- скре --
  се -- ни -- ем, во -- скре -- се -- ни -- ем Тво -- им, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло -- ве -- ко -- лю -- бче, е -- ди -- не Че -- ло --
  ве -- ко -- лю -- бче.
}

lyrbass = \lyricmode { 
  При -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, во -- спо -- им __
  лю -- ди -- е, 
  Спа -- со -- во три -- дне -- вно -- е во -- ста -- ни -- е;
  
  Спа --
  со -- во три -- дне -- вно -- е во -- ста -- ни -- е; при -- и --
  ди -- те, при -- и -- ди -- те, при -- и -- ди -- те, во -- спо -- им, при -- и -- ди -- те, во -- спо -- им, во -- спо --
  
  им __ Спа -- со -- во три --
  дне -- вно -- е во -- ста -- ни -- е…
  
  …а -- до -- вых не -- ре -- ши -- мых уз,
  и __ не -- тле -- ни -- е и жизнь
  не -- тле -- ни -- е вси во -- спри -- я -- хом, и не -- тле -- ни -- е и 
  
  жизнь вси во -- спри -- я -- хом, во -- спри -- я -- хом зо -- ву --
  ще, зо -- ву -- ще: Ра -- спны -- йся, ра -- спны --
  йся, ра -- спны -- йся и по -- гре -- бы --
  
  йся, ра -- спны -- йся и по -- гре --
  бы -- йся, ра -- спны -- йся, ра -- спны --
  йся и по -- гре -- бы -- йся,
  
  и по -- гре -- бы --
  йся и во -- скре -- сый, и во -- скре -- сый, и во -- скре --
  сый, и во -- скре -- сый, спа -- си ны во -- скре -- се -- ни -- ем Тво --
  
  им е --
  ди -- не, е -- ди -- не
  Че -- ло -- ве -- ко -- лю -- бче, Че -- ло -- ве -- ко -- лю -- бче, спа --
  си ны, спа -- си, спа -- си ны,
  
  спа -- си ны во -- скре -- се -- ни -- ем Тво --
  им, е -- ди -- не Че -- ло -- ве -- ко -- лю -- бче, е -- ди -- не Че -- ло --
  ве -- ко -- лю -- бче.
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
        \new Voice  = "soprano" { \sopvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \lyrsoprano }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyralto }
  
      \new Staff = "tenorstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyrtenor }
      
     \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyrbass }
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
    \tempo 4=120
  }
}
}

