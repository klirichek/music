\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Милость мира"
  composer = "Н.И.Соколов"
  opus = "№1"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

global = {
  \key es \major
  \time 4/4
  \tempo "Умеренно"
  \autoBeamOff
}

abr = { \break }
abr = {}

% once place text markup below dynamic
swp = \once \override TextScript.outside-staff-priority = #1

soprano = \relative c'' {
  \global
  d4.\f d8 es4 d |
  g2 f4 es |
  \dynamicUp d2\p c |
  bes bes\rest\fermata \bar "||" |
  \cadenzaOn bes4\p d \cadenzaOff \bar "|" |
  es2 bes4 c |
  d2 bes\rest\fermata \bar "||" \abr
  
  d4.->\mf c8 d4 es |
  f4.( es8 d4) c |
  bes2 r4\fermata \bar "||" bes4^\markup{\dynamic p \italic Solo }
  es2 bes4 bes |
  c4.( bes8) c4 as |
  bes2 r4^\markup\italic tutti f8 g | \abr
  
  as4. bes8 c4 d |
  es2 c |
  es4 d es f |
  g( f) es( d) |
  c2( bes4 as) |
  g2. r4 |
  \dynamicDown bes2(\f c | \abr
  
  d2) d4. d8 |
  es4( d) es( g) |
  f4.( es8 d4 c) |
  bes2 es |
  d cis |
  d( a4 bes |
  c1) |
  bes1\fermata \bar "||" \abr
  
  \dynamicUp
  \swp <bes es>2.^"<>"\mf r4 |
  \swp <d f>2.^"<>"\f r4 |
  <es g>2.\ff^> es4\p |
  es2-> c4 c |
  bes2 r4 bes8 es |
  g4( f) es2 |
  es4\>( d) c( bes) | \abr
  
  c4( bes\! as) g |
  f2 g4 bes |
  es->( d8[ c] bes4 c |
  bes4.) as8 g4 f |
  g2 r4 <bes d> |
  <d f>2 <bes d>4 r \abr
  
  r2 r4 <bes es>\f |
  <es g>2 <bes es>4 r |
  r2 r4 es |
  es2 es |
  es4( d8[ c] d2) |
  es4 r r2 |
  R1 | \abr
  
  R1 |
  R1 |
  r2 r4 bes\f |
  d4.( bes8) c4 d |
  es2 d4( c) |
  d2( c4 bes | \abr
  
  c1) |
  bes |
  bes\p |
  bes-> |
  bes2(\pp c |
  bes1) |
  as\fermata |
  r4^\markup{\dynamic pp \italic Solo }
  R1 \abr
  
  R1 |
  R1 |
  R1 |
  r4^\markup\italic tutti g g as |
  bes2( as4) g |
  c4. bes8 c4 d? | \abr
  
  es4(\> d c bes)\! |
  c4.(-> bes8 c4) as |
  bes2 r |
  R1 |
  R1 |
  r4 bes4 d2( | \abr
  
  es4 bes) bes as |
  g?2( as) |
  g f |
  g( bes) |
  as4.(\pp g8 as4) f |
  es2 es4 es |
  es1\fermata
  %soprano
}

alto = \relative c' {
  \global
  f4. f8 es4 as |
  g( a) bes c |
  bes2 a |
  bes2 s \bar "||"
  \cadenzaOn bes4 as \cadenzaOff \bar "|"
  g2 g4 ges |
  f2 s \bar "||"
  
  bes4. a8 bes4 c |
  d4.( c8 bes4) a |
  bes2 r4 \bar "||" g4 |
  g2 g4 g |
  as4.( g8) as4 f |
  g2 r4 d8 es | \abr
  
  f4. g8 as4 bes |
  g2 a |
  g4 as bes c |
  bes2 bes |
  as( g4 f) |
  es2. r4 |
  f2( a \abr
  
  bes2) bes4. bes8 |
  bes2 bes4.( c8) |
  d4.( c8 bes4 a) |
  bes2 es,4( g) |
  bes2 bes |
  bes( c4 bes |
  a1) |
  f1 \bar "||" \abr
  
  g2. r4 |
  bes2. r4 |
  bes2. g4 |
  as2 as4 as |
  g2 r |
  r r4 g8 bes |
  c4( bes) as( g) | \abr
  
  as4( g f) es |
  d2 es4 as |
  g( bes8[ as] g4 as |
  g4.) f8 d4 d |
  es2 r4\mf <bes f'>4 |
  q2 q4 r4 | \abr
  
  r2 r4 <es g> |
  <es bes'>2 <es g>4 r |
  r2 r4 bes' |
  c2 c |
  bes2.( as4) |
  g <es g>\p q <f as> |
  <g bes>4.( <f as>8 <es g>4) <d as'> | \abr
  
  <es g>2. << { \voiceFour es4 | es2 } \new Voice { \voiceTwo as8[( bes]) |
              c4( bes) } >> <es, as>4 <es g> |
  q2 <d f>4 f |
  f2 es4 \breathe as4 |
  g2 bes4( c) |
  r4 f, a bes | \abr
  
  g2( a) |
  f1 |
  f |
  g |
  g2( as |
  g1) |
  es |
  c4 |
  es2( des4) c | \abr
  
  f2 r4 f |
  as4. as8 g4 f |
  es2 r |
  r4 es es f |
  g2( f4) es |
  as4. g8 as4 f | \abr
  
  g4( bes as g) |
  as4.( g8 as4) f |
  g2 r |
  r4 d( es f) |
  ges2 ges4 ges |
  f2 bes4( as) | \abr
  
  ges2 f4 f |
  es1 |
  es2. d4 |
  es2.( g4) |
  as4( es2) c4 |
  bes2 \breathe c4 c |
  bes1
  %alt
}

tenor = \relative c' {
  \global
  bes4. bes8 bes4 bes |
  es2 d4 g |
  f2 f4( es) |
  d2 r \bar "||"
  \cadenzaOn d4 f \cadenzaOff \bar "|"
  es2 es4 es |
  d2 r \bar "||"
  
  f4. f8 f4 f |
  f4.( g8 f4) es |
  d2 r4 \bar "||" es4 |
  es2 es4 es |
  es2 es4 es |
  es2 r | \abr
  
  r2 r4 bes8 bes |
  bes4 c8[( d]) es4 f |
  g f es es |
  es( d) g( f) |
  es( d8[ c] d2) |
  es2. r4 |
  d4( f2 es4 | \abr
  
  d4. es8) f4 f |
  g( f) es( d8[ c]) |
  bes4.( c8 d4 es) |
  d2 r4 bes8[( c]) |
  d2 e |
  f( es?4 d |
  es1) |
  d | \bar "||" \abr
  
  <bes es>2. r4 |
  <d f>2. r4 |
  <es g>2. es4 |
  c4.( d8) es4 f |
  g2 r |
  r4 f8 g as4 g |
  es2 es | \abr
  
  es2. es4 |
  d2 r |
  r r4 es8 es8 |
  es4( g,8) as bes4 bes |
  bes2. r4 |
  r2 r4 <bes d>4 \abr
  
  <d f>2 <bes d>4 r |
  r2 r4 <bes es> |
  <es g>2 <bes es>4 g' |
  as2 g4( f) |
  g2( f) |
  es4 r r2 |
  r1 | \abr
  
  r1 |
  r1 |
  r2 r4 d |
  f4.( d8) es4 f |
  g2 f4( es) |
  r4 bes c d | \abr
  
  es1 |
  d |
  d |
  es |
  es2.( d4 |
  des2 es4 des) |
  c1 |
  as4 |
  c2 bes4 as | \abr
  
  des2 r4 des |
  f4. f8 es4 des |
  c2 r |
  R1 |
  R1 |
  r2 r4 bes | \abr
  
  bes4 g as bes8[( es]) |
  es2 es4 es |
  es2 r |
  r4 bes( c d) |
  es2 es4 es |
  d2 r4 f | \abr
  
  es2 d4 d |
  es( des c2) |
  bes4( g as) bes |
  bes4.( c8 des2) |
  c4.( bes8 c4) as |
  g2 as4 as |
  g1
  %tenor
}

bass = \relative c' {
  \global
  bes4. as8 g4 f |
  es( c) d es |
  f2 <f f,> |
  bes,2 r |
  \cadenzaOn bes4 bes \cadenzaOff \bar "|"
  bes2 bes4 bes |
  bes2 r \bar "||" \abr
  
  bes'4. f8 d4 c |
  bes( es f) <f f,> |
  bes,2 r4 \bar "||" r4 |
  R1*2 |
  r4\p bes'4( g) f8[( es]) |
  
  bes4 bes bes bes |
  es2 es |
  es4 f g as |
  bes2 bes, |
  bes1 |
  es2. r4 |
  bes4( d f2 | \abr
  
  bes2) bes4 bes, |
  es4( f) g4( f8[ es]) |
  f1 |
  bes4( as) g( es) |
  f2 ges |
  f1(~ |
  \arpeggioBracket <f f,>\arpeggio) |
  bes,1 \fermata \bar "||" \abr
  
  es2. r4 |
  bes'2. r4 |
  es,2. es4 |
  es2 es4 es |
  es es( g) bes |
  es( d) c( bes) |
  as2 as | \abr
  
  as2. a4 |
  bes4( as?) g f |
  es2. <as, as'>4 |
  <bes bes'>4. bes8 bes4 bes |
  es2. r4 |
  r2 r4\mf <bes f'>4 | \abr
  
  q2 q4 r |
  r2 r4\f <es g> |
  <es bes'>2 <es g>4 es |
  as2 as |
  bes( bes,) |
  es4 r r2 |
  r4\p es4 es f | \abr
  
  g4. f8 es4 f8[( g]) |
  as4.( g8) f4 es |
  bes'2 bes,4 bes |
  bes'4( as) g f |
  es( c) d( es) |
  f1~ | \abr
  
  f | 
  bes, | \bar "||"
  bes |
  es | \bar "||"
  es~ |
  es |
  <as, as'>\arpeggio | \bar "||"
  \cadenzaOn r4 \bar "|" \cadenzaOff
  r as as'4. ges8 | \abr
  
  f4 as, des2~ |
  des4 des des8[( es]) f[( g]) |
  as4( as, c) \breathe des^\markup\italic tutti |
  <es es,>1\arpeggio |
  q |
  q2 q2 | \abr
  
  q1 |
  R1 |
  r4\p es,( g as ) |
  bes1~( |
  bes4 ces) bes a |
  bes2 bes | \abr
  
  bes2 bes4 bes |
  es2.( as,4) |
  bes2 bes |
  es1 |
  <es es,>2 q |
  q \breathe q4 q4 |
  q1\arpeggio\fermata \bar "|."
}

verse = \lyricmode {
  \repeat unfold 67 \skip 1
  и -- сполнь не -- бо
  \repeat unfold 29 \skip 1
  в_вы -- шних
    \repeat unfold 17 \skip 1
    и мо -- ли -- мти -- ся,
}



versealto = \lyricmode {
  Ми -- лость ми -- ра, же -- ртву хва -- ле -- ни -- я. И со ду -- хом тво -- им.
  И -- ма -- мы ко Го -- спо -- ду. До -- сто -- йно и пра -- ве -- дно есть
  по -- кла -- ня -- ти -- ся От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху,
  Тро -- йце е -- ди -- но -- су -- щней и не -- ра -- зде -- льней.
  Свят, Свят, Свят, Го -- сподь Са -- ва -- оф и -- сполнь не -- бо
  и __ зе -- мля сла -- вы, сла -- вы Тво -- е -- я:
  О -- сан -- на, о -- сан -- на, о -- сан -- на в_вы -- шних, 
  бла -- го -- сло -- вен __ гря -- дый во и -- мя Го -- спо -- дне:
  о -- сан -- на, о -- сан -- на, о -- сан -- на в_вы -- шних. А -- минь. А -- минь
  Те -- бе по -- ем, Те -- бе бла -- го -- сло -- вим, 
  Те -- бе по -- ем, Те -- бе бла -- го -- да -- рим, __
  Гос -- по -- ди, и __ мо -- ли -- мти -- ся, 
  и __ мо -- ли -- мти -- ся, __ Бо -- же наш, __ Бо -- же наш, Бо -- же наш.
}

versetenor = \lyricmode {
  \repeat unfold 31 \skip 1
  по -- кла -- ня -- ти -- ся  и
  \repeat unfold 28 \skip 1
  и -- сполнь не -- бо,
  \repeat unfold 5 \skip 1
   сла -- вы, сла -- вы
  \repeat unfold 40 \skip 1
  Те -- бе бла -- го -- да -- рим, Го -- спо -- ди

}

versebass = \lyricmode {
  \repeat unfold 23 \skip 1
  по -- кла -- ня -- ти -- ся О -- тцу и
  \repeat unfold 28 \skip 1
  и -- сполнь не -- бо, не -- бо,
  и зе -- мля сла -- вы, сла -- вы, сла -- вы Тво -- е -- я:
  О -- сан -- на, о -- сан -- на, 
  \repeat unfold 5 \skip 1
  бла -- го -- сло -- вен гря -- дый во и -- мя Го -- спо -- дне:
  о -- сан -- на, о сан -- на в_вы -- шних.
  \repeat unfold 4 \skip 1
  Те -- бе по -- ем, Те -- бе бла -- го -- сло -- вим, __
  Те -- бе бла -- го -- да -- рим,
  и __ мо -- ли -- мти -- ся, 
}

\score {
  \new ChoirStaff <<
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "С" "А" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      alignAboveContext = "sa"
    } \lyricsto "soprano" \verse
    \new Lyrics \lyricsto "alto" \versealto
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Т" "Б" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      alignAboveContext = "tb"
    } \lyricsto "tenor" \versetenor
    \new Lyrics \lyricsto "bass" \versebass

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
