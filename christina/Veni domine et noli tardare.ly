\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Veni Domine et noli tardare"
  subtitle = "in Adventu Domini"
  composer = "Francisco Guerrero"
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
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key d \minor
  \time 2/2
  \dynamicUp
%  \autoBeamOff
}

cantusi = \relative c'' {
  \global
  \secondbar  
  R1 |
  r2 a~ |
  a4 f g bes |
  a2 r4 a |
  bes d2 c4 |
  bes a8 g f4. g8 |
  a f g4. f8 d4 | \abr
  e2 f4 a |
  g d f2 |
  R1 |
  a2 a4 c |
  bes a8 g f4 e~ |
  e8 d d2 cis?4 |
  d2 r | \abr
  f2 g4 bes~ |
  bes a g2~ |
  g4 c, d2 |
  r r4 a'~ |
  a g f f |
  e4. d8 e f g e | \abr
  
  f4 g2 fis?4 |
  g bes2 bes4 |
  c4. bes8 a4 g |
  f bes4. a8 g f |
  g4 g f2 |
  e4 d8 c d4 f | \abr
  es2. d4 |
  d2 c |
  r4 c' c c |
  bes2 a4. g16 a |
  bes8 a g f g a4 g8 |
  a2 r4 d, | \abr
  g4. g8 g4 fis? |
  g bes a g8[ f] |
  g4. a8 bes4. a8 |
  g f g4 f e |
  g2 f |
  d4 d'2 c4~ | \abr
  
  c bes8 a bes4 g |
  a f c'2~ |
  c4 bes a2 |
  g r4 d |
  e c g'2~ |
  g4 f e c |
  d4. e8 f2 | \abr
  R1 |
  a2. a4 |
  a2. f4 |
  g4. a8 bes4 a |
  f g a2 |
  g4 bes4. a8 g4 |
  f a2 f4 | \abr
  g4. a8 bes4. a8 |
  g4 d f2 |
  g r |
  r4 d es2 |
  c4 d4. c8 d[ e] |
  f4 a2 f4 | \abr
  
  g bes a2~ |
  a r4 d, |
  e g2 f4 |
  e2 d |
  R1*2 | \abr
  d'2. c4 |
  bes2 a |
  g4 bes2 a4~ |
  a g d'2 |
  r4 c4 c g |
  bes2 a4 f | \abr
  g bes a a |
  g d f g~ |
  g g4. fis?8 fis4 |
  g bes c es?~ |
  es d c2 |
  b1 | \bar "|."
}


cantusii = \relative c'' {
  \global
  R1*7
  a2. f4 |
  g bes a2 |
  r4 d, e g~ |
  g f e2 |
  d2 r |
  R1*3 |
  d'2. bes4 |
  c es? d2 |
  r4 g, a c~ |
  c bes a2 |
  g1
  
  R1*5 |
  a2. f4 |
  g bes a2 |
  r4 d, e g~ |
  g f e2 |
  d r |
  R1*3 |
  d'2. bes4 |
  c es? d2 |
  r4 g, a c~ |
  c bes a2 |
  g1 |
  
  R1*5 |
  a2. f4 |
  g bes a2 |
  r4 d, e g~ |
  g f e2 |
  d r |
  R1*3 |
  d'2. bes4 |
  c es? d2 |
  r4 g, a c~ |
  c bes a2 |
  g1 |
  R1*2
  
  R1*3 |
  a2. f4 |
  g bes a2 |
  r4 d, e g~ |
  g f e2 |
  d r |
  R1*3 |
  d'2. bes4 |
  c es? d2 |
  r4 g, a c~ |
  c bes a2 |
  g1~ |
  g~ |
  g
}


altus = \relative c' {
  \global
  d2. bes4 |
  c es? d2 |
  r4 d e g~ |
  g f e d |
  r d f e |
  d c d4. e8 |
  \autoBeamOff f d \autoBeamOn e4. d8 d4~ |
  d cis? d2 |
  c4 bes d4. e8 |
  f2 e4 c |
  d2. c4 |
  d4. d8 a bes c4 |
  g2 r4 a~ |
  a f g bes |
  a2 r |
  r d |
  es?4 g2 f4 |
  e d f f~ |
  f8 e d c d4 c~ |
  c g c e
  
  d2 r4 d~ |
  d d es4. d8 |
  c4 c d bes |
  a g bes c~ |
  c8 bes g4 a d |
  c f4. e8 d[ c] |
  bes a g2 fis?4 |
  g2 r |
  r g' |
  g4 g f4. e8 |
  d c bes a bes4 bes |
  a2 d |
  r4 g, d'4. d8 |
  d4 bes d es? |
  c2 d |
  bes4 c2 c4 |
  d2. a4 |
  bes8[ c] d c16 d es?4 c
  
  d2 g, |
  r4 d' e c |
  g'2. f4 |
  e2 d |
  r4 a bes g |
  d'2. c4 |
  bes4. g8 a2~ |
  a4 g8 f g2 |
  a4 d2 cis?4 |
  d a2 a4 |
  bes2 g4 a |
  bes8 c d e f4 c~ |
  c bes8 a g4 g |
  a f'2 d4 |
  es c bes g |
  bes2 a |
  g d4 d'~ |
  d bes c4. d8 |
  es?4 d2 bes4 |
  c4. bes8[ a g] a4
  
  g g' f e |
  f4. e8 d c d4~ |
  d8 c c4 d2 |
  r4 c d f |
  e d8 c d4 a |
  bes d4. c8 c4 |
  d2 g |
  r4 g2 f4 |
  e d4. e8 f4 |
  c g' f d |
  f2 e |
  d2 r4 d |
  es? g2 fis?4 |
  g2 c, |
  r r4 a |
  bes d c2~ |
  c4 d es2 |
  d1
}


tenor = \relative c' {
  \global
  R1*3 |
  r4 a2 f4 |
  g bes a2 |
  r4 a bes d~ |
  d c bes2 |
  a r4 d, |
  e g f8 e f g |
  a4 bes g2 |
  a1 |
  f4. e8 f4 g~ |
  g8 f d4 e2 |
  d4 a' bes d |
  c d g,4. a8 |
  bes g a4 bes g |
  c2 bes4 a |
  g8[ a] bes a16 bes c2 |
  r4 g a2 |
  c g4 c |
  
  bes a8 g a2 |
  g r |
  r r4 d'~ |
  d d es4. d8 |
  c4 c d a~ |
  a a bes4. a8 |
  g4 g a2 |
  bes g4 g |
  c2. g4 |
  bes4. c8 d4 a |
  r g g g |
  f4. g8 a4 bes |
  g2 a |
  g r |
  R1*2 |
  r4 g d'4. d8 |
  d4 bes c es?
  
  d g, d' c~ |
  c bes a g |
  r g a f |
  c'2. bes4 |
  a2 r |
  r r4 a |
  bes g d' c~ |
  c b?8 a b4 c |
  d d, a'2 |
  r d~ |
  d4 d d2~ |
  d4 bes c4. d8 |
  es?4 d bes c |
  d1 |
  r2 r4 d~ |
  d bes c4. d8 |
  es?4 d4. c8 a4 |
  bes8 a g f g2 |
  r4 bes2 g4 |
  a4. bes8 c4 d |
  
  bes d2 cis?4 |
  d4. c8 a4 bes |
  g2 a~ |
  a r4 d, |
  e g2 f4~ |
  f bes a g |
  a4. bes8 c2 |
  g4. f8 d2 |
  r4 d'2 c4~ |
  c bes2 a4~ |
  a8 g a bes c4 c |
  bes4. c8 d2 |
  R1 |
  r4 bes c es?~ |
  es d8 c d a d4~ |
  d8 c bes a g4 es8 f |
  g a bes4 es,4. f8 |
  g1
}

bassus = \relative c {
  \global
  R1*8 |
  r2 d~ |
  d4 bes c es? |
  d2 r4 a |
  bes d2 c4 |
  bes2 a d g, |
  r4 d' e g~ |
  g f g2 |
  c, r4 d |
  e g f4. e8 |
  f4 g d f |
  c1
  
  d1 |
  r4 g2 g4 |
  a4. g8 f4 g |
  d g2 c,4 |
  es es d2 |
  r4 d2 d4 |
  es4. d8 c4 d |
  g,2 c4. d8 |
  e4 f c8 d e f |
  g2 d |
  g, r4 g |
  d'4. d8 d4 bes |
  c es? d2 |
  g, r |
  r4 c g'4. g8 |
  g4 e f a |
  g2 d |
  g r4 c,
  
  g'4. g8 g4 e |
  f d c2 |
  r d |
  e4 c g'2~ |
  g4 f g es? |
  d8 e f g a2 |
  g d4 f~ |
  f g e2 |
  d r4 a |
  d2 d |
  g,4 g'2 f4 |
  d g f2 |
  c4 g'4. f8 es4 |
  d1 |
  r2 r4 g~ |
  g g f2 |
  c4 g'2 f4 |
  g2 c,~ |
  c4 bes8 a g4 g' |
  f f2 d4
  
   g2 a |
   r4 d,2 bes4 |
   c es? d2 |
   R1 |
   r2 d |
   bes c4 es? |
   d2 r |
   R1 |
   g2 f |
   es d4. c8 |
   d e f4 c8 d e f |
   g2 d |
   r d |
   es?4 g f c8 d |
   es f g4 d2 |
   g c, |
   c4 bes c2 |
   g1
}

cantusil = \lyricmode {
  Ve -- ni Do -- mi -- ne et no -- li tar -- da -- _ _ re, et no -- li tar -- _ da --
  _ _ _ _ _ re et no -- li tar -- _ _ _ _ _ da -- _ re
  et no -- li tar -- da -- _ re et no -- li tar -- da -- _ _ _ _ _
  
  _ _ _ re. Ve -- ni ad sal -- van -- dum nos, ve -- _ _ _ _ ni ad sal -- _ _ _ _ 
  _ van -- dum nos Do -- mi -- ne De -- us __ _ _ _ _ _ _ _ no -- _ ster, o --
  sten -- de fa -- ci -- em tu -- am, o -- _ sten -- _ de __ _ fa -- _ _ ci -- em tu -- _ am, tu -- _
  
  _ _ am et sal -- vi e -- ri -- _ mus et sal -- vi e -- _ _ _ _ ri -- mus.
  Sic -- ut ma -- ter con -- so -- la -- tur fi -- li -- os, __ _ _ _ _ _ i -- ta
  con -- so -- la -- _ _ be -- ris nos con -- so -- la -- be -- _ ris __ _ nos. Ve -- ni
  
  Do -- mi -- ne et no -- li tar -- da -- re,
  et gau -- de -- bit cor no -- _ _ strum cor -- de per -- fe -- cto, et
  no -- li tar -- da -- re, et no -- li __ tar -- _ da -- re, et no -- li __ tar -- da -- re.
}

cantusiil = \lyricmode {
  Ve -- ni Do -- mi -- ne et no -- li tar -- da -- re.
  Ve -- ni Do -- mi -- ne et no -- li tar -- da -- re.
  
  Ve -- ni
  Do -- mi -- ne et no -- li __ tar -- da -- re.
  Ve -- ni Do -- mi -- ne et no -- li __ tar -- da -- re.
  
  Ve -- ni Do -- mi -- ne
  et no -- li __ tar -- da -- re. Ve -- ni
  Do -- mi -- ne et no -- li __ tar -- da -- re.
  
  Ve -- ni Do -- mi -- ne et no -- li __
  tar -- da -- re. Ve -- ni
  Do -- mi -- ne et no -- li __ tar -- da -- re. __
}

altusl = \lyricmode {
  Ve -- ni Do -- mi -- ne et no -- li __ tar -- da -- re ve -- ni Do -- mi -- ne et no -- li tar -- da -- _ _
  _ re, ve -- ni Do -- _ _ mi -- ne et no -- li tar -- da -- _ _ re ve -- ni Do -- mi --
  ne et no -- li tar -- da -- re, et no -- _ _ _ _ li __ tar -- da -- _
  
  re. Ve -- ni ad sal -- van -- dum nos, ve -- ni ad sal -- van -- _ _ dum nos, ad sal -- _ van -- _
  _ _ _ dum nos Do -- mi -- ne De -- _ _ _ _ _ _ us no -- ster
  o -- sten -- de fa -- ci -- em tu -- _ am, o -- sten -- de fa -- ci -- em _ _ _ _ _ _
  
  tu -- am et sal -- vi e -- _ ri -- mus et sal -- vi e -- ri -- mus, _ _
  et __ _ sal -- vi e -- ri -- mus. Sic -- ut ma -- ter con -- so _ _ _ _ la -- tur __ _ fi -- li -- os, i -- ta
  con -- so -- la -- be -- ris nos,__ _ _ i -- ta con -- so -- la -- be -- ris nos, __ _ _ _ _
  
  _ et no -- li tar -- _ da -- _ _ _ _ re et no -- li tar -- da -- _ re et no -- li tar -- da --
  _ re et gau -- de -- bit cor no -- strum cor -- de per -- fe -- _ cto et
  no -- li tar -- da -- re et no -- li tar -- _ da -- re.
}

tenorl = \lyricmode {
  Ve -- ni Do -- mi -- ne et no -- li __ tar -- da --
  re et no -- li tar -- _ _ _ _ _ da -- re, et no -- li tar -- _ _ da -- re, et no -- li
  tar -- da -- _ _ _ _ _ re, et no -- li tar da -- _ _ _ _ re et no -- li tar -- da --
  
  _ _ _ _ re. Ve -- ni ad sal -- van -- dum nos, ve -- ni ad sal --
  van -- dum nos Do -- mi -- ne De -- us no -- _ _ ster Do -- mi -- ne De -- _ _ _
  us no -- ster o -- sten -- de fa -- ci -- em tu --
  
  am et sal -- vi __ e -- ri -- mus et sal -- vi e -- ri -- mus et sal -- vi e -- ri --
  mus. __ _ _ _ _ _ _ Sic -- ut ma -- ter con -- so -- la -- tur fi -- li -- os
  i -- ta con -- so -- la -- be -- _ _ ris __ _ _ _ nos i -- ta con -- so -- la -- be --
  
  _ _ ris nos __ _ _ _ _ _ et no -- li tar -- da -- _ _
  _ _ _ _ _ re et gau -- de -- bit __ _ _ _ _ cor no -- _ strum
  et no -- li __ tar -- _ da -- _ _ _ _ _ re tar -- _ _ _ _ da -- _ re.
}

bassusl = \lyricmode {
  Ve -- ni Do -- mi -- ne et no -- li tar -- da -- _ _ re
  et no -- li __ tar -- da -- re et no -- li tar -- _ _ _ _ _ da --
  
  re. Ve -- ni ad sal -- van -- dum nos, ad sal -- van -- dum nos ve -- ni
  ad sal -- van -- dum nos Do -- mi -- ne De -- us __ _ _ _ _ no -- ster, o -- sten -- de fa -- ci --
  em tu -- _ am o -- sten -- de fa -- ci -- em __ _ tu -- _ am o --
  
  sten -- de fa -- ci -- em tu -- am et sal -- vi e -- ri -- mus, __ _ _ _ _ _ _ et sal -- vi __
  e -- ri -- mus. Sic -- ut ma -- ter con -- so -- la -- _ tur fi -- _ _ li -- os
  i -- ta con -- so -- la -- be -- ris nos, __ _ _ _ et no -- li tar --
  
  da -- re ve -- ni Do -- mi -- ne ve -- ni Do -- mi --
  ne et gau -- de -- bit __ _ _ _ _ cor __ _ _ _ no -- strum
  et no -- li tar -- da -- _ _ _ _ re, et no -- li tar -- da -- re.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for cantus I
      \new Staff = "cantusi" \with {
        instrumentName = \markup "Cantus I"
        shortInstrumentName = "CI"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "cantusi" { \cantusi } }   
      \new Lyrics = "cantusi"
      
      %staff for cantus II
      \new Staff = "cantusii" \with {
        instrumentName = \markup "Cantus II"
        shortInstrumentName = "CII"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "cantusii" { \cantusii } }   
      \new Lyrics = "cantusii"
      
      %staff for altus
      \new Staff = "altus" \with {
        instrumentName = \markup "Altus"
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "altus" { \clef "G_8" \altus } }  
      \new Lyrics = "altus"
      
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = \markup "Tenor"
        shortInstrumentName = "T"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
          
      %staff for bassus
      \new Staff = "bassus" \with {
        instrumentName = \markup "Bassus"
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bassus" { \clef "bass" \bassus } }
      \new Lyrics = "bassus"
      
      %lyrics
      \context Lyrics = "cantusi" { \lyricsto "cantusi" { \cantusil }}
      \context Lyrics = "cantusii" { \lyricsto "cantusii" { \cantusiil }}
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
      \tempo 4=90
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "cantusi" \new Voice = "cantusi" { \cantusi }
     \new Staff = "cantusii" \new Voice = "cantusii" { \cantusii }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
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

% MIDI для репетиции:
\book {
  \bookOutputSuffix "cantusi"
  \score {
    \rehearsalMidi "cantusi" "soprano sax" \cantusil
    \midi { }
  }
}

\book {
  \bookOutputSuffix "cantusii"
  \score {
    \rehearsalMidi "cantusii" "soprano sax" \cantusiil
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
