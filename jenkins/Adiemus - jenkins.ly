\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Adiemus"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-alphabet
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


sopvoice = \relative c' {
  \global
  \tempo 4=76
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
   R2.*4
  \mark #1
  R2.*4
  \mark #2
  R2.*4
  \mark #1
  \set Score.currentBarNumber = #5
  R2.*4
  \mark #2
  R2.*4
  
  \mark \default
    e16^\markup\italic"cresc" e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2.
  \mark \default bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  g8. g16 e8 a g4 |
  \mark 6 R2.*16 
  \mark 7 e16^\markup\italic"cresc" e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2. |
  bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  
  g8. g16 e8 a g4 |
  \mark 8 R2.*4
  \mark 9 R2.*4 |
  \mark 10 e16^\markup\italic"cresc." e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2.
  \bar "||" \mark 11 bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  g8. g16 e8 a g4( |
  fis2.~ |
  fis) |
  \mark 12 R2. |
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2.\fermata )
  \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicDown
   R2.*4
  
    R2.*8
    R2.*8
  
  
  c16 c c c c8 c c c 
  e16 e e e e8 e fis4 |
  g16 g g g g8 g g g |
  g8. fis16 d2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2. |
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4 |
  e8. e16 c8 e e4 |
  R2.*16
  \set Score.currentBarNumber = #32
  c16 c c c c8 c c c |
  e16 e e e e8 e fis4 |
  g16 g g g g8 g g g |
  g8. fis16 d2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2. |
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4
  
  e8. e16 c8 e e4 |
  R2.*4
  R2.*4
  c16 c c c c8 c c c |
  e16 e e e e8 e fis4 |
  g16 g g g g8 g g g |
  g8. fis16 d2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2.
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4
  e8. e16 c8 e e4( d2.~ d) |
  R2.
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2.)
 e8. e16 c8 e e4( fis2. )
}


tenorvoice = \relative c {
  \global
  \dynamicDown
  R2.*4
  
    R2.*8
    R2.*8
  
  e16_\markup\italic"cresc" e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2.
  bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  g8. g16 e8 a g4 |
  R2.*16 
  e16_\markup\italic"cresc" e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2. |
  bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  
  g8. g16 e8 a g4 |
  R2.*4
  R2.*4 |
  e16_\markup\italic"cresc." e e e e8 e fis fis |
  g16 g g g g8 g a4 |
  b16 b b b b8 b c c |
  b8.\mf a16 g2 |
  g16 g g g g8 g e g |
  a8. d,16 d2~ |
  d2.
  \bar "||" bes'16 bes bes bes bes8 bes g bes |
  c8. f,16 f2 |
  g8. g16 e8 a g4 |
  g8. g16 e8 a g4( |
  fis2.~ |
  fis) |
  R2. |
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  g8. g16 e8 a g4( | a2. )
  \bar "||"
 
}


bassvoice = \relative c {
  \global
  \dynamicUp
   R2.*4
   
    R2.*8
    R2.*8
  
  c16 c c c c8 c c c 
  b16 b b b b8 b d4 |
  d16 d d d d8 d e e |
  d8. c16 b2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2. |
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4 |
  e8. e16 c8 e e4 |
   R2.*16 
  c16 c c c c8 c c c |
  b16 b b b b8 b d4 |
  d16 d d d d8 d e e |
  d8. c16 b2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2. |
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4
  
  e8. e16 c8 e e4 |
  R2.*4
  R2.*4
  c16 c c c c8 c c c |
  b16 b b b b8 b d4 |
  d16 d d d d8 d e e |
  d8. c16 b2 |
  e16 e e e e8 e b e |
  fis8. a,16 a2~ |
  a2.
  g'16 g g g g8 g d g |
  a8. c,16 c2 |
  e8. e16 c8 e e4
  e8. e16 c8 e e4( d2.~ d) |
  R2.
  e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.)
 e8. e16 c8 e e4( d2.\fermata )
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la __
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye
  
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la __
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye
  
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la __
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye __
  a -- ya coo ah -- eh __
   a -- ya coo ah -- eh __
    a -- ya coo ah -- eh __
     a -- ya coo ah -- eh __
      a -- ya coo ah -- eh __
       a -- ya coo ah -- eh __
        a -- ya coo ah -- eh __
         a -- ya coo ah -- eh __
}


lyricsbass = \lyricmode {
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye
  
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye
  
  A -- na ma na coo -- le ra -- we a -- na ma na coo -- le ra
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la
  a -- na ma na coo -- le ra -- we a -- ka -- la a -- ya doo a -- ye, a -- ya doo a -- ye __
  a -- ya coo ah -- eh __
   a -- ya coo ah -- eh __
    a -- ya coo ah -- eh __
     a -- ya coo ah -- eh __
      a -- ya coo ah -- eh __
       a -- ya coo ah -- eh __
        a -- ya coo ah -- eh __
         a -- ya coo ah -- eh __

}


\bookpart {
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
    %  \new Lyrics \lyricsto "bass" { \lyricsbass }
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=65
  }
}
}

