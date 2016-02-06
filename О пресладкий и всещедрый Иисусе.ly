\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent = 15
}

\header {
  title = "«О, пресладкий и всещедрый Иисусе...»"
  composer = "П. Чесноков"
  opus = "Op. 45 №2"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key fis \minor
  \time 4/4
  \tempo "Медленно, молитвенно" 4=48
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \dynamicUp
}

soprano = \relative c' {
  \global
  fis4. gis8 cis4( b) |
  fis \breathe fis8 a b[( cis d fis]) |
  cis4 \breathe b8 a gis4.( a8) |
  fis2~ fis8 r cis\p e |
  fis fis r4 r fis8\p fis |
  fis fis r4 r gis8\p b |
  fis fis \breathe fis\< gis cis4.(\! b8 |
  fis4. e8) fis[( gis a]) fis |
  <gis b> q <fis a> <gis b> <a cis> q q <b d> |
  <cis e>4( <b fis'>) <cis e> a |
  b8 b a b cis cis b a |
  gis4 fis8 a gis4 cis, \mark \markup { \musicglyph #"scripts.ufermata" } |
  r8 cis' cis d <cis e>4 <b d>8 <cis e> |
  <d fis> q <cis e> <b d> <cis e> q <b e>4 |
  <cis e>4. q8 q4 <b d>8 <cis e> |
  <d fis>4 <cis e>8[( <b d>]) <cis e>4 \breathe q8 <d fis>8 |
  <e g>4. <d fis>8 <cis e>8 q <b d> <cis e> |
  <d fis>2 <a d>4 \breathe d,8\mf\< e |
  fis4.\>( g8)\! fis4 fis\< |
  gis4.\>( a8) gis4 \breathe gis\< |
  a4.\!( b8) a4 gis8[( a]) |
  b4.(\> cis8\!) b \breathe b\< b b\! |
  fis'2 e4 d |
  cis2\> cis4\! \breathe cis8\f cis |
  cis4( a' gis8) gis cis, cis |
  fis4. fis8 e4( dis |
  cis4.) cis8 cis2 |
  cis2. cis4 |
  cis \breathe <bis dis>8 q <cis eis>4 <dis fis> |
  <eis gis>2~ q8 r q <eis a> |
  fis4. e?8 fis4 e8 <d? fis> |
  cis4( b8) a gis[( a] gis4) \breathe |
  fis4.( e8 fis4) e8[( fis]) |
  gis4( fis) cis e \breathe |
  fis4.( e8 fis4) e8[( fis]) |
  gis4( fis) cis e \breathe |
  fis2. e4 |
  d2 e |
  fis1~ |
  fis2~ fis4 r \bar "|."
}

alto = \relative c' {
  \global
  fis4.\p\< gis8\! a4(\> gis8[ e])\! |
  fis4 \breathe << { \voiceOne fis8 fis fis4.( gis8) a4 \breathe fis8 fis e2 } 
                   \new Voice {\voiceTwo \autoBeamOff fis8\< e d([ cis] b4)\! fis' d8 d e4(\> cis)\!} >> \oneVoice |
  fis2~\< fis8\! r cis\p\> e\! |
  fis fis r4 r fis8\p fis |
  fis fis r4 r gis8\p e |
  fis fis \breathe fis\< gis a4.\!( gis8 |
  fis4. e8) fis4. fis8 |
  e e e e a a a a |
  a2 a4 a |
  gis8 gis fis fis cis2~ |
  cis4 d cis2 |
  r8 cis' cis b a4 a8 a |
  a a a a a a gis4 |
  a4. a8 a4 b8 a |
  a4 a a \breathe a8 a |
  b4. a8 a a b a |
  a2 fis4 r |
  r e8\p e e4 r |
  r d8\p d d4 r |
  r d8\p d d4 r |
  r d8\p\< d d4\! r |
  r b'8\mf b b4~ b8 r |
  r4 b8 b b4 \breathe b8\mf b |
  <a cis>2. q4 |
  q4. q8 <gis bis>2( |
  gis4.) gis8 gis2 |
  fis2( gis4) a |
  gis \breathe gis8 gis gis4 gis |
  cis2~ cis8 r cis cis |
  cis4 b cis b8 a |
  gis4. fis8 cis[( b] cis4) \breathe |
  cis4.( b8 cis4) b8[( cis]) |
  d4( cis) b b \breathe |
  cis4.( b8 cis4) b8[( cis]) |
  d4( cis) b b \breathe |
  cis2 b |
  a b |
  cis( b |
  cis~) cis4 r |
}

tenor = \relative c {
  \global
  R1*3
  fis4.\< gis8\! cis4( << b) {s16\> s s s\!} >> |
  fis4 \breathe fis8\< a b[( cis d\! fis]) |
  cis4 \breathe b8 a << gis2 {s16\> s4 s16 s s\! } >> |
  fis2~ fis8 r fis\< gis |
  cis4\!( b) fis8[( gis a]) fis |
  b8\< b a b cis cis cis <b d>\! |
  <cis e>4( <b fis'>) <cis e> a |
  b8\mf b a b cis cis b a |
  gis4 fis8\> fis gis4 cis,\! |
  r8 cis'\mf\< cis d <cis e>4\f <b d>8 <cis e> |
  <d fis>8 q <cis e> <b d> <cis e> q <b e>4 |
  <cis e>4. q8 q4 <b d>8 <cis e> |
  <d fis>4 <cis e>8[( <b d>]) <cis e>4 \breathe q8\f\< <d fis> |
  <e g>4.\! <d fis>8 <cis e> q <b d> <cis e> |
  <d fis>2\> <a d>4\p r |
  r ais8\p ais ais4 r |
  r fis8\p fis fis4 r |
  r fis8\p fis fis4 r |
  r fis8\p\< fis fis4\! r |
  r d'8\mf d e4( fis8) r |
  r4 eis8 eis eis4 r |
  r2 r4 cis8\f cis |
  cis4( a' gis8) gis fis fis |
  e4. e8 eis2 |
  dis2( eis4)\> fis |
  cis\! \breathe <bis dis>8\< q <cis eis>4 <dis fis> |
  <eis gis>2~\ff q8 r q\ff <eis a> |
  fis4. e?8 fis4 e8 <d? fis> |
  cis4(\> b8) a8\! gis[( fis] gis4) \breathe |
  << {\voiceOne 
       fis4\mf( gis a) gis8[( fis]) |
       e4( fis) gis\> gis\! \breathe |
       fis4\p( gis a)\< gis8[( fis])\! |
       e4( fis)\> gis gis\! \breathe |
       fis2\pp\< gis |
       a\p\> gis |
       fis\pp\>( gis |
       fis)~ fis4\! }
     \new Voice {\voiceTwo
       fis4.( e8 fis4) e8[( fis]) |
       gis4( fis) cis e |
       fis4.( e8 fis4) e8[( fis]) |
       gis4( fis) cis e |
       fis2. e4 |
       d2 e |
       fis( gis |
       fis~) fis4 } 
  >> \oneVoice r4 
}

bass = \relative c {
  \global
  R1*3
  fis4. gis8 a4( gis) |
  fis \breathe << {\voiceOne 
                   fis8 fis fis4.( gis8) | 
                   a4 \breathe fis8 fis e4( cis) | }
         \new Voice {\voiceTwo
                   fis8 e d[( cis] b4) |
                   fis'4 d8 d e4( cis) | }
  >> \oneVoice
  fis2~ fis8 r fis\< gis |
  a4(\! gis) fis4. fis8 |
  e e e e a a a a |
  << {\voiceOne a2 a4\> a\! } \new Voice {\voiceTwo a4( d,) a' a } >> \oneVoice
  gis8 gis fis fis cis2~ |
  cis4 b cis2 |
  r8 cis' cis b a4 a8 a |
  <d, a'> q <fis a> q a a <e b'>4 |
  a4. a8 a4 b8 a |
  <d, a'>4 <fis a> a \breathe a8 <fis a> |
  <e b'>4. <fis a>8 a a b a |
  <d, a'>2 d4 r |
  r cis8\p cis cis4 r |
  r b8\p b b4 r |
  r a8\p a a4 r |
  r gis8\p\< gis gis4\! r |
  r gis'8\mf gis gis4~ gis8 r |
  r4 gis8 a gis4 cis8\mf cis |
  fis,2( e4) e |
  dis4. dis8 gis4 \breathe gis8\f gis |
  gis4( cis b8) b gis cis, |
  a'4( b8[ a]) gis4 fis |
  eis4 \breathe <dis gis>8 q <cis gis'>4 gis' |
  cis2~ cis8 r cis cis |
  <fis, cis'>4 <gis b> <a cis> <gis b>8 <fis a> |
  <cis gis'>4. <cis fis>8 cis[( b] cis4) \breathe |
  << {\voiceOne
      cis2. cis4 |
      b( cis) cis cis \breathe |
      cis2. cis4 |
      b( cis) cis cis\breathe |
      cis2 cis |
      fis cis |
      cis1~ |
      cis2~ cis4 }
     \new Voice {\voiceTwo
      fis,4( gis a) gis8[( fis]) |
      e4( fis) gis gis |
      fis4( gis a) gis8[( fis]) |
      e4( fis) gis gis |
      fis2 cis |
      fis cis |
      fis( cis |
      fis2~) fis4 } >> \oneVoice
      r4
}

sopranoVerse = \lyricmode {
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се! __
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се, 
  при -- и -- ми __ ны -- не ма -- ло -- е мо -- ле -- ни -- е си -- е __ на -- ше
  я -- ко же при -- ял е -- си вдо -- ви -- цы две леп -- те,
  и со -- хра -- ни до -- сто -- я -- ни -- е Тво -- е от враг ви -- ди -- мых и не -- ви -- ди -- мых,
  от на -- ше -- стви -- я и -- но -- пре -- мен -- ник,
  от не -- ду -- га и гла -- да,
  от вся -- ки -- я ско -- рби
  и сме -- рто -- но -- сны -- я ра -- ны,
  и гря -- ду -- щи -- я и -- зми, и -- зми, __ и -- зми
  му -- ки всех, во -- пи -- ю -- щих Ти: __ 
  а -- ли -- лу -- и -- я, а -- ли -- лу -- и -- я, __
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я. __
}

altoVerse = \lyricmode {
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се! __
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се, 
  при -- и -- ми __ ны -- не ма -- ло -- е мо -- ле -- ни -- е си -- е на -- ше
  я -- ко же при -- ял, __ при -- ял,
  и со -- хра -- ни до -- сто -- я -- ни -- е Тво -- е от враг ви -- ди -- мых и не -- ви -- ди -- мых,
  от на -- ше -- стви -- я и -- но -- пре -- мен -- ник,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  и гря -- ду -- щи -- я и -- зми, и -- зми
  му -- ки всех, во -- пи -- ю -- щих Ти: __ 
  а -- ли -- лу -- и -- я, а -- ли -- лу -- и -- я, __
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я. __ 
}

tenorVerse = \lyricmode {
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се! __
  При -- и -- ми __ ны -- не ма -- ло -- е мо -- ле -- ни -- е си -- е на -- ше
  я -- ко же при -- ял е -- си вдо -- ви -- цы две леп -- те,
  и со -- хра -- ни до -- сто -- я -- ни -- е Тво -- е от враг ви -- ди -- мых и не -- ви -- ди -- мых,
  от на -- ше -- стви -- я и -- но -- пре -- мен -- ник,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  и гря -- ду -- щи -- я и -- зми, и -- зми
  му -- ки всех, во -- пи -- ю -- щих Ти: __ 
  а -- ли -- лу -- и -- я, а -- ли -- лу -- и -- я, __
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я. __ 
  
}

bassVerse = \lyricmode {
  О, пре -- слад -- кий и все -- щед -- рый И -- и -- су -- се! 
  При -- и -- ми __ ны -- не ма -- ло -- е мо -- ле -- ни -- е си -- е на -- ше
  я -- ко же при -- ял, __ при -- ял,
  и со -- хра -- ни до -- сто -- я -- ни -- е Тво -- е от враг ви -- ди -- мых и не -- ви -- ди -- мых,
  от на -- ше -- стви -- я и -- но -- пре -- мен -- ник,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  со -- хра -- ни, со -- хра -- ни,
  и гря -- ду -- щи -- я и -- зми,
  и гря -- ду -- щи -- я и -- зми, __
  му -- ки всех, во -- пи -- ю -- щих Ти: __ 
  а -- ли -- лу -- и -- я, а -- ли -- лу -- и -- я, __
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я,
  а -- ли -- лу -- и -- я. __
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Дискант"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Альт"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Тенор"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Бас"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \tempo 4=48
  }
}
