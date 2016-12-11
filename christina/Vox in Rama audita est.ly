\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

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
  title = "Vox in Rama audita est"
  subtitle = ""
  composer = "Giaches de Wert (1535-1596)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

barnumbers = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key c \major
  \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature #'text = \markup \musicglyph #"timesig.C22"
  \time 4/2
  \autoBeamOff
  \compressFullBarRests
  \override Voice.NoteHead #'style = #'baroque
}

mBreak = { \break }
mpageBreak = { \pageBreak }
%mBreak = {  }
%mpageBreak = {  }
ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }
invisibleTime = \once \override Staff.TimeSignature #'break-visibility = #all-invisible 

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

raisedSixTwoTime = ^\markup {
    \override #'(baseline-skip . 2)
    \column {
        \number \small 6 \number \small 2
    }
}

cantus = \relative c' {  
  \global
  % Вписывайте музыку сюда
  R\breve*4 | r1 e ~ | e e | f\breve | e | r1 e | e'1.( d4 c | d2) d e1 |
        r2 e e1 | cis1. e2 | cis e cis e | b1 b2 c | b c

    b2 c | e\breve | e1 r2 e | e1. cis2 | e cis d cis | e b1 b2 ~ | b c b c | 
        b c gis1 ~ | gis gis1 | R\breve*2 | r1 c ~ | c2 b bes( a4 g |
        a\breve) | g | R | c1. a2 |

    d1 d | r d ~ | d2 c cis2.( b8[ cis] | d1) a | R\breve | d1. a2 | e'\breve |
        a,1 r2 d ~ | d c cis2.( b8[ cis] | d1.) a2 | e'2. d4 c2 b ~ |
        b4\melisma a a1 \ficta gis2\melismaEnd | a\breve | r1 b | c2. c4 

    c2 d ~ | d d e1 | c r2 a ~ | a c1 b2 | a\breve | b2.( a4 b c d2 | 
        cis4 d \[ e1 d2 ~ | d4 \] c4) c2 b4\melisma a a2 ~ | 
        a \ficta gis\melismaEnd a1 | r2 b cis2. cis4 |
        cis1. d2 ~ | d dis e1 ~ | e e |

    r2 a,1 g2 | b1 a ~ | a r1 | b cis2. cis4 | cis2 d1\ficta d2 | 
        e\breve | e1 r2 e, | fis2. fis4 fis2 g ~ | g gis a1 ~ | a\breve | 
        a1 r2 gis ~ | gis a a1 | \invisibleTime\time 6/2
        s1*0\raisedSixTwoTime
        gis2 b1 c2 a1 | \invisibleTime\time 4/2 b\longa*1/2
    \bar "|."
}

altus = \relative c' {
  \global
  % Вписывайте музыку сюда
  R\breve*3 | r1 b ~ | b b | c\breve | a1 r2 a ~ | a a'1\melisma 
        gis4\ficta fis | 
        gis1.\melismaEnd gis2 | a\breve | a,1 c2.( b8[ a] | b2) b e e | e1. cis2 | 
        e cis e cis |

    e2 e1. | e2 a, e' a, ~ | a e'1 a,2 | e'1 e ~ | e r | r2 a a1 | 
        gis\breve | r2 a gis a | gis a e1 ~ | e\breve ~ | e1 g ~ | g r1 |
        R\breve | r1 r2 g ~ | g fis f( e4 d | e\breve) | d | r1 c' ~ |
        c2 b bes2( a4 g | 

    a\breve) | g | R | c1. b2 | bes( a4 g a1 ~ | a) g2 e | a1 a ~ | a\breve |
        fis1 a ~ | a2 g g g ~ | g4( f e d e1) | e2 e f2. f4 | f2 g1 g2 |
        a1 a,2 d ~ | d f e1 | a,

    a1 | a'1. g2 | e e f2. f4 | g2 g1 g2 | a\breve | a1 r2 a | 
        c b2.\melisma a4 a2 ~ | a \ficta gis\melismaEnd a a | 
        a2. a4 a2 a | a b1 e,2 | e\breve | d1. b2 ~ | b b r e |

    fis2. fis4 fis2 g ~ | g gis a1 | a,2 a'1 a2 | c1 b2 b | c1 a | a r2 e |
        e2. b4 cis1 | e1. f2 | d1 b2 b' ~ | b a c1 | \invisibleTime\time 6/2
        s1*0 
        b2 gis1 a2 a1 |\invisibleTime\time 4/2 gis\longa*1/2
}

quintus = \relative c' {
  \global
  % Вписывайте музыку сюда
  R\breve*4 | R\breve*3 | r1 b ~ | b b | c a | r2 a1 a'2 ~ |
        a( gis4 fis gis2) gis | a\breve | r2 a a1 | gis1. a2 | gis a gis a | e1

    a1 ~ | a2 a, e' a, | e' b e1 | e r2 e | e1 e2 e | g e e e | e1. b2 | 
        R\breve | g'1. e2 | es( d4 c d1 ~ | d) c | d d | r2 d1 a2 | c1 c |
        g'1. d2 |

    a'\breve | d,1 r2 g ~ | g fis f( e4 d | e\breve) | d1 d | c g' ~ | 
        g2 d r1 | r1 g ~ | g2 fis f( e4 d | e\breve) | d1 f2. f4 | e1 e |
        e r2 b | c2. c4 d2 d ~ | d e e1 |

    a,1 r | a' c2 b | a a, c2. c4 | c2 c d e ~ | e a,2 r1 | R\breve | 
        r2 e' f1 | e d | r2 b c1 | b a | r2 e'1 fis2 ~ | fis4 fis4 fis2 g1 |
        gis2 a1 gis2 |

    a1 d,1 ~ | d2 e1 a,2 ~ | a a1 c2 | b1 a2 a' ~ | a f2.( g4 a f |
        g e a1) g2 | a a, cis2. cis4 | d2 d1 e2 | e1 e | r2 e1 d2 
        f1 e ~ | e\breve ~ | \invisibleTime\time 6/2
        s1*0 
        e\breve. ~ | 
        \invisibleTime\time 4/2 e\longa*1/2
}

tenor = \relative c {
  \global
  % Вписывайте музыку сюда
  R\breve | r1 e ~ | e e | f e ~ | e\breve | r2 a1 e'2 ~ | e( d4 c d2) d |
        e c b e | e1 r2 e ~ | e e2 f1 ~ | f e2 a, | e'2.( d8[ c] b2) b |
        a\breve ~ a | R | 

    r2 e' e1 | cis1. e2 | cis e cis e | b1 b2 a | b a a a | b1 b ~ | b2 a b a |
        b a b1 ~ | b\breve | c1 r | r g' ~ | g2 f fis2.( e8[ fis] | g\breve) |
        d1 r | r r2 c ~ | c b

    bes2( a4 g | a\breve) | g1 d' ~ | d d | r1 r2 g ~ | g fis f2.( e8[ d] | 
        e\breve) | d1 r2 d ~ | d c cis2.( b8[ cis] | d\breve) | a1 r2 a ~ |
        a a d1 | b g2. g4 | c1 b | a\breve | R | r2 e'1 f2 ~ | f4 f f2

    g2 g | a\breve | a,1 r2 b | c2. c4 d1 | d1. d2 | e1 a, | r2 e' f1 | 
        e e | r2 e e2. e4 | e2 a,2. a4 d2 ~ | d b1 b2 ~ | b c b1 | a r |
        r2 b cis2. cis4 |

    d2 d1 e2 | e1 e2 e ~ | e d f1 |e 2 a, e'2. e4 | e2 e2. e4 a,2 |
        a a1 c2 | b1 a ~ | a\breve ~ | a1 r2 b ~ | b c a1 | 
        \invisibleTime\time 6/2 s1*0 
        b2 b1 a2 c1 | \invisibleTime\time 4/2 b\longa*1/2
}

bassus = \relative c {
  \global
  % Вписывайте музыку сюда
  b\breve | b1 c | a r2 a ~ | a a'1\melisma\ficta gis4 fis | 
        gis1.\melismaEnd gis2 | a a,1 a2 | d\breve | c2 a e'1 ~ | e e | 
        a, d ~ | d a'2.( g8[ f] | e1.) e2 | a,\breve ~ a | 

    R\breve*3 | r2 a' a1 | gis1. a2 | gis a fis a | e1 e ~ | e2 a, e' a, | 
        e' a, e'1 ~ | e e | r1 c' ~ | c2 b bes( a4 g | a\breve) | g | R | R |
        r1 g ~ | g2 f fis2.( e8[ fis] | 

    g\breve) | d | R\breve*2 | r1 g1 ~ | g2 fis2 f( e4 d | e\breve) | d | 
        a'1. a2 | d,\breve |  e ~ e | a,1 d2. d4 | f2 e1 e2 | R\breve | r1 e |
         f2. f4 f1 | f1. g2 | a1 d, | g1. bes2 |

    a\breve ~ | a1 d, | e a | e a,1 ~ | a r | r e'1 ~ | e\breve | 
        fis2. fis4 fis2 g ~ | g gis2 a1 | d,2 d1 c2 | e1 a, | R\breve | r1 e' |
        a2. a4 a1 | d,1. c2 | e1 a,2 a |
    
    cis2. cis4 cis2 d ~ | d d2 e1 ~ | e2 a,2 r1 | \invisibleTime\time 6/2
        s1*0 
        e'1. a,2 a1 | \invisibleTime\time 4/2 e'\longa*1/2
}

versecantus = \lyricmode {
 Vox __ in Ra -- ma au -- di -- ta est,
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus,
        et u -- lu -- la -- tus mul -- tus,
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus, __
        et u -- lu -- la -- tus mul -- tus.
    Ra -- chel plo -- rans,
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans,
    \normalLyrics
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans
    \normalLyrics
        fi -- li -- os su -- os,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
        qui -- a non __ sunt,
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt, __
    et no -- lu -- it con -- so -- la -- ri, 
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt,
    \ijLyrics
    qui -- a non sunt.
    \normalLyrics
}

versealtus = \lyricmode {
  Vox __ in Ra -- ma au -- di -- ta est,
        au -- di -- ta est,
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus,
        et u -- lu -- la -- tus mul -- tus, __
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus, __
    Ra -- chel plo -- rans,
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans,
    \normalLyrics
    Ra -- chel plo -- rans fi -- li -- os su -- os,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
        qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non __ sunt, 
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non __ sunt, 
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt,
    qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt,
    qui -- a non sunt.
}

versequintus = \lyricmode {
  Vox __ in Ra -- ma au -- di -- ta est,
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus, __
        et u -- lu -- la -- tus mul -- tus,
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus, 
    Ra -- chel plo -- rans,
        plo -- rans,
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans,
    \normalLyrics
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans,
    \normalLyrics
    Ra -- chel plo -- rans fi -- li -- os su -- os,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt, 
    \ijLyrics
    qui -- a non sunt, 
    \normalLyrics
    et no -- lu -- it con -- so -- la -- ri, 
        con -- so -- la -- ri,  __
    qui -- a non sunt,
    qui -- a __ non sunt.
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt. __
}

versetenor = \lyricmode {
    Vox __ in Ra -- ma __ au -- di -- ta est,
        au -- di -- ta est,
    vox __ in Ra -- ma au -- di -- ta est, __
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus,
        et u -- lu -- la -- tus mul -- tus, __
    \ijLyrics
        et u -- lu -- la -- tus mul -- tus,
    \normalLyrics
    Ra -- chel plo -- rans,
    Ra -- chel plo -- rans,
        plo -- rans,
    Ra -- chel plo -- rans,
    \ijLyrics
    Ra -- chel plo -- rans,
    \normalLyrics
    Ra -- chel plo -- rans fi -- li -- os su -- os,
    et no -- lu -- it con -- so -- la -- ri, 
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non sunt, __
        qui -- a non sunt,
        qui -- a non sunt.
}

versebassus = \lyricmode {
      Vox in Ra -- ma au -- di -- ta est,
    vox in Ra -- ma au -- di -- ta est,
        au -- di -- ta est, __
    plo -- ra -- tus et u -- lu -- la -- tus mul -- tus, __
        et u -- lu -- la -- tus mul -- tus,
    Ra -- chel plo -- rans,
    Ra -- chel plo -- rans,
    Ra -- chel plo -- rans fi -- li -- os su -- os,
        fi -- li -- os su -- os,
    et no -- lu -- it con -- so -- la -- ri, 
        qui -- a non __ sunt,
        qui -- a non sunt, __
    et __ no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt, 
    et no -- lu -- it con -- so -- la -- ri, 
    et no -- lu -- it con -- so -- la -- ri, 
    qui -- a non sunt.
}

incipitcantus=\markup{
	\score{
		\new MensuralVoice {
		   \relative c' {
		\set Staff.instrumentName=\markup "Cantus"
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist
		\override Staff.KeySignature.flat-positions = #'((-5 . 5))
		  \time 2/2
                  \clef "petrucci-g"
                  \key c \major
                  e\breve
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

incipitaltus=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup "Altus"
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist
		\override Staff.KeySignature.flat-positions = #'((-5 . 5))
                  \time 2/2
                  \clef "petrucci-c2"
                  \key c \major
                  b\breve
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

incipitquintus=\markup{
	\score{
		\new MensuralVoice {
		   {
		\set Staff.instrumentName=\markup "Quintus"
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \time 2/2
                  \clef "petrucci-c2"
                  \key c \major
                  b\breve
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
		\set Staff.instrumentName=\markup "Tenor"
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
                \time 2/2
                \clef "petrucci-c3"
                \key c \major
                e\breve
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
		   \relative c {
		\set Staff.instrumentName=\markup "Bassus"
		\override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist	
		  \time 2/2
                  \clef "petrucci-f3"
                  \key c \major
                  b\breve
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
     \new Staff = "cantus" \new Voice = "cantus" { \cantus }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "quintus" \new Voice = "quintus" { \quintus }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 2)
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
    
    % Cantus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitcantus
    } 
    {
      \barnumbers
      
      \new Voice = "cantus" \cantus
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "cantus" \versecantus
    
    % Altus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitaltus
    } \new Voice = "altus" \altus
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "altus" \versealtus
    
    % Quintus
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \incipitquintus
    } \new Voice = "quintus" \quintus
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "quintus" \versequintus
    
    % Tenor
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
  \bookOutputSuffix "quintus"
  \score {
    \rehearsalMidi "quintus" "soprano sax" \versequintus
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
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \versebassus
    \midi { }
  }
}


