\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\header {
  title = "Пиковая дама"
  subtitle = "№3 Хор гуляющих и сцена"
  composer = "П.И.Чайковский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globalcommon = {
  \autoBeamOff
  \set Score.skipBars = ##t
  \secondbar
}

global = {
  \key f \major
  \globalcommon
}

toLeft = { \change Staff = "pianoLeft" \voiceOne }
toRight = { \change Staff = "pianoRight" \voiceTwo }

%use this as temporary line break
abr = { \break }


% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

iL = { \override Lyrics.LyricText #'font-shape = #'italic }
nL = { \revert Lyrics.LyricText #'font-shape }

% хитровыгнутая лига
sl= { \shape #'((0 . 0) (1 . 1) (-1 . -9) (-0.7 . -5)) Slur }

s_common =  \relative c'' {
  c8.\f c16 f4. e8 |
  d c bes4 a |
  bes4. bes8 bes8. c16 | 
  a4 r r |
  g8. g16 c4 a |
  g8. g16 c4 a | 
  d8. c16 b4. a8 |
  c2 r4 |
  c8.\f c16 f4. e8 | 
  d8 c bes4 a |
  bes4. bes8 bes8. c16 |
  a4 r r | 
  a8. a16 a8 a b b |
  c8.([ b16]) a4 r |
  c8. c16 c8 c d d | 
  e8.([ d16)] c8 r <d g>4~\ff |
  q8. c16 c8 d e r |
  <e g>4( <d f>) <cis e> | 
  d8 c bes a g fis |
  g8. a16 bes2 |
  c8. g16 a4. g8 | \abr
  f4
}

a_common = \relative c'' {
  a8. a16 a4. a8 |
  bes f c4 c |
  g'4. g8 g8. g16 | 
  f4 r r |
  f8. e16 f4 f |
  f8. e16 f4 f | 
  f8. f16 f4. e8 |
  a2 r4 |
  a8. a16 a4. a8 |
  bes8 f c4 c |
  g'4. g8 g8. g16 |
  f4 r r |
  f8. f16 fis8 fis gis gis |
  a8.( gis16) a4 r |
  e8. e16 f8 f f f |
  c'8.( b16) a8 r g4~ |
  g8. <g a>16 q8 <g b>8 <g c> r |
  bes4( a) g |
  a8 a g fis g fis |
  g8. fis16 g2 |
  f8. f16 f4 e |
  f4
}

t_common = \relative c' {
  \tag #'choir {f8.\f} \tag #'combine f8. f16 f4. f8 |
  f c e4 f |
  d4. des8 c8. c16 |
  c4 r r |
  d8. des16 c4 c |
  d8. des16 c4 c |
  b8. c16 d4. c8 |
  e2 r4 |
  \tag #'choir {f8.\f} \tag #'combine f8. f16 f4. f8 |
  f c e4 f |
  d4. des8 c8. c16 |
  c4 r r |
  f8. f16 e8 e d d |
  c8.( d16) e4 r |
  c8. c16 c8 c b b |
  a8.( b16) c8 r \tag #'choir {<b d>4~\ff} \tag #'combine <b d>4~ |
  q8. <a c>16 q8 <b d> <c e> r |
  <e g>4( <d f>) <cis e> |
  d8 es d c d es |
  d8. <c d>16 <bes d>2 |
  c8. c16 c4 c |
  f,
}

b_common = \relative c {
  f8. f16 d'4. c8 |
  bes a g4 f |
  f4. f8 e8. e16 |
  f4 r r |
  bes8. bes16 a4 f |
  bes8. bes16 a4 f |
  d8. d16 d4. a'8 |
  a2 r4 |
  f8. f16 d'4. c8 |
  bes8 a g4 f |
  f4. f8 e8. e16 |
  f4 r r |
  d'8. d16 c8 c b b |
  a8.( b16) c4 r |
  a8. a16 as8 as g g |
  fis8.( gis16) a8 r <f g>4~ |
  q8. <e g>16 q8 <d g>8 <c g'> r |
  <cis bes'>4( <d a'>) <e g> |
  <f a>8 <fis a> g a bes c |
  bes8. a16 g2 |
  a8. bes16 c4 c |
  f,
}

commonl = \lyricmode {
  На -- ко -- нец -- то бог по -- слал нам сол -- неч -- ный де -- нёк!
  Что за воз -- дух! Что за не -- бо!
  Точ -- но май у нас!
  Ах, ка -- ка -- я пре -- лесть, пра -- во, весь бы день гу -- лять!
  Дня та -- ко -- го не до -- ждать -- ся,
  дня та -- ко -- го не до -- ждать -- ся дол -- го нам о -- пять,
  дня __ та -- ко -- го не до -- ждать -- ся дол -- го нам,
  дол -- го нам о -- пять!
  
}

s_I = \relative c'' {
  \time 3/4
  \tempo "Allegro giusto" 4=126
  \global
  \dynamicUp
  \s_common r4 r |
  R2. |
  a4.\mf^\markup\italic"(Барышни)" e'8 d a | \abr
  R2. |
  a4. e'8 d a |
  a2\f b4 | \abr
  c4( a) b |
  c( cis) d |
  e cis d | \abr
  R2. |
  a4.\mf e'8 d a |
  r4 r a8 a | \abr
  a4. e'8 d4 |
  a2\f b4 |
  c8 c a4 b | \abr
  c8\cresc c d4 e |
  es2. |
  e8\f e g c, d d |
  f b, c c d e | \abr
  e4. c8 b r |
  R2. |
  c8 c e a, b b |
  d g, a a b c | \abr
  c4. a8 g r |
  R2. |
  f8\p g a4 d, |
  g8\cresc a b4 e, | \abr
  a8 b c4 f, |
  b8 c d4 g, |
  c8 d e4 c | \abr
  c8 d e4 c |
  <c e>8\f <d f> <e g>4 <c e>8 r |
  <c e> <d f> <e g>4 <c e>8 r | \abr
  <c e>\ff <d f> <e g> <c e> <d f> <e g> |
  <c e> <d f> <e g> < c e> <d f> <e g> |
  R2. |
  R2. | \abr
  
  \s_common \bar "|."
}

a_I = \relative c'' {
  \global
  \dynamicDown
  \a_common r4 r |
  r4 a,8\mf^\markup\italic"(Старухи)" a a a |
  cis4( a) a' |
  r a,8 a a a |
  cis4( a a') |
  f8 f fis4 gis |
  a8 a fis fis gis gis |
  a4 a a8 a |
  a a a4 a |
  r a,8\mf a a a |
  cis4( a) a' |
  r a,8 a a a |
  cis4( a a') |
  f8 f fis4 gis |
  a8 a fis fis gis gis |
  a a b b c c |
  c2. |
  c8 c e a, b b |
  d g, a a b c |
  c4. a8 g r |
  R2. |
  a8 a c f, g g |
  b e, f f g a |
  a4. f8 e r |
  R2. |
  d8 e f4 d |
  e8 f g4 e |
  f8 g a4 f |
  g8 a b4 g |
  <g bes>8 q q4 q |
  q8 q q4 q |
  q8 q q4 q8 r |
  q8 q q4 q8 r |
  q8 q q q q q |
  q q q q q q |
  R2. |
  R2. |
  \a_common
}

femalevoices = << \new Voice="soprano" { \voiceOne \s_I }
                  \new Voice="alto" { \voiceThree \a_I } >>


t_I = \relative c' {
  \global
  \dynamicDown
  \t_common r4 r |
  R2. |
  \tag #'choir {a8.\mf_\markup\italic"(Молодые люди)"} \tag #'combine a8._\markup\italic"(Молодые люди)" a16 b8 cis d d |
  R2. |
  a8. a16 b8 cis d4 |
  r \tag #'choir {e8\f} \tag #'combine e8 e e e |
  e2 e4 |
  e4. e8 d d |
  cis4( e d) |
  R2. |
  \tag #'choir {a8.\mf} \tag #'combine a8. a16 b8 cis d d |
  R2. |
  a8. a16 b8 cis d4 |
  r \tag #'choir {e8\f} \tag #'combine e8 e e e |
  e2 e4 |
  e4( f) g |
  as\f( g) fis |
  g4 r r |
  R2. |
  \tag #'choir {c,8\f} \tag #'combine c,8 c' e a, b b |
  d g, a a b c |
  c4. c8 b8 r |
  R2. |
  a8 a c f, g g |
  b e, f f g a |
  a4. f8 g[( a]) |
  \tag #'choir {b4.\p} \tag #'combine b4. g8 a b |
  c4. a8 b c |
  d4. b8 c d |
  e4 r8 c c d |
  e4( e8) c c d |
  \tag #'choir {<c e>4~\f} \tag #'combine <c e>4~ q8 q q <d f> |
  <e g>4 r8 <c e> q <d f> |
  \tag #'choir {<e g>8\ff} \tag #'combine <e g>8 <d f> <c e> <e g> < d f> <c e> |
  <e g> <d f> <c e> <e g> <d f> <c e>|
  R2. |
  R2. |
  \t_common
}


b_I = \relative c {
  \global
  \dynamicDown
  \b_common r4 r |
  a'8\mf_\markup\italic"(Старики)" a g4 f |
  e( g) f |
  a8 a g4 f |
  e( g f) |
  d'8 d c4 b |
  a( c) b |
  a8 a g4 f |
  e( g f) |
  a8\mf a g4 f |
  e( g) f |
  a8 a g4 f |
  e( g f) |
  d'8 d c4 b |
  a( c ) b |
  a8 a as4 g |
  fis( g) as |
  g4 r r |
  R2.
  a8 a c f, g g |
  b e, f f g a |
  a4. a8 g r |
  R2.
  f8 f a d, e e |
  g cis, d d e f |
  f4. d8 e[( f]) |
  g4. e8 f g |
  a4. f8 g a |
  b4. g8 a b |
  c4 r8 <g bes>8 q q |
  q4~ q8 q q q  |
  q4~ q8 q q q |
  q4 r8 q q q |
  q q q q q q |
  q q q q q q |
  R2. |
  R2. |
  \b_common
}

malevoices = << \new Voice="tenor" { \voiceTwo \t_I }
                  \new Voice="bass" { \voiceFour \b_I } >>

l_s = \lyricmode {
  Что за ра -- дость!
  Что за сча -- стье!
  Как от -- рад -- но, как от -- рад -- но жить!
  Как при -- ят -- но в_Лет -- ний
  сад хо -- дить, пре -- лесть, как при -- ят -- но
  в_Лет -- ний сад хо -- дить! По -- смо -- три -- те, по -- смо -- три -- те,
  ско -- лько мо -- ло -- дых лю -- дей,
  и во -- ен -- ных, и граж -- дан -- ских бро -- дит мно -- го
  вдоль ал -- лей, по -- смо -- три -- те, по -- смо -- три -- те,
  как тут мно -- го бро -- дит вся -- ких, и во  -- ен -- ных,
  и граж -- дан -- ских. Как и -- зя -- щны, как пре -- крас -- ны,
  как кра -- си -- вы, по -- смо -- три -- те, по -- смо -- три -- те!
}

skipcommon = \lyricmode { \repeat unfold 76 \skip 1 }
skipverse = \lyricmode { \repeat unfold 111 \skip 1 }

l_a = \lyricmode {
  \skipcommon
  Пре -- жде лу -- чше жи -- ли,
  и та -- ки -- е дни __
  ка -- ждый год бы --
  ва -- ли ра -- нне -- ю ве -- сной, да, каж -- дый год бы -- ва -- ли!
  А те -- перь им в_ред -- кость сол -- ныш -- ко с_ут --
  ра __ ху -- же ста -- ло, пра -- во, ху -- же ста -- ло,
  пра -- во, у -- ми -- рать по -- ра!
  Пре -- жде, пра -- во, бы -- ло луч -- ше, бы -- ло ве -- се -- 
  ле -- е жить, нам и сол -- ныш -- ко на не -- бе не бы -- ло в_ди --
  ко -- вин -- ку, пре -- жде, пра -- во, луч -- ше бы -- ло
  и жи -- ло -- ся ве -- се -- ле -- е, пре -- жде, пра -- во,
  лучш -- ше бы -- ло и жи -- ло -- ся ве -- се -- ле -- е,
  нам и солн -- це не в_ди -- ко -- вин -- ку бы -- ва -- ло!
  
}

l_t = \lyricmode {
  \skipcommon
  Солн -- це, не -- бо, воз -- дух,
  со -- ло -- вья на -- пев и ру -- мя -- нец
  яр -- кий на ла -- ни -- тах дев __
  то ве -- сна да -- ру -- ет,
  с_не -- ю и лю -- бовь сла -- дост -- но вол -- ну -- ет
  мо -- ло -- ду -- ю кровь!
  Не -- бо, солн -- це, воз -- дух чи -- стый, слад -- кий со -- ловь -- я на -- пев,
  ра -- дость жиз -- ни и ру -- мя -- нец а -- лый на ла -- ни -- тах дев
  то да -- ры вес -- ны пре -- кра -- сной, то да -- ры вес -- ны!
  Счаст -- ли -- вый день, пре -- крас -- ный день! Как хо -- ро -- шо!
  О, ра -- дость, нам вес -- на лю -- бовь и сча -- сти -- е при -- но -- сит!
}

l_b = \lyricmode {
  \skipcommon
  Мно -- го лет не ви -- дим
  мы та -- ких день -- ков, а, бы -- ва -- ло,
  ча -- сто мы ви -- да -- ли их. __
  В_дни Е -- ли -- за -- ве -- ты чуд -- на -- я по --
  ра, __ луч -- ше бы -- ли ле -- то,
  о -- сень и вес -- на, __ вес -- на!
  Ох, уж мно -- го лет про -- шло, как не бы -- ло та -- ких день -- ков,
  а, бы -- ва -- ло, пре -- жде ча -- сто, ча -- сто мы ви -- да -- ли их.
  Дни Е -- ли -- за --
  ве -- ты что за чуд -- на -- я по -- ра!
  Ах, в_ста -- ри -- ну жи -- ло -- ся луч -- ше, ве -- се -- лей.
  Та -- ких ве -- сен -- них, яс -- ных дней дав -- но уж не бы -- ва -- ло!
}

pianoR = \relative c' {
  \key f \major
  \tempo "Allegro giusto" 4=126
  \time 3/4
  <a c f>8\f r <f' a f'>4. <f a e'>8 |
  <f bes d>8[ <f c'>] << { <c e bes'>8 r <f a>8 r } \\ 
                         { \toLeft \sl g,16 ( a bes c \toRight d e f fis ) } >> |
  g16( a bes c d e f fis g a bes c) | \abr
  a( c a g f a f d c f c a) |
  <f g>8. <e g>16 f c''( a f d c a f) |
  <f g>8. <e g>16 f c''( a f d c a f) | \abr
  <f a d>8[ r16 c'] b d'( b a f d c b) |
  a( b c d e fis gis a bes c d e |
  f8) r <f,, a f'>4.\f <f a e'>8 | \abr
  <f bes d>[ <f c'>] << { <c e bes'> r <f a> r} \\ 
                        {\toLeft \sl g,16(  a bes c \toRight d e f fis) } >> |
  g( a bes c d e f fis g a bes c) |
  a( c a g f a f d c f c a) | \abr
  <f a>8. q16 <fis a>8[ q] <gis b>[ q] |
  <a c>8. <gis b>16 a16( e a b c e a b |
  c8) r16 <e,, c'>16 <f c'>8[ q] <f b d> q | \abr
  << { <c' e>8. <b d>16 <a c>8 r s4 } \\{e8. e16 e( a c e g d b c) } >>
  d( e f g a c b d e f fis g) |
  g(\ff f g e) f( e f d) e( d e cis) | \abr
  d( d, a' c) bes( g) a( fis) g( d) fis( es) |
  g( e) fis( a) bes( a) g-. d-. bes-. a-. g-. d-. |
  r4 r <bes c e> | \abr
  
  r16\p a'''-. a( a,) r a-. a( a,) r a-. a( a,) |
  r\p a-. a( a') r a-. a( a') r a-. a( a') |
  r a-. a( a,) r a-. a( a,) r a-. a( a,) | \abr
  r a-. a( a') r a-. a( a') r a-. a( a') |
  r a-. a( a,) r a-. a( a,) r a-. a( a,) |
  r\mf a-. a( <f' a>) r e-. e( <fis a e'>) r e'-. e( <gis d' e>) | \abr
  r <a c e>-. q( e) r <fis, a e'>-. q( e) r <gis, d' e>-. q( e) |
  r <c' e a>-. q( a) r\> <e' a cis>-. q( cis) r <a' b d>-. q( d,) |
  r <a' cis e>-. q( e) r <e a cis>-. q( cis) r <a' d>-. q( d,) | \abr
  r\p a-. a( a') r a-. a( a') r a-. a( a') |
  r a-. a( a,) r a-. a( a,) r a-. a( a,) |
  r a-. a( a') r a-. a( a') r a-. a( a') \abr
  r a-. a( a,) r a-. a( a,) r a-. a( a,) |
  r\mf a-. a( <f' a>) r e-. e( <fis a e'>) r e'-. e( <gis d' e>) |
  r <a c e>-. q( e) r <fis, a e'>-. q( e) r <gis, d' e>-. q( e) | \abr
  r <c' e a>-. q( a) r <f' b d>-. q( d) r <c' e g>-. q( g) |
  r <es' as c>-. q( c) r <c es g>-. q( g) r <es fis c'>-. q( c) |
  << { \teeny <c'' e>8[ q] <e g>([ <a, c>)] <b d> q |
       <d f>[( <g, b>]) <a c>[ q] <b d> <c e>} \\
     { <e,, g c e>[ <c' e>] <e g>[( <a, c>]) <b d> q |
       <d f>([ <g, b>]) <a c>[ q] <b d> <c e> } >>  \abr
  << { <c' e>4. <a c>8( <g b>4~ | q8) s8 s2 } \\
     { <c, e>4. <a c>8( <g b>4~ | q8) <d' b' d> <c a' c>4( <b g' b>8 <a f' a>) } >>
  <a c>8[ q] <c e>([ <f, a>]) <g b> q |
  <b d>[( <e, g>]) <f a>[ q] <g b> <a c> | \abr
  <a c>4. <f a>8  <e g>4~ |
  q8 <b' g' b> <a f' a>4( <g e' g>8 <f d' f>) |
  f16(\pp d g e) a( f a f) d'( d, d' d,) |
  g(-\markup\italic"poco a poco crescendo" e a f) b( g b g) e'( e, e' e,) | \abr
  a( f b g) c( a c a) f'( f, f' f,) |
  b( g c a) d( b d b) g'( g, g' g,) |
  <bes c>( g <bes d> g) <bes e>( g <bes e> g) <bes c>( g <bes c> g) | \abr
  <bes c>( g <bes d> g) <bes e>( g <bes e> g) <bes c>( g <bes c> g) |
  <c e>( bes <d f> bes) <e g>( bes <e g> bes) <c e>( bes <d f> bes) |
  <c e>( bes <d f> bes) <e g>( bes <e g> bes) <c e>( bes <d f> bes) | \abr
  <c e>\f( bes <d f> bes) <e g>( bes <c e> bes) <d f>( bes <e g> bes) |
  <c e>( bes <d f> bes) <e g>( bes <c e> bes) <d f>( bes <e g> bes) |
  <c, e bes' c>8\ff q4 q q8 |
  q16( g' a bes c d e f g a bes c) | \abr
  
  f,8 r <f, a f'>4.\f <f a e'>8 |
  <f bes d>8[ <f c'>] << { <c e bes'>8 r <f a>8 r } \\ 
                         {\toLeft \sl g,16( a bes c \toRight d e f fis) } >> |
  g16( a bes c d e f fis g a bes c) |
  a( c a g f a f d c f c a) |  \abr
  <f g>8. <e g>16 f c''( a f d c a f) |
  <f g>8. <e g>16 f c''( a f d c a f) | 
  <f a d>8[ r16 c'] b d'( b a f d c b) | \abr
  a( b c d e fis gis a bes c d e |
  f8) r <f,, a f'>4.\f <f a e'>8 | 
  <f bes d>[ <f c'>] << { <c e bes'> r <f a> r} \\ 
                                     { \toLeft \sl g,16( a bes c \toRight d e f fis) } >> |\abr
  g( a bes c d e f fis g a bes c) |
  a( c a g f a f e d f c a) | 
  <f a>8. q16 <fis a>8[ q] <gis b>[ q] |\abr
  <a c>8. <gis b>16 a16( e a b c e a b |
  c8) r16 <e,, c'>16 <f c'>8[ q] <f b d> q |
  << { <c' e>8. <b d>16 <a c>8 r s4 } \\{e8. e16 e( a c e g d b c) } >> | \abr
  d( e f g a c b d e f fis g) |
  g(\ff f g e) f( e f d) e( d e cis) | 
  d( d, a' c) bes( g) a( fis) g( d) fis( es) |\abr
  g( e) fis( a) bes( a) g-. d-. bes-. a-. g-. d-. |
  r4 r <bes c e> | 
  <a c f>4 \bar "|."
  
}

pianoL = \relative c, {
  \key f \major
  
  <f f'>8 r d''4. c8 |
  bes[ a]  g8 r <f a c> r |
  <f g bes d>4. <f g bes des>8 <e g bes c>8. q16 | \abr
  << <f a c>2. \\ { r8 f,-. a-.[ c-.] f-. a-. } >>
  <bes d>8. <bes des>16 <a c>8-. a, c-.[ f-.] |
  <bes d>8. <bes des>16 <a c>8-. a, c-.[ f-.] | \abr
  < d f a b>8. <d f a c>16 \autoBeamOff <d f a d>8 d,-. \autoBeamOn f-.[ a-.] |
  <a c e>8 r << <c' e>2 \\ {<a c>4 <g bes> } >> |
  <<  <c f>8 \\ <f, a> >> r d'4. c8 | \abr
  
  bes[ a] g8 r <f a c> r |
  <f g bes d>4. <f g bes des>8 <e g bes c>8. q16 |
  <f a c>8-. f,-. a-.[ c-.] f-. a-. | \abr
  d8. d16 <c e>8[ q] <b d> q |
  <a c>8. <b d>16 <c e>8[ a] e c |
  a[ r16 <a' c>] <as c>8 q <g b>[ q] | \abr
  <fis a>8. <gis b>16 <a c>8[ <e e'>] <f f'> <d d'> |
  <b b'> <g g'> <e e'>[ <d d'>] <c c'> r |
  <cis a bes' cis>4 <d f a d> <e g cis e> | \abr
  <f a d f>8 <fis a d fis> <g d' g>[ <a d a'>] <bes d bes'> <c c'> |
  <bes d bes'>8. <a a'>16 <g g'>8[ <bes bes'>] <d d'> g |
  r4 r c, | \abr
  <f a c f>4 a'8 r a, r |
  a, a <g g'>4 <f f'> |
  <e a cis e>8 r << { b''8( cis d4) } \\ {<g, e'>4 f} >> | \abr
  a,8 a <g g'>4 <f f'> |
  <e a cis e>8 r << { b''8( cis d4) } \\ {<g, e'>4 f} >> |
  d8 d <c c'>4 <b b'> | \abr
  <a a'> <c c'> <b b'> |
  <a a'>8 q <g g'>4 <f f'> |
  <e e'> <g g'> <f f'> |\abr
  a8 a <g g'>4 <f f'> |
  <e a cis e>8 r << { b''8( cis d4) } \\ {<g, e'>4 f} >> |
  a,8 a <g g'>4 <f f'> | \abr
  <e a cis e>8 r << { b''8( cis d4) } \\ {<g, e'>4 f} >> |
  d8 d <c c'>4 <b b'> |
  <a a'> <c c'> <b b'> | \abr
  \dynamicUp <a a'>8\< q <as as'>4 <g g'> |
  <fis fis'>\f\> <g g'> <as as'>8 <as, as'> |
  \repeat tremolo 12 { g32\mf( g') } | \dynamicNeutral
  \repeat tremolo 12 { g,32( g') } \abr
  << { \acciaccatura g8( \voiceOne <a' c>8) q <c e>[ <f, a>] <g b> q }
     \new Voice {\voiceFour \teeny g,,2.:32} >>|
  << { \voiceOne <b'' d>8( <e, g>) <f a>[ q]( <g b> <a c>) }
     \new Voice {\voiceFour \teeny g,,2.:32} >>|
  << { \voiceOne <a'' c>2 <g b>4~ | q <f a>2 } 
     \new Voice { \voiceTwo b,4\rest g8 g\rest g4\rest | g8 g\rest g4\rest g8 g\rest }
     \new Voice {\voiceFour \teeny g,2.:32 g:32 } >>
  << { <f'' a>8 q <a c>[( <d, f>]) <e g> q }
     \new Voice {\voiceFour \teeny g,,2.:32} >>|
  << { <g'' b>8( <cis, e>) <d f>[ q]( <e g> <f a>) }
     \new Voice {\voiceFour \teeny g,,2.:32} >>|
  << { <f'' a>4~ q8 <d f> <e g>[ <f a>]} \new Voice { \acciaccatura g,8( \voiceTwo g2.) } >>
  << { < g' b>4~ q8 <e g> <f a>[ <g b>]} \new Voice { \acciaccatura g,8( \voiceTwo g2.) } >>
  << { <a' c>4~ q8 <f a> <g b>[ <a c>]} \new Voice { \acciaccatura g,8( \voiceTwo g2.) } >>
  << { <b' d>4~ q8 <g b> <a c>[ <b d>]} \new Voice { \acciaccatura g,8( \voiceTwo g2.) } >>
  << { <c' e>8 r r <bes c> q[ <bes d>]} 
     \new Voice { \voiceTwo g4. g8 g[ g]} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>> \abr
  << { <bes' e>4. <bes c>8 q[ <bes d>]} 
     \new Voice { \voiceTwo g4. g8 g[ g]} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>>
  << { <g' bes c e>4. q8 q[ <g bes d f>]} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>>
  << { <g' bes e g>4. <g bes c e>8 q[ <g bes d f>]} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>> \abr
  << { <g' bes e g>8 <g bes d f> <g bes c e>[ <g bes e g>] <g bes d f> <g bes c e>} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>>
  << { <g' bes e g>8 <g bes d f> <g bes c e>[ <g bes e g>] <g bes d f> <g bes c e>} 
     \new Voice {\voiceFour \teeny \repeat tremolo 12 { g,,32 g' } }>>
  \oneVoice \repeat tremolo 12 { g,32 g' }
  g,8 r r4 <g' bes c e g>8 r |
  
  <f a c f'>8 r d''4. c8 |
  bes[ a]  g8 r <f a c> r |
  <f g bes d>4. <f g bes des>8 <e g bes c>8. q16 | 
  << <f a c>2. \\ { r8 f,-. a-.[ c-.] f-. a-. } >> \abr
  <bes d>8. <bes des>16 <a c>8-. a, c-.[ f-.] |
  <bes d>8. <bes des>16 <a c>8-. a, c-.[ f-.] | 
  < d f a b>8. <d f a c>16 \autoBeamOff <d f a d>8 d,-. \autoBeamOn f-.[ a-.] |\abr
  <a c e>8 r << <c' e>2 \\ {<a c>4 <g bes> } >> |
  <<  <c f>8 \\ <f, a> >> r d'4. c8 |
  
   bes[ a] g8 r <f a c> r |
  <f g bes d>4. <f g bes des>8 <e g bes c>8. q16 |
  <f a c>8-. f,-. a-.[ c-.] f-. a-. | 
  d8. d16 <c e>8[ q] <b d> q |
  <a c>8. <b d>16 <c e>8[ a] e c |
  a[ r16 <a' c>] <as c>8 q <g b>[ q] | 
  <fis a>8. <gis b>16 <a c>8[ <e e'>] <f f'> <d d'> |
  <b b'> <g g'> <e e'>[ <d d'>] <c c'> r |
  <cis a bes' cis>4 <d f a d> <e g cis e> | 
  <f a d f>8 <fis a d fis> <g d' g>[ <a d a'>] <bes d bes'> <c c'> |
  <bes d bes'>8. <a a'>16 <g g'>8[ <bes bes'>] <d d'> g |
  r4 r c, | 
  <f, f'>4
}

pianopart = \new PianoStaff \with 
  { \consists #Span_stem_engraver 
    instrumentName = "Piano" 
  } <<
        \new Staff = "pianoRight" { \accidentalStyle piano-cautionary \oneVoice \pianoR }
        \new Staff = "pianoLeft" { \accidentalStyle piano-cautionary \clef bass << \oneVoice \pianoL >> }
      >>


\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
  ragged-last = ##f
  ragged-last-bottom = ##f
}

\bookpart { %piano and partcombine
  \header {
    piece = "Клавир + ноты хора"
  }
  \score { \keepWithTag #'combine 
    %  \transpose c bes {
    <<
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      
      \new Staff = "upstaff" \with {
        instrumentName = "Choir"
        shortInstrumentName = "Ch."
        midiInstrument = "voice oohs"
        
      } << 
        \accidentalStyle modern-voice-cautionary
        %\partcombine
          \femalevoices
          \malevoices
      >> 
      
      \new Lyrics \lyricsto "soprano" { \commonl \skipverse \commonl }
      \new Lyrics \lyricsto "tenor" { \l_t }
      \new Lyrics \lyricsto "bass" { \l_b}
      \context Lyrics = "sopranos" { \lyricsto "soprano" { \skipcommon \l_s } }
      \context Lyrics = "altos" { \lyricsto "alto" { \l_a } }
      \pianopart
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        printPartCombineTexts = ##f
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}

\bookpart { %piano and choir
  \header {
    piece = "Хор + клавир"
  }
  \score { \keepWithTag #'choir
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альты"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "soprano"  { \voiceOne  \s_I }
        \new Voice  = "alto"  { \voiceTwo  \a_I }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \commonl \l_s \commonl }
      \new Lyrics \lyricsto "alto" { \l_a }
      \new Lyrics = "tenors"
      \new Lyrics = "basses"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенора" "Басы" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "tenor" { \voiceOne \clef bass  \t_I }
        \new Voice = "bass" { \voiceTwo  \b_I }
      >>
      \context Lyrics = "tenors" { \lyricsto "tenor" { \l_t } }
      \context Lyrics = "basses" { \lyricsto "bass" { \l_b } }

    >>
      \pianopart
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}
  
\bookpart { %choir only
  \header {
    piece = "Хор"
  }
  \score { \keepWithTag #'choir
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альты"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "soprano" \with { \consists Ambitus_engraver } {\override Ambitus.X-offset = 2 \voiceOne \s_I }
        \new Voice  = "alto" \with { \consists Ambitus_engraver } { \voiceTwo \a_I }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \commonl \l_s \commonl }
      \new Lyrics \lyricsto "alto" { \l_a }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенора" "Басы" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "tenor" \with { \consists Ambitus_engraver } { \override Ambitus.X-offset = 2 \voiceOne \clef bass \t_I }
        \new Voice = "bass" \with { \consists Ambitus_engraver } { \voiceTwo \b_I }
      >>
      
      \new Lyrics \lyricsto "tenor" { \l_t }
      \new Lyrics \lyricsto "bass" { \l_b }
      
      >> 

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}

\bookpart { %piano and partcombine
  \header {
    piece = "Клавир"
  }
  \score { \keepWithTag #'combine 
    %  \transpose c bes {
    <<
      \pianopart
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        printPartCombineTexts = ##f
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}

\bookpart { % midi only
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \s_I}
        \new Voice  = "alto" { \voiceTwo \keepWithTag #'choir \a_I }
      >> 
           
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \keepWithTag #'choir \t_I }
        \new Voice = "bass" { \voiceTwo \keepWithTag #'choir \b_I }
      >>
    \pianopart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=126
    }
  }
}
