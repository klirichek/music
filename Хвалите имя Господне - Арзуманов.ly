\version "2.20.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Хвалите имя Господне"
  subtitle = "(кашинское)"
  composer = "свящ. Димитрий АРЗУМАНОВ"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = {}

%pbr = { \pageBreak }
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
  \key e \minor
  \time 4/4
  \numericTimeSignature
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \override DynamicText.X-offset = #-2.5
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t

}

% вместо знака дыхания однократно пишем текст сбоку в рамке
aside =  #(define-music-function 
           (parser location  x-y text)
           (pair? markup?)
           #{
              \once \override BreathingSign.extra-offset = #x-y
              \once \override BreathingSign.stencil = #ly:text-interface::print
              \once \override BreathingSign.text = \markup {\rotate #90 \rounded-box \pad-x #1 #text } 
              \breathe
           #}
           )


sopvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \co e2. ( fis4) g( a) g( fis) e2 d4 fis e2 fis4( g)
  \cbr a2.( b4) c b a g
  \cbr b2 b a4( b) \cb \abr
  
  % аллилуйа
  \co e,2 b' g4( fis8[ g]) a2 
  \cbar e b' g4( fis8[ g]) a4( b) 
  \cbar c4( b) a( g) b2 a4( b) \cb \abr
  
  \co e,2 e4 fis g( a) g( fis) e2 d4 fis e2 fis4( g)
  \cbr a2.( b4) c4 b a g b2 b b a4( b) \cb \abr
  
  % аллилуйа
%  \co e,2 b' g4( fis8[ g]) a2 
%  \cbr e b' g4( fis8[ g]) a4( b) 
%  \cbr c4( b) a( g) b2 a4( b) \cb
  
  \co e,2. e4 e e e fis g( a) g fis e2 d4 fis e2( fis4 g)
  \cbr a2. b4 c( b) a( g) b2 b b( a4 b) \cb
  
  % аллилуйа
%  \co e,2 b' g4( fis8[ g]) a2 
%  \cbr e b' g4( fis8[ g]) a4( b) 
%  \cbr c4( b) a( g) b2 a4( b) \cb
  
  \co e,4 e e e e fis g( a) g fis e2 d4( fis) e2( fis4 g)
  \cbr a2. b4 c( b) a( g) b2 b b( a4 b) \cb
  
  % аллилуйа
  \co e,2 b' g4( fis8[ g]) a2 
  \cbar e b' g4( fis8[ g]) a4( b) 
  \cbar c4( b) a( g) b2 a4( b) e,1\cof
  \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \co e2. ( fis4) g( a) g( fis) e2 d4 fis e2 fis4( g)
  \cbr fis2.( g4) a g fis e
  \cbr g2 g fis4( g) \cb
  
  % аллилуйа
  \co e2 b' g4( fis8[ g]) fis2 
  \cbar e b' g4( fis8[ g]) fis4( g) 
  \cbar a4( g) fis( e) g2 fis2 \cb
  
  \co e2 e4 fis g( a) g( fis) e2 d4 fis e2 fis4( g)
  \cbr fis2.( g4) a4 g fis e g2 g g fis4( g) \cb
  
  % аллилуйа
%  \co e2 b' g4( fis8[ g]) fis2 
%  \cbr e b' g4( fis8[ g]) fis4( g) 
%  \cbr a4( g) fis( e) g2 fis2 \cb
  
  \co e2. e4 e e e fis g( a) g fis e2 d4 fis e2( fis4 g)
  \cbr fis2. g4 a( g) fis( e) g2 g g( fis4 g) \cb
  
  % аллилуйа
%  \co e2 b' g4( fis8[ g]) fis2 
%  \cbr e b' g4( fis8[ g]) fis4( g) 
%  \cbr a4( g) fis( e) g2 fis2 \cb
  
  \co e4 e e e e fis g( a) g fis e2 d4( fis) e2( fis4 g)
  \cbr fis2. g4 a( g) fis( e) g2 g g( fis4 g) \cb
  
  % аллилуйа
  \co e2 b' g4( fis8[ g]) fis2 
  \cbar e b' g4( fis8[ g]) fis4( g) 
  \cbar a4( g) fis( e) g2 fis2 
  e1\cof
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \oneVoice
  \co e1 e2 e e d4 d e2 e
  \cbr e1 a,4 a a a
  \cbr b2 b b \cb
  
  % аллилуйа
  \co e2 e e d4( b) 
  \cbar e2 e e e 
  \cbar a, a b b \cb
  
  \co e2 e4 e e2 e e d4 d e2 e
  \cbr e1 a,4 a a a b2 b b b \cb
  \aside #'( 2 . 4 ) "Аллилуйя"
  
  % аллилуйа
%  \co e2 e e d4( b) 
%  \cbr e2 e e e 
%  \cbr a, a b b \cb
  
  \co e2. e4 e e e e e2 e4 e e2 d4 d e1
  \cbr e2. e4 a,2 a b b b1 \cb
  \aside #'( 2 . 4 ) "Аллилуйя"
  
  % аллилуйа
%  \co e2 e e d4( b) 
%  \cbr e2 e e e 
%  \cbr a, a b b \cb
  
  \co e4 e e e e e e2 e4 e e2 d e1
  \cbr e2. e4 a,2 a b b b1 \cb
  
  % аллилуйа
  \co e2 e e d4( b) 
  \cbar e2 e e e 
  \cbar a, a b b 
  e1\cof
}


lyricscore = \lyricmode {
  Хва -- ли -- те и -- мя Го -- спо -- дне, хва -- ли -- те ра -- би
  Го -- спо -- да.
  
  Ал -- ли -- лу -- йя, ал -- ли -- лу -- йя, ал -- ли -- лу -- йя.
  
  Бла -- го -- сло -- вен Го -- сподь от Си -- о -- на, жи --
  вый во И -- е -- ру -- са -- ли -- ме.
  
%  А -- лли -- лу -- йя, а -- лли -- лу -- йа, а -- лли -- лу -- йа.
  
  И -- спо -- ве -- да -- йте -- ся
  Го -- спо -- де -- ви, я -- ко Благ, я -- ко в_век ми -- лость Е -- го.
  
%  А -- лли -- лу -- йя, а -- лли -- лу -- йа, а -- лли -- лу -- йа.
  
  И -- спо -- ве -- дай -- те -- ся Бо -- гу Не -- бе -- сно -- му,
  я -- ко в_век ми -- лость Е -- го.
  
  Ал -- ли -- лу -- йя, ал -- ли -- лу -- йя, ал -- ли -- лу -- и -- я.
  
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator

}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
%        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
%        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff = "downstaff" \with {
%        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
%        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef "treble_8" \tenorvoice }
  %      \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=120  }
}
}
