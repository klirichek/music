\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 17.5)

\header {
  title = "Жди меня"
  composer = "муз. А. Бараев"
  poet = "ст. К. Симонов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

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

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

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
  
  \key e \minor
  \time 3/4
}

tosop = { \change Staff = "sopstaff" }
toalt = { \change Staff = "altstaff" }
tofem = { \change Staff = "upstaff" }
totenor = { \change Staff = "tenorstaff" }
tobass = { \change Staff = "bassstaff" }
tomale = { \change Staff = "downstaff" }


\parallelMusic sopnotes, sopnotesii {
  g8\pp fis g2 |
  s2. |
  
  
   g2._"(закр.р.)"  |
    s2. |
  
  g8 fis e4 d~ |
   s2. |
  
  d2._"(закр.р.)"  |
   s2. |
  
  g8 fis g2 |
   s2. |
  
  g2.~_"(закр.р.)"  |
   s2. |
  \abr
  
  g4 fis8 g a fis |
   s2. |
  
  b2. |
   s2. |
  
  b4. b8 b b |
   s2. |
  
  b 8c d2 |
   s2. |
  
  c8 b e,4 a |
   s2. |
  
  fis2. |
   s2. |
  \abr
  

  R2.*4 |
  R2.*4 |
  
  
  \tempo "Poco piu mosso" g8\p fis g2 |
  s2. |
  
  g2._"(закр.р.)"  |
  s2. |\abr
  
  % page 2
  
  g8 a r4 fis_"(закр.р.)" |
    s2. |
  
  g2. |
    s2. |
  
  g8 fis g2 |
    s2. |
  
  g2.~_"(закр.р.)" |
    s2. |
  
  g4 fis8 g a fis |
    s2. |
  
  b2. |
    s2. | \abr
    
    % 25
  
  
  b4. b8 b b |
    s2. |
  
  b8 d c2 |
    s2. |
  
  c8 b g4 e |
    s2. |
  
  b'2( a4) |
    s2. |
  
   r4 g2_"(закр.р.)" |
    s2. |
  
  r4 e2 |
  s2. |
   \abr
  
  %31
  
  R2. |
    s2. |
  
  \time 1/4 R4 |
  s4 |
  
  \time 2/4 g8\mp fis a g |
  s2 |
  
  b8 a fis4 |
  s2 |
  
  \time 3/4 a8^\markup\italic"poco cresc." g fis4. dis8 |
  s2. |
  
  \time 1/4 g4 | 
  s4 | \abr
  
  %page 3 37
  
   \time 2/4 g8 a b a |
  s2 |
  
  b8 c a4 |
  s2 |
  
  \time 3/4 fis4.\< g8 a fis |
  s2. |
  
  \time 1/4 b8[( d]) |
  s4 |
  
  \time 2/4 f4\! c |
  s2 |
  
  \voiceOne \time 3/4 e8 d c b c4 | 
  c8 b a gis a4 | \abr
  
  %43
  
  \oneVoice d8\< c c4 d-- |
  s2. |
  
  \time 1/4 dis4--^\markup\italic"rit." |
  s4 |
  
  \time 3/4 e4--\f \tempo "Tempo I" r r |
  s2. |
  
  r4 r8 c,8\mp c4 |
  s2. |
  
  R2. |
  s2. |
  
  g'8[( fis] a[ g] b[ a] | 
  s2. |
  \abr
  
  %49
  
  fis4. e8 fis[ g] |
  s2. |
  
  c2. |
  s2. |
  
  b2) b8[( c]\< |
  s2. |
  
  d2 e,4 |
  s2. |
  
  \time 1/4 c'4) |
  s4 |
  
  \time 3/4 cis8[( d] e4 cis\!| 
  s2. |\abr
  
  %page 4 55
  
  e8 fis dis4^\markup\italic"ritard." c8[ b]) |
  s2. |
  
  
  g'8\ff \tempo "Poco piu mosso" fis8 g4. b,8 |
  s2. |
  
  c8 g' g2 |
  s2. |
  
  g4. fis8 e d |
  s2. |
  
  b2. |
  s2. |
  
  g'8 fis g4. b,8 | 
  s2. |
  \abr
  
  %61
  
  c8 g' g2 |
  s2. |
  
  g8 a r4 fis8 d |
  s2. |
  
  d2.\> |
  s2. |
  
  
  \break \time 2/4 \tempo "Meno mosso" b8\mp b b b |
  s2 |
  
  b8 c d4 |
  s2 |
  
  \time 3/4 c8 b a4 e | 
  s2. |
  \abr
  
  %67
  
  b'2. |
  s2. |
  
  r4 e,2 |
  s2. |
  
  r4 c2 |
  s2. |
  
  r4\> r fis |
  s2. |
  
  e2. |
  s2. |
  
  g8\p \tempo "Tempo I" fis8 g4. b8 | 
  s2. |
  \abr
  
  c8 g g2 |
  s2. |
  
  a2 a4 |
  s2. |
  
  g2. |
  s2. |
  
  R2.*2 |
  s2.*2 |
  
  g8 a fis4 r | 
  s2. |
  \abr
  
  \time 4/4 g8[(\< fis a g] b[\! a]^\markup\italic"rit." fis4) |
  s1 |
  
  \after 2.\! gis1\>_"(закр.р.)" \bar "|."|
  s1 |
  
}

sopvoice = \relative c'' {
  \global
  \tempo "Tranquillo" 4=64
  \dynamicUp
  \autoBeamOff
  \oneVoice
  \sopnotes
}

sopvoiceii = \relative c'' {
  \global
  \voiceTwo
  \autoBeamOff
  \sopnotesii
}
  

\parallelMusic altnotes, altnotesii {
  b2~\pp_"(закр.р.)" 8 8 |
  s2. |
  
  \voiceOne c8 g' g2 |
  c2. |
  
  \oneVoice c,2._"(закр.р.)" |
  s2. |
  
  b2. |
  s2. |
  
  b2~_"(закр.р.)" 8 8 |
  s2. |
  
  \voiceOne c8 g' g2 |
   c2. | \abr
   
   %7
  
  \oneVoice e2_"(закр.р.)" d4 |
  s2. |
  
  fis2 g4 |
  s2. |
  
  g2~8 d |
  s2. |
  
  d8 e f2 |
  s2. |
  
  e8 d c4 c |
  s2. |
  
  e2( dis4) |
  s2. |
  
  %13
  
  e2._"(закр.р.)" |
  s2. |
  
  e2. |
  s2. |
  
  \break r4 r fis |
  s2. |
  
  e2. | % \break
  s2. |
  
  
  b2~\p 8 8 |
  s2. |
  
  \voiceOne c8 g' g2 |
  c2 c4 |
  
  %page 2 19
  
  \oneVoice c,2 fis8 d |
  s2. |
  
  b2( c4) |
  s2. |
  
  b2~ 8 8 |
  s2. |
  
   \voiceOne c8 g' g2 r4 d8 e fis d |
   c2 c4  e4 d8 e fis d |
   
 
  \oneVoice fis4( g a) |
  s2. | \abr
  
  %25
  
  
  g4( gis) gis |
  s2. |
  
  gis8 gis a2 |
  s2. |
  
  g8 g e4 c |
  s2. |
  
  es2( dis4) |
  s2. |
  
  r4 e2_"(закр.р.)" |
  s2. |
  
  r4 c2 |
  s2. |
  
  %31
  
  
  r4 d_"(закр.р.)" fis |
  s2. |
  
  e4~ |
  s4 |
  
  e2~ |
  s2 |
  
  e2 |
  s2 |
  
  e8 e e4. e8 |
  s2. |
  
  e4 |
  s4 |
  
  %page 3 37
  
  d8 d d d |
  s2 |
  
  d8 d d4 |
  s2 |
  
  d4. d8 d d |
  s2. |
  
  d8[( g])  |
  s4 |
  
  as4 as |
  s2 |
  
  gis8 gis e e e4 |
  s2. | \abr
  
  %43
  
  <es g>8 q q4 q-- |
  s2. |
  
  <dis g>4-- |
  s4 |
  
  <e?g>4--\f r4 r8 b8\mp |
  s2. |
  
  c8 a a g' g4 |
  s2. |
  
  g8 a fis4\> d\! |
  s2. |
  
  b4 c( e~ |
  s2. | \abr
  
  %49
  
  8[ d8] 2 |
  s2. |
  
  e4 fis es |
  s2. |
  
  fis8[ d] d4) d8([ e] |
  s2. |
  
  f2 e4 |
  s2. |
  
  e4 ) |
  s4 |
  
  e8[( fis] g4 fis |
  s2. |
  
  %page 4 53
  
  g4 fis <fis dis>8[ <dis a'>]) |
  s2. |
  
  <g b>4(\ff <fis a> <e g>8[ <fis a>]  |
  s2. |
  
  \voiceOne c'4 2 |
   g4 a g8[ a] |
   
  \oneVoice <e, g>4 <fis a> <d fis> |
  s2. |
  
  <d fis>2 <fis a>4) |
  s2. |
  
  \voiceOne <g b>4( <fis a> <e g>8[ <fis a>] |
  s2. |
  
  %61
    
  \voiceOne c'4 2 |
  g4 a g8[ a] |
  
  g4 a) ais |
  e4 fis fis8 d |
  
  fis4( g a) |
  b'2. |
   
  \oneVoice a8\mp a a a |
  s2 |
  
  a8 a gis4 |
  s2 |
  
  e8 e e4 e |
  s2. |
  
  %67
  
  dis2. |
  s2. |
  
  g8 fis g4. b,8 |
  s2. |
  
  c8 a g'2 |
  s2. |
  
  g8 a fis4 d |
  s2. |
  
  e2. |
  s2. |
  
  b2._"(закр.р.)"\p |
  s2. |
  
  %page 5 75
  
  c2. |
  s2. |
  
  g'8 fis e4 d |
  s2. |
  
  b2. |
  s2. |
  
  e2._"(закр.р.)" |
  s2. |
  
  cis4~8 r8 r4 |
  s2. |
  
  g'8 a fis4 d |
  s2. |
  
  \voiceOne e1 |
  b,8[( a c b] d[ c] a4) |
  
  e1 |
  b1_"(закр.р.)" |
  
  
}

altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice
  \altnotes
}

altvoiceii = \relative c' {
  \global
  \voiceTwo
  \autoBeamOff
  \altnotesii
}

tenorvoice = \relative c' {
  \global
  \oneVoice
  \dynamicUp
  \autoBeamOff
  g2.\pp_"(закр.р.)" |
  a |
  a |
  g |
  g |
  b |
  
  c |
  d |
  d |
  a4 gis2 |
  a2. |
  c |
  
  b |
  a |
  r4 r a |
  b2. |
  g2\p g4 |
  a2 a4 |
  
  a2 a4 |
  g2( a4) |
  g2 g4 |
  b2 b4 |
  c2 c4 |
  d2. |
  
  d2 e4 |
  e8 e e2 |
  e8 d c4 g |
  a2. |
  r4 b2_"(закр.р.)" |
  r4 a2 |
  
  r4 a_"(закр.р.)" a |
  b~ |
  2~ |
  2 |
  b8 b b4. b8 |
  b4 |
  
  b8 fis g fis |
  g a fis4 |
  a4. b8 c a |
  b4 |
  c c |
  c8 c c d c4 |
  
  b8 c g4 a-- |
  ais8[(-- b])-- |
  c4\f-- r4 r |
  r r8 a8\mp a4 |
  R2. |
  e2( g8[ fis] |
  
  a2 g4~ |
  g8[ fis] a[ b] c[ g] |
  a[ fis] fis4) r4 |
  r8 e( f[ e] d'[ b] |
  b[ c]) |
  r4 r8 fis,8( e'[ cis] |
  
  b4 a8 b4 c8) |
  b2\ff b4 |
  d4( c) b8[( c]) |
  c2 c4 |
  b2. |
  b2 b4 |
  
  d4( c) b8[( c]) |
  c2 c4 |
  d2. |
  d8\mp d d d |
  d d b4 |
  c8 c c4 c |
  
  c2. |
  r4 b2 |
  r4 a2 |
  r4 r a |
  g2. |
  r4 r g8\p fis |
  
  g4. b8 c g |
  g4 r4 g8 fis |
  fis g b2 |
  g2._"(закр.р.)" |
  g4~8 r8 r4 |
  g8 a fis4 fis |
  
  g1 |
  r8 gis8~ 2.
}

bassnotes = {
  e2._"(закр.р.)" |
  e |
  d |
  e |
  e |
  e |
  
  d |
  g, |
  g'4 fis2 |
  f4 e2 |
  a,2. |
  a'2 b,4 |
  
  g'8 fis g4. b,8 |
  c g' g2 |
  g8 a fis4 d |
  e2. |
  e2\p e4 |
  e2 e4 |
  
  d2 d4 |
  e2( b4) |
  e2 e4 |
  a,2 a4 |
  d2 d4 |
  g,( g' fis) |
  
  f( e) d |
  c2 a4 |
  a2 g'4 |
  f2( b,4) |
  g'8 fis g4. b,8 |
  \break c g' g2 |
  
  g8 a fis4 d |
  e |
  e8\mp d? fis e |
  g fis dis4 |
  fis8 e dis4. b8 |
  e4 |
  
  g,8 g g g |
  g g g4 |
  d'4. d8 d d |
  g,8 [( g']) |
  f4 f |
  e8 e e e a,4 |
  
  c8 c c4 c-- |
  c-- |
  b--\f r4 r8 b8\mp |
  c a a g' g4 |
  g8 a fis4\> d |
  c2.\! |
  
  b2. |
  a |
  g2 r4 |
  gis2. |
  a4 |
  ais2. |
  
  b2. |
  e2\ff e4 |
  a,2 a4 |
  d2 d4 |
  g,( g' fis) |
  e2 e4 |
  
  a,2 a4 |
  d2 d4 |
  g,( g' fis) |
  f8\mp f f f |
  e e e4 |
  a8 a a4 g |
  
  fis?2( b,4) |
  g'8 fis g4. b,8 |
  c a g'2 |
  g8 a fis4 d |
  
}
  
  
  \parallelMusic bassnotesi, bassnotesii {

e2 b4\p~ |
e2 e,4~ |

    b2. |
    e2. |

     c2. |
     e2. |
     
     d |
     e |
     
     e |
     e |
     
     g8 fis g4. b,8 |
     e2._"(закр.р.)" |
     
     cis8 g' g r8 r4|
     a4~ 8 r8 r r|
     
  
  \oneVoice g8 a fis4 d8[( b]) |
  s2. |
  
  c2.~( 8[ b]) |
  s1 |
  
  \voiceOne r8 b 8~2.|
  r8 e8~_"(закр.р.)"2.|
  
  
}



bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice
  \bassnotes
  << { \voiceOne \bassnotesi } \new Voice = "bassii" { \voiceTwo \bassnotesii } >>
}



lyricscores = \lyricmode {
  Жди ме -- ня _ толь -- ко о -- чень жди ко -- гда _
  жёл -- ты -- е до -- жди, жди, ко -- гда сне -- га ме -- тут, жди ко -- гда жа -- ра.
  Жди ко -- гда _
  
  пи -- сем _ _ жди ко -- гда _ всем, кто вме -- сте ждёт
  жди ме -- ня и я вер -- нусь, не же -- лай до -- бра _ _
  Пусть по -- ве -- рят сын и мать в_то, что нет ме -- ня
  
  пусть дру -- зья у -- ста -- нут ждать ся -- дут у ог -- ня вы -- пьют горь -- ко -- е ви -- но
  на по -- мин ду -- ши жди… од -- но А…
  
  _ _ Жди ме -- ня и я вер -- нусь всем смер -- тям на -- зло, кто не ждал ме --
  ня тот пусть ска -- жет: По -- ве -- зло. Не по -- нять не ждав -- шим им, как сре -- ди о --
  гня а а ме -- ня. Как ты вы -- жил
  
  бу -- дем знать мы с_то -- бой как ни -- кто 
  а…
  
}

lyricscorea = \lyricmode {
  _ и я вер -- нусь _ жди _ на -- во -- дят грусть
  _ _ _ _ _ сне -- га ме -- тут, жди ко -- гда жа -- ра
  _ _ вче -- ра Жди из даль -- них мест
  
  мест не при -- дёт жди уж на -- до -- ест всем, кто вме -- сте ждёт
  жди и я вер -- нусь не же -- лай до -- бра _ _
  _ по -- ра __ в_то, что нет ме -- ня
  
    пусть дру -- зья у -- ста -- нут ждать ся -- дут у ог -- ня вы -- пьют горь -- ко -- е ви -- но
  на по -- мин ду -- ши жди… и с_ни -- ми за -- од -- но вы -- пить не спе -- ши А…
  _ _ 
  А… _ 
  а… _ Не по -- нять не ждав -- шим им, как сре -- ди о --
  гня о -- жи -- да -- ни -- ем сво -- им ты спа -- сла ме -- ня
  _ _ толь -- ко мы с_то -- бой _ _ как ни -- кто дру --
  гой
  
}

lyricscoreaii = \lyricmode {
  _  _ даль -- них 
  на -- до -- ест _ _ _ _  
  _ _ _ _ _ _ _ _ по -- ве -- зло 
  а…
}

lyricscoret = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _ _ _ 
  _ _ вче -- ра жди из даль -- них
  
  мест при -- дёт жди уж на -- до -- ест кто ждёт
  жди и я вер -- нусь не же -- лай до -- бра _ _ 
  _ по -- ра __ в_то, что нет ме -- ня
  
  пусть дру -- зья у -- ста -- нут ждать, ся -- дут у ог -- ня, вы -- пьют горь -- ко -- е ви -- но
    на по -- мин ду -- ши жди… од -- но А…
    
  _ _ Жди ме -- ня вер -- нусь на -- зло кто не 
  ждал пусть по -- ве -- зло. Не по -- нять не жда -- вшим им, как сре -- ди о --
  гня а а ме -- ня. Как я
  
  вы -- жил бу -- дем знать толь -- ко мы с_то -- бой _ _ как ни -- кто дру --
  гой
  
  
  
}

lyricscoreb = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ 
  жди ко -- гда дру -- гих не ждут, по -- за -- быв вче -- ра. Жди из даль -- них
  
  мест при -- дёт, жди уж на -- до -- ест кто ждёт 
  жди и я вер -- нусь, до -- бра всем, кто зна -- ет на -- и -- зусть,
  что за -- быть по -- ра. Пусть по -- ве -- рят сын и мать в_то, что нет ме -- ня
  
  пусть дру -- зья у -- ста -- нут ждать, ся -- дут у ог -- ня, вы -- пьют горь -- ко -- е ви -- но
   на по -- мин ду -- ши жди… и с_ни -- ми за -- од -- но вы -- пить не спе -- ши 
   А… _ _ _ _ _
   
   _ Жди ме -- ня вер -- нусь на -- зло кто не
   ждёт пусть по -- ве -- зло не по -- нять не жда -- вшим им, как сре -- ди о --
   гня о -- жи -- да -- ни -- ем сво -- им ты спа -- сла ме -- ня у…
   _ _ _ про -- сто ты у -- ме -- ла ждать как ни -- кто дру --
   гой
   
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 25
    right-margin = 10
    bottom-margin = 25
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      
                  \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" {  \sopvoice }
        \new Voice  \sopvoiceii
      >> 
      
            \new Lyrics \lyricsto "soprano" { \lyricscores }
      
         \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
         \new Voice  = "alto" { \altvoice }
         \new Voice  = "altoii" { \altvoiceii}
      >> 
      
      
 
      \new Lyrics \lyricsto "alto" { \lyricscorea }
      \new Lyrics \lyricsto "altoii" { \lyricscoreaii }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
            \new Staff = "tenorstaff" \with {
        instrumentName =  "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
          \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
      >>
      
            \new Lyrics \lyricsto "tenor" { \lyricscoret }
      
            \new Staff = "bassstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
%        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
       \new Voice = "bass" { \clef bass \bassvoice }
 %      \new Voice  \bassvoiceii
      >>
            \new Lyrics \lyricsto "bass" { \lyricscoreb }
            
      
    >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
