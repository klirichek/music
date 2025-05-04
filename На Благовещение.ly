\version "2.24.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "7. На Благовещение"
  composer = " "
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
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

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
     \omit Staff.TimeSignature
  \numericTimeSignature
  \multirests
  \placeDynamicsLeft
  
  \key bes \major
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  bes2( a4 g a8[ bes]) c4 4 d8[( c bes a] bes[ c] d4) c4 bes2 |
  c4 d es( d8[ c] d4) c4 bes2 |
  bes4( a) g2 a8[( bes]) c4 bes8[( a]) bes2 |
  c4( d es2) d4 c bes2( a) bes1\fermata 
  c2 4 4 4 8[( d]) es4 d c2 d4 8[( c]) bes[( a]) bes[( c]) d2 c
  
  a4 bes c2 4 4 d4. 8 c4 4 bes2 a bes |
  r4 c4 d2 c bes a  | bes4( a) bes( c) 
  d4 8[( c]) bes[( c]) d4 c2( bes) a a4( bes) c2 4 4
  4 8[( d]) es4 d c2 c2 bes4 a bes c d d c2 
  es2 4 4 4 8[( d]) es4 d c2 4 d2 c4 bes1 a1\fermata
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  g2( f4 e f8[ g]) a4 4 bes8[( a g fis] g[ a] bes4) a4 g2
  a4 bes c(  bes8[ a] bes4) a4 g2 |
  g4( f) e2 f8[( g]) a4 g8[( fis]) g2 |
  
  a4( bes c2) bes4 a g2( fis) g1 |
  a2 4 4 4 8[( bes]) c4 bes a2 bes4 8[( a]) g[( fis]) g[( a]) bes2 a |
  
  f4 g a2 4 4 bes4. 8 a4 4 g2 fis g
  r4 a bes2 a g fis g4( fis) g( a) 
  bes4 bes8[( a]) g[( a]) bes4 a2( g)  f |
  f4( g) a2 4 4
  a4 8[( bes]) c4 bes a2 2 g4 fis g a bes bes a2
  c2 4 4 4 8[( bes]) c4 bes a2 4 bes2 a4 g1 f
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c1~4 f4 f f( d~8[ f]~4) f4 d2 |
  f4 f f2. f4 d2 |
  c2 c c4 f d d2 |
  f1 f4 es d1 d |
  f2 4 4 4 4 4 4 2 4 4 d4 d8[( f]) f2 2 |
  
  c4 4 f2 4 4 4. 8 4 4 d2 2 2 |
  r4 f f2 2 d2 2 |
  d2 4( f) f4 4 d8[( f]) f4 f2( e2) c2 |
  c2 f2 4 4 4 4 4 4 2 |
  f2 d4 4 4 f4 4 4 2 |
  f2 4 4 4 4 4 4 2 4 2 4 d2( e) c1
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \time 7/2
  c1( f4) 4 4 4( g8[ d]] g[ f] bes,4) f'4 g2 | \abr
  \time 4/2 f4 f f2( bes,4) f' g4.( f8) |
  \time 9/4 e4( f) c2 f4 4 g8[( d]) g2 | \abr
  
  \time 7/2 f4( bes, a2) bes4 c d1 g\fermata | \bar "||" \abr
  
  \time 9/2 f2 f4 4 4 4 4 4 2 bes4 8[( f]) g[( d]) g[( f]) bes,4( d) f2 | \abr
  
  
  
  \time 8/2 f4 4 2 4 4 bes,4. d8 f4 4 g2 d g | \abr
  \time 5/2 r4 f bes,( d) f2 g d |
  \time 7/2 g4( d) g( f) \bar "" \abr bes4 bes8[( f]) g[( f]) bes,4 c1 f2 |
  \time 6/2 f2 2 4 4 \bar "" \abr 4 4 4 4 2 |
  \time 5/2 f2 g4 d g f bes, d f2 | \abr
  \time 11/2 f2 4 4 4 4 a bes f2 4 bes2 f4 g2( c,) f1\fermata \bar "|."
}

lyricscore = \lyricmode {
   Бла -- го -- вест -- вуй, зем -- ле,
   ра -- дость ве -- ли -- ю, хва -- ли -- те, не -- бе -- са,
   Бо -- жи -- ю сла -- ву.
   Я -- ко о -- ду -- шев -- лен -- но -- му Бо -- жи -- ю Ки -- во -- ту
   
   да ни -- ка -- ко  -- же кос -- нет -- ся ру -- ка сквер -- ных,
   уст -- не же вер -- ных, Бо -- го --
   ро -- ди -- це не -- молч -- но глас Ан -- ге -- ла
   вос -- пе -- ва -- ю -- ще, с_ра -- дос -- ти -- ю да во -- пи -- ют:
   Ра -- дуй -- ся, Бла -- го -- дат -- на -- я, Гос -- подь с_То -- бо -- ю.
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
        %        \consists Merge_rests_engraver
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
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
        \remove "Bar_number_engraver"
      }
    }
    \midi {
      \tempo 4=90
    }
  }
}
