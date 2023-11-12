\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Слава... Единородный Сыне"
  composer = "муз. П. Чеснокова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
bbr = { \bar "" \break }
abr= {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key f \major
  \time 3/4
  
}

sopvoice = \relative c'' {
  \global
  \dynamicDown
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.x-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Скоро"
  a4\mf a8 a c c |
  f4 f e8 d |
  a2 a4 |
  d d r8 d |
  f,4 f f | \abr 
  
  bes4 bes  \bbr bes8 a |
  g4 g8 g f \breathes e8 |
  f2\p\fermata r4 \bar "||"
  r8\p a a a g\< c |
  a4\> a8\!  a8\< g c | \abr
  
  
  a4\> a\< \bbr c | 
  f2\! f8[(\> e])\! |
  d4\> r\! a8 a |
  g4. g8 a a |
  bes4. bes8 bes4 | \abr
  
  a4. a8 a4 |
  g4 g a8[( g]) |
  f4\p f \breathes d8 d |
  f4. e8 d4 |
  d8 d d d d d | \abr
  
  \time 4/4 f4. e8 d d f f |
  \time 3/4 g4 g bes\> |
  a d,\! \breathes \bbr \pageBreak a'8\p\< a\! | \abr
  
  a4 a8 a d, bes' |
  a4\> a8 a a\< \breathes a |
  d4\!-> d8 d c c |
  a4\> a\! r | \abr \bbr
  
  d2 d8 d |
  <d e>2 \breathes q4 |
  <d f>4 <d a> r8\f d |
  <d g>4 q8 q <c e> q |
  <c f>4. q8 q4~ | \abr 
  
  q r <bes d>8 q\> |
  <g c>4. c8 a a\! |
  bes4 bes8 bes bes bes |
  << {s16\< s s\> s\! } a4 >> a r8 a | \abr
  
  a2\>( g4)\! |
  f2 a4 |
  a2.~(\< |
  a2\> g4)\! |
  f2.\p\fermata \bar "||"
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f4 f8 f g g |
  f4 f f8 f |
  e2 e4 |
  d d r8 d |
  c4 c c |
  
  bes bes bes8 bes |
  bes4 e8 e c c |
  c2 r4 |
  r8 f f f g g |
  f4 f8 f g g |
  
  f4 f g |
  f2 g4 |
  f4 r f8 f |
  f4. f8 f f |
  f4. f8 e4 |
  
  e4. e8 d4 |
  d d cis |
  d d a8 c |
  bes4. bes8 a4 |
  a8 a a a d c |
  
  \time 4/4 bes4. bes8 a a a a |
  \time 3/4 d4 d d |
  d d d8 d |
  
  cis4 cis8 a bes d |
  cis4 cis8 cis a' a |
  a4 a8 a a a |
  f4 f r |
  
  bes2 bes8 bes |
  bes2 bes4 |
  a f r8 d |
  g4 g8 g g g |
  f4. f8 f4~ |
  
  f r f8 f |
  e4. g8 f f |
  f4 f8 f e e |
  f4 f r8 e |
  
  d2. |
  c4( f) e |
  d2.~ |
  d |
  c
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c4 c8 c c c |
  a4 a a8 a |
  a2 a4 |
  f f r8 f |
  f4 f f |
  
  d d d8 d |
  e4 g8 g c \breathes bes |
  a2 r4 |
  r8 c c c c c |
  c4 c8 c c c |
  
  c4 c c |
  a2 bes4 |
  a r d8 d |
  d4. d8 d d |
  d4. d8 c4 |
  
  c4. c8 bes4 |
  bes bes a |
  a a \breathes f8 f |
  d4. e8 f4 |
  f8 f f f f f |
  
  \time 4/4 d4. e8 f f d d |
  \time 3/4 d4 d g |
  a a \breathes a8 a |
  
  e4 e8 e e e |
  e4 e8 e a \breathes a |
  <a d>4 q8 q e' e |
  d4 d r |
  
  <d f>2 q8 q |
  <d e>2 \breathes q4 |
  <d f>4 <a d> r8\f d |
  d4 d8 d <c e> q |
  c4. c8 c4~
  
  c r d8 d |
  e4. e8 d d |
  d4 d8 d c c |
  c4 c r8 c |
  
  bes2. |
  a2 c4 |
  bes2.~ |
  bes |
  a2.
  
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  f4 f8 f e e |
  d4 d d8 d |
  c2 c4 |
  bes bes r8 bes |
  a4 a a |
  
  g g g8 g |
  c4 c8 bes a g |
  f2\fermata r4 |
  r8\p f' f f e e |
  f4 f8 f e e |
  
  f4 f e |
  d2 d4 |
  d r c'8 c |
  bes4. bes8 a a |
  g4. g8 g4 |
  
  f4. f8 f4 |
  e4 e e |
  d\p d d8 d |
  g,4. g8 d'4 |
  d8 d c c bes a |
  
  \time 4/4 g4. g8 d' d c c |
  \time 3/4 bes4 bes e, |
  f f f8\p f |
  
  a4 a8 a g g |
  a4 a8\> a <a a'> q\! |
  <f f'>4-> q8 q <a a'> q |
  d4 d r |
  
  bes'2 bes8 bes |
  <g bes>2 q4 |
  <d a'> <d d,> r8 <c c'> |
  <bes bes'>4 q8 q bes' bes |
  a4. a8 a4~ |
  
  a r bes8 bes |
  c4. c8 d d |
  g,4 g8 g g g |
  f4 f r8 f |
  
  f2. |
  f2 f4 |
  f2.~ |
  f |
  f2.\p\fermata
}

lyricscore = \lyricmode {
  Сла -- ва О -- тцу и Сы -- ну и Свя -- то -- му Ду -- ху, и ны -- не и
  при -- сно и во ве -- ки ве -- ков, А -- минь. Е -- ди -- но -- ро -- дный Сы -- не
  и Сло -- ве Бо -- жий Без -- сме -- ртен Сый и и -- зво -- ли -- вый спа -- се -- 
  ни -- я на -- ше -- го, на -- ше -- го ра -- ди во -- пло -- ти -- ти -- ся от Свя -- ты --
  я Бо -- го -- ро -- ди -- цы и при -- сно Де -- вы Ма -- ри -- и не -- пре --
  ло -- жно во -- че -- ло -- ве -- чи -- вы -- йся, ра -- спны -- йся же Хри -- сте Бо -- же,
  сме -- рти -- ю смерть по -- пра -- вый, Е -- дин Сый Свя -- ты -- я Тро --
  и -- цы, спро -- сла -- вля -- е -- мый От -- цу, и Свя -- то -- му Ду -- ху, спа --
  си нас, спа -- си нас.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
}
\score {
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
