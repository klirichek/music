% Lily was here -- automatically converted by /usr/local/lilypond/usr/bin/midi2ly from /media/ddwrt/notes/Богородице дево, радуйся.MID
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key d \minor

  \time 4/4


  \key d \minor

  \tempo 4 = 120
  \skip 1*19
  \time 6/4
  \skip 1*9
  \time 4/4

}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {

  \set Staff.instrumentName = "Acoustic Grand Piano"

}

trackBchannelB = \relative c {
  \voiceThree
  r2 <c' f a f, >4 <c f a f, >
  | % 2
  <f a f, >4. <e g c,, >8 <d f a, d, >4 <f a c, a, >
  | % 3
  <c e g c,, >4. <a d f d, >8 <c e g c,, >2
  | % 4
  <f a f, >8 <e g c,, > <d f a, d, > <a' c, a, > <g d bes, >
  <f a, d, >8 <e g c, c, >4
  | % 5
  <f a c, f, >2 <a f c f, >4 g8 a
  | % 6
  <bes d, >4 <a c, > <g bes, > d8 <a' e >
  | % 7
  <f bes, d, >4 <e a, c, > <d g, bes, >8 <e c a a, > <d f >
  <e g >8
  | % 8
  <f a >8 <e g > <d f > <a' c, a, > <g d bes, > <f a, d, >
  <e g c, c, >4
  | % 9
  <f a c, f, >2 f,4 d
  | % 10
  <e' c, >4. <f d, >8 <e c, >4 <a d, g, bes, >
  | % 11
  <c, e, >4. <d f, >8 <c e, >4 <bes d, g, >
  | % 12
  <c a, >4 <d bes, >2 <g e bes c, >4
  | % 13
  <f a f, >8 <e g c,, > <d f a, d, > <a' c, a, > <g d bes, >
  <f a, d, >8 <e g c, c, >4
  | % 14
  <f a >2 <f a >4 <f a >
  | % 15
  <f a >8 <e g > <d f > <f a > <e g > <d f > <a' a, > <bes bes, >
  | % 16
  c,4 d2 f8 <f a >
  | % 17
  <e g >8 <d f > <e g >4 <f a >2. <e g >8 <f a > <g bes >4
  <g bes >8 <g bes >
  | % 19
  <g bes >8 <f a > <e g > <g bes > <f a > <e g > c bes
  | % 20
  <f' a c, >4 <e g >8 <f a > <g bes > <f a > <e g > <g bes >
  | % 21
  <f a d, >8 <g e > <a a, > <bes bes, > <c c, >4. <c c, >8
  | % 22
  <c c, >8 <bes bes, > <a a, > <c c, > <bes bes, > <a a, >
  <c e c, e >4
  | % 23
  <d f d, f >4 <bes bes, >8 <bes bes, > <d bes d, bes > <f a, d, f a, >
  <g, g, >8 <bes bes, >
  | % 24
  <a a, >8 <f f, > <bes d g, bes, d g, >4 <a a, f' > a8 a
  | % 25
  <a c, >8 <g bes, > f a <g bes, > <f a, > <g bes, c, >4
  | % 26
  <c, f, >4 c8 c c <g' bes, > <f a, > <a c, >
  | % 27
  <g bes, >8 <f a, > <g bes, c, >4 <c c, > <c c, >8 r
  | % 28
  <f, a a, f >4 <e g g, e > <f d d, > <a e c, >
  | % 29
  <g d g, bes, >2 f,4 e
  | % 30
  <d g, >2. c4
  | % 31
  <f' a, f f, c' >1
  | % 32

}

trackBchannelBvoiceB = \relative c {
  \voiceFour
  r1
  | % 2
  c'2 r1. c4 r8 f4 r8*9 <f c e, >4
  | % 6
  <f d, >2. <a, c, >4
  | % 7
  g'8*5 r8 <bes, g, >4
  | % 8
  <a d, >4. f'4 r8*7 <f a c, >2
  | % 10
  <a a, >2. r4
  | % 11
  a,,2. r4
  | % 12
  e'4. f8 g a r4
  | % 13
  c4 r8 f4 r4.
  | % 14
  <c f, >1
  | % 15
  <c' c, >2. <e, g >4
  | % 16
  <f a >2 <f a >8 <e g > c4
  | % 17
  a4 c2 e4
  | % 18
  d1
  | % 19
  d2 d4 <f a >
  | % 20
  r4 d2 c4
  | % 21
  r4 <d f > <e' g e, g >1 <d f d, f >4 <bes bes, >2 <c e c, e >4
  r4 <c e c, e >2 r4 c,2
  | % 25
  <f, d' >4 <a e c' > d, r
  | % 26
  a''8*5 r8 e,4
  | % 27
  d4 r <a'' f, >4. r8
  | % 28
  c,2 a
  | % 29
  r2 <f' c a, >
  | % 30
  <g bes, >1
  | % 31

}

trackBchannelBvoiceC = \relative c {
  \voiceOne
  r1*10 a''4*7 r4*47 c1 c2
  | % 26
  <c f,,, >1
  | % 27
  <c f,,, >2
}

trackBchannelBvoiceD = \relative c {
  \voiceTwo
  r4*95 <g' e' >4
  | % 25
  r4*5 e4 d
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
  \context Voice = voiceD \trackBchannelBvoiceC
  \context Voice = voiceE \trackBchannelBvoiceD
>>


trackCchannelA = {

  \set Staff.instrumentName = "Soprano"

}

trackCchannelB = \relative c {
  r2 a''4 a
  | % 2
  a4. g8 f4 a
  | % 3
  g4. f8 g2
  | % 4
  a8 g f a g f g4
  | % 5
  a2 a4 g8 a
  | % 6
  bes4 a g f8 a
  | % 7
  g8*5 e8 f g
  | % 8
  a8 g f a g f g4
  | % 9
  a2 a
  | % 10
  a2. g4
  | % 11
  a4*7 g4
  | % 13
  a8 g f a g f g4
  | % 14
  a1
  | % 15
  c2. a8 bes
  | % 16
  c4 d2 c4
  | % 17
  a4 c2 e4
  | % 18
  d1
  | % 19
  d2 d4 c8 bes
  | % 20
  c4 d2 c4
  | % 21
  d8 e <d f >4 <e g >1 <d f >4 <c e >
  | % 23
  <d f >4 <c e > d8 f <e c >2 d4 c1 c2
  | % 26
  c1
  | % 27
  c2 c4. r8
  | % 28
  a4 g f a
  | % 29
  g2 f
  | % 30
  g1
  | % 31
  f1
  | % 32

}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {

  \set Staff.instrumentName = "Alto"

}

trackDchannelB = \relative c {
  r2 f'4 f
  | % 2
  f4. e8 d4 f
  | % 3
  e4. d8 e2
  | % 4
  f8 e d f4 d8 e4
  | % 5
  f2 f4 f
  | % 6
  f2. d8 e
  | % 7
  f4 e d8 c d e
  | % 8
  f8 e d f4 d8 e4
  | % 9
  f2 f
  | % 10
  e4. f8 e4 d
  | % 11
  c4. d8 c4 bes
  | % 12
  c4 d2 e4
  | % 13
  f8 e d f4 d8 e4
  | % 14
  f4 <f a > <f a > <f a >
  | % 15
  <f a >8 <e g > <d f > <f a > <e g > <d f > <e g >4
  | % 16
  <f a >2 <f a >8 <e g > <d f > <f a >
  | % 17
  <e g >8 <d f > <e g >4 <f a >2. <e g >8 <f a > <g bes >4
  <g bes >8 <g bes >
  | % 19
  <g bes >8 <f a > <e g > <g bes > <f a > <e g > <f a >4
  | % 20
  <f a >4 <e g >8 <f a > <g bes > <f a > <e g > <g bes >
  | % 21
  <f a >8 g a bes c4. c8
  | % 22
  c8 bes a c bes a bes2 bes8 bes bes a g bes
  | % 24
  a8 f g4 a a8 a
  | % 25
  a8 g f a g f g4
  | % 26
  a8*5 g8 f a
  | % 27
  g8 f g4 a4. r8
  | % 28
  f4 e d e
  | % 29
  d2 c
  | % 30
  bes1
  | % 31
  a1
  | % 32

}

trackD = <<
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = {

  \set Staff.instrumentName = "Tenor"

}

trackEchannelB = \relative c {
  \voiceTwo
  r2 c'4 c
  | % 2
  c2 a4 c
  | % 3
  c4. a8 c2
  | % 4
  c4 a8 c d a c4
  | % 5
  c2 c4 c
  | % 6
  d4 c bes a
  | % 7
  bes4 a g8 a bes4
  | % 8
  a4. c8 d a c4
  | % 9
  c2 c
  | % 10
  a2. g4
  | % 11
  e4. f8 e4 d
  | % 12
  e4. f8 g a bes4
  | % 13
  c4 a8 c d a c4
  | % 14
  c1
  | % 15
  c2. a8 bes
  | % 16
  c4 d2 c4
  | % 17
  a4 c2 e4
  | % 18
  d1
  | % 19
  d2 d4 c8 bes
  | % 20
  c4 d2 c4
  | % 21
  d8 e <d f >4 <e g >1 <d f >4 <c e >
  | % 23
  <d f >4 <c e > d8 f <e c >2 <d bes >4 f e
  | % 25
  c8 bes <c a >4 bes8 a bes4
  | % 26
  c4 c8 c c bes a c
  | % 27
  bes8 a bes4 c4. r8
  | % 28
  a4 g a2
  | % 29
  g2 f4 e
  | % 30
  d2. c4
  | % 31
  f1
  | % 32

}

trackEchannelBvoiceB = \relative c {
  \voiceOne
  r2*47 c'2
  | % 25
  d4 r4*11 c2
}

trackE = <<

  \clef bass

  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
  \context Voice = voiceC \trackEchannelBvoiceB
>>


trackFchannelA = {

  \set Staff.instrumentName = "Bass"

}

trackFchannelB = \relative c {
  \voiceOne
  r2 f4 f
  | % 2
  f4. c8 d4 a
  | % 3
  c4. d8 c2
  | % 4
  f8 c d a bes d c4
  | % 5
  f2 f4 e
  | % 6
  d2. c4
  | % 7
  d4 c bes8 a g4
  | % 8
  d'4. a8 bes d c4
  | % 9
  f2 f4 d
  | % 10
  c4. d8 c4 bes
  | % 11
  a2. g4
  | % 12
  a4 bes2 c4
  | % 13
  f8 c d a bes d c4
  | % 14
  f1
  | % 15
  r4*25 a8 bes c4. c8
  | % 22
  c8 bes a c bes a bes2 bes8 bes bes a g bes
  | % 24
  a8 f g4 a g
  | % 25
  f4 e d c
  | % 26
  f4 e d e
  | % 27
  d4 c f4. r8
  | % 28
  f4 e d c
  | % 29
  bes2 a
  | % 30
  g2. c4
  | % 31
  <c f, >1
  | % 32

}

trackFchannelBvoiceB = \relative c {
  \voiceTwo
  r1*25 f,1
  | % 27
  f2
}

trackF = <<

  \clef bass

  \context Voice = voiceA \trackFchannelA
  \context Voice = voiceB \trackFchannelB
  \context Voice = voiceC \trackFchannelBvoiceB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
    \context Staff=trackE \trackA
    \context Staff=trackE \trackE
    \context Staff=trackF \trackA
    \context Staff=trackF \trackF
  >>
  \layout {}
  \midi {}
}
