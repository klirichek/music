\version "2.18.2"

#(set-global-staff-size 16)

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent = 0 
}

\header {
  title = \markup \magnify #3.0 { "Чудесный вечер" }
  subtitle = " "
  composer = \markup \magnify #1.5 \right-column {"Музыка К. Дебюсси"  "Переложение Х. Пивоваровой" " " " " " "}
  poet = \markup \magnify #1.5 \left-column {"Слова П. Бурже" "Перевод С Гинзберг"}
  tagline = ##f
}

global = {
  \key cis \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Andante ma non troppo"
}

sopranoOne = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  % Вписывайте музыку сюда
  R2.*4 | gis4\p gis8 gis gis gis | a2 b8 c | b4 gis b | d2 d4 |
  d?8 e b4 gis8 fis | fis e d c d e | e2.\pp~ | e2 r4 |
  
  b'8 b gis4 b8 b | dis b gis eis? eis gis | b2 b8 r | dis2\< b4 |
  dis2\> b8 gis\! | dis4( eis) gis | ais2 r4 | r r cis,8\p fis | a4 a8 a a b |
  cis4. cis8 cis e | dis2 dis4 | d8 b\p b4 fis8 d | d e fis gis b d |
  
  %страница 2
  fis2.(~ | fis2\f gis,4) \breathe | b^\markup \italic {dim.} a8 a gis e | fis2. |
  r8 d8 d d d d | d4\p d8 r r4 | R2. | fis2\p fis8 fis a4. r8 r4 |
  R2.*2 | gis4\pp gis gis | b2.~ | b~ | b | r2.
  
  
}

sopranoTwo = \relative c'' {
  \global
  \autoBeamOff
  % Вписывайте музыку сюда
   R2.*4 | gis4 gis8 gis gis gis | a2 a8 a | gis4 gis gis | bes2 bes4 |
  b?8 gis gis4 gis8 fis | fis e d c d e | e2.~ | e2 r4 |
  
  b'8 b gis4 b8 b | b gis eis eis eis gis | e2 fis8 r | b2 b4 |
  b2 b8 gis | dis4( eis) eis | fis2 r4 | r r cis8 fis | a4 a8 a a a |
  a4. a8 a cis | cis2 cis4 | r8 gis-- gis fis fis d | d e fis gis b b |
  
  d2.(~ | d2 gis,4) | b a8 a gis e | fis2. |
  r8 d d d d d | d4 d8 r r4 | r2. | fis2 fis8 fis | fis4. r8 r4 |
  R2.*2 | gis4 gis gis | b2.~ b~ b | r2.
}

altoOne = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  R2.*4 | e4 e8 e e e | f2 f8 f | e4 e e | g2 g4 |
  g?8 g g4 e8 e | e c c c c c | c2.(\pp | e2) r4
  r8 dis4 dis8 gis fis | gis eis dis dis dis eis | dis2 dis8 r | eis4(\< fis) ais8[ gis] |
  ais4(\> gis) gis8 eis\! | dis4( cis) dis | dis2 r4 | r r r\p | dis8 fis fis4~ fis8 fis |
  fis4. fis8 fis a | a2 a4 | r8 fis--\p fis fis fis dis | dis dis dis fis fis gis |
  
  b2.~( | b2 fis4) \breathe | fis fis8 fis fis e | fis2.
  r8 b, a a b b | a4\p a8 r r4 | R2. | dis2\p dis8 dis dis4. r8 r4 |
  R2.*2 | e4\pp e e | g2.~\( | g( | gis!)\) | r2.
}

altoTwo = \relative c' {
  \global
  \autoBeamOff
  R2.*4 | e4 e8 e e e | d2 d8 d | e4 e e | d2 d4 |
  e8 e e4 e8 e | c c c c c c | c2.( | e2) r4 |
  r8 dis4  dis8 gis fis | eis dis b b b dis | dis2 dis8 r | eis4( fis) ais8[ gis] |
  eis4( fis) fis8 eis | dis4( cis) b | ais2 r4 | r r r | b8 cis dis4( c8) dis |
  cis([ dis]) e4 fis8 fis | fis2 fis4 | r8 dis8 dis dis dis dis | b b b dis dis fis |
  
  gis2.(~ | gis2 d4) | d d8 d d e | fis2. |
  r8 b, fis fis gis gis | fis4 fis8 r r4 | R2. | dis'2 dis8 dis | cis4. r8 r4 |
  R2.*2 | e4 e e | dis2.~\( | dis( | e)\) r2.
}

verse = \lyricmode {
    В_ти -- хий ве -- чер -- ний час, ког -- да ре -- ки пы -- ла -- ют,
    и на -- пол -- нен теп -- лом про -- стор по -- лей и нив, __
    всё во -- круг нас меч -- той о сча -- стье вдох -- но -- вля -- ет, 
    сла -- док серд -- цу е -- ё при -- лив.
    Э -- то зов к_на -- сла -- ждень -- ю всем, чем жизнь бо -- га -- та,
    ве -- чер ла -- сков и тих, в_ду -- ше цве -- тёт вес -- на... __
    Но, как реч -- ной вол -- не, нет на -- шим дням воз -- вра -- та, 
    ей в_мо -- ре плыть, 
    нам в_цар -- ство сна. __
}

versetwo = \lyricmode {
   \repeat unfold 45 \skip 1
   к_на -- сла -- ждень -- ю
   \repeat unfold 6 \skip 1
   ве -- чер ла -- сков и
}

lh=\change Staff="left"
rh=\change Staff="right"

%партия правой руки, первый голос
rightone = \relative c, {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \tuplet 3/2 4 { % вся партитура триолями
     
    \lh e8( b' gis' \rh b e b') \lh e,,( b' gis') | % такт 1
    d,,( a' f' \rh b f' b) \lh d,,( a' f') |  % такт 2
    e,,( b' gis' \rh b e b') \lh e,,( b' gis') |  % такт 3
    g,,( d' bes' \rh d f d' d g d') | % такт 4 
    
    \lh e,,,,8( b'! gis'! \rh b e b') \lh e,,( b' gis') | % такт 5
    d,,( a' f' \rh b f' b) \lh d,,( a' f') |  % такт 6
    e,,( b' gis' \rh b e b') \lh e,,( b' gis') |  % такт 7
    g,,( d' bes' \rh d f d' d g d') | % такт 8
    
    \lh e,,,,( b'! gis'! \rh b e b') \lh e,,( b' gis') | % такт 9
    c,,,( gis' e' \rh gis c gis') \lh c,,( gis' e') |  % такт 10
    c,,( gis' e' \rh gis c gis') \lh c,,( gis' e') |  % такт 11
    
    e,,( b' gis' \rh b e b') b( e b') | % такт 12
    {\oneVoice r b,( dis b' dis, b gis b dis) } |
    \lh cis,,,( gis' eis' \rh b' eis b' b eis b')
    
  } % конец триолей
    % 2-я страница
    s2. \voiceOne
    ais4( gis <dis fis>8[ eis])
    ais4( gis <dis fis>8[ eis])
    dis4( cis b |
    
    ais2) r4
    
    <cis, cis'>( <fis fis'> <gis gis'> |
    <dis dis'>2 <a' cis>8[ b]) |
    
    <cis, cis'>4 <fis fis'> <gis gis'> |
    <a a'> <gis gis'> <fis fis'>
    <fis fis'>( <b b'> <cis cis'> |
    
    <gis gis'>2 <d' fis>8[ e]) |
    <fis, fis'>4( <b b'> <cis cis'> |
    <d d'> <cis cis'> <b b'>)
    
    <b b'>( <a a'> gis'8[ e] | fis4 d cis) | b( a gis8[ e] 
    
    fis4 \clef bass d a) 
    \lh \tuplet 3/2 4 {b,,8( fis' b \rh b fis' a) \clef treble r r <dis a' cis>8~ } q2.~ | q4 r r
    
    \lh \tuplet 3/2 4 { \oneVoice e,,8( b' gis' \rh b e b') \lh e,,( b' gis') | % такт 1
    d,,( a' f' \rh b f' b) \lh d,,( a' f') |  % такт 2
    e,,( b' gis' \rh b e b') \lh e,,( b' gis') |  % такт 3
    g,,,( g' dis' g b \rh dis g b dis } g b4 dis g8 | <b, e gis!>2.)
    
}

%партия правой руки, второй голос
righttwo = \relative c'' { 
  % Вписывайте музыку сюда
  s2 \tuplet 3/2 { r8 r <b e b'>^- }
  s2 \tuplet 3/2 { r8 r <b f' b>^- }
  s2 \tuplet 3/2 { r8 r <b e b'>^- }
  s2.
  
  s2 \tuplet 3/2 { r8 r <b e b'> }
  s2 \tuplet 3/2 { r8 r <b f' b> }
  s2 \tuplet 3/2 { r8 r <b e b'> }
  s2.
  
  s2 \tuplet 3/2 { r8 r <b e b'> }
  s2 \tuplet 3/2 { r8 r <gis c gis'> }
  s2 \tuplet 3/2 { r8 r q }
  s2. 
  s
  s
  \tuplet 3/2 4 { r8 b( dis b' dis, b gis b dis) ais' dis, b gis' \once \slurUp dis( b~ } b4)
  \tuplet 3/2 4 { ais'8 dis, b gis' \once \slurUp dis( b~ } b4)
  \tuplet 3/2 4 { dis8 b gis cis b gis b gis eis |
    dis fis ais, dis fis ais, cis fis ais |
    cis, a'! fis fis cis' a gis cis a |
    dis, a' fis~ fis \once \slurUp a( fis~} fis4)
  
  \tuplet 3/2 4 { cis8( a' fis fis cis' a gis cis a a dis b gis dis' b fis dis' b)  fis d' b b fis' d cis fis d 
      gis, d' b~ b \once \slurUp d( b~ } b4) \tuplet 3/2 4 { fis8 d' b b fis' d cis fis d | d fis d cis fis d b fis' d | 
      b fis' d a fis' d~} d4 \tuplet 3/2 4 { fis8 d a d a fis cis' a fis b fis d a' fis d~} d4
   \tuplet 3/2 4 { fis8 d a d a fis a fis d | <dis! a' cis>2. } s4
  s2. s 
  s2 \tuplet 3/2 { r8 r <b'' e b'>^- }
  s2 \tuplet 3/2 { r8 r <b f' b>^- }
  s2 \tuplet 3/2 { r8 r <b e b'> }
  s2. s s \stemUp <gis b>2.
  
}

%партия правой руки, соединяем голоса
right = {
  \global
  <<  \voiceOne \rightone \\ \voiceTwo \righttwo >>
}

% партия левой руки, нижний голос
leftone = \relative c, {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  e2. | d-- | e | g2--( a8[ g]) |
  e2. | d | e | g2( a8[ g]) |
  e2. | c | c | 
  e2. | <gis' b> | \rh eis'2 s4 \lh
  %страница 2
  <gis, b>2. | s | s s |
  s | s | s |
  s | s | gis,
  b | gis | e |
  %страница 3
  d | s | s
  s | s2 fis'4~ | <fis b>2.~ | q4 r r
  e,2. | d-- | e | s2. s | e, e''' \bar "|."
}

% партия левой руки, верхний голос
lefttwo = \relative c, {
 s2.*11
 s2  b''4
 dis gis fis
 s2 dis8[ cis]
 %страница 2
 dis4( gis fis |
 \oneVoice eis fis ais8[ gis])
 eis4( fis ais8[ gis])
 fis4( eis dis)
 
 <fis,,cis'>2. | fis,8([ fis' cis' fis a cis]) | b,[( fis' a b cis dis])
  fis,,,([ fis' cis' fis a cis]) | b,[( fis' a b cis dis]) | \voiceOne gis,,[( d' fis b] d4)
  
  b,8[( e gis b] d4) | gis,,8[( d' fis b] d4) | e,,8[( e' gis b d fis])
  % страница 3
  d,,8[( a' d fis a e'! ]) | fis4( d cis) | b( a gis8[ e] | fis4 d a) | s2 fis'8[ b~] | \once \hideNotes b
  s s2
  s2. s s s s s
  e,,8( b'4 e8[ gis b])
  
 
}

% партия левой руки
left = \relative c, {
  \global
  <<  \new Voice { \voiceOne \lefttwo } \\ { \voiceTwo \leftone} >>
}

dynamics = {
  % Здесь находится динамика. Она будет между партиями правой и левой руки.
  s8\pp s s2 | s2. | s4 s\< \tuplet 3/2 { s8 s s\!} | s4 s\> \tuplet 3/2 { s8 s s\! }
  s8\pp s s2 | s2.| s| s|
  s| s| s-\markup {piú \dynamic pp}
  s2 s4-\markup {[legato]}
  s2. | s |
  
  % страница 2
  s | s\< | s\> | s\! |
  s s\p s 
  \tuplet 3/2 4 { s8 s\< s s s s\! s s s | s s\> s s s s\! s s s } s2.
  s s s\f
  
  s-\markup{dim.} s | s4 s-\markup{dim. molto} s |
  s2.\p s-\markup {piú \dynamic p} s s
  s\pp s s
  s4-\markup {piú \dynamic p} s \tuplet 3/2 { s8\> s s\! }
  s-\markup {morendo} 
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "voice oohs"
    shortInstrumentName = \markup \center-column { "СI" "СII" }
  } <<
    \new Voice = "soprano1" { \voiceOne \sopranoOne }
    \new Voice = "soprano2" { \voiceTwo \sopranoTwo }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano1" \verse
  \new Staff \with {
    midiInstrument = "voice oohs"
    shortInstrumentName = \markup \center-column { "АI" "АII" }
  } <<
    \new Voice = "alto1" { \voiceOne \altoOne }
    \new Voice = "alto2" { \voiceTwo \altoTwo }
  >>
  \new Lyrics \lyricsto "alto1" \versetwo
>>

pianoPart = \new PianoStaff \with {
  %instrumentName = "Фортепиано"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } { \voiceOne \right }
  \new Dynamics { \dynamics }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \voiceTwo \left }
>>



\score {
  <<
    \choirPart
    \pianoPart
  >>
  \layout { 
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=100
  }
}

