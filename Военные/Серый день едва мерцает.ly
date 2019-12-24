\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Серый день едва мерцает…"
  %composer = "Composer"
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
  \key es \major
  \time 2/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

tubevoice = \relative c' {
  \global
  \dynamicNeutral
  es4 es8. es16 |
  g8 es g es |
  g4 g8. g16 bes8 g bes g |
  bes4 bes8. bes16 |
  es8-\markup\bold"rit." bes es bes |
  es2~ |
  es \bar "||" \break
  
}

solovoice = \relative c'' {
  \global
  \autoBeamOff
  \dynamicNeutral
  R2*8
  %\time 4/4
  g8 bes c bes g bes c bes |
  g bes es es d2 | \abr
  
  f,8 as es' es d d d c |
  bes f g as g4 bes8. bes16 | \abr
  
  bes2~ bes4 r |
  r2. bes8. bes16 \abr
  
  bes2 r |
  r2 r \bar "||"
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  R2*8

  \oneVoice
  <g es>4. q8 q4. q8 |
  q4. q8 <as f bes,>4 q8 q |
  q4. q8 q4. q8 |
  q4( <g es bes>8) <as f bes,> <g es>4 r |
  \voiceOne 
  
  g8 bes c bes <g es> bes c bes |
  g  <g bes> <g es'> q <as d>4 r
  
  <f d>8 as <as es'> q <as d> q q <as c> |
  <as bes> q <bes g'> <bes f'> <bes es>4 r
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  R2*8
  s1*4
  es8 <es g> q q q q q q |
  es es es es <f bes,>4 r |
  
  <d bes>8 <f bes,> q q q q q q |
  q q <f c> <as d,> <g es>4 r
}


lyricsolo = \lyricmode {
  \set stanza = "1. " Се -- рый день е -- два ме -- рца -- ет, ско -- ро ночь при -- дёт
  о -- фи -- це -- рство на -- чи -- на -- ет свой но -- чной об -- ход! Марш впе -- рёд!
  Марш впе -- рёд!
}

lyricchoir = \lyricmode {
  День ме -- рца -- ет, ночь при -- дёт о -- фи -- цер -- ство свой но -- чной об -- ход!
  Бле -- щут ша -- шки бо -- е -- вы -- е, шпо -- ры чуть зве -- нят,
  на по -- го -- нах зо -- ло -- ты -- е звё -- здо -- чки го -- рят.
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
  <<
      \new Staff = "tube" \with {
        instrumentName = "Труба"
        midiInstrument = "trumpet"
      } <<
        \new Voice = "tube" { \oneVoice \tubevoice }
      >> 
      
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Соло"
        shortInstrumentName = "Соло"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solo" { \oneVoice \solovoice }
      >> 
      
      \new Lyrics \lyricsto "solo" { \lyricsolo }
  
      \new Staff = "downstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Хор"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >>
      
      \new Lyrics \lyricsto "soprano" { \lyricchoir }
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
    \tempo 4=90
  }
}

       \markup {
         \vspace #2
       \column { 2. }
       \column { \line { Впереди полковник бравый,  }
                        \line { с ним хорунжих ряд, }
       \line { Жаждой удали и славы  }
        \line { очи их горят. }
       \line { Марш вперёд! }
       \line { Длится вольность удалая,  }
        \line { древние века }
       \line {  Сагайдачного, нечая,  }
        \line { слава Ермака. }}
          
       \hspace #4
        \column { 3. }
       \column { \line { Раздаются песен звуки  }
                        \line { славных казаков }
       \line { Про великие заслуги  }
        \line { дедов и отцов. }
       \line { Марш вперёд! }
       \line { Про Сибири покоренье,  }
        \line { вечную войну }
       \line {  Про Азовское сиденье  }
        \line { и тоску в плену. }}
          
       \hspace #4
      \column { 4. }
       \column { \line { Русь, смотри, какую силу  }
                        \line { казаки таят, ― }
       \line { За тебя сойти в могилу  }
        \line { каждый будет рад. }
       \line { Марш вперёд! }
       \line { Светит месяц над бараком,  }
        \line { офицерство спит. }
       \line {  Снится битвы шум далёкий,  }
        \line { славу им сулит. }}
      }
      
}
