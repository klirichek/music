\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 17)

\header {
  title = "Конь"
  composer = "муз. И. Матвиенко"
  poet = "сл. А. Шаганова"
  arranger = "обр. Валерия Домашевского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

%abr = { \break }
abr = {}

%pbr = { \pageBreak }
pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
    grob-interpret-markup grob (                         
      let (( dyntxt (ly:grob-property grob 'text ) )  )
      ( set! dyntxt (cond
        (( equal? dyntxt "f" ) "гр." ) 
        (( equal? dyntxt "p" ) "т." )
      )) #{ \markup \normal-text \italic $dyntxt #} )
    )) }



melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
    \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
   \autoBeamOff
  \dynamicNeutral
}

vsolofirst = \relative c {
  \tempo Andante
  \global
  \mark \default
  d8 e f e d4 c8 bes |
  a1 |
  d8 c d e f4 f8 g |
  a2. \bar "" \break d,8 d |
  
  bes'4 a g4. a8~ |
  a g f e f4  d8 e |
  f8 f f g a4 e8 f |
  d2. \bar "" \break d8 d
  
    bes'4 a g4. a8~ |
  a g f e f4  d8 e |
  f8 f f g a4 e8 f |
  d1 |
  
  \mark \default
  d8 e f e d4 c8 bes |
  a1 |
  d8 c d e f4 f8 g |
  a2. d,8 d |
  bes'4 a g4. a8~ |
  a g f e f4  d8 e |
  f f f g a4 e8 f |
  d2. \bar "" \break
  
  d8 d bes'4 a g4. a8~
  a g f e f4 d8 e |
  f f f g a4 e8 f |
  d1 |
  
  \mark \default 
  d'8 e f e d4 c8 bes |
  a1
  
  d,8 c d e bes'4 f8 bes |
  a2.  \bar "" \break d,8 d |
  bes'4 a bes4. a8~ |
  a g f e f4 d8 e |
  f4 f8 g a a e f |
  d2.  \bar ""  \break d8 d |
  bes'4 a g4. a8~ |
  a g f e f4 d8 e |
  f4 f8 e g g e f |
  d1 |
  
  \mark \default
  d'8 e f e d4 c8 bes |
  a1 |
  d,8 c d e bes'4 g8 bes |
  a2. d,8 d |
  bes'4 a bes4. a8~ |
  a a a a f4 d8 e |
  f f f g a a e f |
  d2. d8 d |
  bes'4 g bes4. a8~ |
  a g f e f4 d8 e |
  f f f e a a e f |
  d1
  
  \mark \default  
  d8 e f e d4 c8 bes |
  a1 |
  d8 c d e <d f>4 <d f>8 <e g> |
  <f a>2. d8 d |
  <g bes>4 <f a> <e g>4. <f a>8~ |
  <f a> <e g> < d f> <c e> <d f>4 d8 <c e> |
  <bes f'> <bes f'> <bes f'> <bes g'> <cis a'>4 <cis e>8 <cis f> |
  d2. d8 d |
  <g bes>4 <f a> <e g>4. <f a>8~ |
  <f a> <e g> < d f> <c e> <d f>4 d8 <c e> |
  <bes f'> <bes f'> <bes f'> <bes g'> <cis a'>4 <cis e>8 <cis f> |
  d1
 
 \mark \default
  d8 e f e d4 c8 bes |
  a1 |
  \break d8 c d e f4 f8 g |
  a2. d,8 d |
  bes'4 a g4. a8~ |
  a a a a f4 d8 e |
  f f f g a4 e8 f |
  d2. d8 d |
  bes'4 a g4. a8~ |
  a g f e f4\fermata  d8 e |
  f f f g a4 e8 f |
  d1\fermata \bar "|."
  
  
}


tenorfirst = \relative c' {
  \global
 \voiceOne
  R1*19
  r2. d8 d |
  bes'4 a c4. a8~ |
  a g f e f4 d'8 e |
  f f f g a4 e8 f | 
  d1
  d8 e f e d4 c8 bes |
  
  a1
  d8 c d e bes'4 g8 bes | 
  <c, a'>2.   \bar "" c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes4 bes8 bes a a a a |
  d2.  \bar "" c8 c | 
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes4 bes8 bes a a a a |
  d1
  a8 a a a g4 a8 g |
  a1 |
  d8 c d e d4 bes8 c |
  c2. c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes bes bes bes a a a a |
  d2. c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes bes bes bes a a a a |
  d1 
  
  a2 bes |
  a1 |
  a2. bes8 c |
  c2.    c4 |
  d2 c4. c8~ |
  c2 d |
  d a |
  d2. c4 |
  d2 c4. c8~ |
  c2 d |
  d a |
  d1
  R1*3
  
  r2 r4 c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes bes bes bes a4 a8 a |
  d2. c8 c |
  d4 bes c4. c8~ |
  c c^\markup\bold"rit." c c bes4\fermata bes8 bes |
  bes bes bes bes a4 a8 a |
  d1\fermata |

}

tenorsecond = \relative c'' {
  \global
  R1*24
  d,8 e f e d4 c8 bes |
  a1 |
  d8 c d e <d f>4 <d f>8 <e g> |
  f4( e es)   \bar "" d8 d |
  <g bes>4 <d a'> <e g>4. <f a>8~ |
  <f a> <g a> <f a> <e a> <d f> 4 d8 <d e> |
  <d f> 4 <d f>8 <d g> <cis a'> <cis a'> < cis e> <cis f> |
  d2.  \bar "" d8 d |
  <g bes>4 <d a'> <e g>4. <f a>8~ |
  <f a> <g a> <f a> <e a> <d f> 4 d8 <d e> |
  <d f> 4 <d f>8 <d g> <cis a'> <cis a'> < cis e> <cis f> |
  d1
  d8 e f e d4 c8 bes |
  a1 |
  d8 c d e d4 d8 e |
  f4( e es)   d8 d |
  g4 d e4. f8~ |
  f g f e d4 d8 d |
  d d d d cis cis cis cis |
  d2. d8 d |
  g4 d e4. f8~ |
  f g f e d4 d8 d |
  d d d d cis cis cis cis |
  d1
  
    d2 d |
  c cis |
  d d4 e |
  f e es d |
  g2 e4. f8~ |
  f2 f |
  f cis |
  d2. d4 |
  g2 e4. f8~ |
  f2 f |
  f cis |
  d1
  
  R1*3
  
  r2 r4 d8 d |
 
 g4 d e4. f8~ |
 f g f e d4 d8 d |
 d d d d cis4 cis8 cis |
 d2. d8 d 
 g4 d e4. f8~ |
 f g f e d4 d8 d |
 d d d d cis4 cis8 cis |
 d1
}

baritone = \relative c {
  \global
  \voiceOne
  R1*7
  r2. d8 d |
  bes'4 a g4. a8~ |
  a g f e f4 d8 e |
  f f f g a4 e8 f |
  d1
  R1
  r4 g8 f e2 |
  d8 c d e f4 f8 g |
  a2. d,8 d |
  bes'4 a g4. a8~ |
  a g f e f4  d8 e |
  f f f g a4 e8 f |
  d2. \bar "" d8 d |
  g4 f g4. f8~ |
  f g f e d4 d8 c |
  d d d e f4 e8 f |
  d1
  
  d'8 e f e d4 c8 bes |
  a1 |
  d8 c d e d4 bes8 c |
  c2. \bar ""  c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes4 bes8 bes a a a a |
  d2.  \bar "" c8 c |
  d4 bes c4. c8~ |
  c c c c bes4 bes8 bes |
  bes4 bes8 bes a a a a |
  d1
  
  f,8 f f f g4 a8 g a1 |
  f8 f f f bes4 g8 g |
  a2. ges8 ges |
  bes4 a bes4. a8~ |
  a a a a f4 f8 g |
  f8 f f e g g g g |
  d2. ges8 ges |
  bes4 a bes4. a8
  a a a a f4 f8 g |
  f8 f f e g g g g |
  d1
  
  f2 g |
  g1 |
  f2 g4 bes |
  a2.     ges4 |
  bes2 bes4. a8~ |
  a2 bes |
  bes g |
  d2. ges4 |
  bes2 bes4. a8 |
  a2 bes |
  bes g |
  d1
  
  R1*2
    
  d8 c d e d4 d8 e |
  f2. ges8 ges |
  bes4 f bes4. a8~ |
  a a a a f4 f8 g |
  f f f e g4 g8 g |
  d2. ges8 ges |
  bes4 f bes4. a8~ |
  a a a a f4 f8 g |
  f f f e g4 g8 g |
  d1
  
  
}

bass = \relative c {
  \global
  R1*7 |
  r2. d8 d |
  g4 f e4. f8~ |
  f e d c d4 d8 c |
  bes bes bes bes a4 a8 a |
  d1
  R1
  r4 g8 f e2 |
  d8 c d e d4 d8 e |
  f2. d8 d |
  g4 f e4. f8~ |
  f e d c d4 d8 c |
  bes bes bes bes a4 a8 a |
  d2. \bar "" d8 d |
  d4 d e4. c8~ |
  c c c c bes4 d8 c |
  bes bes bes bes cis4 cis8 cis |
  d1
  d'8 e f e d4 c8 bes |
  r4 g8 f e2 |
  f8 f f f bes4 g8 <g bes> |
  a2.  \bar "" ges8 ges |
  <g bes>4 <f a> bes4. a8~ |
  a a a a f4 f8 g |
  f4 f8 e g g g g |
  d2.  \bar "" ges8 ges |
  <g bes>4 <f a> bes4. a8~ |
  a a a a f4 f8 g |
  f4 f8 e g g g g |
  d1
  d8 d d d d4 d8 d cis1 |
  f8 f f f bes4 g8 g |
  a2.  ges8 ges |
  g4 f bes4. a8~
  a a a a f4 f8 g |
  f f f e g g g g |
  d2. ges8 ges |
  g4 f bes4. a8~
  a a a a f4 f8 g |
  f f f e g g g g |
  d1
  
  f2 g |
  g1 |
  f2 g4 bes |
  a2.     ges4 |
  bes2 bes4. a8 |
  a2 bes |
  bes g |
  d2. ges4 |
  bes2 bes4. a8~ |
  a2 bes |
  bes g |
  d1
  
  R1*2 |
  d8 c d e d4 d8 e |
  f2. d8 d |
  
  g4 f e4. f8~ |
  f e d c d4 d8 c |
  bes bes bes bes a4 a8 a |
  d2. d8 d |
  g4 f e4. f8~ |
  f e d c d4\fermata d8 c |
  bes bes bes bes a4 a8 a |
  d1\fermata
  
  
  
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
  скра -- йне -- му по -- лю мо -- е -- му, по бе -- скра -- йне -- му
  по -- лю мо -- е -- му! По бе --
  скра -- йне -- му по -- лю мо -- е -- му, по бе -- скра -- йне -- му
  по -- лю мо -- е -- му!
  
  Да -- йка, я ра -- зок по -- смо --
  трю; где ро -- жда -- ет по -- ле за -- рю? Ай, бру --
  сни -- чный свет, а -- лый да ра -- ссвет, а -- ли есть то ме -- сто, а -- ли е -- го
  нет?‥ Ай, бру --
  сни -- чный свет, а -- лый да ра -- ссвет, а -- ли есть то ме -- сто, а -- ли е -- го
  нет?‥
  
  По -- лю -- шко мо -- ё, ро -- дни -- ки,
  да -- льних де -- ре -- вень о -- го -- ньки… Зо -- ло -- та -- я рожь,
  да ку -- дря -- вый лён, я влю -- блён в_те -- бя, Ро -- сси -- я, влю -- блён… Зо -- ло --
  та -- я рожь, да ку -- дря -- вый лён… Я влю -- блён в_те -- бя, Ро -- сси -- я, влю -- блён!

  Бу -- дет до -- брым год, хле -- бо -- род.
  Вся -- ко -- е ду -- рно -- е у -- йдёт!
  Пой, зла -- та -- я рожь, пой, ку -- дря -- вый лён, пой о том, как я в_Ро -- сси -- ю влю -- блён!
  Пой, зла -- та -- я рожь, пой, ку -- дря -- вый лён... Мы и -- дём с_ко -- нём по по -- лю вдво -- ём...
  
  
  
}

lyrictwo = \lyricmode {

  
}

lyricthree = \lyricmode {

}

lyricthreetwo = \lyricmode {

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
        \new Voice = "voiceone" { \clef "treble_8" \vsolofirst }
      >> 
      
      \new Lyrics \lyricsto "voiceone" { \lyricone }
      
      \new ChoirStaff <<
      \new Staff = "stafftwo" \with {
        instrumentName = "Ж"
        shortInstrumentName = "Ж"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicetwo" { \clef treble \tenorfirst }
         \new Voice = "voicetwotwo" { \voiceTwo \tenorsecond }        
      >> 
      
      \new Lyrics \lyricsto "voicetwo" { \lyrictwo }
      
      \new Staff = "staffthree" \with {
        instrumentName = "М"
        shortInstrumentName = "М"
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
    \tempo 4=60
  }
}
}
