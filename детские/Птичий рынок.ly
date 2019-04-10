\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18.5)

\header {
  title = "Птичий рынок"
  %composer = "С. Монюшко (1819-1872)"
  %arranger = "arranger"
  %poet = "Слова И. Захаревича"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 2/4
  \numericTimeSignature
}

abr = { \break }
abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Умеренно. Бодро"
  R2*2 |
  d8\f b' d8. b16 |
  d,8 b' d8. b16 | \abr
  
  d,8 fis d'8. c16 |
  bes8 d d,4 |
  d8 b' d8. b16 |
  d,8 b' d8. b16 |
  e4 b | \abr
  g8^"замедляя" g g a |
  b2 |
  \tempo "Медленнее"
  r4 gis8^"плавно" gis |
  \tuplet 3/2 4 { b4 gis8 b4 gis8 |
                  cis4 gis8 r gis gis | \abr
                  
                  b4 gis8 b4 gis8 } |
  cis4 \tuplet 3/2 4 { r8 a b | cis4 a8 cis4 a8 | \abr
                       
  es'4 bes8 } r4 |
  \tempo "Подвижно" d4 b |
  g8 g g e |
  es4 r |
  R2 | \abr
  
  d8\f b' d8. b16 |
  d,8 b' d8. b16 |
  d,8 fis d'8. c16 |
  bes8 d d,4 |
  d8 b' d8. b16 | \abr
  
  d,8 b' d8. b16 |
  d4 b |
  g8 g g a^"замедляя" |
  bes4 r | R2 | \abr
  
  \tempo "Не спеша" bes8\mf bes bes g |
  ges ges ges bes, |
  bes' bes bes g |
  ges ges ges4 |
  as8 as as fes | \abr
  
  bes bes bes f |
  b b b gis |
  cis cis cis gis |
  R2*2 |
  r4 d'8\f b | \abr
  
  g g g e |
  es4 r |
  R2 |
  \tempo "Немного медленнее. Tempo I"
  d8\mf b' d8. b16 |
  d,8 b' d8. b16 | \abr
  
  d,8 fis d'8. c16 |
  bes8 d d,4 |
  d8 b' d8. b16 |
  d,8 b' d8. b16 |
  e4 b | \abr
  
  g8 g g^"замедляя" a |
  bes2~ |
  bes8 r r4 |
  \tempo "Быстро" R2*3 | \abr 
  
  R2 |
  c4\mp g |
  bes8 bes a g |
  c4 g |
  R2 |
  c4 g | \abr
  
  bes g |
  e8 g c,4 |
  R2 |
  f8 f c c |
  f f g g |
  as as es es | \abr
  
  as as bes bes |
  b b fis fis |
  b b cis cis |
  R2*3 | \abr
  
  d4\f b |
  g8 g g e |
  es4 r |
  R2^"замедляя"
  \tempo "Неторопливо (тяжело)"
  d8 b' d8. b16 | \abr
  
  d,8 b' d8. b16 |
  d,8 fis d'8. c16 |
  bes8 d d,4 |
  d8 b' d8. b16 | \abr
  
  d,8 b' d8. b16 |
  e4 b |
  g8^"замедляя" g g a |
  e4 r |
  \tempo "Неторопливо" r d8 e | \abr
  
  fis8. fis16 fis8 fis |
  fis fis r d16 e |
  fis8 fis cis'8. b16 |
  fis4 r8 d16 e |
  fis8 fis fis fis | \abr
  
  e e r d16 e |
  fis8 fis r fis16 fis |
  gis8 gis r4 |
  \tempo "Вдвое быстрее" R2*10 |
  
  \tempo "Медленнее" r4 d'8 b |
  g g g e | \abr
  
  es4 r |
  R2
  \tempo "Довольно медленно. Осторожно"
  R2*2 |
  d8\mp b'8 d8. b16 | \abr
  
  d,8 b' d8. b16 |
  d,8 fis d'8. c16 |
  bes8 d fis,4 |
  R2*2 | \abr
  
  r4 d8\pp d |
  e e e e |
  fis fis fis fis |
  g g g g |
  a a r a16 a | \abr
  
  b b b b cis cis cis cis |
  d^"ускоряя" d d d e e e e | \abr
  
  f f r8^"замедляя" r4 \bar "||"
  \time 3/4 r4 d\f bes \bar "||"
  \time 2/4 g8 g r g16 e | \abr
  
  es4 r |
  r d8\p^"Подвижно (шёпотом)" b' |
  g4 r |
  R2 \bar "|."
}

scoreVoiceL = \lyricmode {
  
 Пти -- чий ры -- нок, пти -- чий ры -- нок!
 Зо -- ло -- тым и -- юль -- ским днём меж -- ду кле -- ток и кор -- зи -- нок хо -- дим
 с_па -- по -- ю вдво -- ём! Ви -- дим, рыб -- ки про -- да -- ют -- ся, плав -- ни --
 ки го -- рят о -- гнём. Мы на ры -- бок по -- смот --
 
 ре -- ли и ре -- ши -- ли, что бе -- рём.
 Пти -- чий ры -- нок, пти -- чий ры -- нок! Зо -- ло -- тым и -- юль -- ским днём, меж -- ду кле -- ток
 и кор -- зи -- нок хо -- дим с_па -- по -- ю вдво -- ём.
 Раз -- да -- вал ко -- тят бес -- плат -- но сим -- па -- тич -- ный про -- да -- вец. На ко -- тят мы
 
 по -- смо -- тре -- ли, по -- смо -- тре -- ли, по -- смо -- тре -- ли… и -- за --
 бра -- ли на -- ко -- нец. Пти -- чий ры -- нок, пти -- чий ры -- нок!
 Зо -- ло -- тым и -- юль -- ским днём, меж -- ду кле -- ток и ко -- рзи -- нок хо -- дим
 с_па -- по -- ю вдво -- ём.
 
 Тут нам бел -- ку пред -- ла -- га -- ли. Сколь -- ко
 сто -- ит? Пять руб -- лей!‥ На не -- ё мы по -- смо -- тре -- ли, по -- смо -- тре -- ли,
 по -- смо -- тре -- ли, по -- смо -- тре -- ли, по -- смо -- тре -- ли…
 На -- до взять е -- ё ско -- рей! Пти -- чий ры -- нок,
 
  пти -- чий ры -- нок! Зо -- ло -- тым и -- юль -- ским днём, меж -- ду кле -- ток
  и кор -- зи -- нок хо -- дим с_па -- по -- ю вдво -- ём. И сов --
  сем пе -- ред у -- хо -- дом у -- ви -- да -- ли мы ко -- ня. На ко -- ня мы по -- смот --
  ре -- ли, по -- смо -- тре -- ли, по -- смо -- тре -- ли…
  
  И ку -- пи -- ли для ме -- ня. Вот под -- хо -- дим
  к_на -- шей две -- ри, вот ре -- ши -- ли по -- сту -- чать…
  
  Ма -- ма в_щел -- ку по -- смо -- тре -- ла, по -- смо -- тре -- ла, по -- смо -- тре -- ла, по -- смо --
  тре -- ла, по -- смо -- тре -- ла, по -- смо -- тре -- ла, по -- смо -- тре -- ла, по -- смо --
  тре -- ла… и ре -- ши -- ла не пус --
  кать, не  пус -- кать!‥
 
 
  
}

scoreVoiceLL = \lyricmode {
 
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
%\addlyrics { \scoreVoiceLL }
%\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  r8 <ais b>16\f( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) | \abr
  
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r4 <gis e'>8( <e b'>) | \abr 
  
  r8 <d e g> q <d e a> |
  r4 <cis fis b> |
  <cis' fis b> \ottava #1 <cis' fis b> \ottava 0 |
  \tuplet 3/2 4 { e,,16\p([ gis b] e gis b) e,, ([ gis b] e gis b ) |
    cis,,([ gis' cis] eis  gis cis) cis,,([ gis' cis] eis  gis cis) |
    e,, ([ gis b] e gis b ) e,, ([ gis b] e gis b ) |
    cis,,([ gis' cis] eis  gis cis) cis,,([ gis' cis] eis  gis cis) |
    fis,,([ a cis] fis a cis) fis,,([ a cis] fis a cis) \abr
    
    es,,([ g bes ] es g bes) es,,([ g bes ] es g bes)
  }
  << < e, g d'>4 \\ <d, b' d>\mf >> r |
  r \ottava 1 g''8 e |
  <cis es>4 \ottava 0 r |
  \ottava 1 \acciaccatura cis'8 <d, d'>4-> \ottava 0 r | \abr
  
  r8 <ais, b>16(\mf d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) | \abr
  
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r4 <gis e'>8( <e b'>) |
  r8 <a, es' g>4. |
  <as c es f>4 b'16(\< d g b |
  <es, f as c>4)\> \ottava 1 bes''\! \ottava 0 | \abr
  
  r8 <d,,, es b'> q r |
  r <a f' ges> q r |
  r <d es bes'> q r |
  r <des es ges> q r |
  r <ces g' as> q r | \abr
  
  r <d as' bes> q r |
  r <dis ais' b> q r |
  r <eis bis' cis> q r |
  r \acciaccatura ais'8 b b( gis) |
  << { r8 \acciaccatura bis cis cis( gis) } \\ eis2 >> |
  <e g d'>4\f r | \abr
  
  r4 \ottava 1 g'8 e |
  <cis es>4 \ottava 0 r |
  \acciaccatura cis8 <d d,>4\f r |
  r8 <ais, b>16( d,) <ais' cis d>( d,) <ais' cis d>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) | \abr
  
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r4 <gis e'>8( <e b'>) | \abr 
  
  r8 <b cis g'> q4 |
  <as des f bes>2~ |
  q |
  r8 <e' bes' c> r q |
  r q r q |
  r q r q | \abr
  
  r q r q |
  r q r q |
  r q r q |
  r q r q |
  r q r q |
  r q r q | \abr
  
  r q r q |
  r q r q |
  r q r q |
  r\p <a c f> r q |
  r q r <b d g > |
  r <c es as> r q | \abr
  
  r q r <d f bes> |
  r <dis fis b> r q |
  r q r <eis gis cis> |
  r <g bes es> r <f as des> |
  r <g bes es> r <f as des> |
  \tuplet 7/8 { \D c,16^\f([ g' b] \U e g b d) } | \abr
  
  R2 |
  r4 \ottava 1 g8 e |
  <cis es>4 \ottava 0 r |
  \acciaccatura cis8 <d d,>4\sf r |
  r8 <ais, b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |  \abr
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( d) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r4 <gis, e'> |
  r <b g'> |
  <g b cis e> <g' b cis e>8( <as c d g> |
  <g b cis e>4) r | \abr
  
  <a, d fis>2\p |
  <ais e' fis> |
  << <d fis> \\ { b4( a) } >> |
  << <gis e'>2 \\ { cis8( c b bes) } >> |
  <a d fis>2 | \abr
  
  << <gis e'>2 \\ { cis8( c b bes) } >> |
  <a d fis>2 |
  << { <e' gis>4\breathe s } \\ {cis8 c e16\pp e32 e e16 e} >> |
  e8\< e16 e e8 e16 e |
  e8\! e16 e e8 e16 e | \abr
  
  <e a>8^"ускоряя" q16( c) <e a>8 q16( c) |
  <e a>8 q16( c) <e a>8 q16( c) |
  <f b>8 q16( d) <f b>8 q16( d) |
  <f b>8 q16( d) <f b>8 q16( d) |
  <g c>8\cresc q16( es) <g c>8 q16( es) | \abr
  
  <g c>8 q16(\< es) <g c>8 q16( es) |
  <g bes des>8\! q16( f) <g bes des>8 q16( f)|
  <g bes des>8 q16( f) <g bes des>8 q16( f) |
  <e g b d>2~ |
  q4 \ottava 1 g''8 e | \abr
  
  
  <cis es>4 \ottava 0 r |
  <cis d d,>8\sff-> r r4
  r8 <ais b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  
  r8 <ais' b>16( d,) <ais' cis d>( d,) <ais' b>( d,) |
  r8 <fis ais>16( d) <ais' cis d>( d,) <fis ais>( <ais, b>) |
  R2 |
  \ottava 1 <as'' bes>8\p q q \ottava 0 r\fermata |
  \ottava 1 q\pp q q \ottava 0 r\fermata | \abr
  
  R2\pp |
  r4 <g,,, c e> |
  r <b dis fis>\< |
  r <b e g>\! |
  r <d fis a> | \abr
  
  r8 <d g b> r <e ais cis> |
  r <fis b d>\< <g bes d e>4 | \abr
  <aes c d f>8\! r r4 |
  \time 3/4 r\f \repeat tremolo 8 { <g' bes d>32\f d } |
  \time 2/4 \repeat tremolo 8 { <g bes d>32 d } | \abr
  
  <es cis' es>4 r |
  r\pp <c, d>8 <ais' b> |
  <b, g'>4 r |
  <d'' e g>8->\sff r r4^"(сухо)"
}

scoreInstrLeft = \relative c {
  \global
  \dynamicUp
  \clef bass g8 d'4 d,8 |
  g d'4 d,8 |
  g d'4 d,8 |
  g d'4 d,8 |
  
  as' d4 d,8 |
  as' d4 d,8 |
  g d'4 d,8 |
  g d'4 d,8 |
  <e b'>2 |
  
  <c' g'> |
  <b e a>~ |
  q |
  s2*7
  
  r4 g'8 e |
  <cis es>4 r |
  d,-> r |
  
  g8 d'4 d,8 |
  g d'4 d,8 |
  as' d4 d,8 |
  as' d4 d,8 |
  g d'4 d,8 |
  
  g d'4 d,8 |
  \acciaccatura ais'8 <e b'>2 |
  <f c'> |
  <bes, bes'> |
  \clef treble << {c'''4 bes} \\ <f as>2 >> |
  
  \clef bass es,,4 r8 es( |
  ces'4) r8 bes,( |
  es4) r8 es( |
  ces'4) r8 ces( |
  fes,4) r8 fes8 |
  
  f4 r8 bes |
  gis4 r8 gis |
  cis,4 r |
  \clef treble <d''fis bis>2 |
  <cis gis' cis> |
  <d g b>4 r |
  
  \clef bass r g,8 e |
  <cis es>4 r |
  d, r |
  g8 d'4 d,8 |
  g8 d'4 d,8 |
  
  as' d4 d,8 |
  as' d4 d,8 |
  g8 d'4 d,8 |
  g8 d'4 d,8 |
  \acciaccatura ais'8 <e b'>2 |

  <a e'> |
  r4 es8-. es-. |
  \acciaccatura a bes bes es,4-- |
  \clef treble g'' fis |
  g c, |
  g' fis |
  
  g c, |
  g' fis |
  g c, |
  g' fis |
  g c, |
  g' fis |
  
  g c, |
  g' fis |
  g c, |
  f c |
  f es |
  as es |
  
  as fis |
  b fis |
  b cis |
  es des |
  es des |
  s4 \ottava 1 <g' b>8 r \ottava 0 
  
  R2 |
  \clef bass r4 g,,,8 e |
  <cis es>4 r |
  d, r |
  g8 d'4 d,8 |
  
  
  g8 d'4 d,8 |
  as' d4 d,8 |
  as' d4 d,8 |
  g8 d'4 d,8 |
  
  
  g8 d'4 d,8 |
  \acciaccatura ais'8 <e b'>2 |
  \acciaccatura cis'8 <g d'>2 |
  <a e'>4 <a' cis>8( <bes d> |
  <a cis>4) r |
  
  d,2 |
  c |
  b |
  <d e,> |
  <b fis'> |
  
  <d e,> |
  <b fis'> |
  <d e,>4 r |
  R2*2 |
  
  <e a,>8 a <e a,> a |
  <e a,> a <e a,> a |
  <d, g,> g <d g,> g |
  <d g,> g <d g,> g |
  <g, c,> c <g c,> c |
  
  <g c,> c <g c,> c |
  <bes es,> es <bes es,> es |
  <bes es,> es <es g bes des>4 |
  <d, g b d>2~ |
  q4 g'8 e |
  
  
  <cis es>4 r |
  <d, d'>8-> r r4 |
  g8 d'4 d,8 |
  g8 d'4 d,8 |
  g8 d'4 d,8 |
  
  g8 d'4 d,8 |
  as' r4 d,8 |
  as'4 r
  R2*3
  
  c4 r |
  d r |
  e r |
  d r |
  
  g fis |
  b <c e> |
  
  <bes c d f>8 r as,16\<-- g-- fis-- f--\! |
  
  e4 \clef treble \repeat tremolo 8 { <d'' e g>32 bes' } |
  \repeat tremolo 8 { <d, e g>32 bes' } |
  
  <cis, es>4 r |
  \clef bass r <cis, es> |
  <g d'> r |
  <d b a g>8-> r r4
  
  

}

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "НАР"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } \scoreInstrLeft
  >>



\bookpart {
  \header {
  piece = "Aes-dur"
  }
  \score {
    \transpose g as
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \score {
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
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
