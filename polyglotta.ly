 \version "2.18.0"

justkey = { \key a \major }
keyTime = { \justkey \time 2/2 }

soprano = \relative c''  {
	\autoBeamOff

	% греческая
	cis4.^"1. Греческая" b8 cis4 d | e2 d8[( e] d4) | cis1 \bar "||"

	% латинская
	<e a,>2^"2. Латинская" q4 q | <fis a,> <e a,> << { d8([ cis b cis] | < d b >2) }  \new Voice { \voiceThree \tieDown  \shape #'((0.7 . 1) (0 . 1) (0 . 1) (-0.7 . 1)) Tie a2~ | a4( gis)  } >> <a cis>2\bar "||"

	% славянская
	< a cis >4.^"3. Славянская" <a b>8 <a cis>4 <a d> | << { \voiceThree a1 } \new Voice { \voiceOne e'2( d8[ cis] d4) } >> | <a cis>1 \bar "||"

	% еврейская
	 \set Timing.measurePosition = #(ly:make-moment -2/4)
	b4^"4. Еврейская" b | <a c>2 << { \shiftOn  b4 } \new Voice { \voiceOne dis8[ e] } >> <b dis>4 | <b e>1 \bar "||" \break

	% грузинская
	\time 3/4
	<a e'>4^"5. Грузинская" q q | << {  d8[ cis] b[ cis] } \new Voice { \shiftOnnn a4 a } >> <a d>8[ <gis e'>] | <a cis>2. \bar "||"
	
	% польская
	<e' b>2^"6. Польская" <e a,>4 | << { d4( cis) } \new Voice { \shiftOnn a2 } >> <gis b>4 | <a cis>2. \bar "||" \break

	% армянская
	\time 2/2
	cis4.(^"7. Армянская" b8 cis4 d) | cis2 b8[( a] b4) | cis1 \bar "||" 

	% английская
	\shiftOff cis4.(^"8. Английская" b8 cis4) <a d> | << { \voiceOne e'2( d4 e ) } \new Voice { \voiceThree \shape #'((1 . -1) (0 . -1.5) (0 . -1.5) (-1.2 . -1)) Slur a,2.( gis4) } >> | <a cis>1 \bar "||" \pageBreak

	% арабская
	 \set Timing.measurePosition = #(ly:make-moment -1/8)
	b8^"9. Арабская" | <a c>2 << { \voiceThree b } \new Voice { \voiceOne dis8( e dis4) } >> | <b e>1 \bar "||"

	% немецкая
	cis4.(^"10. Немецкая" b8 cis4) d | e2 d4( e) | cis1 \bar "||" \break
	
	% французская
	\time 3/4
	 \set Timing.measurePosition = #(ly:make-moment -1/4)
	<gis b>4^"11. Французская" | << { gis2( a4) } \new Voice { \voiceOne e'2. } >> \time 4/4 <a, d>4 <a cis> <gis b> q | <a cis>1 \bar "||"

	% молдавская
	<a cis>4^"12. Молдавская" <a e'> <a fis'> <a e'> | << { \slurDown  \shape #'((1 . 0.5) (0 . 0.7) (0 . 0.7) (-1.6 . 0.5)) Slur a2( gis) } \new Voice { \voiceOne d'4( cis b2) } >> | <a cis>1 \bar "||" \break

          \set Timing.measurePosition = #(ly:make-moment -2/4)
	\slurUp cis4( d) | e2 d8[( cis] fis4) | e1 \bar "||"

	r4 b( <a e'>2 | << {a2} \new Voice { \voiceOne d4 cis } >> <gis b>2) | <a cis>1 \bar "||"
}

alto = \relative a' {
	\autoBeamOff
	% греческая
	a1~ | a~ | a

	% латинская
	e2 e4 e | d e fis8[ e d e]~ | e2 e |

	% славянская
	e4. d8 e4 fis | e2( fis8[ e] d4) | e1

	% еврейская
	fis4 fis | e2 fis4 fis | gis1

	% грузинская
	e4 e e | fis fis fis8[ e] | e2.

	% польская
	e2 e4 | fis( e) e | e2.

	% армянская
	e2.( f4) | e2 d | e1

	% английская
	a2. fis4 | e2( fis4 e) | e1

	% арабская
	fis8 | e2 fis | gis1

	% немецкая
	e4.( d8 e4) fis | e2 fis4( e) | e1

	% французская
	e4 | e2. | fis4 e e e | e1

	% молдавская
	e4 e fis e | fis2( e) | e1

	a2 | a a | a1

	r4 e( e2 | fis4 e e2) | e1

}

tenor = \relative c' {
	\autoBeamOff
	% греческая
	cis4. b8 cis4 d | e2 d8[( e] d4) | cis1 |

	% латинская
	a2 a4 a | a a <a d>2( | <b d>) <a cis>

	% славянская
	a4. a8 a4 a | a1 | a

	% еврейская
	b4 b | <a c>2 << { \shiftOn b4 } \new Voice { \voiceOne dis8[ e] } >> <b dis> 4| <b e>1

	% грузинская
	a4 a a | a a a8[ gis] | a2.

	% польская
	cis2 cis4 | d( cis) b | <a cis>2.

	% армянская
	a1 | a2 a | a1

	% английская
	e'4.( d8 e4) d | e2( <d a>) | <cis a>1

	% арабская
	b8 <a c>2 << { b2 } \new Voice { \voiceOne dis8 ( e dis4) } >> | <b e>1

	% немецкая
	a2. a4 | a2 a4( gis) | a1

	% французская
	b4 | cis2. | d4 cis b b | a1

	% молдавская
	a4 a a a | a2( gis) | a1

	<< { a2 } \new Voice { \voiceOne cis4( d) } >> | <a e'>2 << { a2 } \new Voice { \voiceOne d8( cis fis4) } >> | <a, e'>1

	r4 b( a2~ | a gis) | a1

}

bass = \relative a, {
	\autoBeamOff
	% греческая
	<a e' a>1~ | q~ | q

	% латинская
	<cis e>2 q4 q | <b fis'> <cis e> << { \voiceTwo d8[( e fis e~] | e2) } \new Voice { \voiceFour  \shape #'((0 . 0.5) (0 . -0.3) (0 . 3.5) (0 . 1)) Tie a2~ | 
	                                                                                    \shape #'((0.7 . 1) (0 . 1.7) (0 . 1.7) (0 . 1)) Slur a4( gis) } >> <a, e'>2
	
	% славянская
	<a e'>4. <a d>8 <a e'>4 <d fis> | <cis e>2( <b fis'>) | <a e'>1

	% еврейская
	<b fis'>4 q | <a e'>2 <b fis'>4 q | e1

	% грузинская
	<e a,>4 q q | <d fis> q q8[ <e b>] | <e a,>2.

	% польская
	<cis gis'>2 <cis a'>4 | << { d4( e) } \new Voice { \voiceFour a2 } >> <e gis>4 <a, e'>2.

	% армянская
	<< { a1 } \new Voice { \voiceFour \shape #'((1 . 0.5) (0 . 0.7) (0 . 0.7) (-1 . 0.5)) Slur e'2.( f4) } >> <a, e'>2 
	<< { a2 } \new Voice { \voiceFour  \shape #'((1 . 1) (0 . 0.7) (0 . 0.7) (-0.5 . 0.5)) Slur d4( f) } >> | <a, e'>1

	% английская
	a'2. <a d,>4 | << { \voiceFour a2( fis4 e) } \new Voice { \voiceTwo cis2( b) } >> | <a e'>1

	% арабская
	<b fis'>8 | <a e'>2 <b fis'> | e1

	% немецкая
	a,2. d4 | cis2 b | a1

	% французская
	<e' gis>4 | << {\voiceTwo cis2.} \new Voice { \voiceFour \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (0 . 0.5)) Slur gis'2( a4) } >> | <d, a'>4 <e a> <e gis> e | <a, e'>1

	% молдавская
	a4 cis d cis | b2( <e e,>) | <a, e'>1

	<a e'>2 | q q | q1

	r4 e'( cis2 | b <e e,>) | <a, e'>1

}


kyrie = \lyricmode {
	Κύ -- ρι -- ε, ἐ -- λέ -- η -- σον.
	Do -- mi -- ne, mi -- se -- re -- re.
	Го -- спо -- ди, по -- ми -- луй.
	А -- до -- най, ха -- ней -- ну.
	У -- па -- ло, ше -- гви -- цкха -- ле.
	Pa -- nie, zmi -- łuj się.
	Тэр, __ во -- хор -- мя.
	Lord, __ have mer -- cy.
	Йа \markup { "рабб"\super"э" } ар -- хам.
	Herr, er -- bar -- me dich.
	Seig -- neur, aie pi -- tié de nous.
	Доа -- мнэ, ми -- лу -- эш -- тэ.
	Σοί, Κύ -- ρι -- ε
	А -- минь
}

#(set-default-paper-size "a4") 
\paper { 
  indent = 0
  top-margin = 15
  left-margin = 25
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
}

\header {
	  title = #"Пасхальная ектения Полиглотта"
		subtitle = #" "
%	  subsubtitle = "(Adeste fideles)"
          tagline = ##f
%	  tagline = \markup {
%	    Engraved at
%	    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
%	    with \with-url #"http://lilypond.org/"
%	    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
%	  }
	}
	
\score { 
  \new ChoirStaff  <<

	% Партия сопрано и альта
    \new Staff = "sa" <<
	\set Staff.instrumentName = \markup { \column { "S"  "A" } }
	\set Staff.shortInstrumentName = \markup { \column { "S" "A" } }
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto }
    >>
	\new Lyrics \lyricsto "Sop" { \kyrie }
    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "T" "B" } }
	\set Staff.shortInstrumentName = \markup { \column { "T" "B" } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>

  >>
  \layout {}
  \midi  { \tempo 4=90 }
}
