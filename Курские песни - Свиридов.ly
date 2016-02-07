\version "2.18.2"

\header {
  title = "Курские песни"
  composer = "Георгий Свиридов"
  poet = "Слова народные"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

#(set-global-staff-size 19)
\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 10
  %system-separator-markup = \slashSeparator
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent=0
  oddHeaderMarkup = \markup {
      \on-the-fly \print-page-number-check-first  \on-the-fly \not-single-page  {
        \fill-line { ""  \concat { \fromproperty #'header:title " "  \fromproperty #'header:subtitle }}
      }
    }
    evenHeaderMarkup = \markup {
      \on-the-fly \print-page-number-check-first  \on-the-fly \not-single-page  {
        \fill-line { \concat { \fromproperty #'header:title " "  \fromproperty #'header:subtitle } "" }
      }
    }
}

global = {
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t
  \key d \minor
  \numericTimeSignature
  \autoBeamOff
  \dynamicUp 
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Glissando.style = #'zigzag
}

white = {\once \override Staff.TimeSignature.whiteout = ##t}
desGlissando = \acciaccatura { \once \override TextScript.extra-offset = #'(2 . -6) des8\p\< \glissando^\markup\tiny\italic\rotate #20 gliss. s2 }
tick = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


% 1 Зелёный дубок

altoI = \relative c' {
  \global
  \time 2/2
  \tempo "Нежно, прихотливо" 2=56
  R1^\markup{А+С}
  R1*3 |
  \time 3/2
  es8--[^\markup{\dynamic pp \italic dolce}\> des]\! des4 f-. f8[ g] des4-. des-. |
  \time 2/2 f8[\< g16 f] es8[ f]\! g4\> f | 
  des1(\< | f4)-. g-.\! r2 | \time 3/2 es4^\markup{\dynamic p \italic cantabile } g f2( g4) des |
  es(--\>des)\! des1~ | \mark #1 \time 2/2 des2~ des4 r | R1*3
  \desGlissando g4--\! g8 g g[ es] es\< es\! | g4.--\>( f8 es4-.\!) f |
  g8--[(\> f] es[ des])\! des2~ | des~ des4 r |
  \time 3/2 es4^\markup\italic cantabile g f2( g4) \tick des \time 2/2 f8[(\>-- es] des4)\! des2~ | des1\>~ |
  \mark #2 des4\! r r2 | R1*3 | \time 3/2 R1*3/2 |
  \time 2/2 R1*3 | \time 3/2 es4\p g f2( g4) \tick des |
  \time 2/2 es--\>( des)\! des2~ | des~ des4 r | \mark #3 \desGlissando g4--\!^\markup\italic espr. 
    g g8[ es] es4\< | g4.--(\> f8 es4-.)\! f |
  g8([\>-- f] es[ des])\! des2~ | des~ des4 r | \time 3/2 es g f2( g4) des \time 2/2 f8[(--\> es] des4)\! des2~ | des~ des4 r |
  \mark #4 es4^\markup{\dynamic pp \italic dolce} g g g | g4.--\>( f8 es4-.\!) f | g8[(--\> f] es[ des])\! des2~ | des~ des4 r |
  \time 3/2 es4 g f2( g4) des | \time 4/4 f8[(--\> es] des4)\! des2~ | des1~\> | des4\ppp r r2 | r1 \bar "|."
}

altoVerseI = \lyricmode {
  % Набирайте слова здесь
  Зе -- лё -- ный ду -- бо -- к', зе -- лё -- ный ду -- бо -- к'
  ли -- па зе -- ле -- не -- е. __
  О -- те -- ц', ма -- ме -- нь -- ка род -- не -- е, __
  дру -- жо -- чек ми -- ле -- е. __
  Дру -- жо -- чек ми -- ле -- е. __
  С_от -- цом, ма -- терь -- ю бра -- ню -- ся __
  гре -- ха на -- бе -- ру -- ся. __
  Со ми -- лым друж -- ком сой -- ду -- ся __
  не на -- го -- во -- рю -- ся. __
}

\bookpart {
  \header {
      subtitle = "I. \"Зелёный дубок\""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Альт"
      } \new Voice = "altoI" \altoI
      \new Lyrics \lyricsto "altoI" \altoVerseI
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=56
    }
  }
}

% 2 Ты воспой, воспой

sopranoII = \relative c'' {
  \global
  % Вписывайте музыку сюда
  \time 4/4
  \tempo "Светло, празднично" 4=152
  R1*6 |
  \mark #5
  g4.--^\markup{\dynamic f \italic " un poco tenuto"} a8 bes[ c] bes a |
  g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] g2.^\markup\italic ten. r4
  d'4 d d d | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  \mark #6
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | d d d d | bes2.^\markup\italic ten.  r4 | 
  d d d d | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  \mark #7
  d4. d8 d4 d | g2.^\markup\italic ten. r4 | <d f>4 q q d | g2.^\markup\italic ten. r4 |
  d d d d  | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  \mark #8
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | d d d d | bes2.^\markup\italic ten.  r4 | 
  d d d d  | f1~ | f~ | f~ | f~ | f2~\< f4\! r |
  \mark #9
  d4.\ff d8 d4 d | g2. ^\markup\italic ten. r4 | <d f>4 q q d  | g2.^\markup\italic ten. r4 |
  <d f>2 <bes d> |<d f>4 <bes d> <d f> <d g> | <d bes'>1~ | q~ | q~ | q2.\<~ q8\! r8\fermata \bar "|."
}

altoII = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*6
  g4.--^\markup{\dynamic f \italic " un poco tenuto"} a8 bes[ c] bes a |
  g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] g2.^\markup\italic ten. r4
  bes4 bes bes8[ c] a[ g] | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #6
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | bes' bes bes a8[ bes] | g2.^\markup\italic ten.  r4 | 
  bes bes bes8[ c] a[ g] | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #7
  g4. c8 bes[ g] c[ bes16 a] | g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] | g2.^\markup\italic ten. r4 |
  bes bes bes8[ c] a[ g]  | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #8
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | bes' bes bes a8[ bes] | g2.^\markup\italic ten.  r4 | 
  bes bes bes8[ c] a[ g]  | f1~ | f~ | f~ | f~ | f2~\< f4\! r |
  %\mark #9
  g4.\ff c8 bes[ g] c[ bes16 a] | g2. ^\markup\italic ten. r4 | bes4 bes bes a8[ bes] | g2.^\markup\italic ten. r4 |
  bes2 g | bes4 g bes c <bes d>1~ | q~ | q~ | q2.\<~ q8\! r8\fermata
}

tenorII = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*6
  g4.--^\markup{\dynamic f \italic " un poco tenuto"} a8 bes[ c] bes a |
  g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] g2.^\markup\italic ten. r4
  d'4 d d d | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #6
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | d d d d | d2.^\markup\italic ten.  r4 | 
  d d d d | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #7
  d4. d8 d4 d | g2.^\markup\italic ten. r4 | <d f>4 q q d | g2.^\markup\italic ten. r4 |
  d d d d  | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #8
  d4. g8 f[ d] g[ f] | d2.^\markup\italic ten. r4 | d d d d | d2.^\markup\italic ten.  r4 | 
  d d d d  | f1~ | f~ | f~ | f~ | f2~\< f4\! r |
  %\mark #9
  d4.\ff d8 d4 d | g2. ^\markup\italic ten. r4 | <d f>4 q q d  | g2.^\markup\italic ten. r4 |
  <d f>2 << \voiceOne d \new Voice { \voiceTwo d } >> \oneVoice |<d f>4 <bes d> <d f> <d g> | <d f>1~ | q~ | q~ | q2.\<~ q8\! r8\fermata
}


bassII = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*6
  g4.--^\markup{\dynamic f \italic " un poco tenuto"} a8 bes[ c] bes a |
  g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] g2.^\markup\italic ten. r4
  bes4 bes bes a8[ g] | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #6
  d'4. d8 d4 d | d2.^\markup\italic ten. r4 | bes bes bes a8[ bes] | g2.^\markup\italic ten.  r4 | 
  bes bes bes a8[ g] | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #7
  g4. c8 bes[ g] c[ bes16 a] | g2.^\markup\italic ten. r4 | bes bes bes a8[ bes] | g2.^\markup\italic ten. r4 |
  bes bes bes  a8[ g]  | f1~ | f~ | f~ | f~ | f2~\< f4\! r
  %\mark #8
  d'4. d8 d4 d | d2.^\markup\italic ten. r4 | bes bes bes a8[ bes] | g2.^\markup\italic ten.  r4 | 
  bes bes bes a8[ g]  | f1~ | f~ | f~ | f~ | f2~\< f4\! r |
  %\mark #9
  g4.\ff c8 bes[ g] c[ bes16 a] | g2. ^\markup\italic ten. r4 | bes4 bes bes a8[ bes] | g2.^\markup\italic ten. r4 |
  bes2 bes | bes4 g bes c <bes d>1~ | q~ | q~ | q2.\<~ q8\! r8\fermata
}

VerseII = \lyricmode {
  % Набирайте слова здесь
  Ты вос -- пой, __ ты вос -- пой,
  вос -- пой, жа -- во -- ро...
  жа -- во -- ро -- но -- чек. __
  Ты вос -- пой, вос -- пой зи -- мой на про -- га... на про -- га -- лин -- ке. __
  Ты вос -- пой, вос -- пой, вос -- пой, жа -- во -- ро...
  жа -- во -- ро -- но -- чек. __
  Ты вос -- пой, вос -- пой вес -- ной на про -- та... на про -- та -- лин -- ке. __
  Ты вос -- пой, вос -- пой, вос -- пой, жа -- во -- ро...
  вос -- пой, жа -- во -- ро -- но -- чек. __
}

\bookpart {
  \header {
  subtitle = "II. \"Ты воспой, воспой\""
}

  \score {
    \new ChoirStaff <<
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Сопрано"
      } \new Voice = "sopranoII" \sopranoII
      \new Lyrics \lyricsto "sopranoII" \VerseII
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Альт"
      } \new Voice = "altoII" \altoII
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Тенор"
      } \new Voice = "tenorII" { \clef "treble_8" \tenorII }
      \new Lyrics \lyricsto "tenorII" \VerseII
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Тенор"
      } \new Voice = "bassII" { \clef "bass" \bassII }
      
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=152
    }
  }
}

% 3 В городе звоны

sopranoIII = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*14
  \mark #11
  \tempo 4 = 69 - 72
  r4 <a d>8\pp q q4 q8 q q4 q8 q <c e>4 <a d> q2~ |
  \time 6/8
  q8 r r q--\< q-- q-- \time 3/4 <c e>2--\! <a d>4--\! \time 4/4 q1~ | q~\> | \bar "||" \time 2/4  \mark #12 q8\ppp

}


bassIII = \relative c {
  \global
  % Вписывайте музыку сюда
  \time 4/4
   << R1*2 {s8^"Басы"} >>|
  \mark #10
  c8^\markup{\dynamic pp \italic " molto tenuto"}[ bes] c[ e] d4.\>( c8)\! | e16--\>[ d c8]\! c[ d] d--\>[ c]\! c4 \breathe |
  c8[ bes] << {c[ bes16 c] } {s16 s\< s s\!} >> d4.(\> c8)\! | e e d c c4 c \breathe | c8[ bes] << {c[ bes16 c] } {s16 s\< s s\!} >> d4.(\> c8)\! |
  e16--[\> d]\! c8 c d d[--\> c]\! c4 \breathe | c8[ bes] << {c[ bes16 c] } {s16 s\< s s\!} >> d4.(\> c8)\! | e16--\>[ d] c8\! c[ d] e[--\> d]\! c4 \breathe |
  c8[ bes] << {c[ bes16 c] } {s16 s\< s s\!} >> d4.(\> c8)\! | e16--[\> d]\! c8 c[ d] e[--\> d] c4\! | c8[ bes] << {c[ bes16 c] } {s16 s\< s s\!} >> d4.(\> c8)\! |
  e e d[ c] c4 c~ | \time 10/4 c8 r r4 r1 r1 |

}

VerseBassIII = \lyricmode {
  % Набирайте слова здесь
  В_го -- ро -- де  __ зво -- ны зво -- нют.
  В_те -- ре -- ме __ све -- чи те -- п' -- лю -- тса,
  в_те -- ре -- ме __ све -- чи те -- п' -- лю -- тса.
  Ма -- туш -- ка __ бо -- гу мо -- ли -- тса,
  ма -- туш -- ка __ бо -- гу мо -- ли -- тса.
  До -- чень -- ка __ бла -- сла -- вля -- е -- тса: __
}

VerseSopranoIII = \lyricmode {
  % Набирайте слова здесь
  Бла -- сла -- ви, бла -- сла -- ви ме -- ня, ма -- туш -- ка, __
  на бо -- жий суд пой -- ти. __
}

\bookpart {
  \header {
  subtitle = "III. \"В городе звоны\""
}

  \score {
    \new ChoirStaff <<
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "С"
        shortInstrumentName = "С"
      } \new Voice = "sopranoIII" \sopranoIII
      \new Lyrics \lyricsto "sopranoIII" \VerseSopranoIII
      

      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "Б"
        shortInstrumentName = "Б"
      } \new Voice = "bassIII" { \clef "bass" \bassIII }
      \new Lyrics \lyricsto "bassIII" \VerseBassIII
      
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=152
    }
  }
}


% 4 Ой, горе, горе

GlissandoIV = \acciaccatura { \once \override TextScript.extra-offset = #'(2 . -6) c8^\p \glissando^\markup\tiny\italic\rotate #15 gliss. s2 }
altsoloIV = \relative c' {
  \global
  % Вписывайте музыку сюда
  R2*8 | 
  \mark #13
  \GlissandoIV d8^\markup\italic "лёгким звуком" d16 d g8 g | d16 d d8 bes'8 bes16 bes |
  a8 g f[( d]~ | d2\>~ | d8\!) r r4
  R2*6
  \mark #14
  d16^\markup{\dynamic p \italic " sempre"} d d d g8 g | d d16 d bes'8 bes | a g f[( d]~ d2~\> d8\!) r8 r4
  R2*6
  \mark #15
  d16\p d d8 g g | d16 d d8 bes'8 bes16 bes |
  a8 g f[( d]~ | d2~\> | d8\!) r8 r4 
  R2*6
  \mark #16
  d16\p d d8 g g | d16 d d d bes'8 bes16 bes |
  a8 g f[( d]~ | d2~\> | d8\!) r8 r4 
  R2*6
  \mark #17
  \acciaccatura { \once \override TextScript.extra-offset = #'(2 . -6) c8^\p\< \glissando^\markup\tiny\italic\rotate #15 gliss. s1 } d8\! d16 d g8 g | d16 d d8 bes'8 bes16 bes |
  a8 g f[( d]~ | d2\>~ | d8\!) r r4 \break
  
}

sopranoIV = \relative c'' {
  \global
  % Вписывайте музыку сюда
  \time 2/4
  \tempo "Легко" 4=80-84
  \mark #12
  <a d>8\repeatTie\ppp r r4 | R2*11
  a16^\markup{\dynamic pp \italic " dolce лёгким звуком" } a a8 bes d | a16 a a a bes8[(\< c]\! 
  d8) c16[ bes] a8 g | a8( d4.~) | d2~ | d~ | d~ \> | d8\ppp r r4 | 
  R2*3
  a16^\markup{\dynamic pp \italic " dolce"} a a a bes8 d | a a16 a bes8[(\< c]\! d) c16[ bes] a8 g | a( d4.~) |
  d2~ d~ d~\> | << { d8\pp r8 r4 d,2\rest d2\rest } \new Voice = "oj" {\voiceThree d'2~_\markup\italic{"A solo"}   \autoBeamOff d c8 bes d4~ d\>~ d8\! r } >> \oneVoice
  a16^\markup\center-column{ "(Все)" \line { \dynamic pp \italic " dolce" }} a a8 bes d | a16 a a a bes8[\< c]\! | d c16[ bes] a8 g |
  a( d4.~) | d2~ d~ d~\> d8\! r r4 | R2*3
  a16\pp a a8 bes d | a16 a a a bes8[\< c]\! | d c16 bes a8 g | a( d4.~) |
  d2~ | d~ | d~\> | d8\ppp r r4 |
  R2*3
  a16\pp a a8 bes d | a16 a a a bes8[(\< c] d)\! c16[ bes] a8 g |
  a( d4.~) | d2~ | d~ | d~\> 
  \time 2/4
  \mark #18
  \bar "||" d8\! 
}

altoIV = \relative c' {
  \global
  % Вписывайте музыку сюда
  R2*12
  d16^\markup{\dynamic pp \italic " dolce лёгким звуком" }d d8 g g | d16 d d d g8[(\< a]\! 
  bes8) a16[ g] f8 e | f16[( e] d4.~) | d2~ | d~ | d~ \> | d8\ppp r r4 | 
  R2*3
  d16^\markup{\dynamic pp \italic " dolce" } d d d g8 g | d d16 d g8[(\< a]\! bes) a16[ g] f8 e | f16[( e] d4.)~ d2~ | d~ d~\> | d8\! r r4 | 
  R2*3
  d16^\markup{\dynamic pp \italic " dolce" } d d d g8 g | d16 d d d g8[(\< a]\! bes) a16[ g] f8 e | f16[( e] d4.)~ d2~ | d~ d~\> | d8\! r r4 | 
  R2*3
  d16^\markup{\dynamic pp \italic " dolce" } d d8 g8 g | d16 d d d g8[(\< a]\! bes) a16 g f8 e | f16[( e] d4.)~ d2~ | d~ d~\> | d8\ppp r r4 | 
  R2*3
  d16\pp d d8 g g | d16 d d d g8[(\< a] bes)\! a16[ g] f8 e | f16[( e] d4.)~ | d2~ | d~ d~\> d8\!

}


SoloIV = \lyricmode {
  Ой, го -- ре, го -- ре да, ле -- бе -- донь -- ку, да, мо -- е -- му, __
  Ой, да, то не перь -- я, да, то де -- вичь -- я кра -- со -- та. __
  Да те -- перь те -- бе, да, мо -- я до -- ня, да, не гу -- лять. __
  Да те -- перь те -- бе ма -- лу -- ю де -- ти -- ну, да, ко -- лы -- хать. __
  Ой, го -- ре, го -- ре, да, ле -- бё -- донь -- ку, да, мо -- е -- му, __ 
}

VerseIV = \lyricmode {
  % Набирайте слова здесь
  (и) да, что вы -- рос -- ли, да, бе -- лы -- е перь -- я по не -- му. __
  Ой да, то у дев -- ки, да, не рас -- чё -- са -- на ко -- са. __
  Да те -- перь те -- бе, да, ма -- лу -- ю де -- ти -- ну ко -- лы -- хать. __
  Да те -- перь те -- бе, да, ма -- лу -- ю де -- ти -- ну, да, вос -- пи -- тать. __
  да, что вы -- рос -- ли, да, бе -- лы -- е перь -- я по не -- му. __
}

\bookpart {
  \header {
  subtitle = "IV. \"Ой, горе, горе\""
}

  \score {
    <<
     \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \left-column { Альт соло }
      } \new Voice = "altsoloIV" \altsoloIV
      \new Lyrics \lyricsto "altsoloIV" \SoloIV
      
    \new ChoirStaff <<
      
      \new Staff = "staff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "С"
        shortInstrumentName = "С"
      } \new Voice = "sopranoIV" \sopranoIV
      \new Lyrics \lyricsto "sopranoIV" \VerseIV
      \new Lyrics \with { alignAboveContext = "staff" }  \lyricsto "oj" { Ой! __ Не гу -- лять. __ }
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "А"
        shortInstrumentName = "А"
      } \new Voice = "altoIV" \altoIV
      
    >>
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=82
    }
  }
}

% 5 Да купил Ванька

sopranoV = \relative c'' {
  \global
  % Вписывайте музыку сюда
  d8\repeatTie r r4 |
  R2*4 R2. R2*3
  d8->^\markup{\dynamic ff \italic " ten."} d d d | c e d4 |
  g8 f e4 | d2~\< | d8\! r e[ f] | g[ d] e[ f] e[ g] | d4 d | g8([ f] e4) 
  d2~\< | d8\! r r4 | R2*4 |
  R2. | R2*3 | d8->^\markup{\dynamic ff \italic " ten."} d d d | c e d4 |
  g8 f e4 | d2~\< | d8\! r e[ f] | g[ d] e[ f] e[ g] | d4 d g8[( f] e4)
  d2~\< | d8\! r r4 | R2*8 |
  d8->^\markup{\dynamic ff \italic " ten. e marc."} d d d | c[ e] d4 |
  g8[ f] e[ d16 e] | f8[ e] d r d4 | g8[ f] e4 | d4. d8 | g[( f] e4) | d2~ | d8 d--^\markup {\dynamic ff \italic " sempre" } d-- d-- |
  c[ e] d4 | g8[ f] e d16[ e] | f8[ e] d4 | g8 f e d16[ e] | f8[ e] d4 | g8 f e d16[ e] |
  f8[ e] d4~ | d8 r r4 | R2*3
  

}

altoV = \relative c' {
  \global
  % Вписывайте музыку сюда
  d8\repeatTie r r4 |
  R2*4 R2. R2*3
  <bes' d>8->^\markup{\dynamic ff \italic " ten."} q q q | <a c> q <bes d>4 |
  <g d'>8 <bes d> <c d>4 | <bes d>2\<~ | q8\! r
  << { \voiceTwo c8[ bes] | g[ bes] c4 c | <bes d> q | g8[( bes] c4) } 
     \new Voice {\voiceOne d4 | d d d | s2 | d2 } >> \oneVoice <bes d>2~\< | q8\! r r4 R2*4 |
  R2. | R2*3 | <bes d>8->^\markup{\dynamic ff \italic " ten."} q q q | <a c> q <bes d>4 |
  <g d'>8 <bes d> <c d>4 | <bes d>2\<~ | q8\! r
  << { \voiceTwo c8[ bes] | g[ bes] c4 c | <bes d> q | g8[( bes] c4) } 
     \new Voice {\voiceOne d4 | d d d | s2 | d2 } >> \oneVoice <bes d>2~\< | q8\! r r4 R2*8 |
    
    <bes d>8->^\markup{\dynamic ff \italic " ten. e marc."} q q q | <a c>4 <bes d> |
   << { \voiceTwo g8[ bes] c4 d d8 r d4 | g,8[ bes] c4 d4. d8 | g,8[( bes] c4) d2~ | d8 bes bes bes |
        a4 bes | g8[ bes] c c | d4 d | g,8 bes c c | d4 d | g,8 bes c c | d4 d~ | d8 }
     \new Voice {\voiceOne \autoBeamOff d4 d | d d8 r d4 | d d | d4. d8 | d2 | d2~ | d8 d--^\markup {\dynamic ff \italic " sempre" } d-- d-- |
     c4 d | d d8 d | d4 d | d8 d d d | d4 d | d8 d d d | d4 d~ | d8
                 
   } >> \oneVoice r8 r4 R2*3 
  
}

tenorV = \relative c' {
  \global
  % Вписывайте музыку сюда
  \time 2/4
  \mark #18
  \tempo "Широко и сильно" 4 = 50-52
  d8\ff^"Тен. Запевала" d d f | e g d4 | g16 g f8 e16[ d] e8 | d2~\< | d8\! r e[ f] |
  \time 3/4 g[ d] e([ f] e[ g]) \time 2/4 d4. d8 | g[( f] e4) | d2~-- | 
  \mark #19 \scaleDurations 1/2 { d8 <d f>->^\markup{\dynamic ff \italic " ten."} } <d f>8 q q |
  <d e> q <d f>4 |
  <d g>8 <d f> <d e>4 | <d f>2~\< | q8\! r
  << { \voiceTwo d4 \time 3/4 d d d \time 2/4 <d f>4 q | d2 } 
     \new Voice {\voiceOne e8[ f] g[ d] e[ f] e[ g] s2 g8[( f] e4) } >> \oneVoice <d f>2~\< | \mark #20 q8\! r r4 |
  R2*4 \time 3/4
  R2. \time 2/4 R2*3
  \mark #21 <d f>8->^\markup{\dynamic ff \italic " ten."} q q q | <d e> q <d f>4 |
  <d g>8 <d f> <d e>4 | <d f>2~\< | q8\! r
  << { \voiceTwo d4 \time 3/4 d d d \time 2/4 <d f>4 q | d2 } 
     \new Voice {\voiceOne e8[ f] g[ d] e[ f] e[ g] s2 g8[( f] e4) } >> \oneVoice <d f>4~\< q8\! r |
  \mark #22 d^\markup{\dynamic ff " (Все)"} d d f | e4 d | g8 f e d16[ e] | f8[ e] d4~ | d8 r d d | g[( f] e4) |
  d4. d8 g[( f] e4) | d2~ | \mark #23 d8 r r4 | R2*2 | \time 3/4 R2. | \time 2/4 R2
  R2*2 | r8 d,\f-> a'-> bes16[-> a] | \mark #24 g2-> | f8 e d4~ | d2~ | d8 r r4 |
  R2*8
 
}

bassV = \relative c' {
  \global
  R2*5 R2. R2*3
  <bes d>8->^\markup{\dynamic ff \italic " ten."} q q q | <a c> q <bes d>4
  <g d'>8 <bes d> <c d>4 | <bes d>2~\< q8\! r q4 | 
  << { \voiceTwo g8[ bes] c4 c | <bes d> q | g8[( bes] c4) }
     \new Voice {\voiceOne d4 d d | s2 | d2 } >> \oneVoice <bes d>2~\< \scaleDurations 1/2 { q8\! d^\markup{\dynamic ff " Запевала"} }
  d d d | c c bes4 | g8 bes c4 | d2~\< | d8\! r c4 |
  g8[ bes] c4 c | d d | g,8[( bes] c4) | d2~ \scaleDurations 1/2 { d8 <bes d>->^
      \markup\left-column{ "(Все)" \line { \dynamic ff \italic " ten."} }}
  <bes d>8 q q | <a c> q <bes d>4 |
  <g d'>8 <bes d> <c d>4 |  <bes d>2~\< q8\! r q4 | 
  << { \voiceTwo g8[ bes] c4 c | <bes d> q | g8[( bes] c4) }
     \new Voice {\voiceOne d4 d d | s2 | d2 } >> \oneVoice <bes d>2~\< | q8\! r r4 |
  R2*7
  r8 d,\ff-> b'-> b-> | R2*3
  R2. | R2*3 | r8 d,8\f-> a'-> bes16->[ a] | g2-> |
  f8 e d4~ | d2~ | d8 r r4 | R2*3 | r4. f8--\f
  f4-- f-- | c--~ c8 r | e4-- e8-> r | R2 \bar "|."
}

womenVerseV = \lyricmode {
  % Набирайте слова здесь
  (у) Ой да, ко -- сил Ва -- нь -- ка чу -- жу -- ю тра -- ву, а сво -- я сто -- ит вя -- нет. __
  Ой, да лю -- бил Ва -- нь -- ка чу -- жу -- ю жён -- ку, а сво -- я сто -- ит пла -- чет. __
  Ой да, ты рас -- пут -- ный сын, Ва -- нюш -- ка, на что же ты же -- нил -- ся! __ Ой, ка_б я
  зна -- ла, крас -- на -- я дев -- ка, за -- муж не хо -- ди -- ла, ко -- су не гу -- би -- ла. __
}

tenorVerseV = \lyricmode {
  Да ку -- пи -- л(ы) Ва -- нь -- ка, Ва -- нь -- ка се -- бе ко -- су __
  для сво -- во  по -- ко -- су. __
  % все
  Ой да, ко -- сил Ва -- нь -- ка чу -- жу -- ю тра -- ву, а сво -- я сто -- ит вя -- нет. __
  
  Ой, да лю -- бил Ва -- нь -- ка чу -- жу -- ю жён -- ку, а сво -- я сто -- ит пла -- чет. __
  % все тенора
  Сво -- я сто -- ит пла -- чет, ой не так ры -- да -- ет, __ а Ва -- нюш -- ку ру -- га -- ет:  __
  Рас -- пут -- ный сын Ва -- нь -- ка! __
}

bassVerseV = \lyricmode {
  % Набирайте слова здесь
  \repeat unfold 19 \skip 1
  Да ко -- си -- л(ы) Ва -- нь -- ка чу -- жу -- ю тра -- ву, а сво -- я сто -- ит вя -- нет. __ ""
  \repeat unfold 18 \skip 1
  Ру -- га -- ет:
  \repeat unfold 7 \skip 1
  Рас -- пут -- ный сын  Вань -- ка!
}

\bookpart {
  \header {
  subtitle = "V. \"Да купил Ванька\""
}

  \score {
    \new ChoirStaff <<
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "С"
        shortInstrumentName = "С"
      } \new Voice = "sopranoV" \sopranoV
      \new Lyrics \lyricsto "sopranoV" \womenVerseV
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "А"
        shortInstrumentName = "А"
      } \new Voice = "altoV" \altoV
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = "Т"
        shortInstrumentName = "Т"
      } \new Voice = "tenorV" { \clef "treble_8" \tenorV }
      \new Lyrics \lyricsto "tenorV" \tenorVerseV
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Бас"
        shortInstrumentName = "Б"
      } \new Voice = "bassV" { \clef bass \bassV }
      \new Lyrics \lyricsto "bassV" \bassVerseV    
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=50
    }
  }
}

% 6 Соловей мой смутный

altosoloVI = \relative c' {
  \global
  \tempo Свободно 4 = 40 - 42
  \time 4/4
  f4~\p^\markup\left-column {"Альт соло" \italic "dolce, ten. molto"} \tuplet 3/2 { f d8 } f4\< g | bes\> g2~ g8 r\!
  \time 5/4 f8\< f \! bes2( a8[ f]) bes4 |
  \time 4/4 a^\markup\italic "poco rit."\> g2~ g8\! r |
  \tempo 8=72 \time 8/8 R1 | \time 2/4 R2^\markup\italic "poco tenuto" |
  \time 4/8 R2^\markup\italic "a tempo" | \time 2/4 R2 | \time 4/4 R1^\markup\italic "poco rit." |
  \time 6/4 \mark #26 \tempo "con moto" 4 = 52 r2 c,8\p\< c d e a\> g4.\!  \breathe |
  \time 4/4 \tempo 4 = 40 - 42 f8\p\< bes4. a8[ f] bes4\! | a(\>^\markup\italic "poco rit." g2~ g8)\! r |
  \time 5/8 \tempo 8 = 72 R1*5/8 |
  \time 2/4 R2^\markup\italic "poco ten." | \time 4/8 R2^\markup\italic "a tempo" | \time 2/4 R2 | \time 4/4 R1^\markup\italic "poco rit." |
  \time 6/4 \mark #27 \tempo "con moto" 4 = 52 r2 c,8\p\< c d e a\> g4.\! \breathe | 
  \tempo "a tempo" 4 = 40 - 42 \time 4/4 f8^\markup\italic ten. bes4.\< a8[ f] bes4\! | a(\>^\markup\italic "poco rit." g2~ g8)\! r |
  \time 5/8 \tempo 8 = 72 R1*5/8 | \time 2/4 R2^\markup\italic "poco tenuto" | \time 4/8 R2^\markup\italic "a tempo" | \time 2/4 R2 |
  \time 4/4 R1^\markup\italic "poco rit." | \mark #28 \tempo 4 = 40 - 42 f4^\markup{\dynamic p \italic ten.}~ \tuplet 3/2 { f4 d8 } f4 g | bes g2\>~ g8\! r |
  \time 5/4 f8\< f bes2\! a8[ f] bes4 | \time 4/4 a4(^\markup\italic "poco rit." g2~\> g8)\! r |
   \time 5/8 \tempo 8 = 72 R1*5/8 |
  \time 2/4 R2^\markup\italic "poco ten." | \time 4/8 R2^\markup\italic "a tempo" | \time 2/4 R2 | \time 4/4 R1^\markup\italic "poco rit." \bar "|."
  % Вписывайте музыку сюда

}

sopranoVI = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*2 | R1*5/4 | R1^"Сопрано" |
  bes16[\pp\< c] d8 d d d4( c8) d | << { g,4-- f4} {s8 s\! s16\> s s s\!} >> \breathe |
  bes16[\pp c] d4. | bes4 d | c( d2~\> d8)\ppp r | R1. | R1*2 | bes16[\pp\< c] d8 d d d\! |
  << { g,4-- f } { s8\< s\! s\> s\!} >> \breathe bes16[\pp c] d4. | bes4 d | c(\> d2~ d8)\ppp r |
  R1. | R1 | R1 |
  bes16[\pp\< c] d8 d d d | << { g,4 f} {s8 s\! s16\> s s s\! } >> \breathe | bes16[ c] d4. | bes4 d |
  c4(\> d2~ d8)\ppp r | R1 | R1 | R1*5/4 | R1 |
  bes16[\pp\< c] d8 d d d | << { g,4-- f} {s8 s\! s\> s\! } >> \breathe | bes16[ c] d4. | bes4 r8 d8 | c4(\> d2~ d8)\! r8 
}

altoVI = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*2 | R1*5/4 | R1^\markup{"Альт"} |
  g8\pp\< g g g g4. g8 | << { g4-- f4} {s8 s\! s16\> s s s\! } >> \breathe |
  d8\pp d4. | d4 d | f( d2~\> d8)\ppp r | R1. |
  R1 | R1 | g8\pp\< g g g g\! |
  << { g4-- f } { s8\< s\! s\> s\!} >> \breathe d8\pp d4. | d4 d | f(\> d2~ d8\ppp) r |
  R1. | R1 | R1 |
  g8\pp\< g g g g | << { g4 f4} {s8 s\! s16\> s s s\!} >> \breathe d8 d4. | d4 d |
  f(\> d2~ d8\ppp) r | R1 | R1 | R1*5/4 | R1 |
  g8\pp\< g g g g | << { g4-- f4} {s8 s\! s16\> s s s\!} >> \breathe | d8\pp d4. | d4 r8 d | f4\>( d2~ d8)\! r
}

VerseSoloVI = \lyricmode {
  % Набирайте слова здесь
  Со -- ло -- вей мой смут -- ный,  __ да сму -- тён, __ не -- ве -- сел. __
  Го -- лов -- ку по -- ве -- сил,
  зер -- но не клю -- ёт. __
  Кле -- вал бы я зё -- рен, да во -- люш -- ки нет. __
  Зо -- ло -- та -- я клет -- ка, __ да всё су -- шит ме -- ня. __
}

VerseVI = \lyricmode {
  % Набирайте слова здесь
  Он го -- ло -- вуш -- ку __ по -- ве -- сил,
  зер -- но не клю -- ёт. __
  Ой, кле -- вал бы я 
  зё -- рен, да во -- люш -- ки нет. __
  Ой, про -- пел бы я пес -- ни, да го -- ло -- су нет. __
  Ой, зе -- лё -- на -- я вет -- ка ве -- се -- лит ме -- ня! __
}

\bookpart {
  \header {
  subtitle = "VI. \"Соловей мой смутный\""
}

  \score {
     <<
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Альт"
      } \new Voice = "altosoloVI" \altosoloVI
      \new Lyrics \lyricsto "altosoloVI" \VerseSoloVI
      
      \new ChoirStaff <<  
        \new Staff \with {
          midiInstrument = "voice oohs"
          %instrumentName = "С"
          %shortInstrumentName = "С"
        } \new Voice = "sopranoVI" \sopranoVI
        \new Lyrics \lyricsto "sopranoVI" \VerseVI
        
        \new Staff \with {
          midiInstrument = "voice oohs"
          %instrumentName = "А"
          %shortInstrumentName = "А"
        } \new Voice = "altoVI" \altoVI   
     >>
   >>
    \layout { 
    \context {
    %\Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=41
    }
  }
}

% 7 За речкою, за быстрою

lelis={ e8[(-> d16 c]) bes8 bes }
lelisff={e8[(->\ff d16 c]) bes8 bes}
veselo={ \time 3/4 bes8 e4 d8 bes c \time 2/4 e d bes4 \time 3/4 c8 e d c bes4~ \white \time 2/4 bes8 r r4 }
sopranoVII = \relative c'' {
  \global
  % Вписывайте музыку сюда
    \time 2/4
  \tempo "С грозной удалью" 4=176
  \mark #29
  R1*2/4*4 | \lelisff |
  \lelis | c8 e d c | bes2~ | \mark #30 bes8 r r4 | R1*2/4
  R1*2/4*2 | \lelisff | \lelis | c8 e d c | bes2~ | 
  \white \time 3/4 \mark #31 bes8 r r4 r | \time 2/4 R1*2/4*3 | \lelisff
  \lelis | c8 e d c | bes2~ \white \time 3/4 \mark #32 bes8 r r4 r | \time 2/4 R1*2/4
  R1*2/4*2 | \lelisff | \lelis \lelis \lelis |
  r8 <f' g>4\f^\markup\italic"pochissimo accelerando" q8 | q q q q | q\< q q q | q\sff r r4
  \mark #33 \time 3/4 \tempo 4 = 176 bes,8\ff e4 d8 bes c \time 2/4 e d bes4 \time 3/4 c8 e d c bes4~ | \white \time 2/4 bes8 r r4 |
  \veselo 
  \mark #34 \veselo
  \veselo
  \mark #35
  \time 3/4 bes8 e4 d8 bes c \time 2/4 e d bes4 | c8 e d c | bes2~ | bes~ bes~ bes~ bes4~\< bes8\! r |
  \mark #36 R1*2/4*4
  \once \override NoteHead.style = #'cross g'4\fff r \bar "|."
}

altoVII = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*2/4*4 | bes4->\ff bes8 bes |
  bes4-> bes8 bes | bes bes bes c | bes2~ | bes8 r r4 | R1*2/4*3
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes bes bes c | 
  bes2~ \white \time 3/4 bes8 r r4 r | \time 2/4 R1*2/4*3 
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes bes bes c | 
  bes2~ \white \time 3/4 bes8 r r4 r | \time 2/4 R1*2/4*3
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes4-> bes8 bes | bes4-> bes8 bes | 
  r8 <des es>4\f q8 | q q q q | q\< q q q | q\sff r r4 |
  bes8\ff e4 d8 bes c | e d bes4 | c8 e d c bes4~ \white bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ \white bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ \white \time 2/4 bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c | bes2~ | bes~ | bes~ | bes~ | bes4~\< bes8\! r
  R1*2/4*4
  \once \override NoteHead.style = #'cross g'4\fff r \bar "|."
}

tenorVII = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*2/4*4 | \lelisff |
  \lelis | c8 e d c | bes2~ | bes8 r r4 | R1*2/4
  R1*2/4*2 | \lelisff | \lelis | c8 e d c | bes2~ | 
  \white bes8 r r4 r | \time 2/4 R1*2/4*3 | \lelisff
  \lelis | c8 e d c | bes2~ \white bes8 r r4 r | R1*2/4
  R1*2/4*2 | \lelisff | \lelis \lelis \lelis |
  r8 <f' g>4\f q8 | q q q q | q\< q q q | q\sff r r4
  bes,8\ff e4 d8 bes c | e d bes4 | c8 e d c bes4~ | \white bes8 r r4 |
  \veselo 
  \mark #34 \veselo
  \veselo
  \mark #35
  \time 3/4 bes8 e4 d8 bes c \time 2/4 e d bes4 | c8 e d c | bes2~ | bes~ bes~ bes~ bes4~\< bes8\! r |
  \mark #36 R1*2/4*4
  \once \override NoteHead.style = #'cross g'4\fff r \bar "|."
}

basssoloVII = \relative c' {
  \global
  bes8^\markup\left-column{"Басы-запевалы (6-8)" \line {\dynamic ff \italic marcato}}-> bes bes e | bes c d bes | d e d c | bes2~ | bes8 r r4 |
  R1*2/4*3 | 
  bes8^\ff bes bes e | bes[ c] d bes | d e d c | bes2~ | bes8 r r4 |
  R1*2/4*3 | 
  bes8^\ff e4 d8 c bes| e d c4 | bes8 e d c | bes2~ | bes8 r r4 |
  R1*2/4*3 | 
  bes8^\ff e4 d8 c bes| e d c4 | bes8 e d c | bes2~ | bes8 r r4 |
  %R2*5 | 

}

bassVII = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1*2/4*4 | bes4->^\markup{\dynamic ff "Басы (остальные)"} bes8 bes |
  bes4-> bes8 bes | bes bes bes c | bes2~ | bes8 r r4 | R1*2/4*3
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes bes bes c | 
  bes2~ \time 3/4 bes8 r r4 r | \time 2/4 R1*2/4*3 
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes bes bes c | 
  bes2~ \time 3/4 bes8 r r4 r | \time 2/4 R1*2/4*3
  bes4->\ff bes8 bes | bes4-> bes8 bes | bes4-> bes8 bes | bes4-> bes8 bes | 
  r8 <des es>4\f^\markup{"Все Басы"} q8 | q q q q | q\< q q q | q\sff r r4 |
  bes8\ff e4 d8 bes c | e d bes4 | c8 e d c bes4~ bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ | bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c bes4~ | bes8 r r4 |
  bes8 e4 d8 bes c | e d bes4 | c8 e d c | bes2~ | bes~ | bes~ | bes~ | bes4~\< bes8\! r
  R1*2/4*4
  \once \override NoteHead.style = #'cross bes4\fff r \bar "|."
}

VerseVII = \lyricmode {
  % Набирайте слова здесь
  Ой, лё -- ли, ой, лё -- ли, че -- ты -- ре дво -- ра. __
  Ой, лё -- ли, ой, лё -- ли, мо -- и ку -- мо -- вья. __
  Ой, лё -- ли, ой, лё -- ли, лю -- би -- те ме -- ня. __
  Ой, лё -- ли, ой, лё -- ли, ой, лё -- ли, ой, лё -- ли,
  ой, ой, ой, ой, ой, ой, ой, ой, ой, ой, ой!
  Ка -- ли -- нуш -- ка ма -- ли -- нуш -- ка, ла -- зо -- ре -- вый цвет. __
  Ве -- сё -- ла -- я бе -- се -- душ -- ка, где ба -- тюш -- ка пьет. __
  За пер -- во -- ю за ча -- ро -- ю ме -- ня по -- мя -- нёт. __
  За дру -- го -- ю за ча -- ро -- ю по -- сыль -- но -- го шлёт. __
  За треть -- е -- ю за ча -- ро -- ю ба -- тюш -- ка и -- дёт. __
  \markup{"Гой!" \super "*)" }
}

bassSoloVerseVII = \lyricmode {
  % Набирайте слова здесь
  За реч -- ко -- ю за бы -- стро -- ю че -- ты -- ре дво -- ра. __
  И все то лю -- би -- мы -- е мо -- и ку -- мо -- вья. __
  Ку -- ми -- те -- ся, лю -- би -- те -- ся, лю -- би -- те ме -- ня. __
  Пой -- дё -- те во зе -- лё -- ный сад, возь -- ми -- те ме -- ня. __
  
}

\bookpart {
  \header {
  subtitle = "VII. \"За речкою, за быстрою\""
}

  \score {
    \new ChoirStaff <<
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Сопрано"
      } \new Voice = "sopranoVII" \sopranoVII
      \new Lyrics \lyricsto "sopranoVII" \VerseVII
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Альт"
      } \new Voice = "altoVII" \altoVII
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        %instrumentName = "Тенор"
      } \new Voice = "tenorVII" { \clef "treble_8" \tenorVII }
      \new Lyrics \lyricsto "tenorVII" \VerseVII
      
      \new ChoirStaff <<
          \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
            \new Staff \with {
            midiInstrument = "voice oohs"
            %instrumentName = \markup \center-column { "Бас" "соло" }
          } { \clef bass \new Voice = "basssoloVII" \basssoloVII }
          \new Lyrics \lyricsto "basssoloVII" \bassSoloVerseVII
          
          \new Staff \with {
            midiInstrument = "voice oohs"
            %instrumentName = "Бас"
          } { \clef bass \new Voice = "bassVII" \bassVII }
          \new Lyrics \lyricsto "bassVII" \VerseVII

      >>
    >>
    \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
    }
    \midi {
      \tempo 4=56
    }
  }
  \markup { \footnote "" \line { \super"*)" "Общий крик на очень высокой ноте."} }
}


