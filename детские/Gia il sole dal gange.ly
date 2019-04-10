\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Già il sole dal Gange"
  subtitle = "O'er Ganges now launches"
  subsubtitle = "Ganzonetta"
  composer = "Alessandro Scarlatti (1659-1725)"
  %poet = "Слова В. Луговского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = {\break}
abr = {}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

global = {
  \key es \major
  \time 3/4
  \numericTimeSignature
  \partial 4
  \tempo "Allegro giusto"
}

solo = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  r4 |
  R2.*6 |
  r4 r bes\mf |
  es8[(^\markup\italic"brillante" d]) es[( f]) g[( as]) |
  bes4 es, bes' |
  c bes4.-> as8 |
  g4-. es-. f-. |
  g f d |
  g f4.-> es8 |
  f4 bes, bes' |
  
  % page 2
  c bes4. as8 |
  g4.( as8) g as |
  bes4 as4.-> g8 |
  f4^\markup\italic"poco rit." es f |
  g( f2->) |
  
  es2.^\markup\italic"a tempo" |
  r4 r f |
  g f4.-> es8 |
  d4 d es |
  f g8[( f]) es[( d]) |
  c4 bes r |
  
  r r es |
  es^\markup\italic"cresc. poco a poco e legatiss." d c |
  d c d |
  es\< d c |
  d c d |
  
  es d c |
  d\f( c2)^\markup\italic"rit." |
  bes2.~^\markup\italic"a tempo" |
  bes |
  r4 r bes |
  es8[(^\markup{\dynamic mp \italic brillante} d]) es[( f]) g[( as]) |
  
  %page 3
  bes4 es, bes' |
  c bes4. as8 |
  g4 es f |
  g f d |
  g f4.-> es8 |
  
  f4 bes, bes' |
  c bes4. as8 |
  g4.( as8) g as |
  bes4 as4.-> g8 |
  f4->^\markup\italic"rit." es-> f-> |
  g( \afterGrace f2->\trill {es16[ f])}| 
  
  es2. |
  R2.*5 |
  
  r4 r bes\mf |
  es8[(^\markup\italic"brillante" d]) es[( f]) g[( as]) |
  bes4-. es,-. bes'-. |
  c bes4.-> as8 |
  g4-. es-. f-. |
  
  % page 4
  g4 f-> d |
  g f4. es8 |
  f4 bes, bes'-. |
  c bes4.-> as8 |
  g4.( as8) g as |
  
  bes4 as4.-> g8 |
  f4^\markup\italic"poco rit." es f |
  g->( f2) |
  es2.^\markup\italic"a tempo" |
  r4 r f |
  g f4.-> es8 |
  
  d4 d es |
  f g8[( f]) es[( d]) |
  c4 bes r |
  r r es\pp |
  es^\markup\italic"cresc. poco a poco" d c |
  
  d c d |
  es d c |
  d\< c d\! |
  es d c |
  d^\markup{\dynamic f \italic rit.}( c2) |
  
  %page 5
  bes2.~^\markup\italic"a tempo" |
  bes |
  r4 r bes |
  es8[( d]) es[( f]) g[( as]) |
  bes4-. es,-. bes'-. |
  c bes4.-> as8 |
  
  g4 es f |
  g f d |
  g f4.-> es8 |
  f4 bes, bes' |
  c bes4. as8 |
  
  g4.( as8) g as |
  bes4 as4.-> g8 |
  f4->^\markup\italic"poco rit." es-> f-> |
  g( \afterGrace f2->\trill {es16[ f])}| 
  es4 r r |
  
  R2.*6
  R2.\fermata
  
}


verses = \lyricmode {
  Già~il so -- le dal Gan -- ge, già~il
  so -- le dal Gan -- ge più chia -- ro, più chia -- ro sfa -- vil -- la, più
  
  chia -- ro sfa -- vil -- la, più chia -- ro, più chia -- ro sfa -- vil --
  la, e ter -- ge~o -- gni stil -- la del -- l'al -- ba che pian -- ge,
  del -- l'al -- ba che pian -- ge, del -- l'al -- ba che pian -- ge, del --
  l'al -- ba che pian -- ge. __ Già~il so -- le dal
  
  Gan -- ge, già~il so -- le dal Gan -- ge più chia -- ro, più cha -- ro sfa --
  vil -- la, più cha -- ro sfa -- vil -- la, più chia -- ro, più chia -- ro sfa -- vil --
  la.
  Col rag -- gio do -- ra -- to, col rag -- gio do -- ra -- to in --
  
  gem -- ma, in -- gem -- ma~o -- gni ste -- lo, in -- gem -- ma~o -- gni ste -- lo, in --
  gem -- ma, in -- gem -- ma~o -- gni ste -- lo, e gli~as -- tri del
  cie -- lo di -- pin -- ge nel pra -- to; di -- pin -- ge nel
  pra -- to, di -- pin -- ge nel pra -- to, di -- pin -- ge nel pra --
  
  to. __ Col rag -- gio do -- ra -- to, col rag -- gio do --
  ra -- to, in -- gem -- ma, in -- gem -- ma~o -- gni ste -- lo, in -- gem -- ma~o -- gni
  ste -- lo, in -- gem -- ma, in -- gem -- ma~o -- gni ste -- lo.
  
}


rup = \relative c' {
  \global
  \oneVoice r4 |
  r r bes |
  es8->( d es f g as) |
  bes4-. es,-. bes'-. |
  \voiceOne c( bes4.-> as8) |
  
  \oneVoice <es g>4( < as c,>) <f c>-.
  \voiceOne \afterGrace f2.->\trill( {es16 f}|
  \oneVoice <es g,>2) <f, bes>4 |
  <g c es>-.( q-. q-.) |
  <g bes es>-.( q-. q-.) |
  
  <f as c es>-.( <f as bes es>-. <f as bes d>-.)
  <g bes es>-.( q-. <bes f'>-.) |
  <bes g'>-. <bes f'>-. <bes d>-. |
  \voiceOne g' f4.->( es8) |
  \oneVoice <bes d>4-.( q-. <bes es bes'>-.)
  
  % page 2
  <es as c> <d f bes> <d f as> |
  <es g>-.( <c es g>-. q-.) |
  <bes es bes'>-.( <c es as>-. <c es g>-.) |
  <as d f>-.( <g c es>-. <f c' f>-.) |
  <bes es g>-.( <bes es f>-. <bes d as'>-.) |
  
  \voiceOne g'4.->( f8 es4) |
  <f, bes d>->( <es g c>) <f bes f'>-. |
  g'( f es |
  <bes d>) <g bes d> <g bes es> |
  f' g8([ f]) es[( d]) |
  
  s2.*8
  \oneVoice s4 bes'4->( <as! d, bes>) |
  \voiceOne g4.(-> f8 es4) |
  \oneVoice <f, bes d>->( <g bes es>) <f bes>-. |
  <g c es>-.( q-. q-.)
  
  %page 3
  <g bes es>4 q q |
  <f as c es> <f as bes d> q |
  <g bes es> q <bes f'> |
  <bes g'>( <bes f'> <bes d>) |
  \voiceOne g'( f4.-> es8) |
  
  \oneVoice <bes d>4-. q-. <bes es bes'>-> |
  <es as c>-.( <d f bes>-. <d f as>-.) |
  <es g>-.( <c es g>-. q-.) |
  <bes es bes'>-.( <c es as>-. <c es g>-.) |
  <as d f>-.( <g c es>-. <f c' f>-.) |
  <bes es g> <bes es f>-> <as d f>-> |
  
  <g bes es> r bes-> |
  es8->( d es f g as) |
  bes4 es, bes' |
  \voiceOne c bes4. as8 |
  <es g>4( <c as'>) <c f> |
  \voiceOne \afterGrace f2.->\trill( {es16 f}|
  
  \oneVoice <es g,>2) <f, bes>4 |
  <g c es>-.( q-. q-.) |
  <g bes es>-.( q-. q-.) |
  <f as c es>-.( <f as bes es>-. <f as bes d>-.)
  <g bes es>-.( q-. <bes f'>-.) |
  
  %page 4
  <bes g'>-. <bes f'>-. <bes d>-. |
  \voiceOne g' f4.->( es8) |
  \oneVoice <bes d>4-.( q-. <bes es bes'>-.)
  
  <es as c>-.( <d f bes>-. <d f as>-.) |
  <es g>-.( <c es g>-. q-.) |
  <bes es bes'>-.( <c es as>-. <c es g>-.) |
  <as d f>-.( <g c es>-. <f c' f>-.) |
  <bes es g>-.( <bes es f>-. <bes d as'>-.) |
  
  \voiceOne g'4.->( f8 es4) |
  <f, bes d>->( <es g c>) <f bes f'>-. |
  g' f es |
  <bes d> <g bes d> <g bes es> |
  f' g8([ f]) es[( d]) |
  s2.*8
  
  %page 5
  \oneVoice s4 bes'4->( <as! d, bes>) |
  \voiceOne g4.(-> f8 es4) |
  \oneVoice <f, bes d>->( <g bes es>) <f bes> |
  <g c es> q q
  <g bes es>-.( q-. q-.) |
  <f as c es>-.( <f as bes d>-. q-.) |
  
  <g bes es>-.( q-.) <bes f'>-. |
  <bes g'>-.( <bes f'>-. <bes d>-.) |
  \voiceOne g'( f4.-> es8) |
  \oneVoice <bes d>4 q <bes es bes'> |
  <es as c> <d f bes> <d f as> |
  
  <es g> <c es g> q |
  <bes es bes'> <c es as> <c es g> |
  <as d f>-> <g c es>-> <f c' f>-> |
  <bes es g>-> <bes es f>-> <as d f>-> |
  <g bes es> r bes-> |
  
  es8->( d es f g as) |
  bes4-. es,-. bes'-. |
  \voiceOne c bes4.-> as8 |
  g4( as) f
  \voiceOne \afterGrace f2.->\trill( {es16 f}|
  \oneVoice <es g,>4) <es bes g>-> q-> |
  q2.\fermata
}

rdown = \relative c' {
  \global
  s4
  s2.*3
  es2 d4 |
  
  s2. |
  bes2( as4) |
  s2.*6
  bes4 bes( a) |
  s2.
  
  %page 2
  s2.*5 <es' bes>2 <bes g>4
  s2.
  bes4 bes4.-> a8 |
  s2. |
  bes4 bes <bes g>
  s2.*9
  <es bes>2 <bes g>4 |
  s2.*2
  %page 3
  s2.*4
  bes4 bes a |
  s2.*9
  es'2->( d4)
  s2.
  bes2( as4)
  s2.*5
  %page 4
  s2.
  bes4 bes a |
  s2.*6
  <bes es>2 <g bes>4 |
  s2.
  bes4 bes4.-> a8 |
  s2.
  bes4 bes <bes g>
  s2.*8

  %page 5
  s2.
  <es bes>2 <bes g>4 |
  s2.*2
  %page 3
  s2.*4
  bes4 bes a |
  s2.*9
  es'2 d4
  es c c |
  bes2 as4
  s2.*2
}

lup = \relative c {
  \global
  \dynamicUp
  \oneVoice bes4-.\mf |
  es8->( d es f g as) |
  g->( f g d es f) |
  g4. f8( g es) |
  as4( g f ) | \abr
  
  es2~ <es as,>4 |
  \voiceOne es d2->  |
  \oneVoice <es es,>4 es( d |
  c^\markup\italic"leggero" bes as |
  g4.) f8( g es) | \abr
  
  as4( bes) bes,-. |
  es-. es'( d |
  es d bes) |
  es( d c |
  bes4.-> as8 g4) | \abr
  
  %page 2
  as( bes) bes-. |
  c( bes4.-> as8 |
  g4 as as,) |
  bes(^\markup\italic"poco rit." c as') |
  bes2 bes,4-> | \abr
  
  es8^\markup\italic"a tempo"( d es f g as) |
  bes4( c d) |
  es( d f, |
  g) f4.->( es8) |
  d4( es2) |
  \voiceOne <es' a c>4( <d g bes>) q-. | \abr
  
  <es g c>-. <g c es>-.\pp( q-.) |
  <f c' es>^\markup\italic"cresc. poco a poco legatiss." <f bes d> <g bes c> |
  <f bes d>-.(\< <f a c>-. <f bes d>-.) |
  <es bes' es>-.( <f bes d>-. <g bes c>-.) |
  <f bes d>-.( <f a c>-. <f bes d>-.) | \abr
  
  <es bes' es>-.( <f bes d>-. <g bes c>-.) |
  <f bes d>\f <es bes' c>^\markup\italic"rit." <es a c> |
  <d f bes>^\markup\italic"a tempo" s \oneVoice bes,-> |
  es8(\mf\< d es f g as)\! |
  bes4->( es,) d'( |
  c\mp bes^\markup\italic"leggero" as | \abr
  
  % page 3
  g4.) f8( g es) |
  as4( bes) bes,-> |
  es-. es'( d |
  es d bes) |
  es( d c) | \abr
  
  bes4.->( as8 g4) |
  as( bes) bes-. |
  c( bes4. as8) |
  g4( as) as, |
  bes^\markup\italic"rit." c as'-> |
  bes2 bes,4-> | \abr
  
  \acciaccatura es8 es'^\markup{\dynamic f \italic a tempo }( d es f g as) |
  g( f g d es f) |
  g4. f8( g es) |
  as4 g f |
  es2~ <es as,>4 |
  \voiceOne es d2-> | \abr
  
  \oneVoice <es es,>4 es( d |
  c bes as |
  g4.) f8( g es) |
  as4( bes) bes,-. |
  es-. es'( d | \abr
  
  % page 4
  es d bes) |
  es( d c) |
  bes4.->( as8 g4) |
  as bes bes |
  c( bes4.-> as8 | \abr
  
  g4 as) as,( |
  bes^\markup\italic"poco rit." c as') |
  bes2 bes,4-> |
  es8(^\markup\italic"a tempo" d es f g as) |
  bes4( c d) |
  es( d f,) | \abr
  
  g( f4. es8) |
  d4( es2) |
  \voiceOne <es' a c>4 <d g bes> q |
  <es g c> <g c es> q\pp |
  <f c' es>^\markup\italic"cresc. poco a poco" <f bes d> <g bes c> | \abr
  
  <f bes d>-.( <f a c>-. <f bes d>-.) |
  <es bes' es>-.( <f bes d>-. <g bes c>-.) |
  <f bes d>-.\<( <f a c>-. <f bes d>-.)\! |
  <es bes' es>-.( <f bes d>-. <g bes c>-.) |
  <f bes d>-.(^\markup{\dynamic f \italic rit.} <es bes' c>-.-> <es a c>-.->) | \abr
  
  %page 5
  <d f bes>->^\markup\italic"a tempo" s \oneVoice bes,-> |
  es8(\mf\< d es f g as)\! |
  bes4->( es,) d'( |
  c bes as |
  g4.) f8( g es) |
  as4( bes) bes,-. | \abr
  
  es-. es'( d |
  es d bes) |
  es( d c |
  bes4.-> as8 g4) |
  as( bes) bes-. | \abr
  
  c bes4.-> as8 |
  g4 as as, |
  bes^\markup\italic"poco rit." c as' |
  bes2 bes,4-> |
  \acciaccatura es8 es'(->^\markup{\dynamic f \italic a tempo} d es f g as) | \abr
  
  g(^\markup\italic"brillante" f g d es f) |
  g4.( f8 g es) |
  as4( g f) |
  es2~ <es as,>4 |
  \voiceOne es4^\markup\italic"rit." d2-> |
  \oneVoice <es es,>4^\markup\italic"a tempo" <g, g,>-> <bes bes,>-> |
  <es, es,>2.\fermata \bar "|."
}

ldown = \relative c

{
  \global
  \voiceTwo
  s4
  s2.*5
  bes2.
  s2.*8
  
  % page 2
  s2.*10
  f4 g8( f es d) |
  
  c4-. c'8( d c bes) |
  a4( bes es,) |
  f2 f4 |
  g( f es |
  f2) f4-> |
  
  g( f es |
  f2) f4-> |
  <bes bes,>2 s4 
  s2.*3
  
  %page 3
  s2.*16
  bes2.
  s2.*5
  
  %page 4
  s2.*13
  f4 g8( f es d |
  c4) c'8( d c bes) |
  a4( bes) es, |
  
  f2 f4-> |
  g4( f es |
  f2) f4-> |
  g( f es |
  f2) f4->
  
  %page 5
  bes2 s4 |
  s2.*19
  bes2( bes,4)
  s2.*2
 
}

  
right = \relative c' {
  \accidentalStyle modern-voice-cautionary
  \global
  << \rup \\ \rdown >>
}

left = \relative c {
  \accidentalStyle modern-voice-cautionary
  \global
  << \lup \\ \ldown >>
}  

pianoPart = \new PianoStaff \with {
  
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  
  \new Staff = "right"  \right
  \new Staff = "left"  { \clef bass \left }
>>

\bookpart {
\score {
  \transpose es g
  <<
     \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Voice"
    shortInstrumentName = "V"
    } \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
}
}

\bookpart {
\score {
  \transpose es fis
  <<
     \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Voice"
    shortInstrumentName = "V"
    } \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
}
}

\bookpart {
\score {
  \transpose es ges
  <<
     \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Voice"
    shortInstrumentName = "V"
    } \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
}
}

\bookpart {
\score {
  \transpose es e
  <<
     \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Voice"
    shortInstrumentName = "V"
    } \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
}
}

\include "articulate.ly"

\bookpart {
\score {
  \unfoldRepeats \articulate
  
  <<
    \new Staff \with { midiInstrument = "choir aahs" }
    \new Voice = "Solo" { \oneVoice \solo }
    \new Lyrics  \lyricsto "Solo" \verses
    \pianoPart
  >>
  \midi {
    \tempo 4=120
  }
}
}
