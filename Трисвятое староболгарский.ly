\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Трисвятое"
  subtitle = "(староболгарского распева)"
  %composer = "Composer"
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
%  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \key e \minor
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \mark \default
  g2 b4( a) |
  g( fis8[ g]) e4( fis) |
  g2 b4( a) |
  g( fis8[ g]) e4.( fis8) \abr
  
  g4( fis8[ g]) a[( b]) a[( b]) |
  c[( d c b ]) b4 a |
  c8[( b a g] a[ b]) c4 |
  b1 | \bar "||"
  
  %\break
  
  \mark \default
  g2 b4( a) |
  g( fis8[ g]) e4( fis) |
  g2 b4( a) |
  g( fis8[ g]) e4( fis) \abr
  
  g4( fis8[ g]) a[( b]) a[( b]) | 
  
  c[( d c b ]) b4 a |
  c8[( b a g] a[ b]) c4 |
  b1 | \bar "||"
  
  \abr
 % \break
  
  \mark \default
    g2 b4( a) |
  g( fis8[ g]) e4( fis) |
  g2 b4( a) |
  g( fis8[ g]) e4( fis) 
  g4( fis8[ g]) a[( b]) a[( b]) | \abr
  
  c[( d c b ]) b4 a |
  g2 fis
  e1 | \bar "||"
  g\breve \bar "||"
  
  %\break
  
  
  g4( fis8[ g]) a[( b]) a[( b]) | 
  
  c[( d c b ]) b4 a |
  g2 fis
  e1
  \bar "||"
  \abr
  
  \mark \default
  
  << {e'2 e  e <e a,> b b |
     c a |
     b2 } \new Voice {\voiceThree g4( a) b( a) 
                      
  g4 fis8[( g]) s2 
  g4( a) b( a) |
  g4( fis8[ g]) s2 |
  g4( fis8[ g])} >>
  \voiceOne
  a8[( b]) a[( b]) |
  c([ d c b])
  b4 a |
  << { c8[( b a <b g>] c4) } \new Voice { \voiceThree s2 fis,8[ g] } >>
   
   \voiceOne <a d>4 |
   <g e'>1
  \bar "||" 
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e2 g4( fis) |
  e2 e |
  e g4( fis) |
  e2 e |
  
  e fis8[( g]) fis[( g]) |
  e2 e4 e |
  e2. e4 |
  e1 |
  
  e4( fis) g( fis) |
  e2 e |
  e4( fis) g( fis) |
  e2 c |
  e2 fis8[( g]) fis[( g]) |
  
  e2 e4 e |
  e2. e4 |
  e1 |
  
  e4( fis) g( fis) |
  e2 c |
  e4( fis) g( fis) |
  e2 c |
  
  e2 fis8[( g]) fis[( g]) |
  
  e2 e4 e |
  e2 d? |
  b1 |
 
 e\breve
  
 e2 e4 e |
 e2 e4 e |
 e2 d? |
 b1
 
 e4( fis) g( fis) |
 e2 e4( fis) |
 e( fis) g( fis) |
 e2 e4( fis) |
 
 e2 fis8[( g]) fis[( g]) |
 e2 e4 e |
 e2. d4 |
 e1
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \bort
  b2 b |
  c c |
  b b |
  c c |
  b b4 b |
  c2 b4 c |
  c2. a4 |
  b1 |
  
  b2 b |
  c c |
  b b |
  c c8[( b] a4) |
  b2 b4 b |
  c2 b4 c |
  c2. a4 |
  b1 |
  
  b2 b |
  c c8[( b] a4) |
  b2 b |
  c c8[( b] a4) |
  
  b2 b4 b |
  c2 b4 c |
  b2 b4( a) |
  g1 |
  
  b\breve
  
  b2 c4 c8[( b]) |
  a2 b4 c |
  b2 b4( a) |
  g1
  
  b2 b |
  c c8[( d c a]) |
  b2 b |
  c c8[( b] c4) |
  b2 c4 c8[( b]) |
  c2 b4 c |
  fis,8[( g a b] c4)  a4 
  
  b1
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  e2 e |
  a, a |
  e' e |
  a, a |
  e' e4 e |
  a2 g4 g |
  fis8[( g a b] a[ g]) fis4 |
  e1
  
    e2 e |
  a, a |
  e' e |
  a, a |
  e' e4 e |
  a2 g4 g |
  fis8[( g a b] a[ g]) fis4 |
  e1
  
  e2 e |
  a, a |
  e' e |
  a, a |
  e' e4 e |
  <e a,>2 <e g,>4 <e a,> |
  b2 b |
  e1
  
  e\breve |
  
  e2 a4 a8[( g]) |
  fis2 g4 a |
  b2 b, |
  e1
  
  <e e,>2 q |
  <e a,> q |
  <e e,> e2 |
  <e a,> q |
  
  e2 e4 e |
  <e a,>2 <e g,>4 <e a,> |
  q2. <fis fis,>4 |
  <e e,>1
}

lyricscore = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \set stanza = "1. " Свя -- ты́й Бо -- же, Свя -- ты́й Креп -- кий,
  Свя -- ты́й без -- смерт -- ный, по -- ми -- луй нас.
  
    \set stanza = "2. " Свя -- ты́й Бо -- же, Свя -- ты́й Креп -- кий,
  Свя -- ты́й без -- смерт -- ный, по -- ми -- луй нас.
  
  \set stanza = "3. " Свя -- ты́й Бо -- же, Свя -- ты́й Креп -- кий,
  Свя -- ты́й без -- смерт -- ный, по -- ми -- луй нас.
  
  Слава…_и_ныне…_Аминь:
  
  Свя -- ты́й без -- смерт -- ный, по -- ми -- луй нас.
  
    \set stanza = "4. " Свя -- ты́й Бо -- же, Свя -- ты́й Креп -- кий,
  Свя -- ты́й без -- смерт -- ный, по -- ми -- луй нас.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 25
    indent = 20
    %ragged-bottom = ##t
    ragged-last-bottom =  ##f
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
