\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Конь"
  composer = "муз. И. Матвиенко"
  poet = "сл. А. Шаганова"
  arranger = "обр. хор Сретенского монастыря"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

%abr = { \break }
abr = {}

%pbr = { \pageBreak }
pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д. - для более аутентичного набора Бортнянского и т.д.
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
  \key d \minor
  \time 4/4
  \numericTimeSignature
  \secondbar
  \squaremarks
  \multirests
  \autoBeamOff
  \placeDynamicsLeft
  \dynamicNeutral
}

vsolofirst = \relative c' {
  \tempo Andante
  \global
  \mark \default d8\p^\markup\italic"Один" e f e d4 c8 bes |
  a2.. r8 |
  d8 c d e f4 f8 g |
  a2~ a8 r d, d | \abr
  
  bes'4 a g r8 a8~ |
  a g f e f r d e |
  f f f g a4 e8 f | \abr
  
  \voiceOne d2~ d8 r d^\markup\italic"(Солист и конь)" d |
  bes'4 a g r8 a~ |
  a g f e f r d e | \abr
  
  f f f g a4 e8 f |
  d1 |
  \mark \default
  \oneVoice d8^\markup\italic"(Один)" e f e d4 c8 bes | \abr
  
  \break a2.. r8 |
  \voiceOne d8\mp^\markup\italic"(Трое)" c d e f4 f8 <e g> |
  <f a>2 r4 d8\p^\markup\italic"(Двое)" d8 | \abr
  
  bes'4 a g r8 a~ |
  a g f e f r d e |
  f f f g a4 e8 f | \abr
  
  d2~ d8 r d\mp d |
  bes'4 a g r8 a~ |
  a g f e f r d e | \abr
  
  f8\< f f g a4 e8 f |
  d2.\mf r4 |
  \oneVoice
  \mark \default 
  d'8\f^\markup\italic"(Один)" e f e d4 c8 bes | \abr
  
  a2.. r8 |
  d8 c d e f4 f8 g |
  a2~ a8 r d, d | \abr
  
  bes'4 a g r8 a~ |
  a g f e f r d e |
  f f f g a a e f | \abr
  
  d2\f~ d8 r r4 |
  \mark \default
  d8\f e f e d4 c8 bes \abr
  
  a2.. r8 |
  d8 c d e f4 f8 g |
  a2~ a8 r d, d | \abr
  
  bes'4 a g r8 a~ |
  a g f e f r \voiceOne d e |
  f f f g a a e f | \abr
  
  \oneVoice d2. r4 |
  R1*4
  \mark \default
  d,8\mp^\markup\italic"(один)" e f e d4 c8 bes |
  a2.~ a8 r | \abr
  
  \voiceOne d8^\markup\italic"(Двое)" c d e f4 f8 g |
  a2 \oneVoice r4 d,8 d |
  bes'4 a g r8 a~ | \abr
  
  a g f e f4 d8 e |
  f f f g a4 e8 f |
  d2~ d8 r d d |
  
  bes'4 a g r8 a~ |
  a g f e f r d e |
  f f f g a4 e8 f |
  d2.~ d8 r | \abr
  \key f\minor
  R1*10
  r2. \bar "" f8 g |
  as as as bes c4 g8 as |
  f2.\fermata r4\fermata \bar "|."
}

vsolosecond = \relative c' {
  \global
  s1*7
  r2. d8 d |
  g4 f e r8 f~ |
  f e d c d r d c |
  bes bes bes bes a4 cis8 cis |
  d1
  s1*2
  
  d8 c d c d4 d8 c |
  c2 r4 d8 d |
  
  g4 f e r8 f~ |
  f e d c d r d c |
  <\parenthesize bes d> <\parenthesize bes d> <\parenthesize bes d> bes a4 cis8 cis |
  
  d2~ d8 r d d |
  g4 f e r8 f~ |
  f e d c d r d c |
  
  <\parenthesize d bes> <\parenthesize d bes> <\parenthesize d bes> bes a4 e'8 f |
  d2. r4
  s1*4
  s1*9
  s4*3 d'8 c |
  bes bes bes d <cis \parenthesize a> <cis \parenthesize a> <cis \parenthesize a> <cis \parenthesize a>
  
  s1*7
  d,8 c d e f4 f8 g |
  f2 s2
  s1*4
  s1*7
}

tenorfirst = \relative c' {
  \global
  R1*19
  r2 r4 \voiceOne d8\mp d |
  d4 d c  r8 c~ |
  c c a c d r d c |
  d\< d d d cis4 cis8 cis |
  d2.\mf r4 |
  r8 d\mf c a c4( d) |
  
  r8 d c a c4( d) |
  r8 d c a bes4 c8 c |
  f2. d8 d |
  
  g4 f e r8 f~ |
  f e d c d r d e |
  f f f g e e e f |
  d16 r f8\mf e16[( f]) d8 r f e16[( f]) d8 |
  d\mf d d d d4 d8 d |
  
  d  f e16[( f]) d8 r f e16[( f]) d8 |
  d c d d d4 d8 e |
  f4( e es) d8 d |
  g4 f e r8 f~ |
  f e d c d r r4 |
  r8 d4. r8 cis4. |
  
  r4 g8 a c4 d8\f d |
  g4 f e r8 f~ |
  f e d c d r d e |
  f f f g a a e f |
  d2~ d\sp~ |
  d1~ |
  d8 r d2.~ 
  
  d1~ |
  d8 r f2( d4~) |
  d2( c) |
  c d |
  d cis |
  <<d1 { s4\< s s s\!} >>
  
  d1\mp\< |
  d2~ d8\mf r r4 |
  R1*2
  
  \mark \default
  \key f\minor
  f8\f g as g f4 es8 des |
  c2( e) |
  f8 es f es f4 f8 g |
  
  as4( g ges) f8 f |
  bes4 as g r8 as~ |
  as g f es f r f es | \abr
  
  f f f f e4 e8 e |
  f2~\< f8\! r8 f\f f |
  bes4\< as g r8\! as~ | \abr
  
  as g\< f es f4~\ff f~\sp~ |
  f2.\fermata\>\laissezVibrer s4\! |
  \oneVoice R1*2
}

tenorsecond = \relative c {
  \global
  s1*19
  s2 s4 d8 d |
  bes'4 a g r8 a~ |
  a g f e f r d' c |
  
  bes bes bes bes a4 cis8 cis |
  d2. r4 |
  r8 d c a f4( g) |
  r8 d' c a f4( g) |
  r8 d' c a bes4 bes8 bes |
  a2. d8 d |
  
  d4 d e r8 c~ |
  c c d c d r d c |
  d d d e cis cis cis cis |
  d16 r d8 c a r d c a |
  a a a a bes4 bes8 bes |
  
  a d c a r d c a |
  a a bes bes a4 bes8 c |
  c2. c8 c |
  bes4 d d r8 c~ |
  c c a a bes r r4 |
  r8 d4. r8 cis4. |
  
  r4 g8 a c4 d8 c
  bes4 d d r8 c~ |
  c c d c d r r4 |
  R1 |
  r4 d,2.\p~ |
  d1~ |
  d8 r d2.~
  
  d1~ |
  d8 r f2( d'4~) |
  d2  c |
  c d |
  d cis |
  d( d,)
  
  d1 |
  d2~ d8 r r4 |
  R1*2
  \key f \minor
  as'8 bes c es des4 c8 bes |
  c2( bes) |
  as8 g as bes des4 des8 des |
  
  es2. f8 f |
  f4 f es r8 es~ |
  es es c c des r f es |
  des des des des c4 c8 c |
  f2~ f8 r f f |
  f4 f es r8 es~ |
  
  es es c c des4~ des~ |
  des2.\laissezVibrer s4
  s1*2
}

baritone = \relative c {
  \global
  s1*19
  s2. \voiceOne d8 d |
  g4 f e r8 f~ |
  f e d e f r d e | 
  
  f\< f f f e4 a8 a |
  d,2.\mf r4 |
  a'8\mf a g e c4( d) |
  
  r8 a'8 g e c4( d) |
  a'8 a g e d4 e |
  r8 c d8 e g f d8 d |
  
  bes'4 bes c r8 a~ |
  a a a a bes r bes a |
  bes bes bes bes a a a a |
  a16 r a8 g16[( a]) f8 r a g16[( a]) f8 |
  f\mf f f f f4 f8 f |
  
  f a g16[( a]) f8 r a g16[( a]) f8 |
  f f f f f4 f4 |
  r8 c d8 e g f a8 a |
  g4 g g r8 a~ |
  a g f e f r r4 |
  r8 bes4. r8 a4. |
  
  r4 g8 a f4 d8 d |
  bes'4 a g r8 a~ |
  a g f e d r d'8 c |
  d8 d d d cis a cis cis
  d2 r
  
  s1*3
  s4 f,2.( |
  g4 f e) r8 f~( |
  f[ e d c] d) r d'8 c |
  bes8 bes bes bes a4 e8 f |
  d2. d8 d |
  
  g4\< f e r8 f~ |
  f e d\! c d r r4 |
  R1*2
  
  \key f\minor f8\f f f f as4 as8 as |
  as2( g) |
  f8 es f g as4 as8 bes |
  
  c2. f,8 f |
  des'4 c bes r8 c~ |
  c bes as g as r f g |
  as as as bes c4 g8 as |
  f2~\< f8\! r f\f f |
  des'4 \< c bes r8\! c~ |
  c bes\< as g as4~\ff as\sp~ |
  as2.\> \laissezVibrer s4\! |
  \oneVoice R1*2
}

bass = \relative c, {
  \global
  R1*13
  f4_\markup\italic"(Закр. рот)"( g f e |
  d2.. e8 |
  f4 g f8) r r4 |
  R1*3
  r4 g8 a f r8 d' d |
  g,4 a c r8 f,8~ |
  f g a a bes r8 d c |
  
  bes8 bes bes bes a4 a8 a |
  d2. r4 |
  << { d8 d c a} \new Voice { \voiceFour \parenthesize d,2 } >> \voiceTwo f4( g) |
  << { r8 d' c a} \new Voice { \voiceFour \parenthesize d,2 } >> \voiceTwo f4( g) |
  << { d'8 d c a} \new Voice { \voiceFour \parenthesize d,2 } >> \voiceTwo f4 g8 g |
  f2. d'8 d |
  
  g,4( g') e c |
  f,8 f a a bes r d c |
  g g g g g g a a |
  d2. r4 |
  d8 d d d bes4 bes8 bes |
  
  d1 |
  d8 d bes bes d[( c]) bes bes |
  f2. fis8 fis |
  g4 bes c r8 f,~ |
  f g a c bes r r4 |
  r8 g'4. r8 g4. |
  
  r4 g,8 a d[( c]) bes a |
  g4 bes c r8 f,~ |
  f g a a bes r r4 |
  R1|
  r4 <d d,>2.\p~ |
  <d d,>1~ |
  <d d,>8 r8 <d d,>2.~ 
  <d d,>1~ |
  <d d,>8 r f,2.( |
  g4 f e) r8 f~( |
  f[ e d c] d) r8 d' c |
  bes8 bes bes bes a4 cis8 a |
  d2.\< d8\mp d |
  
  bes4 a g r8 a~ |
  a g f e f r8 r4 |
  R1*2 |
  \key f\minor f'8 f f f des4 des8 des |
  as2( c) |
  f8 es f es des4 des8 es |
  
  as,2. f'8 f |
  bes,4 des es r8 as,~ |
  as bes c c des r f es |
  
  des des des des c4 c8 c |
  f4 as,8 c g'8 f f f |
  bes,4 des es r8 as,~ 
   as bes c c des4~ des~ |
   des2.\laissezVibrer s4 |
   s1*2
}


lyricone = \lyricmode {
  Вы -- йду но -- чью в_по -- ле с_ко -- нём, но -- чкой тё -- мной ти -- хо по -- йдём, мы по --
  йдём с_ко -- нём по по -- лю вдво -- ём, мы по -- йдём с_ко -- нём по по -- лю вдво --
  ём. Мы по -- йдём с_ко -- нём по по -- лю вдво -- ём, мы по --
  йдём с_ко -- нём по по -- лю вдво -- ём. Но -- чью в_по -- ле звёзд бла -- го --
  дать… В_по -- ле ни -- ко -- го не ви -- дать. То -- лько
  мы с_ко -- нём по по -- лю и -- дём, то -- лько мы с_ко -- нём по по -- лю и --
  дём. То -- лько мы  с_ко -- нём по по -- лю и -- дём, то -- лько 
  
  мы с_ко -- нём по по -- лю и -- дём. Ся -- ду я ве -- рхом на ко --
  ня: «Ты не -- си по по -- лю ме -- ня, по бе --
  скра -- йне -- му по -- лю мо -- е -- му, по бе -- скра -- и -- не -- му
  по -- лю мо -- е -- му!
  
  Да -- йка, я ра -- зок по -- смо --
  трю; где ро -- жда -- ет по -- ле за -- рю? Ай, бру --
  сни -- чный свет, а -- лый да ра -- ссвет, а -- ли есть то ме -- сто, а -- ли е -- го
  нет?‥
  
  По -- лю -- шко мо -- ё, ро -- дни -- ки,
  да -- льних де -- ре -- вень о -- го -- ньки… Зо -- ло -- та -- я рожь,
  да ку -- дря -- вый лён, я влю -- блён в_те -- бя, Ро -- сси -- я, влю -- блён… Зо -- ло --
  та -- я рожь, да ку -- дря -- вый лён… Я влю -- блён в_те -- бя, Ро -- сси -- я, влю -- блён!

   Мы и -- дём с_ко -- нём по по -- лю вдво -- ём…
}

lyrictwo = \lyricmode {
  То -- лько мы с_ко -- нём по по -- лю и -- дём, то -- лько
  мы с_ко -- нём по по -- лю и -- дём. Ой, ся -- ду я __ 
  да на ко -- ня  __ не -- си по по -- лю ме -- ня, по бе --
  скра -- йне -- му по -- лю мо -- е -- му, по бе -- скра -- и -- не -- му
  по -- лю мо -- е -- му. Ой, да, да; ой, да, да! Да -- йка я ра -- зок по -- смо --
  трю, ой, да, да; ой, да, да; где ро -- жда -- ет по -- ле за -- рю?
  Ай, бру -- сни -- чный свет, а -- лый да ра -- ссвет… Ой!‥ Ой!‥
  
  А -- ли нет, ай бру -- сни -- чный свет, а -- лый да ра -- ссвет, а -- ли
  есть то ме -- сто, а -- ли е -- го нет?‥_У…
  У… 
  \repeat unfold 8 \skip 1
  Бу -- дет до -- брым тот хле -- бо -- род!
  Бы -- ло вся -- ко,_― вся -- ко про --
  йдёт! Пой, зла -- та -- я рожь, пой, ку -- дря -- вый лён, пой о
  том, как я в_Ро -- сси -- ю влю -- блён! __ Пой, зла -- та -- я рожь, пой,
  ку -- дря -- вый лён…_н…_м…
  
}

lyricthree = \lyricmode {
 \repeat unfold 35 \skip 1  
  не -- си по по -- лю,
   \repeat unfold 47 \skip 1  
   ро -- жда -- ет по -- ле,
   
   \repeat unfold 25 \skip 1
   а -- ли есть то ме -- сто, а -- ли е -- го нет?‥
}

lyricthreetwo = \lyricmode {
 \skip 1  да, вдво -- ём,
 то -- лько мы с_ко -- нём по по -- лю и -- дём, то -- лько
 мы с_ко -- нём по по -- лю и -- дём. Ся -- ду я ве -- рхом,
 да на ко -- ня. __
 «Ты не -- си по по -- лю ме -- ня, по бе --
 скра -- йне -- му по -- лю мо -- е -- му, по бе -- скра -- и -- не -- му
 по -- лю мо -- е -- му! Да -- йка я ра -- зок по -- смо --
трю… Где ро -- жда -- ет по -- ле за -- рю? Ай, бру --
сни -- чный свет, а -- лый да ра -- ссвет… Ой!‥ Ой!‥

А -- ли нет, ай бру -- сни -- чный свет, а -- лый да ра -- ссвет, 
У… У… У… У… Я влю -- блён в_те -- бя Ро -- сси -- я влю -- блён. Зо -- ло --

та -- я рожь, да ку -- дря -- вый лён…

Бу -- дет до -- брым тот хле -- бо -- род!
Бы -- ло вся -- ко,_― вся -- ко про -- 
йдёт! Пой, зла -- та -- я рожь, пой, ку -- дря -- вый лён, пой о
  том, как я в_Ро -- сси -- ю влю -- блён я в_Ро -- сси -- ю пой, зла -- та -- я рожь, пой,
ку -- дря -- вый лён…_н…_м…
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  system-separator-markup = \slashSeparator 
}

\score {
  %  \transpose c bes {
     <<
      \new Staff = "staffone" \with {
        instrumentName = "Соло"
        shortInstrumentName = "Сол"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voiceone" { \vsolofirst }
         \new Voice = "voiceonetwo" { \voiceTwo \vsolosecond }
      >> 
      
      \new Lyrics \lyricsto "voiceone" { \lyricone }
      
      \new ChoirStaff <<
      \new Staff = "stafftwo" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicetwo" { \clef "treble_8" \tenorfirst }
         \new Voice = "voicetwotwo" { \voiceTwo \tenorsecond }        
      >> 
      
      \new Lyrics \lyricsto "voicetwo" { \lyrictwo }
      
      \new Staff = "staffthree" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicethree" { \clef bass \baritone }
         \new Voice = "voicethreetwo" { \voiceTwo \bass }   
      >> 
      
      \new Lyrics \lyricsto "voicethree" { \lyricthree }
       \new Lyrics \lyricsto "voicethreetwo" { \lyricthreetwo }
  

    >>
    >>

    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=75
  }
}
}
