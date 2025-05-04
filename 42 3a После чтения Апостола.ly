\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
%  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "После чтения Апостола"
  composer = "П. Чесноков"
  %opus = "оп. 42"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

pbr = { \pageBreak }
%pbr = {}

melon = { \set melismaBusyProperties = #'() }

meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \allowBreak }
cbar = { \cadenzaOff \accidentalStyle default \bar "|" \cadenzaOn }
cber = { \cadenzaOff \accidentalStyle default \bar "!" \cadenzaOn }

stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
natt = { \accidentalStyle forget }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathess = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
%breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }
%breathelow = { \once \override BreathingSign.text = \markup { \line { \translate #'(0 . -7) \musicglyph #"scripts.upbow"  } } \breathe }
breathes = { \tag #'V1 \tag #'V3  { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } } \tag #'V2 \tag #'V4 { \once \override BreathingSign.text = \markup { \line { \translate #'(0 . -7) \musicglyph #"scripts.upbow"  } } } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% mark with numbers in squares
marksnumbers = {  \set Score.rehearsalMarkFormatter = #format-mark-numbers }


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
  
  \key a \minor
  \time 3/4
  \autoBeamOff
}

apostol_soprano = \relative c'' {
  \global
  \dynamicUp
  \tempo "" 4=88
 r4 r2 |
 r4 c d |
 e\> c8\! r r4 |
 r4 c d | \abr
 
 e4\> c8\! r r4 |
 r c8[( d]) c[( b]) |
 a2( g4)( |
 c2) c4 | \abr
 
 c4\>~ 8\! r8\fermata g4\p |
 a a8 a g g |
 g4~8 r8 r4\fermata |
 c4\f c2 | \abr
 
 c4. d8 c b |
 a4 a b \breathes |
 c2 c8 c |
 c2~\> 8\! r8 \bar "||"
}

apostol_alt = \relative c'' {
  \global
  \dynamicDown
  r4 c8[( d]) c[( b]) |
  a2( g4)\> |
  c,8\! r8 c'[( d]) c[( b]) |
  a2( g4)\> |
  
  c,8\! r c'[( d]) c[( b]) |
  a2( g4)( |
  f)( g8[ a] g[ f] |
  e2) e4 |
  
  e4~8 r8 e4 |
  f4 f8 f f f |
  e4~8 r r4 |
  g4 g2 |
  
  a4 a( g) |
  g( f) g |
  g4.( a8) f g |
  g2~ 8 r8
}

apostol_tenor = \relative c' {
  \global
  \dynamicUp
  r4 r2 |
  r4 c4 d |
  e4 c8 r r4 |
  r4 c d |
  
  e4-> c8\! r r4 |
  r4 c8[( d]) c[( b]) |
  a2( g4)~ |
  2 g4 |
  
  g4~8 r8\fermata c4 |
  c4 8 8 b b |
  c4~8 r8 r4\fermata |
  e4 2 |
  
  4 4.( d8) |
  c2 f4 |
  e4.( f8) d e |
  e2~8 r8
}

apostol_bass = \relative c {
  \global
  \dynamicDown
  r4 <c c'>8[( <d d'>]) <c c'>[( <b b'>]) |
  <a a'>2( <g g'>4)\> |
  c8\! r <c c'>[( <d d'>]) <c c'>[( <b b'>]) |
  <a a'>2( <g g'>4)\> |
  
  c8\! r <c c'>[( <d d'> ]) <c c'>[( <b b'>]) |
  << { a'2\( e4\)( f4 } { a,4( a'4) s2} >> e8[ f] e[ d] |
  c2) c4 |
  
  c4~8 r8 c4 |
  f4 f8 e d g |
  c,4~8 r r4 |
  c'4. d8 c b |
  
  a4 a e \breathes |
  f4.( e8) d g |
   c,2.~ |
   2~8 r8
}

apostol_lyric_soprano   = \lyricmode {

  Ал -- ли -- луй -- я. ал -- ли --
  луй -- я, ал -- ли -- луй -- и --
  я. _ _ _ _ _ _ _ Сла -- ва,
  сла -- ва Те -- бе Гос -- по -- ди, сла -- ва Те -- бе. __
  
}

apostol_lyric_alt   = \lyricmode {
  Ал -- ли -- луй -- я, ал -- ли -- луй -- 
  я, ал -- ли -- луй -- и --
  я И ду -- хо -- ви тво -- е -- му. Сла -- ва,
  сла -- ва, сла -- ва, сла -- ва Те -- бе. __
}

apostol_lyric_bass   = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Сла -- ва те -- бе, 
  Гос -- по -- ди, сла -- ва Те -- бе. __
  
  
}

evangelie_soprano = \relative c'' {
  \global
  \dynamicUp
  \textMark "После чтения Евангелия"
 c4.\f 8 8 8 |
 4 4 4 \breathes |
 2 8 d |
 e2~8 r8 \bar "||"
 
}

evangelie_alt = \relative c'' {
  \global
  \dynamicDown
  g4. 8 8 8 |
  a4 a bes |
  a2 8 8 |
  g2~8 r8
 
}

evangelie_tenor = \relative c' {
  \global
  \dynamicUp
  e4. 8 8 8 |
  4 4 4 |
  f2 c8 <c d> |
  <c e>2~8 r8
}

evangelie_bass = \relative c' {
  \global
  \dynamicUp
  c4. 8 8 b |
  a4 a g |
  f2 8 8 |
  <g c,>2~8 r8 
}

evangelie_lyric_alt   = \lyricmode {
  Сла -- ва Те -- бе, Гос -- по -- ди, сла -- ва Те -- бе.
  
}


sugubaja_soprano = \relative c'' {
  \global
  \dynamicUp
   \textMark "Сугубая Ектения"
   \tempo "Молитвенно" 4=80
   \repeat volta 2 {
   c2\p( bes4 |
   a4.) a8 g g |
   g2 g4\fermata
   }
   \textMark "I. — IV. — VII."
   g8 g g g g g | \abr
   
   g\< g g g g\! g \breathes |
   c2(\> bes4 |
   a4.\!) a8 g g |
   g2 g4 \fermata \bar "||" \abr
   
   \textMark "II. — V. — VIII."
   g8 8 8 8 8 8 |
   8\< 8 8 8 8\! 8 \breathes |
   a2.~ |
   4. a8 g g |
   g2 g4\fermata \bar "||" \abr
   
   \textMark "III. — VI. — IX."
   c4.\mf 8 8 8 |
   e2 4 \breathes |
   e4.\f 8 8 8 |
   g2 g4 \breathes |
   g2.( | \abr
   
   f4.) e8 d c |
   d2.(\> |
   c2) c4\!\fermata \bar "||"
   r4 c2\mf |
   2~8 r8 \bar "||" 
}

sugubaja_alt = \relative c' {
  \global
  \dynamicDown
  
  \repeat volta 2 {
  e4. c8 d e |
  f2.( |
  e2) e4
  }
  e8 e e e e e |
  
  e e e e e e |
  e4. c8 d e |
  f2.( |
  e2) e4 |
  
  e8 8 8 8 8 8|
  8 8 8 8 8 8 |
  e4. cis8 d e |
  f2.( |
  e2) e4 |
  
  e4. 8 8 8 |
  g2 4 |
  g4. 8 8 8 |
  c2 d4 |
  cis4. a8 b cis |
  
  d4( a f)~ |
  2.( |
  e2) e4 |
  r4 e2 |
  e2~8 r8
}


sugubaja_tenor = \relative c' {
  \global
  \dynamicUp
  \repeat volta 2 {
  g4. e8 f g |
  a2( b!4 |
  c2) c4\fermata
  }
  c8 8 8 8 8 8 |
  
  8 8 8 8 8 8 |
  g4. e8 f g |
  a2( b!4 |
  c2) c4\fermata |
  
  c8 8 8 8 8 8 |
  8 8 8 8 8 8 |
  cis4. a8 b! cis |
  d4( c! b |
  c2) c4\fermata 
  
  g4. 8 8 8 |
  c2 4 \breathes |
  c4. c8 c c |
  e2 e4 |
  e4. cis8 d e |
  
  f4( d a |
  c a b |
  c2) g4\fermata |
  r4 g2 |
  g2~8 r8
}


sugubaja_bass = \relative c {
  \global
  \dynamicUp
  
  \repeat volta 2 {
  c2.~ |
  4. c8 d g, |
  c2 c4 | }
  c8 8 8 8 8 8 |
  
  8 8 8 8 8 8 |
  2.~ |
  4. 8 d g, |
  c2 4 |
  
  c8 8 8 8 8 8 |
  bes8 8 8 8 8 8 |
  a2.( |
  d4.) 8 g, g |
  c2 4 |
  
  c4. 8 8 8 |
  c2 c'4  |
  bes4. 8 8 8 |
  2 4 |
  a2.( |
  d,4.) e8 f a |
  g2.( |
  c,2) 4 |
  r4 c2 |
  c2~8 r8
}


sugubaja_lyric_soprano   = \lyricmode {
 
  Гос -- по -- ди, по -- ми -- луй.
  _ _ _ _ _ _
  _ _ _ _ _ _ Гос -- по -- ди, по -- ми -- луй.
  _ _ _ _ _ _ _ _ _ _ _ _ Гос -- по -- ди, по -- ми -- луй.
  _ _ _ _ _ _ _ _ _ _ _ _ Гос --
  по -- ди, по -- ми -- луй.
  
}

sugubaja_lyric_alt   = \lyricmode {
  Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй. 
  Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй. 
  Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй. 
  Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- 
  ми -- луй. А -- минь
  
}

sugubaja_lyric_bass   = \lyricmode {
  Гос -- по -- ди, по -- ми -- луй.  _ _ _ _ _ _
  _ _ _ _ _ _ Гос -- по -- ди, по -- ми -- луй. 
  _ _ _ _ _ _ _ _ _ _ _ _ Гос -- по -- ди, по -- ми -- луй. 
  _ _ _ _ _ _ _ _ _ _ _ _ Гос --
  по -- ди, по -- ми -- луй.
}



  \paper {
    top-margin = 15
    left-margin = 20
    right-margin = 10
    bottom-margin = 35
    indent = 10
    ragged-bottom = ##f
    ragged-last = ##f
    %  system-separator-markup = \slashSeparator
    
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
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \apostol_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \apostol_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \apostol_lyric_soprano }
      \new Lyrics \lyricsto "alto" { \apostol_lyric_alt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \apostol_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \apostol_bass }
      >>
       \new Lyrics \lyricsto "bass" \apostol_lyric_bass
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
        \consists Merge_rests_engraver
      }
    }
    \midi {
      \tempo 4=88
    }
  }
  
    \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      
     
      \new Staff = "upstaff" \with {
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \evangelie_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \evangelie_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \lyricsto "alto" { \evangelie_lyric_alt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \evangelie_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \evangelie_bass }
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
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=88
    }
  }
  
    \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      
      \new Staff = "upstaff" \with {
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \sugubaja_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \sugubaja_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \sugubaja_lyric_soprano }
      \new Lyrics \lyricsto "alto" { \sugubaja_lyric_alt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \sugubaja_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \sugubaja_bass }
      >>
       \new Lyrics \lyricsto "bass" \sugubaja_lyric_bass
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
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=88
    }
  }

}

   