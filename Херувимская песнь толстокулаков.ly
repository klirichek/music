\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 16)

abr = { \break }
abr = {}

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \tempo "Медленно и протяжно"
  \dynamicUp
  R1*8
  R1.
  R1*3 |
  d2\< d |
  c bes4(\! a) |
  bes2( c4 bes4 |
  a2) g4 f | \abr
  
  g8[( a] g2) g4 g g |
  f2.( g4) |
  f2\< e4( d) g g |
  f2(\! <e g>~ |
  q) q\> |
  <d f>1~ |
  q\!\fermata \abr
  
  R1*8 \abr
  R1.
  R1*3
  d'2\< d |
  c bes4(\! a) |
  bes2( c4 bes) | \abr
  
  a2 g4( f) |
  g8[( a] g2) g4 g2 |
  f2.( g4) |
  f2 e4( d) g2( |
  f <e g>2~ |
  q) q\> |
  <d f>1~ |
  q\!\fermata \abr
  R1*8 |
  R1. R1*3 |
  d'2 d |
  c( bes4 a) |
  bes2 c4( bes) | \abr
  % page 84
  a2( g4 f |
  g8[ a] g2) g4 g2 |
  f2. g4 |
  f2(\< e4 d) g g |
  f2\!( <e g>2~ |
  q\>) q |
  <d f>1~ |
  q\!\fermata \abr
  
  f2(\< g4 a) |
  bes1\mf\fermata |
  bes2(\< a4 g\! |
  f2 <e g>)\> |
  <d f>1\p\fermata |
  R1*4 |
  R2. |
  R1. |
  d'4\f d c bes8[( a]) | \abr
  
  % page 85
  bes4 c8 bes a4 g8[( f]) |
  g16[( a] g4) g8 g g |
  f4.( g8) f4 e8[( d]) |
  g4( f <e g>) |
  f2 | \abr
  
  d'4\mf d8 d d d |
  d4. d8 d d d d |
  d d d4( a) \abr
  
  a8 a4 \mf c8\< c c a a |
  a4 c2~ |
  c8\!-\markup { \italic sub \dynamic p } a4\< a8 a a a bes |
  a4( g) a a8 a |
  bes2( a4 g) |
  a1~ |
  << a\f\<\fermata {s4*3 s4\!} >>
       
  
}

altvoice = \relative c' {
  \global
  d2-\markup{\dynamic ppp \italic "чуть слышно"} d |
  d4( c) d( e) |
  f1~\<( | 
  f4\! e f g |
  a2 g4 f |
  g2 a4 g |
  f2. g4 |
  f2 e4 d | \abr
  \time 6/4 e8[\< f] g4~ g2) f4( e)\! |
  \time 4/4 f2. g4 |
  f2( e4 d |
  g1) |
  f2.( e4) |
  f2 f |
  g a4( g) |
  f2 d4 d | \abr
  
  \time 6/4 d2. f4 e d8[( e]) |
  \time 4/4 f2.( d4) |
  \time 6/4 d2 d d4 d |
  \time 4/4 d1~ |
  d2 d |
  d1~ |
  d1\fermata | \abr
  
  d2\pp d |
  d4( c) d( e) f1~( |
  f4 e f g) |
  a2( g4 f |
  g2 a4 g |
  f2. g4 |
  f2) e4( d) | \abr
  
  \time 6/4 e8[( f] g4~ g2 f4 e |
  \time 4/4 f2. g4 |
  f2 e4 d |
  g2) g |
  f2.( e4) |
  f2 f |
  g a4( g) | \abr
  
  f2 d4 d |
  \time 6/4 d2. f4 e( d8[ e]) |
  \time 4/4 f2.( d4) |
  \time 6/4 d2 d d~ |
  \time 4/4 d1~ |
  d2 d |
  d1~ |
  d1\fermata \abr
  
  d1\p\< |
  d4( c) d( e) |
  f1~( |
  f4\! e f g |
  a2) g4( f) |
  g2( a4 g |
  f2. g4 |
  f2 e4 d) | \abr
  
  \time 6/4 e8[(f] g4~ g2) f4( e) |
  \time 4/4 f2.( g4 |
  f2 e4 d |
  g2) g |
  f2.( e4) |
  f2 f |
  g a4 g | \abr
  
  f2( d~ |
  \time 6/4 d2.) f4 e( d8[ e]) |
  \time 4/4 f2. d4 |
  \time 6/4 d1 d4 d |
  \time 4/4 d1~ |
  d2 d |
  d1~ |
  d1\fermata \bar "||" \abr
  
  d2( e4 f) |
  f1 \fermata \bar "||"
  f2.( d4~ |
  d1) |
  d\fermata \bar "||"
  d4\mf\<\tempo Торжественно d d8[( c]) d[( e]) |
  f2~( f8[\! e f g]) |
  a4 g8[( f]) g4( a8[ g]) | \abr
  f4.( g8 f4) e8[( f]) |
  \time 3/4 g16[( a bes8~] bes4) a8[( g]) |
  \time 6/4 f4.( g8) f4 e8 d g4 g |
  \time 4/4 f8[( g]) f[( g]) f[( g]) f4 | \abr
  
  g4 a8 g f4 d |
  \time 3/4 d4. f8 e d16[( e]) |
  \time 4/4 f4.( d8) d4 d |
  \time 3/4 d2. |
  \time 2/4 d2 | \abr
  \time 3/4 <f a>4 q8 q <e g>16[( <f a>]) < g bes> 8 |
  \time 4/4 <f a>4. <e g>8 <d f>16[( <e g>]) <f a>8 <g bes> q |
  \time 3/4 <f a>8 <e g>16[( <d f>]) <e g>2 | \abr
  \time 4/4 <d f>8 \breathe f4 g8 a g f e |
  \time 3/4 f4 g2~ |
  \time 4/4 g8 f4 f8 f f f f |
  f2 f4 f8 f |
  f1 |
  f1~ |
  f1\fermata \bar "|."
  
  
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  R1 |
  bes1 |
  a |
  bes2 bes |
  a a |
  bes2( c4 bes |
  a2. bes4 |
  a2 g4 f | \abr
  g8[ a] bes4~ bes2 ) a4( g) |
  a2. bes4 |
  a2( g4 f |
  bes2 a) |
  a2. ( bes4) |
  a2 d4( c) |
  d2 e4( d) |
  c2 bes4 a | \abr
  
  bes8[( c] bes2) bes4 bes bes |
  a2.( bes4) |
  a2 g4( a) bes bes |
  a1~ |
  a2 a |
  a1~ |
  a\fermata | \abr
  R1 |
  bes2 bes |
  a a |
  bes1( |
  a |
  bes2 c4 bes |
  a2. bes4 |
  a2) g4( f) | \abr
  g8[( a] bes4~ bes2 a4 g |
  a2. bes4 a2 g4 f |
  bes2) a |
  a2.( bes4) |
  a2 d4( c) |
  d2 e4( d) | \abr
  
  c2 bes4 a |
  bes8[( c] bes2) bes4 bes2 |
  a2.( bes4) |
  a2 g4( a) bes2( |
  a1~ |
  a2) a |
  a1~ |
  a \fermata | \abr
  R1 |
  bes1 |
  a2 a |
  bes1 |
  a2 a |
  bes2( c4 bes |
  a2. bes4 |
  a2 g4 f) | \abr
  g8[( a] bes4~ bes2) a4( g) |
  a2.( bes4 |
  a2 g4 f |
  bes2) a |
  a2.( bes4) |
  a2 d4( c) |
  d2 e4 d | \abr
  
  %page 84
  c2( bes4 a |
  bes8[ c] bes2) bes4 bes2 |
  a2. bes4 |
  a2( g4 a) bes bes |
  a1~ |
  a2 a |
  a1~ |
  a\fermata
  
  a2( c) |
  d1\fermata |
  d2( c4 bes |
  a1) |
  a\fermata |
  r2 bes |
  a bes4 bes |
  a a bes( c8[ bes]) | \abr
  
  a4.( bes8 a4) g8[( a]) |
  bes16[( c d8]~ d4) c8[( bes]) |
  a4.( bes8) a4 g8 f bes4 a |
  a a8[( bes]) a[( bes]) d[( c]) | \abr
  
  %page 85
  d4 e8 d c4 bes8[( a]) |
  bes16[( c] bes4) bes8 bes bes |
  a4.( bes8) a4 g8[( a]) |
  bes4( a2) |
  a |
  R2. |
  R1 |
  R2. |
  r8 d4 e8 f e d cis |
  d4 e2~ |
  e8 c4 c8 c c c d |
  c4( bes) c c8 c |
  d2( c4 bes) |
  <a c>1~ |
  q\fermata
  
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  R1*3
  g2 g |
  f e4( d) |
  e2.( c4 |
  d1~ |
  d |
  c) c2 |
  f2. c4 |
  d1( |
  e) |
  d2.( c4) |
  f2 g4( a) |
  e( d) c( d8[ e]) |
  f2 e4 d | \abr
  
  e8[( d] e2) d4 c c |
  f2.( e4) |
  d2 e4( f) e d8[( e]) |
  a2( <e a,>~ | q) q |
  <d d,>1~ | q\fermata \abr
  
  R1*3 |
  g2 g |
  f e4( d) |
  e2.( c4 |
  d1~ |
  d2) d | \abr
  c1.( |
  f2. c4 |
  d1 |
  e2) e |
  d2.( c4) |
  f2 g4( a) |
  e( d) c( d8[ e]) | \abr
  
  f2 e4 d |
  e8[( d] e2) d4 c2 |
  f2.( e4) |
  d2( e4 f) e d8[( e]) |
  a2( <e a,>~ |
  q) q |
  <d d,>1~ |
  q\fermata \abr
  R1*3 |
  g1 |
  f2 e4( d) |
  e2.( c4 |
  d1~ |
  d) \abr
  c1 c2 |
  f2.( c4 |
  d1 |
  e2) e |
  d2.( c4) |
  f2 g4( a) |
  e( d) c d8[( e]) | \abr
  
  % page 84
  f2( e4 d |
  e8[ d] e2) d4 c2 |
  f2. e4 |
  d2( e4) f e d8[( e]) |
  a2( <e a,>~ |
  q) q |
  <d d,>1~ |
  q\fermata \abr
  
  << \new Voice { \voiceThree 
                  \shape #'((0 . -2) (1 . -3) (0 . 1) (0 . 0)) Slur 
                  d2( c4 f)  } 
     \new Voice { \voiceFour d2( c2) }  >> |
  <bes f'>1\fermata |
  q2( c4 d8[ e] |
  a2 <e a,>) |
  <d d,>1\fermata |
  R1 |
  r2 g4 g |
  f e8[( d]) e4.( c8) | \abr
  d2. d4 |
  c2 c4 |
  d4.( c8) d4 d8 d e4 e |
  d8[( e]) d[( c]) f4 g8[( a]) | \abr
  
  %page 85
  e8[( d]) c d16[( e]) f4 e8[( d]) |
  e16[( d] e4) d8 c c |
  f4.( e8) d4 e8[( f]) |
  e8[( d16 e] a4 <e a,>) |
  d2 | \abr
  
  R2. |
  R1 |
  R2. | \abr
  r8 d4 c8 f c d a |
  d4 c2~ |
  << \new Voice { \voiceThree \autoBeamOff
    c8 c4 c8 c c c bes |
    c4( d) c c8 c |
    \slurDown \shape #'((1 . 0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
    bes2( c4 d) |
     }
     {

       c8 f,4 f8 f f f f |
       f2 f4 f8 f |
       f1}
  >>
  \voiceTwo
  <f f'>1~ |
  q\fermata
}

texts = \lyricmode {
  та -- йно о -- бра -- зу -- ю -- ще,
  \repeat unfold 12 \skip 1 
  три -- свя -- ту -- ю __ песнь __
  при -- пе \repeat unfold 9 \skip 1
  от -- ло -- жим __ по -- пе 
}

 
  
texta = \lyricmode { 
  И -- же Хе -- ру -- ви -- 
  мы, Хе -- ру -- ви -- мы __ та -- йно о -- бра -- зу -- ю -- ще,
  та -- йно о -- бра -- зу -- ю -- ще, о -- бра -- зу -- ю -- ще __
  и Жи -- во -- тво -- ря -- _ щей
  Тро -- и -- це __  три -- свя -- ту -- ю __
  песнь при -- пе -- ва -- ю -- ще, песнь при -- пе -- ва -- ю -- ще, __
  вся -- ко -- е ны -- не, ны -- 
  не __ жи -- те -- йско -- е __ от -- ло -- жим по -- пе --
  че -- ни -- е, __ от -- ло -- жим по -- пе -- че -- ни -- е. __
  А -- минь. А -- минь.
  Я -- ко да Ца -- ря, __ да Ца -- ря __
  всех __ по -- ды -- мем, Ца -- ря всех по -- ды -- мем,
  я -- ко да Ца -- ря всех по -- ды -- мем,
  я -- ко да Ца -- ря всех по -- ды -- мем,
  ан -- ге -- льски -- ми не -- ви -- ди -- мо до -- ри -- но -- си -- ма чи -- нми.
  Ал -- ли -- лу -- ия, ал -- ли -- лу -- ия, ал -- ли -- лу -- ия, ал -- ли -- лу -- ия, 
  ал -- ли -- лу -- ия. __
}

textt = \lyricmode {
  И -- же, и -- же Хе -- ру -- ви -- 
  мы, \repeat unfold 23 \skip 1
  и Жи -- во -- тво -- ря -- щей
  \repeat unfold 19 \skip 1
  вся -- ко -- е, вся -- ко -- е 
  
  \repeat unfold 26 \skip 1
  Я -- ко, я -- ко
  
}


textb = \lyricmode {
  \repeat unfold 29 \skip 1
  и Жи -- во -- тво -- ря -- щей
}


\bookpart {
  \header {
    title = "Херувимская песнь"
    composer = "муз. С. Толстокулакова"
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
    \new Staff \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
    \new Lyrics \lyricsto "alto" { \texta }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "tenor" { \textt }
    \new Lyrics \lyricsto "bass" { \textb }
  >>
  \layout { 
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=120
  }
}
}

