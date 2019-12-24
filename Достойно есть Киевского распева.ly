\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Достойно есть"
  subtitle = "киевского распева"
  composer = "переложение М. Балакирева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
bbr = { \bar "" \break }
abr= {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key g \major
  \time 4/4
  
}

sopvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.x-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Умеренно"
  \partial 4 fis\p |
  g( b a) g |
  fis fis g a |
  b( d c) b |
  a a a2 | \abr
  
  a4 a b a |
  g( b a) g |
  fis fis b b |
  b2. b4 |
  b r r2 |
  b4\< b a b | \abr
  
  c( d8[ e]\! d4) c |
  b b b-> a\> |
  g2 fis |
  g2.\p fis4 |
  fis fis a2 |
  a4 a b( a | \abr
  
  g b) a( g) |
  fis2 b |
  b b4 b |
  b r r2 |
  b4\< b a b |
  c( d8[ e]) d4\! c | \abr
  
  b2(\> a4 g)\! |
  fis2 fis |
  g4( b a) g |
  fis r4 r2 |
  b4\< b a b |
  c( d8[ e] d4)\! c |
  << {s2\> s\! } b1 >> | \abr
  
  b2-> b4\p a |
  g( fis) g( a) |
  b2\< b4 b |
  a2\> a4\p b8[( a]) |
  g4( b a g |
  fis1~ |
  fis2\< a) |
  << {s2\> s\! } g1\fermata >> \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 dis4 |
  e( g fis) e |
  dis dis e fis |
  g( b a) g |
  fis fis fis2 |
  
  fis4 fis g fis |
  e( g fis) e |
  dis dis e fis |
  e( g fis) e |
  dis r r2 |
  g4 g fis g |
  
  a( b8[ c] b4) a |
  g g g fis |
  e2 dis |
  e2. e4 |
  dis dis fis2 |
  fis4 fis g( fis |
  
  e g) fis( e) |
  dis2 dis4( e8[ fis]) |
  e4( g) fis e |
  dis r r2 |
  g4 g fis g |
  a( b8[ c]) b4 a |
  
  g2( fis4 e) |
  dis2 dis |
  e4( g fis) e |
  dis r r2 |
  g4 g fis g |
  a( b8[ c] b4) a |
  g1 |
  
  g2 g4 fis |
  e( dis) e( fis) |
  g2 g4 g |
  fis2 fis4 fis |
  e( g fis e~ |
  e1 |
  dis) |
  e1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 b4 |
  b2. b4 |
  b b b d |
  d2. d4 |
  d a8[( b]) c2 |
  
  c4 d8[( c]) b4 b |
  b2( c4) cis |
  fis, fis g a |
  g( b a) g |
  fis r r2 |
  d'4 d d d |
  
  d2. d4 |
  d d d-> d8[( c]) |
  b2 b |
  b( c4 ) cis |
  b4 b b2 |
  b4 b b2~ |
  
  b c4( cis) |
  fis,2 fis4( g8[ a]) |
  g4( b) a g |
  fis r r2 |
  d'4 d d d |
  d2 d4 d |
  
  { \voiceThree d2( c4 cis) } | \voiceOne
  fis,2 b |
  b2. b4 |
  b r r2 |
  d4 d d d |
  d2. d4 |
  d1 |
  
  d2 d4 d |
  b2 b4( c) |
  b( cis) d e |
  a,4. ( b8) c4 b |
  b2( c4 cis |
  fis,2 b2~ |
  b1) |
  b
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  \partial 4 b4\p |
  e2( dis4) e |
  b b e d |
  g2( fis4) g |
  d d d2 |
  
  d4 d d dis |
  e2( a,4) ais |
  b b b b |
  e2( dis4) e |
  b( c b a) |
  g\< <g g'> <c c'> <b b'> |
  
  <a a'>8[( <g g'>] <fis fis'>2)\! <e e'>8[( <fis fis'>]) |
  <g g'>4 q q-> <d d'>\> |
  <e e'>2 <b b'> |
  <e e'>\p( <a a,>4 ) <ais ais,> |
  <b b,> b b4.( cis8) |
  dis4 dis cis( dis |
  
  e2) a,4( ais) |
  b2 b |
  e dis4 e |
  b( c b a) |
  g\< <g g'> <c c'> <b b'> |
  <a a'>8[( <g g'>]) << {s4 s\! } <fis fis'>2 >>  <e e'>8[( <fis fis'>]) |
  
  << { g'4( g,) a ais } \\ { g2\>( a4 ais)\! } >> |
  b2 b |
  e( dis4) e |
  b( c b a) |
  g\< <g g'> <c c'> <b b'> |
  <a a'>8[( <g g'>] <fis fis'>2)\! <e e'>8[( <fis fis'>]) |
  << {s2\> s\! } <g g'>1 >> |
  
  g'2-> g4\p d |
  e( b) e( d) |
  g,(\< a) b cis |
  d2\> d4\p dis |
  
  << {\voiceFour s1 | b1~ | b2\< fis'\! } \new Voice { \voiceTwo e2( a,4 ais | b1~ | b) } >>
  << {s2\> s\! } <e, e'>1\fermata >>
}

lyricscore = \lyricmode {
  До -- сто -- йно есть я -- ко во -- и -- сти -- ну, бла -- жи --
  ти Тя, Бо -- го -- ро -- ди -- цу, при -- сно бла -- же -- нну -- ю, и пре -- не -- по --
  ро -- чну -- ю, и ма -- терь Бо -- га на -- ше -- го, че -- стне -- йшу -- ю хе --
  ру -- вим, и сла -- вне -- йшу -- ю без сра -- вне -- ни -- я се -- ра --
  фим, без и -- стле -- ни -- я Бо -- га Сло -- ва Ро -- ждшу -- ю,
  су -- щу -- ю Бо -- го -- ро -- ди -- цу, Тя ве -- ли -- ча -- ем.
}

lyricsbas = \lyricmode {
 \repeat unfold 57 \skip 1
 се -- ра_-
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
      
      \new Lyrics \lyricsto "bass" { \lyricsbas }
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
