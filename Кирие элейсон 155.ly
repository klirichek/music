\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Кирие элейсон"
  subtitle = "№155"
  composer = "А. Львов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }

global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  cis2 d |
  cis d4( e) |
  f( e8[ f] g4 f) |
  e2. r4  \abr |
  e2 d |
  cis d4( e) |
  f( e8[ f] g4 f) |
  e1 \abr |
  f2 e |
  d2. d4 |
  d2( cis) |
  d1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e2 f |
  e f4( g) |
  a( g8[ a] bes4 a) |
  g2. r4 |
  g2 f |
  e f4( g) |
  a( g8[ a] bes!4 a) |
  g2( a) |
  a g |
  f( bes4) bes |
  a2( g) |
  f1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  a2 a |
  a a4( c!) |
  c1 |
  c2. r4 |
  a2 a |
  a a4( c!) |
  c1 |
  c2( a) |
  a cis |
  d2. g4 |
  f2( e)
  d1
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  a2 d |
  <a a'> d4( c!) |
  <f f,>2( <e e,>4 <f f,>) |
  c2. r4 |
  cis2 d |
  <a a'> d4( c!) |
  <f f,>2( <e e,>4 <f f,>) |
  c2( cis) |
  d <a a'> |
  <bes bes'>4( <a a'> <g g'>) <e e'> |
  <a a'>2( a ) |
  d1\fermata
}

lyricscore = \lyricmode {
  Ки -- ри -- е э -- ле -- йсон, Ки -- ри -- е э -- ле -- йсон,
  Ки -- ри -- е э -- ле -- йсон.
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
    \transpose d c {
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
    >>
      }  % transposeµ
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
