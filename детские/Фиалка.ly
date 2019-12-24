\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 20)

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

\header {
  title = "Фиалка"
  composer = " "
  %arranger = "arranger"
  poet = "Слова Плещева."
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
  \key a \major
  \time 3/4
}

%abr = {}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Moderato" 4=60
  R2. |
  r2 r8 cis\mf |
  e b b4 b |
  r cis8 b fis gis  |
  
  b a cis\< cis dis dis |
  fis4\! e r |
  r8 e fis e d cis |
  
  e d a a b b |
  cis4. a8 gis a |
  cis4 b r |
  r2 r8 e\p |
  
  e b b b b b |
  c4. r8 gis4 |
  b8 a c c dis dis |
  
  f4 e r8 e |
  e e d d a b |
  c4. r8 b4\p |
  e,8. f16 e2 |
  r8. f16 e4 e |
  cis'2 a4 |
  R2.
  
  
}

scoreVoiceL = \lyricmode {
  Ска -- жи, фи -- а -- лка, от -- че -- го так
  ра -- но к_нам ты во -- ро -- ти -- лась, ког -- да в_по -- лях ни
  од -- но -- го е -- щё цве -- тка не ра -- спу -- сти -- лось?
  «Бед -- на на -- ря -- дом и ма -- ла, я меж дру -- гих цве -- тов не --
  зри -- ма, и е -- сли_б с_ни -- ми я цве -- ла, ты
  мо -- жет быть, про -- шёл бы ми -- мо».
}

scoreVoiceLL = \lyricmode {
 
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  \oneVoice r4\p \voiceOne cis2 |
  \oneVoice r4 \voiceOne cis2 |
  < e e,>2. |
  < b b'>2. | \abr
  
  <e e'>2 r4 |
  b2. |
  <e e'>2. | \abr
  
  << d'2. \new Voice { \voiceThree d,4 <d d,>2 } >> |
  s2. |
  cis4( b2) |
  s2. | \abr
  
  r4 <b d,>2 |
  s2. |
  b8( a <c a e>4) <dis a dis,> | \abr
  
  <a cis>2. |
  <e e'>4(\< <d d'> <c f a>8 <b f' b>\! |
  <c e c'>2) <f b>4\p | \abr
  e8.( f16 e2) |
  e'8.( f16 e2) |
  r4 a2 |
  s2.
  
  \bar "|."
  
}

scoreInstrRightd = \relative c' {
  \global
  \dynamicNeutral
  \voiceTwo
  s4 <fis cis> <e cis> |
  s <fis cis> <e cis> |
  r <d fis b> <d gis b> |
  r <d fis b> <d gis b> |
  
  r <cis a' cis>(\< <dis a' dis> |
  <fis fis'>\! <e e'>2) |
  r4\p <e b' e> <e ais> |
  
  r a(\< b)\! |
  <cis cis'>4( <a cis a'> <a dis fis> |
  <gis gis'>2.) |
  s2. |
  
  e'4(\p f, e) |
  c'( <gis d>2 ) |
  <e c>4\< s s\! |
  
  <f f'>4( <e e'>2) |
  a2 s4 |
  s2.
  
  c,2. \> |
  d' |
  s4\!
  <e e'>8.(\pp <fis fis'>16 <e e'>4~) |
  <e e'>2.
}

scoreInstrLeft = \relative c {
  \global
  \dynamicUp
  \voiceOne
  a2. |
  a |
  a |
  a |
  
  a |
  gis |
  <g g'>2 fis'8( cis' |
  
  b[ d] ) f,8( d a' d, ) |
  e4 cis' c |
  <e, e,>2. |
  s |
  
  a, |
  a |
  a |
  
  a2 <g g'>4 |
  f'8( d a' d, g[ d]) |
  s2. |
  
  s |
  \clef treble <gis' e>2.
  r4 <a cis>2~ |
  <a cis>2.
}

scoreInstrLeftd = \relative c {
  \global
  \dynamicUp
  \voiceTwo
  a8( e' a e a e) |
  a,( e' a e a e) |
  a,( e' b' e, b' e,) |
  a,( e' b' e, b' e,) |
  
  a,( e' a e fis b) |
  gis,( e' b' e, b' e,) |
  g,( e' b' e,) <fis fis,>4~ |
  
  <fis fis,> <f f,>2 |
  e,8( e' cis' a c a) |
  e,( gis' d' fis, gis fis |
  e b' d \U e gis b) |
  
  \D a,,( e' gis d' gis, e)
  a,( e' b' d c b) |
  a,( e' a e c' f,) |
  
  a,( e' a e g,[ a']) |
  <f f,>2 g,4 |
  c8( g' \U c e) \D <a, d,>4 |
  
  <a e>2. |
  s
  s
  
}


scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Ф-п."
  } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \scoreInstrRight \scoreInstrRightd >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } << \clef bass \scoreInstrLeft \scoreInstrLeftd >>
  >>



\bookpart {
  \header {
  piece = "As-mol"
  }
  \score {
    \transpose a as
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
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "G-mol"
  }
  \score {
    \transpose a g
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
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "Fis-mol"
  }
  \score {
    \transpose a fis
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
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "F-mol"
  }
  \score {
    \transpose a f
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
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
