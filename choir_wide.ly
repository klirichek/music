\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Заголовок"
  subtitle = " "
  composer = "Композитор"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
%abr = {}

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
    ))}

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
    \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoiceup = \relative c'' {
  \global
  \voiceOne
  
}

sopvoice = \relative c'' {
  \global
 
}

altvoice = \relative c'' {
  \global
  \voiceOne
  
}

altvoiceii = \relative c' {
  \global
  
}


tenorvoice = \relative c' {
  \global
  \voiceOne
  
}

tenorvoiceii = \relative c' {
  \global
 
  
}


bassvoice = \relative c' {
  \global
  \voiceOne
}

bassvoiceii = \relative c' {
  \global
  
}

lyricsi = \lyricmode {

}

lyricsii = \lyricmode {

}

lyricsa = \lyricmode {

}

lyricst = \lyricmode {

}

lyricsb = \lyricmode { 

}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
  
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "sopranoii" { \voiceOne \sopvoiceup }
        \new Voice = "soprano" { \sopvoice }
      >>
      \new Lyrics \with { alignAboveContext = "sopstaff" } \lyricsto "sopranoii" { \lyricsii }
      \new Lyrics \lyricsto "soprano" { \lyricsi }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \altvoice }
        \new Voice  = "alto" { \altvoiceii }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricsa }
      
      
      %\new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      %\new Lyrics \lyricsto "soprano" { \lyricscorethree }
  
      \new Staff = "tenorstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
        \new Voice = "tenorii" { \tenorvoiceii }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricst }
      
     \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
        \new Voice = "bass" { \clef bass \bassvoiceii }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsb }
    >>
        % transposeµ
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
    \tempo 4=60
  }
}
}

