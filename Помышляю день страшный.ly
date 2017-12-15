\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  dedication = "Посвящается К. П. Ободовскому"
  title = "Помышляю день страшный"
  composer = "А. Архангельскаго"
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
  \key f \minor
  \time 4/4
  \autoBeamOff
  \partial 2
}

soprano = \relative c' {
  \global
  \dynamicUp
  \tempo Медленно 4=63
  r2 
  R1*9
  | \barNumberCheck #10
  r4 r f\p g | % 11
  as4.( g8) f4 c4 | % 12
  f1 \pp | % 13
  e4 r4 f4 g4 | % 14
  as4. \< ( g8) f4 c'4 \! | % 15
  b1 | % 16
  c4 s4 c4 e4 | % 17
  f2. ( es4 | % 18
  es4  des4) c4 bes4 | % 19
  as2 ( g2) | \barNumberCheck #20
  f2 r4 \tempo "Немного скорее" g4\p  | % 21
  as4.(  g8) as4 bes4 | % 22
  g4. \< ( as8) bes4 c4 | % 23
  des4 (\> c4 bes4 )\! as4 | % 24
  g2 c,2 ~ | % 25
  c4 c'2. | % 26
  c2. c4 | % 27
  g4 ( as4) bes4 b4 | % 28
  c2 c,8 r8 <g' c>4 | % 29
  <as des>4. ( <g c>8) <g c>4 r4 | \barNumberCheck #30
  r2 r4 <g c>4 | % 31
  <as des>4. ( <g c>8) <g c>4 r4 | % 32
  r2 r4 <g c>4 | % 33
  <as c>4 ( <c f>4) <bes e>4 <as des!>4 | % 34
  << { c4 ( b4 ) } \new Voice { \voiceThree g2 } >> \voiceOne <g c>4 q | % 35
  <as c>4 ( <c f>4 <bes e>4 ) <as des!>4 | % 36
  << { c4 ( b4 ) } \new Voice { \voiceThree g2 } >> \voiceOne <g c>4 c4 \< | % 37
  des2 \> c4 \! r8 c8 | % 38
  c4 -\markup{ \italic {dim.} } bes8 bes8 bes4 as4 | % 39
  as2 ( g) | \barNumberCheck #40
  g2 r | % 42
  R1*2 | % 43
  ges2 -> r4 <des' f>4 | % 44
  <c es!>8 -> [ <des f>8 <bes des>8 <c es>8 ] c4 r4 | % 45
  r2 r4 <des f>4 | % 46
  <c es!>8 -> [ <des f>8 <bes des>8 <c es>8 ] <a c>4 c4\f | % 47
  des8 ( [ es8 f8 es8 ) ] des8 [ c8 ] bes8 [ as8 ] | % 48
  g4 ( des') c4 bes4 | % 49
  as4 ( as') g4 f4 | 
  es!4 ( des4 c4 ) bes4 | % 51
  as2 ( g) | % 52
  f1 ~ | % 53
  f1 ~ | % 54
  f1 ~ | % 55
  f1 ~ | % 56
  f4 r4 r2 \bar "||"
  \key bes \minor \time 3/4 | % 57
  \tempo Умеренно 4=92 
  R2.*8 | % 65
  as2 \pp ges4 | % 66
  f4 ( as4) bes4 | % 67
  ces2 bes4 | % 68
  as2 ges4 | % 69
  f4. as8 ges8 f8 | 
  es8 r8 es'4\f bes4 | % 71
  ges'2 f4 | % 72
  es4. ( f8) ges4 | % 73
  ges2 ( f4) | % 74
  es4. ( f8) ges4 | % 75
  f4. es8 des8 c8 | % 76
  bes2 r4 | % 77
  e2 \f e4 | % 78
  e2 e4 | % 79
  e2 e4 | 
  e2 f4 | % 81
  <f g>4. -\markup{ \italic {rit.} } q8 q q | % 82
  q2 \fermata r4 | % 83
  g,2 -\markup{ \dynamic pp \italic {rit.} } f4 | % 84
  e2 \fermata r4 \fermata \bar "||"
  \key f \minor | % 85
  \tempo Спокойно 4=63 f4 \pp f4 f4 f4 g4 as2 f4 es'4 des4 | % 86
  c4 bes4 as4 as2 g2 | % 87
  f4 f4 f4 f2 \breathe f4 as2 g4 g2 \breathe | % 88
  g4 \> des'2 c4 c2 \! \breathe f,4 \pp f2 f4 f1 \fermata \bar "|."
  
}

alto = \relative c' {
  \global
  \dynamicDown
  r2
  R1*9
  | \barNumberCheck #10
  r4 r f g | % 11
  as4. ( g8) f4 c | % 12
  b1 | % 13
  c4 r f g | % 14
  as4.( g8) f4 c' | % 14
  as2 ( g ) | % 16
  g4 r r2 | % 17
  r as!4 c | % 18
  c(-\markup{ \italic {dim.} } bes) as g | % 19
  f2( e) | \barNumberCheck #20
  f r4 e  | % 21
  f4. ( e8 ) f4 g | % 22
  e4. ( f8 ) g4 as | % 23
  bes ( as g ) f | % 24
  e2 c ~ | % 25
  c4 c2. | % 26
  c c4 |
  g'4 ( f ) e f | % 28
  c2 c8 r8 e4 | % 29
  f4.( e8)  e4 r | \barNumberCheck #30
  r2  r4  e | % 31
  f4. ( e8 ) e4 r |
  r2 r4 e4 | % 33
  f ( as ) g f | % 34
  e ( f ) e e | % 35
  f ( as g ) f | % 36
  e4  ( f ) e g | % 37
  g2    ges4 r8 ges | % 38
  f4 e8 e g4 f | % 39
  f1 | \barNumberCheck #40
  e2 r | R1 | % 42
  r2  r4 f\p | % 43
  ges2 f ~ | % 44
  f a4 f | % 45
  ges2 -> f ~ | % 46
  f  r4 a | % 47
  bes2 bes8 [ f ] e [ f ] | % 48
  g4 ( bes ) as e | % 49
  f ( c' )c c | \barNumberCheck #50
  c ( bes as ) g | % 51
  f2. ( e4 ) | % 52
  f2.  des4\p | % 53
  c8 [ des bes c ] a2 | % 54
  r4  des\pp c8 [ des bes c ] | % 55
  a1 ~ | % 56
  a4 r r2 \bar "||"
  \key bes \minor \time 3/4 | % 57
  R2*9 R1. | % 65
  f'2  es4 | % 66
  d ( f) ges | % 67
  as ( d,) es | % 68
  f ( d) es | % 69
  d4. d8 d d | \barNumberCheck #70
  es4  r r | % 71
  c'!2 c4 | % 72
  c2 c4 | % 73
  c2. | % 74
  c2 c4 | % 75
  c4. c8 f, f | % 76
  f2 r4 | % 77
  bes4. ( as8) g [ as ] | % 78
  bes ( [ c des c ) ] bes ( [ as ) ] | % 79
  bes4. ( as8 ) g ( [ as ) ] | \barNumberCheck #80
  bes ( [ c des c ) ] bes4 | % 81
  bes4. bes8 bes bes | % 82
  bes2 r4 | % 83
  bes,2  b4 | % 84
  c2 r4 \bar "||"
  \key f \minor | % 85
  c  c c des f f2 f4 c' bes | % 86
  as g f f2 e | % 87
  c4 c c des2 des4 f2 f4 e!2 | % 88
  e4    g2 g4 f2 c4 des2 c4 c1 \bar "|."
  
}

tenor = \relative c' {
  \global
  \dynamicUp
  r4 r
  | % 1
  b1\rest
  b1\rest
  
  r4 r g bes | % 4
  des4.\> ( c8)\!  bes4 f | % 5
  as1\pp | % 6
  g4 r c\< e | % 7
  f2.\> (  <c es>4\! | % 8
  <c es> <bes des> ) <as c> <g bes> | % 9
  <f as>2 ( <e g> ) | \barNumberCheck #10
  f4 r f g | % 11
  as4.( g8) f4 c | % 12
  as'2 ( g) | % 13
  g4 r f g | % 14
  as4. ( g8) f4 c' | % 15
  f1 | % 16
  e4 r4 r2 r2 c4 f | % 18
  f2 des4 des | % 19
  c2 ( bes) | \barNumberCheck #20
  as r4 r | % 21
  r2 r4 c\p | % 22
  des4. ( c8) bes4 as | % 23
  g ( as) bes b | % 24
  c2 c4 g\p | % 25
  as4. ( g8) as4 bes | % 26
  g4.  ( as8) bes4 c  | % 27
  des  ( c bes) as  | % 28
  g2 g4 r4 r2 r4 <c f> | \barNumberCheck #30
  e8\> ( [ f ] des4 )\! c r r2 r4 <c f>\p | % 32
  e8 ( [ f ] des4 ) c r | % 33
  R1 | % 34
  c4 ( des) c r | % 35
  R1 | % 36
  c4 ( des) c e  | % 37
  e2   es4 r8  es | % 38
  d4 des8 des c4 c | % 39
  b1 | \barNumberCheck #40
  c2 r | % 41
  r1  | % 42
  r2  r4 <a c>\p | % 43
  <bes des>2 -> <a c>4 r | % 44
  r2 r4 <a c> | % 45
  <bes des>2 -> <a c>4 r | % 46
  r2  r4 f' | % 47
  f2 f4 bes,8 [ c ] | % 48
  des4 ( g,) as bes | % 49
  c ( f) e f | \barNumberCheck #50
  f2 des | % 51
  c ( bes) | % 52
  as2.   f4\p | % 53
  es8 [ f des es ] c2 | % 54
  r4  f\pp es8 [ f des es ] | % 55
  c1 ~ | % 56
  c4 r r2 \bar "||"
  \key bes \minor \time 3/4 es'\p des4 | % 58
  c ( bes) a | % 59
  ges ( f e ) | \barNumberCheck #60
  f2 r4 | % 61
  <es' ges>4. q8 q q | % 62
  <des f>4 <c es> <bes des> | % 63
  <bes c>4. q8 <a c> q | % 64
  bes4 \breathe r r | % 65
  ces2  bes4 | % 66
  as ( f) es | % 67
  d ( f) ges | % 68
  ces2 bes4 | % 69
  as4. ces8 bes as | \barNumberCheck #70
  ges4 r r | % 71
  es'2\f  f4 | % 72
  ges4. ( f8) es4 | % 73
  es2 ( f4) | % 74
  ges4. ( f8) es4 | % 75
  f4. ges8 f es | % 76
  des2 r4 | % 77
  g2  c,4 | % 78
  g'2 g4 | % 79
  g2 c,4 | \barNumberCheck #80
  g'2 f4 | % 81
  f4. f8 f f | % 82
  f2 r4 | % 83
  f,2 g4 | % 84
  g2 r4 \bar "||"
  \key f \minor | % 85
  as  as as as des c2 as4 as bes | % 86
  c des des c2 c | % 87
  as4 as as as2 \breathe as4 as ( bes) b c2 \breathe | % 88
  c4   e2 e4 f2  as,4 g2 as4 as1 \bar "|."
  
}

bass = \relative c {
  \global
  \dynamicDown
  f4 \p g
  | % 1
  as4. ( g8) f4 c | % 2
  des1 \pp | % 3
  c4 r g' bes | % 4
  | % 4
  des4.( c8)  bes4 f | % 5
  <b, f'>1 | <c e>4 r r2| % 6
  r4 r <f as> f | % 8
  bes,2 bes4 bes | % 9
  c1 | \barNumberCheck #10
  f,4 r f'\p g | % 11
  as4. ( g8) f4 c | % 12
  des1 \pp | % 13
  c4 r f g | % 14
  as4. \< ( g8) f4 c' \! | % 15
  des1 | % 16
  c4 r r2 | % 17
  r f,4 f | % 18
  bes,2 -\markup{ \italic {dim.} } bes4 bes | % 19
  c1 | \barNumberCheck #20
  <f, f'>2 r4 r | % 21
  R1*3 | % 24
  r2 r4 e' | % 25
  f4. ( e8) f4 g | % 26
  e4.\< ( f8) g4 as\! | % 27
  bes \> ( as g) f \! | % 28
  e2 e4 r | % 29
  r2 r4 as | \barNumberCheck #30
  <g bes>8 ( [ <as c> <f as> <g bes>)] <e g>4 r | % 31
  r2 r4 <as c> | % 32
  <g bes>8 ( [ <as c> <f as> <g bes> ) ] <e g>4 r | % 33
  R1*3 | % 36
  r2 r4 c' \< | % 37
  bes2 \> a4 \! r8 a | % 38
  as!4 -\markup{ \italic {dim.} } g8 g e4 f | % 39
  des!1 | \barNumberCheck #40
  c4 c'\f des? c8. b16 | % 41
  c4 \> a8. f16 ges4 f \! | % 42
  e2  f\p ~ | % 43
  f1 | % 44
  f ~ | % 45
  f | % 46
  f2. f4 \f | % 47
  bes8 [ c des c ] bes [ as] g[ f ] | % 48
  e2 f4 g | % 49
  as ( f) g as | \barNumberCheck #50
  bes2 bes, | % 51
  c1 | % 52
  f, ~ | % 53
  f ~ | % 54
  f  ~ | % 55
  f ~ | % 56
  f4 r r2 \bar "||"
  \key bes \minor \time 3/4 R2.*4 | % 61
  a'4. a8 a a | % 62
  bes4 f ges | % 63
  es4. es8 f f | % 64
  bes,4  \breathe bes bes | % 65
  bes2 \pp bes4 | % 66
  bes2 bes4 | % 67
  bes2 bes4 | % 68
  bes2 bes4 | % 69
  bes4. bes8 bes bes | \barNumberCheck #70
  es4 r r | % 71
  a2 a4 | % 72
  a2 a4 | % 73
  a2. | % 74
  a2 a4| % 75
  a4. a8 a a | % 76
  bes4 bes c! | % 77
  des4. \f ( c8) bes( [ as) ] | % 78
  g ( [ as bes c ) ] des ( [ c ) ] | % 79
  des4. ( c8 ) bes ( [ as ) ] | \barNumberCheck #80
  g ( [ as bes c ) ] des4 | % 81
  des4. -\markup{ \italic {rit.} } des8 des des | % 82
  des2\fermata  r4 | % 83
  des,2 -\markup{ \dynamic pp \italic rit. } des4 | % 84
  c2\fermata r4\fermata \bar "||"
  \key f \minor | % 85
  \cadenzaOn f \pp f es des bes f'2 f4 \bar "" f f \bar ""
  f f f f2 c \cadenzaOff \bar "|" | % 87
  \cadenzaOn f4 f es des2 \breathe \bar "" des4 des2 des4 c2 \breathe \cadenzaOff \bar"|" % 88
  \cadenzaOn c'4 \> bes?2 bes4 \! as2 \bar "" \breathe as,4\pp bes2 f4 f1\fermata \cadenzaOff \bar "|."
}

verses = \lyricmode {
  \repeat unfold 14 \skip 1
  по -- мы -- шля -- ю
  \repeat unfold 51 \skip 1
  и пла -- чу де -- я -- ний
  
}

versea = \lyricmode {
  \repeat unfold 21 \skip 1
  и пла -- чу де -- я -- ний мо -- их __ лу -- ка -- вых __
  пла -- чу де -- я -- ний лу -- ка -- вых. И пла -- чу де -- я -- ний
  и пла -- чу де -- я -- ний мо -- их лу -- ка -- вых. И пла -- чу де -- я -- ний 
  мо -- их лу -- ка -- вых.
  
}


verset = \lyricmode {
  \repeat unfold 7 \skip 1
  по -- мы -- шля -- ю день стра -- шный
  по -- мы -- шля -- ю день стра -- шный,
  по -- мы -- шля -- ю день стра -- шный,
  по -- мы -- шля -- ю день стра -- шный
  и пла -- чу де -- я -- ний лу -- ка -- вых 
  и пла -- чу де -- я -- ний мо -- их __ лу -- ка -- вых.
  
  \repeat unfold 6 \skip 1
  пла -- чу пла -- чу
  \repeat unfold 11 \skip 1
  и пла -- чу де -- я -- ний
  и пла -- чу и пла -- чу де -- я -- ний мо -- их лу -- ка -- вых
  и пла -- чу и пла -- чу. __
  Ка -- ко от -- ве -- ща -- ю
  \repeat unfold 12 \skip 1
  ко -- им дерз -- но -- ве -- ни -- ем
  воз -- зрю на су -- ди -- ю
  ка -- ко от -- ве -- ща -- ю без -- смерт -- но -- му Ца -- рю
  ко -- им дерз -- но -- ве -- ни -- ем воз -- зрю на Су -- ди -- ю,
  блу -- дный аз.
  Бла -- го -- у -- тро -- бне От -- че, Сы -- не Е -- ди -- но -- род -- ный,
  Ду -- ше Свя -- тый, по -- ми -- луй мя, по -- ми -- луй мя, по -- ми -- луй мя.
  
}

verseb = \lyricmode {
  По -- мы -- шля -- ю
  день страш -- ный, по -- мы -- шля -- ю день страш
  -- ный по -- мы -- шля -- ю день страш -- ный 
  \repeat unfold 32 \skip 1
  
   и пла -- чу де -- я -- ний 
  \repeat unfold 11 \skip 1
  И пла -- чу де -- я -- ний мо -- их
  лу -- ка -- вых __ пла -- чу 
  \repeat unfold 11 \skip 1
  лу -- ка --
  вых. __  Ка -- ко от -- ве -- ща -- ю без -- смерт --
  но -- му Ца -- рю, и -- ли 
  \repeat unfold 25 \skip 1
  и -- ли 
}

\score {
  \new ChoirStaff <<
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Дискант" "Альт" }
    } <<
     \new Voice = "soprano" { \voiceOne \soprano }
     \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      alignAboveContext = "sa"
      \override VerticalAxisGroup #'staff-affinity = #UP
    } \lyricsto "soprano" \verses
    \new Lyrics \lyricsto "alto" \versea
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Тенор" "Бас" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      alignAboveContext = "tb"
      \override VerticalAxisGroup #'staff-affinity = #DOWN
    } \lyricsto "tenor" \verset
    \new Lyrics \lyricsto "bass" \verseb
  >>
  \layout { 
      \context {
      \Staff
        \RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
    }  
  }
  \midi {
    \tempo 4=63
  }
}
