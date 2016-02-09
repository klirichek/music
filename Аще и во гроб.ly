\version "2.18.0"
 
 % закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

keyTime = { \time 2/4 \key bes \major }

soprano = \relative c''  {
	\autoBeamOff
        bes8 bes bes a | bes4. a8 | bes8 a bes a | bes4 bes8 bes | a4. g8 |
        a4 a8 a | a8^>[ g] f g | a4 a | bes4. bes8 | bes4 bes8 bes |
        bes8. bes16 bes8 bes | c c c c | bes4( aes) | g r |
        R2*4
        r4 <g bes>8 q\< | <ees' g>4.\> <d f>8\! |
        <c ees>8[ <bes d>] <aes c> <g bes> | <aes c>[ <bes d> <c ees> <aes c>] |
        q8. <g bes>16 q4 |
        bes8.^\markup {\italic Tutti }  bes16 bes8 bes | a!4 a8 a | bes8. bes16 bes4 | bes4. bes8 |
        bes2 | a | bes\fermata \bar "||"
}

alto = \relative a' {
	\autoBeamOff
	f8 f f f | f4. f8 | f f f f | f4 f8 f | f4. e8 |
	f4 f8 f | f[ e] f e | f4 f | f4. f8 | f4 f8 f |
	g8. g16 g8 g | aes aes aes aes | g4( f) | ees r8 <ees g>^\markup {\italic Solo } |
	<g bes>4 <f a>8 <ees g> | q8. <d f>16 q8 <ees g> |
	<g bes>( <f aes>4) <ees g>8 | q4 <d f>8 q | q4 r4 |
	R2*4
	f8. f16 f8 f | f4 f8 f | f8. f16 f4 | g4. g8 | f2 | f4( ees) | d2\fermata
	
}

tenor = \relative c' {
	\autoBeamOff
	d8 d d c | d4. c8 | d8 c bes c | d4 d8 d | c4. c8 |
	c4 c8 c | c4 c8 c | c4 c | d4. d8 | d4 d8 d |
	ees8. ees16 ees8 ees | ees ees ees ees | ees4( d) | ees4. \breathe ees8 |
	ees4 d8 ees | bes8. bes16 aes8 g | d4 ees | bes' bes8 bes | bes4 r4 |
	R2*4
	d8. d16 d8 d | c4 c8 c | d8. d16 d4 | ees4. ees8 | d2 | c | f,\fermata
}

bass = \relative c {
	\autoBeamOff
	bes8 bes d f | bes4. f8 | bes f d f | bes4 bes,8 d | f4. c8 |
	f4 f8 f | f[ c] a c | f4 f | bes4. bes8 | aes4 aes8 aes |
	g8. g16 ees8 ees | aes aes aes aes | bes4( bes,) | ees r4
	R2*4
	r4 ees8 ees |ees4. ees8 | ees4 ees8 ees | ees2 | ees8. ees16 ees4 |
	bes'8. bes,16 bes8 bes | f'[ g] a f | bes8. bes,16 bes4 | ees4. ees8 | f2 | f, | bes\fermata
	     
}


lyrsoprano = \lyricmode {
	А -- ще и во гроб сниз -- шел е -- си без -- смер -- тен,
	но а -- до -- ву раз -- ру -- шил е -- си си -- лу,
	и вос -- кресл е -- си я -- ко по -- бе -- ди -- тель, Хри -- сте Бо -- же,
	% же -- нам ми -- ро -- но -- си -- цам ве -- ща -- вый, ра -- дуй -- те -- ся,
	и тво -- им а -- по -- сто -- лам мир да -- ру -- яй
	пад -- шим по -- да -- яй  во -- скре -- се -- ни е, во -- скре -- се -- ни -- е.
}

lyralto = \lyricmode {
      \repeat unfold 38 { \skip 1 }
  	%А -- ще и во гроб сниз -- шел е -- си без -- смер -- тен,
	%но а -- до -- ву раз -- ру -- шил е -- си си -- лу,
	%и вос -- кресл е -- си я -- ко по -- бе -- ди -- тель, Хри -- сте Бо -- же,
	же -- нам ми -- ро -- но -- си -- цам ве -- ща -- вый, ра -- дуй -- те -- ся,
	%и тво -- им а -- по -- сто -- лам мир да -- ру -- яй
	%пад -- шим по -- да -- яй  во -- скре -- се -- ни е, во -- скре -- се -- ни -- е.
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
	  title = #"Аще и во гроб"
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
	\new Lyrics \lyricsto "Sop" { \lyrsoprano }
	\new Lyrics \lyricsto "Alto" { \lyralto }

    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "T" \line { "B" } } }
	\set Staff.shortInstrumentName = \markup { \column { "T" \line { "B" } } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Bass" { \lyrsoprano }
  >>
  \layout { 
  }
  \midi { \tempo 4=120 }
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     Файл не был изменен
%}
