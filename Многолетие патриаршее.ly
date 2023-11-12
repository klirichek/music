\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Многая лета"
  subtitle = "Патриаршее"
  %composer = "Composer"
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
  
  \key e \minor
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \tempo "Maestoso"
   b4 b b |
   c c8[(\< d]) c[(\! b]) |
   a4 a a | \abr
   b b8[(\> c]) b[( a])\! | 
   
   \time 2/4 g8 g16 g fis8 fis |
   g8 g16 g fis8 fis |  \abr
   g[( b])  a\< fis\! |
   g[( a b]) c8 | 
   
   \time 3/4
   b8\f b b4 b8~8 |  \abr
   c4 c8[( d]) c[( b]) |
   d4 d c8~8 |
   b4 b8[(\> c]) b[( a])\! |  \abr 
   
   \time 2/4
   g8 g16 a\< b8 b\! |
   b8 b16 cis dis8 dis |  \abr
   e8[( g]) fis dis | 
   
   e4( d8) c |
   \time 3/4 b4\f b b8\< b\! |  \abr
   c4 c8[( d c b]) |  
   d4 d c | 
   
   b4 b8[( c b a]) |  \abr
   \time 2/4 g8 g16 a b8 b |
   b b16 cis\< dis8 dis\! |   \abr
   
   e8[( g]) fis dis |
   e4(\> d8) c\! |
   \time 3/4 b4 a g |  \abr
   b2. |
   e,\fermata \bar "|."
   
   
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
   g4 g gis |
   a8[( g]) fis[( e]) fis[( g]) |
   fis4 fis fis |
   g g8[( fis]) g[( fis]) |
   
   e8 e16 e dis8 dis |
   e e16 e dis8 dis |
   e[( g]) fis dis |
   e[( fis g]) a |
   
   g g g4 gis8~8 |
   a8[( g]) fis[( e]) fis[( g]) |
   fis4 fis fis8~8 |
   g4 g8[( fis]) g[( fis]) |
   
   e8 e16 e dis8 dis |
   e8 g16 g fis8 fis |
   g[( b]) a fis |
   
   g4( a8) a |
   g4 g gis8 gis |
   a8[( g]) fis[( e fis g]) |
   fis4 fis fis |
   
   g4 g8[( fis g fis]) |
   e8 e16 e dis8 dis |
   e g16 g fis8 fis |
   
   g8[( b]) a fis |
   g4( a8) a |
   g4 fis e |
   dis( e fis) |
   e2.
   
   
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
   d4 d e |
   e d d |
   d d d |
   d d d |
   
   b8 b16 b b8 b |
   b b16 b b8 b |
   b4 b8 b |
   b4( e8) d |
   
   d8 d d4 e8~8 |
   e4 d d |
   d d d8~8 |
   d4 d c |
   
   b8 b16 c b8 fis |
   g b16 b b8 b |
   b[( e]) dis b
   
   b4( d8) d |
   d4 d e8 e e4 d2 |
   d4 d d |
   
   d4 d2 |
   b8 b16 c b8 fis |
   g b16 b b8 b |
   
   b[( e]) dis b |
   b4( d8) d |
   d4 d b |
   b4( cis dis) |
   e2.
  
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  g4 g e |
  a a8[( b]) a[( g]) | 
  d4 d d |
  g g8[( a]) g[( d]) |
  
  e8 e16 e b8 b |
  e8 e16 e b8 b |
  e4 b8 b |
  e4. fis8 |
  
  g8 g g4 e8~8 |
  a4 a8[( b]) a[( g]) |
  d4 d d8~8 |
  g4 g8[( a]) g[( d]) |
  
  e8 e16 e b8 b |
  e8 e16 e b8 b |
  e4 b8 b |
  
  e4( fis8) fis |
  g4 g e8 e |
  a4 a8[( b a g]) |
  d4 d d |
  
  g g8[( a g d]) |
  e8 e16 e b8 b |
  e e16 e b8 b |
  
  e4 b8 b |
  e4( fis8) fis |
  g4 d e |
  b2. |
  e\fermata
  
}

lyricscore = \lyricmode {
  Мно -- га -- я, мно -- га -- я, мно -- га -- я, мно -- га -- я,
  мно -- га -- я ле -- та, мно -- га -- я ле -- та, мно -- га -- я ле -- та,
  со -- тво -- ри им, Го -- спо -- ди, да -- руй им, Го -- спо -- ди,
  мно -- га -- я ле -- та, мно -- га -- я ле -- та, мно -- га -- я
  
  ле -- та. Ки -- ри -- е э -- лей -- сон, Хри -- сте э -- лей -- сон, 
  мно -- га -- я ле -- та, мно -- га -- я ле -- та,
  мно -- га -- я ле -- та, мно -- га -- я ле -- та.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    %bottom-margin = 15
    bottom-margin = 45
    indent = 20
    ragged-last-bottom = ##f
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
        \accidentalStyle modern-voice-cautionary
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
