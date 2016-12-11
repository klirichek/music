\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\paper {
%  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 30
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
  \numericTimeSignature
  \override NoteHead.style = #'baroque
}

mBreak = { \break }
mpageBreak = { \pageBreak }
mBreak = {  }
mpageBreak = {  }
ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

tempone = {
  \tempo \markup {
      \concat {
        [
        \smaller \general-align #Y #DOWN \note #"1" #1
        "  "
        \smaller \general-align #Y #DOWN \note #"1." #1
        ]
      }
    } 4=140
}
    
temptwo = {
  \tempo \markup {
      \concat {
        [
        \smaller \general-align #Y #DOWN \note #"1." #1
        "  "
        \smaller \general-align #Y #DOWN \note #"1" #1
        ]
      }
    } 4=100
}

superius = \relative c' {  
  \global
  \set Score.tempoHideNote = ##t
  % Вписывайте музыку сюда
  f2 a8[ g a bes] |
  c2 f,4 bes |
  a f g4. g8 |
  f4 f2 e4 |
  f f a8[ g a bes] | \mBreak
  
  c2 g |
  r4 bes a f |
  a4. a8 g2 |
  r f |
  a8[ g a bes] c2 | \mBreak
  
  f, r4 c' |
  a f a2 |
  g c, |
  f1 |
  r2 r4 c' |
  a f g4. g8 | \mBreak
  
  f2 r4 c' |
  a f g4. g8 |
  f2 r4 g |
  e c2 f4 ~ |
  f e8[ d] e4 e \mBreak
  
  \time 3/2
  \tempone
  f1 r2 |
  f1 f2 |
  g1 a2 |
  f1 e2 |
  g1 g2 |
  R1. |
  c2 a4 bes2 g4 | \mBreak
  
  a2. g8[ f] g2 |
  f2. e8[ d] e2 |
  f1 r2 |
  f2. g4 a2 |
  bes f r |
  bes1 c2 |
  d1 c2 | \mBreak
  
  R1. |
  d2 bes4 c2 a4 |
  bes2 g a |
  d bes4 c2 a4 ~ |
  a b c4. bes8 a4 g~ |
  g fis g1 \mBreak
  
  \time 2/2
  \temptwo
  r2 e2 ~ |
  e4 f8[ g] a4. g8 |
  a[ bes] f4 a2 |
  f2. f4 |
  f1 |
  g |
  R | \mBreak
  
  R1*3 |
  r2 a~ |
  a4 bes8[ c] d4 a |
  bes8[ c] a4 g a |
  d,2  d'~ | \mBreak
  
  d4 c bes2 |
  a1~ |
  a |
  R1*2 |
  r2 g~ |
  g4 a8[ bes] c4 g | \mBreak
  
  c4 b c2 |
  g2. g4 |
  a2 f |
  f4. f8 g4 a |
  r2 a~ |
  a4 bes8[ c] d4 d, | \mBreak
  
  f4. g8 a2 |
  f4. e8 f4 bes |
  a2 r |
  r4 bes2 g4 |
  f4. g8 a4. b8 |
  c4 g2 f4 | \mBreak
  
  e4. f8 g2 |
  r4 c2 a4 |
  g4. f8 e4 f8[ g] |
  a2 c4 c |
  c1 |
  \cadenzaOn a\breve\fermata \bar "|."
} % superius

medius = \relative c'' {
  \global
  % Вписывайте музыку сюда
  R1*3
  r2 g |
  a8[ g a bes] c2 | \mBreak
  
  c,2 r |
  r4 g' f d |
  e f2 e4 |
  f2 r |
  f r4 a~ | \mBreak
  
  a8[ g a bes] c2 |
  f, r |
  r4 bes a f~ |
  f a4. d,8 f4 |
  e a g2 |
  r r4 c | \mBreak
  
  a f g4. g8 |
  f2 r4 c' |
  a f g4. g8 |
  c,2 c'~ |
  c4 g c4. bes8 | \mBreak
  
  \time 3/2
  a1 r2 |
  bes1 a2 |
  c1 c2 |
  R1.*2 |
  c2 a4 bes2 g4 |
  R1. | \mBreak
  
  R1.*3 |
  bes1 c2 |
  d1 c2 |
  R1.*2 | \mBreak
  
  d2 bes4 c2 a4 |
  R1. |
  d2 bes4 c2 a4 |
  bes2. g4 a2 |
  f g4 a2 b4 |
  c2. b8[ a] b2 | \mBreak
  
  \time 2/2
  c1 | 
  c2 c |
  c1~ |
  c2 f, |
  R1 |
  e2. f8[ g] |
  a4. g8 a[ bes] g4 | \mBreak
  
  a1 |
  f2 f |
  g1 |
  f~ |
  f |
  R1 |
  r2 d4 d | \mBreak
  
  a'4. g8 f4 g |
  e1 |
  f~ |
  f2 f |
  g1 |
  g |
  R1 | \mBreak
  
  R1*2 |
  r4 a2 bes8[ c] |
  d4 a d cis |
  d1 |
  R1 | \mBreak
  
  r2 r4 a~ |
  a bes8[ c] d4 d, |
  f4. g8 a2 |
  R1*2 |
  r4 c2 a4 | \mBreak
  
  g4. f8 e4 f8[ g] |
  a2 c4 c |
  c2 g4 c~ |
  c c, f2~ |
  f4 e8[ d] e2 |
  \cadenzaOn f\breve\fermata \bar "|."
} % medius

contratenor = \relative c' {
  \global
  % Вписывайте музыку сюда
  R1
  c2 d8[ c d e] |
  f2 c4 es |
  d bes c4. c8 |
  f,1 | \mBreak
  
  r4 f' e c |
  d2. d4 |
  c1 |
  a2. f4 |
  f2 r | \mBreak
  
  r4 f' e c |
  d4. d8 c2 |
  R1 |
  f,2 a8[ g a bes] |
  c2 g |
  r r4 e' | \mBreak
  
  f d e4. e8 |
  f2 r |
  d e~ |
  e c |
  c2. c4 | \mBreak
  
  \time 3/2
  c1 r2 |
  d1 f2 |
  e1 f2 |
  R1.*2 |
  e2 f4 d2 e4 |
  f2 f4 d2 d4 | \mBreak
  
  f2 f4 d2 e4 |
  c2 c1 |
  c r2 |
  d4 e f1 |
  d2 d4 e f2~ |
  f d r |
  d4 e f2. c4 | \mBreak
  
  f2 g4 e2 f4 |
  f2 g4 e2 f4 |
  g2. e4 f2 |
  d2. e4 f2~ |
  f4 d c2 r4 g' |
  e c d1 | \mBreak
  
  \time 2/2
  e2 c~ |
  c4 d8[ e] f4 c |
  f e f2 |
  R1*3 |
  r2 c2~ | \mBreak
  
  c4 d8[ e] f4 c |
  d8[ es] c4 d f |
  e?8[ f] d2 cis4 |
  d1 |
  R1 |
  r2 d ~ |
  d4 e8[ f] g4 d | \mBreak
  
  f8[ g] e4. d8 d4~ |
  d cis8[ b] cis2 |
  d1 |
  R1 |
  r4 g2 f4 |
  e4. d8 e[ f] d4 |
  e f c e~ | \mBreak
  
  e d e2 |
  e4. d8 e[ f d e] |
  f1 |
  r4 d2 e4 |
  f4. e8 f[ d] f4 |
  c d8[ e] f2 | \mBreak
  
  R1*2 |
  r4 f2 e4 |
  d4. c8 d4 bes |
  a2 r |
  R1 | \mBreak
  
  r4 c2 bes4 |
  a4. g8 f2 |
  r4 c'2 d8[ e] |
  f2 c~ |
  c1 |
  \cadenzaOn c\breve\fermata \bar "|."
} % contratenor

tenor = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*4 |
  r2 f \mBreak
  
  a8[ g a bes] c2 |
  g r4 bes |
  a f g4. g8 |
  f2 r4 c' |
  a f g f8[ e] | \mBreak
  
  f4 d e4. e8 |
  f2 r |
  g a8[ g a bes] |
  c2 f, |
  r4 f e c |
  f4. f8 c2 | \mBreak
  
  f c'4. c8 |
  f,4 a c2 |
  r4 f, e c |
  g'4. g8 c,2 |
  r4 g'2 g4 | \mBreak
  
  \time 3/2
  f1 r2 |
  bes1 d2 |
  c1 f,2 |
  c'1 c2 |
  d1 e2 |
  c2 c4 bes2 c4 |
  R1. | \mBreak
  
  c2 a4 bes2 g4 |
  a2 g1 |
  a r2 |
  bes4 c d2 c |
  g4 a bes2 a |
  bes f4 bes2 a4 |
  R1. | \mBreak
  
  bes2 g4 a2 f4 |
  d'2 d4 c2 c4 |
  bes2 d4 c2 c4 |
  bes2 d4 c2 c4 |
  r f e c d2 |
  c r4 g d'2 | \mBreak
 
  \time 2/2
  c1 |
  R1 |
  r2 r4 a~ |
  a bes8[ c] d4. c8 |
  d[ es] c4 d2 |
  g,4 g c4. bes8 |
  a4 e r2 | \mBreak
  
  r4 f2 g8[ a] |
  bes4 f bes8[ c] a4 |
  g f e2 |
  d1 |
  R1 |
  d'2. d4 |
  bes2 g | \mBreak
  
  d4 a' bes g |
  a1 |
  d, |
  R1 |
  g2. a8[ bes] |
  c4 g c b |
  c2 a4 c~ |
  
  c d c2 |
  R1 |
  r4 f,2 g8[ a] |
  bes4 f bes a |
  d,1 |
  r2 a'~ | \mBreak
  
  a4 d, f4. e8 |
  d1~ |
  d |
  R1 |
  r4 f2 d4 |
  c4. d8 e4 f | \mBreak
  
  c2 r |
  r r4 c'4~ |
  c a g2 |
  f f4 f |
  g2 c, |
  \cadenzaOn c\breve\fermata \bar "|."
} % tenor

sextus = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*5 \mBreak
  
  R1*3 |
  r4 f a8[ g a bes] |
  c2 c,4 c' | \mBreak
  
  a f g4. g8 |
  f4 d e f~ |
  f e f f |
  a8[ g a bes] c2 |
  c,4 c' c c |
  c4. c8 c2 | \mBreak
  
  r4 f, e c |
  d4. d8 c2 |
  f c'~ |
  c4 g a2 |
  g c, | \mBreak
  
  \time 3/2
  c1 r2 |
  R1.*2 |
  a'1 c2 |
  b1 c2 |
  a2 f4 g2 c,4 |
  f2 c'4 bes2 c4 | \mBreak
  
  f,2 f4 g2 e4 |
  f2 c1 |
  f r2 |
  R1. |
  bes1 c2 |
  d1 c2 |
  bes d4 bes2 a4 | \mBreak
  
  d2 d4 c2 c4 |
  R1. |
  g2. c,4 f2 |
  g4 bes g2 f~ |
  f r r |
  r4 a b d g,2 | \mBreak
  
  \time 2/2
  g1 |
  R1 |
  r2 f~ |
  f4 g8[ a] bes4 f |
  bes4. a8 bes[ c] d4 |
  c1 ~ |
  c | \mBreak
  
  R1*3 |
  a2. bes8[ c] |
  d2. c4 |
  bes f bes8[ c] a4 |
  g4. a8 bes2 | \mBreak
  
  a2 r |
  r a~ |
  a4 bes8[ c] d2~ |
  d4 c d8[ es] c4 |
  d es d2 |
  R1 |
  r4 f,2 e8[ d] | \mBreak
  
  c4 g' c,2 |
  c4 c c g' |
  f1 |
  r2 r4 a~ |
  a bes8[ c] d4 d, |
  f4. e8 d2~ | \mBreak
  
  d2 r |
  a'2. bes8[ c] |
  d4 a d4. c8 |
  bes4. a8 g2 |
  r4 a2 f4 |
  e4. f8 g4 a8[ bes] | \mBreak
  
  c1 |
  R1 |
  r2 c~ |
  c a |
  g1 |
  \cadenzaOn f\breve\fermata \bar "|."
} % sextus
 
bassus = \relative c {
  \global
  % Вписывайте музыку сюда
  R1*5 \mBreak
  
  R1*2 |
  r2 c |
  d8[ c d e ] f2 |
  f,4 f' e c | \mBreak
  
  d4. d8 c2 |
  r4 bes a f |
  g4. g8 f2 |
  r f |
  a8[ g a bes] c2 |
  f,4 f' e c | \mBreak
  
  d4. d8 c2 |
  r4 f e c |
  d4. d8 c2 |
  r4 c a f |
  c'2. c4 | \mBreak
  
  \time 3/2
  f,1 r2 |
  R1.*2 |
  f'1 a2 |
  g1 c,2 |
  R1. |
  a'2 f4 g2 c,4 | \mBreak
  
  R1.*3 |
  bes1 f'2 |
  bes1 f2 |
  bes,1 f'2 |
  bes1 f2 | \mBreak
  
  R1. |
  bes2 g4 a2 f4 |
  R1. |
  g2. c,4 f2 |
  d e4 f2 g4 |
  a2 g1 | \mBreak
  
  \time 2/2
  c,1 |
  R1*4 |
  c2. d8[ e] |
  f4 c f e | \mBreak
  
  f1 | 
  R1*3 |
  d2. e8[ f] |
  g4 d g fis |
  g1 | \mBreak
  
  R1*2 |
  f2. g8[ a] |
  bes4 f bes a |
  bes1 |
  R1*2 \mBreak
  
  g2. a8[ bes] |
  c4 g c b |
  c1 |
  R1*2 |
  a2. bes8[ c] | \mBreak
  
  d4 a d c |
  d1 |
  r4 d,2 e8[ f] |
  g4 g, bes4. c8 |
  d1 |
  R1 | \mBreak
  
  r4 c2 d8[ e] |
  f4 f, a4. bes8 |
  c1 |
  r4 f2 f,4 |
  c'1 |
  \cadenzaOn f,\breve\fermata \bar "|."
} % bassus

%showLastLength = R1*12

versesuperius = \lyricmode {
  Hæc di -- _ es, quam fe -- cit Do -- mi -- nus, Do -- mi -- nus, hæc di -- _
  es quam fe -- cit Do -- mi -- nus, hæc di -- _
  es quam fe -- cit Do -- mi -- _ nus, quam fe -- cit Do -- mi --
  nus, quam fe -- cit Do -- mi -- nus, quam fe -- cit Do -- _ _ mi --
  nus, ex -- ul -- te -- mus, ex -- ul -- te -- mus et  læ -- te -- mur
  in e -- _ _ _ _ a, ex -- ul -- _ te -- mus, ex -- ul -- te -- mus
  et læ -- te -- mur in e -- a, et læ -- te -- mur __ in e -- _ _ _ _ a,
  Al -- le -- lu -- _ _ _ ya, Al -- le -- lu -- ya,
  Al -- le -- lu -- _ _ _ _ _ ya, Al --
  le -- lu -- ya, __ Al -- le -- lu -- _
  _ _ ya, Al -- le -- lu -- ya, Al -- le -- lu -- ya, Al -- le -- lu -- _
  _ _ ya, Al -- le -- lu -- _ ya, Al -- le -- lu -- _ _ _ ya, Al -- le --
  lu -- _ ya. Al -- le -- lu -- _ _ _ ya, Al -- le -- lu -- ya.
}

versemedius = \lyricmode {
  Hæc di -- _
  es, quam fe -- cit Do -- _ mi -- nus, hæc di --
  _ es quam fe -- cit Do -- _ _ _ mi -- nus, quam
  fe -- cit Do -- mi -- nus, quam fe -- cit Do -- mi -- nus, Do -- _ mi -- _
  nus, ex -- ul -- te -- mus et læ -- te -- mur,
  ex -- ul -- te -- mus
  et læ -- te -- mur, et læ -- te -- mur, et læ -- te -- mur in e -- _ _ _ _ 
  a. Al -- le -- lu -- ya, Al -- le -- lu -- _ _ _
  ya, Al -- le -- lu -- ya, __ Al -- le --
  lu -- _ _ _ ya, Al -- le -- lu -- ya,
  Al -- le -- lu -- _ _ _ ya, 
  Al -- le -- lu -- _ _ _ ya, Al -- le --
  lu -- _ _ _ ya, Al -- le -- lu -- ya, Al -- le -- lu -- _ _ ya.
}

versecontratenor = \lyricmode {
  Hæc di -- _ es, quam fe -- cit Do -- mi -- nus, 
  quam fe -- cit Do -- mi -- nus, Do -- mi -- nus,
  quam fe -- cit Do -- mi -- nus, hæc di -- _ es, quam
  fe -- cit Do -- mi -- nus, quam fe -- cit Do -- mi --
  nus, ex -- ul -- te -- mus et læ -- te -- mur, et læ -- te -- mu,
  et læ -- te -- mur in e -- a, ex -- ul -- te -- mus, ex -- ul -- te -- mus, ex -- ul -- te -- mus
  et læ -- te -- mur, et læ -- te -- mur et læ -- te -- mur in e -- _ a, in e -- _ _
  a. Al -- le -- lu -- _ _ _ ya, Al --
  le -- lu -- _ _ _ _ _ _ _ _ ya, Al -- le -- lu -- _ 
  _ _ _ _ _ _ ya, Al -- le -- lu -- _ _ _ ya, Al -- le -- lu --
  _ ya, Al -- le -- lu -- ya, Al -- le -- lu -- _ _ _ _ _ ya, 
  Al -- le -- lu -- _ _ _ ya,
  Al -- le -- lu -- _ ya, Al -- le -- lu -- _ ya.
}

versetenor = \lyricmode {
   Hæc di -- _ es, quam fe -- cit Do -- mi -- nus, quam fe -- cit Do -- _
   _ _ _ mi -- nus, hæc di -- _ es, quam fe -- cit Do -- mi -- nus,
   quam fe -- cit Do -- mi -- nus, quam fe -- cit Do -- mi -- nus, Do -- mi --
   nus, ex -- ul -- te -- mus, ex -- ul -- te -- mus et læ -- te -- mur,
   et læ -- te -- mur in e -- a, ex -- ul -- te -- mus, ex -- ul -- te -- mus et læ -- te -- mur,
   et læ -- te -- mur, et læ -- te -- mur, et læ -- te -- mur et læ -- te -- mur in e -- _ _ a, in e --
   a. Al -- le -- lu -- _ _ _ ya, Al -- le -- lu -- _ _ ya,
   Al -- le -- lu -- _ _ _ _ _ _ ya, Al -- le -- lu -- _
   _ _ _ _ _ ya, Al -- le -- lu -- _ _ _ ya, Al -- le --
   lu -- ya, Al -- le -- lu -- _ _ _ ya, Al --
   le -- lu -- _ ya, __ Al -- le -- lu -- _ _ _
   ya, Al -- le -- lu -- ya, Al -- le -- lu -- _ ya.
}

versesextus = \lyricmode {
  Hæc di -- _ es, quam 
  fe -- cit Do -- mi -- nus, Do -- _ _ mi -- nus, hæc di -- _ es quam fe -- cit Do -- mi -- nus,
  quam fe -- cit Do -- mi -- nus, quam fe -- cit Do -- _ mi --
  nus, ex -- ul -- te -- mus et læ -- te -- mur, et læ -- te -- mur 
  et læ -- te -- mur in e -- a, ex -- ul -- te -- mus et læ -- te -- mur,
  et læ -- te -- mur, et læ -- te -- mur in e -- a, __ in e -- _ _
  a. Al -- le -- lu -- _ _ _ _ _ ya, __
  Al -- le -- lu -- _ _ _ _ _ _ _ _ 
  ya, Al -- le -- lu -- _ _ _ _ _ ya, Al -- le --
  lu -- _ ya, Al -- le -- lu -- _ ya, Al -- le -- lu -- _ _ _ ya, __
  Al -- le -- lu -- _ _ _ _ _ ya, Al -- le -- lu -- _ _ _
  ya, Al -- le -- lu -- ya.
}

versebassus = \lyricmode {
  Hæc di -- _ es, quam fe -- cit
  Do -- mi -- nus, quam fe -- cit Do -- mi -- nus, hæc di -- _ es quam fe -- cit
  Do -- mi -- nus, quam fe -- cit Do -- mi -- nus, quam fe -- cit Do -- mi --
  nus, ex -- ul -- te -- mus et læ -- te -- mur,
  ex -- ul -- te -- mus, ex -- ul -- te -- mus
  et læ -- te -- mur, et læ -- te -- mur in e -- _ _ _ 
  a. Al -- le -- lu -- _ _ _
  ya, Al -- le -- lu -- _ _ _ ya,
  Al -- le -- lu -- _ _ _ ya,
  Al -- le -- lu -- _ _ _ ya, Al -- le --
  lu -- _ _ _ ya, Al -- le -- lu -- _ _ _ ya,
  Al -- le -- lu -- _ _ _ ya, Al -- le -- lu -- ya.
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
      \new Voice = "sextus" \sextus
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "sextus" \versesextus
    
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


