\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  subtitle = "Литургия св. Иоанна Златоуста (оп. 42)"
  title = "№4 Херувимская песнь."
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
  \time 4/4
  \autoBeamOff
}

global_i = {
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key d \major
  \time 4/4
  \autoBeamOff
}

heruvimskaya_soprano = \relative c'' {
  \global
  \dynamicUp
  \tempo "Очень медленно. Покойно." 4=44
  a4\p( b8[ c] d4 c8[ d] |
  e4. d8 c4 b) |
  a2 \breathes c8[( b]) a4 | \abr
  
  a2(\< d4 c8[\! d] |
  e4. d8\> c4 b |
  a2)\! a \breathes |
  a1~ | \abr
  
  2 2 \breathes |
  2. 4 |
  a4( gis8) fis gis2 \breathes |
  e8\< e fis gis\! a2~ | \abr
  
  2( g4) d' \breathes |
  e8[( d]) c[( d]) e4\< r4\! |
  r f8\f e d4. c8 | \abr
  
  %page 16
  d4 r r f8 e |
  d4. c8\> d4~8\! r |
  d2\p c4(\< d)\! |
  e4. c8\> c4( b)\! \breathes | \abr
  
  a2.\p(~ 8[ b] |
  c4 f4. e8) d4 |
  d( c8[ b]) a4 a8 a |
  a2(\< d4 c8[\! d] | \abr
  
  e4.\> d8 c4) b\! |
  a1 \breathes |
  a1~ |
  2 2 | \abr
  
  a1(~ |
  4 gis8[ fis] gis2) \breathes |
  a2\p a |
  a1 \breathes 
  e2\pp e | \abr
  
  e1~ |
  2. c4 |
  c2~4 r \bar "||" |
  e4\p( c' b fis) |
  gis2~4 r \bar "||" | \abr
  
  %page 17
  
  \tempo "Скорее." 4=88
  a4\f <e' g> <d f>8[( <c e>]) <b d>4 |
  a4.( b8) c[( b]) \breathes a4 |
  d( e) f e8[( d]) |
  e2\> e\! | \abr
  
  e2\mf( d |
  c4) c8 c d4 \breathes e4 |
  f2.( e4 | \abr
  
  d4.) d8 d4 \breathes c8[(\f d]) |
  e4 e8[( d]) c4 d |
  e e r f8\f e | \abr
  
  d4. c8 d4~8 r |
  r4 f8 e d4. c8 |
  d4~8 r r4 d8\mf c | \abr
  
  b4. a8 b4~8 r |
  e,2\p\<( e'4) e\! |
  e2.\f\> a,4 |
  a2~\! 4 r \bar "|."
}

heruvimskaya_alt = \relative c'' {
  \global
  \dynamicDown
  a4( g! fis f |
  e8 a4.~8 g4 f8) |
  e2 4 4 |
  
  f1( |
  e8[ g] a4 a2)~ |
  2 e |
  e4( d8[ c] b4) d |
  
  c( f e8[ d]) c4 |
  f2. 4 |
  e4 e e2~ |
  4( d) \breathes c8\< c d e\! |
  
  f4( e d) f |
  e a a r |
  r a8 g a4. a8 |
  
  a4 r r a8 g |
  a4. a8 a4~8 r |
  f2 f |
  e4 f e2 |
  
  a4( g fis f |
  e8 a4.~4) f8[( g]) |
  a4( e) e e8 e |
  f1( |
  
  e8[ g] a2) 4 |
  a2( e) |
  e4( d8[ c] b4) d |
  c( f e8[ d] c4) \breathes |
  
  f2. 4 |
  e e e( d) |
  c2 e |
  c1 |
  r2 c4 a |
  
  c2( b |
  c2.) a4 |
  2~4 r |
  e'1 |
  2~4 r |
  
  a4 a a a |
  a2 4 4 |
  2 4 4 |
  4.( gis8) 2 |
  
  e4 8 8\< fis4 gis4\! |
  a2.( g!4 |
  f2. g8[ a] |
  
  b4.) g8 g4 g |
  e e a a |
  a a r a8 g |
  
  a4. 8 4~8 r |
  r4 a8 g a4. 8 |
  4~8 r r4 f8 e |
  
  f4. 8 4~8 r |
  e2( fis4) gis |
  a2. e4 |
  2~4 r
}

heruvimskaya_tenor = \relative c' {
  \global
  \dynamicUp
  a2.(~ 8[ b] |
  c4 f e d~ |
  4) c8[( b]) c4 c8[( b]) |
  
  a4( b8[ c]~ c[ b a b] |
  c4 a8[ b] c[ e] f4 |
  e4 d) c( b) |
  a1~ |
  
  2 a4( e') |
  e4( d8[ c] b4) d8[( c]) |
  b4 b b2( |
  e,) \breathes a8 a b c |
  
  d4( c~8[ b]) a[( b]) \breathes |
  c[( b]) a[( b]) c \breathes c4-> c8 |
  c2. c4 |
  
  c8 \breathes c4-> c8 c2~ |
  4 4 4~8 r |
  c4( b) a( b) |
  c8[( b]) a4 g2 |
  
  a4( b8[ c] d4 c8[ d] |
  e4. d8 c4.) b8 |
  a4.( b8) c4 c8 b |
  a4( b8[ c]~ c8[ b a b] |
  
  c4 a8[ b] c[ e]) f4 |
  e( d c b) |
  a1~ |
  2 4( e') |
  
  e4( d8[ c]) b4 d8[( c]) |
  b4 b b2 |
  a2 a |
  a1 |
  r2 a4 fis |
  
  gis1( |
  a2.) e4 |
  2~4 r |
  e4( fis gis c ) |
  b2~4 r |
  
  a4 a8[( c]) d[( e]) f4 |
  e2 e8[( d]) \breathes c4 |
  d( c) b b |
  b2 b( |
  
  e,4) r r2 |
  a4 a8 a\< b4 c\! |
  d2.( c4 |
  
  b4.) b8 b4 \breathes a8[( b]) |
  c4 c8[( b]) a4 b \breathes |
  c8 c c c c2~ |
  
  4 4 4 \breathes 8 8 |
  2~4 4 |
  4 \breathes a8\mf a a2~ |
  
  4 4 4~8 r |
  e'2. d4 |
  c2. 4 |
  2~4 r
}

heruvimskaya_bass = \relative c' {
  \global
  \dynamicDown
  a1~ |
  1 |
  2 \breathes 4 g |
  
  f4( d)~( <d g,>2)( |
  c4 f e d |
  c b) a( g) |
  f2. f'4 |
  
  e4.( d8 c[ b] ) a4 |
  b4.( c8 d4) d |
  e e e( d |
  c b a) r |
  
  d8\< d e f\! g4 g |
  c, f e r |
  r d8 e f4. a8 |
  
  
  f4 r r d8 e |
  f4. a8 f4~8 r |
  <d g,>2 q |
  c4. c8 c[( d] e4) |
  
  a,1~ |
  2. 4 |
  2 a'4 g8 g |
  f4( d)~( <d g,>2)( |
  
  c4)( f e) d |
  c( b a g) |
  f2. f'4 |
  e4.( d8 c[ b] a4) \breathes |
  
  b4.( c8 d4) d |
  e e e2 |
  f c |
  \arpeggioBracket < c  f,>1\arpeggio |
  <e e,>2 q |
  
  <e~ e,>1( |
  <e a,>2.) a,4 |
  a2~4 r |
  e'1 |
  2~4 r |
  
  a4 a a a |
  c4.( b8) a4 a8[( g]) |
  f4( e) d f |
  e2 e~ |
  
  4 r r2 |
  R1 |
  d4 8 8 4 e8[( f]) |
  
  g4. 8 4 4 |
  c,4 c f f |
  e e r d8 e |
  
  f4. a8 f4~8 r |
  r4 d8 e f4. a8 |
  f4~8 r  r4 b,8 c |
  
  d4. f8 d4~8 r |
  e2. 4 |
  a2. 4 |
  2~4 r

}

heruvimskaya_lyric_soprano   = \lyricmode {
  _ _ _ _
  _ _ тай --
  но об -- ра -- зу -- ю -- ще  и жи -- во -- тво -- ря --
 щей _ _ _ три -- свя -- ту -- ю
 
 песнь при -- пе -- ва -- ю -- ще, _ _ _ _ _
 _ _ _ _ _ _
 _ _ _ от -- ло -- 
 жим, __ от -- ло -- жим по -- пе_-
 _ _ _  _ _
 
 _ _ _ _ _ _ _ _ _ _ _ _
 Ан -- гель -- ски -- ми не -- ви_-
 _ _ _ _ _ _ _ _ _ _ _ %ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли --
 %луй -- и -- я, ал -- ли -- луй -- и -- я, ал -- ли --
 %лу -- и -- я, __
  
}

heruvimskaya_lyric_alt   = \lyricmode {
  И -- же хе -- ру --
  ви -- мы тай -- но
  тай -- но об -- ра -- зу -- ю -- ще __ и жи -- во -- тво --
  ря -- щей Тро -- и -- це три -- свя -- ту -- ю
  
  песнь при -- пе -- ва -- ю -- ще, при -- пе -- ва -- ю -- ще,
  вся -- ко -- е ны -- не жи -- тей --
  ско -- е __ от -- ло --
  жим __ по -- пе -- че -- ни -- е, от -- ло -- жим по -- пе --
  че -- ни -- е. А -- минь.
  
  Я -- ко да Ца -- ря всех, Ца -- ря всех по -- ды -- мем,
  Ан -- гель -- ски -- ми не -- ви -- 
  ди -- мо до -- ри -- но -- си -- ма чин -- ми. Ал -- ли -- луй --
  и -- я, ал -- ли -- луй -- и -- я, ал -- ли -- луй --
  и -- я, ал -- ли -- луй -- и -- я. __
  
}

heruvimskaya_lyric_tenor   = \lyricmode {
  И -- же _ _
  _ _ тай --
  но _ _ _ _ _ _ _ _ _
  _ _ _ _ _ три -- свя -- ту -- ю
  песнь при -- пе -- ва -- ю -- ще, _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ от -- ло -- 
  жим по -- пе -- че -- ни -- е, _ _ _ _ _
  _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ _ _ _
  Ан -- гель -- ски -- ми не -- ви_-
  _ _ _ _ _ _ _ чин -- ми. Ал -- ли -- луй --
  и -- я, ал -- ли -- луй -- и я, ал -- ли -- луй --
   и я,
  
}

heruvimskaya_lyric_bass   = \lyricmode {
  _ _ _ _
  _ _ тай -- но
  тай -- но _ _ _ _ _
  и жи -- во -- тво -- ря -- щей _ _ _ три -- свя -- ту -- ю
  
  песнь при -- пе -- ва -- ю -- ще, _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ от -- ло -- жим __
  по -- пе -- че -- ни -- е, _ _ _ по -- пе_-
  _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ _ _ _
  Ан -- гель -- ски -- ми не --
  ви -- ди -- мо _ _ _ _ _ _ _ _ _ %до -- ри -- но -- си -- ма чин -- ми. Ал -- ли --
  %луй -- и -- я, ал -- ли -- луй -- и -- я, ал -- ли --
  %луй -- и -- я,
  
}


prositelnaya_soprano = \relative c'' {
  \global_i
  \dynamicUp
  \textMark "Ектения просительная."
  \textMark "I.–III."
  r2 d8\mf cis b a |
  b4\>( a)\! a2 \bar "||" 
  \textMark "II.–IV."
  r2 a4\mf ( d8[ cis] | \abr
  
  b) b cis cis d4\> d\! \bar "||"
  \textMark "V."
  r2 d8 cis b a |
  b4( cis) d2 \bar "||" | \abr
  
  \textMark "I.–IV."
  r4 r8 a fis'[( e d cis]) |
  b4 cis d2 \bar "||"
  \textMark "II.–V."
  r4 r8 fis,8\p d'[( cis b a]) |
  g4 e fis2 \bar "||" \abr
  
  \textMark "III.–VI."
  r4 r8 fis8 fis4( d'8[ cis] |
  b8) b g4 fis8 8 4 \bar "||"
  r2 r4 r8 g |
  a[( b] cis4) d8\> 8 4\! \bar "||" \abr
  
  d8[( cis b a] b4 cis) |
  d2~8 r\fermata r a\p |
  \time 3/4 a4 a8 a g g |
  fis4~8 r\fermata \bar "||"
}

prositelnaya_alt = \relative c' {
  \global_i
  \dynamicDown
  r2 fis2( |
  g8) g g g fis4-> fis\! |
  r2 fis2( |
  
  g8) g g g fis4 fis |
  r1 |
  g8 fis g g fis4 4 |
  
  r2 r4 r8 fis |
  g[( fis] g4) fis8 8 4 |
  r4 r8 fis d2( |
  e8) d cis4 d8 8 4 |
  
  r4 r8 fis d2( |
  g8) d cis4 d8 8 4 |
  r4 r8 fis b,[( cis d e]) |
  fis4 g fis2 |
  
  r2 g8[( fis] g4) |
  fis2~8 r r fis |
  4 8 8 8 e8 |
  d4~8 r 

}

prositelnaya_tenor = \relative c' {
  \global_i
  \dynamicUp
  r2 a4( d8[ cis] |
  b8) b cis cis d4\> d\! |
  r2 d8 cis b a |
  
  b4( a) a2 |
  r2 d8 cis b a |
  b4( a) a2 |
  
  r4 r8 a fis'[( e d cis]) |
  b4 4 2 |
  r4 r8 fis8 fis4( d'8[ cis] |
  b) b g4 fis8 8 4 |
  
  r4 r8 fis d'8[( cis b a]) |
  g4 e fis2 |
  r2 r4 r8 g8 |
  a[( b] a4) a8 \> 8 4\! |
  
  d8[( cis b a] b4 a) |
  a2~8 r8\fermata r d |
  4 8 cis8 b b |
  a4~8 r\fermata
}

prositelnaya_bass = \relative c {
  \global_i
  \dynamicDown
  r2 d~ |
  8 8 e a, d4\> d\! |
  r2 d2~ |
  
  8 8 e a, d4\> d\! |
  r1 |
  g8 fis e a, d4 d |
  
  r2 r4 r8 d8 |
  g[( fis] e4) b8 b b4 |
  r4 r8 fis'8 b,2~ |
  8 8 4 8 8 4 |
  
  r4 r8 fis'8 b,2~ |
  8 8 4 8 8 4 |
  r4 r8 fis' b,[( cis d e]) |
  fis4 e d2 |
  
  r2 g8[( fis] e4) |
  d2~8 r r d |
  d4 8 8 8 8 |
  4~8 r
 
}

prositelnaya_lyric_soprano   = \lyricmode {
Гос -- по -- ди, по -- ми -- луй. Гос --
по -- ди, по -- ми -- луй. Гос -- по -- ди, по -- ми -- луй.
По -- дай __ Гос -- по -- ди. По -- дай, __ Гос -- по -- ди.
_ _ _ _ _ _ _ Те -- бе, __ Гос -- по -- ди.
А -- минь.
  
}

prositelnaya_lyric_alt   = \lyricmode {
  Гос -- по -- ди, по -- ми -- луй. Гос -- по -- ди, по --
  ми -- луй. Гос -- по -- ди, по -- ми -- луй.
  По -- дай, Гос -- по -- ди. По -- дай, по -- дай, Гос -- по -- ди.
  По -- дай, по -- дай, Гос -- по -- ди. Те -- бе, Гос -- по -- ди.
  А -- минь. И ду -- хо -- ви тво -- е -- му.

}

prositelnaya_lyric_tenor   = \lyricmode {
  _ _ _ _ _ _ Гос -- по -- ди, по --
  ми -- луй.
  Гос -- по -- ди, по -- ми -- луй.
  По -- дай, Гос -- по -- ди.
  _ _ _ _ _ _ _
  По -- дай, Гос -- по -- ди. Те -- бе, Гос -- по -- ди.
}

prositelnaya_lyric_bass   = \lyricmode {
  _ _ _ _ _ _ Гос --
  по -- ди, по -- ми -- луй.
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \heruvimskaya_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \heruvimskaya_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \heruvimskaya_lyric_soprano
      \new Lyrics \lyricsto "alto" \heruvimskaya_lyric_alt
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \heruvimskaya_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \heruvimskaya_bass }
      >>
      \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \heruvimskaya_lyric_tenor
      \new Lyrics \lyricsto "bass" \heruvimskaya_lyric_bass
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
      \tempo 4=44
    }
  }
  
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
        \new Voice = "soprano" { \voiceOne  \keepWithTag #'V1 \prositelnaya_soprano }
        \new Voice  = "alto" { \voiceTwo  \keepWithTag #'V2 \prositelnaya_alt }
      >> 
      
      % \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \prositelnaya_lyric_soprano
      \new Lyrics \lyricsto "alto" \prositelnaya_lyric_alt
      % alternative lyrics above up staff
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass  \keepWithTag #'V3 \prositelnaya_tenor }
        \new Voice = "bass" { \voiceTwo  \keepWithTag #'V4 \prositelnaya_bass }
      >>
      \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \prositelnaya_lyric_tenor
      \new Lyrics \lyricsto "bass" \prositelnaya_lyric_bass
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
     % \tempo 4=44
    }
  }
  
  

}

   