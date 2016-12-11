\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Cantabant Sancti"
  subtitle = "Cantiones sacræ (1612) no.4"
  composer = "Peter Philips"
  piece = \markup\left-column {"Matins Responsory, Feast of Holy Innocents"}

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
  indent = 15
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

timefourtwo = { 
    \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature #'text = \markup \musicglyph #"timesig.C22"
  \time 4/2
}

temposlow = {
    \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note #"1" #1
      " → "
      \smaller \general-align #Y #DOWN \note #"1." #1
    }
    }
}

tempofast = {
    \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note #"1." #1
      " → "
      \smaller \general-align #Y #DOWN \note #"1" #1
    }
    }
}

global = {
  \key d \minor
  \timefourtwo
  \dynamicUp
  \override Voice.NoteHead #'style = #'baroque
}

cantus = \relative c'' {
  \global
  \secondbar  
  d1 d |
  d f~ |
  f2 e4 d e1 |
  d r2 g, | \abr
  a bes bes a4 g |
  a g a bes c2 d~ |
  d cis d1 | \abr
  r4 d4. c?8 bes4 a1 |
  g4 d'4. c8 bes4 a8 g f g a bes c4~ |
  c bes a2 g1 | \abr
  
  r4 g'4. f8 es4 d g, r2 |
  r4 f'4. e?8 d4 d2 c4 bes |
  c2 c r4 d4. d8 c4 | \abr
  d es d2. g,4 r2 |
  r4 f'4. e?8 d4 cis d2 cis4 |
  d d2 d4 f2 d4 d~ |
  d c8 bes c2 d d |
  d1 b |
  d2 g fis g1. |
  d2 f?1 d d2 | \abr
  
  c c d d1 c2 |
  d1 r2 a d cis |
  d1. a2 c?1 |
  c c2 d1 d2 | \abr
  es c1 b r2 |
  g d' d d4 c bes a bes2 |
  bes c1 d d2 |
  c1 c2 bes a1 | \abr
  \timefourtwo g a |
  bes c |
  d d |
  c2 bes1 a2 | \abr
  
  bes d c4. c8 c4 bes |
  a bes a2 a d4 d |
  c1 a2 d | \abr
  d c bes r |
  r4 f' es d c bes es2 |
  d1 c2. c4 | \abr
  bes2 r r4 f' e d |
  c2 c4 a a4. a8 a2~ |
  a r r4 bes c c | \abr
  
  d c8 bes a4 g f f' f d |
  d2 d4 d d2. d4 |
  \once \hide Staff.TimeSignature \time 1/1 d1 | \abr
  bes2 d d d1 bes2~ |
  bes c1 bes f'2 |
  f1 f2 d g1 |
  fis1 r r | \abr
  R\breve.*3 |
  d2 g fis g1 d2~ | \abr
  
  d2 f?1 f f2 |
  \timefourtwo 
  f1 f2 es |
  d\breve |
  d\breve\fermata \bar "|."
}


quintus = \relative c'' {
  \global
  r2 g a bes |
  bes a4 g a g a b |
  cis2 d1 cis2 |
  d\breve~ | \abr
  d |
  R |
  r1 r4 f4. e8 d4 | \abr
  bes8 c d e f4 g2 fis8 e fis2 |
  g1 r |
  r r4 g4. f8 es4 | \abr
  
  d g, r2 r4 g'4. f8 es4 |
  d8 c bes c d e? f e f4 d g2~ |
  g fis g1 | \abr
  r r4 g4. f?8 es4 |
  d2 d4 g, a bes a2 |
  a4 a2 bes4 c c bes a | \abr
  g1 a2 g4 g~ |
  g fis8 e fis2 g1 |
  \time 3/1 bes2 d d d1 bes2~ |
  bes c1 bes f'2 | \abr
  
  f1 f2 d g1 |
  fis1 r r |
  R\breve.*2 | \abr
  R\breve. |
  d2 g fis g1 d2~ |
  d f?1 f f2 |
  f1 f2 d d1 | \abr
  \timefourtwo b r2 d |
  d e f1 |
  r2 f1 f2 |
  es1. es2 | \abr
  
  d bes a4. a8 a4 g |
  f g e2 f f'4 f |
  f2 e4 e f8 e d c bes c d e | \abr
  f4 g2 fis4 g2 r |
  r4 d bes bes es d c2~ |
  c bes1 a2 | \abr
  bes4 d c bes a8 bes c2 a4~ |
  a f' e d c8 b c d e4 f |
  e d2 cis4 d2 r | \abr
  
  r4 d c bes a8 g f e f4 g |
  a2 d,4. e8 f4 g a4. a8 |
  \once \hide Staff.TimeSignature \time 1/1 b1 | \abr
  \time 3/1 d2 g fis g1. |
  d2 f?1 d d2 |
  c c d d1 c2 | 
  d1 r2 a d cis | \abr
  d1. a2 c?1 |
  c c2 d1 d2 |
  es2 c1 b r2 |
  g d' d d4 c bes a bes2 | \abr
  
  bes c1 d d2 |
  \timefourtwo c\breve |
  f,2 g a1 |
  b\breve\fermata \bar "|."
}


altus = \relative c'' {
  \global
  g1 fis2 g |
  g f?4 e d e f g |
  a2 g4 f g2 a |
  d, d bes'1 | \abr
  a2 g1 d2 |
  d1 r |
  r2 a'4. g8 f4 f8 e d e f4 | \abr
  g f r2 r1 |
  r4 bes4. a8 g4 f8 e d e f g a g |
  fis4 g2 fis4 g2 r4 g~ | \abr
  
  g8 f es4 d g, r bes'4. a8 g4 |
  f d f2 r1 |
  r4 a a a bes2. a8 g | \abr
  a1 g2 g4. g8 |
  f2 d e1 |
  d4 f2 g4 a2 f | \abr
  g c,4 g' f e d c |
  d1 d |
  g2 bes a bes1 g2 |
  bes1 a2 bes1 bes2 | \abr
  
  a1 a2 bes g1 |
  a r2 f a a |
  a1 f g |
  a a2 bes1 bes2 | \abr
  g2 a1 d, r2 |
  bes' bes a bes g1 |
  bes a2 bes1 bes2 |
  a2. a4 a2 g1 fis2 | \abr
  \timefourtwo g1 fis |
  g4 a bes1 a2 |
  bes bes1 a2 |
  g2. f4 es2 es | \abr
  
  f1 r |
  r r2 a4 bes |
  a2 g4 g f2 g | \abr
  a4 g a2 d,4 bes' a g |
  f a g2 g1 |
  f1. f2 | \abr
  f2 r r4 a g f |
  e a, a' a4. g8 a[ b] c2~ |
  c4 a a2 r4 bes a g | \abr
  
  f2. d4 r bes' a g |
  f8 e f g a4 bes a g2 fis4 |
  \once \hide Staff.TimeSignature \time 1/1 g1 | \abr
  g2 bes a bes1 g2 |
  bes1 a2 bes1 bes2 |
  a1 a2 bes g1 |
  a r2 f a a | \abr
  a1 f g |
  a a2 bes1 bes2 |
  g a1 d, r2 |
  bes' bes a bes g1 | \abr
  
  bes a2 bes1 bes2 |
  \timefourtwo a a f a~ |
  a g1 fis2 |
  g\breve\fermata \bar "|."
}


tenor = \relative c' {
  \global
  R\breve*3 |
  r1 d | \abr
  d d |
  f1. e4 d |
  e1 d4 d4. c8 bes4 | \abr
  g8 a bes c d2 d, d'4. c8 |
  bes4 g4. a8 bes[ c d e] f e d4 c | 
  d2 d4. c8 bes4 g8 a b4 c | \abr
  
  b c b g'4. f8 es4 d8 c bes c |
  d e f e d c bes c d2 d |
  r4 c4. c8 c4 d g,8 a bes c d e | \abr
  fis4 g2 fis4 g1 |
  r4 d4. c8 bes4 a g a2 |
  d4 d2 d4 a2 bes | \abr
  bes g d' bes |
  a1 g |
  g'2 g d g1 g2~ |
  g f1 bes, bes2 | \abr
  
  f'1 f2 g es1 |
  d r2 d f e? |
  f1 d2 f2. e8 d e2 |
  f1 f2 f f g | \abr
  g2. fis8 e fis2 g1 r2 |
  d d d d2. c4 bes2 |
  g c1 bes bes2 |
  c1 a2 d d1 | \abr
  \timefourtwo d d |
  g2 g f1 |
  bes, d |
  es c | \abr
  
  bes2 f' f4. f8 f4 d |
  d d cis2 d d4 d |
  f2 c?4 c d8 c bes a g a bes g | \abr
  d'4 bes a2 g4 g c c |
  d a bes2 c2. bes4 |
  a2 bes c1 | \abr
  r4 d e e f c r2 |
  r4 a' a f e2 c4. d8 |
  e4 f e4. e8 d4 d f g | \abr
  
  a a, r2 r4 d d bes |
  a2 f4. g8 a4 bes a4. a8 |
  \once \hide Staff.TimeSignature \time 1/1 g1 | \abr
  g'2 g d g1 g2~ |
  g f1 bes, bes2 |
  f'1 f2 g es1 |
  d r2 d f e? | \abr
  f1 d2 f2. e8 d e2 |
  f1 f2 f f g |
  g2. fis8 e fis2 g1 r2 | 
  d d d d2. c4 bes2 | \abr
  
  g c1 bes bes2 |
  \timefourtwo a a f a~ |
  a g1 fis2 |
  g\breve\fermata \bar "|."
}

bassus = \relative c' {
  \global
  R\breve*3 |
  r1 g | \abr
  fis2 g1 f4 e |
  d e f g a2 g4 f |
  g2 a d,1 | \abr
  r4 bes'4. a8 g4 d'1 |
  g, r |
  r g | \abr
  g g |
  bes1. a4 g |
  a1  g4 g4. f8 e4 | \abr
  d c d2 g1 |
  R\breve |
  r4 d2 g4 f2 bes, | \abr
  es1 d2 g |
  d1 g |
  \time 3/1 \temposlow
  R\breve.*2 | \abr
  R\breve.
  r1. d'2 d a |
  d1 d c |
  f, f2 bes1 bes2 |
  c a1 g r2 |
  g g d g1 g2~ |
  g f1 bes, bes2 |
  f'1 f2 g d1 | \abr
  \timefourtwo \tempofast
  g1 r |
  R\breve*3 | \abr
  r2 bes f4. f8 f4 g |
  d g a2 d,1 |
  R\breve | \abr
  r1 r4 g f e |
  d2 g es1 |
  f1. f2 | \abr
  bes,4 bes' a g f2 c'4 d |
  a1. a2 |
  a1 r4 g f e | \abr
  d2 f4 g d1~ |
  d d |
  \once \hide Staff.TimeSignature \time 1/1 g1 | \abr
  \time 3/1 \temposlow R\breve.*3
  r1. d'2 d a | \abr
  d1 d c |
  f, f2 bes1 bes2 |
  c a1 g r2 |
  g g d g1 g2~ | \abr
  g f1 bes, bes2 |
  \timefourtwo \tempofast f'1 f2 c |
  d\breve |
  g\fermata \bar "|."
}

cantusl = \lyricmode {
  Can -- ta -- bant San --  - - - cti, can --
  ta -- bant San -- _ _ _ _ _ _ _ _ _ cti
  can -- ti -- cum no -- vum, can -- ti -- cum no -- _ _ _ _ _ _ _ _ vum,
  
  can -- ti -- cum no -- vum, can -- ti -- cum no -- _ _ _ vum, can -- ti -- cum
  no -- _ _ vum, can -- ti -- cum no -- _ _ vum an -- te se -- dem De -- 
  _ _ _ i et A -- gni: Et re -- so -- na -- bat ter -- ra in 
  
  vo -- ces e -- o -- _ rum, et re -- so -- na -- bat ter -- ra in vo -- ces
  e -- o -- rum, et re -- so -- na -- _ _ _ _ bat ter -- ra in vo -- ces e -- o --
  rum. Hi em -- pti sunt ex ho -- mi -- ni --
  
  bus pri -- mi -- ti -- æ De -- o et A -- gno, et in o -- re -- i --
  pso -- _ rum non est in -- ven -- tum men -- da -- _ ci --
  um, non est in -- ven -- tum men -- da -- ci -- um __ non est in --
  
  ven -- _ _ _ _ tum, non est in -- ven -- tum men -- da -- ci -- um.
  Et re -- so -- na -- bat __ ter -- ra in vo -- ces e -- o -- rum,
  et re -- so -- na -- bat __
  
  ter -- ra in vo -- ces e -- o -- rum.
}

quintusl = \lyricmode {
  Can -- ta -- bant San -- _ _ _ _ _ _ _ _ _ cti __
  can -- ti -- cum
  no -- _ _ _ _ _ _ _ _ vum, can -- ti -- cum
  
  no -- vum, can -- ti -- cum no -- _ _ _ _ _ _ _ _ _ _ _ vum,
  can -- ti -- cum no -- vum, can -- ti -- cum no -- vum an -- te se -- dem De -- _
  _ i et A -- _ _ _ gni: Et re -- so -- na -- bat __ ter -- ra in 
  
  vo -- ces e -- o -- rum,
  et re -- so -- na -- bat __ ter -- ra in vo -- ces e -- o --
  rum. Hi em -- pti sunt ex ho -- mi -- ni --
  
  bus pri -- mi -- ti --æ De -- o et A -- gno, et in o -- re i -- pso -- _ _ _ _ _ _ _ 
  _ _ _ rum no est in -- ven -- tum men -- da -- ci --
  um, non est in -- ven -- _ _ tum, __ non est in -- ven -- _ _ _ _ tum men -- da -- ci -- um,
  
  non est in -- ven -- _ _ _ _ _ _ tum __ _ _ men -- da -- ci -- um.
  Et re -- so -- na -- bat ter -- ra in vo -- ces e -- o -- _ rum, et re -- so --
  na -- bat ter -- ra in vo -- ces e -- o -- rum, et re -- so -- na -- _ _ _ _
  
  bat ter -- ra in vo -- ces e -- o -- rum.
}

altusl = \lyricmode {
  Can -- ta -- bant San -- _ _ _ _ _ _ _ _ _ _ _ cti, can -- ta --
  bant San -- _ cti can -- ti -- cum no -- _ _ _ _
  _ vum, can -- ti -- cum no -- _ _ _ _ _ _ _ _ _ _ vum, can --
  
  ti -- cum no -- vum, can -- ti -- cum no -- _ vum, can -- ta -- bant San -- _ _ 
  _ cti can -- ti -- cum no -- _ vum an -- te se -- dem
  De -- i et A -- _ _ _ _ gni: Et re -- so -- na -- bat ter -- _ ra in
  
  vo -- ces e -- o -- rum, et re -- so -- na -- bat ter -- ra in vo -- ces
  e -- o -- rum, et re -- so -- na -- bat ter -- _ ra in vo -- ces e -- o -- _
  rum. Hi em -- _ _ pti sunt ex ho -- mi -- _ _ ni --
  
  bus, et in o -- re i -- pso -- _
  _ _ _ rum non est in -- ven -- tum men -- da -- _ ci --
  um non est in -- ven -- tum men -- da -- _ _ _ _ ci -- um, non est in --
  
  ven -- tum, non est in -- ven -- _ _ _ _ tum men -- da -- ci -- um.
  Et re -- so -- na -- bat ter -- _ ra in vo -- ces e -- o -- rum, et re -- so --
  na -- bat ter -- ra in vo -- ces e -- o -- rum, et re -- so -- na -- bat
  
  ter -- _ ra in vo -- ces e -- o -- _ _ rum.
}

tenorl = \lyricmode {
  Can --
  ta -- bant San -- _ _ _ cti can -- ti -- cum
  no -- _ _ _ _ vum, can -- ti -- cum no -- _ _ _ _ _ _ _ _ _ vum, can -- ti -- cum no -- _ _ _
  
  _ _ vum, can -- ti -- cum no -- _ _ _ _ _ _ _ _ _ _ _ _ vum, can -- ti -- cum no -- _ _ _ _ _ _
  _ _ _ vum, can -- ti -- cum no -- _ _ vum an -- te se -- dem
  De -- _ i et A -- gni: Et re -- so -- na -- bat __ ter -- ra in
  
  vo -- ces e -- o -- rum, et re -- so -- na -- bat ter -- _ _ _ ra in vo -- ces e --
  o -- _ _ _ rum, et re -- so -- na -- _ _ bat ter -- ra in vo -- ces e -- o --
  rum. Hi em -- pti sunt ex ho -- mi -- ni --
  
  bus pri -- mi -- ti -- æ De -- o et A -- gno, et in o -- re i -- pso -- _ _ _ _ _ _ _
  _ _ _ rum non est in -- ven -- tum men -- da -- _ _ ci -- um,
  non est in -- ven -- tum, non est in -- ven -- tum __ _ _ men -- da -- ci -- um, non est in --
  
  ven -- tum, non est in -- ven -- tum __ _ _ men -- da -- ci -- um.
  Et re -- so -- na -- bat __ ter -- ra in vo -- ces e -- o -- rum, et re -- so --
  na -- bat ter -- _ _ _ ra in vo -- ces e -- o -- _ _ _ rum, et re -- so -- na -- _ _ 
  bat ter -- ra in vo -- ces e -- o -- _ _ rum.
}

bassusl = \lyricmode {
  Can --
  ta -- bant San -- _ _ _ _ _ _ _ _ _ _ cti
  can -- ti -- cum no -- vum, can --
  
  ta -- bant San -- _ _ _ cti can -- ti -- cum
  no -- _ _ vum an -- te se -- dem
  De -- i et A -- gni:
  
  et re -- so -- na -- bat ter -- ra in vo -- ces
  e -- o -- rum, et re -- so -- na -- bat __ ter -- ra in vo -- ces e -- o -- 
  rum.
  
  pri -- mi -- ti -- æ De -- o et A -- gno,
  non est in -- ven -- tum men -- da -- ci --
  um, non est in -- ven -- tum men -- da -- ci -- um, non est in --
  
  ven -- tum men -- da -- ci -- um.
  et re -- so --
  na -- bat ter -- ra in vo -- ces e -- o -- rum, et re -- so -- na -- bat __
  ter -- ra in vo -- ces e -- o -- rum.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for cantus
      \new Staff = "cantus" \with {
        instrumentName = \markup { \center-column { "Cantus" "(Soprano)" } }
        shortInstrumentName = "C"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "cantus" { \cantus } }   
      \new Lyrics = "cantus"
      
      %staff for quintus
      \new Staff = "quintus" \with {
        instrumentName = \markup { \center-column { "Quintus" "(Soprano)" } }
        shortInstrumentName = "Q"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "quintus" { \quintus } }   
      \new Lyrics = "quintus"
      
      %staff for altus
      \new Staff = "altus" \with {
        instrumentName = \markup { \center-column { "Altus" "(Alto)"  } }
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "altus" { \altus } }  
      \new Lyrics = "altus"
      
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = \markup { \center-column { "Tenor" "(Tenor)"  } }
        shortInstrumentName = "T"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
           
      %staff for bassus
      \new Staff = "bassus" \with {
        instrumentName = \markup { \center-column { "Bassus" "(Bass)"  } }
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bassus" { \clef "bass" \bassus } }
      \new Lyrics = "bassus"
      
      %lyrics
      \context Lyrics = "cantus" { \lyricsto "cantus" { \cantusl }}
      \context Lyrics = "quintus" { \lyricsto "quintus" { \quintusl }}
      \context Lyrics = "altus" { \lyricsto "altus" { \altusl }}
      \context Lyrics = "tenor" { \lyricsto "tenor" { \tenorl }}
      \context Lyrics = "bassus" { \lyricsto "bassus" { \bassusl }}
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=120
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "cantus" \new Voice = "cantus" { \cantus }
     \new Staff = "quintus" \new Voice = "quintus" { \quintus }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.midiInstrument = "voice oohs"
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

% MIDI для репетиции:
\book {
  \bookOutputSuffix "cantus"
  \score {
    \rehearsalMidi "cantus" "soprano sax" \cantusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "quintus"
  \score {
    \rehearsalMidi "quintus" "soprano sax" \quintusl
    \midi { }
  }
}


\book {
  \bookOutputSuffix "altus"
  \score {
    \rehearsalMidi "altus" "tenor sax" \altusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \bassusl
    \midi { }
  }
}
