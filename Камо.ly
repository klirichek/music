\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Камо пойду от Духа Твоего"
  subtitle = " "
  composer = "Вик. Калинников"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key c \minor
  \time 3/4
  \numericTimeSignature
    \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

abr = { \break }
%abr = {}

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }

sopvoice = \relative c'' {
  \global
  \oneVoice
  \tempo Moderato
  g2\mf g4 |
  bes g bes |
  c2 d8[( es]) |
  es4. d8 c d |
  \time 4/4 bes4 bes bes8[( c]) d4 |
  \abr
  
  c2 c4 bes |
  as as2-> as4
  \time 3/4 \tuplet 3/2 { d8\> g, as } g2 |
  f'4\! es d |
  \abr
  
  c4\> bes8[( c]) as4 |
  g4\! f~ \tuplet 3/2 { f8 es as} |
  g4. r |
  \abr
  
  \voiceOne bes2\p c4 d es f f2. f,2 f'4 d2. d2\< f4\! f( es) d \abr d\> bes c d2.\!
  \oneVoice R2.
  r4 bes-> f-> |
  \abr
  
  g-> es-> des->\< |
  es2.\!
  f4\> des es |
  f2.\!-\markup\italic"rit." |
  \abr
  \tempo Allegro
  g2\p g8 g |
  as2\< as4 |
  a4 a a |
  bes4 bes2 |
  a2.~\mf |
  \abr
  
  a4 a\< a |
  a2 a4 |
  b d b |
  c\f c8[( d]) es[( g]) |
  f2 es8-\markup\italic"rit." bes8 |
  \abr
  
  \time 3/2
  \tempo Andante es4. c8\> c4 c r\! g\< |
  \tempo "Primo tempo"
  \time 4/4 es'2\f es |
  d4 d d es |
  c c d es |
  f c c2 |
  \abr
  
  r4 c\< d es |
  f2 f4 f\! |
  g( f) es d8[( es]) |
  \voiceOne
  f4( es) d c\> |
  es2 es4 es |
  des1(\> |
  \abr
  
  c1) |
  c4\p( bes) as g |
  \oneVoice
  f2 e4 f |
  g( \< bes) as g |
  \abr
  f2\> e4 f\! |
  g1( |
  f2)-\markup\italic"rit." f4 d? |
  e2\p\> e4 e |
  e1\pp\fermata
  \bar "|."
}

sopvoicetwo = \relative c'' {
  \global
  \dynamicDown
  s2.*4
  s1*3  
  s2.*5 
  
  bes2 bes4 |
  bes bes bes |
  bes2( a4) |
  bes2 bes4 |
  bes2. |
  bes2 bes4 |
  bes2 bes4 |
  bes bes a |
  bes2.
  
  s2.*16
  s1.
  s1*7

  s2. r4
  r g\mf c b |
  bes?1( |
  as2 g4 f) |
  e( bes') as s
}

altvoice = \relative c'' {
  \global
  g2\mf g4 |
  g2.~ |
  g4 g bes |
  as2 as4 |
  g g g g8 g |
  g2 g4 g |
  g g2-> f4 |
  \tuplet 3/2 {d8\> d f } d2 |
  as'4\> as as |
  as g f |
  es\! d( c |
  \tuplet 3/2 { b8) b c } b4. r8 |
  
  <es g>2\p q4 |
  <d f> q q |
  << es2. \\ { c2( es4) } >> |
  d2 f4 |
  g2. |
  g2 g4 |
  g2 f4 |
  g g f |
  f bes-> f-> |
  ges-> es-> des-> |
  c2-> des4 |
  es( bes des) |
  des2 c4 |
  des4 as bes |
  des2.
  
  d2\p d8 d |
  es2 es4 |
  e e e |
  d d2 |
  cis2\mf cis8 cis |
  d2 d4 |
  d d d |
  d d g |
  g2 <g c>8\f q |
  <f c'>2 c'8 c |
  c4. as8 as4 as r g |
  g2\f g4 g |
  g g g g |
  g g bes bes |
  a <a f>4 q2 |
  
  R1 |
  r4 f bes as |
  g2 g4 g |
  f( g) as as |
  g2 g4 r |
  r e as g |
  
  g( f) e d |
  c1 |
  des |
  c |
  des |
  c |
  des2 c |
  c c4 c |
  c1\fermata


}


tenorvoice = \relative c' {
  \global
  es2\mf es4 |
  d d d |
  c2 bes4 |
  c4. d8 es d |
  d4 d d bes |
  c2 c4 c |
  c c2-> c4 |
  \tuplet 3/2 { b8-> b c } b2 |
  b4\> c d |
  es d c |
  bes\! as2( |
  \tuplet 3/2 {g8) g <as f> } g4. r8 
}

tenorvoiceii = \relative c' {
  \global
  es2\mf es4 |
  d d d |
  c2 bes4 |
  c4. d8 es d |
  d4 d d bes |
  c2 c4 c |
  c c2-> c4 |
  \tuplet 3/2 { b8-> b c } b2 |
  b4\> c d |
  es d c |
  bes\! as2( |
  \tuplet 3/2 {g8) g\> <as f> } g4. r8\!
}


bassvoice = \relative c' {
  \global
  c2\mf c4 |
  bes bes bes |
  as2 g4 |
  f4. f8 es f |
  g4 g f f |
  es2 es4 es |
  es d2-> d4 |
  \tuplet 3/2 { g8\> g d } g2( |
  g,2.)\! |
  g |
  g~ |
  g4 g~ \tuplet 3/2 { g8 g f } |
  es2 r4 |
  R2.*8
  r4 bes''4-> f-> |
  ges-> es-> des-> |
  c2->( bes4) |
  as2 as4 |
  des des des |
  des2( c4) |
  
  b2\p b8 b |
  c2 c4 |
  cis cis cis |
  d d2 |
  e\mf e8 e |
  f2 f4 |
  fis fis fis |
  g g g8\f g |
  c2 bes8 bes |
  as2 g8-\markup\italic"rit." g |
  fis4. fis8 fis4 fis r g |
  c2\f c |
  bes4 bes bes c |
  as as g g |
  f f f2 |
  
  R1*2 |
  r4 g\< c bes\! |
  as( g) f\> f |
  c1 |
  c\! |
  c |
  c |
  c |
  c |
  c |
  c4(\< bes) as g |
  bes2\!-\markup\italic"rit." as4 f |
  <c g' c>2\p\> |
  q4 q |
  q1\pp\fermata
  
 
}

lyricsi = \lyricmode {
  Ка -- мо, као -- мо по -- йду от Ду -- ха Тво -- е -- го и от ли -- ца Тво -- е -- го ка -- мо, ка -- мо бе -- жу
  и от ли -- ца Тво -- е -- го ка -- мо бе -- жу.
  А -- ще взы -- ду на не -- бо, на не -- бо, Ты та -- мо та -- мо е -- си
  а -- ще сни -- ду во ад та -- мо е -- си,
  а -- ще во -- зьму кри -- ле мо -- и ра -- но, а -- ще во -- зьму кри -- ле мо -- и ра -- но все -- лю -- ся в_по -- сле -- дних мо -- ря,
  и та -- мо, та -- мо бо ру -- ка Тво -- я на -- ста -- вит мя
  и у -- де -- ржит, у -- де -- ржит мя де -- сни -- ца, и у -- де -- ржит мя,
  и у -- де -- ржит, у -- де -- ржит мя де -- сни -- ца, де -- сни -- ца, де -- сни -- ца Тво -- я.
}

lyricsii = \lyricmode {

}

lyricscorethree = \lyricmode {
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
  
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \sopvoice }
        \new Voice  = "sopranoii" { \voiceTwo \sopvoicetwo }
      >>
      
      \new Lyrics \lyricsto "soprano" { \lyricsi }
      \new Lyrics \lyricsto "soprano" { \lyricsii }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "altoii" { \voiceTwo \altvoice }
      >> 
      
      
      %\new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      %\new Lyrics \lyricsto "soprano" { \lyricscorethree }
  
      \new Staff = "downstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
        \new Voice = "tenor" { \tenorvoiceii }
      >>
      
     \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
    >>
        % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
}
}

