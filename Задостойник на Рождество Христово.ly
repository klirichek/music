\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)

\paper {
  #(set-default-paper-size "a4")
  
  top-margin = 15
  left-margin = 20
  right-margin = 15
  bottom-margin = 25
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  indent = 0
}
%#(set-global-staff-size 16)

global = {
  \key bes \major
%  \numericTimeSignature
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 2
  bes4 c | d1( | c2 bes4 a | bes1) \breathe | c4(\< d ees)\! f |
  d2.\> bes4\! | d1( | c2) d ees1( | d4 ees d) c | bes2 a | bes1 |
  bes1( | c2 d) | ees1( | d4 c) ees( d) | c2. d4 | ees2 d4 d |
  c1 | bes4( a bes c | d2) c | c( bes4 a) | bes( c bes a) | g2( a) | c c |
  c c c1 | c4( d ees f | ees d) c( bes) | d1( |
  c2 ) bes4( a) | bes1\fermata \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \key f \major a1 | a2 a4( bes) | c2( d4 c | bes2) a | bes4( c bes a) |
  g( a bes2) | bes bes4( a) <bes c>2( a4 g) | c( bes) a2 |
  a1~ | a | a~ | a2 a4( c?) | c2 c |
  c c | c4( d) c( b) | c1 | a4( f) g( b | c2) d |
  c c | b1 | c | c2 c4( d) | ees2( d4 c) |
  bes1 | bes2 c4( d) | ees1 | ees2 ees4( d) | c2. c4 |
  bes1 | c2 d4( ees) | f2( ees4 d | c bes) a( bes) | c1 |
  a2 a4( bes) | c2.^> bes4 | a1 | bes~ | bes2 bes4( c) |
  d2 c | bes4( c d2 | c1 | bes4 c bes a) | g1 |
  c2 c | c1 | c2 g | <f g>1\>( | g)\!\fermata \bar "|."
  
}

altvoice = \relative f' {
  \global
  \autoBeamOff
  \partial 2 g4 a
  bes1( | a2 g4 fis | g1) | a4( bes c) a |
  bes2. f?4 | bes1( | a2) bes | c1( | bes4 c bes) a | g2 fis | g1 |
  g1( | a2 bes) | c1( | bes4 a) c( bes) | a2. bes4 | c2 bes4 bes | 
  a1 | g4( fis g a | bes2) a | a( g4 fis) | g( a g f?) | e2( f) | g a |
  g4 f e f | g1 | a4( bes c d | c bes) a( g) | bes1( | a2) g4( fis) | g1\fermata \bar "||" \break
  f1 | f2 f4( g) | a2( bes4 a | g2) fis | g4( a g f?) |
  e( f g2) | g g4( f) | g2( a4 bes) | a( g) f( e) |
  d( e f2 | g1) | f~ | f2 f4( g) | a2 g |
  g a4( bes) | a2 g4( f) | e1 | f4( d) g2( | g) g |
  g g <g f>1 | <g e> | a2 a4( bes) | c2( bes4 a) |
  g1 | g2 g | g1 | g2 c4( bes?) | a2. a4 |
  g1 | a2 bes4( c) | d2( c4 bes | a g) f( g) | a1 |
  f2 f4( g) | a2. g4 | fis1 | g1~ | g2 g4( a) |
  bes2 a | g4( a bes2 | a1 | g4 a g f) | e1 |
  e4( f) g( f) | g2( a4 bes) | a( g) f( e) | d1( | e) | \bar "|."
  
}

tenorvoice = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  \voiceThree
  \partial 2 d4 f | <bes, f'>1( | f'4 ees d2 | d1) | << { f?2.} \new Voice {\voiceOne ees4( d c) } >> <c f>4
  <d f>2. d4 | f1( | f2) f | f1( | f2.) ees4 | d2 d d1 |
  d1( | f?) | << {f1( | f2 f2)} \new Voice {\voiceOne s1 s2 a,4 bes} >> | <f f'>2. <bes f'>4 | <a f'>2 <bes f'>4 <d f>
  f1 | d2.( f?4 | f2) ees | d1 | d4 r4 r2 | c1 | e2 f2 |
  << {c2 c  } \new Voice {\voiceOne e4( f) bes,( a) } >> | < g c>1 |
  << { a4( d c bes | a bes) } \new Voice {\voiceOne f'1 f2 } >> d2 | <d g,>1 |
  d2 d | d1\fermata \bar "||"
  \set Staff.printKeyCancellation = ##f
  \key f \major
  f1 | f2 f | f2. d4 | d2 d | d4 r4 r2 |
  c1 c2 c | e( f4 g) | f( e) d( cis) |
  d4( cis d2 | e1) | d1~ | d2 d4( e) | f2 e |
  e f4( g) | f2 e4( d) | c1 | c2 c4( f | e2) f2 |
  e e | d1 | c | f,2 f | a4( c d ees) |
  d1 | d2 c4( b) | c1 | c2 g | fis2. fis4 |
  g1 | <f? f'?>2 f' | f1~ | f2 f | f1 |
  f2 f | d2. d4 | d1 | d~ | d2 d4( f?) |
  f2 d | d4( f2. | f1 | c)| c |
  g2 g c1 | c2 b4( c) | b1( c)
  
}

bassvoice = \relative g {
  \global
  \dynamicDown
  \autoBeamOff
  \partial 2
  
  g4 f |  bes( f d bes | f'2 g4 d | <g, g'>1) | f'?2. <f, f'>4
  bes2. bes4 | bes2( d | f) f | f1( | bes,4 a bes) c | d2 d | <g, g'>1
  g'1( | f?2 d) | c( a | bes4 c2) d8[ ees] | f2. f4 | f2 f4 f | f1 |
  g4( d g f? | bes,2) c | d1 | g4 r4 r2 | c,1 | c2 <c c'>
  << {\voiceFour bes'4( a) g( f)} \new Voice {\voiceTwo c2 c } >> | <c e>1
  f1~ | f2 fis4( g) | g,( a bes c) | d2 d <g, g'>1\fermata
  f'1 | f2 f | f2.( fis4 | g2) d | g4 r4 r2 |
  c,1 | c2 c c1 | f4( g) a( g) |
  f( e d2 cis1) | d1~ | d2 d4( c?) | f2 c |
  c c | f g | <c,g'>1 | f2 e4( d c2) b |
  c e | g1 | c,1 | f2 f f2.( fis4)
  g1 | g2 ees4( d) | c1 | c2 c4( d) | d2. d4 |
  <g, g'>1 | f'?2 f | f1~ | f2 f f1 |
  f2 f | fis2. g4 | d1 | g~ | g2 g4( f?) |
  bes2 fis | g4( f? bes, d | f1) r1 | c1 |
  c4( d) e( d) e2( f4 g) | f( e) d( c) | <g g'>1( | c)\fermata
}


zadostoinik = \lyricmode {
  Ве -- ли -- чай, ве -- ли -- чай, ду -- ше мо -- я, ду -- ше мо -- я,
  чест -- ней -- шу -- ю и слав -- ней -- шу -- ю гор -- них во -- инств, де -- ву
  пре -- чи -- сту -- ю Бо -- го -- ро -- ди -- цу.
  Лю -- би -- ти у -- бо нам, я -- ко без -- бед -- но -- е стра -- хом,
  у -- до -- бе -- е мол -- ча -- ни -- е, лю -- бо -- ви -- ю же, де -- во, 
  пес -- ни тка -- ти спро -- тя -- жен -- но сло -- жен -- ны -- я, 
  не -- у -- доб -- но есть, но и, ма -- ти, си -- лу, е -- ли -- ко есть
  про -- из -- во -- ле -- ни -- е, даждь.
}

\bookpart {
  \header {
  title = "Задостойник на Рождество Христово"
  subtitle = "№ 52 На Рождество Христово"
  composer = "муз. свящ. П. Турчанинова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "Д" "А" } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \zadostoinik }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
  >>
  \layout { 
    \context {
      \Staff
      % удаляем обозначение темпа из общего плана
      %\remove "Time_signature_engraver"
    }
    \context {
      \Score
      \override StaffGrouper.staffgroup-staff-spacing.padding = #10

    }
  }
  \midi {
    \tempo 4=120
  }
}
}


