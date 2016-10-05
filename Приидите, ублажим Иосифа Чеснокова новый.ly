\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Приидите, ублажим Иосифа"
  subtitle = "соч. 9 № 28"
  composer = "П. Г. Чесноков"
  arranger = "перелож для см. хора"
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
  
abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr={}

global = {
  \key d \minor
  \time 3/4
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \partial 4 a8\p a | 
  bes4 bes8 r bes c | 
  a2 a4 | g g8 g f g | \abr
  
  a4 a8 a a4~ | 
  a8 r r a\< a a\! | 
  bes4 a\> g | 
  g8.\! g16 g8 \breathe g\< g g | \abr
  
  d'4\! d c8 bes | 
  bes4.\> bes8 bes\! r | 
  f'2\f\> e4\! | 
  d4.\mf c8 bes c | \abr
  
  bes4. a8 a4~ | 
  a8\! r a a gis\< a | 
  ees'4\! ees8 r d cis |
  d2 g,8\> f | \abr 
  
  e4 e8\! r r4 | 
  f'2\f\> e4 | 
  d4.\mf c8 bes c | 
  bes4.\> a8 a4\! |
  r8 a\p a4 a~ | \pbr
  
  a8 r a a a a | 
  a4 a r8 a | 
  a2 a8\> a |
  a4~ a8\! r8 r4 | \abr
  
  bes2\p\> g4\! | 
  d'2\mf\> bes4\! | 
  f'4.\f e8 d c | 
  bes4.\> a8 a4\! | \abr
  
  r8 a a a gis\< a | 
  ees'4\! ees d8 cis | 
  d2 g,8\> f | 
  e4\! r r8 e | \abr
  
  bes'4\< bes8\! a\> g f | 
  e4\! e r8 e | 
  f4 f8\< f c'\! bes\> | 
  a4 a8\! r \abr 
  
  r e'8\f |
  g2 d4 | 
  f2\> d8 d | 
  d4~ d8\! r d4 | 
  g2 d4 | \pbr
  
  f8 d d4 \breathe d8\< f |
  e4 e8\! e d\> d | 
  a4\! a8 a a4~ | 
  a8 r r4\fermata 
  a8\p a | \abr
  
  a4 a8 a bes c |
  a4. a8 a4 | 
  g g f8 g | 
  a4 a8 r a a | \abr
  
  bes4\p\> a g\! |
  d'4.\mf c8\> bes4\! | 
  f'2\f e4\! | 
  r r d\mf | d4. d8 cis d | \abr
  
  e4 e8 e b b |
  d2. | 
  e2 b8\> b | 
  d2.~ | \abr
  
  d4~ d8\! r\fermata d\mf d |
  c4. bes8 a c | 
  d c bes4 bes\> | 
  bes~ bes8\! r bes\p bes | \pbr
  
  a4. g8 fis a |
  bes a g4 g | 
  g~ g8 r bes bes\< | 
  a4. d8\! e f | \abr
  
  g e f4 d |
  d~ d8 r e\p d | 
  c4 bes8 r c bes | 
  a2 a4 | \abr
  
  a~ a8 r \bar "|."
}

altvoice = \relative c' {
  \global
  \partial 4 f8 f | e4 e8 r e e | f2 d4 | d d8 d d d |
  cis4 cis8 cis cis4~ | cis8 r r a' a a | d,4 d d | d8. d16 d8 d d d |
  e4 e e8 e | e4. e8 e r | bes'2 bes4 g4. g8 e e |
  e4. e8 e4~ | e8 r e e e e | fis4 fis8 r fis fis |
  g2 d8 d | d4 d8 r r4 | bes'2 bes4 | g4. g8 e e | e4. e8 e4 |
  r8 e f4 f~ | f8 r f f f f | d4 d r8 d | e2 e8 e |
  
  e4~ e8 r r4 | d2 d4 | e2 e4 | bes'4. bes8 g g | e4. e8 e4 |
  r8 e e e e e | fis4 fis fis8 fis | g2 d8 d | d4 r r8 d |
  d4 d8 d d d | d4 d r8 d | d4 d8 d d d | d4 cis8 r r a' |
  bes2 bes4 | a2 f8 f | e4~ e8 r f4 | bes2 bes4 | a8 f f4 f8 a |
  gis4 gis8 gis e e | a4 a8 a a4~ | a8 r r4 a8 a | f4 f8 f e e |
  f4. d8 d4 | d d d8 d | cis4 cis8 r a a | d4 d d |
  
  e4. e8 e4 | bes'2 bes4 | r r e, | fis4. fis8 fis fis | g4 g8 g e e |
  fis2. | g2 e8 e | fis2.~ | fis4~ fis8 r f f |
  ees4. ees8 ees ees | d d d4 ees8[ c] | d4~ d8 r d d | c4. c8 c c |
  bes bes bes4 c8[ a] | bes4~ bes8 r d d | d4. f8 g a | bes g f4 g8[ e] |
  f4~ f8 r g f | f4 f8 r f f | e2 g4 | f4~ f8 r \bar "|."
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  \partial 4 a8\p a | g4 g8 r g g | a2 f4 | e e8 e f e |
  f4 e8 e e4~ | e8 r r a\< a a\! | e4 e\> e | e8.\! e16 e8 \breathe e\< e e\! |
  g4 g g8 g | g4.\> g8 g\! r | d'2\f\> d4\! | bes4.\mf bes8 g g |
  g4. g8 g4~ | g8 r g g g\< g | a4\! a8 r a a |
  g2 g8\> a | bes4 bes8\! r r4 | d2\f\> d4 | bes4.\mf bes8 g g | g4. g8 g4 |
  r8 g\p a4 a~ | a8 r a a a a | f4 f r8 f | e2 e8\> e |
  
  e4~ e8\! r r4 | e2\p\> e4\! | g2\mf\> g4\! | d'4.\f d8 bes bes | g4.\> g8 g4\! |
  r8 g g g g\< g | a4\! a a8 a8 | g2 g8\> a | bes4\! r r8 g |
  e4\< e8\! e\> e f\! | e4 e r8 e | f4 f8\< f f\! f\> | e4 e8\! r r cis'\f |
  d2 d4 | d2\> a8 a | g4~ g8\! r a4 | d2 d4 | d8 a a4 \breathe a8\< d |
  d4 d8\! d\> gis, gis | a4\! a8 a a4~ | a8 r r4 a8\p a | a4 a8 a g g |
  a4. f8 f4 | e e f8 e | f4 e8 r a a | e4\p\> e e\! |
  
  g4.\mf g8\> g4\! | d'2\f d4 | r r bes\mf | a4. a8 a a | b4 b8 b g g |
  a2. | b2 g8\> g | a2.~ | a4~ a8\! r bes?\mf bes |
  g4. g8 ges ges | f f f4 ges8[\> ees] | f4~ f8\! r g\p g | ees4. ees8 ees ees |
  d d d4 ees8[ c] | d4~ d8 r d e?\< | f4. a8\! d d | cis cis d4 bes8[ g] |
  a4~ a8 r bes\p bes | d4 d8 r d d | d2 b8[ cis] | d4~ d8 r \bar "|."
}

bassvoice = \relative c {
  \global
  \tempo "Выразительно" 4=60
  \dynamicDown
  \partial 4 d8 d | d4 d8 r d d | d2 d4 | bes4 bes8 bes bes bes |
  a4 a8 a a4~ | a8 r r a a a | g4 a bes | bes8. bes16 bes8 bes bes bes |
  bes4 bes c8 d | d4. d8 d r | g2 g4 | e4. e8 d d |
  cis4. cis8 cis4~ | cis8 r cis cis cis cis | c?4 c8 r c c |
  bes2 bes8 a | g4 g8 r r4 | g'2 g4 | e4. e8 d d | cis4. cis8 cis4 |
  r8 cis c4 c~ | c8 r c c d c | b4 b r8 b | a2 a8 a |
  
  a4~ a8 r r4 | g2 bes4 | bes2 d4 | g4. g8 e e | d4. cis8 cis4 |
  r8 cis8 cis cis cis cis | c?4 c c8 c | bes2 bes8 a | g4 r r8 g |
  g4 g8 a bes a | g4 g r8 g | gis4 gis8 gis gis gis | a4 a8 r r a' |
  g2 g4 | d2 c8 c | bes4~ bes8 r a4 | g( g') g | d8 d d4 c |
  b4 b8 r bes4 | a~ a8 r a4 | a~ a8\fermata r a a | d4 d8 d d d |
  d4. d8 d4 | bes4 bes bes8 bes | a4 a8 r a a | g4 a bes |
  
  bes4. c8 d4 | g2 g4 | r r g, | a2.~ | a4 a a8 a |
  a4 a8 a a a | a2. | d2 d8 d | d4~ d8 r\fermata bes8 bes |
  bes2.~ | bes2 bes4 | bes4.( a8) g4 | g2 g4 |
  g2 g4 | g4~ g8 r g g | a2.~ | a4( d) d |
  d4~ d8 r <g, \parenthesize g'> q | <gis \parenthesize gis'>4 q8 r q q | a2 a4 | d4~ d8 r \bar "|."
}

texta = \lyricmode {
При -- и -- ди -- те, у -- бла -- жим И -- о -- си -- фа при -- сно --
  па -- мя -- тна -- го, __ в_но -- щи́ к_Пи -- ла -- ту при -- шед -- ша -- го, и Жи -- во -- 
  та всех и -- спро -- сив -- ша -- го: даждь ми, даждь ми  Се -- го 
  стра -- нна -- го, __ и -- же не и -- ме -- ет, где гла -- 
  вы по -- дкло -- ни -- ти, даждь ми, даждь ми Се -- го стра -- нна -- го, 
  Е -- го же __ у -- че -- ник лу -- ка -- вый на смерть пре -- да -- 
  де, __ даждь ми, даждь ми, даждь ми Се -- го стра -- нна -- го, 
  Е -- го же Ма -- ти, зря -- щи на Кре -- сте ви́ -- ся -- ща, __ ры -- 
  да -- ю -- щи во -- пи -- я -- ше, и ма -- тер -- ски во -- скли -- ца -- ше: У -- 
  вы Мне, Ча -- до Мо -- е! __ У -- вы Мне Cве́ -- те Мой, 
}
  
textb = \lyricmode { Си -- ме -- о -- ном бо пре -- дре -- 
  че -- нно -- е в_це -- ркви днесь со -- бы -- сться: Мо -- е се -- рдце о -- 
  ру -- жи -- е про -- йде, но в_ра -- дость во -- скре -- се -- ни -- я Тво -- е -- 
  го плач пре -- ло -- жи. __ По -- кла -- 
  ня -- е -- мся стра -- стем Тво -- им, Хри -- сте, __ по -- кла -- ня -- е -- мся
}

textc = \lyricmode { и Свя -- то -- му Во -- скре -- се -- ни -- ю. __ }


text = \lyricmode {
  \texta
   и у -- тро -- ба Мо -- я во -- злю -- бле -- нна -- я! __ 
  \textb 
   стра -- стем Тво -- им, Хри -- сте, __ по -- кла -- ня -- е -- мся стра -- стем Тво -- им, Хри -- 
  сте, __ \textc
}

textbass = \lyricmode {
  %\texta 
  \repeat unfold 134 \skip 1
  у -- вы Мне, у -- вы, у -- вы!
  \repeat unfold 26 \skip 1
  Но в_ра -- дость во -- скре -- се -- ни -- я Тво -- е -- 
  го плач пре -- ло -- жи. __
  По -- кла -- ня -- ем -- ся __ стра --
  стем Тво -- им, Хри -- сте, __ по -- кла -- ня -- ем -- ся. __
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
    \new Lyrics \lyricsto "soprano" { \text }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textbass }
  >>
  \layout { 
  }
  \midi {
    \tempo 4=60
  }
}


