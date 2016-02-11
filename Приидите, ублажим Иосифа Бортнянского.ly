\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")


global = {
  \key a \minor
  \time 4/4
  \autoBeamOff
  \partial 2
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  a4 a | a4. gis8 a4 b | c c c2 |
  b4 b b b | c( b) a gis | a2 r4 b |
  c c c2 | b4 c8[ b] a4 gis | a a b b |
  c b c d | e4. d8 c4 r\fermata | c2 b |
  b c4( b) | a gis a r | a a b b |
  
  c4. c8 c4 c | b2 b4 c8[ b] | a4( gis) a r |
  a a b c8.[ d16] | e4. d8 c r c4 |
  b b b a8[ b] | c4 c c2 | b4 a gis2 |
  a4 a a r | c2 b | b4 c8[ b] \appoggiatura b8 a4. gis8 |
  a2 r4 a | b b b b | c4. b8 c4 d |
  e2 e4 d | c2 r4 c | \appoggiatura c4 b2 b4 b | b8[ a] b[ c] d4( c) |
  
  b2 r4 b | c2 c4 c | b a gis( a8[ b]) | a2 r4\fermata \bar "||"
  c4 | c2. b4 | c4.( d8 e2) | e4 d c r8 c |
  \appoggiatura c4 b2( b8[ d]) c[ b] | a4 gis a r | gis a b2 |
  b4 b b c8[ b] | a2 gis4 gis | a2 r \bar "||" a4 b c2 |
  c4 c c c | b2 b4\< b\! | c4. b8 c4 d |
  e4.( d8) c4 r | c c d( c) | b b c2 |
  
  b4 a gis2 | a r4 a | b4. b8 b4 b |
  c2 c4 c | b b a2 | gis gis4 gis | a4 r\fermata \bar "||"
  a b | c4. c8 c4 c | b2( c4) d | e d c r |
  c c d4. d8 | c4 c b2( | c4) b a gis |
  a2 gis4 a | b4. a8 gis4 a8[ b] | c4 b a gis | a r
  a b | c4. c8 c4 c | b4.( c8 b4 a | gis a b c8[ b] | a2) gis | a r\fermata \bar "|."
}

altvoice = \relative c' {
  \global
  e4 e | e4. e8 e4 g | g g g2 |
  g4 g g g | g f e e | <c e>2 r4 g'? |
  g g g2 | g4 e e e | e e g? g |
  g g g g | g4. g8 g4 r | g2 g |
  g4( f) e f | e d c r | e e g? g |
  
  g4. g8 g4 g | g2 g4 e | << { e2 } \new Voice { \voiceFour e4( d) } >> <d e>4 r |
  e4 e g? g | g4. g8 g r g4 |
  g g g g | g g g2 | g4 e e2 |
  e4 e e r | g2 g | g4 e e4. e8 |
  <c e>2 r4 e | g? g g g | g4. g8 g4 g |
  g2 g4 g | g2 r4 g | g2 g4 g | g g g2 |
  
  g2 r4 g4 | g2 g4 e | e e e2 | e2 r4\fermata
  g | g2. g4 | g1 | g4 g g r8 g |
  g2. g4 | e <d e> <c e> r | e e g?2 |
  g4 g g e | e2 e4 <d e> | <c e>2 r | e4 g? g2 |
  g4 g g g | g2 g4 g | g4. g8 g4 g |
  g2 g4 r | g g g2 | g4 g g( e) |
  
  e4 e e2 | e r4 e | g?4. g8 g4 g |
  g2 g4 e | e e e2 | e e4 e | e r\fermata
  e g? | g4. g8 g4 g | g2. g4 | g g g r |
  g g g4. g8 | g4 g g2~ | g4 f e <d e> |
  <c e>2 e4 e | e4. e8 e4 e | e f e d | c r
  e g? | g4. g8 g4 g | g2.( e4 | e2 g?8[ f e f] | e2) <d e> | <c e> r\fermata
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  c4 c | c4. b8 c4 d | e e e2 |
  d4 d d d | e( d) c b | c2 r4 b |
  e e e2 | d4 e8[ d] c4 b | c c d d |
  e d e f | g4. f8 e4 r\fermata | e2 d |
  d e4( d) | c b c r | c c d d |
  
  e4. e8 e4 e | d2 d4 e8[ d] | c4( b) c r |
  c c d e8.[ f16] | g4. f8 e r e4 |
  d d d c8[ d] | e4 e e2 | d4 c b2 |
  c4 c c r | e2 d | d4 e8[ d] \appoggiatura d8 c4. b8 |
  c2 r4 c | d d d d | e4. d8 e4 f |
  g2 g4 f | e2 r4 e | \appoggiatura e4 d2 d4 d | d8[ c] d[ e] f4( e) |
  
  d2 r4 d | e2 e4 e | d c b( c8[ d]) | c2 r4\fermata
  e4 | e2. d4 | e4.( f8 g2) | g4 f e r8 e |
  \appoggiatura c4 d2( d8[ f]) e[ d] | c4 b c r | b c d2 |
  d4 d d e8[ d] | c2 b4 b | c2 r | c4 d e2 |
  e4 e e e | d2 d4 d | e4. d8 e4 f |
  g4.( f8) e4 r | e e f( e) | d d e2 |
  
  d4 c b2 | c r4 c | d4. d8 d4 d |
  e2 e4 e | d d c2 | b b4 b | c r\fermata
  c d | e4. e8 e4 e | d2( e4) f | g f e r |
  e e f4. f8 | e4 e d2 | e4 d c b |
  c2 b4 c4 | d4. c8 b4 c8[ d] | e4 d c b | c r
  c d | e4. e8 e4 e | d4.( e8 d4 c | b c d e8[ d] | c2) b c r\fermata
}

bassvoice = \relative c {
  \global
  <a a'>4 q | q4. e'8 <a, a'>4 <g? g'?> | c c c2 |
  <g g'>4 q q q | c( d) e e | a,2 r4 g? |
  c e g2 | g4 gis a e | a, a g? g |
  c g' e d | c4. <g g'>8 c4 r\fermata | <c c'>2 g' |
  g c,4( d) | e <e, e'> a r | a <a a'> <g? g'?> <g g'> |
  
  c4. c8 c4 e | g2 g4 gis | a( e) a, r |
  a' a g?8.[ f16] e8.[ d16] c4. <g g'>8 c r c4 |
  g' g g, g | c c c2 | g4 a e'2 |
  a,4 a a r | <c c'>2 g' | g4 gis a4. e8 |
  a,2 r4 a' | g? g g g | c4. g8 e4 d |
  c2 c4 g | c2 r4 c | g'2 g4 g | g, g b( c) |
  
  g2 r4 g | c2 c4 c | gis a e'2 | a, r4\fermata
  c | c'2. g?4 | e4.( d8 c2) | c4 <g g'> c r8 c |
  g'2. g4 | a e a, r | e' a g?2 |
  g4 g g gis | a2 e4 e | a,2 r | <a a'>4 <g? g'?> c2
  c4 c c e | g2 g4 g | c4. g8 e4 d |
  c2 c4 r | c c b( c) | g g c2 |
  
  gis4 a e'2 | a, r4 <a a'> | <g? g'>4. <g g'>8 q4 q |
  c2 c4 c | gis gis a2 | e' <e, e'>4 q | a r\fermata
  a g? | c4. c8 c4 c | g'2( e4) d | c <g g'> c r |
  c c b4. g8 | c4 c g2( | c4) d e <e, e'> |
  a2 e'4 a | gis4. a8 e4 d | c d e <e, e'> | a r 
  a g? | c4. c8 c4 e | g2.( a4 | e a g? c,8[ d] | e2) <e, e'> | a r\fermata
}

text = \lyricmode {
  При -- и -- ди -- те, у -- бла -- жим И -- о --
  си -- фа при -- сно -- па -- мя -- тна -- го, "в но" -- 
  щи "к Пи" -- ла -- ту при -- шед -- ша -- го, и Жи -- во -- 
  та всех и -- спро -- сив -- ша -- го: даждь ми, 
  се -- го стра -- нна -- го, и -- же не и --
  
  ме -- ет, где гла -- вы по -- дкло -- ни -- ти.
  Даждь ми се -- го стра -- нна -- го, е -- 
  го же у -- че -- ник лу -- ка -- вый на смерть 
  пре -- да -- де. Даждь ми се -- го стра -- нна -- 
  го, е -- го же Ма -- ти зря -- щи на кре -- 
  сте ви -- ся -- ща, ры -- да -- ю -- щи во -- пи -- я -- 
  
  ше, и ма -- тер -- ски во -- скли -- ца -- ше: 
  у -- вы мне, ча -- до мо -- е, у -- 
  вы мне све -- те мой, и у -- тро -- 
  ба мо -- я во -- злю -- бле -- нна -- я: Си -- ме -- о -- 
  ном бо пре -- дре -- че -- нно -- е "в це" -- ркви днесь со -- 
  бы -- сться: тво -- е се -- рдце о -- ру -- 
  
  жи -- е про -- йдет. Но "в ра" -- дость во -- скре -- 
  се -- ни -- я тво -- е -- го плач пре -- ло -- жи. 
  По -- кла -- ня -- е -- мся стра -- стем Тво -- им, Хри -- сте, 
  по -- кла -- ня -- е -- мся стра -- стем Тво -- им, Хри -- 
  сте, по -- кла -- ня -- е -- мся стра -- стем Тво -- им, Хри -- сте
  и свя -- то -- му во -- скре -- се -- ни -- ю.
}

 
\bookpart {
  \header {
    title = "Приидите, ублажим Иосифа"
    opus = "№ 140"
    composer = "Дм. Бортнянского"
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
    indent = 0
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "Д" "А"  } }
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
  >>
  \layout { 
    #(layout-set-staff-size 17)
  }
  \midi {
    \tempo 4=90
  }
}
}

