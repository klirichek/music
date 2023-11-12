\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Pater noster"
  composer = "Norbert Blacha"
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
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) 
\set Score.currentBarNumber = #2
}

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
  
  \key bes \major
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \tempo 4=60
  \dynamicUp
  \autoBeamOff
  \partiall bes8\( d^\markup\italic"ad libitum" |
  f4 f\) r8 f8\( g es |
  f4 f\) r2 |
  bes4\( a8 f g f es d \bar "||" \abr
  
  es4 <es c>2\) r8 es8\( |
  \time 2/4 d c bes c |
  \time 4/4 c4 c2\) r4 \bar "||"
  d8^\markup\italic"rubato" d r4 \tuplet 3/2 { f4 e d } | \abr
  
  e8 e r4 r2 |
  f8 g4 a8 g4 g |
  r4 f8 g a4 a \bar "||" \time 2/4 R2 \bar "||" \time 4/4 \abr
  
  <a d>4.\ff\( <a c>8^\markup\italic"a tempo" b4 a |
  g\> c c, f\) |
  e4\mf\( f8 g d4 e |
  c2.\) r4 \bar "||" \abr
  
  a'4.^\markup\italic"cantabile"\p\( a8 c4 c, |
  d4 d2\) r4 |
  bes'4.\( bes8 <g d'>4 d^\markup\italic"cresc." |
  e4 e2\) r4 |
  r8 c'\(^\markup\italic"pìu cresc." c c f, f g a | \abr
  
  bes8 bes4 bes8 a a a4 |
  g8 g g g g2 |
  g2 g4\) r4 \bar "||"
  a4\p^\markup\italic"dolce"\( a <f c'> c |
  d4 d2. | \abr
  
  bes'4. bes8 <g d'>4 d |
  e4 e2.\) |
  r8 <g c> \tuplet 3/2 { q q q } <f c'> q\( <f bes> <f a>\) | \abr
  
  r8 <f bes> \tuplet 3/2 { q q q } <e bes'> q\( <e a> <e g>\) \breathes |
  f4( g8[ a] g4. f8) |
  f1 \bar "|."
  
  
  
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  bes8 d c4 c r8 c c bes | 
  c4 c r2 |
  d4 d8 d d c bes bes |
  
  bes4 bes2 r8 a |
  bes g g g |
  g4 a2 r4 |
  a8 a r4 \tuplet 3/2 { d4 d a } |
  
  a8 a r4 r2 |
  c8 d4 d8 d4 e |
  r c8 f f4 f |
  R2 |
  
  f4.\ff f8 g4 g |
  d\> g c, d |
  c\mf c8 c c4 b |
  g2. r4 |
  
  f'4. f8 f4 c |
  c bes2 r4 |
  d4. d8 d4 d |
  d c r2 |
  r8 c c c c c c f |
  
  d8 d4 d8 d d d4 |
  d8 d d d <d f>2 |
  f2 e4 r |
  f f c c |
  c bes( c2) |
  
  d4. d8 d4 d |
  d c2. |
  r8 c \tuplet 3/2 { c c c } c c c c |
  
  r8 bes \tuplet 3/2 { bes bes bes } bes bes bes bes \breathes |
  c4( d8[ d] f4 e) |
  c1
  
}


tenorvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  bes8 d bes'4 bes r8 bes bes g |
  bes4 bes r2 |
  bes4 c8 c c c g f |
  
  g4 fis2 r8 f |
  f f f <\parenthesize g c,> |
  <f c>4 <f c>2 r4 |
  f8 f r4 \tuplet 3/2 { a4 a f } |
  
  e8 e r4 r2 |
  bes'8 c4 f,8 c'4 c |
  r4 bes8 c c4 c |
  R2 |
  
  d4.\ff d8 d4 d |
  c\> c a c |
  g4\mf g8 g f4 f |
  e2. r4 |
  
  c'4. c8 c4 f, |
  f f2 r4 |
  g4. g8 g4 g |
  g g2 r4 |
  r8 g g g a a a c |
  
  g8 g4 g8 f f f4 |
  g8 g g g g2 |
  c bes4 r |
  c c f, f |
  f f( fis2) |
  
  g4. g8 g4 g |
  g g2. |
  r8 g \tuplet 3/2 { g g g } a a a a |
  
  r8 f \tuplet 3/2 { f f f } g g g g \breathes |
  a4( g8[ g] c4 bes) |
  a1
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  bes8 d d4 d r8 d es c | 
  d4 d r2 | 
  g4 f8 d es d c bes |
  
  c4 c2 r8 c |
  bes a g e |
  f4 f2 r4 |
  <d' d,>4 q8 q q4 d |
  
  <c c,>\( c8 c a4 bes8[( c])\) |
  d8 c4 bes8 c4 c |
  r d8 c f,4 f |
  R2 |
  
  d'4.\ff d8 f4 f |
  e\> e a as |
  g\mf g8 g g,4 g |
  c2. r4 |
  
  f,4. f8 a4 a |
  bes4 bes2 r4 |
  g4. g8 bes4 bes |
  c4 c2 r4 |
  r8 a a a d d d d |
  
  g,8 g4 g8 a a a4 |
  bes8 bes bes bes b2 |
  c2 c4 r |
  f, f a a |
  bes bes( a2) |
  
  g4. g8 bes4 bes |
  c c( bes2) |
  r8 a \tuplet 3/2 { a a a } d d d d |
  
  r8 g, \tuplet 3/2 {g g g } c c c c \breathes |
  d4( bes8[ bes] c4 c) |
  f1
  
}

lyricscore = \lyricmode {
  Pá -- ter nó -- ster, qui es in cæ -- lis,
  san -- cti -- fi -- cē -- tur nó -- men Tú -- um.
  
  Ad -- vé -- niat Ré -- gnum Tú -- um.
  
  Fí -- at vo -- lún -- tas Tú -- a si -- cut in cæ -- lo, et in té -- rrā.
  
  Pá -- nem nó -- strum quo -- ti diā -- num da nó -- bis hó -- di -- e,
  et di -- mít -- te nó -- bis, et di -- mít -- te nó -- bis
  dé -- bĭ -- ta nó -- stra, si -- cut et nos di -- mít -- tĭ -- mus de -- bi -- tó -- rĭ -- bus nó -- stris.
  
  Et ne nos in -- dū -- cas in ten -- ta -- ti -- ō -- nem,
  sed lí -- bĕ -- ra nos a má -- lo,
  sed lí -- bĕ -- ra nos a má -- lo
  
  A -- men.
}

lyricscoreb = \lyricmode {
  Pá -- ter nó -- ster, qui es in cæ -- lis,
  san -- cti -- fi -- cē -- tur nó -- men Tú -- um.
  
  Ad -- vé -- niat Ré -- gnum Tú -- um.
  
  Vo -- lún -- tas Tú -- a, Vo -- lún -- tas Tú -- a si -- cut in cæ -- lo, et in té -- rrā.
  
  Pá -- nem nó -- strum quo -- ti diā -- num da nó -- bis hó -- di -- e,
  et di -- mít -- te nó -- bis, et di -- mít -- te nó -- bis
  dé -- bĭ -- ta nó -- stra, si -- cut et nos di -- mít -- tĭ -- mus de -- bi -- tó -- rĭ -- bus nó -- stris.
  
  Et ne nos in -- dū -- cas in ten -- ta -- ti -- ō -- nem,
  sed lí -- bĕ -- ra nos a má -- lo,
  sed lí -- bĕ -- ra nos a má -- lo
  
  A -- men.
}
  \paper {
    top-margin = 35
    left-margin = 25
    right-margin = 15
    bottom-margin = 35
    indent = 10
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  

\bookpart {
\header { piece = "B-dur" }
  \score {
     \transpose bes b {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "sopran" \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" {  \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
      \new Staff = "alt" \with {
        instrumentName = "Alt"%\markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName ="A" % \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "alto" {  \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
      
      \new Staff = "tenor" \with {
        instrumentName = "Tenor"%\markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = "T"%\markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "tenor" { \clef "treble_8"\tenorvoice }
         >> 
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "bass" \with {
        instrumentName = "Bass"%\markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = "B"%\markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
      
       \new Lyrics \lyricsto "bass" { \lyricscoreb }
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
      \tempo 4=60
    }
  }
}


\bookpart {
\header { piece = "C-dur" }
  \score {
     \transpose bes c' {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "sopran" \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" {  \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
      \new Staff = "alt" \with {
        instrumentName = "Alt"%\markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName ="A" % \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice  = "alto" {  \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
      
      \new Staff = "tenor" \with {
        instrumentName = "Tenor"%\markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = "T"%\markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "tenor" { \clef "treble_8"\tenorvoice }
         >> 
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "bass" \with {
        instrumentName = "Bass"%\markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = "B"%\markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
      >>
      
       \new Lyrics \lyricsto "bass" { \lyricscoreb }
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
      \tempo 4=60
    }
  }
}

