\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\header {
  title = "3. Сверстникам моим"
  subtitle = "из цикла «Ленинградская тетрадь»"
  composer = "Александр ФЛЯРКОВСКИЙ"
  poet = "Слова Н.СОВКОВА"
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
  
  \key f \minor
  \time 4/4
}

solovoice = \relative c' {
  \global
  \dynamicUp
  

R1*13
%64

r2 f8\p(^\markup\italic"С. соло" c g' c a2~8) r8 r4
R1 |
r2 as8( f bes es c2.~8)r8 |
R1*3 |
R1*2 R4*5 |
R4*5 |
R1 |
f,8\p( c g' c a4 g8 e' d2~8) r8 r4
}

sopvoice = \relative c'' {
  \global
  \tempo Moderato 4=84
  \dynamicUp
  \autoBeamOff
  %63
  c8\f f, f f bes as g f |
  as4 f2. |
  f8\sp f f f es es bes des | \abr
  
  c4 c2 c8\mf c |
  g'4. c,8 g' bes as g |
  es'4\< bes2 bes8\f c | \abr
  
  fes8[( es]) es des fes es es des |
  fes4 des2.~\< |
  8\! r c,4\sp( des2 | \abr
  
  c4 des d2 |
  d4 es e2~ |
  2~8) r8 c\mp 8 |
  4 4 8 8 8 8 | \abr
  
  %64
  c1~ |
  2~8 r8 c8 c |
  f4 4 8 8 8 8 |
  f1~ | \abr
  
  2.~8 r8 |
  c'8\f 8 8 8 <bes des> c 8 8 8 |
  <as es'>4 c2. |
  8 8 8 8 <bes es> c 8 8 8 | \abr
  
  <bes f'>4 c4~8 r c c |
  <es ges>4. 8 <es f>8 c 8 8 8 |
  \time 5/4 <es ges>4 <es f> r f,8\p 8 8 8 | \abr
  
  %64
  d'4. f,8 2 4 |
  \time 4/4 g4 a2.~ |
  1~ |
  2~8 r r4 \bar "|."
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  
    %63
  c8\tag #'FO \f f, f f bes as g f |
  as4 f2. |
  f8\tag #'FO \sp f f f es es bes des | 
  
  c4 c2 c8\tag #'FO \mf c |
  g'4. c,8 g' bes as g |
  es'4\tag #'FO \< bes2 bes8\tag #'FO \f c | 
  
  des8[( c]) c bes des c c bes |
  des4 bes2.~\tag #'FO \< |
  8\tag #'FO \! r8 c,2.~(\tag #'FO \sp |
  
  1~|
  <c d>~ |
  2~ 8) r8 r4 |
  a2(_\markup\italic"Закр. ртом"\p as2 |
  
  %64
  a1~ |
  2~8) r8 r4 |
  des2( d |
  des1~ |
  
  2.~8) r8 |
  c'8\tag #'FO \f 8 8 8 8 8 8 8 |
  c4 c2. |
  8 8 8 8 <c as> c8 8 8 |
  
  <c g>4 c4~8 r8 c8 c |
  <bes c>4. q8 <a c>8 c c c |
  <bes c>4 <a c> r f8\tag #'FO \p 8 8 8 |
  
  %65
  <f d>4. q8 q2 q4 |
  <f c>4 q2.~ |
  1~ |
  2~8 r8 r4
  }


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c8\f f, f f bes as g f |
  as4 f2. |
  f8\sp f f f es es bes' des | 
  
  c4 c2 c8\mf c |
  g4. c,8 g' bes as g |
  es'4\< bes2 bes8\f c |
  
  fes8[( es]) es des fes es es des |
  fes4 des2.~\< |
  8\! r c2.\sp~( |
  
  4 c2. |
  <bes as>1~ |
  2~ 8) r8 r4 |
  f1\p~
  
  %64
  1~ |
  2~8 r8 r4 |
  as2( bes |
  as1~ |
  
  2.~8) r8 |
  c8\f 8 8 8 <bes des> c 8 8 8 |
  <as es'>4 c2. |
  8 8 8 8 <bes es> c 8 8 8 |
  
  <bes f'>4 c4~8 r8 c c |
  des4. 8 es c c c |
  <des f>4 <es ges> r4 f,8\p 8 8 8
  
  %65
  bes4. bes8 2 4 |
  a4 a2.~ |
  1~ |
  2~8 r r4

}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c8\tag #'FO \f f, f f bes as g f |
  as4 f2. |
  f8\tag #'FO \sp f f f es es bes des | 
  
  c4 c2 c8\tag #'FO \mf 8 |
  g'4. c,8 g' bes as g |
  es'4\tag #'FO \< bes2 bes8\tag #'FO \f c |
  
  des8[( c]) c bes des c c bes |
  des4 bes2.\tag #'FO \<~ |
  8\tag #'FO \! r8 c4( \tag #'FO \sp bes2 |
  
  c4 bes as2 |
  as4 g ges2~ |
  2~8) r r4 |
  <c, f,>2(\tag #'FO \p <es as,> |
  
  %64
  <c f,>1~ |
  2~8) r8 r4 |
  des2( <bes f'> |
  des1~ |
  
  2.~8) r8 |
  c'8\tag #'FO \f 8 8 8 8 8 8 8 |
  4 2. |
  8 8 8 8 <c as> c 8 8 8 |
  
  <c g>4 c4~8 r c c |
  4. 8 8 8 8 8 |
  4 4 r f,8\tag #'FO \p 8 8 8 |
  
  %65
  <f bes,>4. <f a,>8 <f g,>2 <f c>4 |
  <c f,>4 q2.~ |
  1~ |
  2~8 r r4
}

lyricssoprano = \lyricmode {
  \tag #'FO {
       Раз -- ве по -- за -- бу -- дет -- ся всё э -- то: пар -- ни у -- ми -- ра -- ли у ла фе -- тов,
       а сна -- ря -- ды их е -- щё ле -- те -- ли,
       со -- кру -- ша -- я все вра -- же -- ски -- е це -- ли. А
  }
    \tag #'TW {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _
    }
    
    Э -- то бы -- ло мно -- го лет на --
    зад. Пар -- ни э -- ти в_Ав -- то -- ве ле -- жат.
    
      \tag #'FO {
      Сверст -- ни -- ки по -- ры мо -- ей ар -- мей -- ской, пар -- ни бо -- е -- во -- го по -- ко -- лень -- я,
       те, что раз лишь вста -- ли на ко -- ле -- ни: с_клят -- вой пе -- ред зна -- ме -- нем Гвар -- дей -- ским.
  }
    \tag #'TW {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _
    }
    
  

}

lyricsalto = \lyricmode {
  Раз -- ве по -- за -- бу -- дет -- ся всё э -- то: пар -- ни у -- ми -- ра -- ли у ла фе -- тов,
       а сна -- ря -- ды их е -- щё ле -- те -- ли,
       со -- кру -- ша -- я все вра -- же -- ски -- е це -- ли. А
       
       _ _
       
       Сверст -- ни -- ки по -- ры мо -- ей ар -- мей -- ской, пар -- ни бо -- е -- во -- го по -- ко -- лень -- я,
       те, что раз лишь вста -- ли на ко -- ле -- ни: с_клят -- вой пе -- ред зна -- ме -- нем Гвар -- дей -- ским.
  

}

luricstenor = \lyricmode {
  \tag #'FO {
       Раз -- ве по -- за -- бу -- дет -- ся всё э -- то: пар -- ни у -- ми -- ра -- ли у ла фе -- тов,
       а сна -- ря -- ды их е -- щё ле -- те -- ли,
       со -- кру -- ша -- я все вра -- же -- ски -- е це -- ли. А
  }
    \tag #'TW {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _
    }
    _ _
    
          \tag #'FO {
      Сверст -- ни -- ки по -- ры мо -- ей ар -- мей -- ской, пар -- ни бо -- е -- во -- го по -- ко -- лень -- я,
       те, что раз лишь вста -- ли на ко -- ле -- ни: с_клят -- вой пе -- ред зна -- ме -- нем Гвар -- дей -- ским.
  }
    \tag #'TW {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _
    }
}

lyricsbass = \lyricmode {
  \luricstenor
}

lyricssolo = \lyricmode {
  А… А… А…
}


\bookpart {
  \paper {
    top-margin = 10
    left-margin = 25
    right-margin = 10
    bottom-margin = 35
    indent = 15
    ragged-last-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  
    \score {
    %  \transpose c bes {
      \removeWithTag #'FO
      \keepWithTag #'TW
            <<
        
        \new Staff = "solo" \with {
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } 
    <<
      \new Voice = "solo" { \oneVoice \solovoice }
    >> 
    \new Lyrics \lyricsto "solo" { \lyricssolo }
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
            >>
    %  }  % transposeµ
    \layout {
  %        #(layout-set-staff-size 16)
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
      <<
        
        \new Staff = "solo" \with {
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } 
    <<
      \new Voice = "solo" { \oneVoice \solovoice }
    >> 
    \new Lyrics \lyricsto "solo" { \lyricssolo }
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
      \tempo 4=90
    }
  }
}
