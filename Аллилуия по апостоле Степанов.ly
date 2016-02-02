 \version "2.18.0"

keyTime = { \key c \major }

soprano = \relative c''  {
        \set Score.markFormatter = #format-mark-box-numbers
	\autoBeamOff
        \cadenzaOn
        \mark \default 
        c1~ c4 c c c8 c \bar ""
        c c c c c2 \bar ""
        c4 c c2. b4 c1  \bar "||" \mark \default
        
        c1~ c4 c c c8 c \bar ""
        c c c c c2 \bar ""
        c4 f e( d8[ c] b4) b c1  \bar "||" \mark \default
        r1 r2 r1 r2 c4( d e d8[ e] f4) e8[ d] \bar "" c4 c8 c8 \bar ""
        d e f f e2 \bar ""
        f2( e4) <c d>4 <c e>2 \bar "" <b d> c( \bar "" e~) e( c)~ c~ c~ c \bar "" 
        c4 c <c g'>2( <d g>) d <g e>1\fermata \bar "||"        
}

alto = \relative a' {
	\autoBeamOff
	\cadenzaOn
	e4( f g f8[ g] a4) g8[ f] e4 e8 e8 \bar ""
	f g a a g2 \bar ""
	g4 a g( f8[ e] f4) f e1 \bar "||"
	
	e4( f g f8[ g] a4) g8[ f] e4 e8 e \bar ""
	f g a a g2 \bar ""
	g4 a g( f8[ e] g4) f e1 \bar "||"
	
	r1 r2
        c4( d e d8[ e] f4) e8[ d] \bar "" e4 f g
        f8[( g] a4) g8[ f] \bar ""e4 e8 e f g a a g2 \bar ""
        f2. f4 g2 \bar "" g g~ \bar "" g~ g( c~) c~ c~ c \bar ""
        c4 c g2( <g b>) q g1\fermata \bar "||"
}

tenor = \relative c' {
	\autoBeamOff
	c1~ c4 c c c8 c \bar ""
	c c c c c2 \bar ""
	c4 c8[ d] d4( d8[ c] d4) d c1 \bar "||"
	c1~ c4 c c c8 c \bar ""
	c c c c c2 \bar ""
	c4 c c2( d4) d c1 \bar ""
	r1 r2
	e,4( f g f8[ g] a4) g8[ f] \bar "" << { \voiceThree e4 c } \new Voice { \voiceOne c' c} >> c2 \breathe \bar ""
	c4 c \bar "" a a8 a a c c c c2 c2. <c d>4 <c e>2 \bar "" <b d> c2  \bar ""
	c4( d e d f) e8[ d] c4 c8 c d e f f e2 \bar ""
	e4 f e( d8[ c] <b d>2) q <c e>1\fermata \bar "||"
}

bass = \relative c {
	\autoBeamOff
	c4( d e d8[ e] f4) e8[ d] c4 c8 c \bar ""
	d e f f e2 \bar ""
	e4 f g2. g,4 c1 \bar "||"
	
	c4( d e d8[ e] f4) e8[ d] c4 c8 c \bar ""
	d e f f e2 \bar ""
	e4 f g2. g,4 c1 \bar "||"
	
	c4( d e d8[ e] f4) e8[ d] \bar "" c2~ c~ c c c \breathe \bar ""
	f4 g \bar "" a a8 a \bar ""
	d, c f a c4.( bes8) \bar ""
	a2. a4 g2 \bar "" g4( f) e2 \breathe \bar ""
	e4( f g f a) g8[ f] e4 e8 e \bar "" f g a a g2 \breathe \bar ""
	g4 a g( f8[ e] g2) g <c, g'>1\fermata \bar "||"
	     
}


lyrsoprano = \lyricmode {
	Ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а.
	А -- лли -- лу -- и -- а, ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а.
	А -- лли -- лу -- и -- а, ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а, __ 
	Ал -- ли -- лу -- и -- а.
}

lyralt = \lyricmode { 
      \repeat unfold 30 { \skip 1 }
      Ал -- ли -- лу -- и -- а, а -- лли -- лу -- и -- а, 
}

lyrtenor = \lyricmode { 
    \repeat unfold 30 { \skip 1 }
    Ал -- ли -- лу -- и -- а,
}

lyrbass = \lyricmode {
    \repeat unfold 30 { \skip 1 }
    
    Ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а, ал -- ли -- лу -- и -- а
    ал -- ли -- лу -- и -- а а -- лли -- лу -- и -- а, ал -- ли -- лу -- и -- а, 
    ал -- ли -- лу -- и -- а.
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
	  title = #"Аллилуиа по Апостоле"
		subtitle = #" "
          composer = #"Ф.Е.Степанов"
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
	\new Lyrics \lyricsto "Alto" { \lyralt }
    
	% партия баса и тенора
    \new Staff = "tb" <<
	\set Staff.instrumentName = \markup { \column { "T" \line { "B" } } }
	\set Staff.shortInstrumentName = \markup { \column { "T" \line { "B" } } }
      \clef "bass"
      \new Voice = "Tenor" { \voiceOne \keyTime \tenor }
      \new Voice = "Bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "Tenor" { \lyrtenor }
    \new Lyrics \lyricsto "Bass" { \lyrbass }


  >>
  \layout { 
    \context {
      \Staff
      % удаляем обозначение темпа из общего плана
      \remove "Time_signature_engraver"
    }
  }
  \midi { \tempo 4=120 }
}
