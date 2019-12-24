\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Слава... Единородный Сыне"
  composer = "свящ. П. И. Турчанинов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \override DynamicText.X-offset = #-2.5
  \secondbar  
  c4\f c8 c c4 c |
  c4. c8 b4 c |
  c4. c8 b2 |
  c4 r8 c d4 d8 d |
  c4 c c c | \abr
  b2 c4 c |
  c2 b |
  c1\fermata \bar "||" |
  c4\mf c8 c e4 c |
  c8[( b]) b b b4 b | \abr
  a2 a4 b |
  c2\> b |
  a4 <c e>2\p c4 |
  <a c>8( <gis b>4) <gis b>8 <a c>4 <b d> |
  <b d>4.-> <a c>8 <a c>2 | \abr
  <d f>2 <c e>4 <b d> |
  <a c>2(\> <gis b>) |
  a4\p a2 a4 |
  a4.-> a8 a4 a8 a |
  a4.-> a8 a4 a |
  a2. a4 |
  gis1 |
  R1 |
  r4 a\p d c |
  b1( | \abr
  c2) c4 c |
  c2.( b4)\> |
  c2\! r |
  R1*3 | \abr
  r4 c4 c2-> |
  c4 d  d2-> |
  d4 d es d8[( c]) |
  bes4 bes8 bes a2\> |
  g1\!\fermata | \abr
  c4\f c8 c c4 b? |
  c2 d4 d |
  c c8 c c4 c |
  c2(\> b)\! |
  c4 c2 c4 | \abr
  cis4. cis8 cis4 cis |
  d d2 d4 |
  d4. d8 d4 d |
  c2 b4 b |
  c2 c | \abr
  c( b) |
  c2. r4\p |
  r b b( a8[ b]) |
  c2 c |
  c1( |
  c2 b)\> | \abr
  
  c1\!\fermata \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g4 g8 g g4 g |
  g4. g8 g4 g |
  a4. a8 g[( f e f ]) |
  e4 r8 g g4 g8 g |
  g4 g g g |
  
  g2 g4 g |
  g2 f |
  e1 |
  a4 a8 a a4 a |
  a8[( gis]) gis gis gis4 gis |
  a2 a4 a |
  a2 gis |
  a4 a2 a4 |
  e4. e8 e4 e |
  gis4. a8 a2 | 
  
  d,2 e4 f |
  e1 |
  a4 e2 e4 |
  e4. e8 e4 e8 e |
  d4. d8 e4 e |
  
  f2. f4 |
  e1 |
  r4 e\p a g |
  fis1( |
  g1 |
  
  g2) a4 a |
  g2( f?) |
  e4 g2\p f4 |
  f4.( e8) e2 |
  a2 g4 f |
  e2 d4 d |
  
  e4 e e2 |
  f4 f fis2 |
  g4 bes c bes8[( a]) |
  g4 g8 g g4( fis) |
  g1 |
  
  g4 g8 g g4 g |
  g2 g4 gis |
  a a8 a a4 a |
  g1 |
  g4 e2 g4 |
  
  a4. a8 a4 a |
  a4 a2 a4 |
  g4. g8 g4 g |
  g2 g4 f |
  e2 a |
  
  g( f) |
  e2. g4 |
  g4(-> f2.) |
  e2 a |
  g1( |
  f) |
  
  e1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  
  e4 e8 e e4 e |
  e4. e8 f4 e |
  d4. d8 d2 |
  c4 r8 e f4 f8 f |
  e4 e c e |
  
  d2 c4 e |
  e2 d |
  g,1 |
  
  e'4 e8 e e4 e |
  e e8 e e4 d |
  
  c2 f4 f e2 d |
  c4 r r2 |
  R1*4 |
  
  r4 cis2 cis4 |
  cis4. cis8 cis4 cis8 cis |
  d4. d8 c4 c |
  
  b2. b4 |
  b b e d |
  cis2 cis4 cis |
  d1~ |
  d |
  
  c?2 c4 d |
  e2( d) |
  c4 e2 d4 |
  d4.( c8) c2 |
  c4( f) e d |
  c2 b4 b |
  
  c g g2 |
  c4 a a2 |
  g4 g g4. es'8 |
  d4 d8 d d4( c) |
  <bes g>1 |
  
  e4 e8 e e4 d |
  e2 d4 e |
  e e8 e f4 f |
  e2(\> d)\! |
  e2. r4 |
  
  r e2 e4 |
  f4. f8 f4 r |
  r g2 g4 |
  e4. e8 d4 d |
  c c8 c f4 f |
  
  e2( d) |
  g,2. e'4 |
  e(-> d2.) |
  c2 d |
  e1( |
  d) |
  g,1
  
  

}


bassvoice = \relative c' {
  \global
  \dynamicDown
  c4\f c8 c g4 e |
  c4. c8 d4 e |
  f4. f8 g2 |
  c,4 r8 c' b4 b8 b |
  c4 c, e c |
  
  g'2 e4 c |
  g'2 g, |
  c1\fermata |
  a'4 a8 a c4 a |
  e e8 e e4 e |
  
  f2 d4 d |
  e2 e |
  a,4 r r2 |
  R1*4 |
  
  r4 a'2 a4 |
  g4.-> g8 g4 g8 g |
  f4.-> f8 e4 e |
  
  dis2. dis4 |
  e2 e |
  a a, |
  d d |
  r4 d\p g f |
  
  e2 f4 f |
  g1 |
  c,1~ |
  c |
  f2 g4 a |
  g2 g,4 g |
  
  c c bes2-> |
  a4 d c2-> |
  bes4 g c c |
  d d8 d d2\> |
  g,1\!\fermata |
  
  c'4\f c,8 c e4 g |
  c2 b4 b |
  a a8 a f4 f |
  g1 |
  c,4 c'2 bes4 |
  a4. a8 a4 a |
  d, d'2 c4 |
  b4. b8 b4 b |
  c2 g4 gis |
  a2 f |
  g2( g,) |
  c c |
  g1 |
  c2 f |
  g1( g,)\> |
  c1\!\fermata
}

lyricscores = \lyricmode {
  \repeat unfold 71 \skip 1
  и При -- сно -- де -- вы
    \repeat unfold 52 \skip 1
  спа -- си нас,
  
}

lyricscorea = \lyricmode {
  Сла -- ва О -- тцу и Сы -- ну и Свя -- то -- му Ду -- ху,
  и ны -- не, и при -- сно, и во ве -- ки ве -- ков. А -- минь.
  Е -- ди -- но -- ро -- дный Сы -- не, и сло -- ве Бо -- жий без -- сме -- ртен Сый,
  и и -- зво -- ли -- вый спа -- се -- ни -- я на -- ше -- го ра -- ди
  во -- пло -- ти -- ти -- ся от свя -- ты -- я Бо -- го -- ро -- ди -- 
  цы и При -- сно -- де -- вы Ма -- 
  ри -- и, не -- пре -- ло -- жно во -- че -- ло -- ве -- чи -- вы --
  йся; ра -- спны -- йся, ра -- спны -- йся, ра -- спны -- йся же Хри -- сте Бо -- же,
  сме -- рти -- ю смерть по -- пра -- вый, е -- дин сый Свя -- ты -- я Тро -- йцы,
  спро -- сла -- вля -- е -- мый О -- тцу, спро -- сла -- вля -- е -- мый О -- тцу,
  и Свя -- то -- му Ду -- ху, спа -- си нас, спа -- си нас.
}

lyricscoret = \lyricmode {
  \repeat unfold 57 \skip 1
  и При -- сно -- де -- вы Ма -- ри -- и
  \repeat unfold 44 \skip 1
  спро -- сла -- вля -- е -- мый спро -- сла -- вля -- е -- мый О -- тцу
  и Свя -- то -- му

}

lyricscoreb = \lyricmode {
  \repeat unfold 57 \skip 1
  и При -- сно -- де -- вы, и При -- сно -- де -- вы Ма --
  ри -- и,
  \repeat unfold 39 \skip 1
  е -- мый О -- тцу, спро -- сла -- вля -- е -- мый О --
  тцу и Свя -- то -- му

}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
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
      
      \new Lyrics \lyricsto "alto" { \lyricscorea }
      \new Lyrics = "tenors"
      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \lyricscoreb }
      
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscores
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyricscoret
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
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
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscores
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
