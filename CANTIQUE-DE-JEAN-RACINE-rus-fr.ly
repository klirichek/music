\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 20)

\header {
  title = "CANTIQUE DE JEAN RACINE"
  subtitle = "ДУХОВНАЯ ПЕСНЯ ЖАНА РАСИНА"
  composer = "Г. Форе, облегчённая редакция Т. Ждановой"
  opus = "Op. 11"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
                                                   grob-interpret-markup grob (                         
                                                                                let (( dyntxt (ly:grob-property grob 'text ) )  )
                                                                                ( set! dyntxt (cond
                                                                                               (( equal? dyntxt "ff" ) "оч. гр." ) 
                                                                                               (( equal? dyntxt "f" ) "гр." )
                                                                                               (( equal? dyntxt "mf" ) "ум." )
                                                                                               (( equal? dyntxt "mp" ) "ум." )
                                                                                               (( equal? dyntxt "p" ) "т." )
                                                                                               )) #{ \markup \normal-text \italic $dyntxt #} )
                                                   )) }


melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }


ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

smLyrics = {
  \override Lyrics.LyricText #'font-size = -2.0
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key d \major
  \time 4/4
}

sopvoicei = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*52
  
  r4 b fis' b, |
  cis4 cis8 cis cis4 d8 e |
  
  %55
  e4( d) r2 |
  R1
  r4 b\f fis' d |
  
  %58
  e4 e8 e e4 d8 e |
  fis2 r2 |
  R1 \break 
}

sopvoiceii = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  R1*51
  
  %52
  r2 r4 fis |
  b2. b4 |
  b4 b8 b ais4 ais8 ais |
  
  %55
  ais4( b) r2 |
  r2 r4 fis\f |
  b2. fis4 |
  
  %58
  a4 a8 a b4 b8 b |
  ais2 r |
  R1
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo Andante 2=50
  \autoBeamOff
  R1*20
  r2 r4 a\pp |
  
  %22
  d4 cis b cis |
  b2 a4 cis |
  b2 d |
  
  %25
  cis2. cis4 |
  b b d d |
  cis2. a4 |
  
  %28
  fis'4\f( cis) d( fis) |
  e4 d^\markup\italic"dim." cis cis |
  cis2\p b |
  
  %31
  a2 r |
  R1*7
  \pageBreak r2 r4 cis^\markup\italic"dolce"
  
  %40
  cis2 b |
  gis4 eis fis gis8 gis |
  a2 <gis b>4 <ais cis> |
  
  %43
  < ais cis>2 <b d>4 <b d> |
  <b d>2^\markup\italic"cresc." <g cis> |
  ais4 ais b cis |
  
  %46
  d4\f d e fis |
  fis4. g8 g4 g^\markup{ \italic sub. \dynamic pp } |
  fis( cis) cis2 |
  
  %49
  cis4 d8[( e]) d4 d |
  cis gis gis gis |
  gis( ais8[ b]) ais4 r | 
  
  %52
  R1*13
  
  %65
  r1
  r1
 
  %67
  r2 r4 a\p |
  d cis b a |
  a2 g4 b |
  
  %70
  e4^\markup\italic"cresc." d cis b |
  b2 a4 a |
  fis'\f( cis) d( fis) |
  
  %73
  e( d) cis cis |
  cis2 b4. b8 |
  a2. a4^\markup{ \italic sub. \dynamic pp }
  
  %76
  b4( fis) g( b) |
  a(\< e')\! d\> fis,\! |
  fis2\pp e4. d8 |
  
  %79
  d2. r4 |
  R1 |
  r2 r4 fis\pp |
  e2 g |
  
  %83
  fis2. r4 |
  R1 |
  r2 fis4\pp a |
  
  %86
  fis1^\markup\bold\italic"poco rall." |
  e2. d4 |
  d1~ |
  d \fermata
  
}



altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R1*18
  r2 r4 fis\pp |
  a a g g |
  fis2. fis4 |
  
  %22
    fis4 fis fis eis |
    eis2 fis4 a |
    <fis a>2 <e gis> |
    
    %25
    e4 eis fis g |
    fis2 gis |
    gis( a4) g |
    
    %28
    fis2 fis4( c') |
    b gis a fis |
    e2 d |
    
    %31
    cis2 r |
    R1*7
    r2 r4 e |
    
    %40
    e2 d |
    cis4 cis dis eis8 eis |
    fis2 fis4 e |
    
    %43
    e2 d4 fis |
    fis2 e |
    fis4 fis fis e |
    
    %46
    fis4 b b a |
    a4. g8 g4 b |
    ais( g) fis( b) |
    
    %49
    ais4 ais b fis |
    eis b b fis' |
    eis2 fis4 r |
    
    %52
    \oneVoice
    \change Staff = "altstaff"
    \break r4 b, fis' fis |
    fis( e) d fis |
    g2 fis8[( e]) d[( cis]) |
    
    %55
    cis4( b) r2 |
    r4 b\f fis' fis |
    fis( e) d d |
    
    %58
    cis2 b4 b |
    cis2 r |
    R1
    \change Staff = "upstaff"
    \voiceTwo R1*4
    
    
    %65
    r2 r4 fis\p |
    a4 a g g |
    
    %67
    fis2 fis |
    fis2. fis4 |
    e2 e4 r |
    
    %70
    g2. g4 |
    fis2 fis4 g |
    fis2 fis4( c') |
    
    %73
    b4( gis) a fis |
    e2 e4. e8 |
    e2 fis_\markup{ \italic sub. \dynamic pp }  |
    
    %76
    d4( dis) e( f) |
    e( bes') a d, |
    cis2 cis4. d8 |
    
    %79
    d2. r4 |
    R1 |
    r2 r4 d |
    d2 cis |
    
    %83
    d2. r4 |
    R1 |
    r2 cis4 d |
    
    %86
    d1 |
    cis2. d4 |
    d1~ |
    d1
    
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  
  R1*12
  r1
  r
  
  r2 r4 a\pp |
  
  %16
  d cis b a |
  cis2 d4 d |
  d2 cis |
  
  %19
  d2 d4 d |
  d2 d4 cis |
  d2. a4 |
  
  %22
  b4 cis d cis |
  cis2 cis4 e |
  d2 b |
  
  %25
  a4 b a ais |
  b2. b4 |
  b2( a4) cis |
  
  %28
  d4( ais) b( dis) |
  e b a a |
  gis2 gis |
  
  %31
  a2 r
  R1*7
  r2 r4 a |
  
  %40
  a2 fis |
  eis4 cis' cis b8 b |
  a2 fis4 fis |
  
  %43
  fis2 b4 b |
  b2 cis |
  cis4 cis b4 cis |
  
  %46
   d4 b cis dis |
   dis4. e8 e4 r |
   r e e e |
   
  %49
  e4 d8[( cis]) d4 r |
  r d( cis) b |
  b( ais8[ gis]) ais4 fis |
  
  %52
   b2 a |
   g fis4 d |
   e2 fis4 fis |
   
   %55
    g2 r4 fis |
    b2 b4( a) |
    g2 fis4 b |
    
    %58
    a2 g4 g |
    fis2. r4 r1 |
    
    %61
    r2 r4 a8\p a |
    d4( cis) b a |
    cis2 d4 d |
    
    %64
    d2 cis |
    d d4 d |
    d2 d4 cis |
    
    %67
    d1 |
    r4 a4\p( d) cis |
    b2 b |
    
    %70
    r4 b e( d) |
    cis2 cis4 cis |
    d4( ais) b( dis) |
    
    e4( b) a a |
    gis2 gis4. gis8 |
    a2 c |
    
    %76
    b4( a) g( gis) |
    a( cis) d b |
    a2 g4. g8 |
    
    %79
    fis2. r4 |
    R1 |
    r2 r4 a |
    g( fis) e2 |
    
    %83
    fis2. r4 |
    R1 |
    r2 ais4 a |
    
    %86
    b1 |
    g2. g4 |
    fis1~ |
    fis

  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  R1*12
  r2 r4 fis8.\pp fis16 |
  a2 g4. g8 |
  fis2. fis4 | \abr
  
  fis4 fis d a' |
  a( g) fis fis |
  e2 g | \abr
  
  % 19
  fis2 fis4 fis |
  fis2 e4 e |
  d2 cis | \abr
  
  %22
  b4 a gis cis |
  <fis \parenthesize fis,>2 fis4 cis |
  d2 e | \abr
  
  % 25
   a4 gis-\markup\italic"cresc." fis e |
   d2 e |
   eis2(fis4) a | \abr
   
   % 28
   d,4(\f fis) b( a) |
   gis eis^\markup\italic"dim." fis dis |
   e2\p e | \abr
   
   %31
   a,2 r |
   R1*7
   r2 r4 a-\markup\italic"dolce" | \abr
   
   %40
   a2 b |
   cis4 cis cis cis8 cis |
   fis2 fis4 fis | \abr
   
   %43
   b,2 b4 b' |
   b2-\markup\italic"cresc." e, |
   fis4 fis gis ais | \abr
   
   %46
  b4\f b b b |
  e,4. e8 e4 r |
  r b' ais g | \abr
  
  %49
  fis4 fis b, r |
  r fis'( eis) d |
  cis2 fis,4 fis' | \abr
  
  %52
  b2 a |
  g fis4 d |
  e2 fis4 fis | \abr
  
  %55
  g2 r4 fis4\f |
  b2 b4( a) |
  g2 fis4 b | \abr
  
  
  %58
  a2 g4 g |
  fis2.\> fis4\p |
  a a g g | \abr
  
  %61
  fis2 fis4 fis |
  fis2 d4 a' |
  a( g) fis fis | \abr
  
  
   %64
   e2 g |
   fis fis4 fis |
   fis2 e4 e | \abr
   
   %67
   d4 a d cis |
   b2 b |
   e4 b e d | \abr
   
   %70
   cis2 cis |
   fis,4( cis') fis e |
   d(\f fis) b( a) | \abr
   
   %73
    gis( eis) fis dis |
    e2 d4. d8 |
    cis2 d_\markup{ \italic sub. \dynamic pp } | \abr
    
    %76
    g,4( b) e( d) |
    cis\<( g'\!) fis\> gis\! |
    a2\pp a,4. a8 | \abr
    
    %79
    d2. r4 |
    R1 |
    r2 r4 a\pp |
    a2 a | \abr
    
    %83
    d2. r4 |
    R1 |
    r2 fis,4\pp fis | \abr
    
    %86
    g1-\markup\bold\italic"poco rall." |
    a2. a4 |
    d1~ |
    d\fermata \bar "|."
  
}

lyricscore = \lyricmode {
  Вэрб эгаль о Трезо, нотрюникесперансё,
Жур этернель дё ла терр э де сьё,
(Дё ла пезиблё нуи) ну ро(м)пон лё силансе
Диван Совёр, жеттё сюр ну ле зьё.

Репан сюр ну лё фё дё та грасё пуисантё:
Кё ту ланфер фуи о сон дё Та вуа!
Диссипё лё соммей дюн амё лангисантё
Ки ла кондюи а любли дё Те люа!

О Крист! Суа фаворабль а сё пёплё фиделё,
Пур Тё бенир матёнан рассамбле
Рёсуа ле шон килёфр а Та глуариммортеллё,
Э дё Те донкиль рётурнё комбле.
}

lyricscoresi = \lyricmode {
  Ки ла \repeat unfold 8 \skip 1
  Ки ла 
}

lyricscoresii = \lyricmode {
  Ки ла кон -- дюи а люб -- ли дё Те люа!
  Ки ла кон -- дюи а люб -- ли дё Те люа!
}

lyricscores = \lyricmode {
\repeat unfold 11 \skip 1 жет -- тё сюр ну ле зьё.

\repeat unfold 40 \skip 1
\repeat unfold 10 \skip 1

Рё -- суа ле шон кил ёф -- р(е) а та глуа -- ри~им -- мор -- тел -- лё,
\repeat unfold 10 \skip 1
 
}

lyricscorea = \lyricmode {
Дё ла пе -- зи -- блё нуи
ну ро(м) -- пон лё си -- лан -- се
Ди -- ван Со -- вёр, жет -- тё сюр ну ле зьё.
Ди -- ван Со -- вёр, жет -- тё сюр ну ле зьё!

Ре -- пан сюр ну лё фё дё та гра -- сё пуи -- сан -- тё:
Кё ту лан -- фер кё ту лан -- фер фуи о сон дё Та вуа!
Дис -- си -- пё лё сом -- мей дюн а -- мё лан -- ги -- сан -- тё
Ки ла кон -- дюи а люб -- ли дё Те люа,
Ки ла кон -- дюи а люб -- ли дё Те люа!

Рё -- суа ле шон кил ёф -- р(е) а та глуа -- ри им -- мор -- тел -- лё,
э дё Те дон -- киль рё -- тур -- нё ком -- бле.
Э дё Те дон -- киль рё -- тур -- нё ком -- бле!
Э дё Те дон киль рё -- тур -- нё ком -- бле!
}



lyricscoret = \lyricmode {
  \repeat unfold 101 \skip 1
  а сё пё -- плё \repeat unfold 13 \skip 1
  а та глуа -- ри  им -- мор -- тел -- лё,
}

lyricscoreb = \lyricmode { 
  Вэрб э -- галь о Тре -- о, но -- трю -- ни -- кес -- пе -- ран -- сё,
Жур э -- те -- рнель дё ла терр э де сьё,
ну ро(м) -- пон лё си -- лан -- се
Ди -- ван Со -- вёр, жет -- тё сюр ну ле зьё.
Ди -- ван Со -- вёр, жет -- тё сюр ну ле зьё!

Ре -- пан сюр ну лё фё дё та гра -- сё пуи -- сан -- тё:
Кё ту лан -- фер кё ту лан -- фер фуи о сон дё Та вуа!
Дис -- си -- пё лё сом -- мей лан -- ги -- сан -- тё
Ки ла кон -- дюи а люб -- ли дё Те люа,
Ки ла кон -- дюи а люб -- ли дё Те люа!

О Крист! Суа фа -- во -- ра -- бль~а сё пё -- плё фи -- де -- лё,
пур Тё бе -- нир ма -- тё -- нан рас -- сам -- бле
Рё -- суа ле шон кил ёф -- р~а Та глуа -- рим -- мор -- тел -- лё,
э дё Те дон -- киль рё -- тур -- нё ком -- бле.
Э дё Те дон -- киль рё -- тур -- нё ком -- бле!
Э дё Те дон киль рё -- тур -- нё ком -- бле!
}

frlyricscoresi = \lyricmode {
  qui la  \repeat unfold 8 \skip 1
  qui la  
}

frlyricscoresii = \lyricmode {
  qui la con -- duit à l'ou -- bli de tes lois,
  qui la con -- duit à l'ou -- bli de tes lois!
}

frlyricscores = \lyricmode {
\repeat unfold 11 \skip 1 jet -- te sur nous les yeux,

\repeat unfold 40 \skip 1
\repeat unfold 10 \skip 1
Re -- çois les chants qu'il of -- fre à ta gloi -- re~im -- mor -- tel -- le
\repeat unfold 10 \skip 1
Et
}

frlyricscorea = \lyricmode {
De la pai -- si -- ble nuit,
nous rom -- pons le si -- len --  ce,
Di -- vin Sau -- veur, jet -- te sur nous les yeux,
Di -- vin Sau -- veur, jet -- te sur nous les yeux!

Ré -- pands sur nous le feu de ta grâ -- ce puis -- san -- te,
que tout l'en -- fer, que tout l'en -- fer fuie au son de ta voix, 
Di -- si -- pe le som -- meil d'une â -- me lan -- guis -- san -- te,
qui la con -- duit à l'ou -- bli de tes lois,
qui la con -- duit à l'ou -- bli de tes lois!

Re -- çois les chants qu'il of -- fre à ta gloi -- re im -- mor -- tel -- le,
et de tes dons qu'il re -- tour -- ne com -- blé!
Et de tes dons qu'il re -- tour -- ne com -- blé!
Et de tes dons qu'il re -- tour -- ne com -- blé!
}

frlyricscoret = \lyricmode {
  \repeat unfold 101 \skip 1
  à ce peu -- ple \repeat unfold 13 \skip 1
  à ta gloi -- re im -- mor -- tel -- le
}

frlyricscoreb = \lyricmode {
  Ver -- beé -- gal au Très -- Haut No -- tre~u  -- ni  -- que~es  -- pé  -- ran -- ce,
Jour é -- te -- rnel de la ter -- re~et des cieux,
nous rom -- pons le si -- len --  ce,
Di -- vin Sau -- veur, jet -- te sur nous les yeux,
Di -- vin Sau -- veur, jet -- te sur nous les yeux!

Ré -- pands sur nous le feu de ta grâ -- ce puis -- san -- te,
que tout l'en -- fer, que tout l'en -- fer fuie au son de ta voix, 
Di -- si -- pe le som -- meil lan -- guis -- san -- te,
qui la con -- duit à l'ou -- bli de tes lois,
qui la con -- duit à l'ou -- bli de tes lois!

Ô Christ, sois fa -- vo -- ra -- ble~à ce peu -- ple fi -- dè -- le 
pour  te bé -- nir main -- te -- nant ras -- sem -- blé,
Re -- çois les chants qu'il of -- fre~à ta gloi -- re~im -- mor -- tel -- le
et de tes dons qu'il re -- tour -- ne com -- blé!
Et de tes dons qu'il re -- tour -- ne com -- blé!
Et de tes dons qu'il re -- tour -- ne com -- blé!
}

\bookpart {
  \paper {
    top-margin = 10
    left-margin = 20
    right-margin = 20
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        shortInstrumentName =\markup { \right-column { "СI" "CII"  } }
        midiInstrument = "voice oohs"
                \RemoveEmptyStaves
      } <<
        
        \new Voice = "sopranoi" { \voiceOne \sopvoicei }
        \new Voice = "sopranoii" { \voiceTwo \sopvoiceii }
      >>
      
      \new Lyrics \lyricsto "sopranoi" { \frlyricscoresi }
      \new Lyrics \lyricsto "sopranoi" { \smLyrics \lyricscoresi }
      \new Lyrics \lyricsto "sopranoii" { \frlyricscoresii }
      \new Lyrics \lyricsto "sopranoii" { \smLyrics \lyricscoresii }
      
      
      \new Staff = "altstaff" \with {
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
                \RemoveEmptyStaves
      } {\global s1*51}
        
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \frlyricscores }
      \new Lyrics \lyricsto "soprano" { \smLyrics \lyricscores }
      \new Lyrics \lyricsto "alto" { \frlyricscorea }
      \new Lyrics \lyricsto "alto" { \smLyrics \lyricscorea }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \frlyricscoret }
      \new Lyrics \lyricsto "tenor" { \smLyrics \lyricscoret }
      \new Lyrics \lyricsto "bass" { \frlyricscoreb }
      \new Lyrics \lyricsto "bass" { \smLyrics \lyricscoreb }
    >>
    %  }  % transposeµ
    \layout {
          #(layout-set-staff-size 19)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
                \RemoveAllEmptyStaves
                \accidentalStyle choral-cautionary
      }
      %Metronome_mark_engraver
    }
  }
}
