\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  dedication = "Молодёжному камерному хору Санкт-Петербурга"
  subtitle = "(три стихотворения Марины Цветаевой)"
  title = "ПАЛО ПРЕНИЖЕ ВОЛН"
  composer = "Сергей Екимов"
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


tempoeight = {
    \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note {8} #1
      " = "
      \smaller \general-align #Y #DOWN \note {8} #1
    }
    }
}


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
  \squaremarks
  \autoBeamOff
  
  \key c \major
}

\parallelMusic sopranoi, sopranoii {
  \time 12/8 \oneVoice R1. |
  s |
  
  \time 8/8 d4\p e8 f e f d4 |
  s1 |
  
 \time 7/8 f8 e f g4 f \abr | 
 s8*7 |
 
 \time 8/8 f8 e f e4 f8 d4~ |
 s8*8 |
 
 \time 7/8 4.~ 2 |
 s8*7 |
 
 \mark 1
 \time 8/8 f8 e f g4 a8 f4 \abr | 
 s8*8 |
 
 \time 7/8 a8 g f e4 f |
 s8*7 |
 
 \time 8/8 \voiceOne f8 g f e4 f8 d4 |
 f8 g f e4 f8~ 4 |
 
 \time 7/8 f8 g f e4 d |
 f8 e f e4 d \abr | 
 
 %page 2
 \mark 2
 \time 8/8 f8 e f g4 a8 f4 |
 s8*8 |
 
 \time 7/8 a8 g f e4 f |
 s8*7 |
 
 \time 8/8 f8 e f e4 f8 d4 \abr |
 f8 e f e4 f8~4 |
 
 \time 7/8 f8 g f e4 d |
 d8 e d e4 d |
 
 \mark 3
 \time 8/8 f8 e f g4 a8 f4 |
 f8 e f e4 cis8 f4 |
 
 \time 7/8 f8 e f g4 a \abr |
 f8 e f g4 f |
 
 \time 8/8 a8^\markup\italic"espress." g8 a b4 e,8 c'4 |
 a8 g a a[( gis]) gis b[( a]) |
 
 \time 7/8 c8 b c d4 e |
 a8 gis a c[( b]) c4 |
 
 \mark 4
 \time 8/8 e8\ff dis e fis8. gis8. e4 \abr |
 cis8 cis cis cis8. cis8. cis4 |
 
 %page 3
 \time 7/8 a,4.\f b4 b |
 gis4. fis4 gis |
 
 \time 8/8
 e4.~ <e dis> dis,4 |
 b4. ais a4 |
 
 \time 7/8
 b'4 8 cis4 dis  \abr |
 b8 ais b b[( ais]) b4 |
 
 \mark 5
 \time 8/8 es8 d es f8. g8. es4 |
 c8 c c c8. c8. c4 |
 
 \time 7/8 g8 g4 g g |
 g'8 f es d4 es |
 
 \time 8/8 es,1\mf |
 es,4. d4.~4 |
 
 \time 7/8  es8 f es g4 es \break |
  c8 d c c4 es4 |
 
 \mark 6
 \time 8/8   \change Staff = "sopranoi"
 << \new Voice = "sopiii" {  \voiceOne es'1 \time 7/8 es4.~ 4 es } { \voiceTwo es4. d4.~4 es8 d d c4 c } >> |
\change Staff = "sopranoii" \oneVoice es'4. d4. c4 es8 d c d4 es |
 
 \time 8/8 \oneVoice es,1 |
 \oneVoice es,4. d4 es8~4 |
 
 \time 7/8 es8 d es \breathe f4 g \breathe \break |
 es8 d es \breathe f4 g \breathe |
 
 \mark 7
 \change Staff = "soprano" \time 8/8 \voiceOne g8^\markup\italic"dim." fis g a8. b g4 |
 \change Staff = "soprano"  \voiceTwo g8 fis g a8. a g4 |
 
  \time 7/8  b8 a g fis4 g |
   g8 fis e fis4 d |
 
 \tempo "rall." \time 8/8 g8\mp^\markup\italic"dim."  a4~4.~4\fermata |
 g8 a g fis4.~4\fermata |
 
 \time 6/8 \tempo "a tempo" r2. |
 r2. |
 
 \time 5/8
 \oneVoice g8\p^"unis." a g fis4 \abr |
 s8*5 |
 
%page 5
\time 9/8 e2.\>~4. \break |
s2. s4. |

\mark 8
\time 8/8 e4\pp^\markup\italic"sempre" fis8 g fis g e4 |
s8*8 |

\time 7/8 g8 fis g a4 g \abr |
s8*7 |

\time 8/8 g8 fis g fis4 g8^\markup\italic"poco a poco dim." e4~ |
s8*8 |

\time 7/8 4.~4~4~ |
s8*7 |

\time 5/8 \tempo "rall poco a poco" e4.~4~ |
s8*5 |

4.~4~  \abr|
s8*5 |

\time 8/8 4.~4.~4 |
s8*8 |

\tempoeight \time 3/4 e4-- fis-- g-- |
s2. |

\tempoeight \time 12/8 fis2.( b) |
fis1. |


e,1.\fermata^\markup\italic"morendo"_"е." 
 
     
}

\parallelMusic  alti, altii {
  \oneVoice d1.\p~ |
  s1. |
  
  1~ |
  s1 |
  
  4.~2~ |
  s8*7 |
  
  1 |
  s8*8 |
  
  d8 e f e4 d |
  s8*7 |
  
  f8 e f e4 f8 d4 |
  s8*8 |
  
  f8 e d e4 d |
  s8*7 |
  
  d8 e d e4.~4 |
  s8*8 |
  
  d8 d d e4 d |
  s8*7 |
  
  % page 2
  d4. cis4 f8 d4 |
  s8*8 |
  
  f8 e d c4 d |
  s8*7 |
  
 \voiceOne d4 d8 e4 d8~4 |
  \voiceTwo d4 d8 d8( e4~4) |
  
  bes8 bes bes a4 d |
  bes8 bes bes a4 d |
  
  d4. 4 8 4 |
  d4. bes4 8 a4 |
  
  \oneVoice d8 cis d e4 c4 |
  s8*7 |
  
  f8^\markup\italic"espress." e f e4 b'8 e,4 |
  s8*8 |
  
  f8 a f g4 4 |
  s8*7 |
  
  \voiceOne gis8\ff gis gis gis8. fis!8. e4 |
  \voiceTwo cis8 cis cis dis8. gis!8. gis4 |
  
  % page 3
  
  \oneVoice gis8\f fis e e[( dis]) fis[( e]) |
  s8*7 |
  
  gis8 fis gis gis8. fisis8. b4 |
  s8*8 |
  
  \voiceOne gis8 fis gis fis4 fis  \textMark "eng." |
  \voiceTwo gis8 fis gis fis4 b, |
  
  g8 g g g8. d'8. g,4 |
  c8 c c c8. d8. c4 |
  
  es'8 d c c4 c |
  g'8 as g d'4 es |
  
  \oneVoice es,8\ff^\markup\italic"espress." g, \tuplet 3/2 {es'16[( f es]) } d8[( g,]) \tuplet 3/2 { d'16[( es d]) } c8[( g]) |
  s8*8 |
  
  as4. d4 c |
  as,,4. g4 c |
  
  \change Staff = "alti" \oneVoice es4. es8.[( f]) g4 |
  \change Staff = "altii" \oneVoice es4. es8.[( f]) g4 |
  
   << \new Voice = "altiii" {  \voiceOne g4. g4 g } { \voiceTwo g8 f f f4 g } >> |
 g8 f es   << {f4 es} \new Voice { \hideNotes f4\showStaffSwitch  \change Staff = "alti" g } >> |
 
  \oneVoice es4. d~ 4 |
  \oneVoice es4. d c4 |
  
  c8 d c \breathe d4 es \breathe |
  c8 g c \breathe d4 es \breathe |
  
  \change Staff = "alto" \voiceOne g8^\markup\italic"dim." fis g fis8. fis8. e4 |
  \change Staff = "alto" \voiceTwo e4. 4.~4 |
  
  \oneVoice e8 e e e4 a, |
   s8*7 |
  
  \voiceOne e'4.\mp^\markup\italic"dim." fis8[( g a]) \acciaccatura {e16[( d] } e4)\fermata |
  e4. fis8[( g~ g])~ g4\fermata |
  
  r2. |
  r2. |
  
  \oneVoice e8\p^"unis." fis e e[( d]) |
  s8*5 |
  
  e2.\>~4.~|
  s8*9 |
  
  e1\pp~^\markup\italic"sempre"_"Мм…" |
  s8*8 |
  
  4.~ 4~ 4~ |
  s8*7 |
  
  1 |
  s8*8 |
  
  e8^\markup\italic"poco a poco dim." fis g fis4 e~ |
  s8*7 |
  
  4.~4 |
  s8*5 |
  
  e8 fis g fis4 |
  s8*5 |
  
  e4.~4.~4 |
  s8*8 |
  
  \oneVoice e2.~ |
  s4*3 |
  
  <e~ b>1._"дво -" |
  s1. |
  
  e1.\fermata^\markup\italic"morendo"_"е." |
  s1.
  
    
}

\parallelMusic tenor, barit, bass {
  \oneVoice R1. |
  s1. |
  \oneVoice d1.\p~ |
  

  d4\p e8 f e f d4 |
  s8*8 |
  1~ |
  
  f8 e f g4 f |
  s8*7 |
  4.~ 2~ |
  
  f8 e f e4 f8 d4~ |
  s8*8 |
  1 |
  
  4.~2 |
  s8*7 |
  bes8 c d c4 d |
  
  d'1~ |
  s8*8 |
  a'1 |
  
  4.~4 a4 |
  \voiceOne bes4. a4 d, |
  \voiceTwo g4. a4 d, |
  
  f4.~ 4.~ 4 |
  d'4. c4.~ 4 |
  d4. c4. bes4 |
  
  des4. f4~4 |
  s8*7 |
  \oneVoice g4. a4 d |
  
}



sopvoicei = \relative c' {
  \global
    \tempo 4.=68-70
    \dynamicUp
  \sopranoi
}

sopvoiceii = \relative c' {
  \global
  \voiceTwo \sopranoii
}


altvoicei = \relative c' {
  \global
  \dynamicUp
  \alti
}

altvoiceii = \relative c' {
  \global
  \altii
}


tenorvoice = \relative c {
  \global
  \dynamicUp
  \oneVoice R1. |
  d4\p e8 f e f d4 |
  f8 e f g4 f |
  
  f8 e f e4 f8 d4~ |
  4.~2 |
  d'1~ |
  
  4.~4 a4 |
  d4.~ 4.~ 4 |
  bes4. d4~4 |
  
  %page 2
  a4. bes4 cis8 a4 |
  bes4 8 a4 f |
  a4 8 a4.~ 4~ |
  
  4.~4~4 |
  8 g a cis4 f8 a,4 |
  a8 8 8 c4 a |
  
  a8^\markup\italic"espress." 8 8 8[( gis]) gis c4 |
  e8 f e d4 d8[( e]) |
  e8\ff dis e fis8. dis8. e4 |
  
  %page 3
  e8\f dis cis b4 dis |
  e8 dis e dis8. dis b4 |
  e8 dis e e4 dis |
  
  es8 d es f8. f8. es4 |
  as8 as as g4 g |
  es4.\mp( d) c4 |
  
  g4. g4 g |
  es'8 d es f8. g8. es4 |
  as,4. g4 c |
  
  es8 g, es' d[( es]) f \acciaccatura f8 c4 |
  g8 g g \breathe bes4 bes \breathe |
  b4.^\markup\italic"dim." b4.~4 |
  
  c8 c c a4 b |
  << { \voiceOne b4.\mp^\markup\italic"dim." e d4\fermata } \new Voice { \voiceTwo b4. e g,4 } >>
  \oneVoice r2. |
  c4.\p^"unis." b4 |
  
  e,2.\>~4. |
  e4\pp^\markup\italic"sempre" fis8 g fis g e4 |
  g8 fis g a4 g |
  
  g8 fis g fis4 g8^\markup\italic "poco a poco dim." e4~ |
  4.~4~4~ |
  4.~4~ |
  4.~4~ |
  4.~4.~4~ |
  2. |
  b'2.( dis,2.) |
  e1.\fermata^\markup\italic"morendo"
  
  \bar "|."
  
  
  
}

\parallelMusic baritnotes, bassnotes {
  
    s1. |
    \oneVoice d1.\p~ |

  s8*8 |
    1~ |

  s8*7 |
    4.~ 2~ |

  
  s8*8 |
    1 |

  s8*7 |
    bes8 c d c4 d |

  s8*8 |
    a'1 |

  

  \voiceOne bes'4. a4 d, |
    \voiceTwo g4. a4 d, |

  d'4. c4.~ 4 |
  d'4. c4. bes4 |

  s8*7 |
  \oneVoice g4. a4 d |

  %page 2
  s8*8 |
  d,4.~4.~4 |
  
  \voiceOne d,4 8 e4 d |
  \voiceTwo g,4 8 a4 d |
  
  s8*8 |
  \oneVoice d4. c bes4 |
  
  \voiceOne d4. e4 d |
  \voiceTwo g4. a4 d |
  
  s8*8 |
  \oneVoice d4. 4 8 4 |
  
  s8*5 \voiceOne c4 |
  d8 bes d c4 \voiceTwo f, |
  
  s8*5 e8 4 |
  f'8^\markup\italic"espress." f f b4 e,8 a,4 |
  
  c'8 c c a4 g |
  d8 d d g4 c, |
  
  gis8\ff gis gis gis8. gis8. gis4 |
  cis8 bis cis dis8. bis8. cis4 |
  
  %page 3
  fis4. fis4 e |
  fis4. b,4 e |
  
  b'4. ais4. a8[( gis]) |
  e4. dis4. gis,4 |
  
  b4 b8 b4 fis |
  e'4 e8 fis4 b, |
  
  g8 g g g8. g8. g4 |
  c8 b c d8. b8. c4 |
  
  es'8 es es d4 es4 |
  f8 f f g4 c |
  
  g,1\mf |
  c,4.( bes) as4 |
  
  as4. g4 c, |
  f4. g4 c |
  
  g'1 |
  c8 b! c d8. b c4 |
  
  es'4. d4 g, |
  f,4. g4 c |
  
  g1 |
  c4. bes as4 |
  
  s8*7 |
  \oneVoice c8 g c \breathe bes4 es \breathe |
  
  s8*8 |
  e8^\markup\italic"dim." dis e fis8. dis e4 |
  
  \voiceOne e8 e e d4 e |
  \voiceTwo a,8 a a d4 g, |
  
  e4.\mp^\markup\italic"dim." b' b4\fermata |
  e'4. d c4\fermata |
  
  r2.|
  r2.|
  
  e,4.\p b4 |
  a4. b4 |
  
  s8*9 |
  \oneVoice e2.\>~4.~ |
  
  s8*8 |
  e1\pp^\markup\italic "sempre"~_"Мм…" |
  
  s8*7 |
  e4.~ 4~ 4~ |
  
  s8*8 |
  e1 |
  
  s8*7 |
  c8^\markup\italic"poco a poco dim." d e d4 e4~ |
  
  s8*5 |
  e4.~ 4 |
  
  s8*5 |
  c8 d e d4 |
  
  s8*8 |
  e4.~4.~4 |
  
  s4*3 |
  e4-- d-- c-- |
  
  s8*12 |
  b1. |
  
  s8*12 |
  <e e,>1.\fermata^\markup\italic"morendo" |
  
  
  
  
  
  
}

barit = \relative c {
  \global
  \dynamicUp
  \baritnotes
}

bass = \relative c {
  \global
  \dynamicUp
  \bassnotes 
}

longrest = { s1*40 }

lyricscore = \lyricmode {
  score bas bas
}

lyricsopup = \lyricmode {
  \repeat unfold 32 _
  пла -- щом
  \repeat unfold 20 _
  двой -- ной 
  \repeat unfold 36 _
  плащ… _ вздо -- хом под -- нят.
  _ _ _ _ _ _ 
  мо -- лит… роп -- щет… О…
  _ _ _ _ _ Пра…
  
  _ ды… _ _ _  ни.
  
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ На зо...

}

lyricsopdown = \lyricmode {
  Па -- ло пре -- ни -- же волн бре -- мя днев -- но -- е.
  Ти -- хо взош -- ли на холм Тес -- но пле -- чо с_пле -- чом
  вста -- ли в_мол -- чань -- е. Два под од -- ним пла… _ хо -- дят ды -- хань -- я.
  
  Завт -- раш -- них спя -- щих войн вождь и вче -- раш -- них мол -- ча сто -- ят дво… _
  чёр -- но -- ю баш -- ней. Зми -- я муд -- рей сто -- ят, го -- лу -- бя крот -- че.
  От -- че! Возь -- ми на -- зад, в_жизнь сво -- ю, От -- че! Че -- рез всё не -- бо дым
  
  Гос -- под -- них, \set associatedVoice = "sopranoii"  плащ над ним вздо -- хом при -- под -- нят.
  Рев -- ность -- ю взор разъ -- ят, мо -- лит и роп -- щет: От -- че!
  в_ночь сво -- ю, От -- че!»
  Празд -- ну… _ ды -- шат пус -- ты -- ни.
  
  \set associatedVoice = "soprano"  Спе… па -- да -- ет: Сы -- не! Смолк -- ло в_сво -- ём хле -- ву
  ста -- до люд -- ско -- е. \set associatedVoice = "sopranoii" На зо -- ло -- \set associatedVoice = "soprano" том… дво -- е в_по -- ко --
  е. Па -- ло пре -- ни -- же волн бре -- мя днев -- но -- е,
  ти -- хо взош -- ли на холм
  веч -- ны -- е дво_-
}

lyricsopi = \lyricmode {
  bas bas bas
}

lyricsopii = \lyricmode {
  \repeat unfold 72 _
  _ _ _ _ _
  Празд -- ну -- я… ды -- шат пус -- ты -- ни.
  Спе -- лый плод па -- да -- ет: Сы -- не! _ _ _ _ _ _
  
}

lyricalt = \lyricmode {
  Мм… веч -- ны -- е дво -- е. Тес -- но пле -- чо с_пле -- чом
  вста -- ли в_мол -- чань -- е. Два под од -- ним… хо -- дят ды -- хань -- я.
  Мм… спя -- щих войн вождь и вче -- раш -- них Мм… сто -- ят
  _ чёр -- но -- ю баш -- ней. Зми -- я сто -- ят, го -- лу -- бя крот -- че.
  От -- че! Возь -- ми на -- зад, в_жизнь сво -- ю, От -- че! Че -- рез всё не -- бо дым
  
  во -- инств Гос -- под -- них, бо -- рет -- ся плащ, двой -- ным вздо -- хом при -- под -- нят.
  Рев -- ность -- ю взор разъ -- ят, мо -- лит и роп -- щет: «От -- че, возь -- ми в_за -- кат,
  в_ночь… От -- че! Празд -- ну --  я… пу -- _ _ сты -- ни.
  
  Спе -- лый… па -- да -- ет: Сы -- не! Смолк -- ло в_сво -- ём хле -- ву
  ста -- до люд -- ско -- е. На хол -- му дво -- е в_по -- ко -- е.
  веч -- ны -- е дво -- е… веч -- ны -- е дво -- е…
}

lyricalti = \lyricmode {
  \repeat unfold 109 _
  ды -- шат пус -- ты -- ни.
}

lyricaltii = \lyricmode {
  
  \repeat unfold 34 _
  _ _ _ Празд -- ну -- я… ды -- шат пус -- ты -- ни
  Спе -- лый плод па -- да -- ет: Сы -- не! Смолк -- ло…
}

lyrictenor = \lyricmode {
  Па -- ло пре -- ни -- же волн бре -- мя днев -- но -- е.
  Ти -- хо взош -- ли на холм Мм… 
  _ _ _ _
  Мм… спя -- щих войн вождь вче -- раш -- них Мм… сто -- ят
  Зми -- я муд -- рей сто -- ят, го -- лу -- бя крот -- че.
  От -- че! Возь -- ми на -- зад, в_жизнь сво -- ю, От -- че! Че -- рез всё не -- бо дым
  во -- инств Гос -- под -- них, бо -- рет -- ся плащ, двой -- ным вздо -- хом при -- под -- нят.
  Рев -- ность -- ю взор разъ -- ят, мо -- лит и роп -- щет: От -- че!
  в_ночь… От -- че! Празд -- ну -- я но -- чи вход, пу -- сты -- ни.
  
  Тяж -- ко, как спе -- лый плод, па -- да -- ет: Сы -- не! Смол -- ло…
  ста -- до люд -- ско -- е. На хол -- му в_по -- ко е.
  
  Па -- ло пре -- ни -- же волн бре -- мя днев -- но -- е,
  ти -- хо взош -- ли на холм дво -- е.
}

lyricbarr = \lyricmode {
  \repeat unfold 47 _
  О…
  _ _ _ Пра…
  
  _ _ _ Спе…
}

lyricbass = \lyricmode {
  Мм… веч -- ны -- е дво -- е.
  Мм…
  _ _ _ _ _ _ _ _ _ 
  Мм… вождь вче -- раш -- них 
  Мм… _ _ _
  баш -- ней. Зми -- я сто -- ят, го -- лу -- бя крот -- че
  От -- че! Возь -- ми на -- зад, в_жизнь сво -- ю, От -- че! Че -- рез всё не -- бо дым
  Гос -- под -- них, плащ над ним вздо -- хом под -- нят.
  Рев -- ностью -- ю взор разъ -- ят, мо -- лит и роп -- щет: От -- че!
  в_ночь… От -- че! Празд -- ну -- я но -- чи вход, пу -- сты -- ни.
  
  Спе -- лый плод, па -- да -- ет: Сы -- не! Смолк -- ло в_сво -- ём хле -- ву
  ста -- до люд -- ско -- е. На хол -- му в_по -- ко --
  е.
  веч -- ны -- е дво -- е…
  веч -- ны -- е дво -- е…
  веч -- ны -- е дво -- е.
}
\include "articulate.ly"

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 30
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "soprano" \with {  instrumentName = "Сопрано" shortInstrumentName = "С" midiInstrument = "voice oohs"  }
      << \new Voice = "soprano" { \sopvoicei } 
         \new Voice = "sopranoii" { \sopvoiceii } 
      >>
      
   %   \new Lyrics \with {alignAboveContext = "soprano"} \lyricsto "soprano" { \lyricsopup }
  %    \new Lyrics \lyricsto "soprano" { \lyricsopdown }
      
      \new ChoirStaff = "soprano" \with {  instrumentName = "C" shortInstrumentName = "С"  midiInstrument = "voice oohs" }
      <<
       \new Staff = "sopranoi" \with { instrumentName = "I"   shortInstrumentName = "I"  } 
       {  \new Voice = "sopranoup" { \voiceOne \longrest } }
       \new Lyrics  \lyricsto "soprano" { \lyricsopup }
        \new Lyrics \lyricsto "soprano" { \lyricsopdown }
      \new Staff = "sopranoii" \with { instrumentName = "II"   shortInstrumentName = "II"  } 
       {  \new Voice = "sopranodown" { \voiceTwo \longrest } }
        \new Lyrics \lyricsto "sopranoii" { \lyricsopii }
      >>
      
      \new Staff = "alto" \with {  instrumentName = "Альт" shortInstrumentName = "А" midiInstrument = "voice oohs"  }
     <<  \new Voice  = "alto" { \altvoicei } 
         \new Voice = "altoii" { \altvoiceii }
     >>
     
     %\new Lyrics \lyricsto "alto" { \lyricalt }
      
      \new ChoirStaff = "alto" \with {  instrumentName = "А" shortInstrumentName = "А"  midiInstrument = "voice oohs" } 
      <<
       \new Staff = "alti" \with { instrumentName = "I"   shortInstrumentName = "I"   midiInstrument = "voice oohs"  } 
       {  \new Voice = "altup" { \voiceOne \voiceOne \longrest } }
       \new Lyrics \lyricsto "alto" { \lyricalt }
        \new Lyrics \lyricsto "alto" { \lyricalti }
      \new Staff = "altii" \with { instrumentName = "II"   shortInstrumentName = "II"   midiInstrument = "voice oohs"  } 
       {  \new Voice = "altdown" { \voiceOne \voiceOne \longrest } }
       \new Lyrics \lyricsto "altoii" { \lyricaltii }
      >>
      
   %   \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      
      
      
      \new Staff = "tenor" \with {  instrumentName = "Тенор" shortInstrumentName = "Т" midiInstrument = "voice oohs"  }
     {  \new Voice  = "tenor" { \clef "treble_8" \oneVoice \tenorvoice } } 
      \new Lyrics \lyricsto "tenor" { \lyrictenor }
     
     \new Staff = "bass" \with {  instrumentName = "Бас" shortInstrumentName = "Б" midiInstrument = "voice oohs"  }
     <<  \new Voice  = "bariton" { \clef bass \barit } 
         \new Voice  = "bass" {  \bass } 
     >>
     \new Lyrics \lyricsto "bariton" { \lyricbarr }
     \new Lyrics \lyricsto "bass" { \lyricbass }
     
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
        \accidentalStyle choral
      }
      %Metronome_mark_engraver
    }
  }
  
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \articulate
    \new ChoirStaff <<
      \new Staff = "soprano" \with {  instrumentName = "Сопрано" shortInstrumentName = "С" midiInstrument = "voice oohs"  }
      << \new Voice = "soprano" { \sopvoicei } 
         \new Voice = "sopranoii" { \sopvoiceii } 
      >>

      \new ChoirStaff = "soprano" \with {  instrumentName = "C" shortInstrumentName = "С"  midiInstrument = "voice oohs" }
      <<
       \new Staff = "sopranoi" \with { instrumentName = "I"   shortInstrumentName = "I"  } 
       {  \new Voice = "sopranoup" { \voiceOne \longrest } }

      \new Staff = "sopranoii" \with { instrumentName = "II"   shortInstrumentName = "II"  } 
       {  \new Voice = "sopranodown" { \voiceTwo \longrest } }
      >>
      
      \new Staff = "alto" \with {  instrumentName = "Альт" shortInstrumentName = "А" midiInstrument = "voice oohs"  }
     <<  \new Voice  = "alto" { \altvoicei } 
         \new Voice = "altoii" { \altvoiceii }
     >>
     
     %\new Lyrics \lyricsto "alto" { \lyricalt }
      
      \new ChoirStaff = "alto" \with {  instrumentName = "А" shortInstrumentName = "А"  midiInstrument = "voice oohs" } 
      <<
       \new Staff = "alti" \with { instrumentName = "I"   shortInstrumentName = "I"   midiInstrument = "voice oohs"  } 
       {  \new Voice = "altup" { \voiceOne \voiceOne \longrest } }
      \new Staff = "altii" \with { instrumentName = "II"   shortInstrumentName = "II"   midiInstrument = "voice oohs"  } 
       {  \new Voice = "altdown" { \voiceOne \voiceOne \longrest } }
      >>
      
   %   \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      
      
      
      \new Staff = "tenor" \with {  instrumentName = "Тенор" shortInstrumentName = "Т" midiInstrument = "voice oohs"  }
     {  \new Voice  = "tenor" { \clef "treble_8" \oneVoice \tenorvoice } } 
     
     \new Staff = "bass" \with {  instrumentName = "Бас" shortInstrumentName = "Б" midiInstrument = "voice oohs"  }
     <<  \new Voice  = "bariton" { \clef bass \barit } 
         \new Voice  = "bass" {  \bass } 
     >>

     
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4.=70
    }
  }
}
