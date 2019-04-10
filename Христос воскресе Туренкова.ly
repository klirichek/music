\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
    title = "Христос воскресе!"
    opus = "№4"
    composer = "А. Туренков"
    %arranger = "перелож для см. хора"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
%mbr = {}
  
global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo "Скоро, но не очень"
  \partial 4 <b d>4\mf
  
  <b d>( <a c> <b d>) <c e> |
  <d f>4.( <c e>8)\> <b d>4 <b e>\! |
  <a c>2\< q4\!( <b d>) |
  <c e> q8 <c f> <c g'>4 <c f> |
  <c e>2 r4 q |
  <b d>4. q8 q[( <a c>)] <b d>[( <c e>]) |
  <d f>4.( <c e>8 <b d>4)\> <b e>\! |
  <a c>2\< <c d>4\! <b d> |
  <g c>2.\fermata r4 \bar "|."
}

altvoice = \relative c'' {
  \global
  \partial 4
  g4 |
  g2. g4 |
  a4.( g8) g4 g |
  e2 e4( g) |
  g a8 a g4 a |
  g2 r4 g |
  g4. g8 g4 g |
  a4.( g8~ g4) g |
  e2 a4 g |
  e2. r4 
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  <b d>4 |
  q( <a c> <b d>) <c e> |
  <d f>4.( <c e>8) <b d>4 <b e> |
  <a c>2 q4( <b d>) |
  <c e>4 <c e>8 <c f> <c g'>4 <c f> |
  <c e>2 r4 q |
  <b d>4. q8 q[( <a c>]) <b d>[( <c e>]) |
  <d f>4.( <c e>8 <b d>4) <b e> |
  <a c>2 <c d>4 <b d> |
  <g c>2. r4
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  \partial 4
   g4\mf |
   g2. g4 |
   d4.( e8)\> g4 e\! |
   a2\< a4(\! g) |
   c a8 f e4 f8[( a]) |
   c2 r4 c, |
   g'4. g8 g4 g |
   d4.( e8 g4)\> e\! |
   a2\< <f a>4\! g |
   c,2.\fermata r4
  
}

texta = \lyricmode {
Хри -- стос во -- cкре -- се из ме -- ртвых,
сме -- рти -- ю смерть по -- прав, и су -- щим во гро -- 
бех  жи -- вот да -- ро -- вав.
}

  
\score {
%  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>

  >>
%  }
  \layout {}
  \midi {
    \tempo 4=60
  }
}

