\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "1. Память"
  subtitle = "из цикла «Ленинградская тетрадь»"
  composer = "Александр ФЛЯРКОВСКИЙ"
  poet = "Слова Ю.ВОРОНОВА"
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
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key g \minor
  \time 9/8
}

sopvoice = \relative c' {
  \global
  \tempo Lento 4.=54
  \dynamicUp
  \autoBeamOff
  d4\p d8 d4.~8 8 8 |
  es4 bes8 bes2. |
  \time 12/8 c4 c8 c4.~8 8 8 f4 es8 |
  es4. d2. d8[(\sf g]) a8 | \abr
  
  %56
  d4. d2. g,8 a bes |
  \time 9/8 c2. g4 a8 |
  bes4.~8 f8 g a4 g8 |
  \time 12/8 d4.\> d2. d4\mp d8 | \abr
  
  \time 9/8 d'4. b4 g8 e[( fis]) g |
  a2. d,4 d8 |
  e'4. d4 b8 g4 e8 |
  \time 12/8 a4. d,4.~4 r8 d'4\sf d8 | \abr
  
  \time 9/8 es4.~8 bes8 bes c4 bes8 |
  des2. cis,4\p cis8 |
  cis4. 4 8 b4 e8 |
  \time 12/8 cis4. 4.~4 r8 cis'4\sf 8 | \abr
  
  \time 9/8 d4.~8 a8 a bes4 a8 |
  c2. c,4\p c8 |
  c4. 4 8 4 es8 |
  d4. 4. g4.\mp~ | \abr
  
  %57
  2.~4.~ |
  2. 4.\p->~_\markup\italic"Закр. ртом" |
  \time 15/8 2.~4.~2.->~ |
  2.~\> 4.~ 4.~ 8\! r4 \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d4\tag #'SC \p d8 d4.~8 8 8 |
    es4 bes8 bes2. |
  \time 12/8 c4 c8 c4.~8 8 8 f4 es8 |
  es4. d2. d8[(\tag #'SC \sf g]) a8 |
  
  %56
  g4. 2. 8 8 8 |
  2. 4 f8 |
  es4.~8 f es d4 c8 |
  d4.\tag #'SC \> d2. d4\tag #'SC \mp d8 |
  
  fis4. e4 d8 c[( d]) e |
  f2. d4 8 |
  g4. fis4 e8 d4 b8 |
  c4. 4.~4 r8 d'4\tag #'SC \sf d8 |
  
  es4.~8 bes8 bes c4 bes8 |
  des2. cis,4\tag #'SC \p cis8 |
  a4. a4 8 gis4 gis8 |
  a4. 4.~4 r8 cis'4\tag #'SC \sf cis8 |
  
  d4.~8 a8 a bes4 a8 |
  c2. c,4\tag #'SC \p c8 |
  as4. 4 8 c4 8 |
  4. b g\tag #'SC \mp~ |
  2.~ 4.~ |
  2. 4.\tag #'SC \p->~ |
  2.~ 4. 2.->~ |
  2.~\tag #'SC \> 4.~ 4.~ 8\tag #'SC \! r4
}


tenorvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  d4\p 8 4.~8 8 8 |
  es4 bes'8 bes2. |
  c4 8 4.~8 8 8 f,4 es8 |
  es4. d2. d8[(\sf g]) a |
  
  es'4. 2. f8 es d |
  es2. 4 d8 |
  c4.~8 d8 c bes4 as8 |
  d,4.\> 2. 4\p 8 |
  
  b'2.( a4 b8) |
  c2. d,4 8 |
  b'2. 4. |
  bes4. 4.~4 r8 d4\sf d8 |
  
  es4.~8 bes8 bes c4 bes8 |
  des2. cis4\p 8 |
  cis4. gis4 gis8 fis4 8 |
  eis4. 4.~4 r8 cis'4\sf 8 |
  
  d4.~8 a8 a bes4 a8 |
  c2. 4\p 8 |
  4. g4 f8 bes4 as8 |
  g4. 4. r |
  
  c4.\mp c4 <bes d>8 <as es'>4 c8 |
  <b d>4. q r |
  c4.\p c4 <bes d>8 <as es'>2. c4. |
  <c d>4.\> <b d>4.~8\! r4 r2.
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  d4\tag #'SC \p 8 4.~8 8 8 |
  es4 bes8 bes2. |
  c4 8 4.~8 8 8 f4 es8 |
  es4. d2. d8[(\tag #'SC \sf g]) a8 |
  
  bes4. 2. d8 c bes |
  a2. bes4 a8 |
  g4.~8 a8 g f4 es8 |
  d4.\tag #'SC  \> 2. 4\tag #'SC \p 8 |
  
  <d g,>2.~4. |
  2. d4 8 |
  q2. 4. |
  <es g,>4. 4.~4 r8 d'4 \tag #'SC \sf d8 |
  
  es4.~8 bes8 bes c4 bes8 |
  des2. cis,4 \tag #'SC \p cis8 |
  <cis fis,>4. 4 8 4 8 |
  <dis fis,>4. 4.~4 r8 cis'4 \tag #'SC \sf  cis8 |
  
  d4.~8 a8 a bes4 a8 |
  c2. c,4\tag #'SC \p 8 |
  <c f,>4. 4 8 <d f,>4 <es f,>8 |
  <d g,>4. 4. r |
  
  <es as,>4. \tag #'SC \mp 4 <d g,>8 <c f,>4 <es as,>8 |
  <d g,>4. q r |
  <es as,>4. \tag #'SC \p 4 <d g,>8 <c f,>2. <es as,>4. |
  <d g,>4. \tag #'SC \> 4.~8 \tag #'SC \! r4 r2.
}

lyricssoprano = \lyricmode {
  \tag #'SC {
       Вновь о -- зноб ле -- дя -- ной вол -- ной, буд -- то ток, про -- бе -- жит по те -- лу, ес -- ли
  кто -- то пе -- ре -- до мной на сне -- гу по -- сколь -- знёт -- ся бе -- лом.
  }
  
    \tag #'SCI {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    }
  
  Он, под -- няв -- шись, сне -- жок стрях -- нёт. Ни о чём у ме -- ня не спро -- сит…
  
  
    \tag #'SC {
   А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…
  А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…   
  А
    }
}

lyricsalto = \lyricmode {
   Вновь о -- зноб ле -- дя -- ной вол -- ной, буд -- то ток, про -- бе -- жит по те -- лу, ес -- ли
  кто -- то пе -- ре -- до мной на сне -- гу по -- сколь -- знёт -- ся бе -- лом.
 
     \tag #'SCI {  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }
      \tag #'SC { Он, под -- няв -- шись, сне -- жок стрях -- нёт. Ни о чём у ме -- ня не спро -- сит… }
  А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…
  А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…
  А
}

luricstenor = \lyricmode {
  \tag #'SCI {  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }
  
  \tag #'SC { Вновь о -- зноб ле -- дя -- ной вол -- ной, буд -- то ток, про -- бе -- жит по те -- лу, ес -- ли
  кто -- то пе -- ре -- до мной на сне -- гу по -- сколь -- знёт -- ся бе -- лом. }
  
    Он, под -- няв -- шись, ни о чём не спро -- сит…
    
   \tag #'SCI { 
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }
   
       \tag #'SC {
   А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…
  А ме -- ня на бло -- кад -- ный лёд сно -- ва па -- мять мо -- я от -- бро -- сит…   
    }
   
  Па -- мять мо -- я от -- бро -- сит… Па -- мять мо -- я от -- бро -- сит…
}

lyricsbass = \lyricmode {
  \luricstenor
}


\bookpart {
  \paper {
    top-margin = 10
    left-margin = 25
    right-margin = 10
    bottom-margin = 20
    indent = 15
    ragged-last-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  
    \score {
    %  \transpose c bes {
      \removeWithTag #'SC
      \keepWithTag #'SCI
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
      
      \new Lyrics \lyricsto "soprano" { \lyricssoprano }
      \new Lyrics \lyricsto "alto" { \lyricsalto }
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
      
      \new Lyrics \lyricsto "tenor" { \luricstenor }
    >>
    %  }  % transposeµ
    \layout {
          #(layout-set-staff-size 16)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
  }
}



\bookpart {
  \paper {
    top-margin = 15
    left-margin = 25
    right-margin = 10
    bottom-margin = 25
    indent = 15
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }

  \score {
    %  \transpose c bes {
      \removeWithTag #'SCI
      \keepWithTag #'SC
  \new ChoirStaff <<
    \new Staff = "soprano" \with {
      instrumentName = "Сопрано"
      shortInstrumentName = "С"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "soprano" { \oneVoice \sopvoice }
    >> 
    
    \new Lyrics \lyricsto "soprano" { \lyricssoprano }
    
    \new Staff = "alto" \with {
      instrumentName = "Альт"
      shortInstrumentName = "А"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "alto" { \oneVoice \altvoice }
    >> 
    
    \new Lyrics \lyricsto "alto" { \lyricsalto }
    
    \new Staff = "tenor" \with {
      instrumentName = "Тенор"
      shortInstrumentName = "Т"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "tenor" { \clef "treble_8" \oneVoice \tenorvoice }
    >> 
    
    \new Lyrics \lyricsto "tenor" { \luricstenor }
    
    \new Staff = "bass" \with {
      instrumentName = "Бас"
      shortInstrumentName = "Б"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "bass" { \clef bass \oneVoice \bassvoice }
    >> 
    
    \new Lyrics \lyricsto "bass" { \lyricsbass }      
  >>
    %  }  % transposeµ
    \layout {
          #(layout-set-staff-size 16)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
