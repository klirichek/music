\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Тихий Вифлеем"
  subsubtitle = "Перевод с английского о. А. Павловича"
  composer = "Lewis H. Redner (1831-1908)"
  poet = "Phillips Brooks (1835-1893)"
  
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \bar "" \break }

global = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \partial 4 b4\mf |
  b b ais b |
  \slurDashed
  d( c) e, a |
  \slurSolid
  g fis8[( g]) a4 d, |
  b'2. \abr b4 |
  b b e d |
  d c e, a |
  g fis8[( g]) b4 a |
  g2. \abr b4 |
  b b a g |
  fis2 fis4 fis\cresc |
  e fis g a |
  b2. \abr b4\f |
  b b ais b |
  d c e, e' |
  d g, b4. a8 |
  g2. \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 d4 |
  d d cis d |
  \slurDashed
  f( e) c e |
  \slurSolid
  d d d d |
  d2. \abr d4 |
  d g gis gis |
  a e c e |
  d d fis fis |
  g2. \abr g4 |
  g g fis e |
  dis2 dis4 dis |
  e fis g e |
  fis2. g4 |
  d d cis d |
  e e c e8[( fis]) |
  g4 cis, d4. c8 |
  b2.
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g4\mf |
  g g g g |
  \slurDashed
  gis( a) a c | \slurSolid
  b a8[( b]) c4 c |
  b2. \abr g4 |
  g b b e |
  e e e c |
  b ais8[( b]) d4 c |
  b2. \abr d4 |
  d b c cis |
  dis2 dis4 b\cresc |
  e, fis g e' |
  dis2. d4\f |
  d b g g |
  gis a a c |
  b a8[( g]) g4. fis8 |
  g2.
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g4 |
  g g g g |
  \slurDashed c,( c) \slurSolid c c |
  d d d d |
  g,2. \abr g'4 |
  g f e e |
  a a a, c |
  d4. d8 d4 d |
  g2. \abr g4 |
  g g a ais |
  b2 b4 b, |
  e fis g c |
  b2. g4 |
  g g g g |
  c, c c c |
  d e d4. d8 |
  <d g,>2.
}

lyricscoreone = \lyricmode {

\set stanza = "Sop. 1. " Ты спишь, о ти -- хий Вифле -- ем, спо -- ко -- йных снов при -- ют,
а над то -- бой не -- мой чре -- дой со -- зве -- зди -- я плы -- вут.
Вне -- за -- пно су -- мрак у -- лиц свет чу -- дный о -- си -- ял,
ско -- рбей и бед ми -- ну -- вших лет он и -- ску -- пле -- ньем стал.
}

lyricscoretwo = \lyricmode {
  \set stanza = "Tutti 2. "
  Хри -- стос ро -- ждён Ма -- ри --  ей,
  и а -- нге -- лы Е -- го,
  по -- ка все спят, в_но -- чи хра -- нят по -- кой Тво -- рца все -- го.
  Во -- спо -- йте Бо -- га, звё -- зды,
  в_то -- рже -- стве -- нной хва  -- ле:
  ро -- ди -- лся днесь, я -- ви -- лся здесь
  и мир при -- нёс зе -- мле.
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  %ragged-bottom = ##t
  %ragged-last = ##f
  ragged-last-bottom = ##f
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
      
      \new Lyrics \lyricsto "soprano" \lyricscoreone 
      \new Lyrics \lyricsto "soprano" \lyricscoretwo

  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
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
    \tempo 4=90
  }
}
}
