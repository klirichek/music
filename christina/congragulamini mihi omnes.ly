\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Congratulamini mihi omnes"
  composer = "Tiburzio Massaino"
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
  \key f \major
  \time 2/2
  \dynamicUp
  \autoBeamOff
  \override AccidentalSuggestion.avoid-slur = #'around
}

vsi = \relative c'' {
  \global
  \secondbar  
  
  R1 f2 f4 f |
  f4. e8 d4 c |
  d f4. e16[ d] e4 |
  f f,4. g8 a[ bes] |
  c4 c f e8[ f] |
  
  g8[ f e d] c[ d ] e4 |
  r f f f |
  f4. e8 d4 d |
  c c4. bes8 a[ g16 f] |
  g2 f |
  
  r4 c' d f~ |
  f8 f e4 d c8[ bes] |
  a[ g] f2 a4 |
  c2 r |
  c f,4 f'~ |
  
  f e d2 |
  c4 c a f |
  c'2 d~ |
  d4 c r c |
  c4. c8 f,4 f'~ |
  f8[ e16 d] e4 f c~ |
  
  c d c2 |
  bes a |
  bes4 c d2~ |
  d cis |
  R1 |
  r4 c d e~ 
  
  e8 e f4 g2 |
  f4 e8[ d] c[ bes] a4 |
  r c a bes8[ a] |
  f'4 e8[ d] c[ a] f'4~ |
  f8 f f4 d2
  
  e4 f2 e4 |
  f4. e8 d4 c |
  r bes2 g4 |
  a4. g16[ f] g2 |
  a4 c f, g |
  
  a4 f'2 e4 |
  f4. e8 d4 c~ |
  c a bes c8[ a] |
  c2 d |
  c1
}


vsii = \relative c'' {
  \global
  c2 c4 c |
  c4. bes8 a4 c |
  d d4. e8 f4~ |
  f8[ e] d4 c2 |
  a4 f' f f |
  f4. e8 d4 c8[ d]
  
  e[ f] g4. f8 e4 |
  c a c c |
  d bes8[ c] d[ e] f4~ |
  f8[ e16 d] e4 f f~ |
  f8[ e16 d] e4 d c~ |
  
  c8 c c4 bes8[ a] bes[ g16 f] |
  g4. g8 f4. g8 |
  a2 r4 c~ |
  c g a bes |
  g2 a4 g8[ f] |
  
  c'4 c f, f'~ |
  f e d4. c16[ d] |
  e8[ f] g4. f8 f4~ |
  f8[ e16 d] e4 f f |
  e4. e8 d[ c16 bes] a4 |
  c2 c |
  
  R1*3 |
  r2 r4 e |
  f e d4. c8 |
  bes4 a r2 |
  
  R1 r4 c2 d4 |
  e4. e8 f2 |
  d4 c8[ bes] c4. bes16[ c] |
  d8[ c] c4. bes16[ a] bes4 |
  
  c2 r4 c4~ |
  c c f, g |
  a f'2 e4 |
  f4. e8 d4 c |
  r a bes c~
  
  c4 c r c |
  c f4. e16[ d] e4 |
  f c d a~ |
  a8[ bes c a] bes2 |
  a1
}


vsiii = \relative c'' {
  \global
  R1 |
  r2 r4 a |
  a a a4. g8 |
  f2 r4 c' |
  c c c4. bes8 |
  a4 a8[ g] a[ bes] c4 | \abr
  
  c c,8[ d] e[ f] g4 |
  f8[ e f g] a[ bes c a] |
  bes2 f |
  r4 g a c~ |
  c8 c c4 bes8[ a] a[ g16 f] | \abr
  
  g2 \tuplet 3/2 { f2 f4 } |
  c'2 r |
  r4 c, d f~ |
  f8 f e4 d4. d8 |
  c4 c'2 bes4 | \abr
  
  a g bes4. a8 |
  g2 f |
  r4 c' f, bes~ |
  bes8 bes g4 a a |
  g4. g8 bes[ a16 g] f4 |
  g2 a | \abr
  
  r4 d,4 f2 |
  g c,4 f |
  g a bes8[ a] a4~ |
  a8[ g16 f] g4 a2~ |
  a r |
  r4 f2 g4 | \abr
  
  a4. a8 c2 |
  a4 g r f |
  g a4. g8 f4 |
  bes2 a~ |
  a r | \abr
  
  R1 |
  r4 a bes c~ |
  c f, g2 |
  f4 f2 e4 |
  f4. e8 d4 c | \abr
  
  r a' bes c |
  f, c d g |
  f1~ |
  f~ |
  f \bar "|."
}


vsiv = \relative c' {
  \global
  R1 r2 r4 f |
  f f f4. e8 |
  d2 g |
  f4 a4. g8 f4 |
  c f4. g8 a4
  
  g c c c |
  c4. bes8 a2 |
  f4 d bes'4. a8 |
  g2 f4. e16[ d] |
  c2 r 
  
  R1 r4 g' a c~ |
  c8 c c4 bes8[ a] a[ g16 f] |
  g4. g8 f2 |
  R1 |
  
  r2 r4 f |
  c c'2 bes4 |
  a g r d |
  g4. g8 f2 |
  c d |
  c f |
  
  e4 g4. f8 f4~ |
  f8[ e16 d] e4 f c |
  d e f2~ |
  f4 d e2 |
  r f |
  g4 a4. a8 c4 |
  
  r2 c, |
  d4 e4. e8 f4 |
  e4. d16[ c] d4. c8 |
  bes2 f' |
  r r4 g~ |
  
  g4 a g2 |
  a4 f2 e4 |
  f4. e8 d4 c~ |
  c a bes c |
  f,2 r |
  
  r4 f'2 g4 |
  a4. g16[ f] g2 |
  a4 f d c~ |
  c8[ bes] a4 d bes |
  c1
}

vsv = \relative c {
  \global
   r2 f |
   f4 f f4. e8 |
   d4 d2 a4 |
   bes2 c |
   f,1~ |
   f2 r4 c' |
   
   c4 c c4. bes8 |
   a4 f4. g8 a[ f] |
   bes2. bes4 |
   c2 f, |
   r4 c' d f~ 
   
   f8 f e4 d2 |
   \tuplet 3/2 { c2 c4 } f,2~ |
   f r |
   c' f,4 f'~ |
   f e d2 |
   
   c2 bes |
   c4. c8 d2 |
   c \tuplet 3/2 { bes2 a4} |
   g c f,2 |
   R1 |
   r2 r4 a~
   
   a4 bes a2 |
   g f |
   bes4 a d4. c8 |
   bes2 a4 a |
   d c bes4. a8 |
   g4 f r c'~ |
   
   c d e4. e8 |
   f4 c8[ bes] a[ g] f4 |
   c'2 r4 f~ |
   f g a4. g8 |
   f2 g |
   
   c,4 a bes c |
   f,2 r4 c' |
   a bes2 c4 |
   f,2 r |
   r4 f'2 e4 |
   
   f4. e8 d4 c |
   r a bes c |
   f,2 r4 f~ |
   f f bes2 |
   f1
}


vli = \lyricmode {
 Con -- gra -- tu -- la -- mi -- ni mi -- hi om -- _ _  nes, mi -- _ _ _ hi om -- _ 
 _ _ nes, con -- gra -- tu -- la -- mi -- ni mi -- hi om -- _ _ _ nes
 qui di -- li -- gi -- tis Do -- _ _ _ mi -- num qui -- a quem
 quae -- re -- bam ap -- pa -- ru -- it mi -- hi, ap -- pa -- ru -- it mi -- _ hi et
 __ dum fle -- rem ad mo -- nu -- men -- tum vi -- di Do --
 mi -- num me -- _ _ _ um, vi -- di Do -- _ _ _ _ mi -- num me --
um, al -- le -- lu -- _ _ ia, al -- le -- lu -- _ _ ia, al -- le -- lu --
ia, al -- le -- lu -- _ _ ia, __ al -- le -- lu -- _ _ ia.
}

vlii = \lyricmode {
Con -- gra -- tu -- la -- mi -- ni mi -- hi om -- _ _ _ _ nes, con -- gra -- tu -- la -- mi -- ni mi --
_ _ _ hi om -- _ _ _ _ _ _ _ _ nes qui __ _ di -- li --
gi -- tis Do -- _ _ mi -- num __ _ _ qui -- a quem quae -- re -- _ _
bam, qui -- a quem __ quae -- re -- _ _ _ _ _ _ bam ap -- pa -- ru -- it __ _ mi -- hi
ad mo -- nu -- men -- _ _ tum
vi -- di Do -- mi -- num ma -- _ _ _ _ _ _ _
um, al -- le -- lu -- _ ia, al -- le -- lu -- _ _ ia, al -- le -- lu --
ia, al -- le -- lu -- _ _ ia, al -- le -- lu -- _ ia.
}

vliii = \lyricmode {
Con -- gra -- tu -- la -- mi -- ni, con -- gra -- tu -- la -- mi -- ni mi -- _ _
hi om -- _ _ _ _ _ nes qui di -- li -- gi -- tis Do -- _
_ _ mi -- num, qui di -- li -- gi -- tis Do -- mi -- num qui -- a
quem quae -- re -- _ _ bam, qui -- a quem __ quae -- re -- bam ap -- pa -- ru -- it __ _ mi -- hi
et dum fle -- rem ad mo -- nu -- men -- _ _ tum __ vi -- di
Do -- mi -- num me -- um, vi -- di Do -- mi -- num me -- um, __
al -- le -- lu -- _ _ ia, al -- le -- lu -- _ _ ia,
al -- le -- lu -- ia, al -- le -- lu -- ia. __
}

vliv = \lyricmode {
Con -- gra -- tu -- la -- mi -- ni mi -- hi, mi -- _ _ hi om -- _ _
nes, con -- gra -- tu -- la -- mi -- ni mi -- hi om -- _ _ nes __ _ _
qui di -- li -- gi -- tis Do -- _ _ mi -- num
qui -- a quem quae -- re -- bam ap -- pa -- ru -- it mi -- _ hi et
dum fle -- _ _ _ rem ad mo -- nu -- men -- _ tum vi -- di Do -- mi -- num,
vi -- di Do -- mi -- num me -- _ _ _ _ um, al --
le -- lu -- ia, al -- le -- lu -- _ _ ia, __ al -- le -- lu -- ia,
al -- le -- lu -- _ _ ia, al -- le -- lu -- _ _ _ ia.
}

vlv = \lyricmode {
Con -- gra -- tu -- la -- mi -- ni mi -- hi om -- _ nes, __ con --
gra -- tu -- la -- mi -- ni mi -- _ _ _ hi om -- nes qui di -- li --
gi -- tis Do -- _ mi -- num __ qui -- a -- quem __ quae -- re --
bam ap -- pa -- ru -- it mi -- _ _ _ _ hi et
__ dum fle -- rem ad mo -- nu -- men -- _ _ tum, ad mo -- nu -- men -- _ _ tum vi --
di Do -- mi -- num me -- _ _ um, vi -- di Do -- mi -- num me --
um, al -- le -- lu -- ia, al -- le -- lu -- _ ia, al -- le --
lu -- _ _ ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}



vni = "cantus"
sni = "C"
vfi = \markup { \center-column { "Cantus" \bold \sni  } }

vnii = "quintus"
snii = "Q"
vfii = \markup { \center-column { "Quintus" \bold \snii  } }

vniii = "altus"
sniii = "A"
vfiii = \markup { \center-column { "Altus" \bold \sniii  } }

vniv = "tenor"
sniv = "T"
vfiv = \markup { \center-column { "Tenor" \bold \sniv  } }

vnv = "bassus"
snv = "B"
vfv = \markup { \center-column { "Bassus" \bold \snv  } }


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
      { \new Voice = \vniii { \vsiii } }   
      \new Lyrics \lyricsto \vniii { \vliii }
      
      %staff for voice iv
      \new Staff = \vniv \with {
        instrumentName = \vfiv
        shortInstrumentName = \sniv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniv {  \vsiv } }   
      \new Lyrics \lyricsto \vniv { \vliv }
      
      %staff for voice v
      \new Staff = \vnv \with {
        instrumentName = \vfv
        shortInstrumentName = \snv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnv { \clef "bass" \vsv } }   
      \new Lyrics \lyricsto \vnv { \vlv }
          
      
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
     \new Staff = \vnv \new Voice = \vnv { \vsv }
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



