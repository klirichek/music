\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  composer = "Музыка А. Копылова"
  title = "О всепетая Мати."
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Не скоро"
  \partial 2 a4\p\< a | % 1
  d2\> f,4\! g | % 2
  a2\> a\! | % 3
  r2 a4\p\< a | % 4
  d2\> c4\! c | % 5
  c2\> bes\! | % 6
  bes4(\> a)\! g f | % 7
  f4.-> f8 e4 e | % 8
  b'2\< b4 b\! | % 9
  b2\> a\! | \barNumberCheck #10
  c4 c8\< c b4 b\! | % 11
  a4\> a a\! b | % 12
  a2. g4 | % 13
  g2 r | % 14
  r4 b\< ais4.\> ais8\! | % 15
  ais4\< b cis2\! | % 16
  cis4 d cis4. b8 | % 17
  b2 r | % 18
  r4 a\p\< gis\> gis8 gis\! | % 19
  gis4. r16 a\< b2 | \barNumberCheck #20
  e1\f\> | % 21
  b2\! r4 b | % 22
  a2 b4\< cis | % 23
  d2\> a4 a | % 24
  a2 g4\! e | % 25
  f1\p | % 26
  f2\p\fermata a4\< a | % 27
  d4\> d f,\! g | % 28
  a1 | % 29
  a2 a4 a | \barNumberCheck #30
  a4. g8\< g4 g\! | % 31
  f1(\> | % 32
  e1)\! | % 33
  f1\pp\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  f4 e | % 1
  f2 d4 e | % 2
  e2 e | % 3
  r2 f4 e | % 4
  f2 fis4 g | % 5
  a2 g | % 6
  g4( d) d d | % 7
  d4. d8 d4 d | % 8
  e2 e4 e | % 9
  e2 e | \barNumberCheck #10
  e4 e8 e e4 e | % 11
  f4 f f fis | % 12
  fis2. e4 | % 13
  e2 r | % 14
  r4 <e g> <e g>4. <e g>8 | % 15
  <e g>4 <e g> <e fis>2 | % 16
  <e fis>4 <e fis> <e fis>4. <d fis>8 | % 17
  <d fis>2 r | % 18
  r4 <d f> <d f> <d f>8 <d f> | % 19
  <d f>4. r16 f f2 | \barNumberCheck #20
  e1 | % 21
  e2 r4 e | % 22
  e2 e4 a | % 23
  a2 d,4 d | % 24
  d2 d4 d | % 25
  d1 | % 26
  d2 f4 e | % 27
  f4 f d e | % 28
  e1 | % 29
  e2 d4 d | \barNumberCheck #30
  d4. d8 d4 d | % 31
  d1( | % 32
  d2 cis) | % 33
  d1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d4\p\< e | % 1
  d2\> d4\! d | % 2
  d2\> cis\! | % 3
  r2 d4\p\< e | % 4
  d2\> d4\! d | % 5
  d2\> d\! | % 6
  d2\> d4\! a | % 7
  b4.-> b8 b4 b | % 8
  d2\< d4 d\! | % 9
  d2\> c\! | \barNumberCheck #10
  c4 c8\< c c4 c\! | % 11
  c4\> c c\! b | % 12
  b2. b4 | % 13
  b2 r4 b\< | % 14
  e4\< d cis4.\> cis8\! | % 15
  cis4(\< b ais2)\! | % 16
  ais4 ais b4. b8 | % 17
  b2 r4 b\< | % 18
  d4(\< c b)\> b8 b\! | % 19
  b4. r16 d\< d2 | \barNumberCheck #20
  d1\f\> | % 21
  d2\! r4 d | % 22
  d4( cis) b\< e | % 23
  d2\> d4 c | % 24
  c2 bes4\! bes | % 25
  a1\p | % 26
  a2\p\fermata d4\< e | % 27
  d4\> d d\! d | % 28
  d1 | % 29
  cis2 d4 c | \barNumberCheck #30
  c4. bes8\< bes4 bes\! | % 31
  a1(\> | % 32
  g1)\! | % 33
  f1\pp\fermata
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  d4 c' | % 1
  bes2 bes4 bes | % 2
  a2 a | % 3
  r2 d4 c | % 4
  bes2 a4 g | % 5
  fis2 g | % 6
  g4( c) bes a | % 7
  a4. a8 gis4 gis | % 8
  gis2 gis4 gis | % 9
  a2 a | \barNumberCheck #10
  a4 a8 a g4 g | % 11
  f4 f e dis | % 12
  e2. e4 | % 13
  e2 r s1*5 | % 19
  r4. r16 a a2 | \barNumberCheck #20
  gis1 | % 21
  gis2 r4 gis | % 22
  a2 gis4 g | % 23
  f2 f4 fis | % 24
  g2 g4 g | % 25
  d1 | % 26
  d2 d4 c' | % 27
  bes4 bes bes bes | % 28
  a1 | % 29
  a4( g) f fis | \barNumberCheck #30
  g4. g8 g4 g | % 31
  a1( | % 32
  a,1) | % 33
  <d, a'>1
}

lyricscore = \lyricmode {
  О все -- пе -- та -- я Ма -- ти!
  О все -- пе -- та -- я Ма -- ти!
  рожд -- ша -- я всех свя -- тых Свя -- тей -- ше -- е Сло -- во
  ны -- не -- шне -- е при -- ем -- ши при -- но -- ше -- ни -- е,
  от вся -- ки -- я из -- ба -- ви на -- па -- сти всех
  и бу -- ду -- щи -- я из -- ми му -- ки
  Те -- бе во -- пи -- ю -- щих,
  Те -- бе во -- пи -- ю -- щих: 
  Ал -- ли -- лу -- йа, Ал -- ли -- лу -- йа, 
  ал -- ли -- лу -- йа, ал -- ли -- лу -- йа.
}

lyricdown = \lyricmode {
   \repeat unfold 38 \skip 1
  от вся -- ки -- я из -- ба -- ви
  на -- па -- сти всех
  и бу -- ду -- щи -- я
}

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  ragged-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Дискант" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "Д" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricdown }
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
