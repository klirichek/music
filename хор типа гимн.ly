-*- template; template-run;
\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Title"
  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
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
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
    \key d \minor
    \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  d4\ff  d\f d\p d
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d4 d d d
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \bort
  c4\mf c\mp c\p c
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  c4 c c c
}

lyricscore = \lyricmode {
  bas bas bas
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator

}
\score {
  %  \transpose c bes {
%  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
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
%    #(layout-set-staff-size 20)
    \context {
      \Score
    }
    \context {
      \Staff
%        \RemoveEmptyStaves
%        \RemoveAllEmptyStaves
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
