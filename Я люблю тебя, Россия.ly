\version "2.24.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\include "articulate.ly"

\header {
  title = "Я люблю тебя, Россия"
  composer = "Д. Тухманов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" } 
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  \squaremarks
  
    \key es \major
    \time 4/4
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*2
  \mark 1
  r4 es8\f f as g f es |
  g2 es |
  r4 d8 es g f d es |
  c1~ |
  8 r c d es f g c | \abr
  
  c2 bes |
  r4 bes8\mp bes d c bes c |
  bes2( b) |
  r4 es8 d f es d c | \abr
  
  es2\f d |
  r4 g,8 g es' d c b |
  c4.( bes16[ c] bes2) |
  r4 f8 g bes as g f | \abr
  
  c'2 g |
  r4 f8 g f d g f |
  c1~ 1~ | \abr
  
  8 r \mark 2 r4 r2 |
  es2.~( 8.[ f16] |
  g2.) r4 | \abr
  
  r2 r4 f( |
  es8) r r4 r2 |
  c'2( bes) |
  r4 bes8 bes d8 c bes8 c | \abr
  
  bes2( b) |
  c1\p(_\markup\italic"А..." as) |
  
  r4 g8 g es' d c b |
  
  
  % page 2
  c2( bes) |
  r4 f8 g bes as g f |
  c'2 g |
  r4 f8 g f d g f | \abr
  
  c2 \breathes <g' bes>( |
  a2 as |
  g8) r \mark 3 es f as g f es |
  g2 es | \abr
  
  r4 d8 es g f d es |
  c2( f2 |
  es8) r c d es f g c |
  <c as>2 <bes as>~( |
  1 |
  g2 f) |
  r4 es'8 d f es d c |
  es2 d |
  r4 g,8 g es' d c b |
  c4.( bes16[ c] bes2) |
  
  
  
  %page 3
  r4  f8 g bes as g f |
  c'2 g |
  r4 f8 g f d g f | \abr
  
  c2( e) |
  \mark 4 r4 f8 g bes as g f |
  c'2 g4 \breathes <c es>8 q | \abr
  
  <c d>2( <b d>) |
  <g c>2 \breathes bes( |
  a  as | \abr
  
  
  g4) \breathe c c <c d> |
  <c e>1\fermata \bar "||"
  
  }


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*2
  r4 es8 f as g f es |
  es2 es |
  r4 d8 es g f d es |
  c1~ |
  8 r c d es f g c | \abr
  
  as2 as |
  r4 as8 as as as as\> f |
  g2\p(\> f)\! |
  es2 g4 g | \abr
  
  as2 as |
  r4 g8 g g g g f |
  es2\> e\! |
  r4\p f8 g bes as g f | \abr
  
  es2 es |
  r4 d8 d d d d d |
  c4 r bes2( |
  a as | \abr
  
  bes8) r8 r4 r2 |
  bes1( |
  d2.) r4 | \abr
  
  r2 c2~ |
  8 r r4 r2 | 
  as'1|
  r4 bes8 bes as8 as as8 as | \abr
  
  g2( f) |
  r4 es8 d f es d c |
  es2 d |
  r4 g8 g g g g f | \abr
  
  
  %page 2
  es2( e) |
  r4 f8 g bes as g f |
  c'2 g( |
  d1) |
  
  c2 es( |
  f2 es)~ |
  8 r es f as g f es |
  g2 es |
  
  r4 d8 es d d d es |
  c1~ |
  8 r c d es d es g |
  as8[( g f es]) d2( |
  
  f1 |
  es2 d) |
  r4 g8 f as g f es |
  
  as2 as |
  r4 g8 g g f es f |
  es2\> e\!
  
  
  % page 3
  r4 c8 c f f es d |
  es2 es |
  r4 d8 d d d d d |
  
  c1 |
  r4 f8 g bes as g f |
  es2 es4 g8 g |
  
  as4 f8 g f8 d g f |
  es2 g( |
  f es |
  es4) c' as as |
  g1
  
}


tenorvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*2
  r4 es8 f as g f es |
  bes'2 g |
  r4 b8 b b b b b |
  g2( a |
  g8)\! r c,8 d es f g c | \abr
  
  es2 d4 \breathe bes8\mp c |
  d2( f8) es d \> d |
  es2\p\>( d)\! |
  c2 c4 c8[( es)] | \abr \abr
  
  c2 c |
  r4 g8 g b b c d |
  c1 |
  r4 f,8 g bes c c c | \abr
  
  c2 c |
  r4 c8 c b b b b |
  g4 r g2\f( |
  a2 as \breathe | \abr
  
  g8) r r4 r2 |
  g1 |
  b2. r4 | \abr
  
  r4 g4( \after 4 \> \after 2 \! a2\<  |
  g8) r r4 r2 |
  es'2\f d |
  r4 bes8 bes f'8 es d8 d | \abr
  
  es2(\> d)\! |
  r4 c8 c c c c c  |
  c2 c |
  r4 g8 g g' f es d
  
  
  %page 2
  c1
  r4 f,8 g bes as g f |
  c'2 g( |
  c b |
  
  c2) \breathes bes( |
  c1~ |
  8) r es, f as g f es |
  bes'2 g |
  
  r4 b8 b b b b b |
  g2( a |
  g8) r c c c c c es |
  f2 f |
  
  r4 bes,8 bes d c bes c |
  bes2( b) |
  c4. c8 c c c c |
  
  c2 c |
  r4 g8 g b b c d |
  c1 |
  
  
  
%page 3
r4 as8 bes d d es d |
c2 c |
r4 c8 c b b b b |

c2( bes) |
r4 f8 g bes as g f |
c'2 c |

r4 c8 c d d d d |
es2 \breathes es(
c1~ |
4) \breathes c f f |
e1
  
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*2
  r4 es8 f as g f es |
  es2 es |
  r4 g8 g g g f f |
  es2\<( f\> |
  es8\!) r c8 d es f g c | \abr
  
  as2 bes4 \breathe bes,8 bes |
  bes'2~ bes8 bes bes as |
  g1 |
  c,2 es4 g | \abr
  
  f2\f f |
  r4 g8 g g g g g |
  as2(\> g)\! |
  r4\p f8 g bes c bes as |
  g2 g |
  r4 as8 as g g <g g,> q |
  <c, es>4 r es2(<f f,>2\> <es as,>\! | \abr
  
   <c es>8) r es8.\f f16 as8. g16 f8. es16 |
  g2 es |
  r4 d8 es g f d8 es |
  
  c2 r |
  r4 c8. d16 es8. f16 g8. c16 |
  c2 bes |
  r4 bes8 bes bes8 bes bes8 bes | \abr
  
  es,2( g) |
  r4 g8 g g g g g |
  as2 as |
  g4. g8 g g g g 
  
  
  %page 2
  as2( g) |
  r4 f8 g bes as g f |
  c'2 g( |
  as g |
  
  c2) es,( |
  f as |
  c8) r es, f as g f es |
  es2 es |
  
  d4 <d g> <g g,>8 q  q q |
  <es c>1 |
  r4 c'8 c c c c bes |
  as2 bes |
  
  R1*2 |
  c,4. c8 c' c c c |
  
  f,2 f |
  r4 g8 g g g g g |
  as2( g)
  
  
  %page 3
  f4. f8 f f g as |
  g2 g4 g8 g |
  as4. as8 g g <g g,> q |
  
  c,2( g') |
  r4 f8 g bes as g f |
  g2 g |
  
  r4 as8 as g g g g |
  c,2 es( |
  f as |
  c4) c, c' c |
  c1\fermata
  
}

lyricscores = \lyricmode {
  \set stanza = "1. "
  Я люб -- лю те -- бя, Рос -- си -- я,
до -- ро -- га -- я на -- ша Русь.
Не -- рас -- тра -- чен -- на -- я си -- ла, 
не -- раз -- га -- дан -- на -- я грусть.
Ты раз -- ма -- хом не -- объ -- ят -- на,
нет ни в_чём те -- бе кон -- ца.
Ты ве -- ка -- ми не -- по -- нят -- на
чу -- же -- зем -- ным муд -- ре -- цам.

А...
А...
А...

ду -- шу рус -- ску -- ю у -- \set associatedVoice = "alto" бить,
но не -- льзя те -- бя, я зна -- ю,
ни сло -- мить, ни за -- пу -- гать.
Ты мне_- Ро -- ди -- на род -- на -- \set associatedVoice = "soprano"  я,
воль -- ной во -- лей до -- ро -- га. А...

\set stanza = "3. "
Ты до -- бром сво -- им и лас -- кой,
ты ду -- шой сво -- ей силь -- на.
Не -- рас -- ска -- зан -- на -- я сказ -- ка,

Я в_бе -- рё -- зо -- вы -- е сит -- цы
на -- ря -- дил весь бе -- лый свет.
Мне всю жизнь то -- бой гор -- дить -- ся,
без те -- бя мне сча -- стья нет!

Мне всю жизнь то -- бой гор -- дить -- ся,
без те -- \set associatedVoice = "alto" бя, без те -- бя  мне сча -- стья нет!

А... Род -- на -- я Русь! 
}

lyricscoreb = \lyricmode {
  
\repeat unfold 17 \skip 1

 _ _ _ _ _ _  не -- раз -- га -- дан -- на -- я грусть

ты не -- объ -- ят -- на
\repeat unfold 22 \skip 1
А...

\set stanza = "2. "
Мно -- го раз те -- бя пы -- та -- ли,
быть Рос -- си -- и иль не быть,
Мно -- го раз в_те -- бе пы -- та -- лись 

\repeat unfold 39 \skip 1
ты ду -- шой сво -- ей силь -- на.

\set associatedVoice = "tenor" 

%Мно -- го раз в_те -- бе пы -- та -- лись
%\repeat unfold 40 \skip 1 
%ты ду -- шой силь -- \set associatedVoice = "tenor"  на

\repeat unfold 8 \skip 1

си -- не -- о -- ка -- я стра -- на, \set associatedVoice = "bass" я...

\repeat unfold 22 \skip 1

без те -- бя, те -- бя мне  счасть -- я нет!

}

scoreARight = \relative c' {
  \global
  << {
    c''2 bes |
    a as |
     } \\ {
       \tupletSpan 4 \tuplet 3/2 { <c, es g>8 q q q q q  <bes es g> q q q q q |
       <a c f> q q q q q <as c es> q q q q q }
  } >>
  
  %verse 1
   \mark 1 <g c es g>2 r4 <es as c> |
  
  %verse 2-nd score
  g2 es |
  <f g b>4 d8 es g f d es |
  c4 <es g> <c f a> <f a c> |
  
  <es g c>4 c8 d es f g c |
  <es, as c>4 \tuplet 3/2 { <as c es>8 <c es as> <es as c> } <d, as' bes>4 \tuplet 3/2 { <as' bes d>8 <bes d f> <d f as> } |
  <f as bes>4 <f, as bes>2 <f as d>4
  
  <g bes>2 <f g b> |
  r4 <g c es> <g c f> <g c es> |
  <g as c es>2( <f as c d>)
  r4
  << {
    g8 g es' d c b
     } \\ {
      d,4 <f g b>2
  } >>
  
  <es as c>
  << <g bes>2 \\ {e4( c) } >>
  <c f as>2 << {f4 g} \\ d2 >>
  
  <es c'>2 <es g> |
  r4 <as d f>4 <d, f>8 <b d> <es g> <d f>
  %verse finished
  
  %sign 2
  \tupletSpan 4 \tuplet 3/2 {
   <c es g>8 q q q q q <es g bes> q q q q q |
   <c f a> q q q q q <c es as> q q <es as> q q  } |
  <c es g c>2  \mark 2 <es as c>4 q
  %sign 2 finished
  
    %verse 2-nd score
  <bes es g>4 q q q |
  <f' g b>4 q q q |
  <c es g>4 q <c f a> <f a c> |
  
  <es g c>4 q q q |
  <es as c>4 < as c es> <d, as' bes>4 < as' bes d> |
  <f' as bes>4 <f, as bes>4 q <f as d>4
  
  <g bes>4 q <f g b> q|
  r4 <g c es> <g c f> <g c es> |
  <g as c es>2( <f as c d>)
  r4
  << {
    g8 g es' d c b
     } \\ {
      d,4 <f g b>2
  } >>
  
  <es as c>
  << <g bes>2 \\ {e4( c) } >>
  <c f as>2 << {f4 g} \\ d2 >>
  
  <es c'>2 <es g> |
  r4 <as d f>4 <d, f>8 <b d> <es g> <d f>
  %verse finished
  
    %sign 2
  \tupletSpan 4 \tuplet 3/2 {
   <c es g>8 q q q q q <es g bes> q q q q q |
   <c f a> q q q q q <c es as> q q <es as> q q  } |
  <c es g c>4  \mark 3 es8 f as g f es
  %sign 2 finished
  
    %verse 2-nd score
  g2 es |
  <f g b>4 d8 es g f d es |
  c4 <es g> <c f a> <f a c> |
  
  <es g c>4 c8 d es f g c |
  <es, as c>4 \tuplet 3/2 { <as c es>8 <c es as> <es as c> } <d, as' bes>4 \tuplet 3/2 { <as' bes d>8 <bes d f> <d f as> } |
  <f as bes>4 <f, as bes>2 <f as d>4
  
  <g bes>2 <f g b> |
  r4 <g c es> <g c f> <g c es> |
  <g as c es>2( <f as c d>)
  r4
  << {
    g8 g es' d c b
     } \\ {
      d,4 <f g b>2
  } >>
  
  <es as c>
  << <g bes>2 \\ {e4( c) } >>
  <c f as>2 << {f4 g} \\ d2 >>
  
  <es c'>2 <es g> |
  r4 <as d f>4 <d, f>8 <b d> <es g> <d f>
  %verse finished
  
  %sign
  \tupletSpan 4 \tuplet 3/2 { <c es g>8 q q <es g> q q <c e g bes> q q q q q }
  

  \mark 4  r4 f8 <es g> <g bes> <f as> <es g> <d f> |
  <es g c>2 <c es g> |
  r4\fermata f8 g f d <es g> <d f> |
  
  <c c'>4 \tupletSpan 4 \tuplet 3/2 { <es' g c>8 q q <es g bes c> q q q q q |
   <f a c> q q q q q <f as c> q q q q q }
  \repeat tremolo 16 { <g c>32 <c, es> }
  \repeat tremolo 16 { <g' c>32\fermata <c, e> }
 \bar "|." 
}

scoreALeft = \relative c, {
  \global
  \tuplet 3/2 {<c c'>8  g'' c~} <c es g>4 \tuplet 3/2 {<es,, es'>8  g' bes~ } <bes es g>4
  \tuplet 3/2 {<f f,>8  a c~ } <c f>4 \tuplet 3/2 {<as as,>8  c es~ } <es as>4
  
  % verse 1
  <c, g' es'>2\arpeggio <as es' c'>4 r |
  
  %verse 2-nd score
  \tupletSpan 4 \tuplet 3/2 {
    es8 bes' es es bes es, es bes' es es bes es, |
    d b' d f d b g' f d b' g d |
    c g' c c g c, f, f' c' c f, c |
    
    c g' c~ c g c,~ c c' g~ g es' c |
    f,, c' f~ f4. bes,8 f' bes~ 4.
    bes,,8 f' bes d f bes d bes f bes f d |
    
    es g bes es bes g d f g g, g' g, |
    c, g' c es g c es c g c g es |
    f, c' es as c es f, as c d c as 
    
    g, d' f b4. g,8 d' f g4. |
    as,8 es' as as es as, g c g' g c, g |
    <f f'> c' f as f c c' as f as f c |
    
    g <c g'> es g es g c g es g es c |
    <d d,> as' c f c as f, f' g b4. |
  } %verse finished
    
    %sign 2
    \tupletSpan 4 \tuplet 3/2 {
    <c,, c'>8 es' g c c c <es, es,> g bes es,4. |
    <f f,>8 a c f,4. <as, as,>8 es' as c c c |  }
    <c, c,>2\sf <as es'>4 q 
    %sign 2 finished 
    
      %verse 2-nd score
    <es bes' es>4 q q q  |
    <d b' d> q q q |
    < c' g'> q <f, f'> q |
    
    <c' g' c> q q q |
    <f, c' f> q <bes f' bes> q
    <bes, f' bes> <d' f bes> q q |
    
    <es g bes> q <d f g> <g, d' f g> |
    \tupletSpan 4 \tuplet 3/2 { c,8 g' c es g c es c g c g es |
    f, c' es as c es f, as c d c as 
    
    g, d' f b4. g,8 d' f g4. |
    as,8 es' as as es as, g c g' g c, g |
    <f f'> c' f as f c c' as f as f c |
    
    g <c g'> es g es g c g es g es c |
    <d d,> as' c f c as f, f' g b4. |
  } %verse finished
  
  
   %sign 2
    \tupletSpan 4 \tuplet 3/2 {
    <c,, c'>8 es' g c c c <es, es,> g bes es,4. |
    <f f,>8 a c f,4. <as, as,>8 es' as c c c |  }
    <c, c,>4\sf <as es' c'>2 r4
    %sign 2 finished
    
      %verse 2-nd score
  \tupletSpan 4 \tuplet 3/2 {
    es8 bes' es es bes es, es bes' es es bes es, |
    d b' d f d b g' f d b' g d |
    c g' c c g c, f, f' c' c f, c |
    
    c g' c~ c g c,~ c c' g~ g es' c |
    f,, c' f~ f4. bes,8 f' bes~ 4.
    bes,,8 f' bes d f bes d bes f bes f d |
    
    es g bes es bes g d f g g, g' g, |
    c, g' c es g c es c g c g es |
    f, c' es as c es f, as c d c as 
    
    g, d' f b4. g,8 d' f g4. |
    as,8 es' as as es as, g c g' g c, g |
    <f f'> c' f as f c c' as f as f c |
    
    g <c g'> es g es g c g es g es c |
    <d d,> as' c f c as f, f' g b4. |
  } %verse finished
    
    %sign
    \tupletSpan 4 \tuplet 3/2 {
    <c, c,>4 g'8 c c c <c, c,> q q c g' c, | }
    

    \tupletSpan 4 \tuplet 3/2 {
    <f f,>8 c f~ 8 c f, <d d'> as'' c~ 8 c as |
    <g,, g'> c' es g es c c' g es c' g es }
    <f, c' as' c d>2\arpeggio\fermata <g, g' g' b>\arpeggio 
    
    \tupletSpan 4 \tuplet 3/2 {
      <c c'>8 g'' c~ <c es g>4. <es,, es'>8 g' bes~ <bes es g>4.
      <f, f'>8 a' c~ <c f a>4. <as, as'>8 c' <c es> as' es c |  }
     \repeat tremolo 16 { <c,, g'>32\< c' } 
     \repeat tremolo 16 { <c, g'>32 \sf  c'}  \bar "|."
    %\repeat tremolo 16 { <c, g' c>16 \sf } \bar "|."
  
  
  
  
}

scoreAOrganPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
 %     midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
 %     midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>


  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator 

}


\bookpart {

\score {
  %  \transpose c bes {
%  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
%        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \lyricscoreb }
    >>

    %  }  % transposeµ
  \layout {
%    #(layout-set-staff-size 20)
    \context {
      \Score
    }
    \context {
      \Staff
%        \RemoveEmptyStaves
%        \RemoveAllEmptyStaves
    }
  %Metronome_mark_engraver
  }
}
}


\bookpart {

\score {
  %  \transpose c bes {
%  \removeWithTag #'BR
<<

    \scoreAOrganPart
    >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 16)
    \context {
      \Score
    }
    \context {
      \Staff
%        \RemoveEmptyStaves
%        \RemoveAllEmptyStaves
    }
  %Metronome_mark_engraver
  }
}
}


\bookpart {
  
  \paper {
  page-breaking = #ly:minimal-breaking
}

\score {
  %  \transpose c bes {
%  \removeWithTag #'BR
 <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
%        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \lyricscoreb } 
    >>
    \scoreAOrganPart
    >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 16)
    \context {
      \Score
    }
    \context {
      \Staff
%        \RemoveEmptyStaves
%        \RemoveAllEmptyStaves
    }
  %Metronome_mark_engraver
  }
}
}

\bookpart {

\score {
  %  \transpose c bes {
%  \removeWithTag #'BR
\articulate <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
%        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 

  
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    \scoreAOrganPart
    >>
    %  }  % transposeµ

  \midi {
    \tempo 4=90
  }
}
}