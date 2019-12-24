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

  ragged-last-bottom = ##f
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


globalt = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
}

sopvoicet = \relative c'' {
  \globalt
  \dynamicUp
  \tempo "Скоро, но не очень"
  \partial 4 <b d>4\mf
  
  <b d>( <a c> <b d>) <c e> |
  <d f>4.( <c e>8)\> <b d>4 <b e>\! |
  <a c>2\< q4\!( <b d>) |
  <c e> q8 <c f> <c g'>4 <c f> |
  <c e>2 r4 q |
  <b d>4. q8 q[( <a c>)] <b d>[( <c e>]) |
  <d f>4.( <c e>8 <b d>4)\> <b e>\! |
  <a c>2\< <c d>4\! <b d> |
  <g c>2.\fermata r4 \bar "|."
}

altvoicet = \relative c'' {
  \globalt
  \partial 4
  g4 |
  g2. g4 |
  a4.( g8) g4 g |
  e2 e4( g) |
  g a8 a g4 a |
  g2 r4 g |
  g4. g8 g4 g |
  a4.( g8~ g4) g |
  e2 a4 g |
  e2. r4 
}

tenorvoicet = \relative c' {
  \globalt
  \dynamicUp
  \partial 4
  <b d>4 |
  q( <a c> <b d>) <c e> |
  <d f>4.( <c e>8) <b d>4 <b e> |
  <a c>2 q4( <b d>) |
  <c e>4 <c e>8 <c f> <c g'>4 <c f> |
  <c e>2 r4 q |
  <b d>4. q8 q[( <a c>]) <b d>[( <c e>]) |
  <d f>4.( <c e>8 <b d>4) <b e> |
  <a c>2 <c d>4 <b d> |
  <g c>2. r4
}

bassvoicet = \relative c' {
  \globalt
  \dynamicDown
  \partial 4
   g4\mf |
   g2. g4 |
   d4.( e8)\> g4 e\! |
   a2\< a4(\! g) |
   c a8 f e4 f8[( a]) |
   c2 r4 c, |
   g'4. g8 g4 g |
   d4.( e8 g4)\> e\! |
   a2\< <f a>4\! g |
   c,2.\fermata r4
  
}

textat = \lyricmode {
Хри -- стос во -- cкре -- се из ме -- ртвых,
сме -- рти -- ю смерть по -- прав, и су -- щим во гро -- 
бех  жи -- вот да -- ро -- вав.
}


globalp = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \set Score.skipBars = ##t
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set melismaBusyProperties = #'()
}

sopvoicep = \relative c'' {
  \globalp
  \dynamicUp
  \tempo "Торжественно"
  \partial 4 b4\f |
  c2 b\> |
  c4 g8\p g a4 g |
  a g8 g a4 b8 b |
  c4 b c b8 b |
  c4 c8 g' g2~( |
  g2. a4~ |
  a1~ |
  a2) g4\f g8 f |
  e2( d |
  c4) b c r |
  r <c e>8 <d f> <c e>4->( <b d>8) r |
  r4 <c e>8 <d f> <c e>4->( <b d>8) b |
  c c c c c4 c8[( d]) |
  c2 b4\> b |
  c2.\fermata\! r4 \bar "|."
}

altvoicep = \relative c'' {
  \globalp
  \partial 4 g4 |
  g2 g |
  e4 e8 e f4 e |
  f4 e8 e f4 d8 d |
  e4 d e d8 d |
  e4 e8 g g2~\mf(
  g2. a4~ a1~ |
  a2) b4 b8 b |
  c2( b |
  a4) gis a r |
  r g8 a g4~ g8 r |
  r4 g8 a g4. g8 |
  g g f g a4 a |
  g2 g4 g |
  e2. r4
}

tenorvoicep = \relative c' {
  \globalp
  \dynamicUp
  \partial 4
  d4 |
  e2 d |
  c4 c8 c c2~ |
  c1~ 
  c~ |
  c4~ c8 <b d>8 <c e>4 <b d> |
  <c e> <b d>8 q <c e>4 <cis e>8 q |
  <d f>4 <cis e> <d f> <cis e>8 q |
  f4 f d d8 d |
  g2( f |
  e4) e e <b d> |
  <c e>8 q r4 r r8 <b d> |
  <c e>8 q r4 r r8 <b d> |
  <c e>8 q <c f> <c e> f4 f |
  e2 d4 d |
  g,2. r4
}

bassvoicep = \relative c' {
  \globalp
  \dynamicDown
  \partial 4 g4\f |
  c2 g\> |
  c,4 c8 c\p c2~ |
  c1~ |
  c~ |
  c4~ c8 g' c4 g |
  c g8 g c4 a8 a |
  d4 a d a8 a |
  d4 d g,\f g8 g |
  c2( d |
  e4) e, a g |
  c8 c, r4 r r8 g' |
  c c, r4 r r8 g' |
  c c a g f[( d]) e[( f]) |
  g2 <g g,>4 <g g,>4 |
  c,2.\fermata r4
}

textap = \lyricmode {
Хри -- стос во -- cкре -- се,
Хри -- стос во -- cкре -- се из ме -- ртвых,
Хри -- стос во -- cкре -- се из ме -- ртвых,
Хри -- сто -- о -- о -- о -- ос 
сме -- рти -- ю смерть __ _ _ по -- прав,
во гро -- бех __ _ 
во гро -- бех, __ _
и су -- щим во гро -- бех __жи -- _ вот да -- ро -- вав.
}

textbp = \lyricmode {
Хри -- стос во -- cкре -- се, Хри -- сто -- о -- о -- о -- ос.
Хри -- стос во -- скре -- се из ме -- ртвых,
Хри -- стос во -- скре -- се из ме -- ртвых,
сме -- рти -- ю смерть __ _ _ по -- прав, и су -- щим,
и су -- щим, и су -- щим во гро -- бех __  _ жи -- _ вот да -- ро -- вав.
}


  

\bookpart {
  
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

\markup \center-column {  
  \null \null \null
  \fill-line { \fontsize #4 \bold \center-align "Христос воскресе!" }
   \fill-line {\null  \right-align "А. Туренков"}
   \fill-line {\null  \right-align "№4"}
}


\score {
%  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoicet }
      \new Voice  = "alto" { \voiceTwo \altvoicet }
    >> 
    \new Lyrics \lyricsto "alto" { \textat }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoicet }
        \new Voice = "bass" { \voiceTwo \bassvoicet }
    >>

  >>
%  }
  \layout {}
  \midi {
    \tempo 4=60
  }
}

}

\bookpart {
  
  \header {
    title = "Христос воскресе!"
%    opus = "№4"
    composer = "Потеряйко"
    %arranger = "перелож для см. хора"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }
  
  \score {
%  \transpose c bes {
  \new ChoirStaff
  <<
    \new Staff = "upstaff" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoicep }
      \new Voice  = "alto" { \voiceTwo \altvoicep }
    >> 
    \new Lyrics \lyricsto "soprano" { \textap }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoicep }
        \new Voice = "bass" { \voiceTwo \bassvoicep }
    >>
    \new Lyrics \lyricsto "bass" { \textbp }

  >>
%  }
  \layout {}
  \midi {
    \tempo 4=90
  }
}

}


