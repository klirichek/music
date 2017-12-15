\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Кто Бог велий"
  subtitle = " "
  % composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  c2\f c4 |
  c2 c4 |
  c2 c4 |
  c c r |
  c4\p a bes |
  c2 d8[( c]) |
  bes4.( a8) g a |
  bes2. \breathe | \break
  bes4 g a |
  bes2 g4 |
  c2 bes8 bes |
  a2 \breathe <c e>4 |
  <c f>2 <c e>4 |
  <c f>2 \breathe c8[( f]) |
  <f a>2 <e g>8 q |
  <f c>2 \breathe <d g>4 |
  <c f>4.( <c e>8) <c d> <c e> |
  <c f>2. \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  a2 a4 |
  g2 g4 |
  a( g) a |
  a g r | 
  a f g |
  a2 bes8[( a]) |
  g4.( f8) e f |
  g2. |
  g4 e f |
  g2 e4 |
  a2 g8 g |
  f2 g4 |
  a2 g4 |
  a2 a8[( c]) |
  c2 bes8 bes |
  a2 bes4 |
  a4.( g8) f g |
  a2.
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  f2\f f4 |
  e2 e4 |
  f( e) f |
  f e r |
  c\p c c |
  c2 c4 |
  c2 c8 c |
  c2. |
  c4 c c |
  c2 c4 |
  c2 c8 c |
  c2 \breathe c4 |
  c2 c4 |
  c2 c8[( f]) |
  f2 e8 e |
  d2 \breathe d4
  c2 bes8 bes |
  <a c>2.
}


bassvoice = \relative c {
  \global
  \dynamicUp
  f2 a4 |
  c2 bes4 |
  a( g) f |
  c' c, r |
  f f f |
  f2 f4 |
  c2 c8 c |
  c2. |
  c4 c c |
  c2 c4 |
  f2 c8 c |
  f2 c4 |
  f2 c4 |
  a'2 f8[( a]) |
  c2 c,8 c |
  d2 bes4 |
  c2 c8 c |
  f2.
}

lyricscore = \lyricmode {
  Кто Бог ве -- лий, я -- ко Бог наш?
  Ты е -- си Бог, тво -- ряй чу -- де -- са.
  Ты е -- си Бог, тво -- ряй чу -- де -- са.
  Тво -- ряй, тво -- ряй, тво -- ряй чу -- де са,
  тво -- ряй чу -- де -- са.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
      \transpose f d {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
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
    \unfoldRepeats
      \transpose f d {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
