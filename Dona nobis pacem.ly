\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Dona nobis pacem"
  composer = \markup\right-column{ "Неизвестный композитор XVI века" "Обработка Х. ХОПСОНА" }
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
    grob-interpret-markup grob (                         
      let (( dyntxt (ly:grob-property grob 'text ) )  )
      ( set! dyntxt (cond
        (( equal? dyntxt "f" ) "гр." ) 
        (( equal? dyntxt "p" ) "т." )
      )) #{ \markup \normal-text \italic $dyntxt #} )
    )) }



melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key f \major
  \time 3/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
    \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \tempo "Gently flowing" 4=100
  R2.*7
}

voiceone = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  
  f8\mp[( c]) a'2 | \abr
  
  g8[( c,]) bes'2 |
  a4( g) f |
  f e2 |
  d'4(\< c8[ bes]) a[( g])\! | \abr
  
  c4.(\> bes8) a4\! |
  a8[( g] f4 e) |
  f2 r4 |
  c'2.\p | \pbr
  
  c |
  c4( bes) a |
  a g2 |
  d'4\mp d2 |
  c4 c2 | \abr
  
  c8[(\> bes] a4 g) |
  f2.\! |
  f\p |
  e |
  f4.( g8) a[( bes]) | \abr
  
  c4 c,2 |
  bes'4\mp bes2 |
  a4 a2\> |
  e8[( g] c4 c,) |
  f2.\! | \abr
  
   R2.*6 
  
  
  f8[(\mp c]) a'2 |
  g8[( c,]) bes'2 |
  a4( g) f |
  f e2 | \abr
  
  d'4(\< c8[ bes]) a[( g])\! |
  c4.(\> bes8) a4 |
  a8[(\! g] f4 e) |
  f2. | \abr
  
  f8[(\mf c]) a'2 |
  g8[( c,]) bes'2 |
  a4( g) f |
  f e2 | \abr
  d'4\<( c8[ bes]) a[( g])\! |
  c4.(\> bes8) a4 |
  a8[(\! g] f4 e) |
  f2. | \pbr
  
  f8[(\f c]) f2 |
  g8[( c,]) bes'2 |
  a4( g) f |
  f e2 | \abr
  
  d'4( c8[ bes]) a[( g]) |
  c4.( bes8) a4 |
  a8[( g]\> f4 e) |
  << f2. {s2 s8 s\!} >> | \pbr 
    
   f2.\mf |
   e |
   f4.(\> g8) a[( bes]) |
   c4 c,2 |
   bes'4\mp bes2 | \abr
   
   a4 a2 |
   e8[(\> g] c4 c,) |
   f2.\p |
   f\spp |
   e |
   f4.( g8) a[( bes]) | \abr
   
   c4 c,2 |
   bes'4 bes2 |
   a4 a2 |
   e8[( g] c4^\markup\bold"rit." c,) |
   f2. | \pbr
   
   c'2.\p |
   c |
   c4(\< bes) a |
   a g2\mp | \abr
   
   d'4\mf d2 |
   c4 c2 |
   c8[(\> bes] a4 g) |
   f2.\mp \pbr
   
   \tempo "a tempo"
   R2.*2 |
   c'4\mp(\< a f\! |
   d'2\> c4)\! |
   c2. | \abr
   
   bes2.\p( |
   c2 bes4) |
   a2. |
   << g2.\> { s4 s^\markup\bold"rit." s} >> |
   a2.\pp | \abr
   
   R2.*3 \bar "|."
   
   
  
}

voicetwo = \relative c'' {
  \global
  \autoBeamOff
  \dynamicUp
  R2.*9
  R2.*15 R2.*6
  R2.*8
  
  c2.\mf |
  c |
  c4( bes) a |
  a g2 | \abr
  
  d'4 d2 |
  c4 c2 |
  c8[( bes] a4 g) |
  f2. | \abr
  
  c'2.\f |
  c |
  c4( bes) a |
  a g2 | \abr
  d'4 d2 |
  c4 c2 |
  c8[( bes]\> a4 g) |
  << f2. {s2 s8 s\!} >> 
  
  c'2.\mf |
  c |
  c4( bes)\> a |
  a g2 |
  d'4\mp d2 |
  
  c4 c2 |
  c8[(\> bes] a4 g) |
  f2.\p |
  f\spp |
  e |
  f4.( g8) a8[( bes]) |
  
  c4 c,2 |
  bes'4 bes2 |
  a4 a2 |
  e8[( g] c4 c,) |
  f2.
  
  f2.\p |
  e |
  f4.(\< g8) a[( bes]) |
  c4 c,2\mp |
  
  bes'4\mf bes2 |
  a4 a2 |
  e8[(\> g] c4 c,) |
  f2.\mp
  
  a4( f c) |
  bes'2. |
  a |
  bes |
  a4( bes) a |
  
  a( g f) |
  e2. |
  f4( g a8[ bes] |
  c4\> c,2) |
  f2.\pp
  
  R2.*3
  
}

voicethree = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  R2.*9
  R2.*15 R2.*6
  R2.*16
  
  f2.\f |
  e |
  f4.( g8) a[( bes]) |
  c4 c,2 |
  
  bes'4 bes2 |
  a4 a2 |
  e8[( g]\> c4 c,) |
  << f2. {s2 s8 s\!} >> 
  
  R2.*16
  
  f8[(\p c]) a'2 |
  g8[( c,]) bes'2 |
  a4(\< g) f |
  f e2\mp |
  
  d'4\mf( c8[ bes]) a[( g]) |
  c4.( bes8) a4 |
  a8[(\> g] f4 e) |
  f2.\mp
  
  R2. |
  g4\mp( e c) |
  f2. |
  d4 e2 |
  f4(\< g) f\! |
  
  f\>( e d)\! |
  c g'2\p( |
  f4 e) f |
  f2\>( e4) |
  f2.\pp |
  
  R2.*3
  
}


lyricone = \lyricmode {
  Do -- na
  no -- bis, no -- bis pa -- cem. Do -- na
  no -- bis pa -- cem, Do --
  
  na no -- bis pa -- cem. Do -- na no -- bis
  pa -- cem. Do -- na no -- bis
  pa -- cem. Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis, no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis, no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis, no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem. Do -- na
  no -- bis pa -- cem. Do -- na no -- bis
  pa -- cem. Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  A -- men,
  a -- men, a -- men.
}

lyrictwo = \lyricmode {
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem. Do -- 
  na no -- bis pa -- cem. Do -- na no -- bis
  pa -- cem. Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  A -- men, a -- men, a -- men,
  a -- men, a -- men.
}

lyricthree = \lyricmode {
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis, no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  
  A -- men, a -- men, a -- men,
  a -- men, a -- men, a -- men.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "staffone" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voiceone" { \oneVoice \voiceone }
      >> 
      
      \new Lyrics \lyricsto "voiceone" { \lyricone }
      
      \new Staff = "stafftwo" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicetwo" { \oneVoice \voicetwo }
      >> 
      
      \new Lyrics \lyricsto "voicetwo" { \lyrictwo }
      
      \new Staff = "staffthree" \with {
        instrumentName = ""
        shortInstrumentName = ""
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "voicethree" { \oneVoice \voicethree }
      >> 
      
      \new Lyrics \lyricsto "voicethree" { \lyricthree }
  

    >>

    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
