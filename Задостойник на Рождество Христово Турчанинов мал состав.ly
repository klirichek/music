\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Задостойник Рождества"
  subtitle ="(для малого состава)"
  composer = "муз. Турчанинова"
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
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key g \minor
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 2 bes4 c |
  d1( |
  c2 bes4 a |
  bes1) | \breathe|
  c4( d es) f |
  d2. bes4 |
  d1( |
  c2) d |
  es1( |
  d4 es d) c |
  bes2 a |
  bes1 \breathes |
  bes2( c4 d) |
  es1( |
  d4 c) es( d) |
  c2. d4 |
  es2 d4 d |
  c1 |
  
  bes4( a bes c |
  d2) c |
  c( bes4 a) |
  bes( c bes a) |
  g2( a) |
  c c |
  c c |
  c1 |
  c4( d es f |
  es d) c( bes) |
  d1( |
  c2) bes4( a) |
  bes1\fermata | \bar "||"
  \key f \major a1 |
  a2 a4( bes) |
  c2( d4 c |
  bes2) a |
  bes4( c bes a) |
  g( a bes2) |
  bes bes4( a) |
  c1 |
  c2 a |
  
  f4( g a2 |
  g1) |
  f~ |
  f2 \breathe f4( g) |
  a2 g |
  g a4( bes) |
  a2 b |
  c1 |
  
  % page 2
  a2 g4( b |
  c2) d |
  c c |
  b1 |
  c |
  c2 c4( d) |
  es2( d4 c) |
  bes1 |
  bes2 c4( d) |
  es1 |
  es2 <es c> 4( <d bes>) |
  c2. c4 |
  bes1 |
  c2 d4( es) |
  f2( es  4 d |
  c bes) a( bes) |
  c1 |
  a2 a4( bes) |
  c2. bes4 |
  a1 |
  bes1~ |
  bes2 \breathe bes4( c) |
  d2 c |
  bes4( c d2 |
  c1 |
  bes4 c bes a) |
  g1 |
  c2 c |
  c1 |
  c2 g |
  g1~ |
  g \fermata |
  \bar "||"
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 2 g4 a |
  bes1( |
  a2 g4 fis |
  g1) |
  a4( bes c) a |
  bes2. f4 |
  bes1( |
  a2) bes |
  c1( |
  
  bes4 c bes) a |
  g2 fis |
  g1 |
  g2( a4 bes) |
  c1( |
  bes4 a) c( bes) |
  a2. bes4 |
  c2 bes4 bes |
  a1 |
  
  g4( fis g a |
  bes2) a |
  a( g4 fis) |
  g( a g f) |
  e2( f) |
  g a |
  g4( f) e( f) |
  g1 |
  
  a4( bes c d |
  c bes) a( g) |
  bes1( |
  a2) g4( fis) |
  g1\fermata
  
  \key f \major
  f1 |
  f2 f4( g) |
  a2( bes4 a |
  g2) fis |
  g4( a g f) |
  e( f g2) |
  g2 g4( f) |
  g2( a4 bes) |
  a( g) f2 |
  d4( e f2 |
  e1) |
  d~ |
  d2 d4( e) |
  f2 e |
  e f4( g) |
  f2 f |
  e1
  
  f2 f |
  g g |
  g g |
  <f g>1 |
  <e g> |
  a2 a4( bes) |
  c2( bes4 a) |
  g1 |
  g2 g |
  
  g1 |
  g1
  a2. a4 |
  g1 |
  a2 bes4( c) |
  d2( c4 bes |
  a g) f( g) |
  a1 |
  f2 f4( g) |
  
  a2. g4 |
  fis1 |
  g~ |
  g2 g4( a) |
  bes2 a |
  g4( a bes2 |
  a1 |
  g4 a g f) |
  e1 |
  
  e4( f) g( f) |
  g2( a4 bes) |
  a4( g) f( e) 
  <d f>1 |
  e\fermata
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 2 d4 f |
  f1( |
  f4 es d2 |
  d1) \breathe |
  f2. f4 |
  f2. d4 |
  f1 ~ |
  f2 f |
  f1~ |
  f2. es4 |
  d2 d |
  d1 \breathes |
  d2( f) |
  f1~ |
  f2. f4 |
  f2. f4 |
  f2 f4 f |
  f1 |
  
  d2.( f4 |
  f2) es |
  d1 |
  d4 r r2 |
  c1 |
  e2 f |
  e4( d) c( d) |
  e1 |
  f1~ |
  f2 d |
  d1( |
  d2) d |
  d1\fermata 
  
  \key f \major
  c1 |
  c2 c |
  f1( |
  d2) d |
  d2 r4 r |
  c1 |
  c2 c |
  e( f4 g) |
  f( e) d2 |
  
  a1( |
  cis1) |
  a1~ |
  a2 \breathe a4( c) |
  c2 c |
  c c |
  c d |
  c1 |
  
  c2 c4( f |
  e2) f |
  e e |
  d1 |
  c |
  f2 f |
  f2.( es4) |
  d1 |
  d2 c4( b) |
  
  c1 |
  c2 c |
  a2. d4 |
  d1 |
  f2 f |
  f1~ |
  f2 f |
  f1 |
  f2 f |
  
  d2. d4 |
  d1 |
  d1~ |
  d2 \breathe d4( f) |
  f2 d  |
  d4( f2. |
  f1 |
  c1) |
  c |
  c2 c |
  c1 |
  c2 b4( c) |
  <b g>1( |
  c1)\fermata
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 2 g4 f |
  bes1( |
  f2 g4 d |
  g1) \breathe |
  f2. f4 |
  bes2. bes4 |
  bes1( |
  f2) f |
  f1( |
  
  bes,4 a bes) c |
  d2 d |
  g1 \breathes |
  g2( f) |
  f1( |
  f2.) f4 |
  f2. f4 |
  f2 f4 f |
  f1 |
  g4( d g f |
  bes,2) c |
  d1 |
  g4 r r2 |
  c,1 |
  c2 c |
  c c |
  c1 |
  
  f1~ |
  f2 fis4( g) |
  g1( |
  d2) d |
  g1\fermata \bar "||"
  
  \key f\major
  f1 |
  f2 f |
  f1( |
  g2) d |
  g r4 r |
  c,1 |
  c2 c |
  c1 |
  c2 d |
  
  d1( |
  a) |
  d~ |
  d2 \breathe d4( c) |
  f2 c |
  c c |
  f g |
  c,1 |
  
  f2 e4( d |
  c2) b |
  c e |
  g1 |
  c, |
  f2 f |
  f2.( fis4) |
  g1 |
  g2 g |
  
  c,1 |
  c2 c |
  d2. d4 |
  g1 |
  f2 f |
  f1~ |
  f2 f |
  f1 |
  f2 f |
  
  fis2. g4 |
  d1 |
  g1~ |
  g2 \breathe g4( f) |
  bes2 fis |
  g4( f bes, d |
  f1 |
  c1) |
  c |
  
  c4( d) e( d) |
  e2( f4 g) |
  f( e) d( c) |
  g1( |
  c1)\fermata |
  \bar "||"
}

lyricscore = \lyricmode {
  Ве -- ли -- чай, ве -- ли -- чай, ду -- ше мо -- я, ду -- ше мо -- я,
  чест -- ней -- шу -- ю и слав -- ней -- шу -- ю гор -- них во -- инств, Де -- ву
  пре -- чи -- сту -- ю Бо -- го -- ро -- ди -- цу.
  Лю -- би -- ти у -- бо нам, я -- ко без -- бед -- но -- е стра -- хом,
  у -- до -- бе -- е мол -- ча -- ни -- е, лю -- бо -- ви -- ю же, Де -- во, 
  пес -- ни тка -- ти спро -- тя -- жен -- но сло -- жен -- ны -- я, 
  не -- у -- доб -- но есть, но и, ма -- ти, си -- лу, е -- ли -- ко есть
  про -- из -- во -- ле -- ни -- е, даждь.
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
      \tempo 4=120
    }
  }
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
      
      \new Staff = "tenor" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \oneVoice \clef "treble_8" \tenorvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \layout {
      #(layout-set-staff-size 19)
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
  }
}
