\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

keyTime = { \key des \major \time 4/4 }

soprano = \relative f'' {
	\autoBeamOff \dynamicUp
	f4\f f8 ees8 f4 des4 | f4 f8 ees8 f4 des4 | f4 f8 f ges[ f] ees des |
	ees8[ des] c bes c[ des] ees4 | ees f8 f ges4 f | aes8[ ges ] f ees f[ ges] f4 |
	f2 ges4 ges | ees8[( des c des] ees[ des ees f] | ges4.\< aes8)\! f2\fermata \bar "|." 
}

altoone = \relative d'' { 
\autoBeamOff \dynamicUp
	des4\f des8 c des4 f, | des' des8 c des4 f, | des' des8 des des4 aes8 aes |
	aes4 aes8 aes aes8[ bes] c4 | aes4 aes8 aes bes4 aes | aes aes8 aes aes4 aes |
	f'2 ees4 des | c8[( bes aes bes] c[ bes c des] ees4.\< c8)\! des2\fermata
}

altotwo = \relative a' {
\autoBeamOff
	aes4 aes8 aes aes4 f | aes aes8 aes aes4 f | aes aes8 aes bes[ aes] ges f |
	ges8[ f] ees des aes'4 c | s1 | s1 |
	c2 bes4 bes | aes1( | bes4. aes8) aes2\fermata
}

tenorone = \relative f' {
\autoBeamOff \dynamicUp
	f4\f f8 ees f4 des | f f8 ees f4 des | f f8 f ges[ f] ees des |
	ees8[ des] c bes c[ des] ees4 | ees4 f8 f ges4 f | aes8[ ges] f ees f[ ges] f4 |
	f2 ges4 ges | ees8[( des c des] ees[ des ees f] | ges4.\< aes8)\! f2\fermata 
}

tenortwo = \relative d' {
\autoBeamOff
	des4 des8 c des4 f, | des' des8 c des4 f, | des' des8 des des4 aes8 aes |
	aes4 aes8 aes aes4 aes | c c8 c ees4 c | f8[ ees] des c des[ ees] des4 |
	c2 bes4 bes | c8[( bes aes bes ] c[ bes c des] ees4. c8) des2\fermata
}

baritone = \relative d' {
\autoBeamOff \dynamicUp
	des4\f des8 c des4 f,| des' des8 c des4 aes | aes aes8 aes bes[ aes] ges f |
	ges[ f] ees des ees[ des] c4 | aes' aes8 aes bes4 aes | aes aes8 aes aes4 aes |
	aes2 ges4 ges | aes1( | bes4.\< aes8)\! aes2\fermata
}

bass = \relative d' {
\autoBeamOff
	r1 | aes4\f aes8 c aes4 f | des des8 des des4 des8 des |
	des4 aes8 aes aes4 aes | aes' f8 f ees4 f | aes aes8 aes des,4 des |
	c2 bes4 bes | aes2..( f'8 | ees2) des\fermata
}

verse = \lyricmode {
  Мно -- га -- я ле -- та, мно -- га -- я ле -- та,
	мно -- га -- я, мно -- га -- я, мно -- га -- я ле -- та!
	Мно -- га -- я ле -- та, мно -- га -- я ле -- та!
	Мно -- га -- я ле -- та!
}

\paper {
  #(set-default-paper-size "a4")
  indent = 0
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
	  title = #"6. Многая лета"
	subtitle = #" "
	  composer = "С. Прокофьев"
	  tagline = ##f
	}
	
\score { 
  <<
  \new ChoirStaff  <<
     \new Staff \with { instrumentName = "С" } <<
      \new Voice = "sopranoone" { \tempo "Allegro moderato" \keyTime \soprano }
      >>
    \new Lyrics \lyricsto "sopranoone" { \verse }
    \new Staff \with { instrumentName = "А" } <<
      \new Voice = "altoone" { \keyTime \voiceOne \altoone }
      \new Voice = "altotwo" { \voiceTwo \altotwo }
    >>
    \new Staff \with { instrumentName = "Т" } <<
		\clef "G_8"
      \new Voice = "tenorone" { \keyTime \voiceOne \tenorone }
      \new Voice = "tenortwo" { \voiceTwo \tenortwo }
    >>
	\new Lyrics \lyricsto "tenorone" { \verse }
	\new Staff \with { instrumentName = "Б" } <<
		\clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \keyTime \voiceTwo \bass }
    >>
  >>
  >>
  \layout {
  \context {}
  }
  \midi {}
}
