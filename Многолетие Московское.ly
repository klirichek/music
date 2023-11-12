\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
 title = "Многолетие"
  subtitle = "(московское)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
                                                   grob-interpret-markup grob (                         
                                                                                let (( dyntxt (ly:grob-property grob 'text ) )  )
                                                                                ( set! dyntxt (cond
                                                                                               (( equal? dyntxt "ff" ) "оч. гр." ) 
                                                                                               (( equal? dyntxt "f" ) "гр." )
                                                                                               (( equal? dyntxt "mf" ) "ум." )
                                                                                               (( equal? dyntxt "mp" ) "ум." )
                                                                                               (( equal? dyntxt "p" ) "т." )
                                                                                               )) #{ \markup \normal-text \italic $dyntxt #} )
                                                   )) }


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
  
  \key c \major
  \time 3/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \autoBeamOff
  c4.( b8 c[ d] |
  e4. d8)]   e f |
  g4( a8[ g]) f e |
  e4 d r |
  d8[( c] b[ c] d[ e] | \abr
  
  f8[ e] d[ e] f[ g] |
  a4) f d |
  c2( b4) |
  c2 r4 |
  d4.( b8 e[ d] |
  c4. a8 d[ c] | \abr
  
  b4 c d |
  e) fis g8[( a]) |
  g2( fis4) |
  g2 r4 |
  r r8<e g> <d f> e |
  <c e>4 <b d> r | \abr
  
  r4 r8 <e g> <d f> e |
  <f a>2.( |
  <e g> |
  f4) e d |
  c2.~( |
  c4 b8[ a] b4) |
  c2. \bar "|."
  
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
   e4.( d8 e f |
   g2) g8 g |
   g2 g8 g |
   g4 g r |
   g g r |
   
   b <b g> r |
   c a a |
   g2( f4) |
   e2 r4 |
   b'4.( g8 c[ b] |
   a4. fis8 b[ a] |
   
   g4 a b |
   c) c b8[( c]) |
   b2( a4) |
   b2 r4 |
   r r8 c b c |
   g4 g r |
   
   r4 r8 c b c |
   c2.~( |
   c |
   a4) a a |
   g2. |
   f |
   e
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  g2.( |
  c4. b8) c d |
  e4( f8 e) d c |
  c4 b r |
  b8([ a] g[ a] b[ c] |
  
  d[ c] b[ c] d[ e] |
  f4) d f |
  e2( d4) |
  c2 r4 |
  b b r |
  <a fis> q r |
  
  d( c b |
  e) d d8[( e]) |
  d2. |
  d4. <d f>8 <c e> d |
  e4 <e c> r |
  r r8 <d f> <c e> d |
  
  e4 <e c> r |
  f2.( |
  e |
  d4) c d |
  e2.( |
  d) |
  
  g,2.
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
   c2.~( |
   c4 e8[ g]) e d |
   <c c'>2 b'8 c |
   g4 g8 g, b d |
   g4 g, r |
   
   d' d r |
   f f f |
   g2. |
   c,4. g'8 e c |
   g'4 <g g,> r |
   d d r |
   
   g2.( |
   c,4) d g8[( c,]) |
   d2. |
   g4. g8 a b |
   c4 c, r |
   r r8 g' a b |
   
   c4 c, r |
   \autoBeamOn f8([ e] f[ g] a[ b] |
   c[ b] c[ g]) \autoBeamOff  e c |
   d4 e f |
   g2.( |
   g,) |
   c2.
   
}

lyricssop = \lyricmode {
  _ _ _ _ _ _ _ _
  Мно -- га -- я ле --
  та! Мно -- 
  га -- я ле -- та! _ _ _
  _ _ _ _ _ _ _ _ ле -- та!
}

lyricsalt = \lyricmode {
  Мно -- га -- я, мно -- га -- я ле -- та!
  Ле -- та ле -- та мно -- га -- я ле --
  та! Мно --
  
  га -- я ле -- та! Мно -- га -- я 
  ле -- та! Мно -- га -- я, мно -- 
  га -- я ле -- та!
}

lyricstenor = \lyricmode {
  _ _ _ _ _ _ _ _
  Мно -- га -- я ле --
  та! Ле -- та! Ле -- та! Мно --
  
  га -- я ле -- та! Мно -- га -- я ле -- та!
  Мно -- га -- я ле -- та! Мно --
  га -- я ле -- та!
}

lyricsbass = \lyricmode {
  _ _ _ _ _ _ _ _ Мно -- га -- я
  ле -- та! Ле -- та! Мно -- га -- я ле --
  та! Мно -- га -- я _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Мно -- га -- я ле -- та! Мно -- га -- я,
  мно -- га -- я ле -- та!
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 70
    indent = 20
    ragged-last-bottom = ##f
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
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
             \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricssop
     % \new Lyrics \lyricsto "soprano" { \lyricssop }
      \new Lyrics \lyricsto "alto" { \lyricsalt }

      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
           \new Lyrics \with {alignAboveContext = "downstaff"} \lyricsto "tenor" \lyricstenor
      \new Lyrics \lyricsto "bass" { \lyricsbass }
      
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
