\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Armed Man"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \minor
  \time 12/8
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

beginning = {
 \repeat volta 2 {
 R1.*5
 }
 R1.*8
 \time 3/8 R4. 
 \time 12/8 R1.*2 \bar "||" |
}
sopvoice = \relative c' {
  \global
  \tempo 4=100
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
 \beginning
 \mark \default
 g'4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 g'4 g8 f4 f8 g4 g8 d4. |
 g4 g8 f4 f8 g4 g8 d4 g8 |
 a4 g8 f4 e8 d4.~ d8 r4 |
 
 \pbr
 
 g,4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 3/8 bes8 a4 |
 \time 12/8 g1. |
 R |
 \bar "||" \mark \default |
 R1.*6 |
 \bar "||" \mark \default |
 g4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 g'4 g8 f4 f8 g4 g8 d4. |
 
 \pbr
 
 g4 g8 f4 f8 g4 g8 d4 g8 |
 a4 g8 f4 g8 d4.~ d8 r4 |
 g,4 g8 c4 c8 bes a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 3/8 bes8 a4 |
 \time 12/8 g1. |
 R1.*3 |
 \bar "||" \mark \default 
 R1.*9
 \mark \default
 \repeat volta 2
 {
   g4 g8 c4 c8 bes a4 g4. |
 
 \pbr
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8
 }
 
 g'4 g8 f4 f8 g4 g8 d4. |
 g4 g8 f4 f8 g4 g8 d4 g8 |
 a4 g8 f4 es8 d4.~ d8 r4 |
 
 g,4 g8 c4 c8 bes a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 3/8
 
 \pbr
 bes8 a4 |
 \time 12/8 \bar "||" \mark \default g4. r8 r1 |
 R1.*8 \bar "||"
 g4^\markup{\dynamic mf \italic Solo} g8 c4 c8 bes a4 g4. |
 
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 
 \pbr
 
 g4 g8 c4 c8 bes a4 g4. |
 r4. r8 d' d g,4. r8 d'4 |
 \time 3/8 bes8 a4 |
 \time 12/8 g1. |
 R1.*3 |
 \mark \default 
 \repeat volga 2 {
   g4^\markup{\dynamic f \italic"tutti"} g8 c4 c8 bes a4 g4. |
   r8 d' d g,4. r8 d' d d c4 |
   
   \pbr
   bes8 a4 g4. d'8 d d g,4 r8 
 }
 g'4 g8 f4 f8 g4 g8 d4. |
 g4 g8 f4 f8 g4 f8 d4 g8 |
 a4 g8 f4 es8 d4.~ d8 r4 |
 g,4\f g8 c4 c8 bes a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 6/8 bes8 a4 g4. |
 \time 12/8
 
 \pbr
 r8 d' d g,4. r8 d' d d c4 |
 r8 d d g,4. r8 d' d d c4 |
 r8 d d g,4. r8 d' d d c4 |
 bes8 a r g\fff r1 \bar "|."
   
}


altvoice = \relative c' {
  \global
  \dynamicDown
  \beginning
   g4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 g'4 g8 f4 f8 g4 g8 d4. |
 g4 g8 f4 f8 g4 g8 d4 g8 |
 a4 g8 f4 e8 d4.~ d8 r4 |
 
  g,4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 3/8 bes8 a4 |
 \time 12/8 g1. |
 R |
 R1.*6 |
 d'4 d8 g4 g8 d c4 d4. |
 r8 g g d4. r8 g g g es4 |
 d8 c4 d4. g8 g g d4 r8 |
 bes'4 bes8 a4 a8 bes4 bes8 g4.
 
 bes4 bes8 a4 a8 bes4 bes8 g4 bes8 |
 c4 bes8 a4 g8 g4.~ g8 r4 |
 d4 d8 g4 g8 d c4 d4. |
 r8 g g d4. r8 g g g a4 |
 es8 d4 |
 d1. |
 R1.*3
 R1.*9
 \repeat volta 2 {
   d4 d8 a'4 a8 es es4 d4.
   
   r8 bes' bes f4. r8 g g a a4 |
   g8 fis4 g4. bes8 bes bes d,4 r8
 }
 bes'4 bes8 a4 a8 bes4 bes8 g4. |
 bes4 bes8 a4 a8 bes4 bes8 g4 bes8 |
 c4 bes8 a4 g8 g4.~ g8 r4
 d4 d8 a'4 a8 es es4 d4. |
 r8 bes' bes f4. r8 g g a a4 |
 
 g8 fis4 |
 g4. r8 r1
 R1.*8 |  R1.
 
 g,4^\markup{\dynamic mf \italic Solo} g8 c4 c8 bes a4 g4. |
 r8 d' d g,4. r8 d' d d c4
 
 bes8 a4 g4. d'8 d d g,4 r8 |
 g'4 g8 c4 c8 bes a4 g4. |
 bes,8 a4 |
 g1. |
 R1.*3 |
 
 \repeat volta 2 {
   d'4 d8 a'4 a8 es es4 d4. |
   r8 bes' bes f4. r8 g g a a4 |
   
   g8 fis4 g4. bes8 bes bes d,4 r8
 }
 bes'4 bes8 a4 a8 bes4 bes8 g4. |
 bes4 bes8 a4 a8 bes4 bes8 g4 bes8 |
 c4 bes8 a4 g8 g4.~ g8 r4 |
 d4 d8 a'4 a8 es8 es4 d4. |
 r8 bes' bes f4. r8 g g a a4 |
 g8 fis4 d4. |
 
 r8 bes' bes f4. r8 g g a a4 |
 r8 bes bes f4. r8 g g a a4 |
 r8 bes bes f4. r8 g g a a4 |
 g8 fis r d r1
 
}


tenorvoice = \relative c' {
  \global
  \dynamicDown
  \beginning
  R1.*6
  
 g4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 \time 3/8 bes8 a4 |
 \time 12/8 g1. |
 R |
 R1.*6 |
 g4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 g'4 g8 f4 f8 g4 g8 d4.
 
 g4 g8 f4 f8 g4 g8 d4 g8 |
 a4 g8 f4 e8 d4.~ d8 r4 |
 g,4 g8 c4 c8 bes8 a4 g4. |
 r8 d' d g,4. r8 d' d d c4 |
 bes'8 a4 |
 g1. |
 R1.*3 |
 R1.*9 |
 \repeat volta 2 {
   bes,4 bes8 es4 es8 c c4 bes4. |
   r8 f' f c4. r8 d d f f4 |
   bes,8 a4 bes4. g'8 g g bes,4 r8
 }
 d4 d8 c4 c8 d4 d8 d4. |
 d4 d8 c4 c8 d4 d8 d4 d8 |
 f4 es8 d4 c8 d4.~ d8 r4 |
 bes4 bes8 es4 es8 c c4 bes4. |
 r8 f' f d4. r8 d d f f4 |
 
 bes,8 a4 |
 bes4. r8 r1 |
 R1.*8
 R1.*2
 g4_\markup{\dynamic mf \italic Solo } g8 c4 c8 bes a4 g4. |
 
 r8 d' d g,4. r8 d' d d c4 |
 bes8 a4 g4. d'8 d d g,4 r8 |
 bes a4 g1. |
 R1.*3 |
 \repeat volta 2 {
   bes4_\markup{\dynamic f \italic tutti} bes8 es4 es8 c c4 bes4. |
   r8 f' f c4. r8 d d f f4 |
   bes,8 a4 bes4. g'8 g g bes,4 r8
 }
 d4 d8 c4 c8 d4 d8 d4. |
 d4 d8 c4 c8 d4 d8 d4 d8 |
 f4 es8 d4 c8 d4.~ d8 r4 |
 bes4\f bes8 es4 es8 c c4 bes4. |
 r8 f' f c4. r8 d d f f4 |
 bes,8 a4 bes4. |
 
 r8 f' f c4. r8 d d f f4 |
 r8 f f c4. r8 d d f f4 |
 r8 f f c4. r8 d d f f4 |
 bes,8 a r bes\fff r1
 
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \beginning
  R1.*6
  
  g'4 g8 c4 c8 bes a4 g4. |
  r8 d' d g,4. r8 d' d d c4 |
  bes8 a4 |
  g1. |
  R |
  R1.*6 |
  d4 d8 g4 g8 d c4 d4. |
  r8 g g d4. r8 g g g es4 |
  d8 c4 d4. g8 g g d4 r8 |
  bes'4 bes8 a4 a8 bes4 bes8 g4. |
  
  bes4 bes8 a4 a8 bes4 bes8 g4 bes8 |
  c4 bes8 a4 g8 g4.~ g8 r4 |
  d4 d8 g4 g8 d c4 d4. |
  r8 g8 g d4. r8 g g g a4 |
  bes8 a4 |
  g1. |
  R1.*3 |
  R1.*9 |
  \repeat volta 2 {
    g4 g8 g4 g8 g g4 g4. |
    
    r8 d' d g,4. r8 bes bes d c4 |
    es,8 d4 g4. d'8 d d g,4 r8
  }
  g4 g8 g4 g8 g4 g8 g4. |
  g4 g8 g4 g8 g4 g8 g4 g8 |
  g4 g8 g4 g8 g4.~ g8 r4 |
  g4 g8 g4 g8 g g4 g4. |
  r8 d' d g,4. r8 bes bes d c4 |
  
  es,8 d4 g4. r8 r1 |
  R1.*8 |
  R1.*3 |
  g4_\markup{\dynamic mf \italic Solo} g8 c4 c8 bes a4 g4. |
  r8 d' d g,4. r8 d' d d c4 |
  bes8 a4 |
  g1. |
  R1.*3 |
  \repeat volta 2 {
    g4 g8 g4 g8 g g4 g4. |
    r8 d' d g,4. r8 bes bes d c4 |
    es,8 d4 g4. d'8 d d g,4 r8
  }
  g4 g8 g4 g8 g4 g8 g4. |
  g4 g8 g4 g8 g4 g8 g4 g8 |
  g4 g8 g4 g8 g4.~ g8 r4 |
  g4 g8 g4 g8 g g4 g4. |
  r8 d' d g,4. r8 bes bes d c4 |
  es,8 d4 g4. |
  
  r8 d' d g,4. r8 bes bes d c4 |
  r8 d d g,4. r8 bes bes d c4 |
  r8 d d g,4. r8 bes bes d c4 |
  es,8 d r g r1
  
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter, doit on dou -- ter?
  On a fait par -- tout cri -- er,
  quie chac -- un se viegne ar -- mer
  d'un hau -- bre -- gon de fer. __
  
    L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter.
  
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter,  doit on dou -- ter?
  On a fait par -- tout cri -- er,
  quie chac -- un se viegne ar -- mer
  d'un hau -- bre -- gon de fer. __
  
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter.
  
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter, doit on dou -- ter?
  On a fait par -- tout cri -- er,
  quie chac -- un se viegne ar -- mer
  d'un hau -- bre -- gon de fer. __
  
    L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter.
  
  \ijLyrics
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter,  doit on dou -- ter?
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me, doit
  \skip 1 \skip 1 \skip 1
  
  \normalLyrics
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter, doit on dou -- ter?
  On a fait par -- tout cri -- er,
  quie chac -- un se viegne ar -- mer
  d'un hau -- bre -- gon de fer. __
  
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter.
  
  L'homme ar -- me,
  l'homme ar -- me doit
  l'homme ar -- me,
  l'homme ar -- me doit
  l'homme ar -- me,
  l'homme ar -- me doit on dou -- ter.
  
}
lyricsalt = \lyricmode {
  \repeat unfold 174 \skip 1
    \ijLyrics
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  on dou -- ter,  doit on dou -- ter?
  L'hom me, l'hom me, l'nomme ar -- me,
  on dou -- ter.
}

lyricstenor = \lyricmode {
    \repeat unfold 133 \skip 1
    \ijLyrics
  L'hom -- me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me, l'homme ar -- me doit
   on dou -- ter,  doit on dou -- ter?
   on dou -- ter.
}

lyricsbass = \lyricmode {
   \repeat unfold 133 \skip 1
    \ijLyrics
  L'hom me, l'hom me, l'nomme ar -- me,
  l'homme ar -- me,
  l'homme ar -- me doit
  
  
}

lyricsrus = \lyricmode {
  [Лём ме, лём ме, лём ма рме,
  лём ма -- рме, лём ма -- рме дўа
  д'он ду тер, дўа д'он ду тер.
  Он' а фэ па -- рту кри -- е,
  ке ша -- кян' сё вьен' ар -- мэ,
  дан ö -- бре -- гон' дё фэр]
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
      \new Lyrics \lyricsto "soprano" { \lyricsrus }
      \new Lyrics \lyricsto "alto" { \lyricsalt }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricstenor }
      \new Lyrics \lyricsto "bass" { \lyricsbass }
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
    \tempo 4=100
  }
}
}

