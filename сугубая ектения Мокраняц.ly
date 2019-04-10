\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16.6)

co = \cadenzaOn
cof = \cadenzaOff
\header {
  %title = "Сугубая ектения"
  %composer = "С. Мокраняц"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
  \time 1/1
  \once \omit Staff.TimeSignature
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \co <g c>\breve q2 q1\bar "||"
  q\breve <g b>2 <g c>1 \bar "||" \cof
  \time 4/4
  <g c>8 q q q q4 q
  <a c>8 q q <a b> <a c>4 a
  a b c a |
  b2 c
   \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e\breve e2 e1 
  e\breve f2 e1
  e8 e e e e4 e
  e8 e e f e4 e
  f f g e 
  g( f) e2
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c\breve c2 c1
  c\breve d2 c1
  c8 c c c c4 c
  c8 c c d c4 c
  c d c c |
  d2 c
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  <c g'>\breve q2 q1
  q\breve <g g'>2 <c g'>1
  c8 c c c c4 c
  a8 a a a a4 a
  f' f e a |
  g2 <g c,>
}

lyricscore = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  Господи,_по -- ми -- луй.
  Господи,_по -- ми -- луй.
  \override LyricText.self-alignment-X = #CENTER
  Го -- спо -- ди, по -- ми -- луй.
  Го -- спо -- ди, по -- ми -- луй.
  Го -- спо -- ди, по -- ми -- луй.
}

  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-last =  ##f
  ragged-last-bottom = ##f
}


\bookpart {
  \markup { \fill-line {
    \null
    \fontsize #4 \bold \center-align "Сугубая ектения"
    "С. Мокраняц"
  }}
  
\score {

  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics = "sopranos"
  
      \new Staff = "downstaff" \with {
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
    %  }  % transposeµ
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
\markup { \fill-line {
    \null
    \fontsize #4 \bold \center-align "Сугубая ектения"
    "С. Мокраняц"
  }}
\score {

  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics = "sopranos"
  
      \new Staff = "downstaff" \with {
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
    %  }  % transposeµ
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

\markup { \fill-line {
    \null
    \fontsize #4 \bold \center-align "Сугубая ектения"
    "С. Мокраняц"
  }}
\score {

  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics = "sopranos"
  
      \new Staff = "downstaff" \with {
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
    %  }  % transposeµ
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
\markup { \fill-line {
    \null
    \fontsize #4 \bold \center-align "Сугубая ектения"
    "С. Мокраняц"
  }}
\score {

  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics = "sopranos"
  
      \new Staff = "downstaff" \with {
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
    %  }  % transposeµ
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



