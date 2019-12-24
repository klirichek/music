\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 19)

abr = { \break }
abr = {}
fbr = {\bar "" \break}

pbr = { \break }
%pbr= {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

global = {
  \time 2/2
  \autoBeamOff
  \key e \minor
        \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \arpeggioBracket
  \accidentalStyle neo-modern-voice-cautionary
  \set Score.markFormatter = #format-mark-box-numbers
}

sopvoice = \relative c'' {
  \global
  \dynamicDown 
  g2\p fis |
  g a |
  << b1 { s16\< s s4 s16 s\! s\> s s4 s16 s\! } >> |
  d2 c4( b) |
  a2 g4( a) | \abr
  
  b( a b c) |
  d2 d |
  d4( e d c) |
  b2 a |
  b1 \breathe | \abr
  
  b2\p a |
  a4( g) fis( g) |
  fis1 |
  g2 a |
  b4( c b a) | \abr
  
  g2 fis |
  e1\breathe |
  g4.(\< fis8 g4 a |
  b2)\> b\! |
  r c4 b | \abr
  
  a2. a4 |
  b4. a8 b4 c |
  d2 dis4 dis |
  e2. c4 |
  b( a g) fis | \abr
  
  g( b a) g |
  fis2\> fis4 fis |
  fis2.( g4) |
  a( g) fis( g)\! |
  fis1 | \abr
  
  g4 fis g a |
  b2. g4 |
  a g fis g |
  fis1~ |
  fis2 fis4 e | \abr
  
  fis g a b |
  c2.-> c4\f |
  b( a) g( fis) |
  g( a) b e |
  d( c b a) | \abr
  
  g2 fis |
  e2. r4 |
  r2 fis\pp |
  << g1-> {s8 s s s\> s s s s\!} >> \breathe |
  r2\< g4 g\> |
  << a1 {s2. s4\!} >> \abr
  
  r2 a2\mp |
  a4. g8 g2 |
  r2 g4\p g |
  a2-> a |
  r2 a4\mf a |
  b2 b | \abr
  
  r2 b4\mf b8 b\> |
  d4.\! d8 d2 |
  r2 c4 c\> |
  c4. b8\! b2 |
  r2 d4\f dis8 dis\> | \abr
  
  e1\! |
  r2 e4 d8 d\< |
  << c1 { s4\> s s s\! } >> |
  r2 c2\p\cresc |
  b2. g4 | \abr
  
  a2.( b4) |
  g\f( a) b b |
  e d c c8 c |
  d2( c) |
  b2 b4\ff b | \abr
  
  e d c c8 c |
  e4( d c2) |
  b2 c4 c |
  b( a g fis) |
  g2 fis | \abr
  
  e1 |
  g4\pp g g g |
  a2 a4\> a |
  g2 g |
  a g4 a\< |
  << gis1 {s4 s\> s s} >>
  gis1\ppp\fermata
  \bar "|."
}

altvoice = \relative c' {
  \global
  e2 dis |
  e fis |
  g1 |
  b2 a4( g) |
  fis2 g4( fis) |
  
  g( fis g a) |
  b2 b |
  b4( c b a) |
  g2 fis |
  g1 |
  
  g2 fis |
  fis4( e) dis( e) |
  dis1 |
  e2 fis |
  g4( a g fis) 
  
  e2 dis |
  e1 |
  e4.( dis8 e4 fis |
  g2) g |
  r a4 g |
  
  fis2. fis4 |
  g4. fis8 g4 a |
  b2 a4 a |
  g2. a4 |
  g( fis e) dis |
  
  e( g fis) e |
  dis2 dis4 dis |
  dis2.( e4) |
  fis( e) dis( e) |
  dis1 |
  
  e4 dis e fis |
  g2. e4 |
  fis e dis e |
  dis1~ |
  dis2 dis4 cis |
  
  dis e fis g |
  a2. a4 |
  g( fis) e2 |
  e4( fis) g g |
  a2( g4 fis) |
  
  e2 dis |
  e2. r4 |
  r2 dis |
  e1 |
  r2 e4 e |
  fis1 |
  
  r2 fis |
  fis4. e8 e2 |
  r2 e4 e |
  fis2 fis |
  r fis4 fis |
  g2 g |
  
  r2 g4 g8 g |
  a4. a8 a2 |
  r2 a4 a |
  a4. g8 g2 |
  r2 b4 a8 a |
  
  g1 |
  r2 g4 gis8 gis |
  a1 |
  r2 a |
  g2. e4 |
  
  fis1 |
  e4( fis) g gis |
  a gis a a8 a |
  b2( a) |
  gis gis4 gis |
  
  a gis a a8 a |
  b2( a) |
  gis a4 fis |
  g?( fis e2) |
  e2 dis |
  
  e1 |
  e4 e e e |
  e2 e4 e |
  e2 e |
  fis e4 dis |
  e1 |
  e
   
}

tenorvoice = \relative c' {
  \global 
  b2 b |
  b d |
  d1 |
  d2 d |
  d d |
  
  d1 |
  d2 d |
  d4( c d e) |
  d2 d |
  d1 | \breathe
  
  d2 c |
  b b |
  b1 |
  b2 b |
  b4( a b c) |
  
  b2 b4( a) |
  g1 |
  b2.( d4~ |
  d2 ) d |
  r2 d4 d |
  
  d2. d4 |
  d4. d8 d4 c |
  b2 b4 b |
  b2( e4) e |
  e( dis e) b |
  
  b2. b4 |
  b2 b4 b |
  b1 |
  b2 b |
  b1 |
  
  b4 b b b |
  b2. b4 |
  b b b b |
  b1~ |
  b2 b4 b 
  
  b b a g |
  fis2. fis4 |
  g( a) b( c) |
  b2 b4 b |
  a2( b4 c) |
  
  b2 b4( a) |
  g2. r4 |
  r2 b |
  b1 |
  r2 b4 b |
  b1 |
  r2 b |
  b4. b8 b2 |
  r b4 b |
  d2 d |
  r d4 d |
  d2 d |
  
  r d4 d8 d |
  d4. d8 d2 |
  r2 d4 d |
  d4. d8 d2 |
  r2 b4 b8 b |
  
  b1 |
  r2 b4 b8 e |
  e1 |
  r2 e |
  e2. e4 |
  
  dis1 |
  e2 e4 e |
  e e e e8 e |
  e1 |
  e2 e4 e |
  
  e4 e e e8 e |
  e1 |
  e2 e4 e |
  e( dis e c) |
  b2 b4( a) |
  
  g1 |
  b4 b b b |
  c2 c4 c |
  b2 b |
  b b4 b |
  b1 
  b

}

bassvoice = \relative c {
  \global 
  e2\p b' |
  e, d |
  << g1 { s16\< s s4 s16 s\! s\> s s4 s16 s\! } >> |
  g2 a4( b) |
  c2 b4( a) |
  
  g( d' b a) |
  g2 g |
  g2.( c4) |
  d2 d, |
  g1 |
  
  g2\p a2 |
  b b |
  b1 |
  e,2 e |
  e2.( a4) 
  
  b2 b, |
  e1 \breathe |
  e2.( d4 |
  g2) g |
  r fis4 g |
  
  d( a' fis) d |
  g4. d'8 b4 a |
  g2 fis4 fis |
  e2. a4 |
  b2. b4
  
  e,2( dis4) e |
  b'2\> b4 b |
  b1 |
  <b b,>2 q\! |
  q1 
  
  e,4 e e e |
  e2. e4 |
  b b b b |
  \arpeggioParenthesis <b b'>1~\arpeggio\< |
  q2 b'4\! b
  
  a4 g fis e |
  dis2. dis4\f |
  e( fis) g( a) |
  g( fis) e e |
  fis2( g4 a) |
  
  b2 b, |
  e2. r4 |
  r2 b'\pp |
  e,1-> \breathe |
  r2 e4 e |
  dis1 |
  
  r2 dis\mp |
  e4. e8 e2 |
  r2 e4 e |
  d2 d |
  r d4 d |
  g2 g |
  
  r2 g4\mf g8 g |
  fis4. fis8 fis2 |
  r fis4 fis |
  g4. g8 g2 |
  r2 g4\f fis8 fis |
  
  e1 |
  r2 e4 e8 e |
  a1 |
  r2 a\p |
  b2. b4 |
  
  b1 |
  e2\f e4 d |
  c b a a8 a |
  gis2( a) |
  e e'4\ff d |
  
  c b a a8 a |
  gis2( a) |
  e a4 a |
  b2( e,4 a) |
  b2 b, |
  
  e1 |
  e4\pp e e e |
  a2 a4 a |
  e2\> e |
  dis e4 fis |
  e1 |
  e\ppp \fermata
  
  
 
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
  \override Lyrics.LyricText #'font-series = #'bold
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
  \revert Lyrics.LyricText #'font-series
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  Кто ны ра -- злу -- чит,
  кто ны ра -- злу -- чит __ от лю -- бве __ Бо -- жи -- я?
  
  Кто ны ра -- злу -- чит от лю -- бве __
  Бо -- жи -- я?
  Скорбь __ ли,
  те -- сно -- та, го -- не -- ни е и глад,
  на -- го -- та, бе -- да __ и 
  меч __ ли, я -- ко -- же есть __ пи -- са -- но?
  
  Скорбь ли, те -- сно -- та, го -- не -- ни -- е и глад, __ на -- го -- та,
  бе -- да и меч не ра -- злу -- чит __ от -- лю -- бве __
  Бо -- жи -- я:
  ни смерть, ни жи -- вот, ни А -- нге -- ли, ни На -- ча -- ла, ни  же си -- лы
  ни на -- сто -- я -- ща -- я, ни гря -- ду -- ща -- я,
  ни вы -- со -- та, ни глу -- би -- на, ни и -- на тварь 
  ка -- я во -- змо -- жет нас ра -- злу -- чи -- ти, не во -- змо -- жет нас
  ра -- злу -- чи -- ти от лю -- бве __ Бо -- жи -- я,
  я -- же о Хри -- сте И -- и -- су -- се Го -- спо -- де на -- шем.
}



\bookpart {
  \header {
    title = "Кто ны разлучит…"
    %subtitle = "________... напева"
    composer = "прот. Соломин"
    %composer = "муз. Шишкин"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
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
    %ragged-last = ##t
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
  >>
  \layout {
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=90
  }
}
}

