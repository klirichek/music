\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
    title = "Христос воскресе!"
%    opus = "№4"
    composer = "Л. (Лирин)"
    %arranger = "перелож для см. хора"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 4
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
mbr = { \break }

pbr = {}
%mbr = {}
  
global = {
  \key f \major
  \time 3/4
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo "Торжественно"
  \partial 4 c4\mf\< |
  f2\> c4\! |
  a4-> a a |
  bes-> bes d |
  d8[(-> c]) c4 r |
  e e e\< |
  e2\> e4\! |
  f2\fermata c4\p |
  c->( bes a) |
  bes2 d4 |
  d->( c bes )
  a2 c4 |
  d4\f-> d d8 c |
  c2-> f4 |
  e d e |
  f2\fermata r4\fermata
 
}

altvoice = \relative c'' {
  \global
  \partial 4  c |
  a2 a4 |
  f f f |
  g g bes |
  bes8[( a]) a4 r |
  g g g |
  g2 g4 |
  a2 a4 |
  a( g f) |
  g2 bes4 |
  bes( a g) |
  f2 a4 |
  bes bes bes8 bes |
  a2 a4 |
  g f g |
  a2 r4
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  c4 |
  c2 c4 |
  c c c |
  c c c |
  c c r |
  c c c |
  c2 c4 |
  c2 r4 |
  r r c |
  c c r |
  r r c |
  c c f |
  f f f8 g |
  f2 c4 |
  c c c |
  c2 r4
 
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \partial 4
  c\mf |
  f2-> f4 |
  f-> f f |
  e-> e e |
  f-> f r |
  c\f e g |
  c2 c,4 |
  f2\fermata r4 |
  r r f\pp |
  c-> c r |
  r r c\pp |
  f-> f f\< |
  bes\f bes, d8 e |
  f2-> f8[( a]) |
  c4 c, c |
  f2\fermata  r4\fermata \bar "|."
}

texta = \lyricmode {
Хри -- стос во -- cкре -- се из ме -- ртвых, во -- скре -- се!
Сме -- рти -- ю смерть по -- прав;
и су -- щим, и су -- щим, и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
}

textb = \lyricmode {
Хри -- стос во -- cкре -- се из ме -- ртвых, во -- скре -- се!
Сме -- рти -- ю смерть по -- прав;
и су -- щим, и су -- щим, и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
}

  
\score {
%  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textb }

  >>
%  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}

