\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Save Me From Boody Men"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \minor
  \time 4/4
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



tenorvoice = \relative c {
  \global
    \tempo "Largo (alcuna licenza)" 4=35
  \dynamicDown
  
   
}


bassvoice = \relative c {
  \global
  \oneVoice
   r8 c\mf g'16 g g8 g16 g f8~ f g |
   c,2.\fermata r8 c8 |
   g' g \tuplet 3/2 { g f as } g4 r |
   \time 5/4 c,8 g'16 g g8 g16 g f16[( g as bes] as[ g f g]) f[( g as16. f32]) |
   \time 4/4 g2.\fermata r4 |
   \time 3/4 r8 c, g'16 f g8~ g g |
   f16[( es f g] as[ bes as g] f[ es]) f[( g]) |
   \time 4/4 f8 d~ d as'16[( g]) c,2\fermata |
   \time 3/4 r8 g' as8. g16 \tuplet 3/2 { f8 f g } |
   
   f8. g16 as8[( bes] f16[ d]) g8\fermata |
   \time 4/4 r8 g \tuplet 3/2 { f[( d]) as' } c2\fermata | \break
   \mark \default
   \time 3/4 r8 c,8 g' g16 g f8. g16 |
   f[( d f g] f[ g as bes]) c8. bes16 |
   \time 4/4 as8[( g] f[ d16 g]) c,2\fermata |
   \time 3/4
   r8 c8 g' as \tuplet 3/2 { g f g } |
   \time 4/4 f16 es f g f[( g as16.]) f32 g2\fermata |
   \time 5/4 r8 c,\f \tuplet 3/2 { g'8-> g-> g-> } r4 d8->[( f] as) g |
   << c,1 { s8\> s2. s8\! } >> \bar "|."
 
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricsbass = \lyricmode {
 \set stanza = "Psalm 56: "Be mer -- ci -- ful un -- to me, O God:
 For man would swal -- low me up.
 He fight -- ing dai -- ly op -- pres -- seth __ me.
 Mine e -- ne -- mies would dai -- ly swal -- low me up:
 For they be ma -- ny that
 fight a -- gainst __ me.
 O thou __ most hight
 \set stanza = "Psalm 59: " De -- fend me from them that rise __ up a -- gainst __ me.
 De -- li -- ver me from the work -- ers of in -- i -- qui -- ty,
 And save me from bloo -- dy men.
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
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Мужчины" } }
        shortInstrumentName = \markup { \right-column { "Т+Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
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
    \tempo 4=65
  }
}
}

