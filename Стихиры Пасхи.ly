\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 26)

\header {
  title = "Стихиры Пасхи"
 % composer = "Composer"
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
con = { \co }
cof = \cadenzaOff
coff = { \cof \bar "|" }
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
  \squaremarks
  
  \key g \minor
  
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \mark \default
  \con <bes d>4 q q <a c> <g bes>2 r4 \cbr <bes d> q <c es> <d f>2 <bes d>4 q <c es>2( <bes d>4 <a c>) <bes d>( <a c>) <g bes>2   \cbr \abr
   <bes d>2 q r4 \cbr q <d f> q q q <c es>2 <bes d>4 q <a c>2( <bes d>) <c es>1\cbr \abr
   <g bes>4 q q q <a c> <bes d>2( <a c>4 <g bes>) <f a>1 \cbr \abr
   <g bes>4 <a c> <bes d>2. q4 q q q1 \cbar q4 q q <c es> <d f>2( <es g>) <d f>1 \cbr \abr
   q2 q4 q <c es>2( <bes d>4) q <a c>2 <bes d> <c es>1 \cbr \abr
   
   % page 2
   <g bes>4 q q <a c> <bes d>2( <a c>4) <g bes> <f a>1 \cbr \abr
   <g bes>2 q4 <a c> <bes d>2. q4 q1 \cbar q4 <c es> <d f>2( <es g>) <d f>1 \cbr \abr
   q4 q q q q q q <c es>2 <bes d>4 q <a c>2 <bes d>4 q <c es>1 \cbr \abr
   <bes d>2 q r4 q q q < c es> q <bes d> q < a c>2( <bes d>4 < a c>) <g bes>1 \cbr \abr 
    \mark \default
   <bes d>4 q q q q <c es> <d f>2 <bes d>4 q <c es>2( <bes d>4 <a c> <bes d> <a c>) <g bes>1 \cbr \abr
   
   % page 3
   <bes d>4 q q2 q q4 q q q q q <c es>2 <bes d>4 q <a c>2 <bes d> <c es>1 \cbr \abr
   <b d>4 q <c es>2. <a c>4 <bes d>2 q2 \cbar q4 q q2 q4 q\breve \cbr q4 \cbr \abr
   q <c es> q <bes d> q <a c>2( <bes d>) <c es>1 \cbar <b d>4 <c es>1 <d f>4 <c es> <bes d>1 \cbr \abr
   q4 q q q q q q <c es> <d f>2( <es g>) <d f>1 \cbr \abr
   q4 q2. q4 q q q q <c es>2 <bes d> \cbr <d f>4 q q q <c es> q <bes d> q <a c>2( <bes d>4 <a c>) <g bes>1 \cbr \abr
   
   % page 4
   \mark \default
   <bes d>4 q q q q q q q q q q q q q q \cbar \abr
   <c es> <d f>2 <bes d>4 q q q q q q <c es>2( <bes d>4 <a c> <bes d> <a c>) bes1 \cb \abr
   \con <bes d>4 q <c es>2. q4 <d f> <c es> <bes d>2 <c es>2. q4 <d f> <c es> <bes d>2 r4 \cbar \abr
   <b d>4 <c es>2. q4 q q <bes d><a c> <bes d>( <a c>) <g bes>1 \cbar \abr
   <bes d>4 q q2. q4 q2. q4 <a c>2. q4 q2. q4 <bes d> <a c> <g bes>2( <fis a>) <g bes>1 \cbar \abr
   
   % page 5
   <bes d>2 q1 q2 q4( <a c>) <g bes>( <a c> <bes d>2) <a c>1 \cbar q <bes d>2 <a c> <g bes> <fis! a> <g bes>1 \cbar \abr
   <bes d>4 q q q q q <c es> <d f>2. <bes d>4 q1 \cbar \abr
   <d f>4 q q q q <c es>2( <bes d>4) q <a c>2 <bes d> <c es>1 \cbar \abr
   <bes d>2 q q4 q <c es> q <bes d> q q q <a c>2 <bes d>4( <a c>) <g bes>1 \cb \abr
   \mark \default
   \con <bes d>4 q q q q q q q q q \cbar \abr
   
   % page 6
   <c es> <d f>2 <bes d>4 q q q q q q <c es>2( <bes d>4 <a c>) <bes d>( <a c>) <g bes>1 \cb \abr 
   \con \tempo "Медленнее" <bes d>4 q <a c>2 <g c> <a c> \cbar <bes d> q4 q q q8[( <a c>]) <g bes>[( <a c>] <bes d>4) <a c>2 \cbar \abr
   <bes d>4 q q q8[( <a c>]) <g bes>[( <a c>] <bes d>4) <a c>2 \cbar \abr
   <a c>2 q4 q <g c>2 q <a c> \cbar \abr
   <bes d>4 q q q q q q <a c> <g bes>8[( <a c>] <bes d>4) <a c>2 \cbar \abr
   
   % page 7
   <a c>2 <g c> <a c> \cbar <bes d>4 q q q q8[( <a c>]) <g bes>[( <a c>] <bes d>4) <a c>2 \cbr \abr
   <a c>4 q q <g c>2 q <a c> \cbar <bes d>4 q q q8[( <a c>]) <g bes>[( <a c>] <bes d>4) <a c>2 \cbr \abr
   <a c>4 q <g c>2 q <a c> \cbr \abr
   \cbr <bes d>4 q q q q \cbr q q q q8[( <a c>]) <g bes>[( <a c>] <bes d>4) <a c>2 \cbr \abr
   <a c>4 q <bes d> <a c> <g bes> \nat <f a> <e! c'>2 q <f a>1 \cbr \abr
   
   % page 8
   <bes d>4 q q q q q q q q q q q q \cbar \abr
   q q q q q q q <c es> <d f>2 <bes d>4 q <c es>2( <bes d>4 <a c>) <bes d>( <a c>) <g bes>1 \cbar \abr
   <b d>4 q <c es>2 <d f>4 <c es> <bes d>1 \cbar <b d>4 q q <c es>2. q4 <d f> <c es> <bes d>1 \cbr \abr
   <b d>4 <c es>2 q <bes d>4 <a c> <bes d>( <a c>) <g bes>1 \cbar <b d>4 <c es>2. q4 <bes d>2. \cbr \abr
   <bes d>4 q <c es> <d f>2 <c es>4 <b d> <c es>1 \cbar <b! d>4 <c es>2 q <bes d>4 <a c> <bes d> <a c> <g bes>1 \cbr \abr
   
   % page 9
   <b d>4 <c es>2 q4 q <bes d>4 <a c> <bes d>1 \cb \abr
    \con <b d>4^\markup\italic"3р." <c es>2. <b! d>4 <c es>2 q q q1 <bes d> \cbr \abr
   <b d>2 q4 q  <c es>2 <b d> <c es>1 \cbar \abr
   <c es>4 <bes d>2. q4 q q <c es>2 <bes d> <a c> <bes d>4 q <c es>1 \cof \bar "|."
   
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f4 f f f d2 r4 f f f bes2 f4 f f1 f2 d
  f2 f r4 f bes bes bes bes f2 f4 f f2( g) g1
  d4 d d d d f2.( e4) c1
  d4 f f2. f4 f f f1 f4 f f f bes1 bes
  bes2 bes4 bes f2. f4 f2 g g1
  
  % page 2
  d4 d d f f2. e!4 c1
  d2 d4 f f2. f4 f1 f4 f bes1 bes
  bes4 bes bes bes bes bes bes f2 f4 f f2 g4 g g1
  f2 f r4 f f f f f f f f1 d
  f4 f f f f f bes2 f4 f f1~ f2 d1
  
  % page 3
  f4 f f2 f f4 f f f f f f2 f4 f f2 g g1
  g4 g g2. f4 f2 f f4 f f2 f4 f\breve f4
  f4 f f f f f2( g) g1 g4 g1 <f bes>4 <f a> f1
  f4 f f f f f f f bes1 bes
  bes4 bes2. bes4 bes bes bes bes f2 f bes4 bes bes bes f f f f f1 d
  
  % page 4
  f4 f f f f f f f f f f f f f f
  f bes2 f4 f f f f f f f1~ f2 g1
  g4 g g2. g4 f f f2 f2. f4 f f f2 r4
  g4 g2. g4 f f f f f2 d1
  f4 f f2. f4 f2. f4 f2. f4 f2. f4 f f d1 d
  
  % page 5
  f?2 f1 f2 f d4( f2.) f1 f f2 \nat es d d d1
  f?4 f f f f f f bes2. f4 f1
  bes4 bes bes bes bes f2. f4 f2 g g1
  f2 f f4 f f f f f f f f2 f d1
  f4 f f f f f f f f f
  
  % page 6
  f4 bes2 f4 f f f f f f f1 f2 d1
  f4 f f2 e f f f4 f f f d8[( f] f4) f2
  f4 f f f d8[( f] f4) f2
  f2 f4 f e!2 e f
  f4 f f f f f f f d8[( f] f4) f2
  
  % page 7
  f2 e! f f4 f f f f d8[( f] f4) f2
  f4 f f e!2 e f f4 f f f d8[( f] f4) f2
  f4 f e!2 e f
  f4 f f f f f f f f d8[( f] f4) f2
  f4 f f f c c c2 c c1
  
  % page 8
  f4 f f f f f f f f f f f f
  f f f f f f f f bes2 f4 f f1 f2 d1
  g4 g g2 <f bes!>4 <f a> f1 g4 g g g2. g4 <f bes!> <f a> f1
  g4 g2 f f4 f f2 d1 g4 g2. f4 f2.
  f4 f f bes2 g4 g g1 g4 g2 f f4 f f f d1
  
  % page 9
  g4 g2 f4 f f f g1
  g4 g2. g4 g2 g g f1 f
  g2 g4 g g2 g g1
  f4 f2. f4 f f f2 f f g4 g g1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c4\mf c\mp c\p c
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  bes4 bes bes f g2 r4 bes bes bes bes2 bes4 bes a2( bes4 f) bes( f) g2
  bes2 bes r4 <bes bes,> q q q q <a a,>2 <bes bes,>4 q f2( <g d>) <c c,>1
  g4 g g g f <bes bes,>2( <c c,>4 c,) f1
  g4 f <bes bes,>2. q4 q q q1 <bes>4 q q q q2( es,4 g) bes1
  <bes bes,>2 q4 q <a a,>2( <bes bes,>4) q f2 <g d> <c c,>1
  
  % page 2
  g4 g g f <bes bes,>2( <c c,>4) c, f1
  g2 g4 f <bes bes,>2. q4 q1 bes4 bes bes2( es,4 g) bes1
  <bes bes,>4 q q q q q q <a a,>2 <bes bes,>4 q f2 <g d>4 q <c c,>1
  bes2 bes r4 bes bes bes a a bes bes f2( bes4 f) g1
  <bes>4 q q q q q q2 q4 q a2( bes4 f bes f) g1
  
  % page 3
  <bes bes,>4 q q2 q q4 q q q q q <a a,>2 <bes bes,>4 q f2 <g d> <c c,>1
  g4 g <c c,>2. f,4 <bes bes,>2 q q4 q q2 q4 q\breve q4
  q4 <a a,> q <bes bes,> q f2( <g d>) <c c,>1 g4 <c c,>1 f,4 f <bes bes,>1
  <bes>4 q q q q q q q q2( es,4 g) bes1
  <bes>4 q2. q4 q q q q a2 <bes>2 q4 q q q a4 a bes bes f2( bes4 f) g1
  
  % page 4
  <bes>4 q q q q q q q q q q q q q q 
  q q2 q4 q q q q q q a2( bes4 f bes f) g1
  g4 g <c c,>2. q4 f,4 f <bes bes,>2 f2. f4 f f <bes bes,>2 r4
  g4 <c c,>2. q4 <c a a,>4 q <bes bes,> f bes( f) g1
  bes4 bes bes2. bes4 bes2. bes4 f2. f4 f2. f4 bes f g2( d) g1
  
  % page 5
  bes2 bes1 bes2 bes4( f) g( f bes2) f1 f bes,2 c d d g1
  <bes>4 q q q q q q q2. q4 q1
  q4 q q q q a2( bes4) bes f2 <g d> <c c,>1
  <bes>2 q q4 q a a bes bes bes bes f2 bes4( f) g1
  <bes>4 q q q q q q q q q
  
  % page 6
  <bes>4 q2 q4 q q q q q q a2( bes4 f) bes( f) g1
  bes4 bes f2 <c c'> f bes bes4 bes bes bes8[( f]) g[( f] bes4) f2
  bes4 bes bes bes8[( f]) g[( f] bes4) f2
  f2 f4 <f a> <c c'>2 c f
  <bes>4 q q q q q q f g8[( f] bes4) f2
  
  % page 7
  f4( <f a>) <c c'>2 f bes4 bes bes bes bes8[( f]) g[( f] bes4) f2
  f4 f <f a> <c c'>2 c f bes4 bes bes bes8[( f]) g[( f] bes4) f2
  f4 <f a> <c c'>2 c f
  <bes>4 q q q q q q q q8[( f]) g[( f] bes4) f2
  f4 f bes f e f c2 c f1
  
  % page 8
  <bes>4 q q q q q q q q q q q q 
  q q q q q q q q q2 q4 q a2( bes4 f) bes( f) g1
  g4 g <c c,>2 f,4 f <bes bes,>1 g4 g g <c c,>2. q4 f,4 f <bes bes,>1
  g4 c2 a bes4 f bes( f) g1 g4 <c c,>2. f,4 <bes bes,>2.
  bes4 bes bes bes2 c4 g <c c,>1 g4 c2 a bes4 f bes f g1
  
  % page 9
  g4 c2 a4 a bes f g1
  g4 c2. g4 c2 c c f,1 bes
  g2 g4 g c2 g c1
  a4 bes2. bes4 bes bes a2 bes f g4 g c1
  
}


ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
  \override Lyrics.LyricText #'font-series = #'bold
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
  \revert Lyrics.LyricText #'font-series
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
lyricscore = \lyricmode {
  
  \ijLyrics Да во -- скре -- снет Бог, и ра -- сто -- ча -- тся вра -- зи́ __ Е -- го. \normalLyrics
  
  Па -- сха свя -- ще -- нна -- я нам днесь по -- ка -- за -- ся;
  Па -- сха но -- ва, свя -- та -- я;
  Па -- сха та -- и -- нстве -- нна -- я;
  Па -- сха все -- че -- стна -- я.
  Па -- сха Хри -- стос И -- зба -- ви -- тель;
  Па -- сха не -- по -- ро -- чна -- я;
  Па -- сха ве -- ли -- ка -- я;
  Па -- сха ве -- рных.
  Па -- сха две -- ри ра -- йски -- я нам о -- тве -- рза -- ю -- ща -- я. 
  Па -- сха всех о -- свя -- ща -- ю -- ща -- я ве -- рных.
  
  \ijLyrics Я -- ко и -- сче -- за -- ет дым, да и -- сче -- знут. \normalLyrics
  
  При -- и -- ди -- те от ви -- де -- ни -- я же -- ны бла -- го -- ве -- стни -- цы,
  и Си -- о -- ну рцы -- те:
  при -- и -- ми от  нас_радости_благовещения
  Во -- скре -- се -- ни -- я Хри -- сто -- ва:
  кра -- су -- йся, ли -- куй и ра -- ду -- йся И -- е -- ру -- са -- ли -- ме,
  Ца -- ря Хри -- ста у -- зрев из гро -- ба,
  я -- ко же -- ни -- ха про -- и -- схо -- дя -- ща. 
  
  \ijLyrics Та -- ко да по -- ги -- бнут гре -- шни -- цы от Ли -- ца Бо -- жи -- я,
  а пра -- ве -- дни -- цы да во -- зве -- се -- ля -- тся! \normalLyrics 
  
  Ми -- ро -- но -- си -- цы же -- ны, ут -- ру глу -- бо -- ку,
  пре -- дста -- вша гро -- бу Жи -- во -- да -- вца,
  о -- бре -- то -- ша А -- нге -- ла, на ка -- ме -- ни се -- дя -- ща,
  и той про -- ве -- щав __ им, си -- це гла -- го -- ла -- ше:
  что и -- ще -- те Жи -- ва -- го с_ме -- ртвы -- ми;
  что пла -- че -- те Не -- тле -- нна -- го во тли?
  Ше -- дше, про -- по -- ве -- ди -- те у -- че -- ни -- ком Е -- го.
  
  \ijLyrics Сей день, е -- го же со -- тво -- ри Го -- сподь, 
  во -- зра -- ду -- е -- мся и во -- зве -- се -- ли -- мся в_онь. \normalLyrics
  
  Па -- сха кра -- сна --  я,
  Па -- сха, Го -- спо -- дня Па -- сха!
  Па -- сха все -- че -- стна -- я нам во -- зси -- я.
  Па -- сха, ра -- до -- сти -- ю друг дру -- га о --  бы -- мем.
  О Па -- сха! И -- зба -- вле -- ни -- е ско -- рби,
  и -- бо из гро -- ба днесь,
  я -- ко от че -- рто --  га во -- зси -- яв Хри -- стос,
  же -- ны ра -- до -- сти и -- спо -- лни, гла -- го -- ля:
  про -- по -- ве -- ди -- те а -- по -- сто -- лом.
  
  \override LyricText.self-alignment-X = #LEFT
  \ijLyrics Сла -- ва От -- цу, и Сы -- ну, и Свя -- то -- му Ду -- ху, и ны -- не и при -- сно, 
  и во ве -- ки ве -- ков. А -- минь. \normalLyrics
  \revert LyricText.self-alignment-X
  
  Во -- скре -- се -- ни -- я день, 
  и про -- све -- ти -- мся то -- рже -- ством,
  и друг дру -- га о -- бы -- мем.
  Рцем бра -- ти -- е, и не -- на -- ви -- дя -- щим нас,
  про -- стим вся Во -- скре -- се -- ни -- ем, и та -- ко во -- зо -- пи -- им:
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
  
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  и су -- щим во гро -- бех жи -- вот да -- ро -- вав.
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 20
    right-margin = 15
    bottom-margin = 30
    indent = 0
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
 %       instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
  %      shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
   %     instrumentName = \markup { \right-column { "Тенор" "Бас" } }
    %    shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
 %       \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
      >>
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
        %        \RemoveAllEmptyStaves
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 2=90
    }
  }
}
