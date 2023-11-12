\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\header {
  title = "Russian Cyberfolk Song"
  composer = "Ensemble Vanya, Liliana Bush, Daria Scherbak"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
 
%abr = { \break }
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
  \key a \minor
  \time 4/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
    \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
   \autoBeamOff
  \dynamicNeutral
}

voiceone = \relative c'' {
  \global
  \partial 8 r8 |
  R1*4 | 
  a8. a16 a8 a a a  a  a |
  a g  a a g g g4 |
  
  g8 g g g g g a a |
  g8 g g g g g a4 |
  
  a8. a16 a8. a16 a8 a a a |
  a a a  a a g g4 |
  
  g8 g g g g g a a |
  g g g g g g a4 | 
  
  a8. a16 a8. a16 a8 a a a |
  a a a a g g g4 |
  
  g8 g g g g g a a |
  g8 g g g g g a4~ |
  
  a\fermata r r r |
  R1
  g8 g g g g g a a |
  g g g g g g a4 
  
  a8. a16 a8. a16 a8 a a a|
  a a a a g g g4 |
  g8 g g g g g a a |
  g g g g g g a4~ |
  
  a1\fermata
  R1*4
  a8. a16 a8. a16 a8 a a a|
  a a a a a g g4 |
  g8 g g g g g a4 |
  g8 g g g g g a4 |
  
  a8. a16 a8. a16 a8 a a a |
  a a a a a g g4 |
  g8 g g g g f e e\fermata |
  d d d f e d a4\fermata
  
}

voicetwo = \relative c' {
  \global
  \partial 8 e8~ |
  e8 d e8 d e d e e~ |
  e  e e e e e d4 |
  
  d8 d d f e d e4 |
  d8 d16 d d8 f e d a4 | \abr
  
  
  a8. a16 e'8. e16 e8 d e e |
  e  e e e e e d4 |  
  
  d8 d d f e d e e  |
  d8 d d f e d a4 | \abr
  
  
  e'8. d16 e8. e16 e8 d  e e  |
  e  e e e e d e4 |
  
  d8 d d f e d e e |
  d d d f e d a4 | \abr
  
  a8. a16 e'8. e16 e8 d e e |
  e e e e e d d4 
  
  d8 d d f e d  e e |
  d d d f e d a4\fermata |
  
  a8. a16 e'8 e e d c e |
  e e e d e d e4 |
  d8 d d f e d e e |
  d d d f e d a4 | \abr
  
  a8. a16 e'8. e16 e8 d e e |
  e e e e e e d4 |
  d8 d d f e d e e |
  d d d f e d a[( e'~]) |
  
  e2.\fermata \bar "" \break r8 e~ | \break
  e8 d e8 d e d e e~ |
  e  e e e e e d4 |
  
  d8 d d f e d e4 |
  d8 d16 d d8 f e d a4 | \abr
  
  
  a8. a16 e'8. e16 e8 d e e |
  e  e e d e d d4 |  
  
  d8 d d f e d e4  |
  d8 d d f e d a4 | \abr
  
  e'8. e16 e8. e16 e8 e e e |
  e d e e e d e4
  d8 d d f e d e e\fermata |
  b b b d c b a4\fermata \bar "|."
  
   
}

voicethree = \relative c' {
  \global
  \partial 8 r8 |
  r1 r
  b8 b b d c b c4 |
  b8 b16 b b8 d c b a4 |
  
  a8. a16 c8. c16 c8 b c c |
  c b c c c b c[( b])  |
  b b b d c b a e' |
  b b b d c b a4 |
  
  a8. a16 a8. c 16 c8 c c a |
  a c c b c b c4 |
  
  b8 b b b b b c c |
  b b b d c b a4
  
  a8. a16 a8. a16 a8 a c a |
  a c c c c b c[( b]) |
  
  b8 b b b c b c a |
  b b b d c b a4~ |
  
  a4\fermata r r r|
  b8 c c b a b c4 |
  b8 b b b c b a c |
  b b b b c b a4
  
  a8. a16 c8. c16 c8 b c c |
  c c c b c  b c r |  
  b b b b c b a a |
  b b b b c b a4~ |
  a1\fermata
  
  r1 r
  b8 b b d c b c4 |
  b8 b16 b b8 b c b a4 |
  
  a8. b16 c8. c16 c8 b c a |
  a b c b c b c4 |
  b8 b b b c b c4
  b8 b b d c b a4 
  
  a8. b16 c8. b16 c8 c c c |
  c c c a a c c[( b]) |
  b b b b c b a c\fermata |
  b g g g g f a4\fermata
  
   
}


lyricone = \lyricmode {
 
  
}

lyrictwo = \lyricmode {
  По -- ле -- те -- ли коп -- те -- ры, по -- ле -- те -- ли, си -- зы -- е,
  по по -- лю, по по -- люш -- ку, ой, да по не -- бу сыз -- но -- ва.
  
  Ой, же -- лез -- на -- я ты пти -- ца, не по -- нять те -- бе ме -- ня,
  всё ле -- та -- ет над зем -- ли -- цей, коп -- тер, пти -- ца без гне -- зда.
  
  На зем -- ле си -- дел анд -- ро -- ид, о -- пус -- тив -- ши го -- ло -- ву,
  от че -- го тос -- ку -- ет ро -- бот, да~от ап -- грей -- да но -- во -- го.
  
  Ой, да ты ка -- ка́ сис -- те -- ма, как с_то -- бой у -- пра -- вить -- ся,
  о те -- бе ни -- чё не зна -- ем, толь -- ко нам всё нра -- вит -- ся.
  
  И взле -- те -- ла ро -- бот пти -- ца, ло -- пас -- ти не кру -- тят -- ся,
  раз -- ря -- ди -- лась ба -- та -- ре -- я, джи -- пи -- эс не гру -- зит -- ся.
  
  Коп -- те -- ры ле -- та -- ют в_не -- бе, то -- ка -- ми на -- сы -- ще -- ны,
  у -- ле -- тят от нас ког -- да то, а мы не о -- ты -- щем их.
  
  По -- ле -- те -- ли коп -- те -- ры, по -- ле -- те -- ли, си -- зы -- е,
  по по -- лю, по по -- люш -- ку, ой, да по не -- бу сы -- зно -- ва.
   
  Он ле -- тит на вы -- со -- те, да на о -- со -- бой час -- то -- те,
  Коп -- тер крыль -- я -- ми шур -- шит, да и по не -- бу ле -- тит.
  
  Буд -- то шмель ле -- тит жуж -- жа -- щий, слы -- шу ра -- ди -- о -- шу -- мы,
  зна -- ем, ро -- бо -- ты все -- силь -- ны, жаль, что ро -- бо -- ты не мы. 
   
}

lyricthree = \lyricmode {
  По -- ле -- те -- ли коп -- те -- ры, по -- ле -- те -- ли, си -- зы -- е,
  по по -- лю, по по -- люш -- ку, ой да по не -- бу сыз -- но -- ва.
  
  Ой, же -- лез -- на -- я ты пти -- ца, не по -- нять те -- бе ме -- ня,
  всё ле -- та -- ет над зем -- ли -- цей, коп -- тер, пти -- ца без гне -- зда.
  
  На зем -- ле си -- дел анд -- ро -- ид, о -- пус -- тив -- ши го -- ло -- ву,
  от че -- го тос -- ку -- ет ро -- бот, да~от ап -- грей -- да но -- во -- го.
  
  Ой, да ты ка -- ка́ сис -- те -- ма, как с_то -- бой у -- пра -- вить -- ся,
  о те -- бе ни -- чё не зна -- ем, толь -- ко нам всё нра -- вит -- ся.
  
  И взле -- те -- ла ро -- бот пти -- ца, ло -- пас -- ти не кру -- тят -- ся,
  раз -- ря -- ди -- лась ба -- та -- ре -- я, джи -- пи -- эс не гру -- зит -- ся.
  
  Коп -- те -- ры ле -- та -- ют в_не -- бе, то -- ка -- ми на -- сы -- ще -- ны,
  у -- ле -- тят от нас ког -- да то, а мы не о -- ты -- щем их.
  
  По -- ле -- те -- ли коп -- те -- ры, по -- ле -- те -- ли, си -- зы -- е,
  по по -- лю, по по -- люш -- ку, ой да по не -- бу сы -- зно -- ва.
   
  Он ле -- тит на вы -- со -- те, да на о -- со -- бой час -- то -- те,
  Коп -- тер крыль -- я -- ми шур -- шит, да и по не -- бу ле -- тит.
  
  Буд -- то шмель ле -- тит жуж -- жа -- щий, слы -- шу ра -- ди -- о -- шу -- мы,
  зна -- ем, ро -- бо -- ты все -- силь -- ны, жаль, что ро -- бо -- ты не мы. 
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
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voiceone" { \oneVoice \voiceone }
      >> 
      
      \new Lyrics \lyricsto "voiceone" { \lyricone }
      \new Lyrics = "mainvocal"
      
      \new Staff = "stafftwo" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "mainvocal" { \voiceOne \voicetwo }
        \new Voice = "voicethree" { \voiceTwo \voicethree }
      >> 
      
%      \new Lyrics \lyricsto "mainvocal" { \lyrictwo }
      \context Lyrics = "mainvocal" {
        \lyricsto "mainvocal" { \lyrictwo } }


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
    \tempo 4=120  }
}
}
