\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№1 Великая ектения"
  composer = "П. Чесноков"
  %opus = "оп. 42"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

% alternative breathe
breathess = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }

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



% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

% make music onevoice in V1 and V3, and hide it in V2, V4
all = #(define-music-function (rest) (ly:music?)
        #{
          \tag #'(V1 V3) { \once \override Rest.voiced-position=0 $rest }
          \tag #'(V2 V4) { \once \hide $rest }
         #})

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
  
  \key d \major
  \time 4/4
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo "Молитвенно. Скорость средняя." 4=60
   r2 a\mf\< |
  d2~\> 4\!  r |
  \repeat volta 2 {
    \textMark "I. VIII."   r2  d8 cis b a |
    b4( a) a2 \bar "||" \abr
    \textMark "II. IX."  r2 a4( d8[ cis] 
    b8) b cis cis d4\> d\! \bar "||"
    \once \override Score.Footnote.annotation-line = ##f
   \footnote "*" #'( 0.25 . 0.25 ) \markup \wordwrap { * Как видно из пометок римскими цифрами, III «Господи, помилуй» при повторении следует пропустить. \italic "П.Ч."}
   \textMark "III."  r2 d8 cis b a | \abr
    
    b4( cis) d2 \bar "||"
    \textMark "IV. X."  r2 fis8 e d cis |
    b4( cis) d2 \bar "||"  \abr
    
    \textMark "V. XI." r2 d8 cis b a |
    g4( e) fis2 \bar "||" |
    \textMark "VI. XII."  r2 fis4( d'8[ cis] | \abr
    
    %page 2
    b8) b g g fis4\> fis\! \bar "||" |
    \textMark "VII. XIII." \all r2 r |
    a8 \< b cis cis\! d4\> d\!  \abr
  }
  
  r4 r8 a\mf d[( cis b a]) |
  b4 cis d2 \bar "||"
  r2 a2\mf |
  a~ 4  r4 \bar "||" 
}
  
  soprano_blagoslovi = \relative c'' {
      \global
  \dynamicUp
  
  \textMark "«Благослови, душе моя, Господа»"
   r2 r8 a8\mf a a |
  a2~ 8 \breathes a d b |
  a4 b8[( a]) g[( b]) \breathes a g | \abr
  
  fis4\> e fis8\!  r8  r4 
  R1 |  
  r8 a\mf d b cis4 b8 a | \abr
  
  b4 b a8\breathes a a a |
  a2~ 8 a d b |
  a4 b8[( a]) g[( b]) \breathes a g | \abr
  
  % page 3
  fis4\> e\! fis \breathes fis8 gis\< |
  ais4\! ais8 gis ais b cis4 \breathes |
  b4\< b8 cis d4\! d8 e | \abr
  
  fis2\f~ 8 \breathes b,\f b b |
  g'4. fis8 e2 |
  d4. d8\> d4\!~ 8 r8 \bar "||" 
  
  }
  
  soprano_ektenija = \relative c'' {
      \global
  \dynamicUp
  
  \textMark "Малая ектения"
   r2 fis,2\p( |
  e8) e e e d4\> d\! \bar "||"
   r2 a'4\mf( d8[ cis] |
  b8) b a a a4\> a\! \bar "||" \abr
  
  r4 r8 a d[( cis b a]) |
  b4 cis d2 \bar "||"
   r2 a2\p |
  a2~ 4  r \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicDown
   r2 \once \hide DynamicText fis2\mf |
  fis~ 4  r |
  \repeat volta 2 {
     r2 fis( |
    g8) g g g fis4\> fis\! |
    
     r2 fis( |
    g8) g g g fis4 fis |
     r2 r |
    
    g8 fis g g fis4\> fis\! |
     r2 r |
    g8 fis g g fis4\> fis\! |
    
     r2 d( |
    e8) d cis cis d4\> d\! |
     r2 d( |
    
    %page 2
    e8) d cis cis d4 d |
     r2 b8\< cis d e\! |
    fis4( g) fis2 
    }
    
    r2 r4 r8 d |
    e[( fis] g4) fis8 fis\> fis4\! |
     r2 fis2 |
    fis~ 4  r
    
 }
  
  alt_blagoslovi = \relative c' {   
      \global
  \dynamicDown
      %благослови...
       r2 r |
      r8 d d e fis4. g8 |
      fis[( e]) fis4 e2
      
      d4 d d8  r8  r4 |
      r8 e a fis e4 fis8[( gis]) |
      a2.( e4) |
      
      fis8[( a]) gis4 a8 r r4 |
      r8 d, d e fis4. g8 |
      fis[( e]) fis4 e2 |
      
      %page 3
      d4 cis cis fis8 fis |
      fis4 fis8 fis fis gis ais4 |
      b4 b8 b b4 b8 b |
      
      b2~8 b b b |
      b4. a8 b4( a8[ g]) |
      fis4. fis8 fis4~8  r
      
       }
  
  alt_ektenija = \relative c' {   
      \global
  \dynamicDown
  
        %малая ектения
       r2 d2~ |
      8 d cis b a4 a |
       r2 fis'2( |
      g8) g g g fis4 fis |
      
      r2 r4 r8 d |
      g[( fis] g4) fis8 fis fis4 |
       r2 fis |
      fis~4  r
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  
   r2 a |
  a~ 4  r
  \repeat volta 2 {
     r2 a4( d8[ cis] |
    b8) b cis cis d4 d |
    
     r2 d8 cis b a |
    b4( a) a2 |
     r2 d8 cis b a |
    
    b4( a) a2 |
     r2 fis'8 e d cis |
    b2 b |
    
     r2 fis4( d'8[ cis] |
    b) b g g fis4 fis |
     r2 d'8 cis b a |
    
    %page 2
    g4( e) fis2 |
     r2 r |
    a8 b a a  a4\> a\!
  }
  
  r4 r8 a d[( cis b a]) |
  b4 a a2 |
   r2 a2 d~ 4 r
   
   }
  
  tenor_blagoslovi = \relative c' {
    \global
  \dynamicUp
  %благослови...
   r2 r8 a a a |
  a2~8 \breathes a d b |
  a4 b8[( a]) g4 a8 a |
  
  a4 b a8 a d b |
  cis4. d8 cis4( b |
  e) \breathes d8[( fis]) e4( b8[ cis]) |
  
  d4 d cis8 \breathes a a a |
  a2~8 a d b |
  a4 b8[( a]) g4 a8 a |
  
  %page 3
  a4 b ais \breathes ais8 b |
  cis4 cis8 d cis b ais4 |
  b b8 cis d4 d8 cis |
  
  d2~8 \breathes b8 b b |
  d4. d8 d4( cis8[ b]) |
  a4. a8 a4~8  r |
  
     }
  
  tenor_ektenija = \relative c' {
    \global
  \dynamicUp
  
  %малая ектения
   r2 a4( d8[ cis] |
  b) b a g fis4\> fis\! |
   r2 d'8 cis b a |
  b4( cis) d2 |
  
  r4 r8 a d[( cis b a]) |
  b4 a a2 |
   r2 a |
  d2~4  r
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
   r2 d |
  d~ 4  r
  \repeat volta 2 {
     r2 d~ |
    8 d e a, d4 d |
    
     r2 d~ |
    8 d e a, d4\> d\! |
     r2 r |
    
    g8 fis e a, d4 d |
     r2 r |
    g8 fis e e b4 b |
    
     r2 b~ |
    8 b b b b4 b |
     r2 b~ |
    
    % page 2
    8 b b b b4\> b\! |
     r2 b8 cis d e |
    fis4( e) d2
  }
  
  r2  r4 r8 d |
  g[( fis] e4) d8 d d4 |
   r2 d2 |
  d~ 4  r
  
  }
  
  bass_blagoslovi = \relative c {
    \global
  \dynamicUp
   %благослови...
    r2 r |
   r8 d d e fis4. g8 |
   fis8[( e]) d4 e8[( d] cis4) \breathes |
   
   d4 g d8 r r4 |
   r2 r8 a d b |
   cis4 fis8[( d]) e2 |
   
   e4 e a8 r r4 |
   r8 d, d e fis4. g8 |
   fis[( e]) d4 e8[( d] cis4) \breathes
   
   %page 3
   d4 g fis fis8 fis |
   fis4 fis8 b ais gis fis4 |
   b4 b8 b b4 b8 b |
   
   b2~8 b8 b b |
   e,4. fis8 g4( a) |
   d,4. d8 d4~8  r
   
     }
  
  bass_ektenija = \relative c {
    \global
  \dynamicUp
   
   %малая ектения
    r2 d8 cis b a |
   g4( a) d2 |
    r2 d~ |
   8 d e a, d4 d |
   
   r2 r4 r8 d |
   g[( fis] e4) d8 d d4 |
    r2 d |
   d~4  r
   
   
}


lyricssop   = \lyricmode {
А -- минь. Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй. Го -- спо -- ди, по --
ми -- луй. Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй. Го -- 
спо -- ди, по -- ми -- луй. Го -- спо -- ди, по -- ми -- луй
Те -- бе, Го -- спо -- ди. А -- минь.
}

blagoslovi_sopl = \lyricmode {

Бла -- го -- сло -- ви, бла -- го -- сло -- ви, ду -- ше мо -- я,
Го -- спо --  да
Бла -- го -- сло -- вен е -- си
Го -- спо -- ди. Бла -- го -- сло -- ви, __ бла -- го -- сло -- ви, ду -- ше мо -- я,
Го -- спо -- да, и вся внут -- рен -- ня -- я мо -- я и -- мя свя -- то -- е Е --
го. Бла -- го -- сло -- вен е -- си Го -- спо -- ди

}

ektenija_sopl = \lyricmode {

Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй.
Те -- бе, Го -- спо -- ди.
А -- минь.
}

lyricsalt   = \lyricmode {
_ _ Го -- спо -- ди, по -- ми -- луй.
_ _ _ _ _ _ Го -- спо -- ди, по --
ми -- луй. Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй. _
_ _ _ _ _ Го -- спо -- ди, по -- ми -- луй
Те -- бе, Го -- спо -- ди. _ _

}

blagoslovi_altl = \lyricmode {


Бла -- го -- сло -- ви, ду -- ше мо -- я
_ _ _
Бла -- го -- сло -- вен е -- си __
Го -- спо -- ди. Бла -- го -- сло -- ви, ду -- ше -- мо -- я,
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ %Го -- спо -- да, и вся внут -- рен -- ня -- я мо -- я и -- мя свя -- то -- е Е --
 _ _ _ _ _ _ _ _ _ _ %го. Бла -- го -- сло -- вен е -- си Го -- спо -- ди
 
 }

ektenija_altl = \lyricmode {
 _ _ _ _ _ _ %Го -- спо -- ди, по -- ми -- луй.
_ _ _ _ _ _ %Го -- спо -- ди, по -- ми -- луй.
Те -- бе, Го -- спо -- ди.
}

 lyricstenor  = \lyricmode {
_ _ _ _ _ _ _ _
Го -- спо -- ди, по -- ми -- луй,

_ _ _ _ _ _
_ _ _ _ _ _
_ _ _ _ _ _

Го -- спо -- ди, по -- ми --   луй
   
_ _ _ _ _ _
_ _ _ _ _  _ _

}

blagoslovi_tenl = \lyricmode {

_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ 
 Бла -- го -- сло -- вен е -- си, __ е -- си

 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ %Го -- спо -- ди. Бла -- го -- сло -- ви, бла -- го -- сло -- ви, ду -- ше мо -- я,
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ %Го -- спо -- да, и вся внут -- рен -- ня -- я мо -- я и -- мя свя -- то -- е Е --
 _ _ _ _ _ _ _ _ _ _ %го. Бла -- го -- сло -- вен е -- си Го -- спо -- ди
 
  _ _ _ _ _ _
  
  }

ektenija_tenl = \lyricmode {
  
Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй.
_ _ _ _ _
_ _

}

 lyricsbass  = \lyricmode {
_ _ _ _ _ _ _ _
Го -- спо -- ди, по -- ми -- луй,

_ _ _ _ _ _
_ _ _ _ _ _
_ _ _ _ _ _

Го -- спо -- ди, по -- ми --    луй
   
_ _ _ _ _ _
_ _ _ _ _

}

blagoslovi_bassl = \lyricmode {

_ _
_ _ _ _ _ _ _ _
 _ 
 Бла -- го -- сло -- вен _ _
 _ _ _ _ _ _ _ _ _ _ _ %Го -- спо -- ди. Бла -- го -- сло -- ви, ду -- ше -- мо -- я,
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ %Го -- спо -- да, и вся внут -- рен -- ня -- я мо -- я и -- мя свя -- то -- е Е --
 _ _ _ _ _ _ _ _ _ _ %го. Бла -- го -- сло -- вен е -- си Го -- спо -- ди
 
 }

ektenija_bassl = \lyricmode {
 Го -- спо -- ди, по -- ми -- луй.
Го -- спо -- ди, по -- ми -- луй.
_ _ _ _ _
_ _

}


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 35
    indent = 20
    ragged-bottom = ##f
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \sopvoice }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \altvoice }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \lyricsto "soprano" { \lyricssop }
      \new Lyrics \lyricsto "alto" { \lyricsalt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \tenorvoice }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \bassvoice }
      >>
      
%           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics  \lyricsto "tenor" \lyricstenor
      \new Lyrics \lyricsto "bass" \lyricsbass
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
      \tempo 4=90
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \soprano_blagoslovi }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \alt_blagoslovi }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \lyricsto "soprano" { \blagoslovi_sopl }
      \new Lyrics \lyricsto "alto" { \blagoslovi_altl }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \tenor_blagoslovi }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \bass_blagoslovi }
      >>
      
%           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics  \lyricsto "tenor" \blagoslovi_tenl
      \new Lyrics \lyricsto "bass" \blagoslovi_bassl
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
      \tempo 4=90
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \soprano_ektenija }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \alt_ektenija }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \lyricsto "soprano" { \ektenija_sopl }
      \new Lyrics \lyricsto "alto" { \ektenija_altl }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \tenor_ektenija }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \bass_ektenija }
      >>
      
%           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics  \lyricsto "tenor" \ektenija_tenl
      \new Lyrics \lyricsto "bass" \ektenija_bassl
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
      \tempo 4=90
    }
  }

}

   