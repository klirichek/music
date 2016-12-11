\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Reges Tharsis et Insulae"
  composer = "(Attributed) William Byrd (c1540-1623)"
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
invisibleTime = \once \override Staff.TimeSignature #'break-visibility = #all-invisible 

ittwo = { \bar ";" \invisibleTime\time 2/4 }
itfour = { \invisibleTime\time 4/4 }

global = {
  \key d \minor
  \time 4/4
  \dynamicUp
  \override AccidentalSuggestion.avoid-slur = #'outside
}

cantor = \relative c' {
  \global
  \cadenzaOn d2 c4 ( d c a) c( c d) d2 \cadenzaOff \bar "||"
}

soprano = \relative c'' {
  \global
  \secondbar
  \tempo "From Psalm 71 Verse 10" 4=115
  r2 a4 a |
  d2 bes4 bes |
  f' e8( d cis b cis4) |
  d2 r |
  r4 f?~ f8 f e4 | \abr
  d4. d8 cis4 c~ |
  c8 c d4 e4. e8 |
  d2 r |
  \ittwo f?4. f8 | 
  \itfour e4 d~ d8 d c4 | \abr
  
  r e2 e4 |
  f2 d4 d |
  e8 f( g4 c, e~ |
  e8 d~ d4 \ficta cis8 \ficta b \ficta cis!4) |
  d2 r | \abr
  R1 |
  r2 r4 f~ |
  f8 f e4 d c8( bes?) |
  a2 r | \abr
  r d~ |
  d4 d f e8( d) |
  c4 a d4. c16( bes|
  c2) a4 a |
  c4. bes8 a g( f4 | \abr
  
  a2) a |
  R1 |
  r4 f'~ f e |
  e4. e8 c4 e(~ |
  e8 d c4) g' g,8 g | \abr
  a4 c~( c bes) |
  a a8 a c4 e(~ |
  e d) \ficta cis \ficta c8 c |
  d4 f(~ f e~ | \abr
  e8 d g4~ g8 f e d |
  f4 e) c2 |
  R1 |
  r4 a~ a8 g f e( | \abr
  
  f8 g a bes) c4 e( |
  d f~ f8 e cis4) |
  d2 d~ |
  d4 c bes4. bes8 |
  \autoBeamOff c \autoBeamOn bes( g4) a \autoBeamOff a8 \autoBeamOn bes8( | \abr
  c d e c f4 e8 d~ |
  d e cis4) d \autoBeamOff a8 \autoBeamOn bes( |
  c d e f g f d4) |
  cis4. d8 e4( cis | \abr
  fis4. e8 d2) d1 \bar "|."
}


alto = \relative c' {
  \global
  r2 d~ |
  d4 d g2 |
  f4 f c'?4. bes?8(
  a g f4 bes a8 g) |
  fis4 a~ a8 a a4 |
  a4. a8 a4 g~ |
  g8 g g4 e4. e8 |
  fis2 r |
  \ittwo R2 |
  \itfour r4 bes4~  bes8 bes a4
  
  g4. f8 e4 d'~ |
  d8 bes a4 g( f |
  bes4.) a8( g2) |
  a4 a~ a8 g( e4) |
  fis2 r |
  r4 c'~ c8 c b4 |
  a4. g8( f e d4) |
  cis c'?~ c8 b([ a g)] |
  fis4 a2 a4 |
  bes2. bes4 |
  a2. a4 |
  a4.( g8 f e d4) |
  e2 r |
  R1
  
  r2 d4 d |
  a'4. g8 f4 e |
  d2 a' |
  r c |
  \ficta b4 a8 a g4 e( |
  a g8 f)  e4 d8 d |
  f4 a~( a g |
  a d,) e2 |
  r r4 a8 a |
  g a( bes4 a f8 g |
  a4 g8 f) e4 f8 f |
  d4 c8( bes a4. bes8 |
  c4 d) e a~ |
  
  a8 g f4 e( c'~ |
  c8 bes a4~ a8 g e4) |
  fis2 r |
  R1*2 |
  c'2 f,4. g8( |
  a) a g4 f( e8 d) |
  cis4 a d8( e f g) |
  a2 r4 a~ |
  a b~( b8 a g4) |
  fis1
}


tenor = \relative c' {
  \global
  R1 |
  r2 d |
  f e |
  f g |
  d2. e4 |
  f2 e~ |
  e4 d \ficta cis2 |
  d d~ |
  \ittwo d4 c |
  \itfour d2 f |
  
  e c |
  f f |
  g e |
  f e |
  d d |
  e f |
  e d |
  e e |
  d d |
  g g |
  f f |
  e d |
  c d |
  e f |
  
  e d |
  c d |
  d c |
  c e |
  g e |
  f g |
  d e |
  f e |
  d c |
  d d |
  c c |
  d f |
  f e |
  
  d c |
  d e |
  d d |
  f g |
  e f |
  e d |
  e f |
  e d |
  e e |
  d1~ |
  d
}


baritone = \relative c {
  \global
  f2. f4 |
  bes1 |
  a4 f a4. g8( |
  f e d4 d' g,) |
  a r a4. a8 |
  f4 d8 d e4 e( |
  g4.) g8( a2) |
  a2 r |
  \ittwo r4 c~ |
  \itfour c8 c bes4 a8 g a4
  
  r c~ c8 bes a4 |
  d8 d c4 d2~ |
  d4 d c c~ |
  c8 bes( a4) a2 |
  a4. a8 a2 |
  R1 |
  r4 c~ c8 c f,4 |
  a4. bes8( c d e c) |
  d4 f?~ f8 f e4 |
  d4. c8( bes a g4) |
  a2 f4 f |
  c'4. c8 bes4 f |
  a4.( g8 f e d4) |
  a2 a'4 a |
  
  c4. c8 f,4 d |
  f2 f4 r |
  r2. c'4~ |
  c bes a8[ a g8.] a16( |
  b4 c~ c g) |
  c c,8 c e4 g~( |
  g8 f f4) e c'~( |
  c8 bes a4~ a) g |
  r2 r4 c(~ |
  c8 bes d4 a bes) |
  c r g8 g a4 |
  f( g) a a~ |
  a8 g( f d a'4. g8
  
  f e) d4 r a' |
  g( f a2) |
  a r |
  r bes |
  g4 c( c8) c a4 |
  a e f8 g( a bes |
  c?2 bes4 a) |
  a2 r |
  r a~ |
  a4 d~( d8 c b4) |
  a1
}

bass = \relative c {
  \global
  d2. d4 |
  bes2 g8 a( bes c) |
  d4. d8 a4 a |
  d4. d8 g,2 |
  r4 d'~ d8 d c4 |
  d4. d8 a4 c?~ |
  c8 c bes4 a4. a8 |
  d2 r4 bes~ |
  \ittwo bes8 bes a4 |
  \itfour g4. g8 f2
  
  r a~ |
  a4 a bes2 |
  g4 g a8 bes( c4) |
  f, f a4. a8 |
  d2 r4 f?~ |
  f8 f e4 d4. d8 |
  a2 bes |
  a1 |
  d2 r |
  g,2. g4 |
  d'2. d4 |
  a a bes2 |
  a d4 d |
  a'4. g8 f e( d4)
  
  a2 d4 f~ |
  f e d8 d c4 |
  bes2 a |
  c2. c4 |
  g c~ c2 |
  f, r |
  R1 |
  r4 f8 f a4 c~( |
  c bes a2 |
  bes4 g d'2) |
  a4 c~ c8 c a4 |
  bes( g) f f'~ |
  f8 e d4 c( a |
  
  d2) a |
  bes4( d a2) |
  d r4 bes~ |
  bes a bes8 bes g4 |
  c2 f,4 f |
  a2 d4 f~ |
  f e d4. d8 |
  a2 bes |
  a r4 a |
  fis( g~ g2) |
  d'1
}

cantorl = \lyricmode {
  Re -- ges __ Thar -- sis
}

sopranol = \lyricmode {
  Re -- ges Thar -- sis et in -- su -- læ mu -- ne -- ra
  of -- fer -- ent, mu -- ne -- ra of -- fer -- ent, mu -- ne -- ra of -- fer -- ent,
  
  re -- ges Thar -- sis et in -- su -- læ
  mu -- ne -- ra of -- fer -- ent,
  re -- ges A -- ra -- bum et Sa -- ba -- do -- na do -- mi -- no De --
  o do -- na do -- mi -- no De -- o, do -- mi --
  no De -- o, do -- mi -- no De -- o, do -- mi -- no De --
  o, do -- mi -- no De --
  o, De -- o, do -- na do -- mi -- no De -- o ad -- du --
  cent, ad -- du -- cent, ad -- du --
  cent.
}

altol = \lyricmode {
  Re -- ges Thar -- sis et in -- su -- læ mu -- ne -- ra
  of -- fer -- ent, mu -- ne -- ra of -- fer -- ent, mu -- ne -- ra
  of -- fer -- ent, mu -- ne -- ra of -- fe -- rent, of -- fer -- ent,
  mu -- ne -- ra of -- fer -- ent, of -- fer -- ent, re -- ges
  A -- ra -- bum et Sa -- ba,
  re -- ges A -- ra -- bum et Sa -- ba do -- na do -- mi -- no De --
  o, do -- mi -- no De -- o, do -- mi -- 
  no De -- o, Do -- mi -- no De -- o, Do --
  mi -- no De -- o,
  do -- na do -- mi -- no De -- o ad -- du -- cent, ad --
  du -- cent.
}

tenorl = \lyricmode {
  et in -- _ _ _ su -- _
  _ _ _ _ _ læ __ _ mu -- _
  _ _ ne -- _ ra __ _ _ _ of -- fer --
  _ _ _ _ _ ent, __ _ re -- _
  ges __ _ _ _ A -- _ ra -- _ _ 
  _ _ _ _ bum __ _ et Sa -- ba __ _ 
  _ _ do -- _ _ _ _ _
  _ na __ _ do -- mi -- no De -- _
  _ _ _ _ o ad -- _ _ _ _
  _ du -- _ _ _ _ _ cent __
  _
}

baritonel = \lyricmode {
  Re -- ges Thar -- sis et in -- su -- læ mu -- ne --
  ra of -- fer -- ent, of -- fer -- ent, mu -- ne -- ra of -- fer -- ent,
  mu -- ne -- ra of -- fer -- ent, mu -- ne -- ra of -- fer -- ent, of -- fer -- ent,
  mu -- ne -- ra of -- fer -- ent, mu -- ne -- ra
  of -- fer -- ent re -- ges A -- ra -- bum et Sa -- ba, re -- ges
  A -- ra -- bum et Sa -- ba do -- na do -- mi -- no De --
  o, do -- mi -- no De -- o, De -- o, De --
  o, do -- mi -- no De -- o ad -- du --
  cent, ad -- du -- cent, do -- na do -- mi -- no
  De -- o ad -- du -- cent, ad --
  du -- cent.
}

bassl = \lyricmode {
  Re -- ges Thar -- sis et in -- su -- læ, et in -- su -- læ mu -- ne -- ra
  of -- fer -- ent, mu -- ne -- ra of -- fer -- ent, mu -- ne -- ra of -- fer -- ent,
  re -- ges Thar -- sis et in -- su -- læ, et in -- su -- læ mu -- 
  ne -- ra of -- fer -- ent, of -- fer -- ent,
  re -- ges A -- ra -- bum et Sa -- ba, re -- ges A -- ra -- bum et __
  Sa -- ba do -- na do -- mi -- no De -- o, do -- mi -- no De --
  o, do -- mi -- no De --
  o, do -- mi -- no De -- o, do -- mi -- no De --
  o, De -- o, do -- na do -- mi -- no De -- o ad --
  du -- cent, do -- na do -- mi -- no De -- o ad --
  du -- cent.
}

\bookpart {
  \score {
    \new Staff = "cantor" \with {
        instrumentName = "Cantor"
        midiInstrument = "choir aahs"
      } <<
      { \new Voice = "cantor" { \clef "G_8" \cantor } }   
      \new Lyrics \lyricsto "cantor" { \cantorl }
      >>
  } 
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for soprano
      \new Staff = "soprano" \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "soprano" { \soprano } }   
      \new Lyrics = "soprano"
      
      %staff for alto
      \new Staff = "alto" \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "alto" { \alto } }
      \new Lyrics = "alto"
           
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
      
      %staff for baritone
      \new Staff = "baritone" \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "baritone" { \clef bass \baritone } }  
      \new Lyrics = "baritone"
           
      %staff for bass
      \new Staff = "bass" \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bass" { \clef "bass" \bass } }
      \new Lyrics = "bass"
      
      %lyrics
      \context Lyrics = "soprano" { \lyricsto "soprano" { \sopranol }}
      \context Lyrics = "alto" { \lyricsto "alto" { \altol }}
      \context Lyrics = "tenor" { \lyricsto "tenor" { \tenorl }}
      \context Lyrics = "baritone" { \lyricsto "baritone" { \baritonel }}
      \context Lyrics = "bass" { \lyricsto "bass" { \bassl }}
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
      \tempo 4=115
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alt" \new Voice = "alt" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "baritone" \new Voice = "baritone" { \baritone }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 115 4)
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
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranol
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alt"
  \score {
    \rehearsalMidi "alt" "soprano sax" \altol
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
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "soprano sax" \baritonel
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassl
    \midi { }
  }
}
