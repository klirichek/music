\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16.5)

\header {
  title = "Хвалите Имя Господне…"
  composer = "Протоиерей Димитрий Аллеманов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key as \major
  \time 4/4
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
}

%abr = { \break }
abr = {}

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
  \tempo "Мягко, плавно"
  \dynamicDown
  \autoBeamOff
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \partial 4 es4\f |
  as2( f4) bes |
  as( des2) c8 bes |
  as4( bes) c8[( des]) es4 |
  f4.( es8 des[ es] f4) | \abr
  
  es des c( es) |
  f2. des4 |
  es2 \bar "!" \breathe \break
  
  es,4\pp f8[(\< g]) |
  as4(\! f8[ bes]) as4 as |
  as( des2) c8[( bes]) | \abr
  as4 bes8 bes c[( des]) es4\< |
  f2(\! f, |
  bes4 as g) g |
  <as es>2 \bar "!" \breathe \break
  
  c2\f |
  c4 c des c |
  bes4.( as8) g4 g |
  as4.( g8) as[( bes]) c4 |
  f,2. f4 |
  bes f8[( g]) as4 g |
  f1 |
  
%  \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3
  es2 \bar "!"
  \aside #'( 1.5 . -12 ) "Аллилуия" \break
%  \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  c'4\f es |
  f2 es8[( f]) es[( des]) |
  c4 des2 c8 bes |
  
  as4( es) f f |
  bes4.(^\markup\italic"legatissimo" as8)\> g[( as]) g[( f]) |
  c1\p\< |
  f2\mf f4 f |
  
%  \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3
  es!2 \bar "!" 
  \aside #'( 1.5 . -12 ) "Аллилуия"
%  \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  c'4\f es |
  f2  es8[( f]) es[( des]) |
  c4 des2 c8 bes |
  as4( bes) c8[( des]) es4 |
  f4.( es8 des[ es] f4 |
  es4) des c( es) |
  f2 f4 des |
  
   es2 \aside #'( 2 . -11 ) "Аллилуия" \bar "|."
  
  
}


altvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  \partial 4 es4 |
  
  es2( f4) es |
  f2 g4 g |
  es2 es4 as8[( g]) |
  as2( f) |
  
  bes4 f8[( g]) as4( bes) |
  as4.( g8 f4) f |
  g2
  
  es4 es |
  es( f8[ es]) f4 f |
  f2 g |
  es4 es8 es es4 as8[( g]) |
  as2( f |
  es4 f2) es8[ des] |
  c2
  
  r4 c'8[( bes]) |
  as[( bes]) as[( g]) f4 es |
  des( f2) es8 es |
  es2 es4 es |
  es( des8[ c] des4)\< c8[( des]) |
  es4 f\f es es |
  c4.( bes8 c4 des) |
  bes2 
  
  c'4 bes |
  as4( f) bes bes |
  es, as g g |
  es2 es8[( des]) c4 |
  f2 des4 des |
  c1 |
  f2 es4 des\> |
  bes2\! 
  
  c'4 bes |
  as( f) bes bes |
  es, as g g |
  es2 es4 as8[( g]) |
  as2( f |
  bes4) f8[( g]) as4( bes) |
  as4.( g8) f4 f |
  g2
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 es4 |
  c2( des4) bes |
  c( as bes) es8 des |
  c4( es) es es |
  es( des8[ c] des4 c) |
  
  bes des es2 |
  c4.( bes8 c4) des |
  bes2 \breathe
  
  es4 des |
  c( des8[ bes]) c4 c |
  des2( bes4) es8[( des]) |
  c4 es8 es es4 es |
  es( des8[ c] des4 c |
  bes c des) c8[ bes] |
  <as \parenthesize c>2 \breathe
  
  c2 |
  c4 c des c |
  bes( des2) c8 bes |
  c4( bes) as g |
  as2( bes4) as |
  g bes c bes |
  as4.( g8 as4 bes) |
  g2 
  
  es'4 es |
  es( des8[ c]) bes4 bes |
  c as( bes) es8 des |
  
  c4( bes) as as |
  bes4.( c8) des4 des |
  c1 |
  c4.( des8) c4 bes8[( as]) |
  g2
  
  es'4 es |
  es( des8[ c]) bes4 bes |
  c as( bes) es8 des |
  c4( es) es es |
  es( des8[ c] des4 c |
  bes) des es2 |
  c4.( bes8) c4 des |
  bes2
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 es4 |
  as2. g4 |
  f2 es4 es |
  as4.( g8) as[( bes]) c4 |
  f,2( bes4 as) |
  
  g bes as( g) |
  f4.( g8 as4) bes |
  es,2 
  
  es4 es |
  as4.( g8) f4 es |
  des2 es |
  as4 as8 g as[( bes]) c4 |
  f,2( bes4 as |
  g f bes,) es |
  as,2
  
  r4 c'8[( bes]) |
  as[( bes]) as[( g]) f4 es |
  des2 bes4 es |
  as,( bes) c8[( des]) es4 |
  f4.( es8 des[ es]) f4 |
  es des c es |
  f2.( des4) |
  es2 
  
  as4 g |
  f( bes8[ as]) g4 g |
  as f es es |
  as4.( g8) f4 f8[( es]) |
  des[( es des c]) bes4 bes |
  c1 |
  as4.( bes8) c4 des |
  es2 
  
  as4 g |
  f( bes8[ as]) g4 g |
  as f es es |
  as4.( g8) as[( bes]) c4 |
  f,2( bes4 as |
  g) bes as( g) |
  f4.( g8) as4 bes |
  es,2
  
  
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
  Хва -- ли -- те И -- мя Го -- спо -- дне, хва -- ли --
  те ра -- би Го -- спо -- да.

\ijLyrics
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я,
  а -- лли -- лу -- и -- я.
\normalLyrics

  Бла -- го -- сло -- вен Го --
  сподь от Си -- о -- на, Жи -- вый во И -- е -- ру -- са --
  ли -- ме.
  
  И -- спо -- ве -- да -- йте -- ся Го -- спо -- де --
  ви, я -- ко Благ, я -- ко в_век ми -- лость Е -- го.
  
  И -- спо -- ве -- дай -- те -- ся Бо -- гу Не -- бе -- сно -- му, я --
  ко в_век ми -- лость Е -- го.
}

lyricsbass = \lyricmode {
  \repeat unfold 15 \skip 1
  \repeat unfold 16 \skip 1
  \repeat unfold 6 \skip 1
  от Си -- о -- на,
}

lyricscoresop = \lyricmode {
  \repeat unfold 3 \skip 1
  И -- мя Го -- спо -- дне
  \repeat unfold 7 \skip 1

\ijLyrics
  \repeat unfold 7 \skip 1
  лли_-
  \repeat unfold 8 \skip 1
\normalLyrics
  Бла -- го -- сло -- вен
  \skip 1 \skip 1
  от Си -- о -- на
  \repeat unfold 15 \skip 1
  Го -- спо -- де_-
  
  \repeat unfold 17 \skip 1
  Бо -- гу Не -- бе -- сно -- му
  
  
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
      \new Lyrics = "sopranos"
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscoresop
        }
      }
  
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
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
