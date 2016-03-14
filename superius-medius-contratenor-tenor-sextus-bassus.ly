\version "2.18.2"

%#(ly:set-option 'point-and-click #f)
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
  indent = 40
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
}
incipitwidth = 20

\header {
  title = "Haec Dies"
  subtitle = ""
  composer = "Wiliam Byrd ( c.1540-1623)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

barnumbers = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key d \minor
  \time 2/2
  \autoBeamOff
}

mBreak = { \break }
mpageBreak = { \pageBreak }
%mBreak = {  }
%mpageBreak = {  }
ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }


superius = \relative c' {  
  \global
  % Вписывайте музыку сюда
  
}

medius = \relative c'' {
  \global
  % Вписывайте музыку сюда
  
}

contratenor = \relative c' {
  \global
  % Вписывайте музыку сюда
  
}

tenor = \relative c' {
  \global
  % Вписывайте музыку сюда
  
}

sextus = \relative c' {
  \global
  % Вписывайте музыку сюда
  
}

bassus = \relative c {
  \global
  % Вписывайте музыку сюда
  
}

versesuperius = \lyricmode {
 
}

versemedius = \lyricmode {
  
}

versecontratenor = \lyricmode {
  
}

versetenor = \lyricmode {
   
}

versesextus = \lyricmode {
   
}

versebassus = \lyricmode {
  
}

incipitsuperius=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Superius" "[Soprano]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist
		\override Staff.KeySignature.flat-positions = #'((-5 . 5))
		  \cadenzaOn 
		  \clef "petrucci-c1"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
	  }
	}
}

incipitmedius=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Medius" "[Soprano]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist
		\override Staff.KeySignature.flat-positions = #'((-5 . 5))
		  \cadenzaOn 
		  \clef "petrucci-c1"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
	  }
	}
}

incipitcontratenor=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Contratenor" "[Alto]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \cadenzaOn 
		  \clef "petrucci-c3"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
	  }
	}
}

incipittenor=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Tenor" "[Tenor]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \cadenzaOn 
		  \clef "petrucci-c4"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
	  }
	}
}

incipitsextus=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Sextus" "[Tenor]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \cadenzaOn 
		  \clef "petrucci-c4"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
	  }
	}
}

incipitbassus=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup \right-column { "Bassus" "[Bass]" }
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \cadenzaOn 
		  \clef "mensural-f"
		  \key f \major
		  \time 2/2
		  \hide r2
		}
		} 
	  \layout {
		  \context {\Voice
			  \remove Ligature_bracket_engraver
			  \consists Mensural_ligature_engraver
		  }
		  line-width=\incipitwidth
		  indent=0
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
     \new Staff = "contratenor" \new Voice = "contratenor" { \contratenor }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "sextus" \new Voice = "sextus" { \sextus }
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
    
    % Superius
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitsuperius
    } 
    {
      \barnumbers
      
      \new Voice = "superius" \superius
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "superius" \versesuperius
    
    %Medius
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitmedius
    } \new Voice = "medius" \medius
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "medius" \versemedius
    
    %Contratenor
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitcontratenor
    } \new Voice = "contratenor" \contratenor
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "contratenor" \versecontratenor
    
    %Tenor
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipittenor
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \versetenor

    % Sextus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitsextus
    } {
      \clef "treble_8"
      \new Voice = "sextus" \medius
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "sextus" \versemedius
    
    %Bassus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitbassus
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
  \bookOutputSuffix "superius"
  \score {
    \rehearsalMidi "superius" "soprano sax" \versesuperius
    \midi { }
  }
}

\book {
  \bookOutputSuffix "medius"
  \score {
    \rehearsalMidi "medius" "soprano sax" \versemedius
    \midi { }
  }
}

\book {
  \bookOutputSuffix "contratenor"
  \score {
    \rehearsalMidi "contratenor" "soprano sax" \versecontratenor
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \versetenor
    \midi { }
  }
}

\book {
  \bookOutputSuffix "medius"
  \score {
    \rehearsalMidi "medius" "tenor sax" \versemedius
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


