\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Вдоль по Питерской…"
  subtitle = "Русская народная песня"
  composer = "Обр. А.Занорина"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

cross = { \once \override NoteHead #'style = #'cross }

zigzag = { \once \override Glissando #'style = #'zigzag }
gtrill = { \once \override Glissando #'style = #'trill }

breath = { \once \override BreathingSign.text =
    \markup { \musicglyph #"scripts.tickmark" } \breathe }

temposlow = {
    \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note #"1" #1
      " → "
      \smaller \general-align #Y #DOWN \note #"1." #1
    }
    }
}

tempofast = {
    \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note #"8" #1
      " = "
      \smaller \general-align #Y #DOWN \note #"4" #1
    }
    }
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \secondbar  
  R2*11 
  r4 \gtrill c4 \glissando | % 13
  <c' a>4.\mf a8 | % 14
  <g bes>4 a8 ([ g )] | % 15
  f2 \breath | % 16
  c'4 <c f> | % 17
  d4 c8 ([ bes )] | % 18
  a8 a c a | % 19
  r8 d r d | \barNumberCheck #20
  r8 d r d | % 21
  r8 d c4 ~ | % 22
  c8 c4\ltoe a8 | % 23
  g8. ([ bes16 )]( a8) g | % 24
  f2 | % 25
  <a c>4.\mp <f a>8 | % 26
  <f bes>4 a8 ([ g ]) | % 27
  f2 | % 28
  c'16 [ bes a g ] f [ g a c ] | % 29
  d16 [ c bes8 ] a16 [ bes c d ] | \barNumberCheck #30
  c16 [ d c bes ] \breathe a8 c | % 31
  bes8. a16 g8 f | % 32
  g4 c8 ( [ bes )] | % 33
  a4 a8 c | % 34
  bes8. a16 g8 f | % 35
  g4 c | % 36
  \tempofast f4. r8 R2 | % 38
  e4 r R2 | \barNumberCheck #40
  es4 r R2 | % 42
  d4 r | % 43
  c2 \(| % 44
  bes8 \) \repeat unfold 15 bes
  es2 \( | % 49
  es8 \) r r4 | \barNumberCheck #50
  g2 ~ | % 51
  g8 r g4 | % 52
  f8 \breathe e, f\sf  g  | % 53
  f8 e  f  g  | % 54
  a8 g  a  bes  | % 55
  a8 g  a  bes  | % 56
  c8 d  c  bes  | % 57
  c8 d  c  bes  | % 58
  c8 d  c  bes  | % 59
  c8 cis  d  e  | \barNumberCheck #60
  f8 \breath f f\f  c  | % 61
  d4 bes | % 62
  c4 a | % 63
  r8 f'4 c8 | % 64
  d4 c8 ([ bes )] | % 65
  c4 a | % 66
  g8\mp ([ g ]) a ([ a )] | % 67
  g8 ([ g )] a ([ a )] | % 68
  g4 a | % 69
  g c | \barNumberCheck #70
  g c | % 71
  g c | % 72
  c\f c | % 73
  d c8([ bes ]) | % 74
  c4 a | % 75
  c r8 c | % 76
  d8 ([ e16 d) ] c8([ bes )] | % 77
  c4 a | % 78
  g8\mp ( [ a ]) g ([ a )] | % 79
  g8 ( [ a ]) g ([ a )] | \barNumberCheck #80
  g8 ( [ a ]) g ([ a )] | % 81
  bes8 ( [ c ]) bes ([ c )] | % 82
  bes8 ( [ c )] bes ([ c )] | % 83
  c8 c d e | % 84
  f4.\mf c8 | % 85
  \time 7/8  d8([ c]) bes a4 c | % 86
  \time 2/4  << { f2 ~ f4. } \new Voice {\voiceThree \autoBeamOff c8 c c c d[( c]) bes } >> a c \breathe bes a\pp | % 88
  g8 a bes c bes a g | % 89
  a8 [(bes]) c d c bes a | \barNumberCheck #90
  bes8 [( c]) d e d c bes | % 91
  c8 [( d ]) e f e d c | % 92
  \time 5/8  d8 ([ c ]) bes a c | % 93
  \time 6/8  bes8 a g fis[( g]) a | % 94
  f ?8 g a g4 f8 | % 95
  r4 c'8\p c^\markup\italic"cresc." c c | % 96
  \time 2/4  c8^\markup\italic"rit." c c \breath c | % 97
  \tempo "Tempo" c4. a8 | % 98
  bes4 a8 ([ g ]) | % 99
  f4. \glissando \cross g'8 |
  \barNumberCheck #100
  c,4 c\fermata | % 101
  d4 <a c> | % 102
  c8 a c a \repeat volta 3 {
    | % 103
    r8 d r d | % 104
    r8 d r d | % 105
    r8 d c4 ~ | % 106
    c8 c4 a8
  }
  \alternative {
    {
      | % 107
      g8. ([ bes16 )] a8 ([ g )] | % 108
      f8 f c' a
    }
    {
      g8 ([ c ]) d ([ e )]
      <f c>2\glissando | % 111
      \cross a8
    }
  }
  
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  R2*11
  r4 \gtrill c \glissando| % 13
  f4. f8 | % 14
  d4 e | % 15
  f2 | % 16
  a4 a | % 17
  bes4 a8 ([ g )] | % 18
  f8 f a f | % 19
  g4 g | \barNumberCheck #20
  g4 f8 e | % 21
  d4 e (| % 22
  f8) f4 f8 | % 23
  f4 (e8 ) e | % 24
  f2 | % 25
  f8([_\markup\italic"(закр. ртом)" e )] d ([ c ]) | % 26
  d8 ([ c )] d ([ e ]) | % 27
  f2 | % 28
  r8 f r f | % 29
  r8 f r e | \barNumberCheck #30
  f4 fis | % 31
  r8 g r d | % 32
  r8 e r e | % 33
  r8 f r d | % 34
  r8 g r f | % 35
  e4 e | % 36
  f8 f f\pp \repeat unfold 29 f | % 37
  bes4 r R2 | % 46
  as4 ~ as R2 | % 48
  \repeat unfold 16 bes8
  a8 e f g  | % 53
  f e f g  | % 54
  a g a bes  | % 55
  a g a bes  | % 56
  c d c bes  | % 57
  c d c bes  | % 58
  c2 | % 59
  c2 | \barNumberCheck #60
  f,8 a a f | % 61
  f4 f | % 62
  f4 f | % 63
  r8 a4 f8 | % 64
  f4 f | % 65
  f4 f | % 66
  f8 ~ [ f ] f ~ [ f ] | % 67
  f8 ~ [ f ] f ~ [ f ] | % 68
  f4 f | % 69
  f4 e | \barNumberCheck #70
  f4 e | % 71
  f4 e | % 72
  f4 f | % 73
  f4 f | % 74
  f4 f | % 75
  f4 r8 f | % 76
  f4 f | % 77
  f4 f | % 78
  <d f>4 <d f> | % 79
  f4 f | \barNumberCheck #80
  f4 f | % 81
  e4 e | % 82
  e8 ([ f )] g [( a )] | % 83
  bes8 bes bes bes | % 84
  a4. f8 | % 85
  \time 7/8  f4 f8 f4 f | % 86
  \time 2/4  f8 f f f | % 87
  \time 7/8  f4 f8 f4 fis8 fis | % 88
  g8 e f g f e d | % 89
  e8 ([ f ]) g a g f e | \barNumberCheck #90
  f8 ([ g ])a bes a g f | % 91
  bes4 bes8 bes bes bes bes | % 92
  \time 5/8  bes8 ([ a ]) g fis fis | % 93
  \time 6/8  g8 fis d d4 d8 | % 94
  d8 r4 d8 r4 | % 95
  r4 c8 c c c | % 96
  \time 2/4  d8 d e e | % 97
  f4. f8 | % 98
  f4 e | % 99
  f4. \glissando \cross c'8 |
  \barNumberCheck #100
  f,4 a | % 101
  f4 f | % 102
  f8 f a f \repeat volta 3 {
    | % 103
    g4 g | % 104
    g4 f8 ([ e ]) | % 105
    d4 e (| % 106
    f8) f4 f8
  }
  \alternative {
    {
      | % 107
      f4 e | % 108
      f8 f a f     }
    {
      f8 ([ bes )] bes4
      a2 \glissando | % 111
      \cross a'8
    }
  } 
}




tenorvoice = \relative c' {
  \global
  \dynamicUp 
  c4. a8 | % 2
  bes4 a8 ([ g )] | % 3
  f2 | % 4
  c'4 f\fermata | % 5
  d4 c8 ([ bes )] \abr | % 6
  a8 f c' a | % 7
  g4 g8 ([ a ]) | % 8
  g4 f8 ([ e )] | % 9
  d4 \breathe c' ~ | \barNumberCheck #10
  c8 <a c>4 a8 | % 11
  g4 g \abr| % 12
  c2 | % 13
  r4 c ~-> | % 14
  c8 c4. | % 15
  f2 | % 16
  f8 ([ e )] d4 | % 17
  r8 d d c | % 18
  c8 c r c | % 19
  r8 b r b \abr | \barNumberCheck #20
  r8 bes r bes | % 21
  r8 bes r bes | % 22
  a8 c4\ltoe c8 | % 23
  d4( c8) bes | % 24
  a2 | % 25
  a2 | % 26
  bes4 bes \abr | % 27
  a2 | % 28-^-^\upbow
  r8 c4-> a8 | % 29
  bes8( [ c16 d ]) c8 ([ bes ) ] | \barNumberCheck #30
  a4 c | % 31
  r8 bes r bes | % 32
  r8 c r g \abr | % 33
  r8 a d16( [ c bes a ]) | % 34
  r8 bes r d | % 35
  c8 ([ b )] bes4 | % 36
  a4 r R2  \abr | % 38
  e'4 r R2 | \barNumberCheck #40
  es4 r R2 | % 42
  d4 r \abr | % 43
  c2 \( | % 44
  bes8 \) \repeat unfold 15 bes \abr
  es2 ~ | % 49
  es8 r r4 | \barNumberCheck #50
  \repeat unfold 8 e8
  f e, f g | % 53
  f e f g | % 54
  a g a bes | % 55
  a g a bes | % 56
  c d c bes | % 57
  c d c bes | % 58
  c d c bes | % 59
  c c b bes \abr | \barNumberCheck #60
  a \breath c c a | % 61
  bes4 bes | % 62
  a4 c | % 63
  r8 c4 a8 | % 64
  bes4 bes | % 65
  a4 c | % 66
  b4\mp c | % 67
  b4 c \abr | % 68
  b4 c | % 69
  bes ?4 c | \barNumberCheck #70
  bes4 c | % 71
  bes4 c | % 72
  c4 a | % 73
  bes4 bes | % 74
  a4 c | % 75
  c4 r8 a | % 76
  bes4 bes | % 77
  a4 c \abr | % 78
  b8 ([ c )] b ([ c )] | % 79
  b8 ([ c ]) b ([ c ]) | \barNumberCheck #80
  b8 ([ c ]) b ([ c ]) | % 81
  d2 | % 82
  d2(  | % 83
  e4) e | % 84
  f4. c8 | % 85
  \time 7/8  d4 c8 d4 a | % 86
  \time 2/4  c8 c c c | % 87
  \time 7/8  d4 bes8 a4 \breathe c8 c | % 88
  bes8 c d e d c bes \abr | % 89
  c8[(  d ]) e f e d c | \barNumberCheck #90
  d8[(  e]) f g f e d | % 91
  e8[(  f]) g a g f e | % 92
  \time 5/8  f8[(  e]) d c4 \abr | % 93
  \time 6/8  d8[( c bes ])c4 c8 | % 94
  c8 r4 c8 r4 | % 95
  r4 c8 c b b | % 96
  \time 2/4  bes 8 bes bes bes | % 97
  a4. c8 \abr | % 98
  bes4 bes | % 99
  a4. \glissando  \cross f'8 |
  \barNumberCheck #100
  c4 f\fermata | % 101
  d4 c8 ( [ bes ]) | % 102
  a16 [( c ]) f8 r c \repeat volta 3 {
    | % 103
    r8 b r b \abr | % 104
    r8 bes ? r bes | % 105
    r8 bes r bes | % 106
    a8 c4 c8
  }
  \alternative {
    {
      | % 107
      c4 bes | % 108
      a8 a r c \abr
    }
    {
      c8( [ e )] d ([ c )] 
  <f c>2 \glissando | % 111
  \cross e8
    }
  } 
  \bar "|."
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Rubato" c4.\f a8 | % 2
  bes4 a8 ([ g ]) | % 3
  f2 \breathe | % 4
  c'4 <a c> | % 5
  bes4^\markup{\italic sub. \dynamic p} a8 ([ g )] | % 6
  f8 f a f | % 7
  e4^\markup\italic"cresc." <b d> | % 8
  <c e>4 d8 ([ c )] | % 9
  d4 c ~ | \barNumberCheck #10
  c8 f4 f8 | % 11
  e4 d | % 12
  c2 R2*4 | % 17
  r8 bes c c | % 18
  f8 f r f | % 19
  r8 c r c | \barNumberCheck #20
  r8 c r c | % 21
  r8 c r c | % 22
  f8 <a, f'>4 <a f'>8 | % 23
  <bes f'>4( c8) c  | % 24
  f2 | % 25
  f2\mp_\markup\italic"(закр. ртом)" | % 26
  g4 c, | % 27
  f2 | % 28
  f4\mf d | % 29
  bes4 c | \barNumberCheck #30
  f4 d | % 31
  g8 r bes, r | % 32
  c8 r c r | % 33
  f8 r fis4 | % 34
  g8 r bes, r | % 35
  c4 c | % 36
  f8 f f\pp \repeat unfold 27 f  % 37
  g a | % 44
  bes4 r R2 | % 46
  as4 ~ as R2 | % 48
  \repeat unfold 8 g8
  c,2 ~ | % 51
  c8 r c4 | % 52
  f8 \breathe e f g | % 53
  f e f g \abr | % 54
  a g a bes | % 55
  a g a bes | % 56
  c d c bes | % 57
  c d c bes | % 58
  c2 | % 59
  c,2 | \barNumberCheck #60
  f8 f f\f f | % 61
  bes,4 d | % 62
  f4 f | % 63
  r8 f4 f8 | % 64
  bes,4 d | % 65
  f4 f | % 66
  d2 ~ | % 67
  d2 ~ | % 68
  d2 | % 69
  d4 c | \barNumberCheck #70
  d4 c | % 71
  d4 c | % 72
  f4\f f | % 73
  bes,4 d | % 74
  f4 f | % 75
  f4 r8 f | % 76
  bes,4 d | % 77
  f4 f | % 78
  d2\mp ~ | % 79
  d2 ~ | \barNumberCheck #80
  d2 | % 81
  c2 | % 82
  c'2 ~ | % 83
  c4 c | % 84
  f,4.\mf a8 \abr | % 85
  \time 7/8  bes4 d,8 f4 f | % 86
  \time 2/4  a8 a a a | % 87
  \time 7/8  bes4 d,8 f4 d8 d\pp | % 88
  g4. ~ g2 | % 89
  g4. ~ g2 | \barNumberCheck #90
  g4. ~ g2 | % 91
  c4. ~ c2 | % 92
  \time 5/8  g4. d4 | % 93
  \time 6/8  <g, g'>4. <a a'>4 <a fis'>8 | % 94
  <bes as'>8 r4 <b as'>8 r4 | % 95
  r4 c8\p c c c | % 96
  \time 2/4  c8 c c \breath c | % 97
  f4. f8 | % 98
  d4 c | % 99
  f4. \glissando \cross d'8 |
  \barNumberCheck #100
  a4 a | % 101
  bes8 ([ bes, )] d4 | % 102
  f8 f r f \repeat volta 3 {
    | % 103
    r8 c r c | % 104
    r8 c r c | % 105
    r8 c r c | % 106
    f8 f4 c8
  }
  \alternative {
    {
      | % 107
      c4 c | % 108
      f8 f r f
    }
    {
      c4 c 
  f2 \glissando | % 111
  \cross e'8
    }
  }
   \bar "|."
}

sopranol = \lyricmode {
  \repeat unfold 14 \skip 1
  да, да, да, да, да, да,
  \repeat unfold 10 \skip 1
  да,_да,_да,…
  \repeat unfold 4 \skip 1
  пи -- шет ми -- лый ко мне гра -- мот --
  ку, весть не доб -- ру -- ю, не ра -- дост -- ну.
  да ми -- лой 
  да ой, да пи -- шет, ми -- лый, мой ми -- лой. да не чер -- ни -- лом, а сле --
  зой. да да __ да ой
  \repeat unfold 23 \skip 1
  ёй, да мо -- ло -- дец -- ко -- ю сле -- 
  зой.
  \repeat unfold 97 \skip 1
  дру -- га ми -- ло
  \repeat unfold 22 \skip 1
  да да
  да да да
}

lyricscore = \lyricmode {
  Да е -- дет мой ми -- лой, мил на тро -- еч -- ке, да мил на тро -- еч --
  ке, мой ми -- лой, да с_ко -- ло -- коль -- чи -- ком. \skip 1 \skip 1 Мой ми -- 
  лой, ко мне гра -- мот -- ку, да да да да да
  да да да не ра -- дост -- ну, да пи -- шет мой ми -- лой, да
  не чер -- ни -- лом, а сле -- зой, да пи -- шет, пи -- шет мой ми -- лой да не чер -- ни -- лом,
  а сле -- зой. да да да
  пи -- шет, пи -- шет мой ми -- лой, да не чер -- ни -- лом, а сле -- зой, да, ой ой ё ё ё ё ё ё
  ёй, да не чер -- ни -- лом, а сле -- зой. Ой ё ё ё ё ё ё, да сле --
  зой. Да не си -- ди Ду -- ня, да! Позд -- но ве -- че -- ром, да не си -- ди Ду --
  ня, да! Позд -- но ве -- че -- ром, да! Ты не жги, не жги, да во -- ско -- ву све -- чу, да,
  ты не жги, Ду -- ня, да вос -- ко -- ву све -- чу, да да да. Ты не
  жди, Ду -- ня, да гос -- тя, дру -- га ми -- ло -- го,_да не гру -- сти, не гру -- сти, Ду -- ня, да
  не си -- ди, Ду -- ня, да ты не жги, Ду -- ня, да ты не жди Ду -- ня, да ты не жди Ду --
  ня, гос -- тя ми -- ло -- го, ми -- го не жди. не жди, Ду -- ня, да! Вдоль по
  Пи -- тер -- ской! _ По Твер -- ской, Ям -- ской да, вдоль да
  по Твер -- ской, Ям -- ской, да по до --
  ро -- жень -- ке, да вдоль по ро -- жень -- ке. Эх!!!_ЗАЛЁТНЫЯ!!!
}

tenorl = \lyricmode {
  \repeat unfold 24 \skip 1
  Мой ми -- лой, мил на
  \repeat unfold 35 \skip 1
  не ра -- дост -- ну.
  да ми -- лой
  да ой, да пи -- шет ми -- лый, мой ми -- лой, да не чер -- ни -- лом, а сле --
  зой. да не чер -- ни -- лом, а сле -- зой, да, ой
  \repeat unfold 22 \skip 1
  ёй, да мо -- ло -- дец -- ко -- ю сле-
}

bassl = \lyricmode {
  Вдоль по Пи -- тер -- ской, по Твер -- ской Ям --
  ской да вдоль по Пи -- тер -- ской Ям -- ской, да по до -- ро -- жень --
  ке. на тро -- еч -- ке, да, да, да, да,
  да, да, да, да, да с_ко -- ло -- коль -- чи -- ком. \skip 1 Мой ми -- 
  лой, ко мне гра -- мот -- ку, да, да, да,
  да да да да да да ра -- до -- стну, да пи -- шет мой ми -- лой да
  не чер -- ни -- лом, а сле -- зой, да пи -- шет, пи -- шет мой ми -- лой да не чер -- ни -- лом,
  а сле -- зой. да да да
  пи -- шет, пи -- шет мой ми -- лой, да, да __ да ой ой ё ё ё ё ё ё 
  ёй, да не чер -- ни -- лом, а сле -- зой. Ой ё ё ё ё ё ё, да сле -- 
  зой. Да не си -- ди Ду -- ня, да! Позд -- но ве -- че -- ром, да да __
  %\repeat unfold 18 \skip 1
  Позд -- но ве -- че -- ром, да! Ты не жги, не жги, да во -- ско -- ву све -- чу, да
  да __ да да __ да. Ты не
  жди, Ду -- ня, да го -- стя, дру -- га ми -- ло -- го, не гру -- сти, __
  да __ да __ да __ не жди
  ми -- ло -- го, ми -- ло -- го не жди, не жди, Ду -- ня, да! Вдоль по
  Пи -- тер -- ской! _ По Твер -- ской, Ям -- ской да, да
  да да да да да да да по до --
  ро -- жень -- ке, да да ро -- жень -- ке.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Lyrics = "sopranos"
      
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "altos"
      \new Lyrics = "tenors"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
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
      \new Lyrics \lyricsto "bass" { \bassl }

      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricscore
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \tenorl
        }
      }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \sopranol
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}

#(set-global-staff-size 19)

\book {
    \bookOutputSuffix "Fis"
    \header { piece = "Fis-dur" }
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
    \transpose f fis {
    \new ChoirStaff <<
      
      \new Lyrics = "sopranos"
      
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "altos"
      \new Lyrics = "tenors"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
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
      \new Lyrics \lyricsto "bass" { \bassl }

      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricscore
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \tenorl
        }
      }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \sopranol
        }
      }
    >>
    }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}