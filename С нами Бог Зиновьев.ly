\version "2.24.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "№4 С нами Бог."
  composer = "муз. Василия Зиновьева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \key c \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \partial 2
  \set Score.currentBarNumber = #2
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
}

"\\{" = [
"\\}" = ]
"[" = \{(
"]" = \})
white = {\once \override Staff.TimeSignature.whiteout = ##t}

soloVoice = \relative c {
  \global
  s2 | 
  R1*19 R2. R1*15 \key a \major R1*3 R2. |
  r8^\markup\italic"Solo alto" a''8 a a16 a
  a8 a a a 
  | a4 a8 a
  a4 r4 | r8 a8 a4->
  a8 a a4 | a8-> a-> a-> a-> r4 r |
  | % 44 
  \clef "treble_8" r8^\markup\italic"Solo tenore" e8 cis a
  fis'4 fis8 e 
  | % 46
  d4 d8 b e d cis4 
  | % 47
  fis8 e d b cis cis r4
  R1
  \clef bass cis4^\markup\italic"Solo basso" b8 a16[ gis ]
  | % 50
  fis8 fis r4 r4 
  | % 51
  r8 a8 cis-> a r a cis-> a 
  | % 52
  r8 a d-> cis-> b-> a r4
  R1*7
}

verseSoloVoice = \lyricmode {
  Е -- го же на -- чаль  -- ство бысть на ра -- ме Е -- го
  И ми -- ра Е -- го несть пре -- де -- ла.
  И на -- ри -- ца -- ет -- ся И -- мя Е -- го
  ве -- ли -- ка со -- ве -- та ан -- гел.
  Чу -- ден со -- вет -- ник.
  Бог кре -- пок, вла -- сти -- тель,
  на -- чаль -- ник ми -- ра.
}

soprano = \relative c {
  \global
  b''8.\f a16 g4
  | % 2
  c8. b16 e4 e8. d16 c4
  | % 3
  <d g >8.\ff <d g >16 <d g >2\fermata r4^\markup\italic{"оч. плавно, широко"} |
  R1 |
  r2 r4 g8\f f
  | % 6
  e4-> e d8 r8 r4 |
  R1 |
  c8 e a,4 a f'
  | % 9
  f8 e d( e4) d8 c4(
  | % 10
  g2.) g'8 g
  | % 11
  f4 e g2~\p |
  g1 |
  R1 |
  | % 14
  f8 e d[ a'] g4 f
  | % 15
  R1 R1 r4 a8\f g f4 e
  | % 18
  d->\fermata r4 r2 |
  R1*2 |
  \time 3/4 e8 d\< c4 cis\! |
  \time 4/4 d
  d8 a c4 b
  | % 23
  a r4 r2 |
  R1*2 |
  r2 r4 e'8 <b d >8
  | % 27
  c4 cis d d8 a
  | % 28
  c!4 b a r4 |
  R1*2 
  r2 r4 e'8 c
  | % 32
  f4 e e8[ d] c b  |
  e4. d8 c4 r8 e,^\markup{\dynamic mp \italic dolce} 
  | % 34
  a c d[ b e] d c8. e16 
  | % 35
  d8 c b4 d8 a c8. b16 
  | % 36
  b4 \breathe a8 c e4.-> d8
  | % 37
  \key a \major cis4\fermata r4 cis8.^\markup{\dynamic f \italic" a tempo"} cis16 cis8 cis | 
  d4. d8 cis cis cis4 
  | % 39
  <d fis >4\f <b d >8 <d fis >8 <cis e >8 <cis e >8 <cis e >4
  | % 40
  \time 3/4 d8\pp d cis4 b |
  \time 4/4 a1
  | % 42
  a4\pp a a e |
  a1
  | % 44
  a4 a a e
  | % 45
  a2( ais | 
  b8\{ a\} gis2 a4  |
  ais b
  a) a8\pp a
  | % 48
  a4 e a2~
  | % 49
  \white \time 2/4 a2 |
  \time 3/4 a8 a a4 e |
  \time 4/4 a1( |
  a2 gis8\{ a\}) a\pp a
  | % 52
  a4 e a\fermata a\f
  | % 53
  \mark 8 e'( fis) e8 e e e 
  | % 54
  a, a a\pp a a4 gis
  | % 55
  fis\fermata b8\p d^\markup\italic rit. fis4\fermata fis,8.\pp fis16 | 
  fis2\fermata b8.^\markup{\dynamic f \italic maestoso} a!16 g4
  | % 57
  \key a \minor c8. b16 e4 e8. d16 c4 
  | % 58
  <d g >8.\ff <d g >16 <d g >2\fermata r4 \bar "|."  
}

alto = \relative c {
  \global
  b''8. a16 g4
  | % 2
  g8. g16 g4 g8. g16 g4
  | % 3
  b8. b16 b2 r4 R1 r2 r4 g8 a16[ b]
  | % 6
  c4 c b8 r8 r4 |
  R1 |
  g8 g a4 <g a >4 <f a >4
  | % 9
  g8 g g4 f e(
  | % 10
  g2.) g8 b
  | % 11
  c4 c b( g4 | g1) R1
  | % 14
  f8 g a4 a a
  | % 15
  R1*2 r4 a8 a a4 a
  | % 18
  a r4 r2 R1 R1 gis8 b a4 a
  | % 22
  a a8 a a4 gis
  | % 23
  e r4 r2 | R1 | R1 | r2 r4 gis8 gis
  | % 27
  a4 a a a8 a
  | % 28
  a4 gis e r4 |
  R1 | R1 |
  r2 r4 c'8 c
  | % 32
  c4 c b g8 g |
  b4. b8 g4 r8 e
  | % 34
  e a b( gis c) b a8. a16
  | % 35
  f8 a gis4 a8 a a8. gis16
  | % 36
  gis4 a8 a gis4. gis8
  | % 37
  a4 r4 a8. a16 a8 a |
  gis4. gis8 a a a4
  | % 39
  a a8 a a a a4 
  | % 40
  a8 a a4 gis 
  | % 42
  e1 | 
  fis4 fis e e |
  e1 |
  
  | % 44
  fis4 fis e e
  | % 45
  e2( fis |
  fis4 e2 a4 |
  fis4. gis8  a4) fis8 fis
  | % 48
  e4 e e2~ |
  e
  | % 49
  <d fis >8 <d fis >8 e4 e |
  e1( |
  e4 d8\{ e\} e4) fis8 fis
  | % 52
  e4 e e a |
  a2 a8 e e e
  | % 54
  e e fis fis e4 e8[ d]
  | % 55
  cis4 fis8 fis fis4 fis8. fis16 |
  fis2 b8. a16 g4
  | % 57
  g8. g16 g4 g8. g16 g4 
  | % 58
  b8. b16 b2 r4
  
}

tenor = \relative c {
  \global
  b'8. a16 g4
  | % 2
  e'8. d16 c4 c8. b16 e4
  | % 3
  <d g >8. q16 q2 <g, c >8 q8
  | % 4
  \mark 1 <b d >4 q8 c <b d >8 q16 q <b e >8 q
  | % 5
  <d f >4. <c e >8 <b d >4 b8 c16[ d]
  | % 6
  e4-> fis g8 <c, e >8 <b d >8 q16 q
  | % 7
  <g c >8 <g b >8 <g e' >4-> <g b >8 q <g c >4
  | % 8
  c8 c c4 cis d
  | % 9
  b8 c b4 b c8 c
  | % 10
  \mark 2 d d16 d c8 e d d16 d e8 d
  | % 11
  f4 g g8 g, g g
  | % 12
  <g c >4 q8 q <b d >8. q16 q8 q
  | % 13
  <d f >8. q16 <c e >8 q <b d >8 c <b d >8 q16
  q
  | % 14
  d8 c c4 c d8 \breathe \mark 3 <a d >8
  | % 15
  <a d >8 q8 <g c >8 q16 q <a c >8. q16
  <a c >8 q
  | % 16
  <a d >8 q16 q <g c >8 q <a c >4 <d f >4
  | % 17
  <cis e >4 q8 q <d f >4 <cis e >4
  | % 18
  <d f >4 r4 <a c >4-> q8 <a d >8
  | % 19
  <c e >8. q16 q8 r8 <c f >4 <c e >8 q
  | % 20
  <a d >4 q8 q <b d >8 q <c e >8 q
  | % 21
  b e e4 e
  | % 22
  d d8 d e4 e8[ d]
  | % 23
  c4 r4 <a c >4. q8 
  | % 24
  q q q q <gis d' >8.-> q16 q8 q
  <a e' >8 <gis d' >16 q
  <a c >8 q q4-> q-> 
  | % 26
  <a d >-> <a dis >-> <b e >4-> b8 e
  | % 27
  e4 e d d8 d
  | % 28
  e4 d c r8 <e, g >8 
  | % 29
  q8. q16 <e g >8 q8 <f a >4. q8 
  | % 30
  <g b >4 <g c >8 q <a d > q <c e > q 
  | % 31
  <c f >8. q16 <c f >8 q <e g >8 q16 q g8 e
  | % 32
  a4 g g8[ f] e d g4. f8 e4 r8 e\mp 
  | % 34
  c a e4( fis8) gis a8. c16 
  | % 35
  d8 dis e4 f8 f e8. e16
  | % 36
  e4 \breathe e8 e e4. e8 
  | % 37
  \key a \major e4 r4 e8. e16 e8 e e4. e8 e e e4 
  | % 39
  <d fis >4 <b d >8 <d fis >8 <cis e >8 q q4 
  | % 40
  fis8 fis e4 d cis1 
  | % 42
  d4 d cis <b d >4 | cis1 
  | % 44
  d4 d cis <b d >4 |
  cis1( |
  d2. cis4 |
  | % 47
  cis d cis) d8 d |
  cis4 <b d >4 cis2~
  | % 48
  cis
  | % 49
  d8 d cis4 <b d >4 |
  cis1( |
  cis4 a8\{ cis\} e4) d8 d
  | % 52
  cis4 <b d >4 cis a
  | % 53
  e'( fis) e8 d cis b
  | % 54
  cis cis d d cis4 b 
  | % 55
  ais d8 b <ais cis >4 <cis e >8. <b d >16 |
  <ais cis >2 b8. a16 g4|
  
  | % 57
  \key a \minor e'8. d16 c4 c8. b16 e4 |
  <d g >8. <d g >16
  <d g >2 r4
  
}

bass = \relative c {
  \global
  \dynamicNeutral
  b'8.\f a16 g4~ | g1 g8.\ff g16 g2\fermata e8\pp e
  | % 4
  g4 g8 a g g16 g e8 e
  | % 5
  <d a' >4. <e g >8 g4 g8 g
  | % 6
  g4-> g g8 g\pp g g16 g
  | % 7
  e8 d c4-> d8 d e4
  | % 8
  e8 c f4 e d
  | % 9
  d8 e g4 g c8 c
  | % 10
  b b16 b a8 c b b16 b c8 g
  | % 11
  a4 c g8\p g g g
  | % 12
  e4 e8 e g8. g16 g8 g
  | % 13
  <d a' >8. q16 <e g >8 q g a g g16 g
  | % 14
  d8 e f4 <a, e' >4 d8 <d f >8
  | % 15
  <d f >8 q e e16 e <a, e' >8. q16 q8 q
  | % 16
  <d f >8 q16 q16 e8\< e f4 f8[ g]
  | % 17
  a4\f a8 a d4 a
  | % 18
  d->\fermata r4 f,-> f8 f
  | % 19
  <c g' >8. q16 q8 r8 <a f' >4 <c g' >8 q
  | % 20
  <d f >4 q8 q g g <c, g' >8 q
  | % 21
  e gis\< a4 g\!
  | % 22
  f f8 f e4 e 
  | % 23
  <a, e' >4 r4 <a e' >4. q8
  | % 24
  q q <a e' >8 q <b e >8.-> q16 q8 q 
  | % 25
  <c e > <b e >16 q <a e' >8 q f'4-> f->
  | % 26
  f-> f-> <e gis >4->\fermata e8 e
  | % 27
  a4 g f f8 f
  | % 28
  e4 e a, r8 c
  | % 29
  c8. c16 c8 c c4. c8
  | % 30
  d4 e8\< e f f g g \!
  | % 31
  a8. a16 a8 a c c16 c c8 c
  | % 32
  c4 c g g8 g |
  g4. g8 c,4 r4 | R1*2 | r4 c'8 a <e b' >4.-> <e b' >8 
  | % 37
  a4 \fermata r4 a8.\f a16 a8 a | <e b' >4. q8 a a a4
  | % 39
  a\f  a8 a a a a4 
  | % 40
  d,8\pp d e4 e a,1 
  | % 42
  d4 \pp d e e a,1
  | % 44
  d4 d e e
  | % 45
  a,2( <fis fis'> | b4 e2 a,8\{ gis\} | fis4 b8\{ e\} a,4) d8\pp d 
  | % 48
  e4 e a,2~ | a
  | % 49
  d8 d e4 e | a,1( | a4 fis8\{ a b cis\}) d\pp d
  | % 52
  e4 e a,\fermata a'\f
  | % 53
  cis d cis8 b a gis
  | % 54
  a a d,\pp d e4 e
  | % 55
  fis\fermata fis8\p fis_\markup\italic rit. fis4\fermata fis8.\pp fis16 |
  fis2\fermata b8.\f a16 g4 |
  g2 g | g8.\ff g16
  g2\fermata r4
  
}

sopranoVerse = \lyricmode {
  С_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог.
  %Ра -- зу -- ме -- йте я -- зы -- цы и по -- ка -- ря -- йте -- ся. 
  Я -- ко с_на -- ми Бог.
  %У -- слы -- ши -- те до по -- сле -- дних зе -- мли
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог. __
  %Мо -- гу -- щи -- е по -- ка -- ря -- йте -- ся.
  Я -- ко с_на -- ми Бог. __
  %А -- ще бо па -- ки во -- змо -- же -- те, и па -- ки по -- бе -- жде -- ни бу -- де -- те.
  Я -- ко с_на -- ми Бог
  %И и -- же аще со -- вет со -- ве -- ща -- ва -- е -- те, ра -- зо -- рит Го -- сподь.
  Я -- ко с_на -- ми Бог.
  %Стра -- ха же ва -- ше -- го не убо -- и -- мся ни -- же сму -- ти -- мся.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  %Го -- спо -- да же Бо -- га на -- ше -- го То -- го освя -- тим,
  %и Той бу -- дет нам в_страх.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  %И а -- ще на не -- го на -- де -- я -- ся бу -- ду, бу -- дет мне во о -- свя -- ще -- ние.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  И у -- по -- ва -- я бу -- ду на не -- го, и спа -- су -- ся им.
  Я -- ко с_на -- ми Бог.
  Я -- ко от -- ро -- ча ро -- ди -- ся нам, Сын и да -- де -- ся нам
  Я -- ко с_на -- ми Бог. Я -- ко с_на -- ми Бог. Я -- ко с_на -- ми Бог. __
  Я -- ко с_на -- ми Бог. __ Я -- ко с_на -- ми Бог. __ Я -- ко с_на -- ми Бог.
  О -- тец бу -- ду -- ща -- го ве -- ка.
  Я -- ко с_на -- ми Бог. С_на -- ми Бог. С_на -- ми Бог.
  С_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог.
  С_на -- ми Бог.
}

altoVerse = \lyricmode {
  % Набирайте слова здесь
  
}

tenorVerse = \lyricmode {
  С_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог.
  Ра -- зу -- ме -- йте я -- зы -- цы и по -- ка -- ря -- йте -- ся. Я -- ко с_на -- ми Бог.
  У -- слы -- ши -- те до по -- сле -- дних зе -- мли
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  Мо -- гу -- щи -- е по -- ка -- ря -- йте -- ся.
  Я -- ко с_на -- ми Бог.
  А -- ще бо па -- ки во -- змо -- же -- те, и па -- ки по -- бе -- жде -- ни бу -- де -- те.
  Я -- ко с_на -- ми Бог
  И и -- же а -- ще со -- вет со -- ве -- ща -- ва -- е -- те, ра -- зо -- рит Го -- сподь.
  Я -- ко с_на -- ми Бог.
  Стра -- ха же ва -- ше -- го не у -- бо -- и -- мся ни -- же сму -- ти -- мся.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  Го -- спо -- да же Бо -- га на -- ше -- го То -- го о -- свя -- тим,
  и Той бу -- дет нам в_страх.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  И а -- ще на не -- го на -- де -- я -- ся бу -- ду, бу -- дет мне во о -- свя -- ще -- ни -- е.
  Я -- ко с_на -- ми Бог, я -- ко с_на -- ми Бог.
  И у -- по -- ва -- я бу -- ду на не -- го, и спа -- су -- ся им.
  Я -- ко с_на -- ми Бог.
  Я -- ко от -- ро -- ча ро -- ди -- ся нам, Сын и да -- де -- ся нам
  Я -- ко с_на -- ми Бог. Я -- ко с_на -- ми Бог. Я -- ко с_на -- ми Бог. __
  Я -- ко с_на -- ми Бог. __ Я -- ко с_на -- ми Бог. __ Я -- ко с_на -- ми Бог.
  О -- тец бу -- ду -- ща -- го ве -- ка.
  Я -- ко с_на -- ми Бог. С_на -- ми Бог. С_на -- ми Бог.
  С_на -- ми Бог, с_на -- ми Бог, с_на -- ми Бог.
  С_на -- ми Бог.
  
}

bassVerse = \lyricmode {
  % Набирайте слова здесь
  С_на -- ми Бог, _
  \repeat unfold 261 \skip 1
  С_на -- ми, с_на -- ми Бог.
}

soloVoicePart = \new Staff \with {
  midiInstrument = "choir aahs"
} { \soloVoice }
\addlyrics { \verseSoloVoice }

choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    alignBelowContext = "sa"
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \sopranoVerse
  \new Lyrics \lyricsto "alto" \altoVerse
  \new Staff = "tb" \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    alignBelowContext = "tb"
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \tenorVerse
  \new Lyrics \lyricsto "bass" \bassVerse
>>

\score {
  <<
    \soloVoicePart
    \choirPart
  >>
  \layout { 
      \context {
      \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
    } 
  }
  \midi {
    \tempo 4=60
  }
}
