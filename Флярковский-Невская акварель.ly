\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "4. Невская акварель"
  subtitle = "из цикла «Ленинградская тетрадь»"
  composer = "Александр ФЛЯРКОВСКИЙ"
  poet = "Слова И. МИХАЙЛОВА"
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
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }

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
  
  \key as \major
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \tempo Andantino 4=72
  \dynamicUp
  \autoBeamOff
  \partial 8 es8\p |
  
  f as g f f4. es8 |
  f4. f8 es4 d |
  r8 d f es f g as bes | \abr
  
  \time 5/4 c4. g8 g4. \breathe g8 g bes |
  \time 4/4 as4. as8\< bes c des es\! |
  \time 3/4 f4 bes, r8 bes | \abr
  
  \time 4/4 f'8 bes, c des es\> des c bes |
  c2.\! r8 f,8\pp |
  \time 5/4 des'8 c bes as bes f f4. f8 | \abr
  
  c'4 f,4. f8 es'8 des c bes |
  \time 2/4 c4. c8 |
  \time 4/4 f8 c c4. \breathe c8 c es | \abr
  
  des4 as bes8 bes as bes |
  es4 c r f, |
  \time 3/4 c'8 f, f4. f8 | \abr
  
  \time 4/4 f8 f g f c'4. \breathes f,8 |
  \time 5/4 <c' es>1~\> 4~\! |
  1~\>_\markup\italic"Закр. ртом" 8\!
  \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  
  c8\tag #'FO \p |
  c c c c c4. c8 |
  c4. c8 c4 c |
  r8 c c c c c c c |
  
  c4. c8 c4. \breathe c8 c c |
  c4. f8\tag #'FO \< f f f f \tag #'FO \! |
  f4 f r8 f |
  
  f8 f f f e\tag #'FO \> e e e |
  es!2.\tag #'FO \! r8 f\tag #'FO \pp |
  des8 8 8 8 8 8 4. f8 |
  
  4 4. 8 e8 8 8 8 |
  f4. 8 |
  8 8 4. \breathe f8 e e |
  
  es!4 es des8 8 8 8 |
  <c g'>4 <c f> r4 c |
  c8 8 4. 8 |
  
  b8 8 8 8 c4. \breathes f8 |
  c'8 f,8 f4. f8 f f g f |
  g1~\tag #'FO \>8\tag #'FO \!
  }


tenorvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  es8\p |
  8 8 8 8 4. 8 |
  d4. 8 g4 f |
  r8 f d es bes' as g f |
  
  e4. 8 4. \breathe 8 8 g8 |
  f4. c'8\< des es bes c\! |
  des4 des r8 des |
  
  bes des c bes bes\> bes c des \! |
  bes2( a4) r8 f8\pp |
  bes as g f g as g4. des'8 |
  
  des4 des4. des8 c des es des |
  c4. c8 |
  bes8 bes bes4. \breathe bes8 8 8 |
  
  4 4 as8 as bes as |
  as4 4 r as4 |
  8 8 4. 8 |
  
  8 8 g8 as as4. \breathes <as es'>8 |
  <as des~>1\>( des4\! |
  c1~\>_\markup\italic"Закр. ртом" 8\!)
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  
  as8\tag #'FO \p |
  8 8 8 8 4. 8 |
  4. 8 4 4 |
  r8 as8 8 8 8 8 8 8 |
  
  4. 8 4. \breathe 8 8 8 |
  4. as'8\tag #'FO \< 8 8 8 8\tag #'FO  \! |
  as4 4 r8 as |
  
  g8 8 8 8 ges\tag #'FO \> ges ges ges |
  f2.\tag #'FO \! r8 f8\tag #'FO \pp |
  bes,8 8 8 8 8 8 4. bes'8 |
  
  as4 4. 8 8 8 8 8 |
  4. 8 |
  ges8 8 4. \breathe 8 8 8 |
  
  f4 4 fes8 8 8 8 |
  es4 es r es |
  d8 d d4. d8 |
  
  des!8 8 8 8 <c f>4. \breathes q8 |
  <bes f'>1\tag #'FO \>( es4~\tag #'FO \! |
  <es as,>1~\tag #'FO \> 8\tag #'FO \!)
  
  

}

lyricssoprano = \lyricmode {
  \tag #'FO { Та -- ким про -- зрач -- ным сном Не -- ва объ -- я -- та, так те -- ни вре -- за ны в_за --
 тишь -- е вод, что ка -- ждый дом, про -- све -- чен -- ный за -- ка -- том, ве --
 ли -- чест -- вен -- ным ай -- сбер -- гом плы -- вёт. Ре -- аль -- ность с_от -- ра -- же -- ни -- ем е --
 ди -- ны, и строй -- ный строй до -- мов_— ок -- но к_ок -- ну воз -- нёс -- ся
 к_не -- бу вер -- хней по -- ло -- ви -- ной, а ниж -- ня -- я у -- хо -- дит в_глу -- би -- ну.
 
 А }
  
   \tag #'TW {
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _
   }
  
  
  А…
  

}

lyricsalto = \lyricmode {
   Та -- ким про -- зрач -- ным сном Не -- ва объ -- я -- та, так те -- ни вре -- за ны в_за --
 тишь -- е вод, что ка -- ждый дом, про -- све -- чен -- ный за -- ка -- том, ве --
 ли -- чест -- вен -- ным ай -- сбер -- гом плы -- вёт. Ре -- аль -- ность с_от -- ра -- же -- ни -- ем е --
 ди -- ны, и строй -- ный строй до -- мов_— ок -- но к_ок -- ну воз -- нёс -- ся
 к_не -- бу вер -- хней по -- ло -- ви -- ной, а ниж -- ня -- я у -- хо -- дит в_глу -- би -- ну.
 
 А ниж -- ня -- я у -- хо -- дит в_глу -- би -- ну.
}


luricstenor = \lyricmode {
 \lyricssoprano
}

lyricsbass = \lyricmode {
  \luricstenor
}



\bookpart {
  \paper {
    top-margin = 10
    left-margin = 25
    right-margin = 10
    bottom-margin = 30
    indent = 15
    ragged-last-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  
    \score {
    %  \transpose c bes {
      \removeWithTag #'FO
      \keepWithTag #'TW
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
          #(layout-set-staff-size 17)
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
      \removeWithTag #'TW
      \keepWithTag #'FO
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
   %       #(layout-set-staff-size 16)
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
      \tempo 4=72
    }
  }
}
