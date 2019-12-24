\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "ВТОРАЯ ПЕСНЬ ЛЕЛЯ"
  subtitle = "из музыки к весенней сказке А. Н. Островского «СНЕГУРОЧКА»"
  composer = \markup\right-column { "Музыка П. Чайковского" "Обработка для детского хора Вл. Соколова"}
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
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
  \key a \major
  \time 2/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \tempo "Allegro (быстро)"
  R2*4
}

voiceone = \relative c' {
  \global
  \autoBeamOff
  \dynamicNeutral
  \abr
  e8 a a a |
  a a fis->[( e]) |
  e a a a |
  a a fis->[( e]) | \abr
  
  r e fis4 |
  gis8 e a4 |
  r8 e fis4 |
  gis8 e a4 | \abr
  
  a8 e' e e |
  e e d->[( b]) |
  a e' e e |
  e e d->[( b]) | \pbr
  
  
  
  r8 a16[( b]) cis4 |
  cis8 cis b[( e]) |
  r a,16[( b]) cis4 |
  cis8 cis b[( e]) | \abr
  
  e e e e |
  e e d->[( b]) |
  c c c c |
  c c b->[( g]) | \abr
  
  r4 a8 a |
  b g c4 |
  r a8 a |
  b g c4 | \abr
  
  e,8 a a a |
  a a gis->[( e]) |
  e c' c c |
  c c b->[( e,]) | \pbr
  
  r8 b' e4 |
  a,8 b gis4 |
  d'\p c |
  f,8 f e4~ e2~ e4 r\fermata \abr
  
  \tempo "в темпе"
  e8 a a a |
  a a fis->[( e]) |
  e a a a |
  a a fis->[( e]) | \abr
  
  r e fis4 |
  gis8 e a4 |
  r8 e fis4 |
  gis8 e a4 | \abr
  
  a8 e' e e |
  e e d->[( b]) |
  a e' e e |
  e e d->[( b]) | \pbr
  
  r8 a16[( b]) cis4 |
  cis8 cis b->[( e]) |
  r a,16[( b]) cis4 |
  cis8 cis b->[( e]) | \abr
  
  e,8 \cresc e e a |
  fis\< fis fis4 |
  gis8 gis gis cis |
  a a a4 | \abr
  
  b8 b b b |
  e2\f |
  b8 b b b |
  e2 | \abr
  
  e,8\p\cresc e e a |
  fis fis fis4 |
  gis8 gis gis cis |
  a a a4 | \pbr
  
  
  b8 b b b |
  e2 |
  b8 b b b | \abr
  e4\f( fis) |
  R2 |
  e,8^\markup\italic"pesante" e e a |
  fis fis fis4 | \abr
  
  e8 e e a |
  fis fis fis4 |
  R2 |
  R2 | \pbr
  
  
  R2 |
  r2\fermata |
  r4 e'\ff~ |
  e  e |
  fis4.\fermata e8 | \abr
  
  \tiny \parenthesize a2~ |
  a~ |
  a4 \normalsize r4 |
  R2*7
  \bar "|."
  
  
}

voicetwo = \relative c' {
  \global
  \autoBeamOff
  \dynamicNeutral
  
  cis8 cis cis cis |
  cis cis d4 |
  cis8 cis cis cis |
  cis cis d4 |
  
  cis d |
  e8 e cis4 |
  cis d |
  e8 e a4 |
  
  a8 a a a |
  a a f4 |
  a8 a a a |
  a a f4 |
  
  
  e4 a |
  a8 a gis4 |
  e a |
  a8 a gis4 |
  
  g8 g g g |
  g g f4 |
  e8 e e e |
  e e f4 |
  
  r a8 a |
  b g e4 |
  r f8 f |
  f f e4 |
  
  c8 c c c |
  c c b[( e]) |
  e e e e |
  e e gis[( e]) |
  
  
  d4 c |
  f8 f e4 |
  r8 b e4 |
  a,8 b e4~ |
  e2~ |
  e4 r\fermata |
  
  cis8 cis cis cis |
  cis cis d4 |
  cis8 cis cis cis |
  cis cis d4 |
  
  cis d |
  e8 e cis4 |
  cis d |
  e8 e a4 |
  
  a8 a a a |
  a a f4 |
  a8 a a a |
  a a f4 |
  
  
  e4 a |
  a8 a gis4 |
  e a |
  a8 a gis4 | 
  
  cis,8 cis cis cis |
  d d d4 |
  eis8 eis eis eis |
  fis fis fis4 |
  
  gis8 gis gis gis |
  a2 |
  gis8 gis gis gis |
  a2 |
  
  cis,8 cis cis cis |
  d d d4 |
  eis8 eis eis eis |
  fis fis fis4 |
  
  
  gis8 gis gis gis |
  a2 |
  gis8 gis gis gis |
  
  a2 |
  R2 |
  cis,8 cis cis cis |
  bis bis bis4 |
  
  cis8 cis cis cis |
  bis bis bis4 |
  b?8 b cis b |
  fis'2 |
  
  
  b,8 b cis b |
  fis'2\fermata |
  r4 e~ |
  e e |
  fis4.\fermata e8 |
  
  a2~ |
  a~ |
  a4 r |
  R2*7
  
}


lyricone = \lyricmode {
  Как по ле -- су лес шу -- мит, за ле -- сом па -- стух по -- ёт,
  раз  -- до -- лье  мо -- ё, ра -- здо -- лье мо -- ё!
  Ель -- ни -- чек мой, ель -- ни -- чек, ча -- стый мо бе -- ре -- зни -- чек,
  
  при -- воль -- е мо -- ё, при -- воль -- е мо -- ё!
  По ча -- стым по ку -- сти -- кам, по ма -- лой тро -- пи -- но -- чке
  де -- ву -- шка бе -- жит, де -- ву -- шка бе -- жит.
  Ой, бе -- жит, то -- ро -- пи -- тся, два ве -- нка в_ру -- ках не -- сёт,
  
  се -- бе да е -- му, се -- бе да е -- му.
  Не шу -- ми, зе -- лё -- ный лес, не ша -- та -- йтесь, со -- се -- нки,
  во чи -- стом бо -- ру, во чи -- стом бо -- ру.
  Не ка -- ча -- йтесь, ку -- сти -- ки, не ме -- ша -- йте де -- ву -- шке
  
  два сло -- ва ска -- зать, два сло -- ва ска -- зать.
  Сту -- де -- ной ко -- ло -- дезь мой, по мхам, по бо -- ло -- тин -- кам
  во -- ды не раз -- лей, во -- ды не раз -- лей.
  Не ме -- шай по тро -- по -- чкам, по стёж -- кам, до -- ро -- же -- нькам
  
  де -- ву -- шке бе -- жать, де -- ву -- шке бе -- 
  жать. Не ме -- шай по тро -- по -- чкам, 
  по стёж -- кам, до -- ро -- же -- нькам де -- ву -- шке бе -- жать.
  
  Де -- ву -- шке бе -- жать, де -- ву -- шке бе -- жать.

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
  
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "staffone" \with {
        instrumentName = "С"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voiceone" { \oneVoice \voiceone }
      >> 
      
      \new Lyrics \lyricsto "voiceone" { \lyricone }
      
      \new Staff = "stafftwo" \with {
        instrumentName = "А"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicetwo" { \oneVoice \voicetwo }
      >> 
      \new Lyrics \lyricsto "voicetwo" { \lyricone }

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
    \tempo 4=90
  }
}
}
