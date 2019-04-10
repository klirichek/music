\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Амурские волны"
  subtitle = "Перелож. д/юношеского хора А. Тарасовой"
  composer = "М. Кюссе"
  poet = "С. Попов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

%zatakt = { \set Timing.measurePosition = #(ly:make-moment -1/4) }
zatakt =  { \partial 4 }


sopvoice = \relative c' {
  \global
  \dynamicUp
  \oneVoice
  \zatakt
  r4 |
  R2.*10
  \repeat volta 2 {
    b2.~ |
    b4 c b |
    g'2.~ |
    g4 fis e |
    dis2.~ |
    dis4 fis dis | 
    b2.~ |
    b |
    b~ |
    b4 c b |
    <b fis' a>2.~ |
    q4 <cis g'> <dis fis> |
    e2. |
    <c e g>2 <c fis a> 4 |
    <b b'>2.~ |
    q |
    <g' b>~ |
    q4 <g ais> <dis a'> |
    <e g>2.~ |
    q4 fis e |
    a2. |
    <e a c>2 <e fis a>4 |
    <e g b> r r |
    r <fis a> <e g> |
    <dis fis>8 <e g> <fis a> <g b> <a c>4 |
    e8 fis g a b4 |
    c2 b4 |
    r <e, g ais> <e g b> |
    <dis a' c>2 <dis a' b>4 |
    r <dis fis> <dis g>
  }
  \alternative {
    { e2.~ | e4 r r | }
    { e2.~ | e4 e4. d8 }
  }
  \repeat volta 2 {
    d4 r <d fis c'> | \abr
    <d fis b>2 <c d fis>4 |
    <b d a'>2 <b d g>4 |
    r c4. b8 |
    b4 r <c fis a> |
    <b g'>2 <b dis>4 |
    <b fis'>2 e4 |
    r g8 fis e b |
    d2 c4 | \abr
    r fis8 g a b |
    c2 b4 |
    r <e, gis a> <e gis b> |
    <dis a' c>2 <dis a' b>4 |
    <dis fis>2 <dis g>4
  }
  \alternative {
    { e2.~ |
      e4 e4. d8\f }
    { e2.~ |
      e4 r b }
  }
  \repeat volta 2 {
    g'2.~ |
    g4 a g |
    g fis4. eis8 |
    fis2 b,4 |
    fis'2.~ |
    fis4 g dis |
    fis e4. dis8 |
    e2. |
    b' |
    e2 d4 |
    c2.~ |
    c4 b a |
    g2 b4 |
    fis2 g4
  }
  \alternative {
    { e2.~ | e4 r b }
    { e2.~ | e4 cis'\fermata d\fermata }
  }
  \repeat volta 2 {
    g2. |
    fis4 e4. b8 |
    d2.~ |
    d4 cis d |
    f2. |
    e4 b4. d8 |
    c2.~ | \abr
    c4 e, g |
    \slurDashed
    b2( b4)
    a( g4.) e8 |
    fis2.
  }
  \alternative {
    { g4 fis e |
      cis' d e |
      fis2 e4 |
      d2.~ |
      d4 cis d |
    }
    { 
      \slurSolid g,( fis) d |
      e2 d4 |
      b'2 a4 }
  }
  d2.~ |
  d2\fermata r4 |
  b,2.~ |
  b4 c b |
  g'2.~ |
  g4 fis e |
  dis2.~ |
  dis4 fis dis |
  b2.~ |
  b |
  b~ |
  b4 d b |
  <b fis' a>2.~ |
  q4 <cis g'> <dis fis> |
  e2. |
  <c e g>2 <c fis a>4 |
  <b b'>2.~ |
  q2 r4 |
  <g' b>2.~ |
  q4 <g ais> <dis a'> |
  <e g>2.~ |
  q4 fis e | 
  a2. |
  <e a c>2 <e fis a>4 |
  <e g b> r r |
  r <fis a> <e g> |
  <dis fis>8 <e g> <fis a> <g b> <a c>4 |
  e8 fis g a b4 |
  c2^\markup\italic"rit." b4 |
  r <e, g ais> <e g b> |
  <dis a' c>2 <dis a' b>4 |
  r <dis fis b> <dis g b> |
  <e e'>2.~ |
  q4 r r \bar "||"
}

tenorvoice = \relative c {
  \global
  \dynamicUp 
 \oneVoice
  \zatakt
  r4 |
  R2.*10
  \repeat volta 2 {
    \footnote "*" #'( -1 . -1)  "* Басы вступают во 2-м куплете" b2.~ |
    b4 c b |
    g'2.~ |
    g4 fis e |
    dis2.~ |
    dis4 fis dis |
    b2.~ |
    b |
    b~ |
    b4 c b |
    a'2.~ |
    a4 g fis |
    e2. g2 a4 |
    b2.(
    b,) |
    e2.~ |
    e~ |
    e~ |
    e |
    c~ |
    c |
    e4 r r |
    R2. |
    R |
    e8 fis g a b4 |
    c2 b4 |
    r4 e, e |
    b2 b4 |
    r b b
  }
  \alternative {
    { R2. | R2. }
    { e2.~ e4 r r }
  }
  \repeat volta 2 {
    d4 r r |
    fis r r |
    g r r |
    R2. |
    b,4 r r |
    dis r r |
    e r r |
    r4 g8 fis e d |
    d2 c4 |
    r r r |
    R2. |
    r4 e e |
    b2 b4 |
    b2 b4
  }
  \alternative {
    { e2.~ |
      e4 r2 }
    {e2.~ |
     e4 r b }
  }
  \repeat volta 2 {
    g'2.~ |
    g4 a g |
    g fis4. eis8 |
    fis2 b,4 |
    fis'2.~ |
    fis4 g dis |
    fis e4. dis8 |
    e2. |
    b' |
    e2 d4 |
    c2.~ |
    c4  b a |
    g2 b4 |
    fis2 g4 |
  } \alternative {
    { e2.~ | e4 r b }
    {e2.~ | e4 cis\fermata d\fermata } 
  } \repeat volta 2 {
    g2. |
    fis4 e4. b8 |
    d2.~ |
    d4 cis d |
    f2. |
    e4 b4. d8 |
    c2.~ |
    c4 e g |
    \slurDashed
    b2( b4) |
    a( g4.) e8 |
    fis2. |
  } \alternative {
    { g4 fis e |
      cis d e |
      fis2 e4 |
      d2.~ |
      d4 cis d}
    { \slurSolid g( fis) d | e2 d4 | b'2 a4}
  }
  d2.~ |
  d4 r r |
  b,2.~ |
  b4 c b |
  g'2.~ |
  g4 fis e |
  dis2.~ |
  dis4 e dis |
  b2.~ |
  b |
  b~ |
  b4 c b |
  a'2.~ |
  a4 g fis |
  e2. |
  g2 a4 |
  b2.~ |
  b2 r4 |
  b2.~ |
  b4 ais a |
  g2.~ |
  g4 fis e |
  a2. |
  c2 a4 |
  b r r |
  r r r |
  R2. |
  e,8 fis g a b4 |
  c2 b4 |
  r4 ais b |
  c2 b4 |
  r4 b, b |
  e2.~ |
  e4 r r
}


scoreARight = \relative c'' {
  \global
  \autoBeamOn
  \oneVoice
  \zatakt e4 |
  <d b'>2.~ |
  q4 <e gis e'>4. <e gis d'>8 |
  <e a c>4. b'8 a[ g] |
  fis e dis c b a |
  g2.^\markup\italic"rit." |
  fis2 g4 |
  r4 ^\markup"a tempo" <b, e g>4 q | \abr
  
  r q q |
  r q q |
  r q q |
  \repeat volta 2 {
    r q q |
    r q q |
    r q q |
    r q q |
    r <b fis' a> q |
    r <b dis a'> q | \abr
    r ais'8 b d c |
    b2. |
    r4 <b, fis' a> q |
    r <b dis a'> q |
    r <b fis' a> q |
    r <b dis a'> q |
    r <b e g> q |
    r <c e g> <e g a> |
    <dis fis b> r r | \abr
    
    % page 2
    R2. |
    b'2.~\p |
    b4 \acciaccatura d8( c4) b |
    g'2.~ |
    g4 fis e |
    a2. |
    <a c>4 <c e>4. <a c>8 |
    <g b>2.~ |
    q4 <fis a> <e g> |
    <dis fis>8 <e g> <fis a> <g b> <a c>4 | \abr
    
    e8 fis g a b4 |
    \voiceOne
    c2( b4) |
    \oneVoice 
    r ais b |
    \acciaccatura d8( c2)( b4) |
    r <fis a,>4. <g b,>8
  }
  \alternative {
  { <e g,>2.~ q4 r r | }
  { <e g,>2.~ q4 <e e'>4. <d d'>8 }
  }
  \repeat volta 2 {
    <d d'>4 d8( e fis g | \abr
    a b c d e d |
    <c g d>4. <b g d>8 q4) |
    r4 \acciaccatura d8( c4.) b8 |
    b4 b,8 cis dis e |
    fis g a b c b |
    <a e b>4. <g e b>8 q4 |
    r g'8\p fis e b |
    d4. <c a>8 q4 | \abr
    r4 fis,8 g a b |
    \acciaccatura d8( c4) r8 <b g> q4 |
    r4 e,8 fis g a |
    \acciaccatura c8( b4) r8 <a fis> q4 |
    r <fis a,>4. <g b,>8 |
  }
  \alternative {
    { <e g,>2.~ |q4 <g' g,>4. <fis fis,>8 | }
    { <e, g,>2.~^\markup\italic"rit." \abr | q4 r b\p |}
  }
  \repeat volta 2 {
    <b g'>2.~ |
    q4 <c a'> <b g'> |
    q <a fis'>2~ |
    q4 r b |
    <a fis'>2.~ |
    q4 \acciaccatura a'8( <g b,>4.) <dis fis,>8 |
    <fis a,>4 <e g,>2~ |
    q4 r q | \abr
    <d b'>2.~ |
    q4 <e gis e'>4. <e gis d'>8 |
    <e a c>4. b'8 a g |
    fis e dis c^\markup\italic"rit. (за 2-м разом)" b a |
    g2. |
    fis2 g4 |
  }
  \alternative {
    { e2.~ | e4 r b' }
    { e,2.~ | \abr e4 r\fermata r\fermata }
  }
  \repeat volta 2 {
    r4 \ottava 1 <g' b d g>8 q q4 |
    r q q |
    r q8 q q4 |
    q q q |
    r <gis b d gis>8 q q4 |
    r q q |
    r <e a c e>8 q q4 | \abr
    q r r |
    r <e g b e>8 q q4 |
    r q q |
    r <fis a d fis>8 q q4 
  }
  \alternative {
    { r q q | r <fis ais cis fis>8 q q4 | r q8 q q4 | \ottava 0 r <b, d fis b>8 q q4 \abr | q r r }
    { \ottava 1 r <fis' a d fis> q | r <fis a c fis>8 q q4 | <d d'>8\< <dis dis'> <e e'> <fis fis'> <b b'> <a a'> }
  }
  \ottava 0 \repeat tremolo 12 { <g, b d>32\ff g'} |
  <g, b d g>8 r r2\fermata |
  <b g' b>2.~\p | q~ | \abr
  q4 <fis' a> <e g> |
  <ais, c> <b dis> <c e> |
  \voiceOne fis4 <fis a>4. <e g>8 |
  <dis fis>2.~ |
  q4 <b dis> <cis e> |
  <dis fis> <e g> <fis a> |
  <a c>2.~ |
  q~ |
  q4 <g b> <fis a> | \abr
  <b, dis> <cis e> <dis fis> |
  <e g> <g b>4. <fis a>8 |
  <e g>2. ( |
  <dis fis>4)  \oneVoice r r |
  R2. |
  b2.~ |
  b4 \acciaccatura d8( c4) b |
  g'2.~ |
  g4 fis e | \abr
  a2. |
  <a c>4 <c e> r8 <a c> |
  <g b>2.~ |
  q4 <fis a> <e g> |
  <dis fis>8 <e g> <fis a> <g b> <a c>4 |
  e8 fis g a^\markup\italic"rit." b4 |
  \voiceOne c2 b4
  \oneVoice r ais b |
  \acciaccatura d8( c4) r b | \abr
  r \ottava 1 <a b fis'> <a b g'> |
  <g b e>2.~ |
  q4 \ottava 0 r r \bar "||"
}

scoreBRight = \relative c' {
  \global
  \zatakt s4
  s2.*10
  \repeat volta 2 {
    s2.*26
    <dis' fis>2.
    s2.*3
  }
  \alternative { {s2.*2} {s2.*2} }
  \repeat volta 2 {
    s2.*14
  } \alternative { { s2.*2 } {s2.*2 } }
  \repeat volta 2 {
    s2.*14 
  } \alternative { { s2.*2 } {s2.*2 } }
  \repeat volta 2 {
    s2.*11 
  } \alternative { { s2.*5 } { s2.* 3 } }
  s2.*6
  b2.~ |
  b |
  b2.~ |
  b |
  a |
  fis~ |
  fis |
  b2. |
  s2.
  c2.( |
  b4) s2 |
  s2.*11
  <dis fis>2. |
  s2.*5
}

scoreALeft = \relative c {
  \global
  \autoBeamOn
  \zatakt r4 |
  <gis gis'>4 <b' d e>4 q |
  <e,, e'> <b'' d e> q |
  <a, a'> r r |
  R2. |
  b4 <g' b e> q |
  b, <a' b dis> q |
  <e, e'> r r |
  <b' b,>4 r r |
  <e e,> r r |
  <b b,> r r |
  \repeat volta 2 {
    <e e,> r r |
    <b b,> r r |
    <e e,> r r |
    <b b,> r r |
    <fis' fis,> r r |
    <b, b,> r r |
    <fis' fis,> <b fis' a> q |
    <b, b,> <b' dis a'> q |
    <fis fis,> r r |
    <b, b,> r r |
    <fis' fis,> r r |
    <b, b,> r r |
    <e e,> r r |
    c r r |
    b <c c'> <b b'> |
    <a a'> <g g'> <fis fis'> |
    <e e'> <b'' e g> q |
    <b, b,> <b' e g> q |
    <e, e,> <b' e g> q |
    <b, b,> <b' e g> q |
    <c, c,> <c' e a> q |
    <a, a,> <c' e a> q |
    <b, b,> <b' e g> q |
    <b, b,> <b' e g> q |
    <b, b,> <b' dis a'> q |
    <e,, e'>8 <fis fis'> <g g'> <a a'> <b b'>4 |
    <c c'>2( <b b'>4) |
    R2. |
    <fis fis'>4 <b' fis' a> q |
    <b, b,> <b dis a'> q
  }
  \alternative {
    { <e e,>4 b g | e r r }
    { <e e'> b' g | e r r }
  }
  \repeat volta 2
  {
    <d' d,> <d' fis a> q |
    <d, d,> <d' fis a> q |
    <g, g,> <b d g> q |
    R2. |
    <b, b,>4 <b' dis fis> q |
    <b, b,> <b' dis fis> q |
    <e, e,> <b' e g> q |
    R2. |
    <a a,>4 <c e a> q |
    <a a,> <c e a> q |
    <g g,> <b e g> q |
    <e, e,> <b' e g> q |
    <fis fis,> <b dis fis> q |
    <b, b,> <b' dis fis> q |
  }
  \alternative {
    { <e, e,> <b' b,> <g g,> | <e e,> r r | }
    { <e e,> <b' b,> <g g,> | <e e,> r r | }
  }
  \repeat volta 2 {
    <e e,> <b' e g> q |
    <b, b,> <b' e g> q |
    <dis, dis,> <b' dis fis> q |
    <b, b,> <b' dis fis> q |
    <dis, dis,> <b' dis fis> q |
    <b, b,> <b' dis fis> q |
    <e, e,> <g b e> q |
    <b, b,> <g' b e> q |
    <gis gis,> <b d e> q |
    <e, e,> <b' d e> q |
    <a a,> r r |
    R2. | 
    <b, \parenthesize b,>4 <g' b e> q |
    <b, \parenthesize b,> <a' b dis> q |
  }
  \alternative {
    { <e g b e>4 <b' b,> <g g,> | <e e,> r r | }
    { <e g b e> <b' b,> <g g,> | <e e,> <cis cis,>\fermata <d d,>\fermata }
  }
  \repeat volta 2 {
    <g g,>2. |
    <fis fis,>4 <e e,>4. <b b,>8 |
    <d d,>2.~ |
    q4 <cis cis,> <d d,> |
    <f f,>2. |
    <e e,>4 <b b,>4. <d d,>8 |
    <c c,>2.~ |
    q4 b8 c e g |
    <b b,>2. |
    <a a,>4 <g g,>4. <e e,>8 |
    <fis fis,>2. |
  }
  \alternative {
    { <g g,>4 <fis fis,>4. <d d,>8 | <cis cis,>2. | <fis fis,> | <b, b,>~ | \abr
      q4 <cis cis,> <d d,> }
    { <g g,> <fis fis,> <d d,> | <e e,>2 <d d,>4 | q <c' d fis> q | }
  }
  \repeat tremolo 12 { g,32 g'} |
  <g g,>8 r r2\fermata |
  e4 <b' e g> q |
  b, <b' e g> q | \abr
  e, <b' e g> q |
  b, <dis' fis> <cis e> |
  fis, <b fis' a> q |
  b, <b' dis a'> q |
  fis <b fis' a> q |
  b, <e' g> <dis fis> |
  fis, <b g'> q |
  b, <b' dis a'> q |
  fis <b fis' a> q | \abr
  
  b, <b' dis a'> q |
  e, <b' e g> q |
  c, <c' e g> <e g a> |
  <b b,> <c c,> <b b,> |
  <a a,> <g g,> <fis fis,> |
  <e e,> <b' e g> q |
  b, <b' e g> q |
  <e, e,> <b' e g> q |
  <b, b,> <b' e g> q | \abr
  <c, c,> <c' e g> q |
  <a, a,> <c' e g> q |
  <b, b,> <b' e g> q |
  <b, b,> <b' e g> q |
  <b, b,> <b' dis fis b> q |
  <e, e,>8 <fis fis,> <g g,> <a a,> <b b,>4 |
  <c c,>2 <b b,>4 |
  R2. |
  <fis fis,>4 <b dis a'> q | \abr
  <b, b,> <b dis a'> q |
  <e e,> <b b'> <g g'> |
  <e e'> r r
}

scorePiano =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << 
      \new Voice {\voiceOne \scoreARight }
      \new Voice {\voiceTwo \scoreBRight }
    >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreALeft }
  >>

lyricsup = \lyricmode {
  \set stanza = "1. " Пла -- вно А -- мур сво -- и во -- лны не -- сёт, __
  ве -- тер си -- бир -- ский им пе -- сню по -- ёт, __
  ти -- хо шу -- мит над А -- му -- ром тай -- га,
  хо -- дит пе -- нна -- я во -- лна,
  пе -- на -- я во -- лна, пле -- щет ве -- ли -- ча -- ва и во -- льна.
  \skip 1 \set stanza = "3. " Кра -- со -- ты и
  си -- лы по -- лны хо -- ро -- ши А -- му -- ра во -- лны се -- ре -- бря -- тся во -- лны
  се -- ре -- бря -- тся во -- лны сла -- вой Ро -- ди -- ны го -- рды. 
 \skip 1 \skip 1 //_-рды. 
  \set stanza = "5. " Кра -- си -- ва А -- му -- ра во -- лна и во -- льно -- стью ды -- шит о -- на,
  зна -- ет во -- лна, сте -- ре -- гут е -- ё по -- кой \set stanza = "6. " Спо_-
  \skip 1 Ве -- ли -- чав А -- мур се -- дой,_и
  мы хра -- ним е -- го по -- кой.
  Ко -- ра -- бли впе -- рёд _
  во -- лны бе -- гут и бе -- гут, бе -- гут.
  Ты шу_-
  //_наш си -- би -- рский во -- льный край.
  (м)…
}


lyricscore = \lyricmode {
  \set stanza = "2. " Там, где ба -- гря -- но -- е со -- лнце вста -- ёт, __
  пе -- сню ма -- трос на А -- му -- ре по -- ёт: __
  пе -- сня ле -- тит над ши -- ро -- кой ре -- кой
  льё -- тся пе -- сня ши -- ро -- ко,
  пе -- сня ши -- ро -- ко льё -- тся и не -- сё -- тся да -- ле \skip 1 //_ко.  \skip 1 \skip 1
  Пле -- щут си -- лы по -- лны, и стре -- мя -- тся к_мо -- рю \repeat unfold 16 \skip 1
  Ру -- сско -- ю го \skip 1 \set stanza = "4. "Пле -- щут
  \skip 1 \skip 1 кой -- ны ре -- ки бе -- ре -- га, шу -- мит зо -- ло -- та -- я та -- йга.
  Ды -- шит во -- лна, е -- ё чу -- дной кра -- со_- \skip 1 \skip 1 //_-той.
  \skip 1 \skip 1 ми А -- мур ро -- дной, ты шу -- ми се -- дой во -- лной,
  в_гро -- зном беге про -- сла -- вляй
  \repeat unfold 18 \skip 1
  Пла -- вно А --
  мур __ сво -- и во -- лны не -- сёт. __
  Ве -- тер си -- би -- рский им пе -- сни по -- ёт. __
  Ти -- хо шу -- мит над А --
  му -- ром та -- йга.
  Хо -- дит пе -- нна -- я во -- лна,
  пе -- нна -- я во -- лна
  пле -- щет
  ве -- ли -- ча -- ва
  и во -- льна. __
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
%    ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  
\bookpart {

  \score {
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S I,II" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" {\lyricsup }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName =  "B"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>

    >>
    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Хор"
  }
  \score {
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S I,II" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" {\lyricsup }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName =  "B"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>

    >>
    %    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Piano"
  }
  \score {
    %  \transpose c bes {
    <<
    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \scorePiano
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=180
    }
  }
}
