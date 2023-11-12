\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№2 «Слава... Единородный Сыне...»"
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
  
  \key g \major
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \tempo "Оживлённо." 4=80
  b4\mf b8 a g a |
  b4. b8 b\< b\! |
  d4( c8[ b]) a4 | \abr
  
  b4\> b8\! \all r b4 |
  b2 c8 c |
  b4 b8 \all r b b |
  a2 g8 g | \abr
  
  fis4~8 \all r b4\< |
  b2.~\> |
  8\! \breathes 
  r8 r4 r |
  r8 fis'\f fis fis e g | \abr
  
  fis4 fis r |
  r8 e\mf e4 d |
  c2\> b8\! b |
  a4. a8\> a4~\! \abr
  
  %page 5
  a8 \all r b4\mf\< c\! |
  d4.\> e8\! d c |
  b4 g a \breathes |
  d4.\>( e8)\! d c | \abr
  
  b4( g a |
  b) b8 \all r b b |
  b4 b b \breathes |
  b b b8[( cis]) | \abr
  
  dis4. dis8 dis4 |
  e e d |
  c c c |
  b\> b8\! \all r g4\p~ |
  4 g fis | \abr
  
  fis4 fis8\> fis fis4\!~ |
  8 \all r \all r4 \all r |
  \all r8 b8 b4 b~ |
  8 \all r \all r4 \all r | \abr
  
  \all r8 e e4 e~ |
  8 \all r \all r4 r |
  R2. |
  r2 e,4 | \abr
  
  %page 6
  e'4.\>( d8)\! c8[( b]) |
  a4 b c |
  b\> b\! \all r4 |
  fis'\mf fis8 fis e g | \abr
  
  fis4 fis r |
  r8 e8 e4 d8 d |
  c2\> b4\! |
  a4 a8 \all r b\mf c | \abr
  
  d4.\> e8\! d c |
  b4 \breathes g a |
  d4.(\> e8\!) d[( c]) |
  b4( g a | \abr
  
  b) b8 \all r a4\p |
  b2. |
  b4~8 \all r fis'4\f |
  fis2. |
  fis4~\>8\! \all r b,,4\p | \abr
  
  d?2. |
  fis4~8 \all r d'4\f |
  d2.~ |
   2.\> |
   d2.\mf\>~ |
   4 ~ 8\! \all r \all r4 \bar "||"

}


altvoice = \relative c'' {
  \global
  \dynamicDown
  \autoBeamOff
  g4 g8 fis e fis |
  g4. g8 g g |
  a4( g8[ fis]) e[( fis]) |
  
  g4 g8 \all r b,4 |
  b2 c8 c |
  b4 b8 \all r g' g |
  fis2 e8 e |
  
  b4~ 8 \all r fis'4 |
  g2.~ |
  8 g\f fis e g a |
  b4 b2~ |
  
  8 \breathes b b4 fis |
  a2 e8 e |
  e2 d4 c2.~
  
  % page 5
  c8 \all r fis4 fis |
  g2( fis4 |
  g e fis |
  g2 fis4 |
  
  g4 e) fis |
  g4~ 8 \all r g g |
  a[( b] a) g fis4 |
  g8 g a b a g |
  
  fis4. b8 a4 |
  g g g |
  a e fis |
  g g8 \all r e4~ |
  4 e e |
  
  dis dis8 dis dis4~ |
  8 \all r \all r4 \all r |
  \all r8 b b4 b~ |
  8 \all r \all r4 \all r |
  
  \all r8 e e4 e~ |
  8 \all r \all r4 b\< |
  b'4.\>( a8\!) g[( fis]) |
  g4 fis e8[( d]) |
  
  % page 6
  c4 b \breathes a8[( e']) |
  e4 g8 g fis4 |
  fis fis r |
  b b8 b b b |
  
  b4 b r8 fis |
  a4 a e |
  e2 d4 |
  c4 c8 \all r fis fis |
  
  g2( fis4 |
  g e fis |
  g2 fis4 |
  g e) fis |
  
  g4~ 8 \all r e4 |
  dis2. |
  dis4~ 8 \all r b'4 |
  b2. |
  b4~8 \all r b,4 |
  
  c2. |
  d4~8 \all r fis4 |
  g2.~ |
  2. |
  g2.~ |
  4~8 \all r \all r4
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  b4 b8 b c c |
  b4. b8 d g |
  fis4( e8[ d]) c4 |
  
  b4 b8 \all r \all r b |
  a4 a g |
  fis fis8 r b b |
  b[( c] d4) a8 a |
  
  b4~ 8 r b4 |
  b2.~ |
  8 \breathes r r4 r |
  r8 dis8 dis dis cis e |
  
  dis4 dis r |
  r8 c? c4 b |
  a2\> e8\! e |
  a4. e8 e4~ |
  
  %page 5
  8 \all r d'4 c |
  b8 b b r a\< a\! |
  d4.\> e8\! d c |
  b4 g a \breathes |
  
  d4.(\> e8)\! d c |
  b4 b8 \all r b b |
  b4 b b |
  b b b8[( cis]) |
  
  dis4. dis8 dis4 |
  e e d |
  c c c |
  b b8 \all r g4~ |
  4 g fis |
  
  fis4 fis8 fis fis4~ |
  8 \all r \all r4 r |
  \once \override MultiMeasureRest.voiced-position=0 R2. |
  r4 r e4\< |
  
  e'4.(\>  d8)\! c[( b]) |
  c4 b a |
  \all r8 g g[( a]) b[( c]) |
  b4 b c8[( d]) |
  
  %page 6
  r8 e e4 e~ |
  4 e e |
  dis\> dis\! \all r |
  dis dis8 dis cis cis |
  
  dis4 dis r |
  r8 c c4 b8 b |
  a2\>  e4\! |
  e e8 \all r d' c |
  
  b b b r a\< a |
  d4.\> e8\! d c |
  b4 \breathes g a |
  d4.(  e8) d[( c]) |
  
  b4 b8 \all r fis4 |
  fis2. |
  fis4~ 8 \all r dis'4 |
  dis2. |
  dis4~8 \all r b4 |
  
  fis2. |
  c'4~8 \all r c4 |
  b2.( |
  e) |
  <b d>2.~ |
  4~8 \all r \all r4
    
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  <d g,>2.~ |
  2.~ |
  2.~ |
  
  4 q8 \all r \all r g |
  fis4 fis e |
  b b~8 r |
  R2. |
  
  r4 r d |
  <d g,>2.~ |
  8 g fis e g a |
  b4 b2~ |
  
  8 \breathes b b4 fis |
  a2 e8 e |
  a,2 a4 |
  a2.~ |
  
  %page 5
  8 \all r d4 d |
  <d g,>2.~ |
  2.~ |
  2.~ |
  
  2 q4 |
  q4~8 \all r g g |
  fis[( g] fis) e b4 |
  g'8 g fis g fis e |
  
  b4. b8 b4 |
  c c b |
  a a a |
  e' e8 \all r d d |
  c4 g8 g a a |
  
  b4 b8 b b4~ |
  8 \all r \all r4 b |
  b'4.\>( a8)\! g[( fis]) |
  g4 fis e8[( d]) |
  
  c4 b \breathes a8[( e']) |
  a4. g8 fis4 |
  \all r8 e e[( fis]) g[( a]) |
  e4 d c8[( b]) |
  
  %page 6
  a4 e' \breathes a8[( b]) |
  c4 b8 b a4 |
  b4 b \all r |
  b b8 b g e | 
  
  b'4 b r8 fis |
  a4 a e |
  a,2 a4 |
  a a8 \all r d d |
  
  <d g,>2.~ |
  2.~ |
  2.~ |
  2 q4 |
  
  q4~8 \all r c4 |
  b2. |
  b4~8 \all r b'4 |
  b2. |
  b4~8 \all r b,4 |
  
  a2. |
  d4~8 \all r d4 |
  <d g,>2.( |
  <g c,>) |
  <d g,>2.~ |
  4~8 \all r \all r4
  
  
  
      
}


lyricssop   = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ % Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му
  _ _ _ _ _ _ _ _ _ _ _ _ _ % Ду -- ху, и ны -- не и прис -- но и во ве -- ки ве -- 
  _ _ _ Е -- ди -- но -- род -- ный 
  Сы -- не и Сло -- ве Бо -- жий, без -- смер -- тен сый,
  и из -- во -- ли -- вый спа -- се -- ни -- я на -- ше -- го
  ра -- ди во -- пло -- ти -- ти -- ся от Бо -- го --
  ро -- ди -- цы и При -- сно -- де -- вы Ма -- ри -- и, во -- че -- ло --
  ве -- чи -- вый -- ся,
  
  рас -- пный -- ся,
  рас -- пный -- ся,
  рас -- пный -- ся же, Хри -- сте Бо -- же,
  
  сме -- рти -- ю смерть по --
  пра -- вый, е -- дин сый Свя -- ты -- я Тро -- йцы, спро -- сла
  вля -- е -- мый От -- цу и Свя -- то -- му Ду --
  ху,
  
  спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __

}

lyricsalt   = \lyricmode {
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му
  Ду -- ху, и ны -- не и прис -- но и во ве -- ки ве -- 
  ков, а -- минь. Е -- ди -- но -- род -- ный Сы -- не
  и Сло -- ве Бо -- жий без -- смер -- тен сый,
  и из -- во -- ли -- вый, во -- пло -- ти -- ти -- ся от свя -- ты -- я Бо -- го --
  ро -- ди -- цы 
  
  \repeat unfold 21 \skip 1
  рас -- пный -- ся же Хри -- сте
  
  Бо -- же, рас -- пный -- ся Хри -- сте Бо -- же,
  
  _ _ _ _ _ _ _ %сме -- рти -- ю смерть по --  пра -- вый, 
  е -- дин сый Свя -- ты -- я Тро -- йцы, спро -- сла
  -- вля -- е -- мый
  
  _ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
}

 lyricstenor  = \lyricmode {
   \repeat unfold 43 \skip 1
и из -- во -- ли -- вый, и из -- во -- ли -- вый спа -- се -- ни -- я 
на -- ше -- го ра -- ди 

\repeat unfold 26 \skip 1
рас -- пный -- ся же Хри -- сте

\repeat unfold 28 \skip 1
спро -- сла -- вля -- е -- мый, спро -- сла -- вля -- е -- мый От -- цу и Свя -- то -- му
Ду -- ху,

_ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __

}

 lyricsbass  = \lyricmode {
   \repeat unfold 26 \skip 1
   и из -- во -- ли -- вый,
   \repeat unfold 22 \skip 1
   не -- пре -- лож -- но во -- че -- ло --
   ве -- чи -- вый -- ся, рас -- пный -- ся же, Хри -- сте
   Бо -- же, рас -- пный -- ся же, рас -- пный -- ся
   
   \repeat unfold 27 \skip 1
  спро -- сла -- вля -- е -- мый
  
  _ _ _ _ _ _ _ _ _ _ _ _ %спа -- си нас, спа -- си нас, спа -- си нас, спа -- си нас. __
    
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
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }

}

   