\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = ""
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
  \key f \major
  \time 3/4
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
  c c c
}

voicetwo = \relative c'' {
  \global
  c c c
}

voicethree = \relative c'' {
  \global
  c c c
}


lyricone = \lyricmode {
  one	
}

lyrictwo = \lyricmode {
  two
}

lyricthree = \lyricmode {
  three
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
      
      \new Staff = "stafftwo" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicetwo" { \oneVoice \voicetwo }
      >> 
      
      \new Lyrics \lyricsto "voicetwo" { \lyrictwo }
      
      \new Staff = "staffthree" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicethree" { \oneVoice \voicethree }
      >> 
      
      \new Lyrics \lyricsto "voicethree" { \lyricthree }
  

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
