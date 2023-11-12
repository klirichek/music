\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

abr = { \break }
abr = {}
fbr = {\bar "" \break}

pbr = { \break }
pbr= {}

%"|" = {\cadenzaOff\bar"|"\cadenzaOn}
co = \cadenzaOn
cof = \cadenzaOff
%cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
%cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

global = {
%  \once \hide Staff.TimeSignature
  \autoBeamOff
  \key bes \major
  \time 4/4
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \arpeggioBracket
  \accidentalStyle neo-modern-voice-cautionary
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers

}

sopvoice = \relative c'' {
  \global
  \dynamicUp 
  \mark \default
  <bes d>8 <c es> <bes d> <a c> <g bes> <a c> <bes d> <c es> |
  <d f>4-> <bes d>8 q <a c>[( <bes d> <c es> <d f>] |
  <bes d>[ <a c>]) <g bes>[( <fis a>]) g4 r | \abr
  
  d'-> bes8 c d c bes d |
  c4-> bes8 bes a[( c bes a]) | \abr
  
  g4\fermata c8 c c->[( b]) c d |
  es4( d8[ c]) bes4 \fbr bes8[( c] |
  d[ c]) bes[( d]) c\pp c d es | \abr
  
  d4 r d8 c bes bes |
  a[( c d c] bes a g fis]) |
  g4 r \fbr bes c8 c |
  d4 c\> bes a\! | \abr
  
  bes4 r g8 g g a |
  bes4.\< a8\> bes4\! r |
  \break <bes d>4 q8 <a c> <bes d>( <d f>4->) <c es>8 | \abr
  
  <bes d>8 d4-> c8 d4 bes |
  a8\p a a a c4 a8 c |
  bes4-> a8 a a4-> a8 a | \abr
  
  bes[( a bes c]) \bar "" \break d4-> bes8 bes |
  bes bes a a bes c bes[( a] |
  bes[ c d c ] bes[ a g fis]) |
  g2\fermata  \bar "||" \pbr
  
  \break
  \mark \default
  bes8 bes bes bes |
  bes c d4-> bes8 bes a[( c] |
  bes[ a g fis]) g4\p r \bar "||" \abr
  
  bes8 c d4-> bes bes8 c |
  d d c d c4-> bes8 bes |
  a4 b c c8 d | \abr
  
  es[( f es]) c d4-> bes |
  d8 es f es d2 |
  <d f>4 <c es>8 <bes d> <a c> <bes d> <c es> q | \abr
  
  <bes d> d c c d d c bes |
  a[( c bes a]) bes4\fermata b |
  c-> b8 b c4 d | \abr
  
  es4.-> d8 es[( f]) es d |
  c[( b c]) c c4( b?) |
  c <d f>\f <es g> <d f> | \abr
  
  <es g>8 <d f> es <c es> <bes d>4 bes |
  bes8 bes bes bes a4. a8 |
  a a bes[( c] bes[ a g fis]) g2\fermata r | \bar "||" \abr
  
  \break
  \mark \default 
  d'8 d d c d c bes a |
  bes bes c d es d c c | \pbr
  
  d c d es d c bes a |
  a4( g8[ fis]) g4\fermata f'?8 f |
  
  \bar "||" \time 3/4 f4 f8 f f f |
  f4.-> f8 f es |
  \bar "||" \time 4/4 d4 r8 d es4. es8 | \abr
  
  f f f es d4 d8 r |
  r4 a8 a a4. a8 |
  d c bes bes \abr
  
  a c bes a |
  bes[( a g fis]) g4 c |
  d2-> bes8[( a]) bes[( c]) | \abr
  
  d8[(\< es\! d\> c\!]) c2 |
  c-> bes4 a |
  bes a g r8\pp a | \abr
  
  bes a bes c d c bes4 |
  bes bes8 \fbr d-> c c c bes |
  a4 bes \abr
  
  a a |
  bes\fermata d8 c bes a a a |
  a a a a a4 g8[( a]) | bes2\fermata r |\pbr
  
  \break
  \mark \default 
  \bar "||" \time 3/4 d4 c8 c bes a |
  bes c d d d c | \abr
  d4 d8 d d d |
  c4 c8 bes a4( |
  bes8[ a]) g[( fis]) g4\fermata | \abr
  
  
  \bar "||" \time 4/4 <d' f>2\f\arpeggio <bes f'> |
  es4( g2 f8[ es] | 
  <d f>4 <es g> <d f>) <c es> |
  
  <bes d>1 |
  q2 q4 <a c> |
  <bes d> <c es> <bes d>2 |
  <a c> \fbr bes8\pp bes bes bes | \abr
  
  bes[( a] bes4) a bes8[( a]) |
  g4 fis g8[( fis g a]) | \abr
  
  bes4.( d8 c[ bes]) a4 |
  a a g8[( f]) g4 |
  a bes a \fbr a | \abr
  
  bes8[( a g a ] bes[ a g fis]) |
  g2 a |
  bes8[( a g a] bes[ a g fis]) | \pbr
  
  g4 bes8 c d4-> d8 c |
  bes[( a] bes4) a2 |
  \fbr a4 a8 a bes( c4-> bes8 | \abr
  
  g4) g a r |
  bes8-> a bes c d[( es d e]) | \abr
  
  f4. r8 fis4 fis |
  g-> d8[( c]) bes r \fbr bes c |
  d-> c bes bes a4-> a8 c | \abr
  
  d4.-> c8 c4 c |
  bes4.-> bes8 bes[( c]) d[( c]) | \abr
  
  bes4 a bes\fermata r |
  
  \break
  \mark \default
  \co bes8 bes\breve \cbr bes8 \bar "" bes c d4-> d8 \bar "" d \cof | \abr
  
  c4( bes8[ a]) \bar "" g[( fis]) g4\fermata
  
  \bar "||" \co <a c>4 <bes d> \cof \bar "|"|
  <a es'>2 q4 <a c> | \pbr
  
  <bes d>4 <a c> q <bes d> |
  <a es'> <c es> <bes es> c |
  <bes d>2 r4 \fbr q | \abr
  
  <c es>2 q-> |
  q4 <a c> <bes d>( <a c> |
  <g bes> <fis a>) <g bes> r |
  <bes d> <c es>2-> <a c>4 | \abr
  
  <bes d> <a c> <bes d> c |
  bes2->  a4 \fbr a  |
  bes <bes d>-\markup\italic"Замедл." <c es> q | \abr
  
  <bes d> <a c> <g bes> <fis a> |
  <g bes> 2 r4 b |
  c2-> c4 c | \abr
  
  bes? a bes\fermata \fbr <b d> |
  \bar "||" \time 3/4 <c es>2-> <b d>4 | \abr
  
  <c es>-> q <d f> |
  <es g>2.-> |
  <d f> |
  \bar "||" \time 2/4 <d f>4 q8 q | \abr
  
  <c es>4 <b d> <c es>-> r8 \fbr c |
  \bar "||" \time 3/4 d4. d8 d d |
  \bar "||" \time 4/4 c4 bes a g8 fis | \pbr
  
  \bar "||" \time 3/4 g4\fermata
  
  \repeat volta 2{ r8
  g g a |
  bes4 bes8 bes a bes |
  c4 bes8 a g a | \abr
  
  \bar "||" \time 4/4 bes4-> r8 a a a a a |
  \bar "||" \time 3/4 a a bes[( a]) g fis |
  
  g4\fermata }
  
  r8 \fbr g g a | \abr
  
  bes4 bes8 bes a bes |
  c4 bes8 a g a |
  \bar "||" \time 4/4 bes4 \fbr r8  a8 a a a a | \abr
  
  a4 c d8[( c]) bes a |
  g2.\fermata r4
  
  
  \bar "|."
 
}

altvoice = \relative c' {
  \global
  f8 f f f d f f f |
  f4 f8 bes f2 |
  f8[( es]) d4 d r |
  
  bes' f8 a bes a bes bes |
  a4 g8 g fis[( a g fis]) |
  
  g4 g8 g g4 g8 bes! |
  bes4.( a8) bes4 bes~ |
  bes bes a8 a bes a |
  
  bes4 r bes8 a f g |
  f[( a bes a] g[ es] d4) |
  d r g a8 a |
  bes4 a g fis |
  
  g r d8 d d f? |
  f4. f8 f4 r |
  f f8 f f4. f8 |
  
  g bes4 a8 bes4 f |
  f8 f f f f4 f8 f |
  e4 f8 f g4 fis8 fis |
  
  g[( fis g a]) bes4 f8 f |
  f f f f f f f[( fis] |
  g2 g8[ es] d4)
  
  d2 f8 f f f |
  f f f[( bes]) f f f4~( |
  f d) d r |
  
  f8 f bes4 f f8 a |
  bes bes bes bes a4 g8 g |
  fis4 f es g8 bes |
  bes4. a?8 bes4 f |
  bes8 c d c bes2 |
  bes4 f8 f f f f f |
  
  f bes a a bes bes a g |
  fis[( a g fis]) g4 g |
  g g8 g g4 bes |
  
  bes4. bes8 bes4 bes8 bes |
  g4. as8 g2 |
  g4 bes bes bes |
  
  bes8 bes bes f f4 f |
  f8 f f f f4. fis8 |
  fis fis g[( a] g[ fis] d4) |
  
  d2 r |
  bes'8 bes bes a bes a bes f |
  f f f bes a bes a a 
  
  bes a bes a bes a g g |
  fis4( d) d bes'8 bes |
  
  c4 c8 c c bes |
  a4. a8 bes c |
  bes4 r8 b c4. c8 |
  
  c a bes c bes4 bes8 r |
  r4 fis8 fis fis4. fis8 |
  g g g g f f f es |
  d2 d4 a' |
  bes2 f4 f |
  
  f( bes) a2 |
  a bes4 f |
  f fis g r8 f |
  
  f8 f f f f f bes4 |
  f f8 f f f fis g |
  a4 g 
  
  fis fis |
  g4 bes8 a g g fis fis |
  fis fis fis g fis4 g8[( fis]) |
  
  g2 r |
  bes4 a8 a bes f |
  f f bes bes bes a |
  
  bes4 bes8 bes bes bes |
  a4 a8 g f4~( |
  f8[ es]) d4 d |
  
  bes'2 bes |
  <bes es>2.( d4 |
  bes2.) a?4 |
  
  bes1 |
  f2 f4 f |
  f f f2 |
  f 
  
  f8 f f f |
  f4.( g8) f4 d |
  d d d4.( f8) |
  
  f2~( f8[ e]) f4 |
  f f c8[( f]) e4 |
  fis g fis fis |
  
  g8[( fis] g4~ g8[ fis g d]) |
  d2 fis |
  g8[( fis] g2 d4)
  
  d g8 a bes4 bes8 a |
  f4.( g8) f2 |
  f4 f8 f 
  
  f2~ |
  f4 e f r |
  f8 f f f f4( bes) |
  
  a4. r8 a4 a |
  bes g8[( fis]) g r g g |
  g g g g 
  
  f4 f8 a |
  bes4. a8 a4 a |
  g4. g8 g4 g8[( a]) |
  
  g4 fis g r f8 f\breve
  
  f8 f a bes4 bes8 bes |
  
  a4( g8[ d]) d4 d |
  f f
  f2 f4 f |
  
  f f f f |
  f a bes f |
  f2 r4 g |
  
  g2 f |
  f4 f f( es |
  d2) d4 r |
  g g2 f4 |
  
  f f f a |
  g2 fis4 fis |
  g g g f |
  
  f es d d |
  d2 r4 g |
  g2
  
  g4 g |
  g fis g g |
  g2 g4 |
  
  g4 g bes |
  bes2. |
  bes |
  bes4 bes8 bes 
  
  g4 g g r8 a |
  bes4. bes8 bes bes |
  a4 g fis d8 d |
  
  d4 \repeat volta 2 { r8 d8 d f |
                       f4 f8 f f f |
                       f4 f8 f d f |
                       f4 r8 f f f f f |
                       f f f[( es]) d d |
                       d4 }
  r8 d d f |
  
  f4 f8 f f f |
  f4 f8 f d f |
  f4 r8 f f f f f |
  f4 a bes8[( a]) g fis |
  g2. r4
}

tenorvoice = \relative c' {
  \global 
  <bes d>8 <c es> <bes d> <a c> <g bes> <a c> <bes d> <c es> |
  <d f>4 <bes d>8 q <a c>[( <bes d> <c es> <d f>] |
  <bes d>[ <a c>]) <g bes>[( <fis a>])
  
  bes4 r |
  f'4 f8 f f f f f |
  f[( es]) d d d4.( c8) |
  
  bes4 es8 es es[( d]) es f |
  g4( f8[ es]) d4 d8[( es] |
  f[ es]) d[( f]) f f f f |
  
  f4 r4 f8 f f c |
  c( f4 es8 d[ c bes a]) |
  bes4 r d f?8 f |
  f4 es d d |
  
  d r bes8 bes bes c |
  d[( es f]) es d4 r |
  <bes d>4 q8 <a c> <bes d>( <d f>4)-> <c es>8 |
  
  <bes d>8 f'4 f8 f4 d |
  c8 c c c c4 c8 c |
  c4 c8 c cis4 d8 d |
  
  d4 r f?4 d8 d |
  d d es es d es d4~( |
  d8[ a d es] d[ c bes a]) |
  
  %2
  bes2 d8 d d d |
  d a bes4 d8 d c[( es] |
  d[ c bes a]) bes4 r |
  
  d8 f f4 d f8 f |
  f f es f f[( es]) d d |
  d4 d es es8 f |
  
  g[( f g]) f f4 d |
  f8 f f f f2 |
  <d f>4\arpeggio <c es>8 <bes d> <c es> <bes d> <a c> q |
  
  <bes d> f' f f f f f d |
  d2 d4 d |
  es d8 d es4 f |
  
  g4. f8 g[( as]) g f |
  es[( d c]) d es4( d) |
  es <d f> <es g> <d f> |
  
  <es g>8 <d f> <es g> <c es> d4 d |
  d8 d d d c4. d8 |
  d c bes[( a] d4. c8) |
  
  bes2 r |
  f'8 f f f f f f f |
  d d f f f f f f |
  
  %3
  f8 f f f f es d c |
  d4.( c8) bes4 <bes d>8 q |
  
  <a es'>4 q8 q q <bes d> |
  <es f>4. q8 q <c f> |
  <d f>4 r8 g8 g4. g8 |
  
  f8 f f f f4 f8 r |
  d4 d d4. d8 |
  d es d c
  
  c a bes c |
  bes[( c bes a]) bes4 f'? |
  f2 d8[( c]) d[( es]) |
  
  f4.( c8) c2 |
  es? d4 c |
  d c bes r8 c |
  
  bes es d a bes es d4 |
  d8[( es]) f f f f d d |
  d4 d 
  
  d d |
  d d8 d d es d d |
  d d d c d4 d |
  
  %4
  d2 r |
  f4 f8 f f f |
  d es f f f f |
  
  f4 f8 f f f |
  f4 f8 c c4( |
  d8[ c]) bes[( a]) bes4 |
  
  <d f>2 <bes f'> |
  <es~ g>4( es2 <d f>8[ <es g>] |
  <d f>4 <es g> <d f>) <c f> |
  
  <d f>1 |
  <bes d>2 q4 <a c> |
  <bes d> <c es> <bes d>2 |
  <c es>
  
  d8 d d d |
  d[( es d c]) c4 d8[( c]) |
  bes4 a bes8[( a bes c]) |
  
  d4.( bes8 c4) c |
  c c c8[( bes]) c4 |
  c d d d |
  
  d4.( es8 d4. c8) |
  bes2 d4( c) |
  <g bes>8[( <a c> <bes d> <c es>] d[ c bes a]) |
  
  %5
  bes4 d8 f? f4 f8 es |
  d[( es d c]) c2 |
  c4 c8 c 
  
  d8( f4 d8 |
  c4) c c r |
  d8 c bes a bes[( c d c]) |
  
  c4. r8 d4 d |
  d d d8 r d d |
  d es d c 
  
  c4 c8 f |
  f4. f8 es4 d |
  d4. d8 d4 d8[( es]) |
  
  d4 d d r |
  d8 d\breve 
  d8 d c bes[( d]) f f |
  
  f[( es d c]) bes[( a]) bes4 |
  <a c> <bes d> |
  <c es>2 q4 q |
  
  %6
  <bes d> <a c> q <bes d> |
  <c es> q <bes es> <c es> |
  <bes d>2 r4 q |
  
  <c es>2 <a es'> |
  q4 <c es> <bes d>( <a c> |
  <g bes> <fis a>) <g bes> r |
  <bes d> <c es>2 q4 |
  
  <bes d> <a c> <bes d> es |
  d2 d4 d |
  d <bes d> <c es> q |
  
  <bes d> <a c> <g bes> <fis a> |
  bes2 r4 d |
  es2
  
  es4 es |
  d d d <b d> |
  <c es>2 <b d>4 |
  
  <c es> q <d f> |
  <es g>2. |
  <d f> |
  q4 q8 q |
  
  <c es>4 <b d> <c es> r8 f |
  f4. f8 f f |
  f[( es]) d4 d8[( c]) bes a |
  
  %7
  bes4 \repeat volta 2 {
    r8 bes bes c
    d4 d8 d c d |
    es4 d8 c bes c |
    d4 r8 c c c c c |
    c c d[( c]) bes a
    bes4 }
  r8 bes bes c |
  
  d4 d8 d c d |
  es4 d8 c bes c |
  d4 r8 c c c c c |
  
  c4 f f8[( es]) d c |
  bes2. r4

}

bassvoice = \relative c' {
  \global 

  bes8 a bes f g f bes bes |
  bes4-> bes,16[( c]) d[( es]) f2( |
  bes,8[ c]) d4 
  
  <g g,>4 r |
  <bes bes,>4-> d,8 f bes f d bes |
  <f f'>4-> <g g'>8 <bes g'> d2 |
  
  <g, g'>4\fermata c8 c c[(-> g]) c bes |
  <es es,>4( <f f,>) bes, bes'~ |
  bes bes, f'8\pp es d c |
  
  bes4 r bes8 c d e |
  f[( es d f] g[ c,] d4) |
  g, r g' ?f8 f |
  bes4 c\> d d,\! |
  
  g4 r g8 g g f? |
  bes,8[(\< c d])\! c\> bes4\! r |
  bes d8 f bes4. f8 |
  
  bes,8 bes[(-> d]) f bes4 bes, |
  f'8\p f f f a4 f8 a |
  g4-> f8 f e4-> d8 d
  
  <g g,>4 r <bes bes,>-> bes,8 bes |
  bes bes c c bes a bes[( d] |
  g2~ g8[ c,] d4)
  
  %2
  <g g,>2\fermata
  bes,8 bes bes bes |
  d f bes4-> bes,8 d f4~( |
  f g8[ d]) g4\p r |
  
  bes8 a bes4-> bes, d8 f |
  bes bes, bes bes16[( d]) f4-> g8 g |
  d4 <g g,> c, c8 bes |
  
  es[( d es]) f bes4 bes, |
  bes'8 bes bes a bes2 |
  bes4 bes,8 bes f' f f f |
  
  bes, d f f bes, bes f' g |
  d2 g,4\fermata g' |
  c-> g8 g c,4 bes! |
  
  es4.-> bes8 es[( d]) es bes |
  c[( d es]) f g4( g,) |
  c4 <bes bes'>\f <es es'> <bes bes'> |
  
  es8 f g a? bes4 bes, |
  bes'8 bes bes bes f4. d8 |
  d d d4.( c8 bes[ a]) |
  
  g2\fermata r |
  bes8 bes d f bes f d c |
  bes bes a bes c d16[( es]) f8 f |
  
  %3
  bes f d c bes c d es |
  d[( c bes a]) g4\fermata bes'8 bes |
  
  f4 f8 f f bes |
  c4.-> f,8 g a |
  bes4 r8 g c4. bes?8 |
  
  a f g a bes4 bes,8 r |
  d4 d d4. c8 |
  bes c d e
  
  f es d fis |
  g4( d) g f? |
  bes2-> <bes bes,>4 q |
  
  q8[(\< <a c,>\! <bes d,>\> <g e>])\! f2 |
  f-> f4 f |
  bes, d <g g,> r8 f\pp |
  
  d c bes f' bes f bes,4 |
  bes8[( c]) d bes'-> a a a g |
  fis4 g
  
  d d |
  <g, g'>\fermata g8 a bes c d d |
  d d d es d[( c]) bes[( a]) |
  
  %4
  g2\fermata r |
  bes'4 f8 es d c |
  bes bes bes bes d f |
  
  bes4 bes8 bes bes bes |
  f[( es]) d e f4( |
  bes,8[ c]) d4 <g g,>4\fermata |
  
  <bes bes,>2\f <as d,> |
  <g es>4( <bes g>2 <as f>8[ <g es>] |
  <f d>4 es f) <f f,>4 |
  
  <f bes,>1 |
  <bes bes,>2 q4 <a f> |
  <bes bes,> <f a,> << bes,2 \new Voice { \voiceThree bes8[( c d es]) } >> <f f,>2
  
  bes,8\pp bes bes bes |
  bes[( c d e]) f4 f8[( fis]) |
  g4 d g4.( f8) |
  
  bes2( a8[ g]) f4 |
  f f e8[( f]) c4 |
  a g d' d |
  
  g,8[( a bes c ] d[ c bes a]) |
  g2 d' |
  g4.( c,8 d2) |
  
  %5
  <g g,>4 g8 f? bes4-> bes8 f |
  bes,[( c d e]) f2 |
  f4 f8 f 
  
  bes( a4-> bes8 |
  c4) c, <f f,> r |
  bes8-> f d f f[( a bes g]) |
  
  f4.( es?8) d4 d |
  g8[(-> d]) bes[( a]) g r g a |
  bes-> c d e
  
  f4-> f8 f bes4.-> f8 f4 fis |
  g4.-> g8 g[( a]) bes[( c]) |
  
  <d d,>4 d, <g g,>\fermata r |
  bes,8 bes\breve
  
  bes8 d f bes4-> bes8 bes |
  
  f4( g) d <g g,>\fermata
  f4 bes |
  <f c'>2 f4 f 
  
  %6
  bes f f bes |
  c f, g a |
  bes2 r4 g |
  
  c2 f,-> |
  f4 f bes,( c |
  d2) g,4 r |
  g' c2-> f,4 |
  
  bes f bes, c |
  d2-> d4 d |
  g g c, a |
  bes c d d |
  g2 r4 g |
  c2->
  
  c,4 c |
  d d g\fermata g |
  c2-> g4 |
  
  c-> c bes |
  es,4.->( f8[ g a]) |
  bes2. |
  bes4 bes8 bes |
  c4 g <c c,>4-> r8 f, |
  bes4. bes8 bes bes |
  f4 g d d8 d
  
  %7
  g,4\fermata
  \repeat volta 2 {
    r8 g'8 g f?
    bes,4 bes8 bes f' f |
    f4 f8 f g f |
    
    bes,4-> r8 f' f f f f |
    f f bes,[( c]) d d |
    g,4\fermata
  }
  r8 g' g f? |
  
  bes4 bes8 bes f bes |
  a4 bes8 f g f |
  bes4 r8 f f f f f |
  f4 f bes,8[( c]) d d |
  <g g,>2.\fermata r4
 
 
 
}

ijLyrics = {
  \override Lyrics.LyricText.font-shape = #'italic
  \override Lyrics.LyricText.font-series = #'bold
}

normalLyrics = {
  \revert Lyrics.LyricText.font-shape
  \revert Lyrics.LyricText.font-series
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  
  \ijLyrics Да во -- скре -- снет Бог, и ра -- сто -- ча -- тся вра -- зи́ __ Е -- го. \normalLyrics
  
  Па -- сха свя -- ще -- нна -- я нам днесь по -- ка -- за -- ся;
  Па -- сха но -- ва свя -- та -- я;
  Па -- сха та -- и -- нстве -- нна -- я;
  Па -- сха все -- че -- стна -- я.
  Па -- сха Хри -- стос И -- зба -- ви -- тель;
  Па -- сха не -- по -- ро -- чна -- я;
  Па -- сха ве -- ли -- ка -- я;
  Па -- сха ве -- рных.
  Па -- сха две -- ри ра -- йски -- я нам о -- тве -- рза -- ю -- ща -- я. __ 
  Па -- сха всех о -- свя -- ща -- ю -- ща -- я ве -- рных.
  
  \ijLyrics Я -- ко и -- сче -- за -- ет дым, да и -- сче -- знут. \normalLyrics
  
  При -- и -- ди -- те от ви -- де -- ни -- я же -- ны бла -- го -- ве -- стни -- цы,
  и Си -- о -- ну рцы -- те:
  при -- и -- ми от нас ра -- до -- сти бла -- го -- ве -- ще -- ни -- я,
  Во -- скре -- се -- ни -- я Хри -- сто -- ва:
  кра -- су -- йся, ли -- куй и ра -- ду -- йся И -- е -- ру -- са -- ли -- ме,
  Ца -- ря Хри -- ста у -- зрев из гро -- ба,
  я -- ко же -- ни -- ха про -- и -- схо -- дя -- ща. 
  
  \ijLyrics Та -- ко да по -- ги -- бнут гре -- шни -- цы от Ли -- ца Бо -- жи -- я,
  а пра -- ве -- дни -- цы да во -- зве -- се -- ля -- тся! \normalLyrics 
  
  Ми -- ро -- но -- си -- цы же -- ны, ут -- ру глу -- бо -- ку,
  пре -- дста -- вша гро -- бу Жи -- во -- да -- вца,
  о -- бре -- то -- ша А -- нге -- ла на ка -- ме -- ни се -- дя -- ща,
  и той про -- ве -- щав __ им, си -- це гла -- го -- ла -- ше:
  что и -- ще -- те Жи -- ва -- го с_ме -- ртвы -- ми;
  что пла -- че -- те Не -- тле -- нна -- го во тли?
  Ше -- дше, про -- по -- ве -- ди -- те у -- че -- ни -- ком Е -- го.
  
  \ijLyrics Сей день, е -- го же со -- тво -- ри Го -- сподь, 
  во -- зра -- ду -- е -- мся и во -- зве -- се -- ли -- мся в_онь. \normalLyrics
  
  Па -- сха кра -- сна --  я,
  Па -- сха, Го -- спо -- дня Па -- сха!
  Па -- сха все -- че -- стна -- я нам во -- зси -- я. __
  Па -- сха, ра -- до -- сти -- ю друг дру -- га о --  бы -- мем.
  О Па -- сха! И -- зба -- вле -- ни -- е ско -- рби,
  и -- бо из гро -- ба днесь,
  я -- ко от че -- рто --  га во -- зси -- яв Хри -- стос,
  же -- ны ра -- до -- сти и -- спо -- лни, гла -- го -- ля:
  про -- по -- ве -- ди -- те а -- по -- сто -- лом.
  
  \override LyricText.self-alignment-X = #LEFT
  \ijLyrics Сла -- ва_Отцу_и_Сыну,_и_Святому_Духу,_и_ныне_и_при -- сно, 
  и во ве -- ки ве -- ков, __ а -- минь. \normalLyrics
  \revert LyricText.self-alignment-X
  
  Во -- скре -- се -- ни -- я день, 
  и про -- све -- ти -- мся то -- рже -- ством,
  и друг дру -- га о -- бы -- мем.
  Рцем бра -- ти -- е, и не -- на -- ви -- дя -- щим нас,
  про -- стим вся Во -- скре -- се -- ни -- ем, и та -- ко во -- зо -- пи -- им:
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
}

textsb = \lyricmode {
  \repeat unfold 232 \skip 1
  
  о -- бре -- то -- ша
  
  \repeat unfold 132 \skip 1
  га __
}

\bookpart {
  \header {
    title = "Стихиры Пасхи"
    subtitle = "(лаврские)"
    %composer = "обиходный"
    %composer = "муз. Шишкин"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 0
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
    %ragged-last = ##t
    ragged-last = ##t
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
    \new Lyrics = "basses"
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \context Lyrics = "basses" {
        \lyricsto "bass" {
          \textsb
        }
      }
  >>
  \layout {
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
        %\remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=45
  }
}
}

