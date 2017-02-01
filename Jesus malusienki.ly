\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\header {
  title = "Jesus malusienki"
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

global = {
  \key fis \minor
  \numericTimeSignature
  \time 3/4
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-numbers
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globalv = {
  \global
  \autoBeamOff
  \dynamicUp
  R2.*10
}

tbreak = {
  \tag #'break' { \break }
}

smelody = \relative c'' {
  d8 cis8 b4 ais8 [ b8 ] | % 2
  cis4 fis,2 | % 3
  d'8 cis8 b4 ais8 [ b8 ] | % 4
  cis4 fis,2 | % 5 
  \tbreak
  e8 fis8 g4 g4 | % 6
  fis8 g8 a4 a4 | % 7
  b8 a8 g4 fis8 [ e8 ] | % 8
  e4 fis2 | % 9
  \tbreak
  e8 fis8 g4 g4 | 
  fis8 g8 a4 a4 | % 11
  b8 a8 g4 fis8 [ e8 ] | % 12
  e4 d2 \fermata | % 13
  \tbreak
}

refrain = \relative c' {
  fis2.^\markup\italic"закр. рот" | % 14
  e2. | % 15
  fis2. | % 16
  e2. | % 17
  fis2. | % 18
  g2. | % 19
  fis2. ~ | 
  fis2.
}

refraina = \relative c' {
  fis2. | % 14
  e2. | % 15
  fis2. | % 16
  e2. | % 17
  fis2. | % 18
  g2. | % 19
  fis2. ~ | 
  fis2.
}

amelody = \relative c' {
  fis8 e8 d4 cis8 [ d8 ] | % 2
  e4 e2 | % 3
  fis8 e8 fis4 fis | % 4
  eis4 cis2 | % 5
  b8 b8 e4 cis4 | % 6
  d8 e8 fis4 fis4 | % 7
  g8 fis8 e4 d8 [ cis8 ] | % 8
  cis4 d2 | % 9
  cis8 d8 e4 e4 |
  d8 d8 d4 dis4 | % 11
  e8 dis8 e4 d8 [ cis8 ] | % 12
  cis4 d2 \fermata
}

tmelody = \relative c' {
  b8 b8 fis4 fis4 | % 2
  fis4 ais2 | % 3
  b8 b8 b4 cis8 [ b8 ] | % 4
  b4 ais2 | % 5
  g8 a8 b4 a4 | % 6
  a8 a8 a4 b4 | % 7
  b8 b8 b4 a4 | % 8
  a4 a2 | % 9
  a8 a8 a4 a4 | 
  a8 a8 a4 b4 | % 11
  b8 b8 b4 a4 | % 12
  a4 fis2 \fermata
}

bmelody = \relative c {
  b8 b8 b4 e8 [ d8 ] | % 2
  cis4 cis4( fis,4) | % 3
  b8 b8 d4 e8 [ d8 ] | % 4
  cis4 fis2 | % 5
  e8 e8 e4 a,4 | % 6
  d8 d8 d4 dis4 | % 7
  e8 e8 e4 a,4 | % 8
  a4 d2 | % 9
  g8 fis8 e4 a,4 | 
  d8 e8 fis4 fis4 | % 11
  fis8 fis8 e4 a,4 | % 12
  a4 d2 \fermata
}


verseone =  \lyricmode {
  \set stanza = "1."   Е -- зус ма -- лю -- ще -- ньки 
  Ле -- жы на -- гу -- ще -- ньки 
  Пўа -- \markup{"ч"\tiny"ъ" "э"} з_жи -- мна, не да -- ўа Му 
  Ма -- ту -- щя су -- ке -- нки. 
  Пўа -- \markup{"ч"\tiny"ъ" "э"} з_жи -- мна, не да -- ўа Му
  Ма -- ту -- щя су -- ке -- нки. 
}

mmm = \lyricmode { М... _ _ _ _ _ _
}

versetwo =  \lyricmode {
  \set stanza = "3." Не ма ко -- ле -- бэ -- \markup{"ч"\tiny"ъ" "ки,"}
  А -- ни по -- ду -- шэ -- \markup{"ч"\tiny"ъ" "ки,"} 
  Вэ жуо -- бе Му по -- ўо -- жы -- ўа 
  Щя -- на под гўу -- вэ -- \markup{"ч"\tiny"ъ" "ки."}
  Вэ жуо -- бе Му по -- ўо -- жы -- ўа 
  Щя -- на под гўу -- вэ -- \markup{"ч"\tiny"ъ" "ки."}
}

versethree =  \lyricmode {
  \set stanza = "4." По -- кўон Му од
  -- дай -- мы, Бо -- гем Го вы -- знай -- мы, То
  Дже -- чо -- \markup{\tiny н тко} у -- бо -- жу -- хнэ Лю -- джём
  о -- гўа -- шай -- мы. То Дже -- чо -- нтко у --
  бо -- жу -- хнэ Лю -- джём о -- гўа -- шай -- мы.
}

violinone = \relative c''' {
  \global
  \mark \default
  r4 b2 | % 2
  r4 b2 | % 3
  d,8 ( [ cis8 ] b4 cis8 [ d8 ] | % 4
  cis2. ) | % 5
  d8 ( [ cis8 ] b4 cis8 [ d8 ] | % 6
  cis2. ) | % 7
  b8 ( [ cis8 ] d4 d4 ) | % 8
  cis8 ( [ d8 ] e4 e4 ) | % 9
  d2. | 
  cis2. | % 11
  \mark \default b2. \breathe | % 12
  ais2. | % 13
  b2. ~ | % 14
  b4 ais2 | % 15
  g2 g4 | % 16
  d8 ( [ e8 ] fis4 ) fis4 | % 17
  e8 ( [ fis8 ] g4 fis8 [ e8 ] | % 18
  cis4 d4 ) a'4 -- | % 19
  \mark \default b2 cis4 | 
  d2 dis4 | % 21
  e2 cis4 | % 22
  cis4 d4 \fermata cis4 \fermata | % 23
  \mark \default d8 [ cis8 ] b4 cis8 [ d8 ] | % 24
  cis2. | % 25
  d8 [ cis8 ] b4 cis8 [ d8 ] | % 26
  cis2. | % 27
  b8 [ cis8 ] d4 d4 | % 28
  cis8 [ d8 ] e4 e4 | % 29
  d2.( |
  cis2.) | % 31
  \mark \default d2. | % 32
  e4 d4 cis4 | % 33
  d2. | % 34
  cis4 fis,2 s4 e8 [ g8 ] a8 [ cis8 ] | % 36
  r4 r8 fis8 [ b8 dis8 ] | % 37
  r4 r8 g,8 [ a8 cis8 ] | % 38
  r4 r8 fis,8 [ a8 d8 ] | % 39
  \mark \default e,,8 [ fis8 ] g4 g4 | 
  fis8 [ g8 ] a4 a4 | % 41
  b8 [ a8 ] g4 fis8 [ e8 ] | % 42
  cis4 d4 \fermata cis4 | % 43
  \mark \default d'8  [ cis8 ] b4 cis8 [ d8 ] | % 44
  cis2. | % 45
  d8 [ cis8 ] b4 cis8 [ d8 ] | % 46
  cis2. | % 47
  b8 [ cis8 ] d4 d4 | % 48
  cis8 [ d8 ] e4 e4 | % 49
  d2. ( | 
  cis2.) | % 51
  \mark \default b2. | % 52
  ais2. | % 53
  b2. ~ | % 54
  b4 ais2 | % 55
  r4 g'8 [ e8 ] g4 | % 56
  r4 fis8 [ d8 ] fis4 | % 57
  r4 g8 [ e8 ] a4 | % 58
  a,8 [ cis8 ] d8 [ fis8 ] a4 | % 59
  \mark \default b,2 cis4 | 
  d2 dis4 | % 61
  e2 cis4 | % 62
  cis4 d2 \fermata  \bar "|."
  
}

violintwo = \relative c'' {
  \global
  r4 r4 <d fis>4 | % 2
  r4 r4 <d fis>4 | % 3
  fis,2. | % 4
  e2. | % 5
  fis2. | % 6
  g2. | % 7
  fis2. | % 8
  g2. | % 9
  fis2. ~ | 
  fis2. | % 11
  fis2. ~ | % 12
  fis2. | % 13
  fis2. | % 14
  eis4 fis2 | % 15
  g8 [ fis8 ] e4 e4 | % 16
  d4 ~ d4 dis4 | % 17
  b4 e4 cis4 | % 18
  a2 fis'4 | % 19
  g2 a4 | 
  a2 b4 | % 21
  b2 g4 | % 22
  g4 a4 ais4 | % 23
  fis8 [ e8 ] d4 e8 [ fis8 ] | % 24
  e2. | % 25
  fis8 [ e8 ] d4 e8 [ fis8 ] | % 26
  g2. | % 27
  d8 [ e8 ] fis4 fis4 | % 28
  e8 [ fis8 ] g4 g4 | % 29
  fis2. ~ | 
  fis2. | % 31
  b2. | % 32
  ais2. | % 33
  b2. | % 34
  eis,4 fis2 | % 35
  r4 e8 [ g8 ] g4 | % 36
  fis8 [ a8 d8 ] r8 r4 | % 37
  g,8 [ b8 e8 ] r8 r4 | % 38
  a,8 [ cis8 d8 ] r8 r4 | % 39
  cis,8 [ d8 ] e4 e4 | 
  d8 [ e8 ] fis4 fis4 | % 41
  g8 [ fis8 ] e4 d8 [ cis8 ] | % 42
  a2 ais4 | % 43
  fis'2._\markup\italic"(проигрыш)" | % 44
  e4 e8 [ fis8 ] g4 | % 45
  fis2. | % 46
  e4 e8 [ fis8 ] g4 | % 47
  fis2. | % 48
  g2. | % 49
  fis2. ~ | 
  fis2. | % 51
  fis2. ~ | % 52
  fis2. | % 53
  fis2. | % 54
  eis4 fis2 s4 b8 [ g8 ] b4 s4 a8 [ fis8 ] a4 s4 b4 cis4 | % 58
  g4 fis2 | % 59
  g2 a4 | 
  a2 b4 | % 61
  b2 g4 | % 62
  a4 a2 \bar "|."
  
}

cello = \relative c' {
  \global
  r4 r4 b4 -. | % 2
  r4 r4 b4 | % 3
  b2 \parenthesize d4  | % 4
  g,2. | % 5
  b2 d4 | % 6
  e2. | % 7
  d8 [ e8 ] fis2 | % 8
  e4 cis2 | % 9
  r4 r4 b4 ~ -- | 
  b4 ais2 | % 11
  b2 d4 | % 12
  e4 d4 cis4 | % 13
  b2 d4 | % 14
  cis4 fis,2 | % 15
  b4 cis4 a4 | % 16
  fis8 [ g8 ] a4 b4 | % 17
  g8 [ a8 ] b4 a4 | % 18
  g4 fis4 d'4 \breathe | % 19
  e2 e4 | 
  fis2 fis4 | % 21
  g2 e4 | % 22
  e4 fis2 \fermata | % 23
  b,2 fis4^\markup\italic"(Проигрыш)" | % 24
  g2. | % 25
  b2. | % 26
  e2 d8 [ cis8 ] | % 27
  r4 r4 b4 -- | % 28
  r4 r8 g8 [ b8 cis8 ] | % 29
  d4 cis4 b4 ~ | 
  b4 ais2 | % 31
  r4 d4( b4) | % 32
  r8 cis,8 -\markup{ \italic {pizz.} } fis8 [ ais8 ] cis8 [ fis8 ] | % 33
  r4 d4( b4) | % 34
  r8 eis,8 -\markup{ \italic {pizz.} } fis8 [ ais8 ] cis4 | % 35
  g8 [ b8 ] e4 e4 | % 36
  d2 dis8 [ b8 ] | % 37
  e4 a,2 | % 38
  d2. | % 39
  r4 a8 -\markup{ \italic {pizz.} } [ cis8 ] e8 [ a8 ] |
  
  r4 d,,8 -\markup{ \italic {pizz.} } [ fis8 ] b8 [ dis8 ] | % 41
  e8 -\markup{ \italic {pizz.} } [ b8 ] g8 [ e8 ] a8 [ g8 ] | % 42
  g4 fis2 | % 43
  b4 fis4 b4 | % 44
  cis4 r4 r4 | % 45
  b4 fis4 b4 | % 46
  g2 b8 [ cis8 ] | % 47
  d8 [ e8 ] fis4 fis4 | % 48
  e8 [ fis8 ] g4 g4 | % 49
  r4 b,4 d4 |
  fis,4 ais2 \fermata | % 51
  b2 d4 | % 52
  e4 d4 cis4 | % 53
  b2 d4 | % 54
  cis4 fis,2 | % 55
  g8 [ fis8 ] g8 [ a8 ] b8 [ cis8 ] | % 56
  d2 dis8 [ b8 ] | % 57
  e2 cis4 | % 58
  cis4 d2 | % 59
  e2 e4 |
  fis2 fis4 | % 61
  g2 e4 | % 62
  g4 fis2 \fermata \bar "|."
  
}
toleft = \change Staff="left"
toright = \change Staff="right"

right = \relative c' {
  \global
  \voiceOne
  r4 <d fis b>2 \arpeggio | % 2
  r4 <d fis b>2 \arpeggio | % 3
  r4 <d fis b>4 \arpeggio <fis b d>4 \arpeggio
  \toleft | % 4
  e,8 [ g8 b8 \toright cis8 e8 g8 ] | % 5
  r4 <b, d fis>4 \arpeggio  <d fis b>4 \arpeggio | % 6
  g,8 [ b8 cis8 e8 fis8 g8 ] | % 7
  r4 <d fis b>4 <fis b d>4 | % 8
  r4 <g b e>4 <g b>4 | % 9
  r4 <fis b d>4 <d fis b>4 ~ | \barNumberCheck #10
  fis4 <ais, cis e fis>2 | % 11
  r4 \breathe <d fis b>4 \arpeggio <fis b d>4 \arpeggio  | % 12
  r4 <cis fis ais>4 \arpeggio <fis ais cis>4 \arpeggio  | % 13
  r4 <d fis b>4 \arpeggio <fis b d>4 \arpeggio | % 14
  <eis b' cis>4 <ais, cis fis>2 | % 15
  r8 b8 [ cis8 d8 ] \toleft <a cis e>4 \arpeggio | % 16
  r4 <a d fis>4 \arpeggio <b dis
  fis>4 \arpeggio | % 17
  r4 <b e g>4 \arpeggio <a cis e g>4 \arpeggio | % 18
  r4 fis8 [ a8 \toright d8 fis8 ] | % 19
  r8 cis8 e8 [ g8 ] a8 [ cis8 ] \toleft | \barNumberCheck
  #20
  a,8 -. [ d8 -. ] \toright fis8 -. [ a8 -. ] dis8 -. [ fis8
  -. ] | % 21
  b,,8 -. [ e8 -. ] g8 -. [ b8 -. ] cis8 -. [ e8 -. ] \toleft | % 22
  a,,8 [ cis8 ] d8 [ e8 ] \toright r4 | % 23
  r4 <d fis b>4 \arpeggio <fis b d>4
  \arpeggio \toleft | % 24
  e,8 [ g8 b8 \toright cis8 e8 g8 ] | % 25
  r4 <b, d fis>4 \arpeggio <d fis b>4 \arpeggio
  \arpeggio | % 26
  e8 [ g8 b8 cis8 e8 g8 ] | % 27
  r4 <fis, b d>4 \arpeggio <d fis b>4 \arpeggio
  \arpeggio | % 28
  r4 <g b e>4 \arpeggio <e g b>4 \arpeggio
  \arpeggio | % 29
  r4 <fis b d>4 \arpeggio <d fis b>4 \arpeggio
  \arpeggio ~ \arpeggio | \barNumberCheck #30
  <d fis b>4 r4 <ais cis e fis>4 | % 31
  r4 <d fis b>4 \arpeggio <fis b d>4 \arpeggio
  \arpeggio | % 32
  r4 <cis fis ais>4 \arpeggio <fis ais cis>4
  \arpeggio | % 33
  r4 <d fis b d>4 \arpeggio <fis b d
  fis>4 \arpeggio | % 34
  <eis b' cis>4 <ais, cis fis>2 | % 35
  r4 <g b e>4 \arpeggio <b e g>4 | % 36
  r4 <a cis fis>4 \arpeggio <b dis fis>4 | % 37
  r4 <b e g>4 \arpeggio <a cis e g>4 | % 38
  r4 <a d fis>4 \arpeggio ~ <d fis a>4 | % 39
  <e g b>4 <b' g'>8 [ <g e'>8 ] <b g'>4 | \barNumberCheck #40
  <fis a d>4 <a fis'>8 [ <fis d'>8 ] <a fis'>4 | % 41
  <g, b e>4 g'8 [ b8 e8 g8 ] | % 42
  <e, g a cis>4 <d fis a cis>4 <e fis ais cis>4 \fermata | % 43
  r4_\markup\italic"(проигрыш)" <d fis b>4 \arpeggio <fis b d>4
  \arpeggio \toleft | % 44
  e,8 [ g8 b8 \toright cis8 e8 g8 ] | % 45
  r4 <b, d fis>4 \arpeggio <d fis b>4 \arpeggio | % 46
  e8 [ g8 b8 cis8 e8 g8 ] | % 47
  r4 <d, fis b>4 \arpeggio <fis b d>4 \arpeggio | % 48
  r4 <g b e>4 \arpeggio <e g cis>4 \arpeggio | % 49
  r4 <fis b d>4 \arpeggio <d fis b>4 \arpeggio ~ | \barNumberCheck #50
  << { b'4 cis4 } \new Voice { \voiceTwo fis,2} >> \voiceOne <cis e fis ais>4 | % 51
  r8 d8 -. fis8 -. [ b8 -. ] d8 -. [ fis8 -. ] | % 52
  ais,,8 [ cis8 ] fis8 [ ais8 ] cis8 [ fis8 ] | % 53
  d,8 -. [ fis8 -. ] b,8 -. [ fis'8 -. ] b8 -. [ d8 -. ] | % 54
  r8 eis,8 ais8 [ cis8 ] fis4 -. | % 55
  r4 <g,, b e>4 <a cis e>4 \arpeggio \toleft | % 56
  fis8 [ a8 \toright d8 fis8 a8 b8 ] \toleft | % 57
  g,8 [ b8 \toright e8 g8 ] <a, cis e g>4 ~ | % 58
  q4 <a d fis>8 [ a'8 d8 fis8 ] | % 59
  r8 cis,8 -. e8 -. [ a8 -. ] cis8 -. [ e8 -. ] \toleft |
  \barNumberCheck #60
  a,,8 [ d8 ] \toright fis8 [ a8 ] dis8 [ fis8 ] | % 61
  b,,8 [ e8 ] g8 [ b8 ] e8 [ g8 ] | % 62
  a,,4 d8 [ fis8 ] a8 [ d8 \fermata ] \bar "|."
  
}

left = \relative c {
  \global
  \voiceTwo
  <b b'>2. | % 2
  <b b'>2. | % 3
  <b b'>2. | % 4
  << <e, e'>2. \new Voice { \voiceFour s4 e'2 } >> | % 5
  <b b'>2. | % 6
  <e, e'>2. | % 7
  <b' b'>2. | % 8
  <e e'>2. | % 9
  <b b'>2. | \barNumberCheck #10
  <fis fis'>2. | % 11
  <b b'>2. | % 12
  <fis fis'>2. | % 13
  <b b'>2. | % 14
  <cis, cis'>4 <fis fis'>2 | % 15
  <e e'>2 <a, a'>4 | % 16
  <d d'>2 <b b'>4 | % 17
  <e e'>2 <a, a'>4 | % 18
  <d d'>2 <fis fis'>4 | % 19
  <a a'>2 <a, a'>4 | \barNumberCheck #20
  <d d'>2 <b b'>4 | % 21
  <e e'>2 <a, a'>4 | % 22
  <d d'>2 <fis cis' fis ais cis e fis>4 \fermata \arpeggio  | % 23
  <b b'>2. | % 24
  << e,2. \new Voice { \voiceFour s4 e2 } >> \voiceTwo | % 25 
  <b' b'>2. | % 26
  << <e, e'>2. \new Voice { \voiceOne s4 <g' b cis e>2 \arpeggio } >> \voiceTwo | % 27
  <b, b'>2. | % 28
  <e e'>2. | % 29
  <b b'>2. | \barNumberCheck #30
  <fis fis'>2. | % 31
  <b b'>2. | % 32
  <fis fis'>2. | % 33
  <b b'>2. | % 34
  <cis, cis'>4 <fis fis'>2 | % 35
  <e e'>2 <a, a'>4 | % 36
  <d d'>2 <b b'>4 | % 37
  <e e'>2 <a, a'>4 | % 38
  <d d'>2. | % 39
  <a' a'>2 <a, a'>4 | \barNumberCheck #40
  <d d'>2 <b b'>4 | % 41
  <e e'>2 <a, a'>4 | % 42
  <d d'>2 <fis fis'>4 \fermata | % 43
  <b b'>2. | % 44
  <e, e'>2. | % 45
  <b' b'>2. | % 46
  << <e, e'>2. \new Voice { \voiceOne s2 <g' b cis e>4 \arpeggio  } >> \voiceTwo | % 47
  <b, b'>2. | % 48
  <e e'>2. | % 49
  <b b'>2. | \barNumberCheck #50
  <fis fis'>2. | % 51
  <b b'>2. | % 52
  <fis fis'>2. | % 53
  <b b'>2. | % 54
  <cis cis'>4 <fis, fis'>2 | % 55
  <e e'>2 <a, a'>4 | % 56
  <d d'>2 <b b'>4 | % 57
  <e e'>2 <a, a'>4 | % 58
  <d d'>2. | % 59
  <a' a'>2 <a, a'>4 | \barNumberCheck #60
  <d d'>2 <b b'>4 | % 61
  <e e'>2 <a, a'>4 | % 62
  << <d d'>2. \new Voice { \voiceOne s2 <a'' d fis>4 \fermata } >> \bar "|."
  
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
      \new ChoirStaff <<
        \new Staff \with {
          midiInstrument = "choir aahs"
          instrumentName = \markup \center-column { "С" "А" }
          shortInstrumentName = \markup \center-column { "С" "А" }
        } <<
          \new Voice = "soprano" { 
            \keepWithTag #'break
            \voiceOne    
            \globalv
            \smelody
            \refrain
            \smelody
            \refrain
            \smelody
          }
          \new Voice = "alto" { 
            \voiceTwo 
            \globalv
            \amelody
            \refraina
            \amelody
            \refraina
            \amelody
          }
        >>
        \new Lyrics \with {
          \override VerticalAxisGroup #'staff-affinity = #CENTER
        } \lyricsto "soprano" { \verseone \mmm \versetwo \mmm \versethree }
        \new Staff \with {
          midiInstrument = "choir aahs"
          instrumentName = \markup \center-column { "Т" "Б" }
          shortInstrumentName = \markup \center-column { "Т" "Б" }
        } <<
          \clef bass
          \new Voice = "tenor" { 
            \voiceOne
            \globalv
            \tmelody
            R2.*8
            \tmelody
            R2.*8
            \tmelody
          }
          \new Voice = "bass" {  
            \voiceTwo 
            \globalv
            \bmelody
            R2.*8
            \bmelody
            R2.*8
            \bmelody
          }
        >>
      >>
      \violinPart
      \celloPart
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
      \violinPart
      \celloPart
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
      \violinPart
      \celloPart
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
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "С" "А" }
        shortInstrumentName = \markup \center-column { "С" "А" }
      } <<
        \new Voice = "soprano" { 
          \voiceOne    
          \globalv
          \repeat volta 3  { 
            \smelody 
            \refrain 
          }
        }
        \new Voice = "alto" { 
          \voiceTwo 
          \globalv
          \repeat volta 3  { 
            \amelody 
            \refraina
          }
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" { \verseone \mmm }
      \new Lyrics \lyricsto "soprano" \versetwo
      \new Lyrics \lyricsto "soprano" \versethree
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Т" "Б" }
        shortInstrumentName = \markup \center-column { "Т" "Б" }
      } <<
        \clef bass
        \new Voice = "tenor" {  
          \voiceOne
          \globalv
          \tmelody
          R2.*8
        }
        \new Voice = "bass" {  
          \voiceTwo 
          \globalv
          \bmelody
          R2.*8
        }
      >>
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
