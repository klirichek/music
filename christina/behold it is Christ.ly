\version "2.18.2"

#(set-global-staff-size 17)

\header {
  title = "Behold, it is Christ"
  composer = \markup { \right-column { "Edmund Hooper" "ed Hubert Beckwith" "October 27, 2014" } }
  % Удалить строку версии LilyPond 
  tagline = ##f
}

incipit =
#(define-music-function (parser location incipit-music) (ly:music?)
  #{
    \once \override Staff.InstrumentName.self-alignment-X = #RIGHT
    \once \override Staff.InstrumentName.self-alignment-Y = ##f
    \once \override Staff.InstrumentName.padding = #0.3
    \once \override Staff.InstrumentName.stencil =
      #(lambda (grob)
	 (let* ((instrument-name (ly:grob-property grob 'long-text)))
	   (set! (ly:grob-property grob 'long-text)
		 #{ \markup
		      \score
		         {
			   { \context MensuralStaff \with {
	                        instrumentName = #instrument-name
	                     } $incipit-music
			   }
	                   \layout { $(ly:grob-layout grob)
			             line-width = \indent
		                     indent =
				% primitive-eval is probably easiest for
				% escaping lexical closure and evaluating
				% everything respective to (current-module).
	                             #(primitive-eval
                                       '(or (false-if-exception (- indent incipit-width))
					    (* 0.5 indent)))
			             ragged-right = ##f
			             ragged-last = ##f
			             system-count = #1 }
			 }
		  #})
           (system-start-text::print grob)))
  #})

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key c \minor \time 2/2 
  \override AccidentalSuggestion.avoid-slur = #'inside
}

incipitMedius = \new MensuralVoice {
  \clef "mensural-c1"
  \key c \major
  \time 2/2
  a'\breve  s\breve % two bars
}

scoreMedius = \relative c' {
   \incipit \incipitMedius
   \global
   \scaleDurations 1/2  {
    \override NoteHead.style = #'baroque
    % main
    \clef "treble"
    \key c\minor
    c'\breve | e1. e?2 | f1 e | c2 ees1 d2 | c1 b~ |
    b r | r2 c2 d ees | f d4 f ees1 |
    
    %page 2
    d2 d2.( c4) c2~ | c b c1 | r2 bes2 c d | f f4 c ees2 d |
    d2 b c ees~ | ees4 d c2 c b | c\breve |
    r2 c bes bes | ees2. ees4 d2 bes | bes1.( f2 | g1) c |
    
    %page 3
    r1 r2 c | bes bes f'2. f4 | ees2 d2.( c4 a2) | b g1 ees'2 |
    d c b c( | d) g, r c~ | c b ees d4 c | ees f d2 c g~ |
    g4 a( bes2) c g4 g | bes2 a g1 | d'\breve | r2 a bes1 |
    
    %page 4
    g2 a4.( bes8) c2 c~ | c b ees d4 c | ees f d2 c c | g1. c2 |
    a2 d1 d2 | g, d'4 d d1 | r r2 d2~ |
    d c f e4 d | f e d( c) \ficta b4.( \ficta a8 \ficta b!4) c | d g,2( bes aes?4) f2 | g1 r2 g' |
    
    %page 5
    d c1 b2 | c2. c4 a2 d~ | d bes1 g2 |
    r\breve | r2 f' \ficta e d~ | d c c \ficta b | c ees1 d2~( |
    d4 g, c2) b2 c~ | c4 d( b2) c1 | c2. c4 \cadenzaOn c\breve\fermata \cadenzaOff \bar "|."
    
   }
}

incipitCtI = \new MensuralVoice {
  \clef "mensural-c3"
  \key c \major
  \time 2/2 
  e'\breve s\breve
}

scoreCtI = \relative c' { 
  \incipit \incipitCtI
  \global
  \scaleDurations 1/2  {
  \override NoteHead.style = #'baroque
  \dynamicUp
  \autoBeamOff
   g'\breve | g1. g2 | aes1 g | ees2 c1 d2 | ees1 d2 d |
   g g bes g4 bes | a2 g a? g4 g | f2. d4 g2 g |
  
    %page 2
    bes2 g4 g a2 g | bes4( a) g f e2. ees4 | d1 c2 g' | c,1 r2 bes'2 |
    a g g g~ | g4 g g2 a g | g g ees ees |
    aes2. aes4 g1 | g g2 d | r g f f | bes ees, ees aes |
    
    %page 3
    g\breve | g2 d2.( ees4 c2) | bes g'2.( a4) \ficta fis2 | g d1 c2 |
    g' g g g, | a bes c1 | r2 g' ees2. f4 | g\breve |
    r1 r2 g~ | g \ficta fis bes \ficta a4 g | bes c a2 g d(~ | d4 ees c2) d1~ |
    
    %page 4
    d2 d ees4( f) g2~ | g4 f d2 r ees | c d4 d g,1~ | g r2 g'2~ |
    g fis bes a4 g | bes c a2 g d~( | d4 ees c2) d d |
    d ees4 c d2 bes' | a d, d2.( c4) | bes2 r r1 | r2 bes'2 a g~ |
    
    %page 5
    g4 \ficta a fis2 g2.( \ficta f4) | ees1 f4 g( a2) | bes( g) d ees4.( f8) |
    g2 bes a g~ | g \ficta fis g2. g4 | g1 f2 d | e ees bes4 c d2 |
    ees c g' c, | g'( d) c1 | e2 c c\breve\fermata
  
  }
}


incipitCtII = \new MensuralVoice {
  \clef "mensural-c3"
  \key c \major
  \time 2/2
  \once \override Staff.Accidental.glyph-name-alist = #alteration-mensural-glyph-name-alist
  cis'\breve s\breve
}

scoreCtII = \relative c' {
  \incipit \incipitCtII
  \global
  \scaleDurations 1/2 {
  \override NoteHead.style = #'baroque
  \dynamicUp
  \autoBeamOff
  e\breve | c1. c2 | c1 c | g'2 g1 g2 | g( c,) g'1~ |
  g2 g, d' d | ees c4 ees d c c2~ | c4 \ficta b8[ \ficta a] \ficta b!2 c2. c4 |
  
  %page 2
  d2 bes4 bes f'2 r | r d g g | bes g4 bes aes2 g~( | g f) g d~ |
  d4 d2 d4 ees2 g~ | g4 f ees2 d2. f4 | e2. f4( g1) |
  c,2 ees r g | ees ees bes'2. a4 | g2. f8[( ees] d2) d~ | d c1 c2 |
  
  %page 3
  bes bes ees2. ees4 | d2 g g( f) | g bes a d, | d b1 g2 |
  g1. g'2 | f d( g f) g1. g2 | c, d g,1~ |
  g2 d' g,1 | r2 a d1 | g,2( a4) d( d2) g~ | g fis bes a4 g |
  
  %page 4
  bes4. c8 a2 g( f4 ees | d2) g g1~ | g g2 g~ | g4 f d2 g1 |
  r2 a( g1) | d1 r2 g~ | g fis bes a4 g |
  \ficta a bes g2 fis g~( | g fis) g1~ | g2 g f2. c4 | ees2( d ees1 |
  
  %page 5
  f2 c) d bes' | a g1 \ficta fis2 | g4 d( ees) bes2( c8[ d] ees4 f |
  g2) d c1 | d r2 d | b( ees) d bes' | a g1 f4 f~ |
  f g ees2 d f | ees bes' a g~ | g4 c, f2 e\breve\fermata
  
}
}

incipitTenor = \new MensuralVoice {
  \clef "mensural-c4"
  \key c \major
  \time 2/2
  e\breve s\breve
}

scoretenor = \relative c' {
  
  \incipit \incipitTenor
  \global
  \scaleDurations 1/2 {
  \override NoteHead.style = #'baroque
  \dynamicUp
  \autoBeamOff
  
  g\breve | g1. c2 | aes( f) g1 | g g2 g | g1 g |
  d2 d' g,1 | ees2. g4 f2 g | a( f) g1 |
  
  %page 2
  r2 g d' ees | f d c g~ | g d' ees d4 d | c1. bes2 |
  d g, g g~ | g g d' d c1 r2 c |
  aes aes ees'2. d4 | c1 g2.( f4) | ees2 ees bes'2. bes4 | g1 aes2 ees'~( |
  
  %page 3
  ees bes) c1 | r2 bes c f, | bes2. aes8[ g] a1 | g r2 c |
  d ees d c~ | c b ees d4 c | ees f d2( c1) | g r2 c~ |
  c bes ees d4 c | d1 g, | d' g, | r2 c bes bes~ |
  
  %page 4
  bes d g, c | bes4( a) g2 c1 | g r2 c~ | c b ees d4 c |
  d1 g, | r2 d' g,1 | r2 a bes 1 |
  f2 g a d | d( a) g1 | r2 ees' d c~ | c bes c2. c4 |
  
  %page 5
  bes2 a g1 | c2 ees d1 | g, bes2 c |
  g2. f4 ees4.( f8 g4. aes8 | bes2) a bes2. c4 | d2 g, a( g) | c1 r2 bes |
  a g1 \ficta fis2 | g2. g4 e2. f4 | g2( a) g\breve\fermata
  
}  
}

incipitBass = \new MensuralVoice {
  \clef "petrucci-f4"
  \key c \major
  \time 2/2
  b,1\rest a,\breve
}

scorebass = \relative c {
  \incipit \incipitBass
  \global
  \scaleDurations 1/2 {
  \override NoteHead.style = #'baroque
  \dynamicUp
  \autoBeamOff
  r1 c | c1. c2 | f1 c | c2 c1 b2 | c1 g1~ |
  g r2 g | c c f ees | d1 c2 c |
  
  %page 2
  g'1 f2 ees | d g c, c | g' g c bes |aes1 g2 g | 
  fis g ees c~ | c4 d ees2 f g | c,\breve |
  r\breve | r\breve | r\breve | r2 c aes aes |
  
  %page 3
  ees'2. ees4 c2 c | g'1( aes) | g d | g1. c,2 |
  b c g' ees | f g c, aes' | g1. c,2~ | c b ees d4 c |
  ees f d2 c ees | d1 r2 g2~ | g \ficta fis bes a4 g | bes c a2 g g |
  
  %page 4
  g2.( f4) ees2 c( g'1) c,2 c~ | c \ficta b ees d4 c | ees f g2 c, ees |
  d1 r2 g2~ | g fis bes a4 g | bes c a2 g1( |
  f2) ees d bes | d1 g,~ | g2 ees' f aes | g1 c, |
  
  %page 5
  r\breve | r\breve | r2 ees2 d c~ |
  c \ficta b c ees | d1 g~ | g2 ees( f g) | c,1 g2 bes |
  c1 g2 aes( | g1) c2 c~ | c a c\breve\fermata 
 
  }
}
lyricMedius = \lyricmode {
Be -- hold, it is Christ, be -- hold, it is Christ
  which was or -- dain -- ed by God, or -- dain -- ed __ by God,
  which was or -- dain -- ed by God, to be the judge of __ the quick and the dead.
  To him give all the pro -- phets wit -- ness,
  to him give all the pro -- phets __ wit -- ness,
  that through his name, his __ name
  who __ so -- ev -- er be -- liev -- eth in him,
  who __ so -- ev -- er be -- liev -- eth in him,
  be -- liev -- eth in him, who __ so -- ev -- er be -- liev -- eth in him,
  be -- liev -- eth in him, be -- liev -- eth in him,
  who __ so -- ev -- er be -- liev -- eth in him, __  be -- liev -- eth __ in him
  shall re -- ceive re -- mis -- si -- on of __ their sins,
  shall re -- ceive __ re -- mis -- si -- on of their __ sins,
  of __ their sins, of their sins.
}

lyricCtI = \lyricmode {
Be -- hold, it is Christ, be -- hold, it is Christ
  which was or -- dain -- ed by God, or -- dain -- ed by God,
  which was or -- dain -- ed by God, or -- dain -- ed by God, or -- dain -- ed by God,
  to be the judge of __ the quick and the dead.
  To him give all the pro -- phets wit -- ness,
  to him give all the pro -- phets wit -- ness, wit -- ness, pro -- phets wit -- ness 
  that through his name, that through his name, that through his name,
  who so -- ev -- er be -- liev -- eth in him, in __ him  __
   be -- liev -- eth __ in him,  be -- liev -- eth in him, __ 
  who __ so -- ev -- er be -- liev -- eth in him, in __ him
  be -- liev -- eth in him, be -- liev -- eth in __ him, 
  
  shall re -- ceive __ re -- mis -- si -- on of their sins, __
  of their sins, shall re -- ceive __ re -- mis -- si -- on of their sins,
  re -- mis -- si -- on of their sins, of their sins, of their sins.
}

lyricCtII = \lyricmode {
   Be -- hold, it is Christ, be -- hold, it is Christ __
  which was or -- dain -- ed by God, or -- dain -- ed by God, or --
  dain -- ed by God, which was or -- dain -- ed by God, by __  God to
  be the judge of __ the quick and the dead, \markup { \italic and }
  the dead. To him give all the pro -- phets wit -- ness, to
  him give all the pro -- phets wit -- ness, give all the pro -- phets wit --
  ness, that through his __ name, that through his name, __
 his name, that through his __ name who __ so -- ev -- er be --
 liev -- eth in him, __  in him, __ be -- liev -- eth in him,
 in __ him, who __ so -- ev -- er be --
 liev -- eth in him, in __ Him, be -- liev -- eth in __
 him shall re -- ceive re -- mis -- si -- on __
 of their sins, of their sins, shall re -- ceive re -- mis --
 si -- on of their sins, of their \markup \italic "sins," __ \markup \italic of \markup \italic their sins.
}

lyrictenor = \lyricmode {
  Be -- hold, it is Christ, be -- hold, it is Christ,
  it is Christ, it is Christ, it is __ Christ
  which was or -- dain -- ed by God, __ or -- dain -- ed by God, to
  be the judge of __ the quick and dead. To
  him give all the pro -- phets __ wit -- ness, all the pro -- phets wit --
  ness, give all the pro -- phets wit -- ness, that 
  through his name who __ so -- ev -- er  be -- liev -- eth in __ him, who __
  so -- ev -- er be -- liev -- eth in him, be -- liev -- eth __
  in him, be -- liev -- eth in him, who __ so -- ev -- er be -- 
  liev -- eth in him, be -- liev --
  eth, be -- liev -- eth in __ him, shall re -- ceve re -- mis -- si --
  on of their sins, of their sins, shall re --
  ceive, re -- ceve __ re -- mis -- si -- on of their __ sins, shall
  re -- ceive re -- mis -- si -- on of their sins.
}

lyricbass = \lyricmode {
  Be -- hold, it is Christ, be -- hold, it is Christ __
  which was or -- dain -- ed by God, or -- 
  dain -- ed by God, by God, which was or -- dain -- ed by God to
  be the judge of __ the quick and the dead.
  To him give
  all the pro -- phets wit -- ness, wit -- ness, that
  through his name, that through his name, his name, who __ so -- ev -- er be --
  liev -- eth in him, in him, who __ so -- ev -- er be -- liev -- eth in him, be --
  liev -- eth in __ him, who __ so -- ev -- er be -- liev -- eth in him, in
  him, Who __ so -- ev -- er be -- liev -- eth in him, __
  be -- liev -- eth in him, __ be -- liev -- eth in him
  shall re -- ceive __
  re -- mis -- si -- on of __ their __ sins, of their
  sins, of their __ sins, of __ their sins.
  
}

scoreMediusPart = \new Staff \with {
  instrumentName = "Medius"
  midiInstrument = "voice oohs"
} { \global \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2) \scoreMedius }
\addlyrics { \lyricMedius }

scoreCTIPart = \new Staff \with {
  instrumentName = \markup { \column { "Contra-" "tenor I" } }
  midiInstrument = "voice oohs"
} { \scoreCtI }
\addlyrics { \lyricCtI }


scoreCTIIPart = \new Staff \with {
  instrumentName = \markup { \column { "Contra-" "tenor II" } }
  midiInstrument = "voice oohs"
} { \clef "treble" \scoreCtII }
\addlyrics { \lyricCtII }

scoreTenorPart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \scoretenor }
\addlyrics { \lyrictenor }

scoreBassusPart = \new Staff \with {
  instrumentName = "Bassus"
  midiInstrument = "voice oohs"
} { \clef bass \scorebass }
\addlyrics { \lyricbass }


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent = 0
}
\score {
    \new ChoirStaff <<
    \scoreMediusPart
    \scoreCTIPart
    \scoreCTIIPart
    \scoreTenorPart
    \scoreBassusPart
    >>
  \layout { 
  %Metronome_mark_engraver
  indent = 4\cm
  }
  \midi {
    \tempo 2=60
  }
}
}
