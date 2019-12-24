\version "2.18.0"
 
 % закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

keyTime = { \time 3/4 \key c \major }

soprano = \relative c''  {
	\autoBeamOff
        c2. |
        c2 c4 |
        b4. c8 d e |
        f4( e) d |
        c2 r4 |
        R2.*3 |
        r4 \breathe c8 c d e |
        f4( e) d |
        c2.
        \bar "|."
}

alto = \relative a' {
	\autoBeamOff
	a2. |
	g2 g4 |
	g4. g8 g g |
	a4( g) f |
	e2 e8[( f]) |
	g2.-> |
	g |
	g |
	g4 g8 g c c |
	c2 a8[( b]) |
	g2. 
	
}

tenor = \relative c' {
	\autoBeamOff
	f2. |
	e2 e4 |
	d4. c8 b c |
	c2 a8[( b]) |
	g2 r4 |
	r2 e'4 |
	d4.( c8 d[ e] |
	f4) e d |
	e e8 e f g |
	a4( g) f |
	e2.
}

bass = \relative c {
	\autoBeamOff
	f8[( e] f[ g] a[ b]) |
	c[( b] c[ g]) e[( c]) |
	f4. e8 d c |
	f4( g) g, |
	c2 r4 |
	r2 c'4 |
	b4.( a8 b[ c] |
	d4) c b |
	c4\breathe c8 bes a g |
	f4( g) g, |
	c2.
	     
}


lyrsoprano = \lyricmode {
	Сей день е -- го же со -- тво -- ри Го -- сподь.
	Во -- зра -- ду -- е -- мся и во -- зве -- се -- ли -- мся в_онь.
}

lyrbass = \lyricmode {
	Сей __  день __ е -- го же со -- тво -- ри __ Го -- сподь.
	Во -- зра -- ду -- е -- мся и во -- зве -- се -- ли -- мся в_онь.
}

#(set-default-paper-size "a4") 
\paper { 
  indent = 0
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##t
  ragged-last-bottom = ##f
}

\header {
	  title = #"Прокимен Пасхи"
		subtitle = #" "
		%composer = #"Ф.Е.Степанов"
	  tagline = ##f
	}
	
\score { 
  \new ChoirStaff  <<

	% Партия сопрано и альта
    \new Staff = "sa" <<
	\set Staff.instrumentName = \markup { \column { "S" \line { "A" } } }
	\set Staff.shortInstrumentName = \markup { \column { "S" \line { "A" } } }
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto }
    >>
	\new Lyrics \lyricsto "Alto" { \lyrsoprano }
    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "T" \line { "B" } } }
	\set Staff.shortInstrumentName = \markup { \column { "T" \line { "B" } } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Bass" { \lyrbass }
  >>
  \layout { 
  }
  \midi { \tempo 4=120 }
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     Файл не был изменен
%}
