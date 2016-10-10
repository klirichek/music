\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
abr = {}

upstaff = { \showStaffSwitch \change Staff= "sa" \voiceThree }
downstaff = {\showStaffSwitch \change Staff= "tb" \voiceOne }

global = {
  \key bes \major
  \time 4/4
  \autoBeamOff
}

second = {
  \set Timing.measurePosition = #(ly:make-moment -2/4)
  \key es \major
}

thirdv = {
  \key f \major
}

sopvoice = \relative c'' {
  \global
  \tempo "Не торопясь"
  \dynamicUp
  \partial 4
  \mark \markup { \musicglyph #"scripts.segno" }
  a8 a |
  bes8[( a bes c] d[ c d es] |
  f2.) f8 f | \abr
  f4 f es8[( d c]) bes |
  a4 bes8[( d]) f4 es |
  d( es d) c8[( bes]) | \abr
  a4 bes c( es |
  d)\> c bes2\!\fermata | \bar "||" \mark \markup { \musicglyph #"scripts.coda" }
  \break
  \second
  \tempo "Умеренно"
  g4 g |
  as( c bes) as |
  g2 g4 bes |
  es2 d4 es | \abr
  c2 as4 bes |
  bes2. as4 |
  g2 \breathe es4 es |
  as4. as8 f4 bes | \abr
  bes4. bes8 bes4 \breathe bes | 
  es4. es8 d4 es |
  es4. es8  es4 c | \abr
  bes2 bes4 as |
  g2( f4) f |
  es1 \bar "||" \mark \markup { \musicglyph #"scripts.segno" \musicglyph #"scripts.coda" }
  \break
  \thirdv 
  c'4.\mf-> c8 bes4 bes |
  a( c) d d8[( e]) |
  f4. e8 c4 c | \abr
  d\>( c8[ bes]) bes\![( a]) g4 |
  f4( bes) a g |
  f(\< a) c\! c\> |
  c2\! e |
  g4(\< e)\! f c |
  c2 c4 c |
  bes4.-> bes8 bes4 bes |
  a2-> as |
  a?4 a g4. g8 |
  f4\< g a( c\! |
  bes) a g g\> |
  f1 |
  f2\! r2\fermata \bar "||"
}

altvoice = \relative c' {
  \global
  f8 f |
  f2( bes8[ a bes c] |
  d4 c8[ bes] a4) f8 a | \abr
  bes4 bes a8[( bes f]) f |
  f4 f f a |
  bes2. a8[( bes]) \abr
  f4 f g( a |
  bes) a f2 
 
  \second
  es4 es |
  es1 |
  es2 es4 g |
  bes2 bes4 bes |
  as2 f4 f |
  g2. es4 |
  es2 c4 bes |
  es4. es8 d4 f | \abr
  bes8( as4) g8 f4 g |
  bes4. bes8 bes4 bes |
  c4. c8 bes4 as | \abr
  as2 g4 es |
  es( d c) bes |
  bes1 \bar "||"
  
  \thirdv
  a'4. a8 bes4 g |
  f( a) bes bes |
  a4. g8 f4 f |
  e2 f4 d8[( e]) |
  f2 f4 d |
  c2 e4 g |
  f2 g |
  g4( c) c c |
  c( bes8[ a]) g4 f |
  f4. f8 f4 f |
  f2 f |
  f4 f e4. e8 |
  f4 e f2~ |
  f4 f d c |
  c2( d) |
  c2 r\fermata
  
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  c8 c |
  d[( c d es] f2~\< |
  f4 es8[\! d] c4)\> bes8\! c |
  d[ es] f[ g] c,[ bes c ] d |
  es4 d c c |
  bes( g' f) es8[ d] |
  c4 d es( c |
  f) es d2
    \second

  bes4 bes |
  c( es d) c |
  bes2 bes4 es |
  g2 f4 es |
  f2 c4 d |
  es2( d4) c |
  bes2 \breathe as4 g |
  c4. c8 bes4 d |
  f4. es8 d4 es |
  g4. g8 f4 es |
  \upstaff as4. as8 g4 f \downstaff |
  f4( d) es c |
  bes2( as4) bes |
  g1
  
  \thirdv
  c4.-> c8 d4 d8[ e] |
  f4.( e8) d4 d |
  c4. c8 a4 bes |
  g2 c4 bes |
  a( d) c bes |
  a( f) g bes |
  a2 c |
  e4( g) f e |
  a4( g8[ f]) e4 es| 
  d4. d8 d4 d |
  c2 b |
  c4 c bes4. bes8 |
  a4 g f( a |
  d) c bes bes |
  a2( bes) |
  a r\fermata
}

bassvoice = \relative c {
  \global
  \dynamicDown
  f8 f |
  bes1(~ |
  bes4 a8[ bes] f[ es]) d c |
  bes[( c]) d[( es]) f[( g a]) bes |
  c4 bes a f |
  g( es f) f |
  f f f2~ |
  f4\> f bes,2\fermata\!
  \second
  es4 es |
  as,2. as4 |
  es'2 es4 es |
  es( bes') as g |
  f2 f4 bes, |
  es2. es4 |
  es2 c4 bes |
  as4. as8 bes4 bes |
  d4. es8  bes'4 es, |
  es4. es8 f4 g |
  as4. as8 es4 f |
  d( f) es as, |
  bes2( c4) d |
  es1
  
  \thirdv
  f4. f8 f4 f |
  f2 f4 f |
  f4. c8 d4 bes |
  c2 c4 c |
  f2 f4 bes, |
  c2\< c4\! e\> |
  f2\! c |
  c'4.(\< bes8)\! a4 g |
  f2 g4 a |
  bes4.-> f8 d4 bes |
  c2-> des |
  c4 c c4. c8 |
  c4\< c c2~\! |
  c4 c d e\> |
  f1 |
  f2\! r\fermata
}

 
texts = \lyricmode { 
  Да во -- зра -- ду -- е -- тся ду -- ша, __ ду -- ша тво -- я о Го -- спо -- де, о Го -- спо -- де.
  О -- бле -- че __ бо тя, о -- бле -- че бо тя в_ри -- зу спа -- се -- ни -- я 
  и о -- деж -- де -- ю ве -- се -- ли -- я, о -- деж -- де -- ю ве -- се -- ли -- я о -- де -- я, о -- де -- я тя.
  Я -- ко же -- ни -- ху во -- зло -- жи -- ти, во -- зло -- жи -- ти ве -- нец, во -- зло -- жи -- ти ве -- нец, 
  и я -- ко не -- ве -- сту, не -- ве -- сту у -- кра -- си тя кра -- со -- то -- ю, у -- кра -- си __ тя кра -- со -- то -- ю.
}

\bookpart {
  \header {
    title = "Да возрадуется… Облече бо тя… Яко жениху…"
    composer = "муз. свящ. М. Ерхана"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
  >>
  \layout { 
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=60
  }
}
}

