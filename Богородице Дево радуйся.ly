\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")


\header {
  title = "Богородице, Дево, радуйся"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key es \major
  \numericTimeSignature
  \time 2/4
  \tempo "Медленно"
  \autoBeamOff
}

soprano = \relative c' {
  \global
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \dynamicUp
    es8\p f g4 |
    g8[ f] g[ aes] |
    g[ f g] bes |
    aes[ bes aes] g |
    f4 es8 f |
    g g g aes |
    g[ f] g bes |
    aes[ bes aes] g |
    f[( g] f4) |
    g2\fermata |
    r8 es es f | 
    g[ f g] bes |
    aes[ bes aes] g |
    f4\fermata g8[ f] |
    es[ f] g g |
    f[ es d] f |
    es es f f |
    g4\fermata es8 f |
    g[ f g] bes |
    aes[ bes aes] g |
    f4\fermata es8 f |
    g[ f es g] |
    f2 | es2 \bar "|."
}

alto = \relative c' {
  \global
    c8 d es4 |
    es8[ d] es[ f] |
    es[ d es] g |
    f[ g f] es |
    d4 c8 d |
    es es es f |
    es[ d] es g |
    f[ g f] es |
    d[( es] d4) |
    es2\fermata |
    r8 c c d |
    es[ d es] g |
    f[ g f] es |
    d4\fermata es8[ d] |
    c[ d] es es |
    c4. c8 |
    c c c d |
    es4\fermata bes8 d |
    es[ d es] g |
    f[ g f] es |
    d4\fermata c8 d |
    es[ d c d] |
    c4( d) es2
}

tenor = \relative c' {
  \global
    bes8 bes bes4 |
    bes bes |
    c4. c8 |
    c4. c8 |
    bes4 bes8 bes |
    bes bes bes bes |
    c4 c8 c |
    c4. c8 |
    bes2 | bes2\fermata |
    r8 bes bes aes |
    bes4. c8 |
    c4. c8 |
    bes4\fermata bes8 [ aes] |
    g4 g8 bes |
    aes4. aes8 |
    g f aes bes |
    bes4\fermata g8 aes |
    bes4. c8 |
    c4. c8 |
    c[\fermata bes] bes g |
    g4( bes) |
    aes8[( g] bes4) |
    g2
}

bass = \relative c {
  \global
    bes8 bes es4 |
    es d |
    c4. c8 |
    f4. f8 |
    bes,4 bes8 bes |
    es es d d |
    c4 c8 c |
    f4. f8 |
    bes,2 |
    es2\fermata
    r8 es es es |
    es4( d8) c |
    f4. f8 |
    bes,4\fermata bes |
    c c8 c |
    c4. c8 |
    c aes bes bes |
    es4\fermata es8 es |
    es4( d8) c |
    f4( aes,8) aes |
    bes4\fermata bes8 bes |
    c4( bes) |
    aes( bes)
    <es, es'>2
  
}

verse = \lyricmode {
  Бо -- го -- ро -- ди -- це, Де -- во, ра -- ду -- йся,
  Бла -- го -- да -- тна -- я Ма -- ри -- е, Го -- сподь с_То -- бо -- ю.
  Бла -- го -- сло -- ве -- нна Ты в_же -- нах,
  и бла -- го -- сло -- вен плод чре -- ва Тво -- е -- го,
  я -- ко Спа -- са ро -- ди -- ла е -- си душ на -- ших.  
}

\paper {
%  #(set-paper-size "a4landscape" )
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 100
  indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  print-page-number = ##f
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "С" "А" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Т" "Б" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \verse
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
