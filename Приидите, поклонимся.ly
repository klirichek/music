\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")

\header {
  title = "Приидите, поклонимся."
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr = {}

barr = { \bar "!" }
barc = { \cadenzaOff \barr \cadenzaOn }
nat = { \once \hide Accidental }

global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo Медленно
  e4\f e e \breathe e |
  e2\> e\p\fermata \bar "||"
  \tempo Оживлённо 4=80
  \cadenzaOn r4 a,8\f b \barc c[( b]) a4 g8 a \barc \abr
  b4 a r8 a a b \barc
  g4 fis8([ e]) fis[( g]) \barr a4~ a8 r r e'^\markup { \dynamic mf \italic Мягко } \barc
  f!8[( e]) d4 d8 f \barc \abr
  e4\> a,~ a8\! r a a \barc
  d2 d4 \barc
  e e \breathe c \barc
  d d d \barc \abr
  e2.~ \barc 
  e~ \barc 
  e4~ e8 r \nat g,\mf a \barc
  b2 d4 \barc \abr
  a2.~ \barc
  a\p \bar "|"
  a2 a4 \barc
  a2\> a4\! \barc
  a2~ a8 r \barr \cadenzaOff \bar "||"
}


altvoice = \relative c'' {
  \global
  \autoBeamOff
  g4 g g g 
  g2 g
  \cadenzaOn r4 a8 b \barc 
  c[( b]) a4 g8 a \barc
  b4 a r8 a a b \barc
  g4 fis8[( e]) fis[( g]) \barc
  a4~ a8 r r a  \barc
  a4 a gis8 gis \barc
  a4 a~ a8 r a a  \barc
  a[( \nat g] \nat f4) g8[( f]) \barc
  e4 g a \barc
  a a a \barc
  gis~ gis8 r a\f b  \barc
  c[( b] a4) b \barc
  a~ a8 r \nat g fis \barc
  e[( g fis e]) fis[( g]) \barc
  a2~ a8 r \barc
  e4( c) a \barc
  c( g' \nat f e2) e4 \barc
  e2~ e8 r \cadenzaOff
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e4 e e \breathe e |
  e2 e 
  r4 a,8 b 
  c[( b]) a4 g8 a
  b4 a r8 a a b
  g4 fis8[( e]) fis[( g])
  a4~ a8 r r c
  d[( c]) b4 b8 b 
  c4 c~ c8 r a a
  a4( d8[ c]) b4
  c4 c \breathe c
  c c b
  b4( e2)~
  e2.~
  e4~ e8 r g, a
  b2 d4
  a2.~ 
  a
  a2 a4
  a2\> a4\!
  a2~ a8 r
}


bassvoice = \relative c {
  \global
  \autoBeamOff
  <c g'>4 q q q
  q2 q\fermata
  r4 <a a'>8 <b b'> <c c'>[( <b b'>]) <a a'>4 <g g'>8 <a a'>
  <b b'>4 <a a'> r8 q q <b b'>
  <g g'>4 <fis fis'>8[( <e e'>]) <fis fis'>[( <g g'> ]) 
  <a a'>4~ q8 r r a'
  a4 a a,8 a
  a4 a~ a8 r a' g
  \nat f[( e] d4) g
  c, e a8[( g])
  f4 f f
  e4~ e8 r a\f b
  c[( b] a4) <e b'>
  a~ a8 r g fis
  e[( g fis! e]) fis[( g])
  a2~ a8 r
  c,4( a) g'
  \nat f( e d
  <e a,>2) q4
  q2~ q8 r
  
}

lyricscore = \lyricmode {
  Гос -- по -- ди, по -- ми -- луй.
  При -- и -- ди -- те. по -- кло -- ним -- ся и при -- па -- дем ко Хри -- сту.
  Спа -- си нас, Сы -- не Бо -- жий, вос -- кре -- сый из мерт -- вых по -- ю -- щи -- я Ти:
  ал -- ли -- лу -- йи -- я, __ ал -- ли -- лу -- йи -- я, __ ал -- ли -- лу -- йи -- я. __
}

lyricst = \lyricmode {
  \repeat unfold 44 \skip 1
  ал -- ли -- лу -- йи -- я.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = #ff
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
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
      \new Lyrics \with {
      alignAboveContext = "upstaff"
    } \lyricsto "soprano" \lyricst
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \with {
      alignAboveContext = "downstaff"
    } \lyricsto "tenor" \lyricst
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
