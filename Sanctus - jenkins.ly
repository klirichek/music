\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Sanctus"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  %\override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
}

abr = { \break }
%abr = {}

pbr = {\pageBreak}

pbr={}

% вместо знака альтерации однократно пишем текст сбоку от ноты (голос)
aside =  #(define-music-function 
           (parser location  x-y text)
           (pair? markup?)
           #{
              \once \override Accidental.extra-offset = #x-y
              \once \override Accidental.stencil = #ly:text-interface::print
              \once \override Accidental.text = \markup {\rotate #90 \rounded-box \pad-x #2 #text } 
           #}
           )


sopvoice = \relative c'' {
  \global
  \tempo 4=65
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  R1*4
  \mark \default
  \repeat volta 2 {
    a4 a r2 |
    gis4 gis r2 |
    g4 g4 r2 |
    f8. f16 f4 r2
  }
  \repeat volta 2 {
    \set Score.currentBarNumber = #9
    a4 a r2 |
    gis8. gis16 gis4 r2 |
    g4 g r2 |
    f8. f16 f4 r2 |
  }
  R1*2
  \bar "||" \mark \default
  a8. a16 a8 a a a g g |
  r8. a16 a8 a a a gis4 |
  a8. a16 a8 a a a g g |
  r8. a16 a8 a a a bes4 |
  a8. a16 a8 a a a g g |
  
  \pbr
  
  r8. a16 a8 a a a gis4 |
  a8. a16 a8 a a a g g |
  a8. a16 a2 gis4 |
  a2. r4 |
  R1*2
  \bar "||" \mark \default
  a8. a16 a8 a a a g g |
  r8. a16 a8 a a a gis4 |
  a8. a16 a8 a a a g g |
  r8. a16 a8 a a a bes4 |
  g8. g16 g8 g g g a a |
  f8. f16 f8 f f f g g |
  e8. e16 e8 e e4 f'8 e |
  es2( d8) r e d |
  
  \pbr
  
  d2( cis8) r b cis |
  d2~ d8 r e d |
  d2~ d8 r e d |
  d2~( d8[ cis]) b[( cis]) |
  d1~ |
  d2~ d8 r r4
  \bar "||" \mark \default \key f \minor
  r8. d16\ff d8 c~ c4 c8 d |
  d4( c8[ d] es[ f d c]) |
  d1~ |
  d2.~  d8 r |
  r8. d16 d8 c~ c4 c8 d |
  d4( c8[ d] es[ f d c]) |
  d1~ |
  d2.~ d8 r |
  R1 |
  \time 5/4 R4*5 |
  \key d \minor \mark \default \time 4/4
  R1*11
  \bar "||" \mark \default 
  a8. a16 a8 a a a g g |
  
  \pbr
  
  r8. a16 a8 a a a gis4 |
  a8. a16 a8 a a a g g |
  r8. a16 a8 a a a bes4 |
  g8. g16 g8 g g g a a |
  f8. f16 f8 f f f g g |
  e8. e16 e8 e e4 f'8 e |
  es2( d8) r e d |
  d2( cis8) r b cis |
  d2~ d8 r e d |
  d2~ d8 r e d |
  d2~( d8[ cis]) b[( cis]) |
  d1~ |
  d2~ d8 r r4
  \repeat volta 2 {
    \mark \default \key f \minor
  \set Score.currentBarNumber = #75  
  r8. d16\ff d8 c~ c4 c8 d |
  d4( c8[ d] es[ f d c]) |
  
  \pbr 
  
  d1~ |
  d2.~  d8 r |
  r8. d16 d8 c~ c4 c8 d |
  d4( c8[ d] es[ f d c]) |
  d1~ |
  d2.~ d8 r |
  }
  
  \set Score.currentBarNumber = #83
  R1 |
  \time 5/4 R4*5 |
  \key d \minor \time 4/4
  \repeat volta 2 {
  \set Score.currentBarNumber = #85
  a4 a r2 |
  gis4 gis r2 |
  g4 g r2 |
  f8. f16 f4 r2
  }
  \set Score.currentBarNumber = #89
  a4 a r2 |
  a4 a r2 |
  a4 a r2 |
  R1
  \bar "|."
    
}


altvoice = \relative c' {
  \global
  \dynamicDown
  R1*4 |
  \repeat volta 2 { f4 f r2 |
  e4 e r2 |
  d4 d r2 |
  e8. d16 d4 r2 }
  \repeat volta 2 {
    f4 f r2 |
    e8. e16 e4 r2 |
    d4 d r2 |
    e8. d16 d4 r2
  }
  \set Score.currentBarNumber = #13
  R1*2
  f8. f16 f8 f f f e e |
  r8. f16 f8 f f f e4 |
  f8. f16 f8 f f f e e |
  r8. f16 f8 f f f f4 |
  f8. f16 f8 f f f e e |
  
  r8. f16 f8 f f f e4 |
  f8. f16 f8 f f f e e |
  f8. f16 f4( es4) e |
  e2. r4 |
  R1*2
  f8. f16 f8 f f f e e |
  r8. f16 f8 f f f e4 |
  f8. f16 f8 f f f e e |
  r8. f16 f8 f f f f4 |
  g8. g16 g8 g g g a a |
  f8. f16 f8 f f f g g |
  e8. e16 e8 e e4 f8 e |
  es2( d8) r e d |
  
  d2( cis8) r b cis |
  d2~ d8 r e d |
  d2~ d8 r e d |
  d2~( d8[ cis]) b[( cis]) |
  d1~ |
  d2~ d8 r r4
  r8. as'16 as8 as~ as4 as8 as |
  as1 |
  a~ |
  a2.~ a8 r |
  r8. as16 as8 as~ as4 as8 as |
  as1 |
  fis1~ |
  fis2.~ fis8 r |
  R1 |
  R4*5 |
  R1*11 |
  f8. f16 f8 f f f e e |
  
  r8. f16 f8 f f f e4 |
  f8. f16 f8 f f f e e |
  r8. f16 f8 f f f f4 |
  g8. g16 g8 g g g a a |
  f8. f16 f8 f f f g g |
  e8. e16 e8 e e4 f8 e |
  es2( d8) r e d |
  d2( cis8) r b cis |
  d2~ d8 r e d |
  d2~ d8 r e d |
  d2~( d8[ cis]) b[( cis])
  d1~ |
  d2~ d8 r r4
  \repeat volta 2 {
    r8. as'16 as8 as~ as4 as8 as |
    as1 |
    
    a~ |
    a2.~ a8 r |
    r8. as16 as8 as~ as4 as8 as |
    as1 |
    fis1~ |
    fis2.~ fis8 r
  }
  R1
  R4*5
  \repeat volta 2 {
    f4 f r2 |
    e4 e r2 |
    d4 d r2 |
    e8. d16 d4 r2 
  }
  f4 f r2 |
  f4 f r2 |
  f4 f r2 |
  R1
}


tenorvoice = \relative c' {
  \global
  \dynamicDown
  R1*4 |
  \repeat volta 2 {
    d4 d r2 |
  b4 b r2 |
  bes4 bes r2 |
  a8. a16 a4 r2
  }
  \repeat volta 2 {
    d4 d r2 |
    b8. b16 b4 r2 |
    bes4 bes r2 |
    a8. a16 a4 r2
  }
  R1*2 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d b4 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d des4 |
  d8. d16 d8 d d d d d |
  
  r8. d16 d8 d d d b4 |
  d8. d16 d8 d d d d d |
  d8. d16 d4( c) b |
  d( cis2) r4 |
  R1*2
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d b4 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d des4 |
  bes8. bes16 bes8 bes bes bes c c |
  d8. d16 d8 d d d e d |
  d8. d16 d8 b cis4 cis8 cis |
  a2( bes8) r bes bes |
  
  a2~ a8 r g a |
  b2( bes8) r bes bes |
  a2( bes8) r bes bes |
  b2( a4) a |
  a1~ |
  a2~ a8 r r4 |
  \key f \minor r8. es'16\ff es8 es~ es4 es8 es |
  es1 |
  d1~ |
  d2.~ d8 r |
  r8. es16 es8 es~ es4 es8 es |
  es1 |
  d1~ |
  d2.~ d8 r |
  R1 |
  R4*5 |
  \key d \minor
  R1*11 |
  d8. d16 d8 d d d d d |
  
  r8. d16 d8 d d d b4 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d des4 |
  bes8. bes16 bes8 bes bes bes c c |
  d8. d16 d8 d d d e d |
  d8. d16 d8 b cis4 cis8 cis |
  a2( bes8) r bes bes |
  a2~ a8 r g a |
  b2( bes8) r bes bes |
  a2( bes8) r bes bes |
  b2( a4) a |
  a1~ |
  a2~ a8 r r4 |
  \repeat volta 2 {
      \key f \minor r8. es'16\ff es8 es~ es4 es8 es |
  es1 |
  d1~ |
  d2.~ d8 r |
  r8. es16 es8 es~ es4 es8 es |
  es1 |
  d1~ |
  d2.~ d8 r |
  }
  R1
  R4*5 \key d \minor
  \repeat volta 2 {
    d4 d r2 |
    b4 b r2 |
    bes4 bes r2 |
    a8. a16 a4 r2
  }
  d,4 d r2 |
  d4 d r2 |
  d4 d r2 |
  R1
    
 
}


bassvoice = \relative c {
  \global
  \dynamicUp
  R1*4
  \repeat volta 2 {
    d4 d r2 |
    d4 d r2 |
    d4 d r2 |
    d8. d16 d4 r2
  }
  \repeat volta 2 {
    d4 d r2 |
    d8. d16 d4 r2 |
    d4 d r2 |
    d8. d16 d4 r2 |
  }
  R1*2 |
  d4 d8 r r2 |
  d4 d8 r r2 |
  d4 d8 r r2 |
  d4 d8 r r2 |
  d4 d8 r r2 |
  
  d4 d8 r r2 |
  d4 d8 r r2 |
  d8. d16 d4( f) e |
  a,2. r4 |
  R1*2 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d d4 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d des4 |
  f8. f16 f8 f e e e es |
  a8. a16 a8 a a a bes bes |
  g8. g16 g8 g g4 g8 g |
  g2( f8) r f f |
  
  e2~ e8 r e e |
  f2( g8) r g g |
  f2( g8) r g g |
  f2( e4) e |
  d1~ |
  d2~ d8 r r4 |
  r8. as'16 as8 as~ as4 as8 as |
  f1 |
  a~ |
  a2.~ a8 r |
  r8. as16 as8 as~ as4 as8 as |
  f1 |
  b1~ |
  b2.~ b8 r |
  R1 |
  R4*5 |
  R1*11 |
  d,8. d16 d8 d d d d d |
  
  r8. d16 d8 d d d d4 |
  d8. d16 d8 d d d d d |
  r8. d16 d8 d d d des4 |
  f8. f16 f8 f e e e es |
  a8. a16 a8 a a a bes bes |
  g8. g16 g8 g g4 g8 g |
  g2( f8) r f f |
  e2~ e8 r e e |
  f2( g8) r g g |
  f2( g8) r g g |
  f2( e4) e |
  d1~ |
  d2~ d8 r r4 |
  \repeat volta 2 {
    r8. as'16 as8 as~ as4 as8 as |
    f1 |
    a1~ |
    a2.~ a8 r |
    r8. as16 as8 as~ as4 as8 as |
    f1 |
    b1~ |
    b2.~ b8 r
  }
  R1
  R4*5
  \repeat volta 2 {
  r4 r d, d |
  r r d d |
  r r d d |
  r8. r16 r4 d8. d16 d4 |
  }
  d1~ |
  d~ |
  d |
  d8 r r4 r2
 
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
   Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  De -- us Sa -- ba -- oth, De -- us Sa -- ba -- oth,
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  
  Ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a.
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a
  Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a __ tu -- a __
  
  Ho -- san -- na in ex -- cel -- sis __
  Ho -- san -- na in ex -- cel -- sis __
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, Ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a
  Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a __ tu -- a __
  
  Ho -- san -- na in ex -- cel -- sis __
  Ho -- san -- na in ex -- cel -- sis __
  
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  
  Sanc -- tus, Sanc -- tus, Sanc -- tus.
  
}

lyricscorenr = \lyricmode {
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus 
                    Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  De -- us Sa -- ba -- oth, De -- us Sa -- ba -- oth,
  De -- us Sa -- ba -- oth, De -- us Sa -- ba -- oth,
  
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  
  Ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a.
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  ple -- ni sun cæ -- li et ter -- ra, ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a
  Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a __ tu -- a __
  
  Ho -- san -- na in ex -- cel -- sis __
  Ho -- san -- na in ex -- cel -- sis __
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, et ter -- ra glo -- ri -- a,
  Ple -- ni sun cæ -- li et ter -- ra, Ple -- ni sun cæ -- li et ter -- ra, glo -- ri -- a tu -- a
  Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a, __ Glo -- ri -- a __ tu -- a __
  
  Ho -- san -- na in ex -- cel -- sis __
  Ho -- san -- na in ex -- cel -- sis __ 
  Ho -- san -- na in ex -- cel -- sis __
  Ho -- san -- na in ex -- cel -- sis __
  
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  
  Sanc -- tus, Sanc -- tus, Sanc -- tus.
  
}


lyricsbass = \lyricmode {
  \repeat unfold 19 \skip 1
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Sanc -- tus, 
  Sanc -- tus, Sanc -- tus, Sanc -- tus, 
  
  \repeat unfold 165 \skip 1
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  Sa -- nctus.
}

lyricsbassnr = \lyricmode {
  \repeat unfold 19 \skip 1
  \repeat unfold 19 \skip 1
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Sanc -- tus, 
  Sanc -- tus, Sanc -- tus, Sanc -- tus, 
  
  \repeat unfold 165 \skip 1
  \repeat unfold 14 \skip 1
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  Sanc -- tus, Sanc -- tus, Sanc -- tus, Do -- mi -- nus
  Sa -- nctus.
}


\book {
  \bookOutputSuffix "NoRepeats"
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
%  ragged-bottom = ##f
  
%  ragged-last =  ##f
ragged-last-bottom =  ##f
  
}

\score {
  \unfoldRepeats
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscorenr }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsbassnr }
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      printKeyCancellation = ##f
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=65
  }
}
}

\book {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
%  ragged-bottom = ##f
  
%  ragged-last =  ##f
ragged-last-bottom =  ##f
  
}

\score {
  
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsbass }
    >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 20)
    \context {
      \Staff \RemoveEmptyStaves
      printKeyCancellation = ##f
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

