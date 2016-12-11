\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Noe, noe, psallite"
  composer = "Jean Mouton (c. 1459-1522)"
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

global = {
  \key d \minor
  \time 2/2
  \dynamicUp
  \override AccidentalSuggestion.avoid-slur = #'inside
}

superius = \relative c'' {
  \global
  \secondbar  
  g2 g4 a |
  bes g d'2 |
  f2. e4 |
  c d( e f~ |
  f8 e d2 c4) |
  d1~ | \abr
  d2 r2 |
  r4 d2 c4 |
  d bes2( c4~ |
  c bes c) d~( |
  d8 c bes a bes4) a~( |
  a8 g g2 \ficta fis4) | \abr
  
  g1~ |
  g2 r |
  g2. a4 |
  bes2 c |
  g bes~ |
  bes4 a g2 |
  r d' | \abr
  d4 c bes2 |
  bes a |
  r4 c d f~( |
  f8 e d2 c4 |
  f4. e8 d4 c8 bes) |
  a1 | \abr
  R1*3 |
  c2 c4 c |
  d2 bes |
  bes4 c d2~ | \abr
  
  d4 c bes4.( a8 |
  g4 c4. bes8 a g |
  a1 |
  g2. f8 e |
  f4. g8 a2) | \abr
  d,4 g2( a4~ |
  a8 g g2 \ficta fis4) |
  g2 r |
  bes a4 g |
  bes c a2 |
  R1*2 \abr
  R1*6 \abr
  
  R1*3 |
  r2 r4 d~ |
  d d c a | \abr
  c2. bes4 |
  a1 |
  r4 bes2 bes4 |
  a4.( g8 f e) g4~( |
  g8 f bes2 a4) | \abr
  bes1 |
  r2 r4 d |
  c4.( bes8 a4) g |
  c2. d4 |
  bes4.( a16 g bes4) a |
  bes2 r | \abr
  
  R1*4 |
  r4 a bes4. c8 | \abr
  d4 d g,2 |
  r4 c c bes |
  a8( g a bes c a d4~ |
  d c bes2) |
  a r | \abr
  R1*4 |
  r2 r4 c | \abr
  
  d e f2~ |
  f4 f e2 |
  c4 d e f(~ |
  f8 e) d2( \ficta cis4) |
  d2 r4 d | \abr
  d d f4.( e8 |
  d4 c8 bes) c2
  R1*3 |
  bes2 a4 g | \abr
  bes c a2 |
  R1*5 |
  c2. d4 | \abr
  
   e f d2 |
   c4 bes( d4. c8 |
   bes8 a c2) bes4 |
   a c bes( a~ |
   a8 g g2) \ficta fis4 | \abr
   g2 bes |
   a4 g bes c |
   a2 r |
   R1*3 | \abr
   r4 d4.( c8 a bes |
   c4) d4.( c8 bes a |
   g4) a4.( g8 f e |
   d4 g2 \ficta fis4) |
   g1 \bar "|."
}


medius = \relative c' {
  \global
  R1*2 |
  d2 d4 e |
  f d a'2 |
  bes2. a4 |
  f g( a bes~ | 
  bes8 a a2 g4) |
  a1 |
  r4 f g a~ |
  a g2( f4 |
  g2) d~ |
  d1~ |
  
  d2 r |
  d2. d4 e4.( f8) g2~ |
  g4 d f2 |
  e d~ |
  d r |
  R1 |
  r2 d |
  g f4 d |
  a'2( g4) f |
  d2 a' |
  a4( g) f2 |
  f e |
  g2 g4 g |
  a2 f |
  f4 g a2~ |
  a4 g4 f4. e8 |
  d4( g4. f8 \ficta es d |
  \ficta e2) d2~ |
  
  d1 |
  r4 g a f~ |
  \autoBeamOff f8 e \autoBeamOn c4 f4.( e8 |
  d c d2) c4 |
  bes2 a |
  d4.( c8 d4) e |
  f( d4. c8 d4) |
  bes1 |
  R1*2 |
  f'2 e4 d |
  f g e4.( f8 |
  g e a4. g8 g4~ |
  g) \ficta fis g2~ |
  g r4 g~ |
  g g f d |
  f2. e4 |
  d2 r4 f~
  
  f e d4.( c8 |
  bes a bes4) g8( a bes c |
  d e f4. e8 d4) |
  c2 r4 bes4~( |
  bes8 c d4 e) f~( |
  f8 e c d e4 d~ |
  d \ficta cis) d2~ |
  d1~ |
  d2 r |
  R1*2 |
  r2 r4 g |
  a4. g8 f4 bes |
  a4.( g8 f e d4~ |
  d g2) \ficta fis4 |
  g g, bes4. c8
  
  d4 d g,2 |
  R1 |
  r2 r4 d' |
  e4. f8 g4 g |
  c,2 r4 g' |
  g f e8( d e f |
  g f a2 g4 |
  f4. e16 d e4 d8 e |
  f g a2 g4) |
  a2 r |
  R1 |
  r4 c, d e |
  f2. f4 |
  e2 c4 d |
  e f4.( g8 a4)
  
  g2( f4. e8 |
  d4) c2 g'4~ |
  \autoBeamOff g8 a \autoBeamOn bes4( g a~ |
  a8 g g f a2) |
  f r |
  g f4 f |
  bes2 f |
  R1*5 |
  f2 e4 d |
  f g e2~ |
  e4 d e f |
  g2 g4 a(~ |
  a8 g f2) e4 |
  f2 a
  
  g4 f2 bes,4 |
  c d2 f4 |
  g a2 g4 |
  e4.( f8 g4 f |
  f8[ e)] d([ c)] d2~ |
  d r |
  R1 |
  r2 f |
  e4 d f g |
  e4.( f8 g e a4~ |
  a8 g g2) \ficta fis4 |
  g2 f |
  e4 f2 d4 |
  e8( d c bes a2) |
  bes4( c) d2 |
  d1
}


tenor = \relative c' {
  \global
  R1*4 |
  r4 g g a |
  bes g d'2 |
  f2. e4 |
  c d( e f~ |
  f8 e d2 c4) |
  d2 r4 d |
  g, d'4.( c8 a4) |
  bes4.( c8 a2)
  
  g1 |
  R1*5 |
  d'2. e4 |
  f2 g |
  d f~ |
  f4 e d2 |
  f f4 e |
  d2 d |
  c r4 c
  d4 e4.( c8 d4 |
  e f4. e8 c4 |
  d4. e8 f2) |
  e2 r |
  R1 |
  r2 f2
  
  f4 f g2 |
  e c |
  c4 c d2 |
  bes bes4 c |
  d2. c4 |
  bes4.( a8 g4 c~ |
  c) bes a2 |
  g r |
  g' f4 e |
  d c f2 |
  R1*2
  R1*6
  
  R1 |
  r4 g2 g4 |
  f d f2~ |
  f4 e d2~ |
  d r |
  r r4 f~ |
  f e d4.( c8 |
  bes a bes4) g8( a bes c |
  d e f4 d \ficta es~ |
  es8 d bes4 c2) |
  bes d |
  c4. bes8 a4 g |
  c2 r |
  R1*3
  
  r2 r4 g' |
  g f e8( d e f |
  g e f4 d g~ |
  g8 f e d e4 d |
  e f) d2 |
  R1*3 |
  r4c d e |
  f2. f4 |
  e2 c4 d |
  e( f2) e4 |
  c( d4. c8 a4~ |
  a8 bes c4. bes8 a4 |
  g a4. bes8 c a |
  
  bes4 c) f,2 |
  a( c4. d8 |
  e4) f e c |
  d2( e) |
  d1 |
  r2 r4 d |
  d d f4.( e8 |
  d4 c8 bes) c4. d8 |
  \ficta es4( d4. c8 bes4) |
  a2 g |
  g' f4 e |
  d c f2 |
  R1*5 |
  r4 f4. f8 f4
  
  e( d) f2~( |
  f4 g) f d~ |
  d e f d~( |
  d c) d2( |
  c4 bes) a2 |
  g g' |
  f4 e d c |
  f2 r |
  R1*3 |
  r2 d |
  c4 bes a g |
  c2. d4 |
  bes( a8 g a4) a |
  g1
}

bassus = \relative c {
  \global
  R1*6 |
  d2 d4 e |
  f d a'2 |
  bes2. a4 |
  f g( a bes~ |
  bes8 a g2 f4 |
  g2) d
  
  r2 g~ |
  g4 a bes2 |
  c1 |
  R1 |
  g2. a4 |
  bes2 c |
  g bes~ |
  bes4 a g2~ |
  g d' |
  d4 c bes2 |
  bes a |
  r d, |
  f4.( g8 a2) |
  g4( c2 bes4 |
  a d4. c8 bes a |
  bes2) a~ |
  a r |
  R1*2
  
  bes2 bes4 bes |
  c2 a |
  f f4 f |
  g2 \ficta es |
  d4 e f2 |
  g4.( a8 bes4 a) |
  f g d2 |
  g1 |
  R1*2 |
  d'2 c4 bes |
  a g c2~ |
  c4 d bes( a8 g |
  a4) a g2 |
  r4 c2 c4 |
  bes g bes2~ |
  bes4 bes a2 |
  r4 bes2 bes4
  
  a4.( g8 f e g4~ |
  g8 f \ficta es d) es2 |
  d4 d'4.( c8 bes4~ |
  bes8 a a g bes4. a8 |
  g f bes4) a f~( |
  f8 g a bes c4 d) |
  a2 d, |
  R1*3 |
  r2 r4 g |
  a4. g8 f4 bes |
  a2 r |
  r r4 g |
  bes4. c8 d4 d |
  g,2 r4 g
  
  g f e8( d e f |
  g e a4. bes8 c4~ |
  c bes8 a) bes2 |
  r4 c c bes |
  a2 g |
  R1*4 |
  r4 f a bes |
  c2. bes4 |
  a2 f4 g |
  a bes4.( a8 f g |
  a g a4. g8 f4) |
  e( d) f2
  
  r2 r4 d |
  d8( e f g a bes c4~ |
  c bes c f,) |
  bes2( a) |
  d,1 |
  R1 |
  g2 f4 f |
  bes2 a4 f |
  g4.( f8 d4 g~ |
  g) \ficta fis g2 |
  R1*2 |
  d'2 c4 bes |
  a g c2 |
  c4 bes a2 |
  g4 c4.( bes8 a g |
  f4) a g2 |
  f1
  
  r4 bes4. bes8 bes4 |
  a4( g) bes2~ |
  bes4 a f g |
  a2 g4( d) |
  f( g) d2 |
  g2 r |
  R1 |
  r2 d' |
  c4 bes a g |
  c2. d4 |
  bes4( a8 g a4) a |
  g bes4.( a8 f g |
  a4) d,2 g4 |
  e f2 d4 |
  g( \ficta es d2) |
  g1
}

superiusl = \lyricmode {
  No -- e, no -- e, no -- e, psal -- li -- te no -- e, __ 
  psal -- li -- te no -- e, __ no -- e, __
  Hie -- ru -- sa -- lem, Hie -- ru -- sa -- lem, gau -- 
  de et læ -- ta -- re, et læ -- ta -- re,
  qui -- a ho -- di -- e na -- tus est __
  Sal -- va -- tor mun -- di. No -- e, no -- e, no -- e.
  Ja -- cet in præ --
  se -- pi -- o, ful -- get in __ cæ --
  lo. No -- e, __ no -- e, no -- e, __ no -- e.
  Al -- to -- li -- te por -- tas, prin -- ci -- pes, ve -- stras,
  et
  e -- le -- va -- mi -- ni, por -- tæ æ -- ter -- na -- les, et
  in -- tro -- i -- bit No -- e, no --
  e, no -- e. Do -- mi --
  nus vir -- tu -- tum ip -- se est rex glo -- ri --
  æ. No -- e, no -- e, no -- e,
  no -- e, __ no -- e.
}

mediusl = \lyricmode {
  No -- e, no -- e, no -- e, psal -- li -- te no --
  e, psal -- li -- te __ no -- e. __
  Hie -- ru -- sa -- lem, __ Hie -- ru -- sa -- lem, __
  gau -- de et læ -- ta -- re, gau -- de et __ læ -- ta -- re,
  qui -- a ho -- di -- e na -- tus est __ Sal -- va -- tor mun -- di, __
  qui -- a ho -- di -- e na -- tus est Sal --
  va -- tor mun -- di. No -- e, no -- e, no -- e, __
  no -- e. __ Ja -- cet in præ -- se -- pi -- o, ful --
  get in __ cæ -- lo, in __ cæ --
  lo __
  No -- e, no -- e, no -- e, __ no -- e. At -- to -- li --
  te por -- tas, At -- to -- li -- te por -- tas, prin --
  ci -- pes, ve -- stras,
  et e -- le -- va -- mi -- ni, por -- tæ æ -- ter --
  na -- les, æ -- ter -- na -- les,
  et in -- tro -- i -- bit
  No -- e, no -- e, no -- e. __ Quis est i -- ste rex glo -- ri -- æ? Do --
  mi -- nus vir -- tu -- tum ip -- se est rex glo -- ri -- æ. __
  No -- e, no -- e, no -- e, __ no --
  e, no -- e, no -- e, no -- e, __ no -- e.
}

tenorl = \lyricmode {
  No -- e, no -- e, no -- e, 
  psal -- li -- te no -- e, psal -- li -- te __ no --
  e. Hie -- ru --
  sa -- lem, Hie -- ru -- sa -- lem, gau -- de et læ -- ta -- re, et
  læ -- ta -- re, qui --
  a ho -- di -- e, qui -- a ho -- di -- e na -- tus est Sal --
  va -- tor mun -- di. No -- e, no -- e, no -- e.
  
  Ja -- cet in præ -- se -- pi -- o, __
  ful -- get in __ cæ -- 
  lo. No -- e, no -- e, no -- e.
  prin -- ci -- pes, ve -- stras,
  et e -- le -- va -- mi -- 
  ni, por -- tæ æ -- ter -- na --
  les, por -- tæ æ -- ter -- na -- les,
  et in -- tro -- i -- bit rex glo -- ri -- æ. No -- e, no --
  e, no -- e. Do -- mi -- nus
  vir -- tu -- tum ip -- se est rex __ glo -- ri --
  æ. No -- e, no -- e, no -- e,
  no -- e, no -- e, no -- e, no -- e, __ no -- e.
}

bassusl = \lyricmode {
  No -- e, no -- e, no -- e, psal -- li -- te no -- e.
  Hie -- ru -- sa -- lem, Hie -- ru -- sa -- lem, Hie -- ru --
  sa -- lem, __ gau -- de et læ -- ta -- re, et læ --
  ta -- re, __
  qui -- a ho -- di -- e, qui -- a ho -- di -- e na -- tus est
  Sal -- va -- tor mun -- di. No -- e, no -- e, no -- e, __
  no -- e, __ no -- e. Ja -- cet in præ -- se -- pi -- o, ful -- get
  in __ cæ -- lo, ful -- get in __ 
  cæ -- lo.
  No -- e, no -- e, no -- e. At -- to -- li -- te por -- tas, prin --
  ci -- pes ve -- stras, prin -- ci -- pes, ve -- stras,
  et e -- le --
  va -- mi -- ni, por -- tæ æ -- ter -- na -- les,
  æ -- ter -- na -- les,
  et in -- tro -- i -- bit rex glo -- ri -- æ.
  No -- e, no -- e, no -- e. Quis est i -- ste rex __ glo -- ri -- æ?
  Do -- mi -- nus vir -- tu -- tum ip -- se est rex __ glo -- ri --
  æ. No -- e, no -- e, no -- e, no -- e, __ no --
  e, no -- e, no -- e, no -- e, no -- e.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for superius
      \new Staff = "superius" \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "superius" { \superius } }   
      \new Lyrics = "superius"
      
      %staff for medius
      \new Staff = "meduis" \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "medius" { \medius } }   
      \new Lyrics = "medius"
      
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
      
      %staff for bassus
      \new Staff = "bassus" \with {
        instrumentName = "Baixo"
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bassus" { \clef "bass" \bassus } }
      \new Lyrics = "bassus"
      
      %lyrics
      \context Lyrics = "superius" { \lyricsto "superius" { \superiusl }}
      \context Lyrics = "medius" { \lyricsto "medius" { \mediusl }}
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
     \new Staff = "superius" \new Voice = "superius" { \superius }
     \new Staff = "medius" \new Voice = "medius" { \medius }
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
  \bookOutputSuffix "superius"
  \score {
    \rehearsalMidi "superius" "soprano sax" \superiusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "medius"
  \score {
    \rehearsalMidi "medius" "soprano sax" \mediusl
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
