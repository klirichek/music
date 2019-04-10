\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18.5)

\header {
  title = "Не будите меня, молоду"
  %composer = "Composer"
  arranger = "Обработка М. Красева (1897-1954)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 2/4
  \numericTimeSignature
}

br = { \break }
br = {}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  R2*2 |
  c4.\mf bes8 |
  a4 g |
  f8 f f' es |
  d4( f8) d |
  c4. bes8 |
  
  a4 g |
  f8( f'4) es8 |
  d r c c |
  c bes a f |
  bes bes a g |
  f g a c |
  bes4( a8[ g]) |
  \repeat volta 2 {
    f4. g8 |
    f4 g8([ f]) |
    f( f'4) es8 |
    d4( f8) d8 |
    c([ bes]) a([ g]) |
    f4. g8 |
    f( f'4) es8 |
    d8 r c c |
    c bes a f |
    bes bes a g |
    f g a c |
    bes4( a8[ g]) |
  }
  f8[(\p\< c'] f4~ |
  f~ f8)\! r |
  f4\f( d8)[ g-.] |
  f4( d8)[ g-.] |
  f[( d]) f[( c]) |
  d[( bes] f'4~ | \br
  f~^\markup"rit."  f8) r
  r2 |
  \tempo "Poco meno mosso"
  f,4.\mf g8 |
  f4 g8[( f]) |
  f( f'4) es8 |
  d4( f8) d | \br
  c[( bes]) a[( g]) |
  f4 g |
  f8( f'4 es8) |
  d8 r c c |
  c bes a f |
  bes bes a g | \br
  f g a c |
  bes4\> a8[( g]) |
  \tempo "Tempo I"
  f4.\p\< g8 |
  f4 g8[( f]) |
  f( f'4) es8 |
  d4 f8[( d]) |
  c[(\f bes]) a[( g]) | \br
  f4 g |
  f8( f'4) es8 |
  d r c\mf c |
  c bes a f | \br
  bes4 a8 g |
  f g a c |
  bes4\> a8[( g]) |
  f4.\p g8 | \br
  f4 g8[( f]) |
  f( f'4) es8 |
  d4 f8[( d]) |
  c[( bes]) a[( g]) |
  f4 g | \br
  f8( f'4) es8 |
  d4 c8\mf c |
  c bes a f |
  bes4 a8 g | \br
  f g a c |
  bes4( a8[ g]) |
  f'4.(\< c8) |
  f4.( c8) | \br
  f[(\f c] f[ c] |
  f[ g] f) r |
  r2 |
  f,4\mf r \bar "|."
}

scoreVoiceL = \lyricmode {
  Не бу -- ди -- те ме -- ня, мо -- ло -- ду,
  да ра -- ным ра -- но по -- ут -- ру. Вы то -- гда ме -- ня бу -- ди -- те, ко -- гда сол -- ныш -- ко взой -- дёт.
  Вы то -- гда ме -- ня бу -- ди -- те, ког -- гда сол -- ныш -- ко взой -- дёт,
  солн -- це крас -- но -- е про -- гля -- нет, ро -- са на зем -- лю па -- дёт.
  А… А… _ _ _ _
  Хо -- ро -- шо пас -- тух и -- гра -- ет,
  вы -- го -- ва -- ри -- ва -- ет: «Вы -- го -- няй -- те вы ско -- ти -- ну на ши --
  ро -- ку лу -- го -- ви -- ну!» Вы -- го -- ня -- ли ста -- до в_луг да ста -- но --
  ви -- лись дев -- ки в_круг. Од -- на дев -- ка ве -- се --
  ла в_хо -- ро -- вод пля -- сать по -- шла! _  О -- на
  пля -- шет. ру -- кой ма -- шет, пас -- туш -- ка к_се --
  бе зо -- вёт: «По -- ди, по -- ди пас -- ту -- шок, по -- ди,
  ми -- лень -- кий дру -- жок!
  А,
  а,
  а,
  Ох!..»
}

scoreVoiceLL = \lyricmode {
  \repeat unfold 32 \skip 1
 Ро -- са на зем -- лю па -- дёт, _  пас -- тух вый -- дет на лу -- жок. Пас -- тух вый -- дет на лу -- жок, _ за -- и -- гра -- ет во ро -- жок. 
}

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c''' {
  \global
  \dynamicNeutral
  \tempo "Gaio, con moto"
  c16(\f bes g bes c8) r |
  c,16(\p bes g bes c8) r |
  \D c\mf \U c \D c \U <bes d> |
  \D c \U <a e'> \D c \U <g e'> |
  \D a \U <f f'> \D a \U <f es'> |
  \D bes \U <f d'> \D bes \U <f d'> |
  \D c' \U c \D c \U <bes d> | \br
  
  \D c \U <a e'> \D c \U <g e'> |
  \D a \U <f f'> \D a \U <f es'> |
  \D bes \U <f d'> \D a \U <f c'> |
  \D g \U <bes c> \D a \U <f c'> |
  r <f d'> r <bes d> |
  \D f \U <g c> \D a \U <f c'> |
  r <f d'> r <bes d>  \br
  
  \repeat volta 2 {
    \D f \U \acciaccatura g' f \D f, \U <e g> |
    \D f \U <es g> \D f \U <d a'> |
    r <es f> r q |
    r <bes' d f>( f <bes d f>) |
    \D f \U <bes c> \D c, \U <bes' c> |
    \D f \U <a c> \D g \U <bes c> |
    \D a \U <f f'> \D c' \U <f, es'> | \br
    
    \D bes \U <f d'> \D a \U <f c'> |
    \D g \U <bes c> \D a \U <f c'> |
    r <f d'> r <bes d> |
    \D f \U <g c> \D a \U <f c'> |
    r <f d'> r <bes d> |
  } \br
  
  f'16(\p\< g f es d f es c) |
  f( g f es d f es c)\!
  r8 <bes f'>-. q( <c d g>) |
  r <bes f'>-. q( <c d g>) |
  << { r <d f> r <c d f> | r <bes d> f4 } \\ { bes4 a g f } >>
  
  f''16( es c es f8) r |
  f,,16(\p es c es f8) r |
  f'2~\mf \startTrillSpan |
  f \stopTrillSpan |
  r8 \acciaccatura g f-. f'16( c f c) |
  r8 \acciaccatura g f-. f'16( c f c) |
  << { c( f bes, f' a, f' g, f' ) f,( g es g d g c, g') } \\ { c8( bes a g) f( es d c) } >> 
  bes16( f' f,8) a16( f' f,8) |
  \D <bes, d> \U \acciaccatura g' f \D a, \U \clef bass <f c'> |
  \D g \U <bes c>16( f') \D a,8 \U <f c'> |
  r <f d'>( f' <bes, d>) |
  \D f \U <g c>16( f') \D a,8 \U <f c'> |
  r <f d'>( f' <bes, d>) |
  r\p\< <f f'>4-- <g f'>8~-- |
  q <a f'>4-- <bes f'>8-- |
  <a es' f>4 \clef treble \acciaccatura g''8 <f es a,>4 |
  r8 <f, bes d>( f' <f, bes d>) |
  r\f f16( f') f,8-. g16( f') |
  
  f,8-. a16( f') f,8-. bes16( f') |
  f,( f' es d c es d c) |
  bes4 c'16( a f c) |
  c'( bes e,? c) c'( a f c) |
  
  d'( bes a f) d'( bes a f) |
  c'( a f c) c'( a f c) |
  d'( bes f d) d'( bes f d) |
  r8\p <a c>16( f) r8 <g bes c>16( f) |
  
  r8 <a c>16( f) r8 <g bes c>16( f) |
  r f( g a bes c d es) |
  f( es d c bes a g f) |
  r8 <a c>16( f) r8 <a c>16( f) |
  r8 <a c>16( f) r8 <g bes c>16( f) |
  
  r f( g a bes c d es) |
  f( d bes8) c,16(\mf f a c) |
  c,( e? bes' c) c,( f a c) |
  d,( f bes d) d,( f bes d) |
  
  c,( f a c) c,( f a c) |
  d,( f bes d) d,( f bes d) |
  c,(\< f a c) c( bes e, c) |
  c( f a c) c( bes e, c) |
  \D \tuplet 6/4 { <f,, c'>16--(\f f' \U g bes d f) }   \D \tuplet 6/4 { <f, c'>--( f' \U g bes d f ) } |
  \D \tuplet 6/4 { <f, c'>--( f' \U \ottava 1 g bes d f) } \ottava 0 r4 |
  f,16\ff( es c es) f8 r |
  \acciaccatura g,, <f c>4--\mf r 
}

scoreInstrLeft = \relative c'' {
  \global
  \dynamicUp
  c16( bes g bes c8) r |
  c,16( bes g bes c8) r |
  s2*9
  bes'4( a8 g)
  s2
  bes4( a8 g)
  
  \repeat volta 2 {
    s2*2
    \clef bass \acciaccatura { g,16 a bes } c4 f, |
    \clef treble bes8( d g4) |
    s2*5
    bes4( a8 g) |
    s2
    bes4( a8 g) |
  }
  
  f8-. c-. f,-. r |
  f'-. c-. f,-. r |
  <bes f'>4.( <g d' g>8) |
  <bes f'>4.( <g d' g>8) |
  \clef bass << { r8 <d' f> r <c d f> r <bes d> f4 } \\ { bes4 a g f } >> |
  
  \clef treble f''16( es c es f8) r |
  \clef bass f,,16( es c es f8) r |
  <f a>8( c') <g bes>( d') |
  <a c>( e'? <bes d>) r |
  <a c>4( <f f'>8) r
  <bes d>4( <f f'>8) r
  \clef treble es''( d c bes) |
  a( g f es) |
  d4( <c es>) |
  \clef bass s2*2 |
  bes4( a8 g) |
  
  s2 |
  bes4( a8 g) |
  f( f,) e'( e,) |
  es'( es,) d'( d,) |
  c'( c,) <f' g es'>4 |
  <bes, bes,>8 <f' bes c>( d' <f, bes c>) |
  f'( f,) e'( e,) |
  
  es'( es,) d'( d,) |
  c'( c,) f( f') |
  \clef treble <bes, d> f' <f, c'> a' |
  <f, c'> g' <f, c'> a' |
  
  <bes, f'> g' <bes, f'> g' |
  <f, c'> a' <f, c'> a' |
  <bes, f'> g' <bes, f'> g' |
  <f a>( c') <g bes>( d') |
  
  <f, a>( c') <g bes>( d') |
  <f, a>( c') <f, a>( c') |
  <f, g bes>( d') <f, g bes>( d') |
  <f, a>( c') <f, a>( c') |
  <f, a>( c') <g bes>( d') |
  
  <f, a>( c') <f, a>( c') |
  bes( d) a( <f, c'>) |
  g' <f, c'> a' <f, c'> |
  g' <bes, f'> g' <bes, f'> |
  
  a' <f, c'> a' <f, c'> |
  g' <bes, f'> g' <bes, f'> |
  a' <f, c'> q g' |
  a <f, c'> q g' |
  s2 |
  s4 \ottava 1 <f'' c'>-- |
  \ottava 0 f,,16( es c es f8) r |
  \clef bass f,,8--( f,) r4
  
}

scoreVoicePart = \new Staff \with {
  instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Instr"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } \scoreInstrLeft
  >>

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}
  \header {
  piece = "Fis-dur"
  }
\score {
  \transpose d dis
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
%\consists Ambitus_engraver 
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
%\consists Ambitus_engraver 
    }
  %Metronome_mark_engraver
  }
}
}
