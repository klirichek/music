\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Sanctus"
  subtitle = "(Requiem, №3)"
  composer = "Gabriel Fauré"
  arranger = "ed. by Pawel Jura"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

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
placeDynamicsLeft = { \override DynamicText.X-offset = #-1.5 }

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
  
  \key es \major
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \autoBeamOff
  \tempo "Andante moderato"
  R2.*2
  bes2\pp c4~ |
  4 bes( as) |
  bes4. r8 r4 | \abr
  
  R2. |
  bes2 c4~ |
  4 bes as |
  bes4. r8 r4 |
  R2. | \abr
  
  bes4\p\< c des~ |
  4\> bes( as) |
  bes4.\! r8 r4 |
  R2. |
  bes4(\p\< c) des~ | \abr
  
  4\> bes as |
  bes4.\! r8 r4 |
  R2. |
  bes4(\p\< c) d |
  f4.\> e8 d4\! | \abr
  
  d2( c4) |
  d2~ 8 r |
  R2.*4
  
  bes4 bes es |
  es d c |
  bes2. |
  bes | \abr
  
  R2.*4
  bes4 c des | \abr
  
  f4.( es8) des4 |
  des2( c4) |
  bes2. |
  bes4^\markup\italic "poco a poco cresc." c d |
  es( f) g | \abr
  
  es2( d4) |
  es2\f r4 |
  R2.*4 | \abr
  
  r2 r8 es\ff |
  es2-> es4 |
  as,( bes) c |
  es2\decresc es4 |
  as,( bes) c |
  es2.\p | \abr
  
  es2\pp r4 |
  g,2. |
  g~ |
  2. |
  R2.*6
  
  \bar "|."
  
  
  
  
  
}


altvoice = \relative c' {
  \global
  \autoBeamOff
  R2.*53
  es2.
  es~
  2.
  R2.*6 \bar "|."
  
  
  
}


tenorvoice = \relative c' {
  \global
  \autoBeamOff
  R2.*4
  bes2\pp c4~ | \abr
  
  4 bes( as) |
  bes4. r8 r4 |
  R2. |
  bes2 c4~ |
  4 bes as | \abr
  
  bes4. r8 r4 |
  R2. |
  bes4\p\< c d?~ |
  d\> bes( as) |
  bes4.\! r8 r4 | \abr
  
  R2.
  bes4\pp\<( c) d?~ |
  d\> bes as |
  bes4.\! r8 r4 |
  R2.*3 |
  
  a2 b4~ |
  b a g |
  a2~ 8 a | \abr
  
  bes2. |
  R2.*4
  
  bes4. bes8 es4 |
  es d c |
  bes2. |
  bes |
  R2.*8
  
  % R*2
  r4 r r8 es8\ff |
  es2-> es4 |
  as,( bes) c |
  es2 es4 | \abr
  
  as,( bes) c |
  es2. |
  es4. r8 r4 |
  R2.*3
  
  <g, bes>2.\pp~ |
  2. |
  q~ |
  2. |
  R2.*6
 
  
}


bassvoice = \relative c' {
  \global
  \autoBeamOff
  R2.*4
  bes2 c4~ |
  
  c bes( as) |
  bes4. r8 r4 |
  R2. |
  bes2 c4~ |
  c bes as | \abr
  
  bes4. r8 r4 |
  R2. |
  bes4 c d?~ |
  d bes( as) |
  bes4. r8 r4 | \abr
  
  R2. |
  bes4( c) d?~ |
  d bes as |
  bes4. r8 r4 |
  R2.*3
  
  a2 b4~ |
  b a g |
  a2~ 8 a | \abr
  
  bes2. |
  R2.*4
  
  bes4. bes8 es4 |
  es d c |
  bes2. |
  bes |
  R2.*8
  
  % R*2
  r4 r r8 es |
  es2-> es4 |
  as,( bes) c |
  es2 es4 | \abr
  
  as,( bes) c |
  es2. |
  es4. r8 r4 |
  
  R2.*3
  
  <bes, es>2.~ |
  2. |
  q~ |
  2. |
  R2.*6
  
  
}

lyricscores = \lyricmode {
 Sanc -- tus, Sanc -- tus,
 Sanc -- tus, Do -- mi -- nus,
 
 Do -- mi -- nus De -- us, De -- us
 Sa -- ba -- oth. Sanc -- tus, Do -- mi -- nus
 
 De -- us
 Ple -- ni sunt cæ -- li et ter -- ra.
 
 Ho -- san -- na
 in ex -- cel -- sis. Ho -- san -- na in ex --
 
 cel -- sis.
 Ho -- san -- na in ex -- cel -- sis, in ex -- cel --
 
 sis. Sanc -- tus.
}

lyricscorea = \lyricmode {
  
Sanc -- tus.
  
}

lyricscoret = \lyricmode {
 
 Sanc -- tus,
 Sanc -- tus, Sanc -- tus, Do -- mi -- 
 
 nus, Do -- mi -- nus De -- us,
 De -- us Sa -- ba -- oth.
 
 De -- us, De -- us Sa -- ba -- 
 oth.
 
 Glo -- ri -- a, glo -- ri -- a tu -- a.
 
 Ho -- san -- na in ex -- cel -- sis,
 in ex -- cel -- sis.
 
 Sanc -- tus.
 
}

lyricscoreb = \lyricmode {
  
}
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 25
    indent = 10
    ragged-last-bottom = ##f
    system-separator-markup = \slashSeparator
    
  }
  
  
   
  
\bookpart {

  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
%                \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
        \new Voice  = "alto" { \voiceTwo \dynamicDown \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
       \new Lyrics \lyricsto "alto" { \lyricscorea }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \dynamicDown \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
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
                \RemoveAllEmptyStaves
                \accidentalStyle modern-voice-cautionary
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}



