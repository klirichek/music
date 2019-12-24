\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 15.1)

\header {
  title = "Es ist ein' Ros' entsprungen"
  composer = "Satz: Michael Prätorius"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/2
   \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
    \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


versesone = \relative c'' {
   c2 |
  c4 c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 
  
 
  c' |
  c4 c d c |
  c2 a | 
  bes a4 g~ |
  g f2 e4 |
  f2

   
   r4 a |
   g e f d |
   c2 r4 
  \bar "" \abr c'4 |
   c c d c |
   c2 a |
   bes2 a4 g | 
   g( f2) e4 |
    
}

versestwo = \relative c'' {
    |
  c4 c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 c' | 
  c4 c d c |
   \abr c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 r4 a |
  g e f d |
  c2 r4 \bar "" \abr c' |
  c c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2
}

versesthree = \relative c'' {
  c2 |
  c4 c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 
  
  
  c' |
  c4 c d c | \abr
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2
 
   
   r4  a |
   g e f d |
   c2 r4 
   \bar "" \abr c'4 |
   c c d c |
   c2 a |
   bes2 a4 g~ | 
   g f2 e4 |
   f2
}

sopvoice = \relative c'' {
  \global
  %\tempo 2=50
  \secondbar  
  \mark \default
  r2 
  
  \versesone
  f,2
\bar "" \abr
  \mark \default
  %2
  c'2
  \versestwo
  
  \bar "" \abr
  
  \mark \default
  \versesthree
  r2 \bar "|."
}

vivoice = \relative c'' {
  \global
  \autoBeamOn
  %\tempo 2=50
  \secondbar  
  \mark \default
  f,2 
  
  \versesone
  f8\p g a bes
\bar "" \abr
  \mark \default
  %2
  c2\f
  \versestwo
  
  \bar "" \abr
  
  \mark \default
  \versesthree
  r2 \bar "|."
}

sopvoicea = \relative c'' {
  \global
  %\tempo 2=50
  \secondbar  
  \mark \default
  r2 
  
  \versesthree
\bar "" \abr
  \mark \default
  %2
  \versestwo
  
  \bar "" \abr
  
  \mark \default
  \versesone
  r2 \bar "|."
}


verseaone = \relative c' {
  f2 |
  e4 f f f~ |
  f e f2 |
  d f4 d |
  c2 c c2 
  f2 |
  e4 f f f~ |
  f e f2 |
  d f4 d |
  c2 c c2
  
  r4 f |
  g e d d |
  c8[( d] e4) r 
    e4 |
  g f f f |
  e2 d |
  d f4 d |
  e( f g) c, |
  c2 
}

verseatwo = \relative c' {
a'2 |
  a4 f f f |
  e2 d |
  d c |
  d4. a8 c2 |
  c a' | 
  a4 f f f |
  e2 d |
  d c |
  d4. a8 c2 |
  c r4 f |
  d c c b | 
  c8[( d] e4) r e |
  g f f f |
  e2 d |
  d f4 d |
  e( f g) c, |
  c2 
  
}

verseathree = \relative c' {
  f2 |
  e4 f f f~ |
  f e f2 |
  d f4 d |
  c2 c c2 
  
  f2 |
  e4 f f f~ |
  f e f2 |
  d f4 d |
  c2 c c2 
  
  r4 f |
  g e d d |
  c8[( d] e4) r 
  f4 |
e f f f |
e2 fis |
d f4 d |
c2 c |
c 
}

altvoice = \relative c' {
  \global
  r2 
  \verseaone
  \verseatwo
  \verseathree
  r2  
  \bar "|."
}

viivoice = \relative c' {
  \global
  \autoBeamOn
  c2
  \verseaone
  \verseatwo
  \verseathree
  r2  
  \bar "|."
}

altvoicea = \relative c' {
  \global
  r2 
  \verseathree
  \verseatwo
  \verseaone
  r2 
  \bar "|."
}


versetone = \relative c' {
  a2 |
  g4 a bes a |
  g2 f |
  g c4 bes |
  a2 g |
  a2
  
  a2 |
  g4 a bes a |
  g2 f |
  g c4 bes |
  a2 g |
  a2
  
  r4 c |
  c c a b |
  g2 r4
    g4 |
  g a bes a |
  g2 fis |
  g c4 bes |
  a2 g |
  a2
}

versettwo = \relative c' {
  
  
  %2
  c2 |
  c4 a bes a |
  g2 f |
  f a4 c |
  bes( a2) g4 |
  a2 c | 
  c4 a bes a |
  g2 f |
  f a4 c |
  bes( a2) g4 |
  a2 r4 c |
  bes a a g | 
  g2 r4 g |
  g a bes a |
  g2 fis |
  g c4 bes |
  a2 g |
   
}

versetthree = \relative c' {
  
  g4 a bes a |
  g2 f |
  g c4 bes |
  a2 g |
  a2
  
  a2 |
  g4 a bes a |
  g2 f |
  g c4 bes |
  a2 g |
  a2
  
  r4 c |
  c c a b |
  g2 r4  a4 |
 g a bes a |
 g2 fis |
 g c4 bes |
 a2 g |
 a
}

tenorvoice = \relative c' {
  \global
  r2     
  \versetone
  \versettwo
  a
  a
  \versetthree  
  r2
  \bar "|."
}

viiivoice = \relative c' {
  \global
  \autoBeamOn
  a2     
  \versetone
  \versettwo
  f8\p g a g
  a2\f
  \versetthree  
  r2
  \bar "|."
}

tenorvoicea = \relative c' {
  \global
  r2     
  \versetthree
  \versettwo
  \versetone  
  r2
  \bar "|."
}


versebone = \relative c {
  f2 |
  c4 f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
  
  f'2 |
  c4 f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
  
  
  r4 f' |
  e a d, g |
  c,2 r4 
  c4 
  e f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
}

versebtwo = \relative c {
  
  %2
  f2 |
  f4 f bes f |
  c2 d |
  bes f'4 e |
  d2 c |
  f, f' | 
  f4 f bes f |
  c2 d |
  bes f'4 e |
  d2 c |
  f, r4 f' |
  g a f g | 
  c,2 r4 c |
  e f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f, 
}

versebthree = \relative c {
  f2 |
  c4 f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
  
  f'2 |
  c4 f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
  
  
  r4 f' |
  e a d, g |
  c,2 r4   f4 |
  c f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f,2
}

bassvoice = \relative c {
  \global
  r2
  \versebone
  \versebtwo
  \versebthree
  r2
  \bar "|."
}

cellovoice = \relative c {
  \global
  \autoBeamOn
  f,2
  \versebone
  \versebtwo
  \versebthree
  r2
  \bar "|."
}

bassvoicea = \relative c {
  \global
  r2
  \versebthree
  \versebtwo
  \versebone
  r2
  \bar "|."
}

lyricsones = \lyricmode {
  \set stanza = "1." Es ist ein' Ros' ent -- sprun -- gen aus ei -- ner Wur -- zel zart, wie
  uns die Al -- ten sun -- gen, von Jes -- se kam die Art und hat ein Blüm -- lein
  bracht mit -- ten im kal -- ten Win -- ter wohl zu der hal -- ben Nacht.
}

lyricstwos = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein, das ich mei -- ne, da -- von Je -- sa -- ja sagt, hat
  uns ge -- bracht al -- lei -- ne Ma -- rie, die rei -- ne Magd. Aus Got -- tes ew' -- gem
  Rat hat sie ein Kind ge -- bo -- ren und blieb doch rei -- ne Magd.
}

lyricsthrees = \lyricmode {
  \set stanza = "3." 
  Das Blü -- me -- lein so klei -- ne, das duf -- tet uns so süß, mit
  sei -- nem hel -- len Schei -- ne ver -- treibt's die Fin -- ster -- nis. Wahr' Mensch und wah -- rer
  Gott, hilft uns aus al -- lem Lei -- de, ret -- tet von Sünd und Tod.
}

choirscore = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Sopran" "Alt"  } }
        shortInstrumentName = \markup { \right-column { "S." "A."  } } 
        midiInstrument = "voice oohs"
      } << 
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >>
            
%      \new Lyrics = "sopranoone"
      \new Lyrics = "sopranotwo"
 %     \new Lyrics = "sopranothree"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenor" "Bass" } }
        shortInstrumentName = \markup { \right-column { "T." "B." } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>

      
 %     \context Lyrics = "sopranoone" { \lyricsto "soprano" { \lyricsones } }
      \context Lyrics = "sopranotwo" { \lyricsto "soprano" { \lyricsones \lyricstwos \lyricsthrees } }
  %    \context Lyrics = "sopranothree" { \lyricsto "soprano" { \lyricsthrees } }

    >>
    
viscore = \new Staff \with {
  instrumentName = "V1"
  shortInstrumentName = "V1"
  midiInstrument = "violin"
} { \vivoice }    
    
viiscore = \new Staff \with {
  instrumentName = "V2"
  shortInstrumentName = "V2"
  midiInstrument = "violin"
} { \viivoice }


viiiscore = \new Staff \with {
  instrumentName = "Alt"
  shortInstrumentName = "A"
  midiInstrument = "viola"
} { \clef alto \viiivoice }

vcscore = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "C"
  midiInstrument = "cello"
} { \clef bass \cellovoice }


pianoscore =   \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P-no"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \vivoice \\ \viivoice >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } << \clef bass \viiivoice \\ \cellovoice >>
  >>

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  ragged-last-bottom = ##f
}
  
\bookpart {
  \score {
      \transpose f g <<
    \choirscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}

abr = {}

\bookpart {
  \header { piece = "Archi" }
  \score {
      \transpose f g <<
    \viscore
    \viiscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}

\bookpart {
  \header { piece = "Alt" }
  \score {
      \transpose f g <<
    \viiiscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}

\bookpart {
  \header { piece = "Cello" }
  \score {
      \transpose f g <<
        \vcscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}



\bookpart {
  \header { piece = "Instruments" }
  \score {
      \transpose f g <<
    \viscore
    \viiscore
    \viiiscore
    \vcscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}


\bookpart {
  \header { piece = "Conductor" }
  \score {
      \transpose f g <<
    
    \viscore
    \viiscore
    \viiiscore
    \vcscore
    \choirscore
    \pianoscore
  >>  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    }
  }
}



\bookpart {
  \score {
    \unfoldRepeats
      \transpose f g <<
        \choirscore
      >>
      % transposeµ
    \midi {
      \tempo 2=50
    }
  }
}
