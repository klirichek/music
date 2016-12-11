\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Ein feste Burg ist unser Gott"
  composer = "Martin Luther (~1537-1529)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
  \autoBeamOff
}
cb = {\cadenzaOff \bar "|" \cadenzaOn }
sopvoice = \relative c'' {
  \global
  \dynamicUp
  
    \repeat volta 2 {
    \cadenzaOn r4 c c2 c g a4 c2( b4) a2 g \cb
    r4 c4 b2 a g a4 f2 ( e4 d2 ) c \cb
    r4 c'4 c2 c g a4 c2(  b4) a2 g \cb
    r4 c4 b2 a g a4 f2 ( e4 d2 ) c \cb
    r4 c4  e4. ( f8 g4 ) a2( g) fis4 g2 \cb
    c,2 g' a b c \cb
    b2 c b a g \cb
    r4 a4 a2 g4 a2 g4 e2 \cb
    r4 c'4 b2 a g a4 f2 ( e4 d2 ) c \cadenzaOff
  }
  | 
  c2 c \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \repeat volta 2 {
    r4 e e2 e c c4 e2( d4) d2 b | % 2
    r4 c e2 c c c4 c ( b c2 b4 ) c2 | % 3
    r4 e e2 e c c4 e2( d4) d2 b | % 4
    r4 c e2 c c c4 ( c b c2 b4 ) c2 | % 5
    r4 g c2. e2( d) d4 d2 | % 6
    c2 d c d e | % 7
    d2 e d d d | % 8
    r4 f f2 e4 f2 d4 c2 | % 9
    r4 e e2 c c c4 c ( b c c b ) c2
  }
  | 
  a2 g 
}


tenorvoice = \relative c' {
  \global
  \dynamicDown
  \repeat volta 2 {
    r4 g g2 g g f4 g2. g4( fis)g2 | % 2
    r4 e g2 f? e e4 f2( g2.) e2 | % 3
    r4 g g2 g g f4 g2. g4( fis) g2 | % 4
    r4 e g2 f e e4 f2( g2.) e2 | % 5
    r4 e g2. c2( b) a4 b2 | % 6
    e,2 g e g g | % 7
    g2 g g fis b | % 8
    r4 d c2 c4 c2 b4 g2 | % 9
    r4 a g2 f e f4 d2 ( e4 g2 ) e
  }
  f2 e
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \repeat volta 2 {
    r4 c c2 c e f4 c2( g4) d'2 g, | % 2
    r4 a e'2 f c a4 d2 ( c4 g2 ) c | % 3
    r4 c c2 c e f4 c2( g4) d'2 g, | % 4
    r4 a e'2 f c a4 d2 ( c4 g2 ) c | % 5
    r4 c c4. ( d8 e4 ) a,2( d) d4 g,2 | % 6
    c2 b a g c | % 7
    g2 c g' d g, | % 8
    r4 d' f2 c4 f,2 g4 c2 | % 9
    r4 a e'2 f c f,4 g2.( g2) c
  }
  |
  f,2 c'
}

lyricscore = \lyricmode {
  \set stanza = "1." Ein fe -- ste Burg ist un
  -- ser Gott, ein gu -- te Wehr und Wa -- ffen. Er hilft uns frei
  aus all -- er Not, die uns jetzt hat be -- tro -- ffen. Der alt
  bö -- se Feind mit Ernst er’s jetzt meint; groß Macht und viel
  List sein grau -- sam Rü -- stung ist, auf Erd ist nicht seins
  glei -- chen.
}

lyricscoretwo =  \lyricmode {
  \set stanza = "2." Mit uns -- rer Macht ist
  nichts ge -- tan, wir sind gar bald ver -- lo -- ren; es
  streit’ für uns der re -- chte Mann, den Gott hat selbst er --
  ko -- ren. Fragst du, wer der ist? Er heißt Je -- sus
  Christ, der Herr Ze -- ba -- ot, und ist kein and -- rer Gott,
  das Feld muss er be -- hal -- ten.
}
lyricscorethree =  \lyricmode {
  \set stanza = "3." Und wenn die Welt voll
  Teu -- fel wär und wollt uns gar ver -- schlin -- gen, so für --
  chten wir uns nicht so sehr, es soll uns doch ge -- lin -- gen.
  Der Fürst die -- ser Welt, wie sau’r er sich stellt, tut er
  uns doch nicht; das macht, er ist ge -- richt’: ein Wör --
  tlein kann ihn fäll -- en.
}
lyricscorefour =  \lyricmode {
  \set stanza = "4." Das Wort sie soll -- en
  lass -- en stahn und kein’ Dank da -- zu ha -- ben; er ist
  bei uns wohl auf dem Plan mit sei -- nem Geist und Ga -- ben. Neh
  -- men sie den Leib, Gut, Ehr, Kind und Weib: lass fah --
  ren da -- hin, sie ha -- ben’s kein’ Ge -- winn, das Reich
  muss uns doch blei -- ben. A -- men.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  ragged-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprano" "Аlto"  } }
        shortInstrumentName = \markup { \right-column { "S" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      \new Lyrics \lyricsto "soprano" { \lyricscorefour }
  
      \new Staff \with {
        instrumentName = \markup { \right-column { "Tenor" "Bass" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff 
        \remove "Time_signature_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=120
  }
}
}
