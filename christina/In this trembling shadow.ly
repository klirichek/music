\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "In this trembling shadow"
  subtitle = "A Pilgrim's Solace (1612)"
  composer = "John Dowland (1563-1626)"
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
  indent = 25
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
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  \autoBeamOff
}

vsi = \relative c'' {
  \global
  \secondbar  
  R1 |
  R1 |
  r2 a4. a8 |
  b4 c d4. d8 | \abr
  
  es8.[ es16] d4 c8 bes4 as8 |
  g[ g] c2 b4 |
  r2 r4 d4~ | \abr
  
  d8[ a] a8.[ a16] c2~ |
  c8[ c] g8.[( a16] bes8.[) a16(] g16[ fis g8]) |
  a4. a8 g2~ |
  g8[ g] fis4 r bes~ | \abr
  
  \repeat volta 2 {
    bes8[ bes] bes4 bes2 |
    r4 bes8[ c] d4 a8[ a] |
    a2 r4 d |
    c2 bes | \abr
    a g8[ g] bes4~ |
    bes8[ a(] g4) fis r |
    R1 |
    r4 bes8[ bes] c4 c |
    d4. d8 c8[ bes] bes4~ | \abr
    bes4 a bes2 |
    r4 g8[ g] fis4 bes |
    a d8[ c] bes4 c4~ |
  }
  \alternative {
    {c8[ bes] a8.[ g16] g4 d'}
    {c8[ bes] a8.[ g16] g2 \bar "|."}
  }
}


vsii = \relative c' {
  \global
  r2 e4. e8 |
  fis4 g a4. a8 |
  bes8.[( a16]) g4 r2 |
  r8 g4 g8 as8.[ as16] g4 |
  
  g8[ c]~ c16[ c bes8] as g4 f8 |
  es8.[ f16] g4~ g8[ f] d4 |
  c2 r |
  
  d e4 f~ |
  f8[ e16 d] es4 d r8 d16[ e] |
  f8.[( e16] d16[) c d8] d[( cis16 b] cis8[) cis] |
  d2. r4
  
  \repeat volta 2 {
    es4. es8 es4 f |
    g8[ d] d[ e] fis4 r8 d |
    e4 f8[ f]~ f[ g] f[ d] |
    es2 d |
    
    c4. d8 es4 d |
    f b,8[ c] d4 d |
    c4. c8 d4. d8( |
    c[ bes] bes2) a4 |
    bes f' g4. f8 |
    
    es4 c8[ f]~ f[ es] d4~ |
    d c d2~ |
    d4 r8 f16[ f] g8[ f] es4 |
  }
  \alternative
  {
    {d8[ d] d4 d r}
    {d8[ d] d4 d2}
  }
}


vsiii = \relative c' {
  \global
  d2. c4 |
  bes4 a8[ g] c[ a] d4~( |
  d8[ c d) bes] c4. d8 |
  es4. es8 d( c4) b8 |
  
  c16[ d es c] d8[ g] es4. c8~ |
  c es4 d16[ c] d4 r8 g,~ |
  g[ as]~ as16[ g c8] bes8.[ a16] fis8[ g]~( |
  
  g[ fis16 e] fis4) g8 a4 a16[ g] |
  g8 r c[ g]~( g16[ a bes c]) d8[ bes] |
  a[( f16 g] a8)[ d,] r4 g8.[ a16] |
  bes4 a g r |
  
  \repeat volta 2 {
    g4. g8 g4 bes |
    g8[ a] bes[ a16 g] a4. f16[ f] |
    e4 a8[ a] d2 |
    r2 r4 r8 g, |
    
    a8[ bes] c[ bes16 a] bes4. c8 |
    d4. g,8 a4 bes |
    bes a bes bes( |
    g8) g'4( f8) es4 c |
    f4. bes,8 es4 d |
    
    c2 bes4. a8 |
    g4. g8 a4 r8 g16[ g] |
    fis4 bes8[ a] g4. a8 |
  }
  \alternative
  {
    { fis8 g4( fis8) g4 r }
    { fis8 g4( fis8) g2 }
  }
  
}


vsiv = \relative c {
  \global
  R1 |
  R1 |
  g'2. f4 |
  es d8[ c] f[ d] g4 |
  
  c, g' as8 es4 f8 |
  c4. c8 g'2 |
  c,4 es d2~ |
  
  d c~ |
  c4 r8 c g8.[( a16] bes8)[ g16 g] |
  d'8.[( e16] f8[) f] e4. e8 |
  d4. d8 g,4 r |
  
  \repeat volta 2 {
    es'4. es8 es4 d |
    es8[ f] g4 d2 |
    cis4 d bes4. bes'8~ |
    bes4 a~( a8[ g]) g4~ |
    
    g fis g4. f8 |
    d4 es d4. d8 |
    es4 f bes,2 |
    es4 d c2 |
    bes2 r |
    
    r4 f' g4. f8 |
    es4. es8 d4 g,8[ g] |
    d'4 bes es8[ d]( c4)
    }
    \alternative {
      { d4. d8 g,4 r }
      { d'4. d8 g,2 }
    }
  }


vli = \lyricmode {
  lyric
}

vlii = \lyricmode {
  lyric
}

vliii = \lyricmode {
  lyric
}

vliv = \lyricmode {
  lyric
}


vni = "soprano"
sni = "S"
vfi = \markup { \center-column { "Soprano" \bold \sni  } }

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
