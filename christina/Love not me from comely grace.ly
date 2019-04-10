\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Love not me from comely grace"
  composer = "John Wilbye (1574-1638)"
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
  \key c \major
  \time 4/4
  \autoBeamOff
}

vsi = \relative c'' {
  \global
  \secondbar  
  a4.\mf b8 c4 d |
  b b a2 |
  g4 g c b |
  a a b2 | \abr
  
  g4 a b8 c d4~ |
  d cis d2~ |
  d r |
  e2. a,4 |
  gis c b b | \abr
  
  a1~ |
  a |
  r4 a\p c4. d8 |
  e2 g,4. a8 |
  b2 d,4. e8 | \abr
  
  fis4 fis d4. e8 |
  fis8[( g]) a4 gis a |
  b( c) b2 |
  a2. g4\pp |
  a4. g8 f4 g | \abr
  
  g2 g |
  g4\f g2 g4 |
  fis2 e |
  e2. fis4 |
  e2. e'4 | \abr
  
  b d2 c8[( b]) |
  c4( b8[ a]) gis[( a b a] |
  gis[ fis]) gis4 a2~ |
  a r | \abr
  
  
  r2 a\p |
  e4 g2 f8[ e] |
  f4( e8[ d]) cis4( b) |
  cis2 d |
  e1 | \abr
  fis4 g a2 |
  b1 |
  a2 a |
  a1 |
  r2 r4 a\f | \abr
  b8[( cis] d2) cis4 |
  b a b b |
  a2 r |
  a4 d( cis) b8[( cis]) | \abr
  
  d4 a a gis |
  a2 r4 b |
  cis8[( d] e2) d4 |
  cis b a a | \abr
  gis1 |
  fis4\p e4.( fis8 gis4 |
  a) fis b2~ |
  b r4 fis |
  gis8[( a] b2) a4 | \abr
  gis fis8[( e]) fis4 fis |
  e1~ |
  e2 r4 b |
  cis8[( d] e2) d4 | \abr
  
  cis4 b8[( a]) cis4 b |
  a fis'\f e d |
  cis2 e |
  fis2 gis |
  a cis, | \abr
  d e |
  fis fis |
  e1~ |
  e e2 r4 cis'\p | \abr
  b a gis cis |
  b b2 b4~\f |
  b fis4. gis8 a4 |
  gis2 a2~( |
  a gis) a1 
  
  \bar "|."
}


vsii = \relative c' {
  \global
  e4.\mf e8 a4 f |
  e e e2 |
  c4 d e8[( fis]) g4 |
  g fis g2 |
  
  d4 d g fis |
  e e fis2 |
  a2. g8[( fis]) |
  e2. e4 |
  e2 e |
  
  e fis~\p |
  fis e4 d |
  e1 |
  r4 a e4. fis8 |
  g2 b,4. c8 |
  
  d2 fis,4. g8 |
  a4 a b e |
  gis, a b b |
  c2. e4\pp |
  d c f e |
  
  d( e d2) |
  e1 |
  R |
  e2\f b4 d~ |
  d c8[( b]) c4( b8[ a]) |
  
  gis4( fis) gis2 |
  a4 e' e f |
  e e c fis~ |
  fis e8[(\p d]) e4( d8[ c]) |
  
  d2. d4 |
  e d e e |
  a, a' e g~ |
  g f8[( e)] f4( e8[ d]) 
  cis4( b) cis2 |
  
  d4.( e8 fis4) fis |
  e d g2~ |
  g4 fis e e |
  fis2. e4\f |
  d8[( e] fis2) e4 |
  
  fis4.( gis8 a2) |
  gis4 a2 gis4 |
  a2 r4 e |
  fis8[( gis] a2) gis4 |
  
  fis e d2( |
  cis b4) b |
  a a' gis fis8[( gis]) |
  a4 e e dis |
  
  e1 |
  r2 r4 e\p |
  fis8[( g] a2) gis4 |
  fis e fis fis |
  e1 |
  
  R |
  r2 r4 b |
  cis8[( d] e2) d4 |
  cis b8[( a]) b4 b |
  
  a2 gis |
  a r |
  r4 cis\f cis b |
  a fis' e d |
  cis a a g |
  
  fis d' cis b |
  a2. b8[( a]) |
  gis2. cis8[( b]) |
  b4 a gis cis |
  b b e2\p |
  
  e1~ |
  e2. gis,8[(\f a]) |
  b2. a4 |
  e'1~ |
  e |
  e
  
  
}


vsiii = \relative c' {
  \global
  c4.\mf b8 a4 a |
  a gis a2 |
  e'4 d c d |
  d d d2 |
  
  b4 a g a |
  a a a2~ |
  a c~ |
  c4 b8[( a]) b4 c |
  b a b2 |
  
  e,2\p a4 a |
  a1~ |
  a2 r4 a |
  c4. d8 e2~ |
  e4 g,4. a8 b4~ |
  
  b d,4. e8 fis4 |
  d d'2 c4 |
  b a a gis |
  a2. e4\pp |
  f4. g8 a4 c |
  
  b( c2 b4) |
  c2. b4\f |
  d fis, gis2 |
  a b4( a) |
  b2 a |
  
  r b4 e(~ |
  e d8[ c]) b[( c d c] |
  b[ a]) b4 a2~ |
  a4 c2\p b8[( a]) |
  
  b4 a8[( g]) a2 |
  a4 b a2 |
  R1*3 |
  
  r4 d a c~ |
  c b8[( a]) b[( cis d b]) |
  cis4 d2 cis4 |
  d2. a4\f |
  b8[( cis] d2) cis4 |
  
  b2 a |
  e' e |
  a,4 cis cis b |
  a2 r |
  
  r r4 b |
  cis8[( d] e2) d4 |
  cis2 b |
  a4( gis fis) fis |
  
  e2. e'4\p |
  d cis8[( b]) cis[( d]) e4 |
  dis2 e |
  dis4 e2( dis4) |
  e b cis d |
  
  e d8[( cis]) d4 d |
  cis b2 b4 |
  b8[( a]) a4 gis8[( fis]) gis4 |
  a2 r4 b |
  
  cis8[( d] e2) d4 |
  cis b8[( a]) b4 b |
  a a\f a g |
  fis d' cis b |
  a fis fis e |
  
  d b' a g |
  fis2. d'8[( cis]) |
  b2. a4 |
  gis cis b a |
  gis gis2 a4\p |
  
  b cis b a |
  gis gis2 b8[(\f cis]) |
  d1~ |
  d4 d cis b8[( a]) |
  b1 |
  cis
}


vsiv = \relative c' {
  \global
  a4.\mf g8 f4 d |
  e e a,2 |
  c4 b a g |
  d' d g,2 |
  
  g'4 fis e d |
  a' a d,2~ |
  d a'~ |
  a4 gis8[( fis]) gis4 a |
  e2. d4 |
  
  cis2 d~\p |
  d cis4 b |
  a1 |
  a'4. b8 c2 |
  e,4. fis8 g2 | 
  
  b,4. c8 d2~ |
  d4 c b a |
  e'2. e4 |
  a,2. c4 |
  f e d c |
  
  g'1 |
  c,2. e4\f |
  b d2 c8[( b]) |
  c4( b8[ a]) gis4( fis) |
  gis2 a |
  
  e'1 |
  a4 a, e' d |
  e e a,2~ |
  a4 a'\p e g~ |
  
  g4 f8[( e]) f4( e8[ d]) |
  cis4( b) cis2 |
  d a'~ |
  a d, |
  a'2. g4 |
  
  fis1 |
  g |
  a |
  d, |
  R |
  R |
  r2 r4 e\f |
  fis8[( gis] a2) gis4 |
  fis2 e |
  
  d4( cis b) b |
  a2 gis |
  a r |
  R1 |
  
  r2 r4 e'\p |
  fis8[( gis] a2) gis4 |
  fis2 e |
  b' b |
  e,1~ |
  
  e2 r4 b |
  cis8[( d] e2) d4 |
  cis b8[( a]) b4 b |
  a2 gis |
  
  a e'\f |
  fis gis |
  a cis, |
  d e |
  fis a, |
  
  b cis |
  d d |
  e e4 a, |
  e'1~ |
  e2. a4 |
  
  gis a e a, |
  e'2 e4 e  \f |
  b4. cis8 d[( e]) fis4 |
  e1~ |
  e |
  a,
}

vli = \lyricmode {
  Love not me for come -- ly grace, For my plea -- sing eye or face;
  Nor for a -- ny out -- ward part, __ No, nor for my co -- stant
  heart: __ For these may fail, these may fail, these may
  
  fail, for these may fail, may fail, or turn to ill; So thou and I shall
  se -- ver: Keep, there -- fore, a true wo -- man's eye, Keep,
  there -- fore, a __ true __ wo -- man's eye, __
  
  keep, there -- fore, a__ true __ wo -- man's eye, keep,
  there -- fore, a true wo -- man's eye, And
  love me still, but know not why, and love me 
  
  still, but know not why, and love me still, but know not
  why, but know __ not why, __ and love me
  still, but know not why, __ and love me
  
  still, but know not why; So hast thou the same rea -- son still To
  doat up -- on me e -- ver, to
  doat u -- pon me e -- ver, to __ doat u -- pon me e -- ver.
}

vlii = \lyricmode {
  Love not me for come -- ly grace, For my plea -- sing eye or face;
  Nor for a -- ny out -- ward part, No, nor __ for my co -- stant
  heart: For __ these may fail, for these may fail, these may
  
  fail, these may fail, for these may fail, or turn to ill; So thou and I shall
  se -- ver: Keep, there -- fore, __ a __ true __ 
  wo -- man's eye, a wo -- man's eye, keep there -- fore, __ a __ true __
  
  wo -- man's eye, a wo -- man's eye, keep, there -- fore, __ a__ true __ wo -- man's
  eye, __ keep, there -- fore, a __ true wo -- man's eye, And love __ me
  still, __ but know not why, and love me
  
  still, but know __ not why, and love me still, but know not
  why, and love me still, but know not why,
  and love me still, but know not,
  
  know not why; So hast thou the same rea -- son still, so hast thou
  the same rea -- son still, To doat, to doat u -- pon me e -- ver, to
  doat __ u -- pon me e -- ver.
}

vliii = \lyricmode {
  Love not me for come -- ly grace, For my plea -- sing eye or face;
  Nor for a -- ny out -- ward part, __ No, __ nor __ for my co -- stant heart:
  For these may fail, __ for these may fail, __ these may fail, __
  
  these may fail, for these may fail, or turn to ill; So thou and I shall
  se -- ver: Keep, there -- fore, a true wo -- man's eye, 
  a true __ wo -- man's eye, __ keep there -- 
  
  fore, a __ true wo -- man's eye,
  keep, there -- fore, __ keep a __ true wo -- man's eye, And love me
  still, but know not why, but know not why,
  
  and love me still, but know __ not 
  why, and love me, love me still, but know not __ why, and love me 
  still, but know not why, love me still, but know not why, and
  
  love me still, but know not why; So hast thou the same rea -- son still, so hast thou
  the same rea -- son still, To doat, to doat u -- pon me e -- ver, to
  doat u -- pon me e -- ver, to doat __ u -- pon me e -- ver.
}

vliv = \lyricmode {
  Love not me for come -- ly grace, For my plea -- sing eye or face;
  Nor for a -- ny out -- ward part, __ No, __ nor __ for my co -- stant
  heart: For __ these may fail, these may fail, these may fail,
  
  these may fail, __ may fail, or turn to ill; So thou and I shall
  se -- ver: Keep, there -- fore, a __ true __ wo -- man's eye, 
  keep, there -- fore, a true wo -- man's eye, __ keep, there -- fore __
  
  a __ true __ wo -- man's eye, keep, __ there -- fore, a
  true wo -- man's eye,
  And love me still, but
  
  know __ not, know not why,
  and love me still, but know not why, __
  and love me still, but know not, know not
  
  why; So hast thou the same rea -- son still, To
  doat u -- pon me e -- ver, to doat __ to
  doat u -- pon me e -- ver, to doat u -- pon me e -- ver.
}


vni = "soprano"
sni = "S"
vfi = \markup { \center-column { "Soprano I" \bold \sni  } }

vnii = "alto"
snii = "A"
vfii = \markup { \center-column { "Alto" \bold \snii  } }

vniii = "tenor"
sniii = "T"
vfiii = \markup { \center-column { "Tenor" \bold \sniii  } }

vniv = "bass"
sniv = "B"
vfiv = \markup { \center-column { "Bass" \bold \sniv  } }


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
      \new Lyrics \lyricsto \vni { \vli }
      
      %staff for voice ii
      \new Staff = \vnii \with {
        instrumentName = \vfii
        shortInstrumentName = \snii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnii { \vsii } }   
      \new Lyrics \lyricsto \vnii { \vlii }
      
      %staff for voice iii
      \new Staff = \vniii \with {
        instrumentName = \vfiii
        shortInstrumentName = \sniii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniii { \clef "G_8" \vsiii } }   
      \new Lyrics \lyricsto \vniii { \vliii }
      
      %staff for voice iv
      \new Staff = \vniv \with {
        instrumentName = \vfiv
        shortInstrumentName = \sniv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniv { \clef "bass" \vsiv } }   
      \new Lyrics \lyricsto \vniv { \vliv }
      
      
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
        \accidentalStyle modern-voice-cautionary
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
