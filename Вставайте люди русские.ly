\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Вставайте, люди русские"
  subtitle = "из кантаты «Александр Невский»"
  composer = "С. Прокофьев (1891 - 1953гг.)"
  poet = "Слова В. Луговского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

global = {
  \key es \major
  \numericTimeSignature
  \time 2/2
  
}

soprano = \relative c'' {
  \global
  \tempo "Allegro risoluto"
  \autoBeamOff
  \dynamicUp
  R1*4 
  r2 r4 d4\ff
  | % 6
  ees4-> ees d c8[( bes])
  | % 7
  c4-> d g,8 r d'4
  | % 8
  ees4-> ees d c8([ bes)]
  | % 9
  c4-> d g,8 r f'4 
  | % 10
  g4-> ees f-> d
  | % 11
  c4-> c8[( d]) ees r c4
  | % 12
  ees4-> c ees c
  | % 13
  ees8([ d)] c([ d)] ees r8 r4 | 
  R1*7
  r2 r4 d4\ff
  | % 22
  ees4-> ees d c8[( bes])
  | % 23
  c4-> d g,8 r d'4
  | % 24
  ees4-> ees d c8[( bes])
  | % 25
  c4-> d g,8 r f'4
  | % 26
  g4-> ees f-> d
  | % 27
  c4-> c8([ d)] ees r c4
  | % 28
  ees4-> c ees4.-> g8\ff
  | % 29
  g4.-> g8 g2~ | g1  | << R1 {s2 s^\markup{poco rit.}} >> R1*2 \key d \major 
  R1*31  |r2 d2\ff \key es \major
  | % 66
  ees4-> ees d c8([ bes])
  | % 67
  c4-> d g,8 r8 r4 |
  R1 r2 r4 f'4\ff
  | % 70
  g4-> ees f-> d
  | % 71
  c4-> c8[( d)] ees r8 r4 
  R1 r2 r4 ees\p
  | % 74
  ees4.-> fes8 des4-. ees4
  | % 75
  ces4-> bes8[( aes]) ges r ees'4
  | % 76
  ees4.-> fes8 des4-.ees4
  | % 77
  ces4-> ges8[( aes)] ges r ces\mp([ bes])
  | % 78
  aes4 ees' ees fes8[(\< f])
  | % 79
  ges4.->\> fes8\! ees r ces[( bes])
  | % 80
  aes4-> ees' ees fes8[(\< f]) 
  | % 81
  ges4.->\! fes8 ees r d4\ff
  | % 82
  ees4-> ees d c8[( bes)]
  | % 83
  c4-> d g,8 r d'4
  | % 84
  ees4-> ees d c8[( bes)]
  | % 85
  c4-> d g,8 r f'4
  | % 86
  g4-> ees f-> d
  | % 87
  c4-> c8[( d]) ees r c4
  | % 88
  ees4-> c ees4.-> g8\ff
  | % 89
  g4.-> g8 g2~ | g r
  
}

alto = \relative c'' {
  \global
  \autoBeamOff
  \dynamicUp
  R1*4 | r2 r4 aes\ff
  | % 6
  g4-> c, g' ees8[( g)]
  | % 7
  g4-> bes g8 r aes4
  | % 8
  g4-> c, g' ees8[( g)]
  | % 9
  g4-> bes g8 r d'4
  | % 10
  bes4-> g aes-> f
  | % 11
  ees4-> aes c8 r aes4
  | % 12
  g4-> aes g ees
  | % 13
  g4-> aes g8 r8 r4 R1*7
  r2 r4 aes4\ff
  | % 22
  g4-> c, g' ees8[( g)]
  | % 23
  g4-> bes g8 r aes4
  | % 24
  g4-> c, g' ees8[( g)]
  | % 25
  g4-> bes g8 r d'4
  | % 26
  bes4-> g aes-> f
  | % 27
  ees4-> aes c8 r aes4
  | % 28
  g4-> aes g4.-> ees'8\ff
  | % 29
  ees4.-> ees8 es2~ es1 R1*3 \key d \major 
  a,2.^\markup\left-column{"А. a tempo" \dynamic mp} a4
  | % 35
  g2 fis
  | % 36
  d2 e4 fis
  | % 37
  g2 g
  | % 38
  fis2 e4 fis
  | % 39
  b,2 cis
  | % 40
  d1~ d2 r4 r
  | % 42
  e2.\mf e4
  | % 43
  fis2\< g
  | % 44
  b1\f
  | % 45
  a4( g) fis( e)
  | % 46
  a1
  | % 47
  e2\>( fis)
  | % 48
  d1\p~ | d2. r4  |
  R1*15 |
  r2 aes'2\ff \key es \major
  | % 66
  g4-> c, g' ees8[( g])
  | % 67
  g4-> bes bes,8 r8 r4 | R1 | r2 r4 d'\ff
  | % 70
  bes4-> g aes-> f
  | % 71
  ees4-> aes8[( bes]) c r8 r4 | R1*2 | r2 r4 bes\p
  | % 75
  ces4-> bes8[( aes]) ges r8 r4 | r2 r4 bes4
  | % 77
  ces4-> ges8[( aes]) ges r ees4\mp
  | % 78
  aes2.-> aes4\<
  | % 79
  aes4.->\> aes8\! ces r ees,4
  | % 80
  aes2.-> aes4\<
  | % 81
  aes4.->\! aes8 ces r aes4\ff
  | % 82
  g4-> c, g' ees8[( g])
  | % 83
  g4-> bes g8 r aes4
  | % 84
  g4-> c, g' ees8[( g])
  | % 85
  g4-> bes g8 r d'4
  | % 86
  bes4-> g aes-> f
  | % 87
  ees4-> aes c8 r aes4 
  | % 88
  g4-> aes g4.-> ees'8\ff
  | % 89
  es4. es8 es2~ | es r
  
}

tenor = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4 | r2 r4 d\ff
  | % 6
  ees4-> ees d c8[( bes])
  | % 7
  c4-> d bes8 r d4
  | % 8
  ees4-> ees d c8[( bes])
  | % 9
  c4-> d bes8 r f'4
  | % 10
  g4-> ees f-> d
  | % 11
  c4-> c8[( d]) ees r c4
  | % 12
  ees4-> c ees c
  | % 13
  ees8->[( d]) c[( d]) ees r ees4\f 
  | % 14
  ees4-> des ges fes8[( ees])
  | % 15
  des4-> ces8[( des]) ees-> r ees4
  | % 16
  ees4-> des ges fes8[( ees])
  | % 17
  des4 ees8[( des]) ces r bes4
  | % 18
  ges'4-> ees ges-> f8[( ees])
  | % 19
  des4-> f bes,8 r bes4
  | % 20
  ges'4-> ees ges-> f8[( ees])
  | % 21
  des4 des8[( ees]) f r d4\ff
  | % 22
  ees4-> ees d c8[( bes])
  | % 23
  c4-> d bes8 r d4
  | % 24
  ees4-> ees d c8[( bes])
  | % 25
  c4-> d bes8 r f'4
  | % 26
  g4-> ees f-> d
  | % 27
  c4-> c8[( d]) ees r c4
  | % 28
  ees4-> c ees4.-> g8\ff
  | % 29
  g4.-> g8 g2~ | g1 R1*3  \key d \major 
  R1*32 \key es \major R1
  r2 r4 d4\ff
  | % 68
  ees4-> ees d c8[( bes])
  | % 69
  c4-> d g,8 r8 r4 | R1
  r2 r4 c4\ff |
  | % 72
  ees4-> c ees c
  | % 73
  ees8->[( d]) c[( d]) ees r8 r4 | 
  R1*7
  r2 r4 d4\ff
  | % 82
  ees4-> ees d c8[( bes])
  | % 83
  c4-> d bes8 r d4
  | % 84
  ees4-> ees d c8[( bes])
  | % 85
  c4-> d bes8 r f'4 
  | % 86
  g4-> ees f-> d
  | % 87
  c4-> c8[( d]) ees r c4
  | % 88
  ees4-> c ees4.-> g8\ff
  | % 89
  g4.-> g8 g2~ | g r
  
}

bass = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*4 | r2 r4 aes'4\ff
  | % 6
  g4-> c, g' ees8[( g])
  | % 7
  g4-> bes g8 r aes4
  | % 8
  g4-> c, g' ees8[( g])
  | % 9
  g4-> bes g8 r d'4
  | % 10
  bes4-> g aes-> f
  | % 11
  ees4-> aes c8 r aes4
  | % 12
  g4-> ees g aes
  | % 13
  g4-> aes g8 r8 r4 |
  R1*3 r2 r4 bes4
  | % 18
  bes4-> a bes-> aes8[( a])
  | % 19
  bes4-> f des8 r bes'4
  | % 20
  bes4-> a bes-> aes8[( a])
  | % 21
  bes4 f des'8 r aes?4\ff
  | % 22
  g4-> c, g' ees8[( g])
  | % 23
  g4-> bes g8 r aes4
  | % 24
  g4-> c, g' ees8[( g])
  | % 25
  g4-> bes g8 r d'4
  | % 26
  bes4-> g aes-> f
  | % 27
  ees4-> aes c8 r aes4
  | % 28
  g4-> aes g4.-> <g ees' >8\ff
  | % 29
  q4.-> q8 q2~ q1 | R1*3 \key d \major 
  R1*16 
  a2.^\markup{Б. \dynamic mf}-> a4
  | % 51
  g2 fis
  | % 52
  d2 e4 fis
  | % 53
  g2 g
  | % 54
  fis2 e4 ges
  | % 55
  b,2 cis
  | % 56
  d1->~ | d2. r4
  | % 58
  e2.\mf e4
  | % 59
  fis2\< g
  | % 60
  b1\f
  | % 61
  a4( g) fis( e)
  | % 62
  a1
  | % 63
  e2->( fis)
  | % 64
  d1\p~ | d2 r2 | \key es \major 
  R1 r2 r4 aes'4\ff
  | % 68
  g4-> c, g' ees8[( g])
  | % 69
  g4-> bes bes,8 r8 r4 | R1 r2 r4 aes'4\ff
  | % 72
  g4-> ees g aes
  | % 73
  g4-> aes g8 r8 r4 | R1*7 
  r2 r4 aes4\ff
  | % 82
  g4-> c, g' ees8[( g])
  | % 83
  g4-> bes g8 r aes4
  | % 84
  g4-> c, g' ees8[( g])
  | % 85
  g4-> bes g8 r d'4
  | % 86
  bes4-> g aes-> f
  | % 87
  ees4-> aes c8 r aes4 
  | % 88
  g4-> aes g4.-> <g ees' >8\ff
  | % 89
  q4.-> q8 q2 | q r
  
}

intro = \lyricmode { 
  Вста -- вай -- те, лю -- ди рус -- ски -- е,
  на слав -- ный бой, на смерт -- ный бой.
  Вста -- вай -- те, лю -- ди воль -- ны -- е,
  за на -- шу зем -- лю чест -- ну -- ю. 
}
centro = \lyricmode { 
  Вста -- вай -- те, лю -- ди рус -- ски -- е,
  на слав -- ный бой, на смерт -- ный бой,
  вста -- вай -- те, лю -- ди воль -- ны -- е,
  за на -- шу зем -- лю чест -- ну -- ю. __
}
endo = \lyricmode { 
  Вста -- вай -- те, лю -- ди рус -- ски -- е,
  на слав -- ный бой, на смерт -- ный бой,
  вста -- вай -- те, лю -- ди воль -- ны -- е,
  за на -- шу зем -- лю чест -- ну -- ю! __
}

refrain = \lyricmode {
  На Ру -- си род -- ной, на Ру -- си боль -- шой
  не бы -- вать вра -- гу. __
  Под -- ни -- май -- ся, встань, 
  мать род -- на -- я Русь! __
}

verses = \lyricmode {
  \intro

  \centro
  
  Вста -- вай -- те, лю -- ди рус -- ски -- е,
  
  вста -- вай -- те, лю -- ди воль -- ны -- е,
 
  Вра -- гам на Русь не ха -- жи -- вать,
  пол -- ков на Русь не ва -- жи -- вать,
  пу -- тей на Русь не ви -- ды -- вать,
  по -- лей Ру -- си не тап -- ты -- вать.
 
  \endo
}

versea = \lyricmode {
  \repeat unfold 64 \skip 1
  \refrain
  
}

verset = \lyricmode {
  \intro
  Жи -- вым бой -- цам по -- чёт и честь,
  а мёрт -- вым сла -- ва веч -- на -- я.
  За от -- чий дом, за __ рус -- ский край
  вста -- вай -- те, лю -- ди рус -- ски -- е.
  \centro
  
  на слав -- ный бой, на смерт -- ный бой,
  
  за на -- шу зем -- лю чест -- ну -- ю.
  \endo
  
}

verseb = \lyricmode {
  \repeat unfold 80 \skip 1
  \refrain
  
}


rightOne = \relative c' {
  \global
  \oneVoice
  \autoBeamOff
  \tempo "Allegro risoluto"
  r8. <a ces >16\ff bes'4~-> bes8.[ <a, ces >16] bes'4~
  | bes8.[ <a, ces >16] bes'4~-> bes8.[ <a, ces >16] bes'4->
  | % 3
  bes2-> <b d g b >8.-> <a, ces >16 bes'4~-> |
  bes <b d g b >8.-> <a, ces >16 bes'4..->
  <a, ces >16
  | % 5
  bes'2-> <b d g b >4 \clef bass <d,, aes' d >
  | % 6
  <ees g ees' >4-> <ees ees' > r2
  | % 7
  <c d g bes c >4-> <d d' > <g, g' >8 r <d' aes' d >4
  | % 8
  <ees g ees' >4-> <ees ees' > r2
  | % 9
  <c d g bes c >4-> <d d' > g8 r <f d' f >4
  | % 10
  <g bes ees g >4-> <ees g ees' > <f aes f' >-> <d f bes d >
  | % 11
  <c ees aes c >4-> r r <ees aes c >
  | % 12
  <ees g ees' >4-> <ees aes c > <ees g ees' >-> <ees aes c >
  | % 13
  <ees g ees' >4 r4 r2  | \clef treble
  \set tieWaitForNote = ##t
  \grace { ees'16[~ aes~ ees'~]} <ees, aes ees'>2\f  r |
  \grace { des16[~ fes~ ces'~ des~]} <des, fes ces' des>2
  \grace { es16[~ ges~ ces~ es~]} <es, ges ces es>2
  | % 16
  \grace {es16[~ aes~ es'~]} <es, aes es'>2 r |
  \grace {des16[~ fes~ ces'~ des~]} <des, fes ces' des>2  
  \grace {ces16[~ es~ ges~ ces~]} <ces, es ges ces>2 |
  \grace {ges'16[~ bes~ es~ ges~]} <ges, bes es ges>4
  <ees a ees' >4 <ges bes ees ges > r | 
  \grace {des16[~ f~ bes~ des~]} <des, f bes des>4 <f f' >4
  <bes, bes' >4 r |
  \grace {ges'16[~ bes~ ees~ ges~]} <ges, bes es ges>4 <ees a ees' >4 <ges bes ees ges >
  r4 |
  \grace {des16[~ f~ bes~ des~]} <des, f bes des>4 r r <d' f aes d! >4(
  | % 22
  <ees g ees' >8) r <ees ees' >4 <d d' > <c c' >8[( <bes bes' >]
  | % 23
  <c d g bes c >8)-> r <d d' >4 <g, g' > <d' f aes c >(
  | % 24
  <ees g ees' >8)-> r <ees ees' >4 <d d' > <c c' >8([ <bes bes' >]
  | % 25
  <c d g bes c >8)-> r <d d' >4 <g, g' > <f' d' f >(
  | % 26
  <g bes g' >8) r <ees g ees' >4 <f aes f' >-> <d f bes d >
  | % 27
  <c ees aes c >4-> <c c' >8([ <d d' >] <ees ees' >) r <c ees aes c >4
  | % 28
  <ees g ees' >4-> <c ees aes c > <ees g ees' >4.-> <g ees' g >8\ff
  | % 29
  <g ees' g >4.-> <g, ees' g >8 <g ees' g >2~-> | q <g, ees' g >4\f\> <g ees' g >
  | % 31
  <g ees' g >4 <g ees' g > <g ees' g >^"poco rit." <g ees' g > \mf \>
  | % 32
  <g d' ees g >4 <g d' ees g > <g d' ees g > <g d' ees g >
  | % 33
  <a ees' g a >4 <a ees' g a > <a ees' g a > <a ees' g a >\!
  | % 34
  \clef bass \key d \major
  <a d fis >4-\markup{\dynamic p \italic espress.}  q q q 
  | % 35
  <a e' >4 q <a d > q
  | % 36
  <b d >4 <b d > <b d > <b d >
  | % 37
  <b d g >4 <b d g > <b d g > <b d g >
  | % 38
  \voiceOne <a d fis >4 q q q 
  | % 39
  <d, fis b >4 q <e a cis > q
  | % 40
  \voiceTwo <fis a >4 q2.~\< | <fis a d>4 q\! q2
  | % 42
  \oneVoice \clef treble r4 e' b'\p\< <e, e' >
  | % 43
  \voiceOne <fis fis' >2( <g g' >) \oneVoice
  | % 44
  <b g' b >4->\!-\markup{\dynamic mf \italic espr.}( <a fis' a > <g e' g >2)
  | % 45
  <a fis' a >4( <g e' g >) <fis b fis' >( <e g e' >)
  | % 46
  \voiceOne a'1
  | % 47
  e2(\> <fis, fis' >)
  | % 48
  d'1~\p | d r4 <a, a' >( <b a' b > <cis a' cis >
  | % 51
  <d d' >4 <e e' > <fis fis' > <g g' >)
  | % 52
  \oneVoice <a a' >4( <b b' > <cis cis' > <d d' >
  | % 53
  <e e' >4 <fis fis' > <g g' >2) \voiceOne
  | % 54
  d,4 <fis a > <e b' > <fis a >
  | % 55
  d4( a') b( a)
  | % 56
  d,2 <a fis' a >4 <b fis' a >
  | % 57
  \oneVoice <cis fis a >4 <d fis > <e fis a d > <fis a d >
  | % 58
  r4 e b' <e, e' >
  | % 59
  \voiceOne <fis fis' >2( <g g' >) \oneVoice
  | % 60
  <b g' b >4->\!-\markup{\dynamic mf \italic espr.}( <a fis' a > <g e' g >2)
  | % 45
  <a fis' a >4( <g e' g >) <fis b fis' >( <e g e' >)
  \voiceOne a'1
  | % 63
  e2(\> <fis, fis' >)
  | % 64
  <d d' >1~\p | q2 <d aes' d >2->\ff \key es \major
  | % 66
  <g ees' >2-> \oneVoice r \clef bass
  | % 67
  <c,, d g bes c >4-> <d d' > g8 r <d aes' d >4
  | % 68
  <ees g ees' >4-> <ees ees' > r2
  | % 69
  <c d g bes c >4-> <d d' > <g, g' >8 r <f' d' f >4
  | % 70
  <g bes g' >4-> <ees g ees' > <f aes f' >-> <d f bes d >
  | % 71
  <c ees aes c >4-> r2 <ees aes c >4
  | % 72
  <ees g ees' >4-> <ees aes c > <ees g ees' >-> <ees aes c >
  | % 73
  <ees g ees' >4-> r r r8 \clef treble <ees'' ees' >8\p \voiceTwo
  | % 74
  <ees ees' >4.( <fes fes' >8 <des fes des' >4) <ees bes' ees >
  | % 75
  \oneVoice <ces ees ces' >4( <bes bes' >8[ <aes aes' >] <ges ees' ges >) r <ees' ees' >4
  | % 76
  \voiceTwo <ees ees' >4.( <fes fes' >8 <des fes des' >4) <ees bes' ees >
  | % 77
  \oneVoice <ces ees ces' >4( <ges ges' >8[ <aes aes' >] <ges ees' ges >) r <ces ees ces' >[\mp
  <bes des bes' >8]
  | % 78
  <aes ces aes' >8->[ r <ees' aes ces ees >-. r q-.]\< r \ottava 1 <fes aes ces! fes >( <f f' >
  | % 79
  \voiceOne <ges ges' >4.\> <fes fes' >8 <ees ees' >) \ottava 0 \oneVoice r <ces es ces'!>[(\! <bes bes'>])
  | % 80
  <aes ces aes' >4 <ces aes' ces >8([ <des des' >] <ees aes ces ees >4)
  \ottava 1 <fes aes ces! fes >8[( <f f' >]
  | % 81
  \voiceOne <ges ges'>4. <fes fes'>8 <es es'>) \ottava 0 \oneVoice r <d f aes d >4\ff(
  | % 82
  <ees g c ees >8->) r <ees ees' >4 <d d' > <c c' >8[( <bes bes' >]
  | % 83
  <c d g bes c >8->) r <d d' >4 <g, g' > <d' f aes d >(
  | % 84
  <ees g c ees >8)-> r <ees ees' >4 <d d' > <c c' >8[( <bes bes' >]
  | % 85
  <c d g bes c >8)-> r <d d' >4 <g, g' > <f' aes d f >
  | % 86
  <g ees' g >8-> r <ees g ees' >4 <f aes f' >-> <d f d' >
  | % 87
  <c ees aes c >4-> <c c' >8[ <d d' >] <ees ees' > r <c ees aes c >4
  | % 88
  <ees g ees' >4-> <c ees aes c > <ees g ees' >4.->\ff <g ees' g >8
  | % 89
  \voiceOne <g ees' g >1~-> | q2 \oneVoice r 
  
}

rightTwo = \relative c {
  \global
 s1*37 
 fis2 e4 fis
  | % 39
  \parenthesize b,2 cis
  | % 40
  \voiceOne <d d'~ >1 |  \once \hide Stem  d'4  s s2 | \voiceTwo
  | % 41
  s1 <b' e >4 q2 q4
  | % 44
  s1*2 <a cis >4( <gis b >) <a cis >2
  | % 47
  <d, g! d' >4 <d g d' > cis' b
  | % 48
  d,4 <fis a > <cis a' >2
  | % 49
  g'4 e <d fis >2
  | % 50
  s1
  | % 51
  a'1
  | % 52
  s1 |
  s4 \change Staff="left" \voiceThree ais, b \showStaffSwitch \change Staff="right" cis \voiceTwo | r4 a2.
  | % 55
  b4. r8 cis4. r8
  | % 56
  fis,4 g s s
  | % 57
  s1*2 |
   <b' e >4 q2\< q4\! 
  | % 60
  s1
  | % 61
  s1
  | % 62
  <a cis >4( <gis b >) <a cis >2
  | % 63
  <d, g! d' >4 <d g d' > cis' b
  | % 64
  r4 d, fis, a
  | % 65
  a2 s
  | % 66
  ees'4 ees s2 | s1*7 |
  \voiceOne aes'2 s2 s1
  aes2 s2 s1 |
  s1 | \voiceTwo <aes ces >4 q q8 s s4 |
  s1 <aes ces >4 q q8 s s4 |
  | % 80
  s1*7
  | % 81
  r4. <g, ees' g >8 q2~ | <g ees'>2 s 
  | % 90
  
}

otv = { \set Staff.ottavation = #"8" \once \override Staff.OttavaBracket.direction = #DOWN 
%        \set Voice.middleCPosition = #(+ 6 7) 
}
otvv = { \unset Staff.ottavation \unset Voice.middleCPosition }
leftOne = \relative c {
  \global
  r4 <bes bes' >2-> q4~-> | q q2-> q4-> |
  | % 3
  q2-> <d g b >4-> <bes bes' >4~-> | q <d g b >4-> <bes bes' >2->
  | % 5
  <bes bes' >2-> <d g b >4-> <bes,? bes'? >
  | % 6
  <c c' >4-> r r2
  | % 7
  <g g' >4-> r r <bes? bes'? >
  | % 8
  <c c' >4-> r r2
  | % 9
  \oneVoice <g g' >4-> r g'8 r <bes, bes' >4
  | % 10
  <ees, ees' >4-> <g g' > <f f' >-> q8 <g g' > \voiceOne
  | % 11
  <aes aes' >4-> r r <aes aes' >
  | % 12
  <ees ees' >-> <aes aes' > <ees ees' >-> <aes aes' >
  | % 13
  \oneVoice \otv \acciaccatura <g' a>8 <es es' >4-> \otvv r r2
  | % 14
  <fes, fes' >2 r
  | % 15
  <g g' >2 <ces ces' >
  | % 16
  <fes, fes' >2 r
  | % 17
  <g g' >2 <ces ces' >
  | % 18
  <ees, ees' >4 <ges ges' > <ees ees' >2
  | % 19
  <bes' f' des' >4 f'' des r
  | % 20
  <ees,, ees' >4 <ges ges' > <ees ees' > r
  | % 21
  \voiceOne <bes' f' des' >4 r r <bes bes' >4
  | % 22
  <c g' c >4 ees'' r2
  | % 23
  <g,,, c d g >4-> d'' g, <bes, bes' >
  | % 24
  \oneVoice <c c' >4-> ees'' r2
  | % 25
  \voiceOne <g,,, c d g >4-> d'' g, <bes, bes' >
  | % 26
  \oneVoice<ees, ees' >4-> <g g' > <f f' >-> <f f' >8 <g g' >\voiceOne
  | % 27
  <aes aes' >4 r r <aes aes' >
  | % 28
  <ees ees' >4-> <aes aes' > ees'4. <g' ees' >8
  | % 29
  <g ees' >4.-> <g ees' >8~ q2
  | % 30
  s1*4 
  \voiceOne \parenthesize a1
  | % 35
  g2( fis)
  | % 36
  d2( e4 fis
  | % 37
  g2)-> g
  | % 38
  s1*4 | 
  \voiceOne r4 e4 b' s4
  | % 43
  s1
  | % 44
  <g b >4-> <fis a > <e g >2
  | % 45
  \oneVoice <fis a >4( <e g >) <b fis' >( <g e' >) \voiceOne
  | % 46
  cis'4( d) cis2
  | % 47
  s1*2 g4 e <d fis >2
  | % 50
  r4 <a' d fis > q q
  | % 51
  <a d fis >1
  | % 52
  r4 <d, g b d > q q 
  | % 53
  <g b d g>1 |
  s1 |
  d4( fis) e( a)
  | % 56
  d,4 d <cis, cis'>2
  | % 57
  <b b' >2 <a a' > |
  r4 e''4 b' \oneVoice <g, g'>
  | % 59
  s1
  | % 60
  \voiceOne <g' b >4(-> <fis a > <e g >2)
  | % 61
  \oneVoice <fis a >4( <e g >) <b fis' >( <g e' >) \voiceOne
  | % 62
  cis'4( d) cis2
  | % 63
  s1 |
  r4 d, fis, a
  | % 65
  a2 \otv  << { \acciaccatura d,8 <a bes d bes' >2->} {s4 \otvv s } >>
  | % 66
  <c c' >2 r
  | % 67
  \oneVoice <g g' >4-> r g'8 r <bes, bes' >4
  | % 68
  <c c' >4-> r4 r2
  | % 69
  \voiceOne <g g' >4 r r <bes? bes'? >
  | % 70
  \oneVoice <ees, ees' >4-> <g g' > <f f' >-> <f f' >8 <g g' > \voiceOne
  | % 71
  <aes aes' >4 r r <aes aes' >
  | % 72
  \oneVoice <ees ees' >4-> <aes aes' > <ees ees' >-> <aes aes' >
  | % 73
  \voiceOne <g a >4 r r2
  | % 74
  \oneVoice <fes fes' >8-.[ r q-. r q-. r <ges ges'>-.] r
  | % 75
  \tuplet 3/2 4 { ces8[( es ges] ces[ es ges] } ces8) 
  r <ces,, ces' > r
  | % 76
  <fes, fes' >8-.[ r q-. r q-. r <ges ges'>-.] r
  | % 77
  \tuplet 3/2 4 { ces8[( es ges] ces[ es ges] } ces8) 
  r <ces,, ees ces' >([ <bes des bes' >])
  | % 78
  <aes ces ees aes >8[-> r <ees' aes ces ees >-. r q-.] r
  <fes aes ces fes >8( <f f' >
  | % 79
  \voiceOne <ges ges' >4. <fes fes' >8 <es es' >) \oneVoice r <ces ees ces' > <bes des bes' >
  | % 80
  <aes ces aes' >4-> <ces ces' >8([ <des des' >] <ees aes ces ees >4) <fes aes ces fes >8[(
  <f f' >8]
  | % 81
  \voiceOne <ges ges' >4. <fes fes' >8 <ees ees' >) \oneVoice r8 <bes bes' >4
  | % 82
  <c c' >4-> ees'' r2
  | % 83
  \voiceOne <g,,, c d g >4 d''' r <bes,, bes'! >
  | % 84
  \oneVoice <c c' >4 ees'' r2
  | % 85
  \voiceOne g,,4 d' g,8 r <bes, bes'! >4
  | % 86
  \oneVoice <ees, ees' >4 <g g' > <f f' > <f f' >8 <g g' >
  | % 87
  \voiceOne <aes aes' >4 r r <aes aes' >
  | % 88
  <ees ees' >4 <aes aes' > ees'4. <g' ees' >8
  | % 89
  <g ees' >4.-> <g ees' >8~ q2~ q2 \oneVoice r
  \bar "|."
  
}

leftTwo = \relative c {
  \global
    << { <a, bes bes' >2 <a bes bes' >} { \otv s4 \otvv s \otv s \otvv } >>
  | % 2
  r2 \otv << <a bes bes' > {s4 \otvv s} >>
  | % 3
  r4 \otv << <a bes bes' >2 {s4 \otvv s} >> r4
  | % 4
  << { <a bes bes' >2. <a bes bes' >4 } {\otv s4 \otvv s2 \otv s4 \otvv} >>
  | % 5
  r4 \otv <a bes bes' >2 \otvv r4 |
  s1 |
  r2 \otv << <a b g' >2 { s4 \otvv s } >>
  | % 8
  r2 \otv <b c c' > \otvv
  | % 9
  s1 |
  s1 |
  r2 \otv << <a? bes aes'? > {s4 \otvv s} >>
  | % 12
  s1 * 9 |
  r2 \otv << <a bes bes' >2 { s4 \otvv s } >>
  | % 22
  r2 \otv <a bes bes' > \otvv
  | % 23
  r2 \otv << <a b > {s4 \otvv s } >>
  | % 24
  s1 r2 \otv << <a b >2 { s4 \otvv s } >>
  | % 26
  s1 r2 \otv << <a bes aes'! >2 { s4 \otvv s } >>
  | % 28
  r2 <d, ees >->
  | % 29
  r2 \otv <d' es ees'>~ | \oneVoice q1~ | q1 \otvv |
  | % 30
  \set tieWaitForNote = ##t
  \grace { es16[~ es'~]} <es, es'>1 
  | % 33
  \grace { c16[~ c'~]} <c, c'>1 
  \key d \major
  | % 34
  \voiceTwo <d d' >1~ q | q~ | q | \oneVoice q2( <cis cis' >4 <d d' >) \oneVoice
  | % 39
  <b b' >2-> <a a' >2~ | q <b b' >4-- <cis cis'>--
  | % 41
  <d d' >2-> <e, e' >4-- <fis fis'>4--
  | % 42
  \voiceTwo <g g' >2.-> \voiceOne <g' g'>4
  | % 43
  <fis fis' >2 <e e'>~ \voiceTwo
  | % 44
  q1
  | % 45
  s1
  | % 46
  fis2. <cis cis' >4
  | % 47
  \oneVoice <b b' >2 <g g' >
  | % 48
  <d' d' >2. <d' d' >4 \voiceTwo
  | % 49
  <b b' >2 r
  | % 50
  << <d, d' >1 { \otv s4 \otvv s s s} >>
  | % 51
  \otv r4 <d d' >-- q-- q-- 
  | % 52
  << q1 { s4 \otvv s2. } >> | r4 d2 \otv <d d' >4
  | % 54
  \oneVoice <d d' >2 \otvv <cis cis' >4( <d d' >) \voiceTwo
  | % 55
  b'2 a
  | % 56
  d,2 s
  | % 57
  s1
  | % 58
  <g, g' >2. s4
  | % 59
  \oneVoice <fis' fis' >2 <e e' >2~ \voiceTwo| q1
  s1
  | % 62
  fis2. <cis cis' >4
  | % 63
  \oneVoice <b b' >2 <g g' > \voiceTwo
  | % 64
  <d'~ d'>1
  | % 65
  d2. r4 \key es \major
  | % 67
  r2 \otv <b c c' >2 \otvv
  | % 70
  s1 s1 r2 \otv << <a b g' >2 { s4 \otvv s } >>
  | % 72
  s1
  | % 73
  r2 \otv << <a bes aes'? >2 { s4 \otvv s } >>
  | % 74
  s1 <es es'> | s1*5 
  <aes' ces >4 q q8 s4. s1 | q4 q
  q8 s4. | s1 | r2 \otv << <a, b g' >2 { s4 \otvv s } >>
  | % 84
  s1
  | % 85
  \otv << <a b >2 {s4 \otvv s} >> r2 | s1 |
  r2 \otv << <a bes aes'! >2 {s4 \otvv s} >>
  | % 88
  r2 <d, ees >
  | % 89
  r2 \otv <d' ees ees' >2~ q \otvv s
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "S."
  } \new Voice = "soprano" \soprano
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verses
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "A."
  } \new Voice = "alto" \alto
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "alto" \versea
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "T."
  } {
    \clef "treble_8"
    \new Voice = "tenor" \tenor
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verset
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "B."
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "bass" \verseb
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "P-no"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } << 
    \rightOne 
       \\ 
       \rightTwo 
  >>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass <<
    \leftOne 
    \\ 
    \leftTwo 
  >> }
>>

\score {
  <<
    \choirPart
    \pianoPart
  >>
  \layout { 
   
   \context {  
      \Score
      \remove "Metronome_mark_engraver"
      \remove "Mark_engraver"
    }
    \context {
      \Staff
        \RemoveEmptyStaves
        \consists "Metronome_mark_engraver"   
        \consists "Mark_engraver"
        \override VerticalAxisGroup.remove-first = ##t
    }    
  }
  \midi {
    \tempo 4=180
  }
}
