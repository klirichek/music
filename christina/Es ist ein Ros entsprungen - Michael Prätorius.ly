\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 14)

\header {
  title = "Es ist ein' Ros' entsprungen"
  composer = "Satz: Michael Prätorius"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/2
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
  \tempo 2=50
  \secondbar  
  \partial 2 c2 |
  c4 c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 c' | \abr
  c4 c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 r4 a |
  g e f d |
  c2 r4 c' |
  c c d c |
  c2 a |
  bes a4 g~ |
  g f2 e4 |
  f2 \bar "|."
}


altvoice = \relative c'' {
  \global
  \partial 2 a2 |
  a4 f f f |
  e2 d |
  d c |
  d4. a8 c2 |
  c a' | \abr
  a4 f f f |
  e2 d |
  d c |
  d4. a8 c2 |
  c r4 f |
  d c c b | \abr
  c8[( d] e4) r e |
  g f f f |
  e2 d |
  d f4 d |
  e( f g) c, |
  c2 \bar "|."
}


tenorvoice = \relative c' {
  \global
  \partial 2 c2 |
  c4 a bes a |
  g2 f |
  f a4 c |
  bes( a2) g4 |
  a2 c | \abr
  c4 a bes a |
  g2 f |
  f a4 c |
  bes( a2) g4 |
  a2 r4 c |
  bes a a g | \abr
  g2 r4 g |
  g a bes a |
  g2 fis |
  g c4 bes |
  a2 g |
  a \bar "|."
}


bassvoice = \relative c {
  \global
  \partial 2 f2 |
  f4 f bes f |
  c2 d |
  bes f'4 e |
  d2 c |
  f, f' | \abr
  f4 f bes f |
  c2 d |
  bes f'4 e |
  d2 c |
  f, r4 f' |
  g a f g | \abr
  c,2 r4 c |
  e f bes, f' |
  c2 d |
  g, a4 bes |
  c2 c |
  f, \bar "|."
}

lyricsones = \lyricmode {
  \set stanza = "1." Es ist ein' Ros' ent -- sprun -- gen aus ei -- ner __ Wur -- zel zart, wie
  uns die Al -- ten sun -- gen, von Jes -- se __ kam die Art und hat ein Blüm -- lein
  bracht mit -- ten im kal -- ten Win -- ter wohl zu der __ hal -- ben Nacht.
}

lyricstwos = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein, das ich mei -- ne, da -- von Je -- sa -- ja sagt, hat
  uns ge -- bracht al -- lei -- ne Ma -- rie, die __ rei -- ne Magd. Aus Got -- tes ew' -- gem
  Rat hat sie ein Kind ge -- bo -- ren und blieb doch __ rei -- ne Magd.
}

lyricsthrees = \lyricmode {
  \set stanza = "3." 
  Das Blü -- me -- lein so klei -- ne, das duf -- tet __ uns so süß, mit
  sei -- nem hel -- len Schei -- ne ver -- treibt's die __ Fin -- ster -- nis. Wahr' Mensch und wah -- rer
  Gott, hilft uns aus al -- lem Lei -- de, ret -- tet von __ Sünd und Tod.
}

lyricsonea = \lyricmode {
  \set stanza = "1." Es ist ein' Ros' ent -- sprun -- gen aus ei -- ner Wur -- zel zart, wie
  uns die Al -- ten sun -- gen, von Jes -- se kam die Art und hat ein Blüm -- lein
  bracht __ mit -- ten im kal -- ten Win -- ter wohl zu der hal -- ben Nacht.
}

lyricstwoa = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein, das ich mei -- ne, da -- von Je -- sa -- ja sagt, hat
  uns ge -- bracht al -- lei -- ne Ma -- rie, die rei -- ne Magd. Aus Got -- tes ew' -- gem
  Rat __ hat sie ein Kind ge -- bo -- ren und blieb doch rei -- ne Magd.
}

lyricsthreea = \lyricmode {
  \set stanza = "3." 
  Das Blü -- me -- lein so klei -- ne, das duf -- tet uns so süß, mit
  sei -- nem hel -- len Schei -- ne ver -- treibt's die Fin -- ster -- nis. Wahr' Mensch und wah -- rer
  Gott, __ hilft uns aus al -- lem Lei -- de, ret -- tet von Sünd __ und Tod.
}


lyricsonet = \lyricmode {
  \set stanza = "1." Es ist ein' Ros' ent -- sprun -- gen aus ei -- ner Wur -- zel zart, wie
  uns die Al -- ten sun -- gen, von Jes -- se kam __ die Art und hat ein Blüm -- lein
  bracht mit -- ten im kal -- ten Win -- ter wohl zu der hal -- ben Nacht.
}

lyricstwot = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein, das ich mei -- ne, da -- von Je -- sa -- ja sagt, hat
  uns ge -- bracht al -- lei -- ne Ma -- rie, die rei -- ne Magd. Aus Got -- tes ew' -- gem
  Rat hat sie ein Kind ge -- bo -- ren und blieb doch rei -- ne Magd.
}

lyricsthreet = \lyricmode {
  \set stanza = "3." 
  Das Blü -- me -- lein so klei -- ne, das duf -- tet uns __ so süß, mit
  sei -- nem hel -- len Schei -- ne ver -- treibt's die Fin -- ster -- nis. Wahr' Mensch und wah -- rer
  Gott, hilft uns aus al -- lem Lei -- de, ret -- tet von Sünd und Tod.
}


lyricsoneb = \lyricmode {
  \set stanza = "1." Es ist ein' Ros' ent -- sprun -- gen aus ei -- ner Wur -- zel zart, wie
  uns die Al -- ten sun -- gen, von Jes -- se kam die Art und hat ein Blüm -- lein
  bracht mit -- ten im kal -- ten Win -- ter wohl zu der hal -- ben Nacht.
}

lyricstwob = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein, das ich mei -- ne, da -- von Je -- sa -- ja sagt, hat
  uns ge -- bracht al -- lei -- ne Ma -- rie, die rei -- ne Magd. Aus Got -- tes ew' -- gem
  Rat hat sie ein Kind ge -- bo -- ren und blieb doch rei -- ne Magd.
}

lyricsthreeb = \lyricmode {
  \set stanza = "3." 
  Das Blü -- me -- lein so klei -- ne, das duf -- tet uns so süß, mit
  sei -- nem hel -- len Schei -- ne ver -- treibt's die Fin -- ster -- nis. Wahr' Mensch und wah -- rer
  Gott, hilft uns aus al -- lem Lei -- de, ret -- tet von Sünd und Tod.
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 10
    ragged-last-bottom = ##f

  }
  \score {
      \transpose f g {
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S."
        midiInstrument = "voice oohs"
      } { \new Voice = "soprano" { \oneVoice \sopvoice } }
      
      \new Lyrics = "sopranoone"
      \new Lyrics = "sopranotwo"
      \new Lyrics = "sopranothree"
      
      \new Staff = "altstaff" \with {
        instrumentName = "Alt"
        shortInstrumentName = "A."
        midiInstrument = "voice oohs"
      } { \new Voice = "alto" { \oneVoice \altvoice } }
      
      \new Lyrics = "altone"
      \new Lyrics = "alttwo"
      \new Lyrics = "altthree"
      
      \new Staff = "tenorstaff" \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        midiInstrument = "voice oohs"
      } { \new Voice = "tenor" { \clef "G_8" \oneVoice \tenorvoice } }
      
      \new Lyrics = "tenorone"
      \new Lyrics = "tenortwo"
      \new Lyrics = "tenorthree"
      
      \new Staff = "bassstaff" \with {
        instrumentName = "Bass"
        shortInstrumentName = "B."
        midiInstrument = "voice oohs"
      } { \new Voice = "bass" { \clef bass \oneVoice \bassvoice } }
      
      \new Lyrics = "bassone"
      \new Lyrics = "basstwo"
      \new Lyrics = "bassthree"
      
      \context Lyrics = "sopranoone" { \lyricsto "soprano" { \lyricsones } }
      \context Lyrics = "sopranotwo" { \lyricsto "soprano" { \lyricstwos } }
      \context Lyrics = "sopranothree" { \lyricsto "soprano" { \lyricsthrees } }
      
      \context Lyrics = "altone" { \lyricsto "alto" { \lyricsonea } }
      \context Lyrics = "alttwo" { \lyricsto "alto" { \lyricstwoa } }
      \context Lyrics = "altthree" { \lyricsto "alto" { \lyricsthreea } }
      
      \context Lyrics = "tenorone" { \lyricsto "tenor" { \lyricsonet } }
      \context Lyrics = "tenortwo" { \lyricsto "tenor" { \lyricstwot } }
      \context Lyrics = "tenorthree" { \lyricsto "tenor" { \lyricsthreet } }
      
      \context Lyrics = "bassone" { \lyricsto "bass" { \lyricsoneb } }
      \context Lyrics = "basstwo" { \lyricsto "bass" { \lyricstwob } }
      \context Lyrics = "bassthree" { \lyricsto "bass" { \lyricsthreeb } }

    >>
      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
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
      \transpose f g {
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S."
        midiInstrument = "voice oohs"
      } { \new Voice = "soprano" { \oneVoice \sopvoice } }
      
      \new Lyrics = "sopranoone"
      \new Lyrics = "sopranotwo"
      \new Lyrics = "sopranothree"
      
      \new Staff = "altstaff" \with {
        instrumentName = "Alt"
        shortInstrumentName = "A."
        midiInstrument = "voice oohs"
      } { \new Voice = "alto" { \oneVoice \altvoice } }
      
      \new Lyrics = "altone"
      \new Lyrics = "alttwo"
      \new Lyrics = "altthree"
      
      \new Staff = "tenorstaff" \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        midiInstrument = "voice oohs"
      } { \new Voice = "tenor" { \clef "G_8" \oneVoice \tenorvoice } }
      
      \new Lyrics = "tenorone"
      \new Lyrics = "tenortwo"
      \new Lyrics = "tenorthree"
      
      \new Staff = "bassstaff" \with {
        instrumentName = "Bass"
        shortInstrumentName = "B."
        midiInstrument = "voice oohs"
      } { \new Voice = "bass" { \clef bass \oneVoice \bassvoice } }
      
      \new Lyrics = "bassone"
      \new Lyrics = "basstwo"
      \new Lyrics = "bassthree"
      
      \context Lyrics = "sopranoone" { \lyricsto "soprano" { \lyricsones } }
      \context Lyrics = "sopranotwo" { \lyricsto "soprano" { \lyricstwos } }
      \context Lyrics = "sopranothree" { \lyricsto "soprano" { \lyricsthrees } }
      
      \context Lyrics = "altone" { \lyricsto "alto" { \lyricsonea } }
      \context Lyrics = "alttwo" { \lyricsto "alto" { \lyricstwoa } }
      \context Lyrics = "altthree" { \lyricsto "alto" { \lyricsthreea } }
      
      \context Lyrics = "tenorone" { \lyricsto "tenor" { \lyricsonet } }
      \context Lyrics = "tenortwo" { \lyricsto "tenor" { \lyricstwot } }
      \context Lyrics = "tenorthree" { \lyricsto "tenor" { \lyricsthreet } }
      
      \context Lyrics = "bassone" { \lyricsto "bass" { \lyricsoneb } }
      \context Lyrics = "basstwo" { \lyricsto "bass" { \lyricstwob } }
      \context Lyrics = "bassthree" { \lyricsto "bass" { \lyricsthreeb } }

    >>
      }  % transposeµ
    \midi {
      \tempo 2=50
    }
  }
}
