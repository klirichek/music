\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "White Winter Hymnal"
  subtitle = "Pentatonix 4-part version from That's Christmass To Me (2014)"
  composer = \markup { \right-column { "Fleet Foxes" "Arranged by Pentatonix" "Transcribed by Ray J. V. Sahetapy"  } }
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
  \key d \major
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  \autoBeamOff
  \set Score.skipBars = ##t
}

vsi = \relative c' {
  \global
  \secondbar  
  \tempo 4=126
  \repeat volta 2 { fis4. e8 d d e e }
  \repeat volta 2 { fis4. e8 d d e e }
  \repeat volta 2 { fis4. e8 d d e e } \abr
  \repeat unfold 3 { fis4. e8 d d e e } \abr
  fis4 e d8 d e e |
  fis4. e8 d4 e |
  fis8[( e]) e4 fis a | \abr
  g4. fis8 e e fis fis |
  g4. fis8 e e fis fis |
  g4. fis8 e4 fis | \abr
  g4 a b cis |
  d4. cis8 b b cis cis |
  d4. cis8 b4 cis8[( d]) | \abr
  d4 cis cis b |
  b a a g8 fis |
  g fis fis4 r2 |
  R1*3 | \abr
  b,4( cis8[ d] e4 fis) |
  \repeat volta 2 { b,8([ d] a'4 fis e8[ d] e4 fis2.) |
                    e4.( d8 e8.[ d16]~ d8[ b])~ b1 | \abr
                    r4 b8[( a] b[ d b a] fis4 cis' b2~) b2. r4 |
                    d( e8[ fis] g4 a) | 
                    d,8[( fis] cis'4 a g8[ fis] |
                    g4 a2.) | \abr
                    g4.( fis8 g8.[ fis16]~ fis8[ d~]) d1 |
                    r4 d8[( cis] d[ fis d cis] |
                    a4 fis' d2~) |
                    d2 r | \abr
                    fis4. e8 d d e e fis4 e4 d8 d e e fis4. e8 d4 e | \abr
                    fis8[( e]) e4 fis a |
                    g4. fis8 e e fis fis |
                    g4. fis8 e e fis fis | \abr
                    g4. fis8 e4 fis |
                    g a b cis |
                    d4. cis8 b b cis cis | \abr
                    d4. cis8 b4 cis8[ d] |
                    d4 cis cis b |
                    b a a g8 fis | \abr
  } \alternative {
    { g8 fis fis2 r4 }
    { g8 fis fis4 r2 }
  } \bar "|."
  
}


vsii = \relative c' {
  \global
  \repeat volta 2 { s1 }
  \repeat volta 2 { d4. b8 a a b b }
  \repeat volta 2 { d4. b8 a a b b }
  d4. b8 a a b b |
  d4. b8 a a b b |
  d4. b8 a a b b |
  d4 b a8 a b b |
  d4. b8 a4 b |
  d8[( b]) b4 d fis |
  e4. d8 b b d d |
  e4. d8 b b d d |
  e4. d8 b4 d | 
  e fis g a |
  b4. a8 g g a a |
  b4. a8 g4 a8[( b]) |
  b4 a a g |
  g fis fis e8 d |
  e d d4 r2 |
  R1*3
  b4( cis8[ d] e4 fis) |
  \repeat volta 2 {
    b,8([ d] a'4 fis e8[ d] e4 fis2.) |
    e4.( d8 e8.[ d16]~ d8[ b])~ b1 | \abr
    r4 b8[( a] b[ d b a] fis4 cis' b2~) b2. r4 |
    b4( cis8[ d] e4 fis) |
    b,8[( d] a'4 fis e8[ d] |
    e4 fis2.) |
    e4.( d8 e8.[ d16]~ d8[ b])~ |
    b1 |
    r4 b8[( a] b[ d b a] |
    fis4 cis' b2)~ |
    b2 r |
    d4. b8 a a b b |
    d4 b a8 a b b |
    d4. b8 a4 b |
    d8[( b]) b4 d fis |
    e4. d8 b b d d |
    e4. d8 b b d d |
    e4. d8 b4 d |
    e fis g a |
    b4. a8 g g a a |
    b4. a8 g4 a8[( b]) |
    b4 a a g |
    g fis fis e8 d |
  } 
  \alternative {
    { b4( cis8[ d] e4 fis) }
    { e8 d d4 r2 }
  }
}


vsiii = \relative c' {
  \global
  \repeat volta 2 { R1 }
  \repeat volta 2 { R1 }
  \repeat volta 2 { a4. g8 fis fis g g }
  a4. g8 fis fis g g |
  a4. g8 fis fis g g |
  a4. g8 fis fis g g |
  a4 g fis8 fis g g |
  a4. g8 fis4 g |
  a8[( g]) g4 a d |
  b4. a8 g g a a |
  b4. a8 g g a a |
  b4. a8 g4 a |
  b cis d e |
  fis4. e8 d d e e |
  fis4. e8 d4 e8[( fis]) |
  fis4 e e d |
  d cis cis b8 a |
  b a a4 r2 |
  R1*3
  b,4( cis8[ d] e4 fis) 
  \repeat volta 2 {
    b,8([ d] a'4 fis e8[ d] e4 fis2.) |
    e4.( d8 e8.[ d16]~ d8[ b])~ b1 | \abr
    r4 b8[( a] b[ d b a] fis4 cis' b2~) b2. r4 |
    fis'( a b d ) |
    fis,8[( a] fis'4 d b8[ a] |
    b4 d2.) |
    b4.( a8 b8.[ a16]~ a8[ g])~ |
    g1 |
    r4 g8[( fis] g[ a g fis] |
    d4 a' fis2~) | fis2 r |
    a4. g8 fis fis g g |
    a4 g fis8 fis g g |
    a4. g8 fis4 g |
    a8[( g]) g4 a d |
    b4. a8 g g a a |
    b4. a8 g g a a |
    b4. a8 g4 a |
    b cis d e |
    fis4. e8 d d e e |
    fis4. e8 d4 e8[( fis]) |
    fis4 e e d |
    d cis cis b8 a |   
  }
  \alternative 
  {
    { b,4( cis8[ d] e4 fis) }
    { b8 a a4 r2 }
  }
}


vsiv = \relative c {
  \global
  \repeat volta 2 { R1 }
  \repeat volta 2 { R1 }
  \repeat volta 2 { R1 }
  d4. d8 d d d d |
  d4. d8 d d a a |
  d,4. d8~ d2 |
  d4. d8~ d2 |
  d4. d8~ d2 |
  d4. d8~ d2 |
  e4. e8~ e2 |
  e4. e8~ e2 |
  e4. e8~ e2 |
  e4 fis g a |
  g4. g8~ g2 |
  g4. g8~ g2 |
  a4 r r2 |
  r r4 a8 b |
  d, d d4 r2 |
  R1*3 |
  d1~ |
  \repeat volta 2 {
    d1 | d~ | d | g |
    r4 r8 d( g[ d g a]) |
    d,1~ |
    d2. r4 |
    d1~ | d | d~ |
    d | g | r4 r8 d( g[ d g a]) |
    d,1~ | d2 r |
    d4. d8~ d2 |
    d4. d8~ d2 |
    d4. d8~ d2 |
    d4. d8~ d2 |
    e4. e8~ e2 |
    e4. e8~ e2 |
    e4. e8~ e2 |
    e4 fis g a |
    g4. g8~ g2 |
    g4. g8~ g2 |
    a4 r r2 |
    R1 |
  } \alternative {
    {d,1(  }
    {R1) }
  }
}


vli = \lyricmode {
  \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat unfold 3 { I was fol -- low -- ing the, }
  pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the sum -- mer  time.
  Oo… __
  \repeat volta 2 { 
    \set ignoreMelismata = ##t
    Oo… _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ ooh. __ _
    \unset ignoreMelismata 
    I was fol -- low -- ing the pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the }
  \alternative { {sum -- mer  time. } {sum -- mer  time. } }

}

vlii = \lyricmode {
    \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat unfold 3 { I was fol -- low -- ing the, }
  pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the sum -- mer time.
  Oo… __
  \repeat volta 2 { 
    \set ignoreMelismata = ##t
    Oo… _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ ooh. __ _
    \unset ignoreMelismata 
    I was fol -- low -- ing the pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the }
  \alternative { { Oo… __ } {sum -- mer  time. } }
}

vliii = \lyricmode {
  \repeat volta 2 { I was fol -- low -- ing the, }
  \repeat unfold 3 { I was fol -- low -- ing the, }
  pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the sum -- mer  time.
  Oo… __
  \repeat volta 2 { 
    \set ignoreMelismata = ##t
    Oo… _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ …ooh,
    Oo… _ _ _ _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ _ _ _ …ooh,
    Oo… _ _ _ _ ooh, __ _
    Oo… _ _ _ _ _ _ _ ooh. __ _
    \unset ignoreMelismata 
    I was fol -- low -- ing the pack, all swal -- lowed  in their coats with scarves of red __ tied 'round their
  throats to keep their lit -- tle heads from fal -- lin' in the snow and I turned
  'round and there you go. And Mi -- chael you would fall, and turn the __
  white snow red and straw -- ber -- ries in the }
  \alternative { {Oo… __ } {sum -- mer  time. } }
}

vliv = \lyricmode {
  \repeat unfold 2 { I was fol -- low -- ing the, }
  Dm dm __
  dm dm __ dm dm __ dm dm __
  dm dm __ dm dm __ dm dm __
  dm dm dm dm dm dm __ dm dm __
  dm in the sum -- mer time.
  \set ignoreMelismata = ##t
  Ooh __ 
  \repeat volta 2 {
    oh \unset ignoreMelismata 
    ooh __
    ooh
    ooh __ ‥ooh. __
    Ooh __
    ooh __
    ooh
    oo __ ‥ooh. __
    Dm dm __
    dm dm __ dm dm __
    dm dm __ dm dm __ dm dm __
    dm dm __ dm dm dm dm dm dm __
    dm dm __ dm
  }  Ooh
}


vni = "Soprano"
sni = "S"
vfi = \markup { \center-column { "Soprano" \bold \sni  } }

vnii = "Alto"
snii = "A"
vfii = \markup { \center-column { "Alto" \bold \snii  } }

vniii = "Baritone"
sniii = "b"
vfiii = \markup { \center-column { "Baritone" \bold \sniii  } }

vniv = "Bass"
sniv = "B"
vfiv = \markup { \center-column { "Bass" \bold \sniv  } }

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for voice i
      \new Staff = \vni \with {
        instrumentName = \markup\right-column {\vni \vnii}
        shortInstrumentName = \markup\right-column {\sni \snii}
        midiInstrument = "choir aahs"
      }
      << \new Voice = \vni { \override Ambitus.X-offset = #2.0 \voiceOne \vsi } 
         \new Voice = \vnii { \voiceTwo \vsii } 
      >>
      \new Lyrics \lyricsto \vni { \vli }
      
      
      %staff for voice iii
      \new Staff = \vniii \with {
        instrumentName = \markup\right-column {\vniii \vniv}
        shortInstrumentName = \markup\right-column {\sniii \sniv}
        midiInstrument = "choir aahs"
      }
      << \new Voice = \vniii { \override Ambitus.X-offset = #2.0 \clef "bass" \voiceOne \vsiii }   
         \new Voice = \vniv { \voiceTwo \vsiv }    
      >>
      \new Lyrics \lyricsto \vniv { \vliv }    
     
     
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        
      }
      \context {
        \Voice \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
  }
}

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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=126
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 126 4)
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

