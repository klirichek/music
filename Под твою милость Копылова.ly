\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 17)

\header {
  title = "Под Твою милость"
  composer = "А.Копылов"
  %opus = "№1"
  %piece = "№131"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key e \minor
  \time 4/4
  \autoBeamOff
}

abr = { \break }
abr = {}

% once place text markup below dynamic
swp = \once \override TextScript.outside-staff-priority = #1

soprano = \relative c'' {
  \global
  \tempo Медленно
  \partial 2
  \dynamicUp
  g4\p a\< |
  b2\! a\> |
  b2.\! g8\p a |
  b2\< a\> |
  b b4\! c\< | \abr
  d2\> c4\! c8\p c |
  b2 b4 b |
  b2 b4 b\< |
  e2.\! dis4 |
  e2\> e4 d?\! | \abr
  c2. c4 |
  c2-> b4 fis8\p fis |
  b2.\cresc d4 |
  d4. c8 c4 cis |
  dis2.\< dis4\! |
  e4.\> b8 b2\! | \abr
  c4\p c b a |
  b2. a4 |
  g2 fis4\p fis |
  b2.\cresc d4 |
  d4. c8 c4 e | \abr
  e4. dis8 dis4\< dis |
  e2.\! d?4 |
  d4.\> c8 c2\! |
  c4\p c a\< a |
  b2\>( a4\!) a |
  g1\p\fermata \bar "|."
  
}

alto = \relative c' {
  \global
  e4 fis |
  g2 g4( fis) |
  fis2. e8 fis |
  g2 g4( fis) |
  g2 g4 g |
  g2 a4 a8 a |
  g2 fis4 e |
  g2 fis4 r |
  r g a a |
  g2 g4 gis |
  a2. a4 |
  a2-> a4 dis,8 dis |
  e2. b'4 |
  b4. a8 a4 g |
  fis2. b4 |
  b4. e,8 e2 |
  a4 a g fis |
  fis2. fis4 |
  e2 dis4 dis |
  e2. b'4 |
  b4. a8 a4 cis |
  b4. b8 b4 b |
  b2. b4 |
  b4. a8 a2 |
  a4 a fis fis |
  fis2. fis4 e1
}

tenor = \relative c' {
  \global
  \dynamicUp
  b4\p b |
  b( e) e2 |
  dis2. b8\p b |
  b4( e) e( d) |
  d2 d4 d |
  d2 e4 e8\p e |
  e2 dis4 cis |
  e2 dis4 r |
  r e fis fis |
  e2 e4 e |
  e2. e4 |
  e2-> dis4 b8\p b |
  b2. e4 |
  e4. e8 e4 e |
  dis2. fis4 |
  e4. e8 e2 |
  e4\p e e e |
  e2( dis4) dis |
  b2 b4\p b |
  b2. f'4 |
  e4. e8 e4 g |
  fis4. fis8 fis4 fis |
  e2. e4 |
  e4. e8 e2 |
  e4\p e e e |
  e2. dis4 |
  b1\fermata\p
}

bass = \relative c {
  \global
  e4 e|
  e( d) c( c') |
  b2. e,8 e |
  e4( d) c( d) |
  g2 g4 a |
  b2 a4 a8 a |
  b2 b4 b |
  b2 b4 r |
  r2 r4 b |
  c c c b8 b |
  a2. g4 |
  fis2-> fis4 b8 a |
  g2. gis4 |
  a4. a8 a4 ais |
  b2. a4 |
  g4. g8 g2 |
  a4 a b c |
  b2. b4 |
  e,2 b'4 a |
  g2. gis4 |
  a4. a8 a4 ais |
  b4. b8 b4 a |
  g2. gis4 |
  a4. a8 a2 |
  a4 a c c |
  b2. b4 e,1
}

verse = \lyricmode {
  \repeat unfold 21 \skip 1
  мо -- ле -- ний на -- ших не 
}



versealto = \lyricmode {
  Под Тво -- ю ми -- лость, под Тво -- ю ми -- лость при -- бе -- га -- ем,
  Бо -- го -- ро -- ди -- це, Де -- во, мо -- ле -- ний 
  на -- ших не пре -- зри в_ско -- рбех,
  но от бед и -- зба -- ви нас е -- ди -- на чи -- ста -- я
  и бла -- го -- сло -- ве -- нна -- я,
  но от бед из -- ба -- ви нас, 
  и -- зба -- ви нас, е -- ди -- на чи -- ста -- я и бла -- го -- сло -- ве -- нна -- я.
}


versebass = \lyricmode {
  \repeat unfold 21 \skip 1
  мо -- ле -- ний на -- ших не 
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
    } \lyricsto "soprano" \verse
    \new Lyrics \lyricsto "alto" \versealto
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Тенор" "Бас" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "bass" \versebass

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
