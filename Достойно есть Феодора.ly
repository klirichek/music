\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Достойно есть"
  composer =  \markup { \right-column { "Распев царя Феодора," "обр. Е. Кустовского" } }
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = {}

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
  \key g \major
  \time 4/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \override DynamicText.X-offset = #-2.5
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t

}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  b2 b~ |
  b2. b4 |
  b1 |
  b2 b4 b |
  b2. b4 |
  b2 b |
  b b4 b | \abr
  b2 b |
  
  b2. b4 |
  b1 |
  b2 b4 b |
  c2 c8([ d] a4) |
  b1 |
  
  b4 b b b |
  b2. b4 |
  b1 | \abr
  \co g4( a)  \cof \bar "|"
  b2( c4) c |
  
  d2 c |
  b2. b4 |
  b2 b4( c) |
  \co d2 d4 d d d \cof \bar "|"
  
  c2(~ c8[ d] a4 |
  b1) | \abr
  b2 b |
  b4 b b2 |
  
  d4 d d c |
  b( c) d d |
  e1~ |
  e | \abr
  
  e2 d |
  c d4 d |
  e e d c |
  b4.( c8 d4) c |
  
  d1 | \abr
  b2 b4 b |
  b2 b |
  b2. b4 |
  
  b1 |
  g4( a b2) |
  \co b4 b b b b b \cof \bar "|"
  b1 |
  b | \bar "|." \abr
  
  b2 b~ |
  b2. b4 |
  b1 | \bar "||" b1 
  
  b \bar "||"
  b4 b c2 
  c8[( d]) a4 b2 \bar "|."
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  g2 g( |
  e4. fis8 g4) fis |
  g1 |
  b4.( a8) g4 fis |
  
  e4.( fis8 g4) fis |
  g2 e4( fis) |
  g2 fis4 fis |
  e2 d |
  
  e4.( fis8 g4) fis |
  g1 |
  g2 g4 g |
  g2 fis4( a) |
  b1 |
  
  g4 g fis fis |
  e4.( fis8 g4) fis |
  g1 |
  e4( fis) 
  g2( a4) a |
  
  b2 a |
  b4.( a8 g4) a4 |
  b2 g4( a) |
  b2 b4 b b b |
  
  a( g fis e |
  b'1) |
  g2 e4.( fis8) |
  g4 fis g2 |
  
  g4 g fis fis |
  g2 fis4 fis |
  e4.( fis8 g4 a |
  b1 )
  
  c2 b |
  a b4 b |
  c c b a |
  g4.( a8 d4) c |
  
  b1 |
  b2 b4 a |
  g2 fis |
  e4.( fis8 g4) fis |
  
  fis1 |
  e4( fis g2) |
  fis4 fis e e fis fis |
  e4.( fis8 g4 fis) |
  e1 |
  
  g2 fis( |
  e4. fis8 g4) fis |
  g1 |
  e2( d) |
  e1 |
  g4 g g2 |
  fis4 fis fis2
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  b2 b~ |
  b2. b4 |
  b1 |
  b2 b4 b |
  
  b2. b4 |
  b2 b4( c) |
  d2 c4 c |
  b2 a |
  
  b4.( c8 d4) c |
  b1 |
  e2 e4 e |
  e2 d4( c) 
  b1 |
  
  b4 b a a |
  g4.( a8 b4) d |
  d1 |
  e2 e( fis4) fis |

  g2 fis |
  e4.( fis8 g4) fis |
  e2 e4( fis) |
  g2 g4 g g g |
  
  fis( e d c |
  b1) |
  e2 e |
  e4 d d2 |
  
  d4 d d d |
  d2 c4 c |
  b2.( c4 |
  d1)
  
  e2 e |
  e e4 e |
  e e fis fis |
  e4.( fis8 g4) fis |
  
  g1 |
  g2 g4 fis |
  e2 d |
  e2( d4) c |
  
  b1 |
  c4( d e2) |
  d4 d e e d d |
  c4.( d8 e4 d) |
  b1
  
  b2 b~ |
  b2. b4 |
  b1 |
  b |
  
  b |
  e4 e e2 |
  d4 c b2
  
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  g2 fis( |
  e4. fis8 g4) fis |
  g1 |
  e2 d4 d |
  
  e2. d4 |
  e2 e |
  e d4 d |
  e2 fis |
  
  g4.( a8 b4) a |
  g1 |
  e2 e4 e |
  a,2 a |
  b1 |
  
  g'4 g d d |
  c2. d4 |
  g1 |
  e2 |
  e2. e4 |
  e2 e |
  e2. d4 |
  e2 e |
  e e4 e e e |
  
  a,1( |
  b) |
  e2 d |
  c4 d g2 |
  
  b4 b b a |
  g2 d4 d |
  e4.( fis8 g4 fis |
  g1) |
  
  c2 g |
  a g4 g |
  c, c d d |
  e2. e4 |
  
  e1 |
  e2 e4 d |
  c2 d |
  e4.( fis8 g4) a |
  
  b1 |
  c |
  d4 d e e d b |
  a4.( b8 c4 b) |
  e,1 |
  
  g2 fis2( |
  e4. fis8 g4) fis |
  g1 |
  e2( d) |
  
  e1 |
  e4 e a,2 |
  a4 a b2
}

lyricscore = \lyricmode {
  До -- сто -- йно есть я -- ко во --
  и -- сти -- ну бла -- жи -- ти Тя, Бо -- го -- ро -- ди -- цу,
  При -- сно бла -- же -- нну -- ю
  и Пре -- не -- по -- ро -- чну -- ю и Ма -- терь
  Бо -- га на -- ше --  го. Че -- стне -- йшу -- ю Хе -- ру -- вим __
  и Сла -- вне -- йшу -- ю без сра -- вне -- ни -- я Се -- ра -- фим, __
  без и -- стле -- ни -- я Бо -- га Сло -- ва Ро -- ждшу -- ю,
  су -- щу -- ю Бо -- го -- ро -- ди -- цу Тя
  ве -- ли -- ча -- ем, ве -- ли -- ча -- ем.
  И всех, и вся.
  А -- минь.
  И со ду -- хом тво -- им.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator

}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
    \new Staff = "tenorstaff" \with {
        instrumentName = \markup { \right-column { "Т (A)" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \oneVoice \clef "treble_8" \tenorvoice }
      >>
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бас" } }
        shortInstrumentName = \markup { \right-column { "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \oneVoice \bassvoice }
      >>
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
