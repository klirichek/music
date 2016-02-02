\version "2.18.2"

\header {
  title = "Трисвятое"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \time 4/4
  \autoBeamOff
}

sopranoz = \relative c'' {
  \global
  % Вписывайте музыку сюда
  a4 a g g
  a a g g
  f8[ g] g a a[ g] f g
  f[ g] e[ d] d2
}

altoz = \relative c' {
  \global
  % Вписывайте музыку сюда
  f8[ g] f[ e] e[ f] e[ d]
  f[ g] f[ e] e[ f] e[ d]
  f4 e8 e d4 d8 d
  d4 e8[ d] d2
  
}

tenorz = \relative c {
  \global
  % Вписывайте музыку сюда
  d4 d c c
  d d c c
  d c8 c bes4 bes8 bes
  a4 c d2
}

soprano = \relative c'' {
  \global
  \set Score.currentBarNumber = #5
  \override Score.BarNumber.break-visibility = #begin-of-line-visible
  % Вписывайте музыку сюда
  a4 a g g
  a a g g
  f8[ g] g a a[ g] f g
  f[ g] e[ d] d2
  
  a'8[ bes] a[ f] g[ a] g4
  a8[ bes] a[ f] g[ a] g4
  a8[ bes] c bes a[ g] f f
  e[ f] e[ d] d2
  \cadenzaOn f8 f\breve f8 f2 \cadenzaOff \bar "|"
  a8[ bes] c bes a[ g] f f
  e[ f] e[ d] d2
  <a' d>4 q <g c> q
  <a d> q <g c> q
  <a d> <c e>8 q <d f>4 q8 <e g>
  << { f8[ d] } \new Voice {\voiceThree d4} >> \voiceOne <cis e>4 d2 \bar "|."
}

alto = \relative c' {
  \global
  \dynamicUp
  % Вписывайте музыку сюда
  f8[\p\< g] f[ e] e[\> f] e[ d]\!
  f[\< g] f[ e] e[\> f] e[ d]\!
  f4 e8\< e d4 d8 d\!
  d4\> e8[ d] d2\!
  f4 f8[ d] d4 d8[ cis]
  f4 f8[ d] d4 d8[ cis]
  f4 f8 f f[ e] d d
  d4 e8[ d] d2
  \cadenzaOn d8 d\breve d8 d2 \cadenzaOff
  f4 f8 f f[ e] d d
  d4 e8[ d] d2
  f8[\f g] f[ e] e[ d] c4
  f8[ g] f[ e] e[ d] c4
  f8[ g] g a a[ g] <f bes> <g bes>
  << { a4^\markup\italic "rit."\> } \new Voice {\voiceFour  f8[ d] } >> \voiceTwo <e a>4 <f a>2\fermata\pp
  
  
}

tenor = \relative c' {
  \global
  % Вписывайте музыку сюда
  a4 a g g
  a a g g
  a g8 g f4 f8 f8
  f4 g a2
  c8[ d] c4 bes a
  c8[ d] c4 bes a
  c8[ d] e d c4 c8 c
  bes4 a a2
  \cadenzaOn a8 a\breve a8 a2 \cadenzaOff
  c8[ d] e d c4 c8 c
  bes4 a a2
  d4 d c c8[ a]^>
  d4 d c c8[ a]^>
  d4 c8 c bes4 bes8 bes
  a[ b] cis4 d2
}

bass = \relative c {
  \global
  % Вписывайте музыку сюда
  d4 d c c
  d d c c
  d c8 c bes4 bes8 bes
  a4 c8[ d] d2
  d4 d e a,
  d d e a,
  d d8 d d4 d8 d
  g,4 a d2
  \cadenzaOn d8 d\breve d8 d2 \cadenzaOff
  d4 d8 d d4 d8 d
  g,4 a d2
  <d a'>4 q <a e'> q
  <d a'> q <a e'> q
  <d a'> <c g'>8 q <bes f'>4 q8 q
  <a f'>4 <a e'> <d, d'>2
  
}

versez = \lyricmode {
  % Набирайте слова здесь
  Свя -- тый Бо -- же, Свя -- тый креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас.
}

verse = \lyricmode {
  % Набирайте слова здесь
  \versez
  \versez
  Сла -- "ва Отцу и Сыну и Святому Духу.." А -- минь.
  Свя -- тый без -- смерт -- ный, по -- ми -- луй нас.
  \versez
}

  \paper {
%  #(set-paper-size "a4landscape" )
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  print-page-number = ##f
}

\score {

  \new ChoirStaff \with {
    instrumentName = \markup \right-column { "Начало" "поют" мужчины или женщины } }
  <<
    \new Staff \with {
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "sopranoz" { \voiceOne \sopranoz }
      \new Voice = "altoz" { \voiceTwo \altoz }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "sopranoz" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
    } <<
      \clef bass
      \new Voice = "tenorz" { \oneVoice \tenorz }
    >>
  >>
  \layout {   indent = 20
  }
  \midi {
    \tempo 4=60
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "С" "А" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "Т" "Б" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
