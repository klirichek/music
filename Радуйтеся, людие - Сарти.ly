\version "2.18.0"
 
 % закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

abr = {\break}
abr = {}

keyTime = { \time 4/4 \key d \major }

global = {
  \keyTime
      \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \arpeggioBracket
  \accidentalStyle neo-modern-voice-cautionary
  \set Score.markFormatter = #format-mark-box-numbers
}

soprano = \relative c''  {
  \global
	\autoBeamOff
	
	d4.\f d8 d4 d |
	d4. d8 d2\breathe |
	cis4. cis8 cis4 cis |
	cis4. cis8 cis2 \breathe |
	d4. d8 d4 d | \abr
	
	d4. d8 d4 d |
	d d d cis |
	d2 r | \break
	R1*8 |
	d4.^\markup\italic"Все" d8 d4 d | \abr 
	
	d2 d |
	cis4. cis8 cis4 cis |
	cis2 cis |
	g'4. g8 g4 g |
	fis1 |
	e2 r | \break
	<cis e>4 q2-> <b d>4 | \abr
	
	<a cis>2 <b d>4 <cis e> |
	<d fis>2( <cis e>) |
	<b d>2 r4 q |
	q2. <a cis>4 |
	<gis b>2 <a cis>4 <b d> |
	<cis e>2( <b d>) |
	<a cis> r | \abr
	a'2 r |
	gis r |
	a1 |
	a2( gis) |
	a2 r4 a,8 a |
	d2.( c4) | \abr
	
	b2 b4 b8 b |
	e2. d4 |
	cis2. r4 |
	r4 cis( d) fis | \abr
	
	e2( d) |
	cis2 r |
	r4 cis( d) fis8 fis |
	e2 d |
	cis2 r4 e8. e16 | \abr
	
	fis4. fis8 fis4 fis |
	e4. e8 e4 e8 e |
	d4. d8 d4 d |
	cis4. cis8 cis2 |
	b4. b8 d4 d | \abr
	
	d2 d4 d |
	d d( cis) cis |
	d2 \breathe a4 a |
	b2 cis |
	d( b) |
	a1~ |
	a2. a4 |
	a1\fermata \bar "|."
}

alto = \relative a' {
	\autoBeamOff
	a4. a8 a4 a |
	a4. a8 a2 |
	a4. a8 a4 a |
	a4. a8 a2 |
	a4. a8 a4 a |
	
	a4. a8 a4 a |
	b b a g |
	fis2 r |
	<fis a>2^\markup\italic"Соло" q4 q |
	<d fis>2. <e g>8[( <fis a>]) |
	<g b>2 q4 <fis a> | \abr
	q2 <e g>4 r |
	q2 q4 <d fis> |
	<cis e>2. <d fis>8[( <e g>]) |
	<fis a>2 q4 <e g> |
	q2 <d fis>4 r |
	a'4. a8 a4 a |
	
	a2 a |
	a4. a8 a4 a |
	a2 a |
	b4. b8 b4 b |
	a1 |
	a2 r2 |
	a4 a2 gis4 |
	
	a2 a4 a |
	gis2( a) |
	e2 r4 e |
	e2. e4 |
	e2 e4 e |
	gis1 |
	a2 r |
	
	cis2 a4 a |
	b2 gis4 gis |
	a( cis d b) |
	cis2( b) |
	a2 r |
	r4 fis4( g) a |
	
	g4. g8 r2 |
	r4 gis4( a) b8 b |
	a4. a8 a4 a8. a16 |
	cis1( |
	
	a) |
	a2 a4 a8 a |
	a1~ |
	a2 a |
	a r4 a8. a16 |
	
	a4. a8 a4 a |
	a4. a8 a4 cis8 cis |
	b4. b8 b4 b |
	ais4. ais8 ais2 |
	b4. g8 g4 b |
	
	a2 a4 a |
	a a( g) g |
	fis2 fis4 fis |
	g2 g |
	fis( g) |
	fis1( |
	g2.) g4 |
	fis1
	
	
	

	
}

tenor = \relative c' {
  \global
	\autoBeamOff
	fis4. fis8 fis4 fis |
	fis4. fis8 fis2 | \breathe
	e4. e8 e4 e |
	e4. e8 e2 | \breathe
	fis4. fis8 fis4 fis |
	
	fis4. fis8 fis4 fis |
	g4 g fis e |
	d2 r |
	d d4 d |
	d2. d4 |
	d2 d4 d |
	
	a2 a4 r |
	a2 a4 a |
	a2. a4 |
	a2 a4 a |
	cis2 d4 r |
	
	fis4. fis8 fis4 fis |
	
	fis2 fis |
	e4. e8 e4 e |
	e2 e |
	d4. d8 d4 d |
	d1 |
	cis2 r |
	
	R1*8 |
	
	e2 cis4 cis |
	d2 b4 b |
	cis( e fis2) |
	e( d) |
	cis r |
	r r4 d8 d |
	
	d4. d8 r2 |
	r4 e2 e8 e |
	e4. e8 e4 r |
	r e4( fis) d |
	
	cis2( d4 fis) |
	e2 r |
	r4 e( fis) d8 d |
	cis2( d4) fis |
	e2 r4 cis8. cis16 |
	d4. d8 d4 d |
	cis4. cis8 cis4 cis8 cis |
	fis4. fis8 fis4 fis |
	fis4. fis8 fis2 |
	d4. d8 d4 g |
	
	fis2 fis4 fis |
	fis fis( e) e |
	d2 d4 d |
	d2 a |
	a( d) |
	d1( |
	e2.) e4 |
	d1
	
	
	

}

bass = \relative c' {
	\autoBeamOff
	
	d4.\f d,8 fis4 a |
	d4. d,8 d2 |
	a'4. a,8 cis4 e |
	a4. a,8 a2 |
	d4. d8 fis4 a |
	
	d4. d,8 d4 d |
	g g a a, |
	d2 r |
	
	R1*8
	
	d'4. d,8 fis4 a |
	d2 d, |
	a'4. a,8 cis4 e |
	a2 a, |
	g'4. g8 b4 g |
	d'2( d,) |
	a'2 r |
	
	R1*8
	a2 r |
	e r |
	a( <d, d'>) |
	\arpeggioParenthesis <e e'>1\arpeggio |
	a2 r |
	r4 d,( e fis)
	
	g4.( g,8) g4 r |
	r e'( fis) gis8 gis |
	a4. a,8 a4 r |
	r2 r4 d4( |
	
	g?) e fis( d) |
	a2 r |
	r r4 d4( |
	g) e8 e fis4 d |
	a2 r4 a'8. a16 |
	
	d4. d8 d4 d |
	a4. a8 a4 a8 a |
	b4. b8 b4 b |
	fis4. fis8 fis2 |
	g4. g8 b4 g |
	
	d'2 d,4 d |
	a' a( a,) a |
	d1 |
	d2 d |
	d1~( |
	d |
	a2.) a4 |
	d1\fermata
	
 
}


lyrsoprano = \lyricmode {
	Ра -- ду -- йте -- ся, лю -- ди -- е;
	ра -- ду -- йте -- ся, лю -- ди -- е;
	ра -- ду -- йте -- ся, лю -- ди -- е и ве -- се -- ли -- те -- 
	\set associatedVoice = "Alto" ся.
	
	
	А -- нгел се -- дяй на ка -- ме -- ни гро -- бном,
	а -- нгел се -- дяй на ка -- ме -- ни гро -- 
	\set associatedVoice = "Sop" бном,
	той бла -- го -- ве -- сти рек,
	той бла -- го -- ве -- сти рек,
	той бла -- го -- ве -- сти рек:
	
	Хри -- стос во -- скре -- се из ме -- ртвых,
	Хри -- стос во -- скре -- се из ме -- ртвых,
	Спас  Спас Спас ми -- ра, 
	
	И -- сто -- щи -- вый а -- до -- во ца -- рстви -- е.
	И -- сто -- щи -- вый а -- до -- во ца -- рстви -- е.
	
	И я -- вля -- е -- тся а -- по -- сто -- лом,
	и я -- вля -- е -- тся а -- по -- сто -- лом,
	ра -- дость со -- тво -- ри, со -- тво -- ри ве -- чну -- ю,
	ра -- дость со -- тво -- ри __ ве -- чну -- ю.
}

lyralto = \lyricmode {
	\repeat unfold 81 \skip 1
	Спас  ми -- ра, Спас ми -- ра \skip 1 \skip 1 \skip 1
	
	И -- сто -- щи -- вый а -- до -- во ца -- рстви -- е.
	И -- сто -- щи -- вый а -- до -- во ца_- \skip 1 \skip 1
	
	
}

lyrtenor = \lyricmode {
	\repeat unfold 74 \skip 1
	
	И -- сто -- щи -- вый
	а -- до -- во ца -- рстви -- е
}

lyrbass = \lyricmode {
	\repeat unfold 59 \skip 1
	
	И -- сто -- щи -- вый
	а -- до -- во ца -- рстви -- е
	
	\repeat unfold 29 \skip 1
	ра -- дость ве -- чну -- ю.
}


#(set-default-paper-size "a4") 
\paper { 
  indent = 0
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
	  title = #"Радуйтеся, людие"
		subtitle = #"№22"
		composer = #"муз. Джузеппе Сарти"
	  tagline = ##f
	}
	
\score { 
  \new ChoirStaff  <<

	% Партия сопрано и альта
    \new Staff = "sa" <<
	\set Staff.instrumentName = \markup { \column { "С" "A"  } }
	\set Staff.shortInstrumentName = \markup { \column { "С"  "A" } }
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto }
    >>
	\new Lyrics \lyricsto "Sop" { \lyrsoprano }
	\new Lyrics \lyricsto "Alto" { \lyralto }
    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "T" "Б" } }
	\set Staff.shortInstrumentName = \markup { \column { "T" "Б" } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Tenor" { \lyrtenor }
    \new Lyrics \lyricsto "Bass" { \lyrbass }
  >>
  \layout { 
        \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi { \tempo 4=120 }
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     Файл не был изменен
%}
