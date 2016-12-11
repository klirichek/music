\version "2.18.2"

#(set-global-staff-size 17)

\header {
  title = "Nesciens Mater"
  composer = \markup { \right-column { "Walter Lambe" "(Late 15th cen.)" } }
  % Удалить строку версии LilyPond 
  tagline = ##f
}

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key g \major \time 2/2 
%  \override AccidentalSuggestion.avoid-slur = #'inside
  \override NoteHead.style = #'baroque
  \autoBeamOff
}
%con = { \cadenzaOn }
%coff = { \cadenzaOff \bar "|" }

con = { \set Staff.automaticBars=##f }
coff = { \set Staff.automaticBars=##t \bar "|" }

scoreS = \relative c'' {
  \override Score.BarNumber.break-visibility = #all-visible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)
   \global
   R1*17
   r2 b2~
   
   %page 2
   b2 g | fis4 e d2 | \con b' c4 b2 a4 d2 \coff | a4 b c d | \con b2 e4 d4. c8 b4 a2 \coff |
   g4 fis d2 | \con g4 a b d4. c8[ b a ] b4. a8 \coff | \[ g2 fis \] | g4 a b8 d4 c8 | \con b4 a4. g8 g2 fis4 g2~ \coff |
   g2 r2 | R1*4 | \con e'2 d4 d2 b4 \[ d2 \coff
   
   %page 3
   \con e2. \] e4. d8 c4. b8 a4 \coff | g b2 g4 | \con fis2 fis1 e4 fis \coff | \con d2 r4 d'2 b d4. c8 b4 a2 \coff |
   a1 | \con b4 g a fis2. g2 \coff | \con b1. \ficta cis2 \coff | d1 | b |
   r | \con r2 e2. g4. fis8 e4 \coff | \[ d1 | b1 \] | \con r2 \[ e2. c2 \] a4 \coff | b2 c4 e4~
   
   %page 4
   \con e8[ d] d4 b \[ e2 cis \]  e4. d8 \ficta cis4 b2. a2 fis8[ g] \coff | \[ e2 b'2 \] | \con a4 b g \[ b2. d2 \]  \coff |
   b4 e b d | cis b2 r4 | a4 b e, fis | g fis2 r4 | g a e g | fis e4. fis8[ g a] | b[ a] b[ cis] d4 e~ |
   \con e8[ d16 \fictab c?] b8[ c] a4 g8 c4 b8 a4. \ficta gis16[ \ficta fis!16] \ficta gis!4 \coff | a2 r2 | R1*18
   
   %page 5
   d2 d | e4. d8 c2 | b1 | \con d2. e2 d4 b2 \coff |
   
   %page 6
   r2 d | \[ c a \] | r4 d4 b g | fis2 a4. g8 | fis4 e d2 | r \[ b' | e \] \[ d |
   \con g \] fis2. d1 b2 d4. c8 b4 r a4. g8 fis4 e1 r2 \coff \con r4 e'4. d8 c4. b8 a2 g4 \coff
   fis2 r | \con d' d1. \coff | b1 | r2 \[ d | c \] a | b1\fermata \bar "|."
}


scoreA = \relative c' { 
  \global
  R1 r2 d4. d8 | \con c2\[ e1 g b\] a4. g8 \coff |
  fis4 e4. d8[ c b] | \con c4 a c2. b4 b2 \coff | r4 b'2 a4 | g4. fis8 e4 d | fis2 r4 a4~ |
  a fis g a | \con fis d e d4. c8 b4 a d4. b8[ d e] fis[ g a fis] \coff | \con g8 fis4 e8 g1 r2 \coff |
  
  %page 2
  R1*14
  \con r2 g2. b4. a8 g4. fis8 e4 d r \coff | g2 \[ d | \con e2. \] g4. fis8 e4 d2 \coff r2 g2
  
  %page 3
  \[ g1 | e \] | g | r4 a fis d | a'1 | fis4 d e d | r g2. | d4 e f2~ |
  f1 | \con d2. d4. c8[ b a] b2 \coff | \con r4 g'2 g g fis8[ e] \coff | \con fis2 g2. fis8[ e] d4 g4( \coff |
  g8[) a] b2 g4 | \[ g1 | e \] | \[ fis2 d \] | g4 b4. a8[ g fis] | \con \[ g2. e2 \] a4. e8 fis4 \coff g2 a4 e8[ fis] |
  
  %page 4
  g8[ a b g] a \ficta gis4 fis8 | a2 r | \con \[ e \fictab g?2. \] fis8[ e] fis2 \coff | g4 e2 b4 | c d e2 | d4 g fis b~ |
  b e, g fis | e2 d4 e | fis g4. fis16[ e] d4 | e b d2 | e4 a, c b | \con a4. b8[ c d] e4. fis8[ g a] fis4 e~ \coff |
  \con e8[ a,] d4 c e4. d8 c4 b2 \coff | a r |
  R1*15
  
  %page 5
  \con d2 e4 g4. fis8 g4 a fis \coff | g1 | R1*3 | g2 g | e4 g2. |
  
  %page 6
  \con fis4 d fis a4. g8 fis[ e] d2 \coff | d d | d r | a' b4 g | \con fis8[ e] fis4 g2. e4 fis d \coff |
  e b'2 a4 | \con fis2 g2. fis8[ e] \[ d2 \coff | \con g \] fis1 r4 a4. g8 fis[ e] \[ g2. e \] \coff | c4 d \[ e2 |
  \con a2. \] fis2 d4 r g4. a8 b4. a8[ g fis ] \coff | g2. fis8[ e] | \con d4 e d g2 fis8[ e] fis2 \coff | g1\fermata \bar "|."
}

scoreTI = \relative c' {
  \global
  r2 b2. b4 b2 | e4. d8 c4 b | \con \[ a2 e1 g \] fis4 d~ \coff |
  d c' b e2 c4 e4. fis8 | g2 g4. fis8 | e4 d b r | b a b4. a16[ g] | d'2 b4 d |
  a4. g16[ fis] e4 a | d, g2. | a4 e r a | b8 g4. d e8 | \con d2 d'1 r2 \coff |
  
  %page 2
  R1*14
  \con r2 d2. b4 g e'2 \[ b d2.\] b2 \coff \con \[ e,1. g \] \coff |
   
  %page 3
  \con g1. a2 \coff | \con r4 \[ g2 d' \] a4 d1 c4 d8[ e] \coff | b[ a] g4 e fis | \con g1. f2~ \coff |
  f1 | \con g2 d1 r2 \coff | \con b'2 e1 \[ e2 \coff | \con d b1 d2~ \coff |
  \con d2 e1 \] b c2 \coff | \[ d b\] | r4 d4. c8[ b a] | \[ g1 | a\] | g2 r4 c |
  
  %page 4
  \con g2 r4 e'2. fis4 e \coff | cis2 r | R1*13
  r2 d4. d8 | b4. c16[ d] e4. d8 | c4. b16[ a] g4 r | a2 d4 e |
  
  %page 5
  fis4. e16[ d] \ficta cis4 d | a4. b8 a[ g fis e] | fis4 g b4. a16[ g] | b4 d c4. b16[ a] | b4 g fis8[ d fis g] | a[ b] \ficta cis4 d a~ |
  \con a8[ g fis e] fis4 g4. fis8 g4 fis4. e8[ \coff | fis d] e4 fis e | fis8[ g a b] \ficta cis[ d] e4 | a, b8 d4 b8 \ficta cis4 | d2 r |
  \[ fis,2 g \] | b a | g1 | R1*3 | \con b2. c2 d4 e b \coff |
  
  %page 6
  d2 r4 d, | \[ e2 fis | g1 \] | \con d2 d'4 e4. d8 c4 b2 \coff | \[ c2 e\] | e r4 d4 |
  b g r2 | \[ a2 b | d1 \] | \con b2 d1 c4 c2 a4 b1 r4 a4. g8 fis4 e2 \coff |
  r4 d fis d | \con fis2 g1 d'2 \coff | \[ e b \] | r1 | \[ e2 d \] | d1\fermata \bar "|."
}

scoreTII = \relative c' {
  \global
  g2. g4 | g2 \[ g | a2. \] b4 | \[ c2 b | e1 \] | d2. c8[ b] |
  \[ a2 g \] | a2. g8[ fis] | e2 r | g2. fis4 | g d g2 | r4 d'2. |
  \ficta cis4 d e \ficta cis! | d2 r4 g, | fis g a fis | \con g b a1 g r2 \coff |
  
  %page 2
  R1*14
  \con r2 g1 g \[ g1. \coff | \con b\breve. \] \coff 
  
  %page 3
  \con \[ c\breve \coff | b1 \] | \con a1. r2 \coff | r a | \con b1. c2~ \coff |
  c1 | \con b2 a1 g g2 \coff | \con g a1 g r2 \coff |
  g1 | g | g | \con \[ b\breve. \coff c1 \] | b2 \[ a |
  
  %page 4
  b1 \] | \con a1. r2 \coff | R1*14
  g4. g8 e4. fis16[ g] | a4. g16[ fis] e4 fis8[ d] | fis[ g] a4 b \ficta cis |
  
  %page 5
  d4 a4. g8 fis4 | \con e d r a'2 b4 d4. \ficta cis8 \coff | \con d4. \fictab c?16[ b] a4 d2 b4. a4 g8 \coff | fis4 e d2 |
  r4 a' b \ficta cis | d4. \ficta cis16[ b] a2 | r4 a b \ficta cis | d a4. g16[ fis] e4 | fis d e2 | d1 |
  R1*3 | \con fis2 g4 b4. a8 g4 fis8[ e] fis4 \coff | \con g1. g \coff |
  
  %page 6
  \con \[ a\breve \coff | b1 \] | \con a1. r2 \coff | \con r b1 b2~ \coff |
  \con b2 d1. \coff | b1 | \con r2 a\breve g1 a b2 \coff |
  \con a1. b \coff | \con \[ g\breve \coff | a1 \] | g\fermata \bar "|."

  
}

scoreB = \relative c' {
  \global
  R1*17
  r2 \[ g2~
  
  %page 2
  g4 e2. \] | d4 g2 fis4 | g e2. | d4 d2 b4 | \con c d e b2 g4 a b \coff | g d'2 c4 |
  \con e \[ d2 g \] fis4 g b4. a8[ g fis] g4 d \coff | e b4. c8 d4 | e fis g fis | g d g b | a2 g~ |
  g r | R1*5 | r2 g |
  
  %page 3
  \con c,1. \[ a2 \coff | e' \] g | \con d1. a4 d4. c8 b4 a d  \coff | \con g,1. r2 \coff |
  R1*2 | \con r2 e'1. \coff | e2 \[ a,2 | \con d\] g,1 g'2~ \coff |
  \con g e1 e c2 \coff | \con b2. g1 b2 e4. d8[ c b] \coff | a1 | e'2 r |
  
  %page 4
  r2 e | \con a,1. r2 \coff | R1*14
  r2 c4. c8 | \con a4. b8 c4 d4. e8 fis4 g e \coff |
  
  %page 5
  d4. \ficta cis16[ b] a4 b | \ficta cis4 d4. \ficta cis!8 d[ \ficta cis!8] | \con d4 g,2 g'4. fis8 g4 a8 \ficta f4 d8 \coff | \[ g2 d\] | r4 a b \ficta cis |
  d4. \ficta cis8 d4 e | b g d'4. \ficta cis8 | d4 \ficta cis d a | d2. \ficta cis4 | d2 a | a'1 |
  R1*3 | b,2 b4 g | c4. b8 a2 | \con g1. r4 c2 b4 e2 \coff |
  
  %page 6
  d2. c8[ b] | \[ a2 d \] | g,1 | r4 d'2 c4 | d a g'2 | \con a e1 b2 \coff |
  \con e2 \[ d1 g, \] g' d a2 \coff | \[ c b \] | e r | r1 |
  \con d2. d4. c8[ b a] g1 b2 \coff | e2. d8[ c] | b4 c \[ b2 | a \] d | g,1\fermata \bar "|."
  
}

lyricS = \lyricmode {
  …vír -- 
  go __ _ _ _ ví -- _ _ _ rum, vír -- _ _ _ go ví -- _ _ _ rum, __ _ _ _
  vír -- _ _ go __ _ _ _ _ _ ví -- _ _ _ _ _ _ _ _ _ rum __
  pé -- _ pe -- _ rit __ _
  
  sí -- _ _ _ _ _ _ _ _ ne __ do -- ló -- re, pé -- _ pe -- _ _ _ 
  rit sí -- ne __ do -- ló -- re sal -- va -- tó -- rem __
  sae -- cu -- _ _ ló -- rum, __ sal -- _ va -- tó -- rem sae --
  
  cu -- _ ló -- _ _ _ _ rum. __ Í -- _ _ _ psum __ _ _ ré -- _ _ _ _ _ _
  gem, í -- _ _ _ _ psum, í -- _ _ psum __ _  ré -- _ _ _ _ _ _ _ _ _ _ _ _ _ 
  gem…
  
  só -- la vír -- _ _ go lac -- tá -- _ bat
  
  ú -- be -- ra de caé -- lo plé -- na, __ _ _ _ _ de __ _ caé -- _
  lo __ plé -- _ na, __ _ _  ú -- _ be -- ra, __ ú -- _ be -- _ ra __ _ _
  de caé -- lo __ plé -- _ _ na.
}

lyricA = \lyricmode {
  Né -- sci -- ens má -- _ _ _ _ _ _ _ _ _ _ _
  ter, né -- sci -- ens __ _ _ _ _ má -- 
  _ _ _ ter, né -- sci -- ens __ _ _ má -- _ _ _ _ _ _ ter… __
  
  pé -- pe -- _ _ _ _ rit sí -- ne __  _ _ _ _ _ do -- 
  
  ló -- _ re, __  sí -- ne __ do -- ló -- _ _ _ re, sí -- ne do -- ló --
  _ re __ _ _ sal -- va -- tó -- _ _ rem __ _ _ saé --
  _ _ cu -- _ ló -- rum, saé -- _ _ _ cu --  ló --  _ _ _ _ _
  
  _ _ _ _ rum.  Í -- _ _ _ _ psum __ ré -- _ _ _ _ _ _ _
  _ _ _ gem, í -- _ _ _ _ _ _ _ psum, í -- _ psum __ _ ré -- _ _ _ _ _ 
  _ _ _ _ _ _ gem…
  
  só -- la vír -- _ _ _ _ go lac -- tá -- _ _
  
  bat __ _ _ ú -- _ be -- ra de caé -- lo plé -- na, __  _ _ _ _ de __ caé -- _
  _ _ _ lo __ plé -- _ na, __ _ _ ú -- _ be -- ra, __ _  ú -- be -- ra __
  _ _ _ de _ caé -- _ _ _ _ _ lo __ plé -- _ _ na.
}

lyricTI = \lyricmode {
  
  Né -- sci -- ens má --  _ _ _ _ _ _ _ ter __
  né -- sci -- ens __ _ má -- _ _ ter, __ _ _ _ _ né -- sci -- ens __  _ _ má -- _
  _ _ _ _ ter, né -- sci -- ens __ má -- _ _ _ _ _ ter… __
  
  pé -- pe -- _ rit sí -- _ ne __ do -- _
  
  ló -- re, sí -- _ ne __ _ do -- ló -- _ _ _ _ _ _
  _ re, __ sal -- va -- tó -- _ _ _ 
  _ _ _ rem __ _ saé -- _ _ _ _ cu -- 
  
  _ ló -- _ _ rum… __
  an -- ge -- ló -- _ _ _ _ _ rum, an -- _ ge -- 
  
  ló -- _ _ rum, an -- ge -- ló -- _ rum, an -- _ _ ge -- ló -- _ _ _ _ _ _ _ rum, __
  _ _ _ _ _ _ _ _ an -- _ _ _ _ ge -- ló -- _ _ rum
  só -- _ la vír -- go lac -- tá -- _ _ _
  
  
  bat ú -- _ be -- ra de caé -- _ _ _ _ _ _ lo, de
  caé -- lo plé -- _ na, lac -- tá -- _ bat __ _ _ ú -- _ be -- ra,
  ú -- _ _ be -- ra __ de caé -- lo plé --  _ na.
}

lyricTII = \lyricmode {
  Né -- sci -- ens má -- _ _ _ _ _ _ _ 
  _ _ ter __ _ _ né -- sci -- ens __  _ _ má -- 
  _ _ _ _ ter,  né -- sci -- ens má -- _ _ _ _ ter… __
  
  pé -- pe -- rit __ _
  
  _ _ _ sí -- ne __ do -- 
  ló -- _ re __ sal -- va -- tó -- rem __ 
  saé -- cu -- ló -- _ _ _ _
  
  rum… __ _
  an -- ge -- ló -- _ _ _ _ _ _ _ _ _
  
  _ rum, __ _ _ _ _ an -- ge -- ló -- _ _ _ _ _ _ _ _ _ _ rum, 
  an -- _ ge -- ló -- _ rum, an -- _ ge -- ló -- rum, __ _ _ _ _ _ _
  só -- la vír -- _ _ _ _ go __ lac -- 
  
  tá -- _ bat __ ú -- be -- 
  _ ra __ de _ caé -- _
  lo __ _ plé -- _ na.
  
}

lyricB = \lyricmode {
    …vír -- 
  go __ _ _ ví -- _ _ _ rum, vír -- _ _ _ go ví -- _ _ _ rum, __ _ _ _ _
  vír -- _ go __ _ _ _ _ ví -- _ _ _ _ _ _ _ _ _ _ _ rum __
  pé --    
  
  pe -- rit __ _ sí -- ne __ do -- ló -- _ _ _ _ re __
  sal -- va -- tó -- _ _ _ _ 
  rem __ sae -- cu -- ló -- rum, sae -- _ _ cu -- 
  
  ló -- rum,
  an -- ge -- ló -- _ _ _ _ _ _ _
  
  _ _ _ rum, an -- _ ge -- ló -- _ rum, an -- ge -- ló -- _ rum, __ _ _ _ an -- _ ge -- 
  ló -- _ _ _ rum, __ _ an -- ge -- ló -- _ _ rum, __ an -- ge -- ló -- rum __ _
  só -- la __ _ vír -- _ _ go lac -- _ _
  
  tá -- _ _ _ bat __ ú -- be -- ra __ _ de caé -- lo __ plé -- 
  _ na, __ _ _ lac -- tá -- _ _ bat
  ú -- be --  _ ra __ de caé -- _ _ lo plé -- _ _ na.
}

scoreSPart = \new Staff \with {
  instrumentName = "S"
  midiInstrument = "voice oohs"
  \consists "Bar_number_engraver"
} { 

  \clef treble \scoreS }
\addlyrics { \lyricS }

scoreAPart = \new Staff \with {
  instrumentName = "A"
  midiInstrument = "voice oohs"
} { \clef treble \scoreA }
\addlyrics { \lyricA }


scoreTIPart = \new Staff \with {
  instrumentName = "T1"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoreTI }
\addlyrics { \lyricTI }

scoreTIIPart = \new Staff \with {
  instrumentName = "T2"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoreTII }
\addlyrics { \lyricTII }

scoreBPart = \new Staff \with {
  instrumentName = "B"
  midiInstrument = "voice oohs"
} { \clef bass \scoreB }
\addlyrics { \lyricB }


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent = 0
}
\score {
    \new ChoirStaff <<
    \scoreSPart
    \scoreAPart
    \scoreTIPart
    \scoreTIIPart
    \scoreBPart
    >>
  \layout { 
 \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Custos_engraver"
    \consists "Ambitus_engraver"
    \override Custos.stencil = #ly:text-interface::print
    \override Custos.text = \markup \musicglyph #"noteheads.d2doFunk"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
  }
  \midi {
    \tempo 2=60
  }
}
}
