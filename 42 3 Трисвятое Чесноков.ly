\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№3 «Приидите, поклонимся»"
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
  \time 4/4
  \autoBeamOff
}

priidite_soprano = \relative c'' {
  \global
  \dynamicUp
  \tempo "Медленно."
  e4\f e e \breathes e |
  e2\> e\p\fermata \bar "||" |
  \co r4 \tempo "Оживлённо" 4=80 a,8\f b \cber c[( b]) a4 g8 a \cber \abr
  
  b4 a r8 a a b \cber
  g4 fis8[( e]) fis[( g]) \cber
  a4~8 r8 r e'8\mf^\markup\italic"Мягко" \cber
  f!8[( e]) d4 d8 f \cber \abr
  
  e4\> a,~8\! r8 a a \cber
  d2 d4 \cber
  e4 e \breathes c \cber
  d d d \cber \abr
  
  e2.~ \cber
  2.~ \cber
  4~8 r8 g,8\mf  a \cber
  b2 d4 \cber \abr
  
  a2.~ \cber
  2.\p \cbar
  a2 a4 \cber
  a2\> a4\! \cber
  a2~8 r \cof \bar "||" 
}

priidite_alt = \relative c'' {
  \global
  \dynamicDown
  g4 g g g
  g2 g 
  r4 a8 b c[( b]) a4 g8 a 
  
  b4 a r8 a a b 
  g4 fis8[( e]) fis[( g]) 
  a4~8 r8 r a 
  a4 a gis8 gis 
  
  a4 a~8 r8 a a 
  \natt a8[( g] f4) g8[( f]) \cber
  e4 g a
  a a a
  
  gis4~8 r8 a8\f b 
  c[( b] a4) b 
  \natt a4~8 r8 g8 fis \cber
  e8[( g fis! e]) fis[( g]) \cber
  
  a2~8 r8
  e4( c) a
  c( g' \nat f 
  e2) e4 
  e2~8 r8
}

priidite_tenor = \relative c' {
  \global
  \dynamicUp
  e4 e e \breathes 4 
  e2 e\fermata
  
  r4 a,8 b 
  c[( b]) a4 g8 a 
  
  b4 a r8 a a b 
  g4 fis8[( e]) fis[( g])
  a4~8 r8 r c 
  d[( c]) b4 b8 b 
  
  c4 c4~8 r8 a8 a 
  a4( d8[ c]) b4
  c4 c \breathes c 
  c c b
  
  b( e2~)
  2.~
  4~8 r8 g,8 a 
  b2 d4
  
  a2.~
  2.
  a2 4 
  2\> 4\! 
  2~8 r8
}

priidite_bass = \relative c {
  \global
  \dynamicUp
  <c g'>4 q q q 
  q2 q
  r4 <a a'>8 <b b'> 
  <c c'>[( <b b'>]) <a a'>4 <g g'>8 <a a'>
  
  <b b'>4 <a a'> r8 q q <b b'> 
  <g g'>4 <fis fis'>8[( <e e'>]) <fis fis'>[( <g g'>])
  <a a'>4~8 r8 r a' 
  a4 a a,8 a 
  
  a4 a~8 r8 a'8 g 
  \nat f8[( e] d4) g4 
  c, e a8[( g])
  f4 f f
  
  e4~8 r8 a8\f b
  c8[( b] a4) <e b'>
  a4~8 r8 g fis \cber
  e[( g fis! e]) fis[( g]) \cber
  
  a2~8 r8
  c,4( a) g' 
  \natt f( e d)(
  <a e'>2) q4
  q2~8 r8
}

priidite_lyric_soprano   = \lyricmode {
 
  \repeat unfold 44 _
  ал -- ли -- луй -- и -- я.
  
}

priidite_lyric_alt   = \lyricmode {
  Гос -- по -- ди, по -- ми -- луй. При -- и -- ди -- те, по -- кло --
  ним -- ся и при -- па -- дем ко Хрис -- ту. Спа -- си нас, Сы -- не
  Бо -- жий, вос -- кре -- сый из мерт -- вых по -- ю -- щи -- я
  Ти: ал -- ли -- луй -- и -- я, ал -- ли -- луй -- и -- 
  я, ал -- ли -- луй -- и -- я.
  
}


trisvjatoje_soprano = \relative c'' {
  \global
  \dynamicUp
   \textMark "«Господи, спаси»… Трисвятое."
   \tempo "Молитвенно. Покойно." 4=58
   c4.\p\> a8 a4\! r8 a8\<
   \time 2/4 d8\! d c b |
   \time 4/4 c4.\> a8\! a4 \breathes c8\< d |
   \time 2/4 e4\! f |
   \time 4/4 e2~\> e4\! r4 \bar "||" \abr
   
   r2 a,2\p |
   e2~8 8\p c'[( b]) |
   a4.\<( f8)\! e \breathes  e8 c'[( b]) |
   a4.(\> f8\!) e8 \breathes e fis gis | \abr
   
   a8[(\< b c d)]\! e4 \breathes f4 |
   e4.\> c8\! d g,\mf e'[( d]) |
   c4.( a8) g \breathes g e'[( d]) | \abr
   
   c4.\>( a8)\! g \breathes g a\< b |
   c[( d e f])\! e4 \breathes d4 |
   e4.\> c8\! b \breathes e,\p c'[( b]) | \abr
   
   a4.( f8) e8 \breathes e c'[( b]) |
   a4.\>( f8\!) e8 \breathes e fis\< gis |
   a8[( b c d])\! e4 \breathes f | \abr
   
   c4\> b a4~ 8\! r8 \bar "||" |
   \co f!8\p 16 16 \cof  \bar "!" d4. e8 e \breathes e\< fis gis | \abr
   
   a[( b c d]) e4\! \breathes f |
   e4.\> c8\! d \breathes g,\mf e'[( d]) |
   c4.(\> a8)\! g \breathes g e'[( d]) | \abr
   
   c4.( a8) g \breathes g a\< b |
   c8[( d e d ])\! e4 \breathes d4 |
   e8[( d c]) c b4 \breathes c8[(\< b])\! | \abr
   
   a2~\> 8\! r8 a4\mf |
   e'2 d4 \breathes b\p\< |
   c2\> b2\! |
   a2\>~ a8\! r8 r4 \bar "||"
}

trisvjatoje_alt = \relative c'' {
  \global
  \dynamicDown
  a4. a8 a4 r8 a8 |
  a a a a |
  a4. a8 a4 a8 a |
  a4 a |
  gis2~4 r4 |
  
  r2 f2 |
  e2~8 r8 d4 |

  
  c8 c\< e[( f])\! e8\> e\!  \breathes fis8[( gis]) |
  a8 c,\< e[( f])\! e\> e8\! \breathes d4 |
  
  c8[( d]) e4 a a8 \breathes a |
  g4 a b8 r8 f4 |
  e8 e\< g[( a])\! g8\> g\! \breathes a8[( b]) |
  
  c8 e, \< g[( a])\! g\> g\! \breathes f4 |
  e8[( f]) g[( f]) g4 a8 \breathes a |
  a4. a8 gis r8 d4 |
  
  c8 c8\< e[( f])\! e8\> e\! \breathes fis8[( gis]) |
  a8 c, \< e[( f])\! e8\> e\! \breathes d4 |
  c8[( d]) e4 a a8 \breathes a |
  
  a8[( gis]) fis4 e4~8 r8 |
  d8 16 16
  b4. b8 b r d4 |
  
  c8[( d]) e4 a a8 \breathes a8 |
  g4 a b8 r8 f4 |
  e8 e\< g[( a])\! g\> g\! \breathes a[( b]) |
  
  c8 e,\< g[( a])\! g\> g\! \breathes f4 |
  e8[( f]) g[( f]) g4 a8 \breathes a8 |
  a4. a8 a4 gis |
  
  a2~8 r8 r4 |
  r a a a |
  a( gis) fis2 |
  e2~8 r8 r4 |
}


trisvjatoje_tenor = \relative c' {
  \global
  \dynamicUp
 e4. c8 c4 r8 a |
 d8 d e f |
 e4. c8 c4 \breathes a8 b |
 c4 b |
 b2~4 r4 |
 
 r2 b2 |
 e,2~8 r8 fis[( gis]) |
 a2 gis8 gis \breathes d'4 |
 c4( a) gis8 gis \breathes e4 |
 
 e4 a8[( b]) c4 d8 \breathes d |
 e4 f f8 r a,[( b]) |
 c2 b8 b \breathes f'4 |
 
 e4( c) b8 b \breathes g4 |
 e'8[( d]) c4 c b8 \breathes b |
 c4. d8 e r fis,[( gis]) |
 
 a2 gis8 gis \breathes d'4 |
 c( a) gis8 gis \breathes e4 |
 e a8[( b]) c4 b8 \breathes b |
 
 e4 d c~ 8 r8 |
 a8 16 16
 4. gis8 gis r e4 |
 
  e a8[( b]) c4 d8 \breathes d |
  e4 f f8 r a,[( b]) |
  c2 b8 b \breathes f'4 |
  
  e4( c) b8 b \breathes g4 |
  e'8[( d]) c4 c b8 \breathes b |
  c[( d e]) c d4 \breathes d |
  
  c2~8 r a4 |
  g'2 f4 \breathes f |
  e2 d |
  c~ 8 r8 r4
}


trisvjatoje_bass = \relative c' {
  \global
  \dynamicUp
  a4. a8 a4 r8 g |
  f8 f e d |
  a'4. a8 a4 f8 f |
  e4 d |
  e2~4 r4 |
  
  r2 d2 |
  e2~8 r8 e4 |
  a,8 a c[( d]) e e \breathes e4 |
  a8 a, c[( d]) e e \breathes e4 |
  
  a,4 a a' d,8 \breathes d |
  g4. g8 g r g,4 |
  c8 c e[( f]) g g \breathes g4 |
  
  c8 c, e[( f]) g g g4 |
  c, c8[( a]) c4 f8 \breathes f |
  e4. 8 8 r8 c4 |
  
  a8 a c[( d]) e e \breathes e4 |
  a8 a, c[( d]) e e \breathes e4 |
  a, a a' d,8 \breathes d |
  
  e4 e a,~8 r8 |
  d8 16 16
  f4. e8 e r e4 |
  
  a,4 a a' d,8 \breathes d |
  g4. 8 8 r8 g,4 |
  c8 c e[( f]) g g \breathes g4 |
  
  c8 c, e[( f]) g g \breathes g4 |
  c,4 c8[( a]) c4 f8 \breathes f |
  e4. 8 4 4 |
  
  f2~8 r8 r4 |
  r d d d |
  e2 e |
  a,~8 r8 r4
}



trisvjatoje_lyric_soprano   = \lyricmode {
_ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  Свя -- тый Бо -- же, Свя -- тый креп -- кий, Свя -- тый без --
  смерт -- ный, по -- ми -- луй нас. Свя -- тый Бо -- же, Свя -- тый
  креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас. Свя -- тый
  
  
 Бо -- же, Свя -- тый креп -- кий, Свя -- тый без -- смерт -- ный по --
 ми -- луй нас. _ _ _ _ _ _ Свя -- тый без --
 смерт -- ный по -- ми -- луй нас. Свя -- тый Бо -- же, Свя -- тый
 креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас, Свя --
 тый, по -- ми -- луй
  

}


trisvjatoje_lyric_alt   = \lyricmode {
  Го -- спо -- ди, спа -- си бла -- го -- чес -- ти -- вы -- я, и у -- слы -- ши ны.
  А -- минь. Свя -- тый _ _ Бо -- же, Свя -- тый _ _ креп -- кий, Свя --
  тый без -- смерт -- ный, по -- ми -- луй нас. Свя -- тый _ _  Бо -- же, Свя --
  тый _ _ креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас. Свя --
  тый _ _ Бо -- же, Свя -- тый _ _ креп -- кий, Свя -- тый без -- смерт -- ный, по --
  ми -- луй нас. Сла -- ва Отцу…_ве -- ков, а -- минь. Свя -- 
  тый без -- смерт -- ный, по -- ми -- луй нас. Свя -- тый _ _ Бо -- же, Свя --
  тый _ _ креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас, Свя --
  тый, Свя -- тый по -- ми -- луй нас.
  
  
  
}

 trisvjatoje_lyric_tenor  = \lyricmode {
 
 }
 
 trisvjatoje_lyric_bass   = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _
Свя -- тый, Свя -- тый Бо -- же, Свя -- тый, Свя -- тый креп -- кий, Свя --
тый без -- смерт -- ный, по -- ми -- луй нас. Свя -- тый, Свя -- тый Бо -- же, Свя --
тый, Свя -- тый креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас. Свя --

тый, Свя -- тый Бо -- же, Свя -- тый, Свя -- тый креп -- кий, Свя -- тый без -- смерт -- ный, по --
ми -- луй нас. _ _ _ _ _ _ Свя --
тый без -- смерт -- ный, по -- ми -- луй нас. Свя -- тый, Свя -- тый Бо -- же, Свя --
тый, Свя -- тый креп -- кий, Свя -- тый без -- смерт -- ный, по -- ми -- луй нас. Свя --
тый,

}



  \paper {
    top-margin = 15
    left-margin = 20
    right-margin = 10
    bottom-margin = 35
    indent = 10
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \priidite_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \priidite_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \priidite_lyric_soprano }
      \new Lyrics \lyricsto "alto" { \priidite_lyric_alt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \priidite_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \priidite_bass }
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
        \consists Merge_rests_engraver
        \remove Caesura_engraver
      }
      %Metronome_mark_engraver
      \context {
        \Voice
        \consists Caesura_engraver
      }
    }
    \midi {
      \tempo 4=80
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \trisvjatoje_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \trisvjatoje_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \trisvjatoje_lyric_soprano }
      \new Lyrics \lyricsto "alto" { \trisvjatoje_lyric_alt }
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \trisvjatoje_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \trisvjatoje_bass }
      >>
      
%           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics  \lyricsto "tenor" \trisvjatoje_lyric_tenor
      \new Lyrics \lyricsto "bass" \trisvjatoje_lyric_bass
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
      \tempo 4=58
    }
  }

}

   