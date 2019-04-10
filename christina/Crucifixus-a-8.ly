\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Crucifixus a 8"
  composer = "Antonio Lotti (c 1667-1740)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  %  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
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

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key c \minor
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  \autoBeamOff
}

vsi = \relative c'' {
  \global
  \secondbar  
  R1*7 | \abr
  r4 bes2 g4 |
  es'1~ |
  es4 d8[ c] d2 |
  d1 |
  R1 | \abr
  r2 es8 es es es |
  es es d d es4 es |
  r2 f8 f f f |
  f f es d es2~( |
  es4 d8[ c)] d2 |
  R1 |
  r2 r4 f |
  f8 f es es es4 d |
  R1*2 |
  r4 f2( es4~ |
  es d2 c4 |
  bes2 as) |
  g r |
  R1 |
  g'2( f |
  es des) |
  c d4 d |
  c2. c4 |
  c c2 c4 |
  d2 d |
  d1~ |
  d~ |
  d~ |
  d2 c |
  c c |
  b( c~ |
  c) b |
  c1 \bar "|."
  
}


vsii = \relative c'' {
  \global
  R1*6 |
  r4 bes2 g4 |
  d'1~ |
  d4 c8[ b] c2~ |
  c4 b8[ a] b2 |
  b1 |
  r2 c8 c c c |
  c c b b c4 c |
  r2 bes8 bes bes bes |
  c c c c f, f bes4 |
  bes2.( c4~ |
  c bes8[ a]) bes2 |
  R1*2 |
  r2 r4 d~( |
  d c2 bes4~ |
  bes as) bes2 |
  R1 |
  r2 r4 es |
  d8 d es es c4 d |
  r c2( b4) |
  c2 f( |
  es d~ |
  d4 c2 bes4~ |
  bes) as as as |
  g2. g4 |
  as c2 c4 |
  c2 bes |
  a( bes |
  a1 |
  as) |
  g |
  a2 a |
  g1~ |
  g2 g |
  g1
}


vsiii = \relative c'' {
  \global
  R1*5 |
  r4 a2 d,4 |
  bes'1 |
  bes2 bes~ |
  bes4 a8[ g] a2~ |
  a2. g8[ fis] |
  g1 |
  g8 g g g g g f f |
  g2 g |
  R1 |
  r2 f8 f f f |
  g1 |
  f |
  R |
  r4 bes bes8 bes as as |
  as4 g r2 |
  R1 |
  r4 as2( g4~ |
  g f) g2 |
  r r4 as |
  f8 f g g es4 f |
  R1 |
  g2( as |
  g4 es f d |
  es2 g) |
  c, f4 d |
  g2. g4 |
  f as2 g4 |
  fis2 g |
  fis( g~ |
  g4 f8 e f2 ~ |
  f1~ |
  f2) es |
  es es |
  d( es |
  d2.) d4 |
  e1
}


vsiv = \relative c' {
  \global
  R1*4 |
  r4 es2 c4 |
  a'1~ |
  a2 g |
  g1~ |
  g4 c, a'2 |
  d,1 |
  d |
  R1 |
  r2 es8 es es es |
  f f f f g4 g |
  r2 as8 as as as |
  g4.( f8 es2 |
  f4. es8) d2 |
  r4 g es8 es f f |
  d4 es r2 |
  r4 g f8 f g g |
  es2 d |
  R1 |
  as'2( g |
  f) es |
  r2 r4 f |
  g8 g g g f2 |
  g r |
  R1 |
  g1~ |
  g4 f2 f4~ |
  f e8[ d] c4 c |
  c f2 c'4 |
  a2. g4 |
  a2( d,~ |
  d1~ |
  d) |
  c |
  c2 a |
  b4( d2 c4 |
  d2.) d4 |
  c1
}

vsv = \relative c' {
  \global
  R1*3 |
  r4 d2 g,4 |
  es'1~ |
  es2 d |
  d1~ |
  d2. bes4 |
  es2. a,4 |
  g1 |
  g |
  r2 c8 c c c |
  d d d d es4( c~ |
  c as) es'2 |
  es8 es es es es es d d |
  es4( es,8[ f] g4 c) |
  f,1 |
  r4 d' c8 c c c |
  bes4 bes8 bes g g as as |
  f4( g8[ as]) bes2 |
  r2 r4 d |
  c8 c c c bes4 bes8 bes |
  es es f f d4 es |
  r2 r4 c |
  d8 d bes bes c4 as |
  r2 r4 f'~( |
  f es2 d4~ |
  d c2 b4) |
  c2 des |
  as2.( f4) |
  c'( g2) c4 |
  as as2 es'4 |
  a, d d2 |
  d4 d,2 d4 |
  d1~( |
  d |
  es2.) c'4 |
  a2 a |
  d,( g~ |
  g) g |
  g1
}

vsvi = \relative c' {
  \global
  R1*2 |
  r4 as2 f4 |
  d'1~ |
  d4 c8[ b] c2~ |
  c2. bes8[ a] |
  bes1~ |
  bes |
  g2 c |
  c2. b8[ a] |
  b1 |
  b8 b b b c c c c |
  g2 g |
  r bes8 bes bes bes |
  bes bes as as bes2~( |
  bes2. g4) |
  bes1 |
  R |
  r4 es4 c8 c c c |
  bes4 bes r d |
  bes8 bes c c as4 bes |
  R1 |
  r2 r4 es |
  c8 c d d bes4 c |
  r2 r4 d |
  bes8 bes c c as4( f) |
  c'2. d4 |
  bes8 bes c c f,4( g) |
  g1 |
  c4 f, f2~ |
  f4 f e4. e8 |
  f4 c'2 c4 |
  fis,2 bes |
  fis4( a2 g4 |
  a1 |
  b2 d) |
  g,1 |
  es2 es' |
  b4( g es2 |
  g4 d2) g4 |
  e1
}

vsvii = \relative c {
  \global
  R1 |
  r4 es2 c4 |
  as'1~ |
  as4 g8[ f] g2 |
  g1 |
  a1~ |
  a4 g8[ fis] g2 |
  g1 |
  c,2 c |
  g'1 |
  g |
  R |
  r2 g8 g g g |
  as as as as g4 g |
  es8 es es es bes' bes bes bes |
  es,1 |
  bes' |
  r4 bes bes8 bes as as |
  as4 g r2 |
  r r4 bes |
  g8 g as as f4 g |
  r2 r4 es |
  c8 c d d bes4 c |
  r2 r4 as'~( |
  as g2 f4~ |
  f es2 des4) |
  c c' f,8 f bes bes |
  es,4 as8 as d, d g g |
  c,4 c g'( bes) |
  f2 f4 f |
  c2. c4 |
  f f2 g4 |
  d2 g |
  d1~( |
  d |
  f) |
  c |
  c2 c |
  g'1~ |
  g2 g |
  c,1
}

vsviii = \relative c {
  \global
  r4 es2 c4 |
  g'1~ |
  g4 f8[ e] f2~ |
  f2. es8[ d] |
  es2 c |
  fis,1 |
  g |
  bes |
  c2 fis, |
  g1 |
  g |
  g'8 g g g as as as as |
  g4 g c,2 |
  f es4 es |
  c8 c c c bes bes bes bes |
  es1 | \abr
  bes |
  R |
  r4 g' es8 es f f |
  d4( es) bes2 | \abr
  r2 r4 g' |
  es8 es f f d4 es |
  r2 r4 c' |
  as8 as bes bes g4 as | \abr
  R1 |
  R |
  r4 c2( bes4~ |
  bes4 as2 g4) |
  c2 e, | \abr
  f b,4 b |
  c2. c4 |
  f, f'2 es4 |
  d2 g, |
  d'1~( |
  d | \abr
  b) |
  c |
  fis,2 fis |
  g1~ |
  g2 g |
  c1
  
  
}

vli = \lyricmode {
  Cru -- ci -- fi -- _ _ xus,
  cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, cru -- ci -- fi -- xus e -- ti -- am pro no --
  bis, sub Pon -- ti -- o Pi -- la -- to:
  pas -- sus, pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul --
  tus, et se -- pul -- tus est.
}

vlii = \lyricmode {
  Cru -- ci --
  fi -- _ _ _ _ xus, cru -- ci -- fi -- xus
  e -- ti -- am pro no -- bis, cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, pro no --
  bis: pas --
  sus, sub
  Pon -- ti -- o Pi -- la -- to, pas -- sus, pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul --
  tus, et se -- pul -- tus est.
}

vliii = \lyricmode {
  Cru -- ci -- fi -- 
  xus, cru -- ci -- fi -- _ xus, cru -- ci -- fi -- xus e -- ti -- am pro
  no -- bis, e -- ti -- am pro no --
  bis, sub Pon -- ti -- o Pi -- la -- to:
  pas -- sus, sub Pon -- ti -- o Pi -- la -- to, pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul --
  tus, et se -- pul -- tus est.
}

vliv = \lyricmode {
  Cru -- ci -- fi -- xus,
  cru -- ci -- fi -- _ xus,
  cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, e -- ti -- am pro no --
  bis, sub Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi --
  la -- to: pas -- sus,
  sub Pon -- ti -- o Pi -- la -- to, pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul --
  tus, et se -- pul -- tus est.
}

vlv = \lyricmode {
  Cru -- ci -- fi -- xus, cru --
  ci -- fi -- _ _ xus, cru -- ci -- fi -- xus
  e -- ti -- am pro no -- bis, cru -- ci -- fi -- xus e -- ti -- am pro no --
  bis, sub Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to,
  sub Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to, sub
  Pon -- ti -- o Pi -- la -- to: pas -- sus, et
  se -- pul -- tus est, pas -- sus, et se -- pul -- tus, et se -- pul --
  tus, et se -- pul -- tus est.
}

vlvi = \lyricmode {
  Cru -- ci -- fi -- _ _ _ xus, __
  cru -- ci -- fi -- _ xus, cru -- ci -- fi -- xus e -- ti -- am pro
  no -- bis, cru -- ci -- fi -- xus e -- ti -- am pro no --
  bis, sub Pon -- ti -- o Pi -- la -- to, sub
  Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to,
  sub Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to:
  pas -- sus et __ se -- pul -- tus est, pas -- sus, et se -- pul -- tus, et se -- pul -- tus est.
}

vlvii = \lyricmode {
  Cru -- ci -- fi -- _ xus, cru -- _ ci -- fi -- 
  xus, cru -- ci -- fi -- xus,
  cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, cru -- ci -- fi -- xus e -- ti -- am pro no -- bis,
  sub Pon -- ti -- o Pi -- la -- to, sub 
  Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to, pas --
  sus sub Pon -- ti -- o Pi -- la -- to, sub Pon -- ti -- o Pi -- la -- to: pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul -- tus, et se -- pul -- tus est.
}

vlviii = \lyricmode {
  Cru -- ci -- fi -- _ _ _ _ xus, cru -- ci --
  fi -- _ _ _ xus, cru -- ci -- fi -- xus e -- ti -- am pro
  no -- bis, cru -- ci -- fi -- xus, cru -- ci -- fi -- xus e -- ti -- am pro no --
  bis sub Pon -- ti -- o Pi -- la -- to,
  sub Pon -- ti -- o Pi -- la -- to,
  sub Pon -- ti -- o Pi -- la -- to:
  pas -- sus, pas --
  sus, et se -- pul -- tus est, pas -- sus, et se -- pul -- tus, et se -- pul -- tus est.
}

vni = "sopi"
sni = "S1"
vfi = \sni

vnii = "sopii"
snii = "S2"
vfii = \snii

vniii = "alti"
sniii = "A1"
vfiii = \sniii

vniv = "altii"
sniv = "A2"
vfiv = \sniv

vnv = "tenori"
snv = "T1"
vfv = \snv

vnvi = "tenorii"
snvi = "T2"
vfvi = \snvi

vnvii = "bassi"
snvii = "B1"
vfvii = \snvii

vnviii = "bassii"
snviii = "B2"
vfviii = \snviii

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for voice i
      \new Staff = \vni \with {
        instrumentName = \vfi
        shortInstrumentName = \sni
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vni { \vsi } }   
      \new Lyrics = \vni
      
      %staff for voice ii
      \new Staff = \vnii \with {
        instrumentName = \vfii
        shortInstrumentName = \snii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnii { \vsii } }   
      \new Lyrics = \vnii
      
      %staff for voice iii
      \new Staff = \vniii \with {
        instrumentName = \vfiii
        shortInstrumentName = \sniii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniii { \vsiii } }   
      \new Lyrics = \vniii
      
      %staff for voice iv
      \new Staff = \vniv \with {
        instrumentName = \vfiv
        shortInstrumentName = \sniv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniv { \vsiv } }   
      \new Lyrics = \vniv
      
      %staff for voice v
      \new Staff = \vnv \with {
        instrumentName = \vfv
        shortInstrumentName = \snv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnv { \clef "G_8" \vsv } }   
      \new Lyrics = \vnv
      
      %staff for voice vi
      \new Staff = \vnvi \with {
        instrumentName = \vfvi
        shortInstrumentName = \snvi
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnvi { \clef "G_8" \vsvi } }   
      \new Lyrics = \vnvi
      
      %staff for voice vii
      \new Staff = \vnvii \with {
        instrumentName = \vfvii
        shortInstrumentName = \snvii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnvii { \clef "bass" \vsvii } }   
      \new Lyrics = \vnvii
      
      %staff for voice viii
      \new Staff = \vnviii \with {
        instrumentName = \vfviii
        shortInstrumentName = \snviii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnviii { \clef "bass" \vsviii } }   
      \new Lyrics = \vnviii
      
      %lyrics
      \context Lyrics = \vni { \lyricsto \vni { \vli }}
      \context Lyrics = \vnii { \lyricsto \vnii { \vlii }}
      \context Lyrics = \vniii { \lyricsto \vniii { \vliii }}
      \context Lyrics = \vniv { \lyricsto \vniv { \vliv }}
      \context Lyrics = \vnv { \lyricsto \vnv { \vlv }}
      \context Lyrics = \vnvi { \lyricsto \vnvi { \vlvi }}
      \context Lyrics = \vnvii { \lyricsto \vnvii { \vlvii }}
      \context Lyrics = \vnviii { \lyricsto \vnviii { \vlviii }}
      
      
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff \accidentalStyle piano
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location midiInstrument name lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = \vni \new Voice = \vni { \vsi }
     \new Staff = \vnii \new Voice = \vnii { \vsii }
     \new Staff = \vniii \new Voice = \vniii { \vsiii }
     \new Staff = \vniv \new Voice = \vniv { \vsiv }
     \new Staff = \vnv \new Voice = \vnv { \vsv }
     \new Staff = \vnvi \new Voice = \vnvi { \vsvi }
     \new Staff = \vnvii \new Voice = \vnvii { \vsvii }
     \new Staff = \vnviii \new Voice = \vnviii { \vsviii }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

midivoice = "soprano sax"

% MIDI для репетиции:
\book {
  \bookOutputSuffix \vni
  \score {
    \rehearsalMidi \midivoice \vni \vli 
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnii
  \score {
    \rehearsalMidi \midivoice \vnii \vlii
    \midi { }
  }
}


\book {
  \bookOutputSuffix \vniii
  \score {
    \rehearsalMidi \midivoice \vniii \vliii
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vniv
  \score {
    \rehearsalMidi \midivoice \vniv \vliv
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnv
  \score {
    \rehearsalMidi \midivoice \vnv \vlv
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnvi
  \score {
    \rehearsalMidi \midivoice \vnvi \vlvi
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnvii
  \score {
    \rehearsalMidi \midivoice \vnvii \vlvii
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnviii
  \score {
    \rehearsalMidi \midivoice \vnviii \vlviii
    \midi { }
  }
}