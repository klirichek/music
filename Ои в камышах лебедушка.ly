\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Ой, в камышах лебёдушка..."
  composer = "Обработка В. Минина"
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
  \key bes \minor
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopone = \relative c' {
  
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice
  \tempo Умеренно
  R2*3 |
  r4 des8[(\p es]) |
  f4 ges |
  as ges |
  as bes | \abr
  
  f2 |
  \voiceOne as4 as8[( c]) |
  bes4 bes8[( as]) |
  \oneVoice f4( as )
  as ges |
  f ges8 bes |
  f4 es |
  ges f | \abr
  
  bes2 |
  \tempo "С движением"
  bes4\mf bes8 \voiceOne c |
  des4 bes |
  es4 des8[( c]) |
  bes2 |
  \oneVoice bes4 bes8[( des]) |
  c4 bes | \abr
  
  as8[( bes]) ges4 |
  f2 |
  as4 f8[( as]) |
  bes4 bes |
  as( c) |
  c bes | \abr
  
  bes8[( c]) des[( es]) |
  f4 f |
  \voiceOne es es |
  \oneVoice f2 |
  \voiceOne f4.\f es8 |
  f2~ | \abr
  
  f~ |
  f\> |
  es4. bes8 |
  es8([ f] des4) |
  es8[(\mp des]) c4 |
  << {f2~ f8 r r4 | \oneVoice s2*3 } \new Voice="aaa" { \voiceFour f2~ f4.( es8 | f4. es8 | f4. es8 f4.) r8 } >>
  
  \oneVoice R2*2 \abr
  
  R2*2
  \tempo "В первоначальном темпе" R2*3
  
  r4 des,8[( es]) |
  f4 ges |
  as ges |
  as bes |
  f2 |
  \voiceOne as4 as8[( c]) |
  bes4 bes8[( as]) |
  f4( as) | \abr
  
  as ges |
  f4. bes8 |
  f4 es |
  ges f |
  bes2 |
 \oneVoice R2
  
}

soptwo = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
\voiceTwo 
 s2*8 |
 \voiceTwo as4 as |
 ges ges |
 s2*6
 s4. bes8 |
 bes4 bes |
 bes bes |
 bes2 |
 s2*8
 
 s2*2
 es8[( des]) es4 |
 s2
 des4. es8 |
 
 des2 |
 bes4 des8[( es]) |
 des2 |
 es4. bes8 |
 c4( des) |
 c8[( bes]) bes4 |
 f2
 s2*6

s2*10
as4 as |
ges ges |
f( as) |
as ges |
f4 ges8 ges |
f4 es |
ges f |
bes2
  
  
}

sopvoice =  << \sopone  \new Voice="soptwo" \soptwo >>


altone = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f4\p f8 es |
  f4 es |
  es8[( f])  es[( des]) |
  bes2 |
  des4. es8 |
  f4 es |
  f ges8[( es]) | \abr
  
  \voiceOne
  f2 |
  f4 f |
  f es8[( c]) |
  des4( f) |
  es es |
  f4. es8 |
  des4 c |
  \oneVoice es4 des8[( c]) | \abr
  
  bes2 |
  bes'4\mf bes8 c |
  bes[( as]) g4 |
  ges! as8[( ges]) |
  ges4( f) |
  ges ges8[( bes]) |
  as4 ges | \abr
  
  f4. es8 |
  f2 |
  f4 f8[( as]) |
  ges4 bes8[( f]) |
  des8[( es] f[ as]) |
  ges4 f | \abr
  
  ges4 <ges bes>8[( <as c>]) |
  <bes des>4 <a des> |
  bes bes |
  f2 |
  bes4.\f g8 |
  bes2 | \abr
  
  c4 des8[( c]) |
  bes4(\> as) |
  <ges bes>4. <ges bes>8 |
  as4( <ges bes>) |
  <f as>\mp ges8[( es]) |
  f2\mp | \abr
  
  R2*6 \abr
  
  R2*2 |
  f4 f8 es |
  f4 es |
  es8[( f]) es[( des]) |
  bes2 |
  des4. es8 | \abr
  
  f4 es |
  f ges8[( es]) |
  f2 |
  f4 f |
  f es8[( c]) |
  des4( f) | \abr
  
  es es
  f4. es8 |
  des8[( bes]) c4 |
  es des8[( c]) |
  bes2~ |
  bes\fermata \bar "|."
}

alttwo = \relative c' {
  \global
  \dynamicUp
  s2*7 |
  \voiceTwo f4  es |
  des c |
  bes4. c8 |
  des2 |
  es4 es |
  f4. es8 |
  des[( bes]) c4 |
  es4 des8[( c]) |
  s2*50  
}

altvoice = << \altone  \new Voice="alttwo" \alttwo >>

tenorone = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice R2*15
  r4 bes\mf~( |
  bes2~ |
  bes8[ c]) des[( f]) |
  es4 f8[( es]) |
  des2 |
  es4. bes8 |
  es8[( f]) des4 |
  
  es8[( des]) c4 |
  des( c) |
  des c8[( es]) |
  des4 c |
  f( es) |
  bes bes |
  
  es4 es8[( f]) |
  g4 ges |
  ges ges |
  f4 f8 es |
  bes4\f bes8 c |
  f4 des |
  
  ges4 f8[( es]) |
  bes2\> |
  bes4 bes8 des |
  es4 des |
  c8[(\mp bes]) c4 |
  des4\mp c |
  
  as4^"Немного ускоряя" as8 \voiceOne c |
  bes4 bes8[( as]) |
  as4 c |
  bes2 |
  bes8[( c]) <bes des>[( <c es>]) |
  <des f>4 <des f> |
  
  es8[( des]) es4 |
  bes2\( des\) |
  des |
  des |
  \oneVoice bes |
  bes |
  
  bes |
  c |
  des4( c) |
  des c |
  bes4. c8 |
  des4. c8 |
  
  bes2~ |
  bes4. r8
  R2*4
  
  
  
}
tenortwo = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  s2*40
  \voiceTwo s4 s8 as |
  ges4 ges |
  f as |
  bes( as) |
  ges ges8[( as]) |
  bes4 a |
  
  bes4 ges |
  f2~ |
  f
  f
  ges
  
}
tenorvoice = << \tenorone \new Voice="tenortwo" \tenortwo >>

baritone = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice R2*24
  \voiceOne as4 as8[( f]) |
  ges[( as]) es4 |
  \oneVoice des8[( es] f[ as]) |
  ges4 as
  
  bes bes8[( c]) |
  des4 des |
  c8[( bes]) c4 |
  f,2 |
  bes4\f bes8 c |
  des4 bes |
  
  es des8[( c]) |
  bes2\> |
  bes4 bes8 des |
  c4 bes |
  as8[(\mp bes]) ges4 |
  f \voiceOne f |
  
 f4 es8 es |
 des4 es |
 f f8[( as]) |
 ges4( f) |
 es des8[( f]) |
 g4 ges |
 
 ges4 bes |
 bes2~( |
 bes4 a) |
 as!4( b) |
 bes!2 |
 f |
  as |
 
 ges |
 es |
 f2~ |
 f |
 \oneVoice
 R2*8
 
}

bass = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \voiceTwo s2*24
  des4 c |
  bes as |
  s2*2
  s2*11  s4 es' |
  
  des4 c8 as |
  ges4 as |
  des8[( es]) f[( as]) |
  ges4( f) |
  es4 des8[( c]) |
  bes4 bes |
  
  c8[( bes]) c4 |
  bes2~ |
  bes |
  bes
  bes bes
  R2*5
  s2*8
  
}

bassvoice = << \baritone \new Voice \bass >>

lyricscore = \lyricmode {
  Ой, бе -- ла -- я го -- ло -- ву -- шка
  бьё -- тся вся во го -- рю -- шке, ой, от за -- ри до зо -- рю -- шки.
  Ой, по -- ле -- теть нет си -- лу -- шки,
  все по -- би -- ла кры -- лы -- шки.
  Пла -- чет, у -- би -- ва -- е -- тся,
  дру -- га до -- жи -- да -- е -- тся.
  Ой, шу --  \set associatedVoice = "soptwo" мит  вью -- го -- ю. Ой, при -- ди, су -- же --  \set associatedVoice = "soprano" ный.
  
  Ой, бе -- ла -- я го -- ло -- ву -- шка бьё -- тся вся во го -- рю -- шке, \set associatedVoice = "soptwo" ой, от за -- ри до зо -- рю -- шки.
}

lyricsaaa = \lyricmode { А... __ }

lyricsalt = \lyricmode {
  Ой, в_ка -- мы -- шах ле -- бё -- ду -- шка,  бе -- ла -- я го -- ло -- ву --
  \set associatedVoice = "alttwo" шка,  \set associatedVoice = "alto" да бьё -- тся вся во го -- рю -- шке, от за -- ри до зо -- рю -- шки
  Ой, по -- ле -- теть нет си -- лу -- шки_- все по -- би -- ла кры -- лы -- шки.
  Пла -- чет, у -- би -- ва -- е -- тся,
  дру -- га до -- жи -- да -- е -- тся. Ой, шу -- мит
  вью -- го -- ю, Ой, при -- ди, су -- же -- ный.
  Ой, в_ка -- мы -- шах ле -- бё -- ду -- шка, бе -- ла -- я го -- ло -- ву -- шка бьё -- тся вся во го -- рю -- шке, от за -- ри до зо -- рю -- шки.
}

lyricstenor = \lyricmode {
  Ой, __ нет си -- лу -- шки_-
  все по -- би -- ла
  кры -- лы -- шки. Пла -- чет, у -- би -- ва -- е -- тся,
  дру -- га до -- жи -- да -- е -- тся.
  Ой, да ой, лес шу -- мит за -- вью -- же -- ный. Ой, не при -- дёт к_ней су -- же -- ный,
  да он за ре -- кой да -- лё -- ко -- ю спит, у -- крыт о -- со -- ко -- ю.
  Ой, ле -- бё -- дка, го -- ло -- ву -- шка...
  бьё -- тся вся во го -- рю -- шке.
  
}

lyricsbass = \lyricmode {
  Пла -- чет, у -- би -- ва -- е -- тся,
  дру -- га до -- жи -- да -- е -- тся.
  Ой, лес шу -- мит за -- вью -- же -- ный,
  ой, не при -- дёт к_ней су -- же -- ный, да
  он за ре -- кой да -- лё -- ко -- ю
  спит, у -- крыт о -- со -- ко -- ю.
  ле -- бё -- дка, го -- ло -- ву -- шка...
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
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \sopvoice }
      >> 
      
       \new Lyrics \lyricsto "aaa" { \lyricsaaa }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
            \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricsalt }
  
      \new Staff = "downstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" {  \clef "treble_8" \tenorvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricstenor }
      
            \new Staff = "bassstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
            \new Lyrics \lyricsto "bass" { \lyricsbass}

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
