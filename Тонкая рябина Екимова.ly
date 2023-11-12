\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "Тонкая рябина"
  subtitle = "Русская народная песня"
  arranger = "Свободная обработка С. Екимова"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 45
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
%  system-separator-markup = \slashSeparator
  
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
    grob-interpret-markup grob (                         
      let (( dyntxt (ly:grob-property grob 'text ) )  )
      ( set! dyntxt (cond
        (( equal? dyntxt "f" ) "гр." ) 
        (( equal? dyntxt "p" ) "т." )
      )) #{ \markup \normal-text \italic $dyntxt #} )
    )) }

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
gl = { \once \override Glissando.style = #'zigzag \co \once \hideNotes d32\glissando \cof }
gll = { \once \override Glissando.style = #'zigzag \co \once \hideNotes d,32\glissando \cof }
toLeft = { \change Staff = "pianoLeft" \voiceOne }
toRight = { \change Staff = "pianoRight" \voiceTwo }

%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key a \minor
  \time 3/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \override DynamicText.X-offset = #-2.5
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \autoBeamOff
  \dynamicUp
  
}

sopone = \relative c'' {
  \global
  s2.*2
  b4~ b2~ |
  b2.
  
  s2.*2
  a4~ a2~ |
  a2. |
  
  s2.*2 
  d4~ d2~ |
  d |
  d2. |
  b2. |
  b4 e,2~ |
  e2. |
  e4( g) b |
  e2 d4 |
  d c2~ |
  c2. |
  d2 c4 |
  b2 a4 |
  b4 e2~ |
  
  e2. |
  s2.*4 |
  
  b,4( dis) fis |
  c'2 b4 |
  a g2~ |
  g2. |
  e4( g) b |
  e2 d4 |
  f! e2~ |
  e2. |
  d2 \tuplet 3/2 { c8[( d c]) } |
  b2 a4
  
  b4 e2~ |
  e2. |
  g,2 bes4 |
  d2 es4 |
  d c2~ |
  
  c2. |
  d,4( fis) a |
  es'2 d4 |
  c bes2~ |
  bes2. |
  
  g4( bes) d |
  g2 f4 |
  f-- es2--~ |
  es2. |
  f2 es4 |
  
  d2 c4 |
  d g,2~ |
  g2. |
  
  s2.*12 s16
  
  s2.*7 c4. des->~ |
  des8 s s2 |
  s2.*2
  bes4.~ bes~ |
  bes8 s s2 |
  f4( as) c |
  f2 es!4 |
  
  es-- des2--~ |
  des8 s s2 |
  s2.*7
  b,4( dis) fis |
  c'2 b4 |
  a g2~ |
  g2. |
  s2.*2
  
  s2.*6
  e4( g) b |
  g'2-- fis4-- |
  fis-- b,2--~ |
  b2. |
  
  d2 c4 |
  b2 a4 |
  b2 e4~ |
  e2.\fermata
}

soptwo = \relative c' {
  \global
  \mark \default
  \tempo Commodo 4=80-84
  e2\p^\markup\italic"dolce, legato" g4 |
  b2 c4 |
  \voiceTwo b4 a2~ |
  a2. | \abr
  
  \oneVoice b,4( dis) fis |
  c'2 b4 |
  \voiceTwo a4 g2~ |
  g2. |
  \oneVoice e4( g) b | \abr
  
  e2 d4 |
  \voiceTwo d c2~ |
  \time 2/4 c2 |
  \time 3/4 d2 c4 |
  b2 a4 | \abr
  
  b4 e,2~ |
  e2. |
  e4( g)\< g |
  c2\! b4 |
  b a2~ | \abr
  
  a2.\> |
  a2\! a4 |
  g2 fis4 |
  g4 e2~ | \pbr
  
  e2. |
  \mark \default
  \oneVoice e2\mp g4 |
  b2 c4 |
  b a2~ |
  a2. | \abr
  
  \voiceTwo b,4\<( dis) fis |
  a2\! a4\> |
  a g2~ |
  g2.\! |
  e4(\< g) b\! | \abr
  
  c2\< d4\! |
  d\> c2~ |
  c2. |
  d2\p \tuplet 3/2 { c8[( d c])} |
  b2 a4 | \pbr
  
  b4\> e2~ |
  e2.\! |
  \mark \default
  g,2\mf g4^\markup\italic"Poco cresc." |
  bes2 bes4 |
  d c2~ | \abr
  
  c2. |
  d,4(\< fis) a |
  c2 d4 |
  c bes2~ |
  bes2. | \abr
  
  g4( bes) d |
  es2\! d4 |
  d-- c2--~ |
  c2. |
  d2^\markup{\italic meno \dynamic f}\> c4\! | \pbr
  
  bes2\mp\>^\markup\italic"rall." c4  |
  d\p\>\glissando_\markup\italic"port." g,2~ |
  g2.\pp |
  \mark \default
  \oneVoice
  \tempo "a tempo"
  
  R2.*2 | \abr
  
  R2. |
  \gl d'2.->\ppp( | 
  e2.) |
  cis |
  a  | \abr
  
  \gll d'2.->\ppp |
  d,4(\< f) a |
  d2\! c4\> |
  c bes2~ |
  bes2.\! | \pbr
  
  c2\> bes4 |
  a2 g4 |
  a d2~ |
  d2.\!\laissezVibrer |
  
  \mark \default
  R2.*3 |
  \voiceTwo c4.\f->~ c~ |
  c8 \oneVoice r r2 |
   R2.*2 |
  \voiceTwo bes4.-> as->~ |
  as8 \oneVoice r r2 |
  \voiceTwo f4\f(\< as) c |
  es\!( des) des8[( c]) | \pbr
  
  c4-- bes2--~\> |
  bes8\! \oneVoice r r2 |
  R2.^\markup\italic"rall."
  R2. |
  g?4.^\markup\italic"rit."\>( fis) | \abr
  \mark \default \tempo "a tempo" e2\pp  g4 |
  b2 c4 |
  b a2~ |
  a2. |
  \voiceTwo b,4( dis) fis | \abr
  a2 a4 |
  a g2~ |
  g2. |
  \oneVoice e4\<( g) b |
  e2 d4\! \pbr
  
  d c2~\> |
  c2. |
  d2\p c4 |
  b2 a4^\dim |
  b e,2~\cresc | \abr
  
  e2. |
  \tempo Расширяя \voiceTwo e4\mf\<( g) g |
  e'2-- d4-- |
  d--\! fis,2-- |
  e'2.^\markup\italic"(Eco)" | \abr
  \tempo "Meno mosso" b2\p e4 |
  g,2 fis4 |
  g2^\markup\italic"rit." e4~\pp |
  e2. \bar "|."
  

}

altone = \relative c'' {
  \global
s2.*2 |
g4~ g2~ |
g2. |

s2.*2
fis4~ fis2~ |
fis2. |

s2.*2 |
b4~ b2~ |
b |
b2. |
g2. |
g4 e2~ |
e2. |
e4~ e e |
g2 gis4 |
a4 a g? |
fis2 e4 |
e( g) fis |
e2 dis4 |
g4 e2~ |

e2. |
s2.*6
fis4 e2~ |
e2.  |
s2.*4
fis2 fis4 |
fis2 g4

g4 e2( |
fis2.) |
s2.*8 |
g2 bes4 |
bes2 g4 |
s2.*3

s2.*4
a2 bes4 |
a~ a2~ |
a2. s32|
a,4( cis) e |
bes'2 a4 |
s2.*6 s32

s2.*7
as4.~ as~ |
as8 s s2 |
s2.*2 |
g4.~ g~ |
g8 s s2 |
f4~ f f |
as2 f4 |

f4 f2~ |
f8 s s2 |
s2.*8
dis2 fis4 |
s2.*4

s2.*6
e2 g4 |
c2 a4 |
a fis2~ |
fis2. |
g2 a4 |
g2 fis4 |
e2 e4~ |
e2.

  
}

alttwo = \relative c' {
  \global
  e2\p^\markup\italic"dolce, legato" g4 |
  g2 a4 |
  \voiceTwo g4 fis2~ |
  fis2. |
  
  \oneVoice b,4~ b <b dis> |
  a'2 g4 |
  \voiceTwo fis4 e2~ |
  e2. |
  \oneVoice e2 g4 |
  c2 b4 |
  \voiceTwo b a2~ |
  a |
  b2 a4 |
  g2 fis4 |
  g4 e2~ |
  e2. |
  e4~ e d |
  c b2 |
  a4 a2~ |
  a2. |
  b2 a4 |
  b( cis) dis |
  g e2~ |
  
  e2. |
  \oneVoice e2\mp e4 |
  g2 a4 |
  g4 fis2~ |
  fis2. |
  
  b,4( dis) dis |
  dis( e) fis |
  \voiceTwo fis e2~ |
  e2.\> |
  \oneVoice e2\! g4 |
  
  g2 b4 |
  b a2~ |
  a2.\> |
  \voiceTwo fis2\p fis4 |
  fis2 e4 |
  
  g4\> e2( |
  fis2.)\!\< |
  \oneVoice g4\f( fis) f |
  e?( a) g |
  f es2~ |
  
  es2. |
  d2_\< fis4 |
  fis( a) bes |
  a g2~ |
  g2.\! |
  
  \voiceTwo g2 g4 |
  g2 g4 |
  \oneVoice as4-- g2--~ |
  g2. |
  f2^\markup{\italic meno \dynamic f} g4 |
  
  g2\> a4 |
  bes4\!\glissando_\markup\italic"port." g2\>( |
  cis,2.)--\pp |
  d2\pp f4 |
  \voiceTwo a2 bes4 |
  a4 g2~ |
  g2. s32  |
  a,4( cis) e |
  bes'2 a4 |
  \oneVoice g4 f2~ |
  f2. s32 |
  bes,4( d) f |
  f2 a4 |
  a g2~ |
  g2. |
  
  g2 f4 |
  g( f) e |
  f d2(\< |
  e2.)\!\laissezVibrer |
  R2.*3 |
  \voiceTwo as4.\f-> g->~ |
  g8 \oneVoice r r2 |
  R2.*2 |
  \voiceTwo g4.-> f->~ |
  f8 \oneVoice r r2 |
  \voiceTwo f4\f(\< es) es |
  des2\! c4 |
  
  bes4-- bes2--~ |
  bes8 \oneVoice r r2 |
  R2.*2 |
  g'?4.(\> fis) |
  e2\pp e4 |
  g2 a4 |
  g fis2~ |
  fis2. |
  b,2 dis4 |
  \voiceTwo dis2 fis4 |
  \oneVoice fis e2~ |
  e2. |
  c4(\< e) g |
  d'( c) b\! |
  
  b4 a2\>~ |
  a2. |
  b2\p a4 |
  e fis2\dim |
  g4 e2(\cresc |
  d2.) |
  \voiceTwo e2\mf\< e4 |
  g2 fis4 |
  fis\! d2~ |
  << d2. { s8\> s s s s s\! } >> |
  e2\p fis4 |
  e2 dis4 |
  e2 e4\pp~ |
  << e2. { s8\> s s s s s\! } >>
  
  
  
  
  

}

tenone = \relative c' {
  \global
s2.*11 s2 s2.*11
s2.*17
bes2.( |
d |
es2) g8[( f]) |
es4( d) c |
d4. d |
s2.*3

g,4( bes) d |
g2 f4 |
f-- es2~-- |
es2. |
s2.

s2.*4
f2 g4 |
f~ f2~ |
f2. s32|
a,4( cis) cis |
s2.*2 s32
s2.*5

s2.*4
f,2 as4 |
c2 des4 |
c4 bes2~ |
bes2. |
c,4( e) g |
des'2 c4 |
bes4 as2~ |
as2. |
f4( as) c |
f2 es!4 |
es-- des2--~

des2. |
es2 des4 |
c2 bes4 |
c f2\( |
es2.\) |

s2.*10

s2.*6
g,4. d' |
c2 c4 |
b b2~ |
b2. |
c2 c4 |
c( b) b |
b2 e4~ |
e2.

  
}

tentwo = \relative c' {
  \global
R2.*11 R2 R2.*11
R2. |
e2.\mp(
d |
cis |
c) |
b( |
a2) b4 |
b b2~ |
b2.\> |
b2\! e4 |
e2 e4 |
e e2~ |
e2.\> |
g2\p fis4 |
fis( e) cis |

b4 e2( |
c?2.) |
\voiceTwo bes2.\mf( |
d |
bes |
g)

d'4. d |
\oneVoice
d4( c) es |
es( d es) |
d( es d) |

\voiceTwo
g,( bes) d |
f4( es) f |
f-- es2--~ |
es2. |
\oneVoice
d2^\markup{\italic meno \dynamic f} c4

\dynamicDown
d4(\> e?) fis |
g\! g2(\> |
g,2.--)\pp |
\dynamicUp
d'2\pp d4 |
\voiceTwo f2 g4 |
f4 e2~ |
e2. s32|
a,4( cis) cis |
\oneVoice g'4( f?) e |
e d2~ |
d2. s32|
f,4( d) d' |
d2 d4 |
es d2~ |
d2.

e2 d4 |
cis2 a4 |
a d2(\< |
bes2.)\! |
\voiceTwo f2\f f4 | \abr

as2 bes4 |
as4 g2~ |
g2. |
c,4( e) g |
bes2 as4 | \abr
g as2~ |
as2. |
f4~\< f as!\! |
es'( des) des8[( c]) |
c4-- bes2--~ |

bes2. |
bes4( as2)^\markup\italic"dim. poco a poco" |
as g4^\markup\italic"rall." |
as f'2( |
<< es2.) {s8\> s s s s s\! } >> |
\oneVoice
e?2\pp e4 |
e2 e4 |
e e2~ |
e2. |
b2 b4 |
fis'2 dis4 |
dis e2~ |
e2. |
g,4( c) e |
g2 f?4 |

f e2~\> |
e2. |
d2\p e4 |
b4. dis |
e4 e,2~\cresc |
e2. |
\voiceTwo g4.\! d' |
c2 c4 |
b4 b2~ |
<< b2. { s8\> s s s s s\! } >> |

c2\p a4 |
a2 b4 |
b2 e,4\pp~ |
<< e2. { s8\> s s s s s\! } >>







}

bassone = \relative c {
  \global
s2.*11 s2 s2.*11
s2.*17
d2.( |
g |
g |
a) |
d,4. d |
d fis |
g2. |
f |
g4. g |
bes2 b4 |
b-- c2~ |
c2. |
bes4( b) c

d2\laissezVibrer s4
s2.*6 s32
s2.*4 s32
s2.*4

s2.*2
d,4 d2(\< |
g2.) |
f4\!( e) f |

f2 f4 |
f f2~ |
f2. |
c2 e4 |
e( g) e |
g f2~ |
f2. |
f2 f4 |
as2 f4 |
f f2~ |

f2. |
g2~ g8 f |
e!4( f) g |
as f2( |
a!2.) |
e2.~ |
e~ |
e |
e->~ |
e~ |
e~ |
e( |
d) |
s2.*2

s2.*6
c4. g' |
e2 d4 |
d d2( |
c2.) |
e2 e4 |
b4( cis) dis |
e2 e4~ |
e2.
  
}

basstwo = \relative c {
  \global
R2.*11 R2 R2.*11
b4( cis dis) |
e2.\mp~ |
e~ |
e~ |
e |

b'2 a4 |
g( fis) dis |
e4 e2( |
d2.)\> |
cis4.\! cis |

c4( g') gis |
a a2( |
g4.--\> fis--) |
b2\p \tuplet 3/2 { a8[( b a]) } |
g2 fis4 |

g4\> e2( |
d2.\!\<) |
\voiceTwo g,2.(\f |
bes |
c |
c) |
d4._\< d |
d fis |
g2. |
f?\! |
g4. f |
es2 d4 |
c-- c-- g'-- |
d'--( c--) a?-- |
bes^\markup{\italic meno \dynamic f}( b) c |

d2\laissezVibrer \oneVoice r4
s2. |
a,2.-- |
d~\p |
d~ |

d~ |
d s32 |
a4. a |
a2 cis4 |
d d2\( |
c2.-> s32\) |
bes4( bes') a |
c( bes) fis |
g g f?\( |
e4. d\) |

c4\>( bes) a8[( g]) |
a4( b?) cis |
\voiceTwo d4 d2(\! |
c2._\<) |
f4\f( e) es |
d( des) c |
bes des2~ |
des2. |
c2 c4 |
c2 e4 |
f f2~ |
f2. |
f4( es) d? |
des2 a?4 |
bes4-- bes2--( |

g2.)\> |
c2\! bes4 |
c( d!) e! |
f f2( |
<< b,!2.) {s8\> s s s s s\!} >> 

e2.\p~ |
e~ |
e |
e,->~ |
e~ |
e~ |
e\( |
d'\) |
c4(\< g') b |
c2 gis4\! |
\oneVoice a4 a\> a\( |
g4. fis\) |
g4\p( fis) e |
dis4. b'\dim |
b4 e,2(\cresc |
d2.) |
\voiceTwo c4.\mf\< b |
a2 d4 |
g,4\! g2( |
<< c2.) { s8\> s s s s s\! } >> |
a2\p fis4 |
b( cis) dis |
e2 e,4\pp~ |
<< e2.\fermata { s8\> s s s s s\! } >>








}

lyricsopup = \lyricmode {
  Что сто -- ишь, ка -- ча… \skip 1
  тон -- ка -- я ря -- би… \skip 1
  го -- ло --
  вой скло -- ня… \skip 1
  до… \skip 1 мо… \skip 1
  \repeat unfold 2 \skip 1
  Го -- ло -- вой скло -- ня -- ясь…
  до са -- мо -- го ты -- на?
  А че -- рез до -- ро -- гу,
  за ре -- кой ши -- ро -- кой,
  
  \repeat unfold 12 \skip 1
  Как бы мне, ря -- би -- не,
  к_ду -- бу пе -- ре -- бра -- ться,
  я_б то -- гда не ста -- \set associatedVoice = "sopup" ла
  
  \repeat unfold 6 \skip 1
  не -- льзя к_ду… 
  Знать, ей си -- ро -- ти -- \set associatedVoice = "soptwo" не…
  Мм…
}

lyricsop = \lyricmode {
 \skip 1 \skip 1 \skip 1 ка -- ча -- ясь,
 \repeat unfold 4 \skip 1 би -- на,
 \repeat unfold 3 \skip 1 скло -- ня -- ясь
 до са -- мо -- го ты -- \set associatedVoice = "AlternativeAlt" на?
 \repeat unfold 3 \skip 1   скло --  ня --   ясь,
  скло -- ня -- \set associatedVoice = "soptwo" ясь
  
  \repeat unfold 72 \skip 1 не… к_ду -- бу 

 
}

lyricalt = \lyricmode {
  \repeat unfold 48 \skip 1
  так же о -- ди -- но -- ко дуб сто -- ит вы -- со -- кий.
  
  \repeat unfold 18 \skip 1
  гну -- ться и ка -- ча -- ться.
  Тон -- ки -- ми ве -- твя -- ми
  я_б к_не -- му при -- жа -- лась
  и с_е -- го ли -- ста -- ми
  
  день и ночь ше -- пта -- лась.
  
  \repeat unfold 11 \skip 1
  Что сто -- ишь, ка -- ча -- ясь, то -- нка --
  я ря -- би -- на, го -- ло -- вой скло --
  ня -- ясь до са -- мо -- го ты -- на?
  Го -- ло -- вой скло -- ня -- ясь
  до са -- мо -- го ты -- на…
}

lyricalta = \lyricmode {
  \repeat unfold 36 \skip 1
  твя… 

}

lyrictenup = \lyricmode {
 \skip 1 
}

lyricten = \lyricmode {
 А… за… ши -- ро -- кой,
 \repeat unfold 12 \skip 1
 \set associatedVoice = "tenup" Ву… …ря -- би -- 
 \set associatedVoice = "tentwo" не к_ду -- бу пе -- ре -- бра -- ться
 я_б то -- гда не ста -- ла
 
 \repeat unfold 30 \skip 1
 Но нель -- зя ря -- би -- не к_ду -- бу пе -- ре -- бра -- ться.
 Знать, ей си -- ро -- ти -- \set associatedVoice = "tenup" не
 век од -- ной ка -- ча -- ться. Мм…
}

lyricbass = \lyricmode {
  Мм… А…
  за ре -- кой ши -- ро -- кой,
  \repeat unfold 25 \skip 1
  …не ста -- ла
  
  \repeat unfold 3 \skip 1 А… А…
  Я_б к_не -- му при -- жа -- лась, ой…
  и с_е -- го ли -- ста -- ми, ли -- ста -- ми
  \repeat unfold 30 \skip 1
  Мм… Ой… А…
  \repeat unfold 6 \skip 1
  скло -- ня -- ясь
}



\bookpart {
%  \paper { }

\score {
  %  \transpose c bes {   
    \new ChoirStaff <<
    
%    \new Lyrics = "sopup"
      \new Staff = "staffone" \with {
        instrumentName = "С"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "sopup" { \voiceOne \sopone }
        \new Voice = "soptwo" { \soptwo }
      >>
      \new Lyrics \lyricsto "soptwo" { \lyricsopup }
      \new Lyrics = "lsoptwo"

%    \new Lyrics = "altup"
     \new Staff = "stafftwo" \with {
        instrumentName = "А"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "AlternativeAlt" { \voiceOne \altone }
        \new Voice = "alttwo" { \alttwo }
      >> 
      \new Lyrics \lyricsto "AlternativeAlt" { \lyricalta }
      \new Lyrics \lyricsto "alttwo" { \lyricalt }

    \new Lyrics = "tenup"      
      \new Staff = "staffthree" \with {
        instrumentName = "Т"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenup" { \voiceOne  \tenone }
        \new Voice = "tentwo" { \clef "treble_8" \tentwo }
      >>       
      \new Lyrics \lyricsto "tentwo" { \lyricten }

%    \new Lyrics = "bassup"      
      \new Staff = "stafffour" \with {
        instrumentName = "Б"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bassone" { \voiceOne  \bassone }
        \new Voice = "basstwo" { \clef "bass" \basstwo }
      >>
      \new Lyrics \lyricsto "basstwo" { \lyricbass }
      
      \context Lyrics = "lsoptwo" { \lyricsto "soptwo" { \lyricsop } }
%      \context Lyrics = "sopup" { \lyricsto "sopone" { \lyricsopup } }
%      \context Lyrics = "altup" { \lyricsto "altone" { \lyricaltup } }
      \context Lyrics = "tenup" { \lyricsto "tenup" { \lyrictenup } }
%      \context Lyrics = "bassup" { \lyricsto "bassone" { \lyricbassup } }
      
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}

\score {
  %  \transpose c bes { 
  \articulate
    \new ChoirStaff <<
    
      \new Staff = "staffone" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "sopup" { \voiceOne \sopone }
        \new Voice = "soptwo" { \soptwo }
      >>

     \new Staff = "stafftwo" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "AlternativeAlt" { \voiceOne \altone }
        \new Voice = "alttwo" { \alttwo }
      >> 

    \new Lyrics = "tenup"      
      \new Staff = "staffthree" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenup" { \voiceOne  \tenone }
        \new Voice = "tentwo" { \clef "treble_8" \tentwo }
      >>       

      \new Staff = "stafffour" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bassone" { \voiceOne  \bassone }
        \new Voice = "basstwo" { \clef "bass" \basstwo }
      >>     
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=126
    }
}  

}
