\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
abr = {}

global = {
  \key es \major
  \time 4/4
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \tempo "Moderato" 4=84
  \dynamicUp
  r2 r4 r8 g\p^\markup\italic "dim." |
  g4. g8 bes8. f16 g8 as | \abr
  g4~ g8 r r bes c d |
  es4. d8 c4. bes8 |
  bes4 as8 r r4 r8 c | \abr
  
  f4. es8 es8. d16 d8. c16 |
  c4~ c8 r r as g f |
  c'4. bes8 bes4. c8 | \abr
  as4~ as8 r r g d es |
  c'4 bes as4. f8 | \abr
  
  d4 es8 r r2 |
  r8 \tempo "Poco più mosso" g^\markup{\dynamic f \italic espressivo} g g as g f c' | \abr
  b4~ b8 r r g g g |
  as g f d' c4 b8 r |
  r bes! des c bes4 as | \abr
  
  g4. as8 f4~ f8 r |
  r g as g fis es' b c |
  d4 g,8 r r4 r8 g^\markup{\dynamic p \italic dolce} | \abr
  \tempo "Tempo 1" g4. g8 bes8. f16 g8 as |
  g4~ g8 r r bes c d | \abr
  
  es4. d8 c4. bes8 |
  bes4 as8 r r as g f | \abr
  c'4. bes8 bes4. c8 |
  as4~ as8 r r g d es | \abr
  
  \tempo "poco rit." c'4 bes as4. f8 |
  \tempo "a tempo" d2 es8 r r4 | \abr
  fis4\( g as4. \tempo "poco rit." <as bes>8 |
  <as bes>2( <g bes>4)\) r4 \bar "|."
}

altvoice = \relative c'' {
  \global
  R1 |
  g2\p d |
  es4 bes bes <es g> |
  q4. q8 g4. g8 |
  g4 f as2 |
  
  <f c'>4. q8 g8. g16 g8. g16 |
  g4 g f f |
  f4. f8 es4. es8 | \abr
  es4 es es( d8) es |
  fis4 g es4. d8 | \abr
  
  bes4 bes8 r r2 |
  r8 d d d f g f es | \abr
  d4~ d8 r r d d d |
  f g f as f4 g8 g |
  g4 g g f | \abr
  
  des4. des8 c f c d |
  d4 d es fis? |
  g d8 r r2 | \abr
  es2\p d4 d |
  es bes bes <es g> | \abr
  
  q4. q8 g4. g8 |
  g4 f f g8[( f]) | \abr
  f4. f8 e4. e8 |
  es4 es es d8[( es]) | \abr
  
  fis4 g es4. d8 |
  d2 es8 r r4 |
  es4\( es es4. d8 |
  d2( es4)\) r
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  R1 |
  bes2 as | \abr
  bes4 g g g |
  g4. g8 c4. c8 |
  c4 c c2 | \abr
  
  c4. c8 es8. es16 es8. es16 |
  es4 es es es |
  d4. d8 bes4. bes8 | \abr
  c4 ces bes4. c8 |
  es4 es c4. as8 | \abr
  
  g4 g8 r r2 |
  r8 b\f b b f' es d c | \abr
  b4~ b8 r r b b b |
  f' es d c d4 d8 d |
  des4 des c c | \abr
  
  bes4. bes8 as c c c |
  b4 b c es |
  d b?8 r r2 | \abr
  bes2\p as4 as |
  bes g g g | \abr
  
  g4. g8 c4. c8 |
  c4 c c c | \abr
  d4. d8 c4. c8 |
  c4 ces bes c | \abr
  es es c4. as8 |
  g2 g8 r r4 | \abr
  c4( bes c4. bes8 bes2~ bes4) r
}

bassvoice = \relative c {
  \global
  \dynamicDown
  R1 |
  es2 es | \abr
  es4 es d d |
  c4. c8 es4. es8 |
  f4 f f2 | \abr
  
  as4. as8 c8. bes16 bes8. as16 |
  as4 as as as |
  as4. as8 g4. g8 | \abr
  f4 f g4. g8 |
  a4 bes bes bes, | \abr
  
  es4 es8 r r2 |
  R1 | \abr
  r8 g\f as f g2 |
  r4 f as g8 g |
  f4( e) r8 c g' f | \abr
  
  f4 e f8 as as as |
  g4 g a a |
  b g8 r r2 | \abr
  es2 es4 es |
  es es d d | \abr
  
  c4. c8 es4. es8 |
  f4 f as as | \abr
  as4. as8 g4. g8 |
  f4 f g g | \abr
  
  a4 bes bes bes, |
  es2 es8 r r4 | \abr
  a,( bes bes2 |
  es2~ es4) r
}

texts = \lyricmode {
  Не ве -- тер, ве -- я с_вы -- со -- ты, __
  ли -- стов кос -- нул -- ся но -- чью лун -- ной,
  мо -- ей ду -- ши кос -- ну -- лась ты: __
  о -- на тре -- вож -- на, как ли -- сты, __
  о -- на, как гус -- ли мно -- го -- струн -- на! 
  Жи -- тей -- ский вихрь е -- ё тер -- зал __
  и со -- кру -- ши -- тель -- ным на -- бе -- гом,
  сви -- стя и во -- я, стру -- ны рвал, __
  и за -- но -- сил хо -- лод -- ным сне -- гом.
  Тво -- я же речь лас -- ка -- ет слух, __
  тво -- ё лег -- ко при -- кос -- но -- ве -- нье,
  как от цве -- тов ле -- тя -- щий пух, __
  как май -- ской но -- чи ду -- но -- ве -- нье.
  А…
}

 
  
texta = \lyricmode { 
  С_вы -- со -- ты,
  ли -- стов кос -- нул -- ся но -- чью лун -- ной,
  мо -- ей ду -- ши кос -- ну -- лась ты:
  о -- на тре -- вож -- на, как ли -- сты,
  о -- на, __ как гус -- ли мно -- го -- струн -- на! 
  Жи -- тей -- ский вихрь е -- ё тер -- зал __
  и со -- кру -- ши -- тель -- ным на -- бе -- гом,
  сви -- стя и во -- я, стру -- ны рвал,
  и за -- но -- сил хо -- лод -- ным сне -- гом.
  Лас -- ка -- ет слух,
  тво -- ё лег -- ко при -- кос -- но -- ве -- нье,
  от цве -- тов ле -- тя -- щий пух,
  как май -- ской __
}

textb = \lyricmode { 
  \repeat unfold 33 \skip 1
  мно -- го -- струн -- на! 
  Е -- ё тер -- зал
  на -- бе -- гом,
  сви -- стя __ и во -- я, стру -- ны рвал,
  и за -- но -- сил хо -- лод -- ным сне -- гом.
}

\bookpart {
  \header {
    title = "Не ветер, вея с высоты…"
    composer = "Н. Римский-Корсаков"
    opus = "Переложение В.Самарина"
    poet = "Слова А.Толстого"
    arranger = "Op. 43 №2 (1897)"
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

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }

  >>
  \layout { 
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=84
  }
}
}

