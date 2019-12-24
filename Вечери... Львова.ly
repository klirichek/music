\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Вечери Твоея тайныя"
  composer = "Львов А.Ф."
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

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
  \key c \minor
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff

  c4\pp b c |
  d2 d4 |
  es2 r4 |
  d2.\pp( |
  d4 c) c | \abr
  
  b2 r4 |
  es2\f\> d8 c |
  c4\! bes? r8 \bar "" \break bes\p |
  bes4. bes8 bes4 | \abr
  
  bes c es |
  d2-> r4 |
  g,4\pp g r8 g |
  as4.-> as8 as r | \abr
  
  g4\< bes b |
  c4. r8 \bar "" \break c c |
  c4.-> c8 c c\! | \abr
  
  d4 d d8. d16 |
  d4-> d4. r8 |
  \break es2(\f d8[ c]) |
  c4-> b b | \abr
  
  c2\> bes?4 |
  as2\p g4 |
  g-> fis fis |
  g2\pp r4 | \break
  es4.\pp es8 es f | \abr
  
  g4.-> f8 f f |
  f4->( es8) es d d |
  es2\fermata r4 \bar "||" \abr
  
  \break c'4(\p b) c |
  d2 ( c4) b2 r4 |
  es2\f\> d8[( c]) | \abr
  c4( bes?2)\! |
  bes2. |
  as2.( |
  g |
  g2) c4 | \abr
  c2.( |
  c4 d c |
  c b8[ a] b4 |
  c2.\pp |
  c2 b4) |
  c2.\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  es4 f es |
  f2 f4 |
  es2 r4 |
  as2.( |
  g2) as4 |
  
  g2 r4 |
  g2 g8 g |
  f4 f r8 f |
  f4. f8 f4 |
  
  es es f |
  f2 r4 |
  es4 es r8 es |
  es4. d8 d r |
  
  es4 g g |
  as4. r8 as as |
  f4. f8 f f |
  
  f4 bes as?8. as16 |
  as4 g4. r8 |
  g2. |
  as4 as as
  
  g2 g4 |
  g( f) es |
  es es d |
  d2 r4 |
  c4. c8 c d |
  
  es4. es8 es es |
  d4( c8) c b b |
  c2 r4 |
  
  es4( f) es |
  f2( es4) |
  d2 r4 |
  g2 g4 |
  
  f2. |
  es2( g4) |
  \break g( f d |
  d2) f4 |
  es2.( |
  
  d4 f as |
  g2. |
  f2 g8[ f] |
  es2. |
  f) |
  es2.
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  g4 g g |
  g2 g4 |
  g2 r4 |
  c2.( |
  c2) d4 |
  
  d2 r4 |
  bes?2 bes8 bes |
  as4 as r8 as |
  as4. as8 as4 |
  
  g c c |
  d2 r4 |
  bes4 bes r8 bes |
  bes4. bes8 bes r |
  
  bes4 es es |
  es4. r8 es es |
  es4. es8 es es |
  
  d4 d f8. f16 |
  f4 f4. r8 |
  es2. |
  f4 f f |
  
  es2 c4 |
  c2 c4 |
  c c c |
  b2 r4 |
  g4. g8 g bes |
  
  bes4. bes8 bes bes |
  g4. g8 g g |
  g2 r4 |
  
  g2 g4 |
  g2. |
  g2 r4 |
  bes2 bes4 |
  
  as2. |
  g2( c4) |
  c2.( |
  c4 b) d |
  c2.( |
  
  c2 d4 |
  es f es |
  d2. |
  c |
  d) |
  c
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  <c c,>4\pp q q |
  q( <b b,>) q |
  <c c,>2 r4 |
  <f f,>2.\pp( |
  <es es,>2) <f f,>4|
  
  <g g,>2 r4 |
  <es es,>2\f q8 q |
  <d d,>4 q r8 q |
  q4. q8 q4 |
  
  <es es,> <as as,> <a a,> |
  <bes bes,>2 r4 |
  <es, es,>\pp q r8 q |
  <f f,>4. q8 q r |
  
  <g g,>4 q q |
  <as as,>4. r8 q q |
  <a a,>4. q8 q q
  
  <bes bes,>4 q q8. q16 |
  <b b,>4 q4. r8 |
  <c c,>2.\f |
  q4 q q |
  
  q2 <e, e,>4 |
  <f f,>2\p <g g,>4 |
  <as as,> q q |
  <g g,>2\pp r4 |
  <c, c,>4.\pp q8 q <bes bes,> |
  
  <es es,>4. <bes bes,>8 q q |
  <c c,>4. g8 g g |
  <c c,>2\fermata r4
  
  q2\p q4 |
  q( <b b,> <c c,>) |
  <g' g,>2( <f f,>4) |
  <es es,>2\f q4 |
  
  <d d,>2. |
  <es es,>2 ( <e e,>4) |
  <f f,>2.( |
  <g g,>2) <b, b,>4 |
  <c c,>( <es es,> <as as,> |
  <f f,>2. |
  <g g,> |
  q |
  <g c, c,>\pp |
  q) |
  q\fermata
  
}

lyricscoreup = \lyricmode {
  \repeat unfold 77 \skip 1
  а -- лли -- лу -- йа.
}

lyricscore = \lyricmode {
  Ве -- че -- ри Тво -- е -- я та -- йны --
  я днесь, Сы -- не Бо -- жий,
  при -- ча -- стни -- ка мя при -- и -- ми, не бо
  вра -- гом Тво -- им та -- йну по -- вем, ни ло -- бза -- ни -- я Ти
  дам, я -- ко И -- у -- да, но __ я -- ко ра --
  збо -- йник и -- спо -- ве -- да -- ю Тя: по -- мя -- ни мя,
  Го -- спо -- ди, во ца -- рстви -- и Тво -- ем.
  
  \set associatedVoice ="alto" 
  А -- лли -- лу -- йа, а -- лли --
  лу -- йа, а -- ли -- лу -- йа.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricscoreup
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
      %  \RemoveEmptyStaves
    %  \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
