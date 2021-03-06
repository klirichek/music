\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\header {
  title = "Przybiezeli do Betlejem"
  subtitle = " "
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
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}


global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \secondbar
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

globalv = {
  \global
  \autoBeamOff
  \dynamicUp
}


smelody = \relative c' {
  \globalv
  R1*4 \abr
  
  f8 e f g a g a bes |
  c4 d c2 |
  c4 d c2 |
  <c a> <bes d> | \abr
  
  
  <c a>1\> |
  R1\! |
  f,8 e f g a g a bes | \abr
  
  <c a>4 <d bes> c2 |
  c4 f <g e>2 |
  <f c>2 d |
  <c a> r | \abr
  
  
  a4 f g2 |
  f'4 c8 c d c bes a |
  bes4 bes8 d c bes a g |
  a4 bes c2 | \abr
  
  a4 g f2 |
  R1*4 | \abr
  
  
  R1*3 |
  f8 e f g a g a bes | \abr
  
  c a4( g8) f2 |
  a8 a4( g8) f2 |
  f8 e f g a g a bes | \abr
  
  
  c8 c4( bes8) a2 |
  a8 a4( g8) f2 | \breathe
  <a c>8 q r4 r2 |
  <g bes>8 q r4 r2 | \abr
  
  c2\( a4 d |
  c bes a8\) f a c |
  f4 c8 c d c bes a |
  bes4 bes8 d c bes a g | \abr
  
  
  a4 bes c2 |
  a4 g f2 |
  R1*3 | \abr
  
  R1*2
  f8 e f g a g a bes |
  c4 d c2 | \abr
  
  
  f,8 e f g a g a bes |
  c4 d c2 |
  <c f> d |
  c c4 r | \abr
  
  a f g r |
  f' c8 c d c bes a |
  bes4 bes8 d c bes a g |
  a4 bes c2 | \abr
  
  
  a4 g f2 |
  R1 |
  f'4 c8 c d c bes a |
  bes4 bes8 d c bes a g | \abr
  
  a4 bes c r |
  r r a g |
  f4 r r2 |
  \bar "|."
}

amelody = \relative c'' {
  \globalv
  R1*4
  R1*2 |
  a4 bes a2 |
  f8[ e f g] f[ e f g] |
  
  f1 |
  R1 |
  R1 |
  
  f8 e f g <a f> <g e> <a f> <bes g> |
  c4 d c2 |
  a bes |
  f r |
  
  f4 d e2 |
  a4 a8 a bes a g fis |
  g4 g8 bes a g f e |
  f4 g a2 |
  c,4 c c2
  R1*4
  
  R1*3
  r2 f8 e f g |
  a a4( g8) f2 |
  c8 c4( bes8) a2 |
  f'8 e f g f e f g |
  
  a8 a4( g8) f2 |
  c8 c4( bes8) a2 |
  f'8 f r4 r2 |
  d8 d r4 r2 |
  r1 |
  r4 r r8 f a c |
  a4 a8 a bes a g fis |
  g4 g8 bes a g f e
  
  f4 f f2 |
  f4 e c2 |
  R1*5 |
  f8 e f g f e f g |
  a4 bes a2 |
  
  f8 e f g f e f g
  a4 bes a2 |
  a bes |
  a a4 r |
  f d e r |
  a a8 a bes a g fis |
  g4 g8 bes a g f e |
  f4 g a2
  
  c,4 c c2 |
  R1 |
  a'4 a8 a bes a g fis |
  g4 g8 bes a g f e |
  f4 g a r |
  r r c, bes a r r2
  
  
  
  
  
  
}

tmelody = \relative c' {
  \globalv
  R1*15
  c4\f c c2 |
  c2. d4 |
  d2. c4 |
  c8[ b] c[ d] f2 |
  c4 bes a2 |
  R1*4
  
  R1*4 |
  f8 e f g a g a bes |
  c4 d c2 |
  R1 |
  
  f,8 e f g a g a bes |
  c4 d c2 \breathe
  c2. d4 |
  bes2. c4 |
  a4 bes c2 |
  g4 g f r |
  c' f2 d8 d |
  d4 d8 d e8 c c8 c |
  
  c4 c c2 |
  c4 bes a2 |
  R1*6 |
  f'2~ f |

  a,8 g a bes c4 f |
  f8[ e] f[ g] f2 | 
  R1*2 |
  c4 c c r |
  c2. d4 |
  d d8 d c c c c |
  c8[ b] c[ d] f[ e d c] |
  
  c4 bes a2 |
  R1 |
  c2. d4 |
  d2. c4 |
  c8[ b] c[ d] f4 r |
  r r c bes |
  f r r2
  
}

bmelody = \relative c {
  \globalv
  R1*16
  f2. d4 |
  g2. c,4 |
  f r r2 |
  r8 c d[ e] f2 |
  R1*4
  
  R1*4 |
  f8 e f g a g a bes |
  c4 d c2 |
  R1 |
  f,8 e f g a g a bes |
  c4 d c2 |
  a2. bes4 |
  g2. a4 |
  a4 bes c2 |
  c,4 c f r |
  f f2 g8 d |
  g[ f] e d c c d e |
  f4 g a2 |
  c4 bes a2 |
  R1*6 |
  f8[ e] f[ g] f[ e f g] |
  
  a8 r r4 r2 |
  R1*3 |
  c,4 c c r |
  f2. d4 |
  g8[ f] e d e c d e |
  f4 r r2 |
  
  f4 c f2 |
  R1 |
  f2. d4 |
  g2. c,4 |
  f r r2 |
  r4 r r8 c d[ e] |
  f4 r r2
}

violinone = \relative c'' {
  \global
  R1*2 |
  c1~ |
  c4 d c bes |
  a8 r r4 r2 |
  f8:16 e:16 f:16 g:16  a:16 g:16 a:16 bes:16 |
  c4 r c bes | \abr
  
  c d c bes |
  f8:16 e:16 f:16 g:16 a:16 g:16 a:16 bes:16 |
  c4 d c bes-. |
  a8 r r4 r2 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  f8 r r4 r2 |
  f8:16\p e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  f8-. r r4 r2 | \abr
  
  c'4:16 a:16 bes8 c d e |
  f4 c r8 f8 g a |
  bes2 r4 c,8 bes |
  a4 bes c2 |
  a4 g f8 c' d e |
  
  % piece 21 begin
  f4 c r g'8 fis |
  g fis g bes a g f e |
  f4 d c2 | \abr
  % piece 23 finished
  
  c8-\markup\italic"piz." a f d a'4( g |
  f8) r r4 r2 |
  c'1~ |
  c4 d c bes |
  f8:16 e:16 f:16 g:16 a:16 g:16 a:16 bes:16 |
  c c4 bes8 a2 |
  c,8-\markup\italic"leg." d c d c d c d |
  f g f e f g f g |
  c,4 c c c |
  c8-. d4-- e8 f2 \breathe |
  a8 bes a bes a bes a bes |
  g fis g fis g fis g a |
  f1 |
  g2 f8-. g-. a-. c-. |
  
  %piece38 begin
  f4 c8 c d c bes a | \abr
  g f e d c4 d8 e |
  a4 bes c8-. f-. c4 |
  a4 g f2 |
  c'2. d4 |
  bes2. c4 |
  %piece43 end
  
  a bes c2 |
  a8-- a-- g-- g-- f\f-. d'-. c-. bes-. |
  a r r4 r8 g-. a-. bes-. | \abr
  c-. r r4 r2 |
  c4 bes a2 |
  f8:16 e:16 f:16 g:16 r2 |
  c4 d c2 |
  f,8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  f r r4 r2 |
  c'4:16 a:16 bes8-. c-. d-. e-. |
  
  % piece 54 start
  f4 c r8 f g a |
  bes2 r4 c,8 bes |
  a4 bes c2 |
  a4 g f8 r r4 |
  e8 f g a bes c d e |
  f8. c16 c8 c d c bes a |
  bes'8. g16 g8 d c bes a g |
  % piece 60 end
  
  a4 bes c-- a8-. f-. |
  f4 r r c'~ |
  \tuplet 3/2 { c8 bes a } \tuplet 3/2 { g f e } f4 r
  \bar "|."
}

violintwo = \relative c'' {
  \global
  R1*2 |
  a1~ |
  a4 bes a8-. c,-. g'4 |
  f8-. r r4 r2 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  a:16 g:16 a:16 bes:16 a-. c,-. g'4 |
  
  a bes a8-. c,-. g'4 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  a4 bes a g-. |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  f:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  R1 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  R1 |
  a4:16 f:16 g8 e f g |
  a4 a r8 a bes c |
  d4 g r a,8 g |
  f4 g a2 |
  c,8 r c r f a bes g |
  
  %piece21 begin
  a4 a r bes8 a |
  bes a bes d c bes a g |
  a4 bes a2 |
  %piece23 end
  
  c8 a f d c4 bes |
  f'8 r r4 r2 |
  a1~ |
  a4 bes a8-. c,-. g'4 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  a-. a4 g8 f2 |
  s1
  s1 |
  c4 c c c |
  c8-. d4-- e8 f2 |
  s1*4
  
  %piece38 begin
  a4 a8-. a-. bes a g fis |
  d4 r r2 |
  c2 c |
  f4 e c2 |
  a'2. bes4
  g2. a4 |
  %piece43 end
  
  f g a2 |
  f8-- f-- e-- e-- f-. bes-. a-. g-. |
  f r r4 r8 g-. a-. bes-. |
  
  a8 r r4 r2 |
  a4 g f2 |
  s1 |
  a4 bes a2 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  s1 |
  a4:16 f:16 g8-. e-. f-. g-. |
  
  % piece 54 start
  a4 a r8 a bes c |
  d4 g r a,8 g |
  f4 g a2 |
  c,8 d c bes a r r4 |
  c8 d e f g e f g |
  a8. a16 a8 a bes a g fis |
  d'8. bes16 bes4 a8 g f e |
  % piece 60 finished
  
  f4 g a-- a8-. f-. |
  c4 r r c'~ |
  
  \tuplet 3/2 { c8 bes a } \tuplet 3/2 { g f e } f4 r
  
}

cello = \relative c {
  \global
  R1*2
  \repeat unfold 4 { f8:16 e:16 f:16 g:16 }
  f8-. r r4 r2 |
  f8 r r4 f8 r c r |
  f4-. r f-. r |
  f-. r r c-. |
  f8 r r4 f8 r r4 |
  f8 r r4 r8 c-. d-. e-. |
  f-. r r4 f8-. r r4 |
  a4 bes a2 |
  f4-. r c'-. r |
  <a f>2 <bes g> |
  <c a> r |
  
  r4 d, c r |
  f-. c-. f-. < d \parenthesize fis >-. |
  g-. d-. g-. e-. |
  f-. r f-. r |
  r8 c d e f r r4 |
  
  % piece 21 start
  r f2 <d \parenthesize  fis>4 |
  g bes d c |
  f8-. r r4 a,8-\markup\italic"piz." c a f |
  % piece 23 end
  
  r2 c'8 d c bes |
  a-.-> f16 f f8 r r2 |
  \repeat unfold 4 { f8:16 e:16 f:16 g:16 } |
  f4 r r2 |
  d'2 c |
  f,8-. f r c-. f-. r c-. r |
  
  f-. r c'4. bes8-. a-. g-. |
  f e f g a g a bes |
  c4 bes a2 \breathe |
  a2. a4 |
  g2. a4 |
  f4 g a2 |
  e f8 r r4
  
  %piece 38 start
  c'4 f~ f8 es d c |
  bes4 bes8 d c bes a g |
  f4 g a2 |
  c8 d c bes a2
  f4 c2 fis4 |
  g d2 e4
  %piece 43 end
  
  f8-. c-. d-. e-. f4 r |
  R1 |
  r8 c'-. d-. e-. f-. r r4 |
  
  f,8-. r r4 r2 |
  f8:16 e:16 f:16 g:16 f:16 e:16 f:16 g:16 |
  a g a bes c4 d |
  f8 r r4 r2 |
  <a, f>2 <bes g> |
  <c a> r |
  r4 d, c r |
  
  %piece 54 start
  r f2 fis4 |
  g bes c2 |
  f,4-. r a8-. c-. f-. c-. |
  r4 c,4( f8) r r4 |
  c c'4.~ c8 bes g |
  f4 c' r d, |
  g d'2 c,4 |
  % piece 60 end
  
  f2 a8( bes)-. a-. f-. |
  a4 r r e'~ |
  
  \tuplet 3/2 { e8 d c } \tuplet 3/2 { bes a g } a4 r
  
}
toleft = \change Staff="left"
toright = \change Staff="right"

right = \relative c' {
  \global
  \oneVoice
  <f a c>1~ |
  q4 <g bes d> <f a c> <d g bes> |
  << { <f a>1~ q4 <g bes> <f a> <e g> } \\ { c1~ c } >>
  \oneVoice f8 e f g <f a> <e g> <f a> <g bes> 
  <f a> <e g> <f a> <g bes> <a c>4 r |
  f8 e f g f e f g |
  <f a> <e g> <f a> <g bes> <f a> <e g> <f a> <g bes> |
  <f a> <e g> <f a> <g bes> <a c>4 r |
  <a c f>-. r <c, f a>-. <bes c g'> |
  <a c f>-. r r2 |
  <c f a>4-. r <f a c>-. r |
  <c f a> r <e g c> r |
  f8 e f g f e f g |
  f e f g <f a> <e g> <f a> <g bes> |
  
  <f a>4( <d f>) <e g>8-. <e c'>-. <f d'>-. <g e'>-. |
  <a c f>4 <f a c> r <d g bes>8 <c fis a> |
  <bes d g>4 r2 <c f a>8 <c e g> |
  <a c f>8 b c d f e d c |
  <f a>4( <e g> <a, c f>8) r <g' bes c e>4 |
  
  % piece 21 start
  << { <a c f> <a c>8. q16 <bes d>8 <a c> <g bes> <fis a> } \\ { r4 f r d } >>
  <g bes>4 q8. <bes d>16 <a c>8 <g bes> <f a> <e g> |
  <f a>4 <g bes?>  << <a c>8 \\ f >> a-. f-. d-. |
  % piece 23 end
  
  c2 <c f a>4 <bes e g> |
  <a c f>8-. r r4 r2 |
  R1*2 |
  f'8 e f g <f a> <e g> <f a> <g bes> |
  a a4 g8 f2 |
  c4( d c2) |
  
  r4 c4. bes8 a g |
  R1 |
  << { c8 d4 e8 f2 } \\ { c8 c4 bes8 a c bes \change Staff = "left" g } >> \breathe
  c2. d4 |
  bes2. c4 |
  <a c f> r <f' a> r |
  r2 r4 f16-. g-. a-. c-. |
  
  % piece 38 start
  <a c f>8. <f a c>16 q4 r <bes, d g>8( <a d fis>) |
  <bes d g>2 <g' bes>4 <f a>8 <e g> |
  <f a>4 <g bes> << { c8-. a-. f-. d-. } \\ f s s s >> |
  c2 <f a c>4 <g bes c e> |
  << { <a c f>4 <a c>8-. q-. <bes d>-. <a c>-. <g bes>-. <fis a>-. } \\ { r4 f2 d8 c } >>
  << { <g' bes>4 q8-. <bes d>-. <a c>-. <g bes>-. <f a>-. <e g>-. } \\ { d4 r2 c4 } >>
  % piece 43 end
  
  <f a>2~ q8-. <bes d>-. <a c>-. <g bes>-. <f a>4 <e g> f r |
  <c f a>8 r <bes c g'> r f'-. g-. a-. bes-. |
  
  
  << { <a c>4( <bes d>) } \\ f2 >> <a c>8-. q-. <g bes>4 |
  f8 r r4 r2 |
  << { <a c>4 <bes d> <a c>8 q <g bes>4 } \\ { f2 r } >>
  f8 e f g f e f g |
  f e f g f e f g |
  f e f g <f a> <e g> <f a> <g bes> |
  <f a>4 <d f> <e g>8-. <e c'>-. <f d'>-. <g e'>-. |
  
  % piece 54 start
  <a d f>4 <f a d> r <d g bes>8 <c fis a> |
  <bes d g>4 <d g bes>2 << { <f a>8 <e g> } \\ c4 >> |
  
  << { <f a>8 s s s } \\ { c b c d } >> f e d c |
  r4 <g c e>-. <a c f>-. r |
  <c e>-. <e g c>-- r8 <e c'>-. <f d'>-. <g e'>-. |
  <a f'>4 <f a c>4 r <bes, d g>8 <a c fis> |
  <bes d g>2 r4 <a' c>8-.( <g e'>-.) |
  % piece 60 end
  
  <a c f>4-. <g bes d>-. <f a c>2 |
  a4-. f8-. c-. <c a'>4( <bes g'> |
  <c f>2) r4 f4-.
}

left = \relative c {
  \global
  \oneVoice
  \repeat unfold 7 { f8-. e-. f-. g-. }
  f-. c-. d-. e-. |
  <f f,>4-. r r2 |
  q8 r r4 q4-. <c c,>-. |
  <f f,>-. r r2 |
  q4-. r r <c c,>-. |
  <f f,>-. r r2 |
  <f f'>4-. r r8 <c c,>8 <d d,> <e e,> |
  <f f,>4-. r r2 |
  q4-. r <c c'>-. r |
  <f f,> r <c c,> r |
  <f f,>-. r r2 |
  q4 r r2 |
  
  c'8-. d-. c-. d-. c-. r <c c,>4-. |
  <f, f,> r r <d d,> |
  <g g,> r2 <c, c,>4 |
  f-. g-. a-. bes-. |
  c8 d c bes r <c, c,>-. <d d,>-. <e e,>-. |
  
  % piece 21 start
  <f f,>4 <f c'>2 <d d,>4 |
  <g g,>4 <g d'>2 <c, c,>4 |
  << { c'8 b c d c } \\ { f,2 c'8 } >> r r4 |
  % piece 23 end
  
  c,2 r8 <c c,> <d d,> <e e,> |
  <f f,> r r4 <c c,>8 r q r |
  R1*2 |
  f8 r a r c r r4 |
  a8 g a bes c d c bes |
  a4-. c,-. f-. r |
  
  f8-. r a-. r f' r r4 |
  f,8 e f g f e f g |
  f4 c r2 |
  <f f,>4-. <c c,>-. <f f,>-. <fis fis,>-. |
  <g g,>-. <d d,>-. <g g,>-. <e e,>-. |
  f-. r c' r |
  r c,-. f-. r8 c'-. |
  
  % piece 38 start
  <f, f,>4 <f c'> r <d d,> |
  <g g,> <d d,> <c c,> <d d,>8 <e e,> |
  f2 a |
  c, r8 <c c,> <d d,> <e e,> |
  <f f,>4 <f c'>2-- <d d,>4 |
  <g g,> <g d'>2 <c, c,>4 |
  %piece 43 end
  
  f8-. c-. d-. e-. f4 r |
  R1 |
  r4 r <a c>8 r r4 |
  
  R1*4 |
  <f f,>4 r r2 |
  q4 r r2 |
  c'8-. d-. c-. d-. c4-. <c c,>-. |
  
  % piece 54 start
  <f, f,>-. <f c'> r <d d,>-. |
  <g g,>8 f e d e c d e |
  f r r4 r2 |
  r4 <c c,>-. <f f,> r |
  <c c,>2.:16 <bes bes'>8-. <g g'>-. |
  <f f'>4 <f' c'>2 <d d,>4 |
  <g g,> <bes bes,> <c c,> <c, c,> |
  % piece 60 end
  
  <f f,>2 c'8( d)-. c-. bes-. |
  c4-- a8-. f-. r4 <c c,>4 |
  <f f,>2 r4 q-.
  
}

sopranol =  \lyricmode {
  \set stanza = "1." Пшы -- бе -- жэ -- ли до Бэт -- ле -- ем па -- стэ -- же,
  па -- стэ -- же, па -- стэ -- жэ.
  Гра -- \markup{йо \tiny н ц} \markup{скоч\tiny ъ} -- не Дже -- чо -- \markup{\tiny н тэч \tiny ъ} -- ку
  на ли -- жэ, на -- ли -- жэ, на ли -- жэ, на -- ли -- жэ.
  Хва -- ўа на вы -- со -- ко -- щчи, хва -- ўа на вы -- со -- ко -- щчи,
  а по -- куй на же -- ми.
  \set stanza = "2." От -- да -- ва -- ли свэ у -- кўо -- ны в_по -- ко -- жэ,
  в_по -- ко -- жэ
  То -- бе з_сэ -- рца о -- хо -- тнэ -- го о Бо -- жэ,
  о Бо -- жэ!
  Хва -- ўа, хва -- ўа, а по -- куй на же -- ми, на же -- ми.
  Хва -- ўа на вы -- со -- ко -- щчи, хва -- ўа на вы -- со -- ко -- щчи,
  А по -- куй на же -- ми
  \set stanza = "3." Джи -- ви -- ли ще на -- по -- ве -- тшнэй му -- зы -- цэ
  И мы -- щле -- ли, цо то бэ -- ньдже за Дже -- че?
  Цо то бэ -- ньдже за Дже -- че?
  Хва -- ўа на вы -- со -- ко -- щчи, хва -- ўа на вы -- со -- ко -- щчи,
  а по -- куй на же -- ми.
  Хва -- ўа на вы -- со -- ко -- щчи, хва -- ўа на вы -- со -- ко -- щчи,
  а по -- куй на же -- ми.
}

altol =  \lyricmode {
  \repeat unfold 6 \skip 1
  Гра -- \markup{йо \tiny н ц} \markup{скоч\tiny ъ} -- не Дже -- чо -- \markup{\tiny н тэч \tiny ъ} -- ку

}

tenorl =  \lyricmode {
  на ли -- жэ.
  Хва -- ўа, хва -- ўа, а по -- куй
}

bassl =  \lyricmode {
  \repeat unfold 5 \skip 1
  на же -- ми.
  От -- да -- ва -- ли свэ у -- кўо -- ны в_по -- ко -- жэ,
  То -- бе з_сэ -- рца о -- хо -- тнэ -- го о Бо -- жэ,
  Хва -- ўа, хва -- ўа, а по -- куй на же -- ми,
  Хва -- ўа То -- бе,
  \repeat unfold 13 \skip 1
  му -- зы -- це __
  И
  \skip 1 \skip 1 \skip 1
  Хва -- ўа, хва -- ўа на вы -- со -- ко -- щчи, а
  \skip 1 \skip 1 \skip 1
  Хва -- ўа, хва -- ўа, а
  на же -- ми.
}

violinPart = \new Staff \with {
  instrumentName = "V-ni"
  shortInstrumentName = "V-ni"
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

celloPart = \new Staff \with {
  instrumentName = "V-c"
  shortInstrumentName = "V-c"
  midiInstrument = "cello"
} { \clef bass \cello }

stringsPart = \new StaffGroup
<<
  \violinPart
  \celloPart
>>

choirPart = \new ChoirStaff
<<
  \new Staff = "up" \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "С" "А" }
    shortInstrumentName = \markup \center-column { "С" "А" }
  } <<
    \new Voice = "soprano" { \voiceOne \smelody }
    \new Voice = "alto" { \voiceTwo \amelody }
  >>
  \new Lyrics \lyricsto "soprano" \sopranol
  \new Lyrics \lyricsto "alto" \altol
  \new Staff = "down" \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Т" "Б" }
    shortInstrumentName = \markup \center-column { "Т" "Б" }
  } <<
    \new Voice = "tenor" { \clef bass \voiceOne \tmelody }
    \new Voice = "bass" {  \voiceTwo  \bmelody }
  >>
  \new Lyrics \lyricsto "tenor" \tenorl
  \new Lyrics \lyricsto "bass" \bassl
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "P-no"
  shortInstrumentName = "P-no"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\book {
  \bookOutputSuffix "full"
  \paper {
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \choirPart
      \stringsPart
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
    \midi {
      \tempo 4=100
    }
  }
}

\book {
  \bookOutputSuffix "instruments"
  \paper {
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \stringsPart
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

\book {
  \bookOutputSuffix "violini"
  \paper {
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \stringsPart
 %     \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\book {
  \bookOutputSuffix "choir"
  \score {
    \choirPart
    \layout { 
      \context {
      \Staff 
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
