 \version "2.18.0"
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

justkey = { \key c \major }
keyTime = { \justkey \secondbar \placeDynamicsLeft \time 4/4 }

soprano = \relative c''  {
	\autoBeamOff
	\partial 4
	\tempo "Торжественно"
	\dynamicUp
	b8.\f b16 | c4 d c c8 d | c4\> b c\! r4 |
    R1*4 \break
    g'4^\markup {\halign #RIGHT \italic Tutti \dynamic f} g8 g fis4 f | e8. c16 c8 c c4 c8 c |
    c4 b c r8 <c e>^\markup {\halign #RIGHT \italic Соло \dynamic p } |
    <c e>[(\< <a c> <b d> <c e>])\! <d f>[ <c e>]\> <b d> c\! |
    <gis b>4 r8 q8 q8[( <b d> <a c> <gis b>]) |
    <c e>[ <b d>] <a c> <gis b> <a c>4(\< <c e>)\! |
    <c a'>4. <c e>8 <e g>[ <d f>] <c e>[\> <b d>]\!
    <a c>4( <gis b>) <a c> r |
    r8 <a c>^\markup {\halign #RIGHT \italic tutti \dynamic mf} q <c e> <b d>8. b16 b8 r |
    r8 <b g'> q f' <c e>4. q8 | <b d>4 b8\< b\! e[ d] c[\> b]\! | c4 c c c8 c | c4( b8[ a]) b4\> b\! |
    c8 <e g> <d f> <c e> <b d>4\f <a c>8\> <b d>\! | <c e>4 r g' g8 f | e4 r f2(\f |
    e4 f8[ e] d4) c \break | b2(^> c4) d | c2^> c4\> b\! | c c^> c^> c^> | c1\fermata \bar "|."
}

alto = \relative a' {
	\autoBeamOff
	\partial 4
	g8. g16 | g4 gis a a8 a | g?4 f e g8^\markup { \italic Соло } g | g4.( f8) f8. e16 f8 g |
	a[( g f]) e d4 d8 e | f4.( e8) e8. d16 d8 a'| g[( f e]) d e4 r | b' b8 b c4 d |
	c8. g16 g8 g f4 g8 f | g4 g8[ f] e4 r8 a | a2 a4 gis8 a | e4 e e2 |
	e4 e8 e a2 | a4. a8 d,4 d | e2 a4 r | r8 a g fis g8. g16 g8 r |
	r g g <a c>16[ <b d>] c8[( g e]) c | g'4 g8 g g4 g | g g a a8 a | g2 g4 g |
	g r g g8 g | g4 r g g8 g | g4 r a2( | g2.) g4 |
	g2. a4 | g2 g4 g | g g g g | g1 \bar "|."

}

tenor = \relative c' {
	\autoBeamOff
	\dynamicUp
	\partial 4 d8.\f d16 | e4 e e f8 f | e4 d c e8 e | e4.( d8) d8. c16 d8 e |
        f[( e d]) c b4 b8 c | d4.( c8) c8. b16 b8 f' | e[( d c]) b c4 r |
        d d8 d d4 g | g8. e16 e8 e f4 g8 d | e4 d c r | 
        R1*4
        r2 r8 <c e>^\markup {\halign #RIGHT \italic tutti \dynamic mf} q <b d> | <a c>8. q16 q8 r8 r <b d> q <a c> |
        <g b>8. q16 q8 r8 r2 |
        r4 d'8 e g[ f] e[ d] | e4 e f f8 f | e2 d4 d |
        e4 r f\f f8 f | e <e g> <d f> <c e> <b d>4 <a c>8 <b d> | 
        <c e>4 r a8[(\f b c d] e4 d8[ c] b4) c |
        f2( e4) f | e2 d4\> d\! | e e e e | e1 \bar "|."
}

bass = \relative a {
	\autoBeamOff
	\partial 4 g8. g16 | c4 b a8[ g?] f d | g4\> g, c\! c8 c | c2. c4 |
	c( b8) c g'4 r | g g g g | g g, c r | g'\f g8 g a4 b |
      c8. c16 c8 c a4 g8 f | g4 g, c r | 
      R1*4
      r2 r8 a c e | a8. a,16 a8 r r g b d | 
      g8. g,16 g8 r r2 | r4 g'8\< g\! g4 g\> | c\! c, f f8 f | g2\> g,4\! g |
      c r g' g8\> g\! | c,4 r g'\> g8 g\! | c,4 r f8([\f g a b] c2 g8[ f]) e4 |
      d2(_> c4) f | g2_> g,4 g | c c'_> g_> e_> | c1\fermata \bar "|."
      
}


troparsop = \lyricmode {
	\repeat unfold 10 \skip 1
	
	\repeat unfold 15 \skip 1
%	Те -- бе кла -- ня -- ти -- ся Те -- бе кла -- ня -- ти -- ся солн -- цу, солн -- цу пра -- вды.
	\repeat unfold 18 \skip 1
	\repeat unfold 18 \skip 1
	\repeat unfold 7 \skip 1
	
	Го -- спо -- ди, 
}

troparalt = \lyricmode {
	Ро -- жде -- ство Тво -- е Хри -- сте Бо -- же наш.

	Воз -- си -- я ми -- ро -- ви свет ра -- зу -- ма,
	воз -- си -- я ми -- ро -- ви свет ра -- зу -- ма.
	"В нем" бо звез -- дам слу -- жа -- щи -- и зве -- здо -- ю у -- ча -- ху -- ся.
	Те -- бе кла -- ня -- ти -- ся Те -- бе кла -- ня -- ти -- ся солн -- цу, солн -- цу пра -- вды.
	И Те -- бе ве -- де -- ти, и Те -- бе ве -- де -- ти "с вы" -- со -- ты во -- сто -- ка:
	Го -- спо -- ди, Сла -- ва Те -- бе, Сла -- ва Те -- бе,
	Сла -- ва Те -- бе, Сла -- ва, Сла -- ва, Сла -- ва Те -- бе, Сла -- ва Те -- бе.
}

tropartenor = \lyricmode {
	\repeat unfold 45 \skip 1
	
	\repeat unfold 18 \skip 1
	\repeat unfold 11 \skip 1
	Го -- спо -- ди, 
}

troparbass = \lyricmode {
	
	\repeat unfold 10 \skip 1 Воз -- си -- я свет ра -- зу -- ма,
	ми -- ро -- ви свет ра -- зу -- ма.
	\repeat unfold 15 \skip 1
	И Те -- бе ве -- де -- ти, и Те -- бе ве -- де -- ти 
}

#(set-default-paper-size "a4") 
\paper { 
  indent = 0
  top-margin = 15
  left-margin = 15
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
}

\header {
	  title = #"Тропарь Рождества"
		subtitle = #" "
          composer = #"муз. П. Носова"
	  tagline = ##f
	}
	
\score { 
  \new ChoirStaff  <<

	% Партия сопрано и альта
    \new Staff = "sa" <<
	\set Staff.instrumentName = \markup { \column { "С" \line { "А" } } }
	\set Staff.shortInstrumentName = \markup { \column { "С" \line { "А" } } }
      \clef treble
      \new Voice = "Sop" { \voiceOne \keyTime \soprano }
      \new Voice = "Alto" { \voiceTwo \alto }
    >>
	\new Lyrics \lyricsto "Sop" { \troparsop }
	\new Lyrics \lyricsto "Alto" { \troparalt }
    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "Т" \line { "Б" } } }
	\set Staff.shortInstrumentName = \markup { \column { "Т" \line { "Б" } } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Tenor" { \tropartenor }
    \new Lyrics \lyricsto "Bass" { \troparbass }


  >>
  \layout {}
  \midi { \tempo 4=120 }
}
