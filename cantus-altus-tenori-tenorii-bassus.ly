\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\paper {
%  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  %indent = 4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}

\header {
  title = "Miserere - Salmo 50"
  subtitle = ""
  composer = "Josquin des Pres 1450-1521"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \minor
  \time 2/2
  \autoBeamOff
}

cantus = \relative c'' {
  \global
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  % Вписывайте музыку сюда
  
}

altus = \relative c'' {
  \global
  % Вписывайте музыку сюда
  
}

tenorI = \relative c' {
  \global
  % Вписывайте музыку сюда
  
}

tenorII = \relative c' {
  \global
  % Вписывайте музыку сюда
  
}


bassus = \relative c {
  \global
  % Вписывайте музыку сюда
  
}

versecantus = \lyricmode {
 
}

versealtus = \lyricmode {
  
}

versetenorI = \lyricmode {
  
}

versetenorII = \lyricmode {
   
}

versebassus = \lyricmode {
  
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "cantus" \new Voice = "cantus" { \cantus }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "tenorI" \new Voice = "tenorI" { \tenorI }
     \new Staff = "tenorII" \new Voice = "tenorII" { \tenorII }
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

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Cantus"
    } \new Voice = "cantus" \cantus
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "cantus" \versecantus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Altus"
    } {
      \clef "treble_8"
      \new Voice = "altus" \altus
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "altus" \versealtus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor 1"
    } {
      \clef "treble_8"
      \new Voice = "tenorI" \tenorI
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenorI" \versetenorI
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor 2"
    } {
      \clef "treble_8"
      \new Voice = "tenorII" \tenorII
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenorII" \versetenorII
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bassus"
    } {
      \clef bass
      \new Voice = "bassus" \bassus
    }
    \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bassus" \versebassus
  >>
  \layout { 
 \context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\consists Ambitus_engraver 
  }
}
  \midi {
    \tempo 4=100
  }
}

% MIDI для репетиции:
\book {
  \bookOutputSuffix "cantus"
  \score {
    \rehearsalMidi "cantus" "soprano sax" \versecantus
    \midi { }
  }
}

\book {
  \bookOutputSuffix "altus"
  \score {
    \rehearsalMidi "altus" "soprano sax" \versealtus
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenorI"
  \score {
    \rehearsalMidi "tenorI" "soprano sax" \versetenorI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenorII"
  \score {
    \rehearsalMidi "tenorII" "tenor sax" \versetenorII
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \versebassus
    \midi { }
  }
}


