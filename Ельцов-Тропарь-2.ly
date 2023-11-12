\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Тропарь №2"
  composer = "Ельцов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

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
  
  \key c \major
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  c4\mf c b |
  c2 c4 |
  f4 f d |
  c2 b4\> |
  c2\! r4 | \break
  
  b4 b b |
  c2 c8\< c\! |
  d2 d4\< |
  e2\! r4 | \break
  
  c2\mf c4 |
  c2 c4 |
  f4 f d |
  c2\>( b4\!) | \abr
  
  c2 r4 |
  R2. |
  R |
  R |
  R | \abr
  
  r2 b8\mf b\< |
  c2\! c4 |
  c2 d4 |
  c2 b8\> b |
  c2.\p \bar "||"
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  g4 g g |
  g2 g4 |
  a a a |
  g2 g4 |
  g2 r4 |
  
  gis4 gis gis |
  a2 a8 a |
  b2 b4 |
  c2 r4 |
  
  a2 a4 |
  g2 g4 |
  a a a |
  g2. |
  
  g2 g4 |
  g2 g4 |
  f2 g4 |
  a2 f4 |
  e2 d4 |
  
  e2 g8 g |
  g2 g4 |
  <f a>2 a4 |
  g2 g8 g |
  g2.
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e4 e d |
  e2 e4 |
  d4 d f |
  e2 d4 |
  e2 r4 |
  
  e4 e e |
  e2 e8 e |
  g2 g4 |
  g2 r4 |
  
  f2 f4 |
  e2 e4 |
  d d f |
  e2( d4) |
  
  e2 e4 |
  e2 e4 |
  d2 e4 |
  f2 d4 |
  c2 b4 |
  
  c2 d8 d |
  e2 e4 |
  f2 f4 |
  e2 d8 d |
  e2.
}


bassvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  c4\mf c g |
  c2 c,4 |
  f4 d f |
  g2 g,4\> |
  c2\! r4 |
  
  e4 e e |
  a2 a8\< a\! |
  g2 g4 \< |
  c2\! r4 |
  
  f,2 a4 |
  c2 c,4 |
  f d f |
  g2\>( g,4)\! |
  
  c2\mp c4 |
  c2 c4 |
  d2 c4 |
  f2 f4 |
  g2 g,4 |
  
  c2 g'8\mf g |
  c2 c4 |
  a2 f4 |
  g2 g,8\> g |
  c2.\p\fermata
}

lyricscore = \lyricmode {
  Бла -- го -- сло -- вен е -- си Хри -- сте Бо -- же наш,
  и -- же пре -- муд -- ры лов -- цы яв -- лей,
  низ -- по -- слав им Ду -- ха Свя -- та -- го, и те -- ми 
  у -- дов -- лей все -- лен -- ну -- ю, Че -- ло -- ве -- ко -- люб -- че, сла -- ва Те -- бе.
}


\bookpart {
  \paper {
    top-margin = 20
    left-margin = 25
    right-margin = 20
    bottom-margin = 45
    indent = 20
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
      \transpose c bes, {
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
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
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
      }  % transposeµ
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
