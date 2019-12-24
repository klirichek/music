\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Достойно есть"
  composer = "Муз. свящ. СТАРОРУССКАГО"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override DynamicText.X-offset = #-2.5
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
  
  \secondbar  
  \partial 4 g\p |
  b2( a4) g |
  a a a a |
  d4.-> c8 b4 b |
  a( c) b a | \abr
  
  a g8[( b]) b4.-> a8\! |
  a2 r |
  a2-> a4 a \! |
  a4.-> g8 g2 |
  g4 g a g | \abr
  
  g4.\> fis8\! fis4 fis |
  g2(\< fis4) g\! |
  g2 c |
  b a\> |
  g2\! r4 r8 g\p |
  <c e>4.-> <c e>8 <b d>4 <a d>8 <b d> | \abr
  
  c2 r4 a\f |
  d c8. c16 b4 b8. b16 |
  c4( bes a c) | \abr
  
  d e d c |
  b2.\> r4\! |
  b2\p( a4) gis |
  gis4.-> a8 a4 r |
  a\< a d c\! |
  c4.\> b8 b4 r\! | \abr
  
  c4\f-> c8 c c4 c |
  b4. b8 c2 |
  b c4 c |
  c2\> b |
  a4\p( fis) g a | \abr
  
  \tempo "Постепенно усилить"
  b( d c b |
  a fis b a |
  g1 |
  g |
  g2 gis4 a |
  fis a g fis |
  g2.\> fis4\!) |
  g1\fermata \bar "|."
  
  
}


altvoice = \relative c' {
  \global
  \dynamicDown  
  \partial 4 d4 |
  d2. d4 |
  d g fis fis |
  g4. fis8 g4 g |
  e2 e4 e |
  
  fis g g4. fis8 |
  fis2 r |
  fis fis4 fis |
  fis4. e8 e2 |
  e4 e fis e |
  
  e4. d8 d4 d |
  d2. d4 |
  e2. a4 |
  g2. fis4 |
  g2 r4 r8 g |
  g4. g8 g4 g8 g |
  
  g4 e\f f( e |
  a) a8. a16 g4 g8. g16 |
  g2( f4 g4) |
  
  g4 g g g |
  g2. r4 |
  gis2( a4) e |
  e4. e8 e4 r |
  fis fis e fis |
  a4. g8 g4 r |
  
  g4 g8 g g4 g |
  g4. g8 g2 |
  g g4 g |
  g2 g |
  fis4( d) e fis |
  g( b a g |
  fis1 |
  d4 c d e |
  f1 |
  e |
  d~ |
  d2 e) |
  d1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \partial 4 b4 |
  d2( c4) b |
  a cis d d |
  d4. d8 d4 d |
  e2 d4 c |
  
  c b8[( g]) d'4. d8 |
  d2 r |
  d c4 b |
  b4. b8 b2 |
  a4 a a a |
  
  a4. a8 a4 a |
  g2( c4) b |
  a2 e' |
  d c |
  b r4 r8 g\p |
  c4.-> e8 f4 f8 f |
  
  e4 c c cis8. cis16 |
  d4 d8. d16 d4 d |
  c4 c8. c16 c2 |
  
  b4 c f e |
  d2. r4 |
  d2( c4) b |
  b4. c8 c4 r |
  c c b a |
  d4. d8 d4 r |
  
  e4 e8 e e4 e |
  d4. d8 c2 |
  f2 e4 e |
  e2 d |
  d d4 c |
  
  b( g a b |
  c a d c |
  b a b c |
  d b c d |
  c2 d4 c |
  a c b a |
  b2 c) |
  b1
}


bassvoice = \relative c {
  \global
  \dynamicDown
  \override DynamicText.X-offset = #-2.5
  \partial 4 <g g'>4\p |
  <g g'>2. g'4 |
  fis e d c |
  b4. a8 g4 g |
  c( a) gis a |
  
  d d d4.\> <d d,>8\! |
  <d d,>2 r |
  d2\> d4 dis\! |
  e4.-> e8 e4( d) |
  cis cis b cis |
  
  d4.\> d8\! d4 c |
  b2\<( a4) g\! |
  c2 a |
  d <d d,>\> |
  <g g,>\! r4 r8 r |
  R1 |
  
  r4 c,\f a' g8. g16 |
  f4 fis8. fis16 g4 f |
  e e8. e16 f4( e) |
  
  d c b c |
  <g g'>2.(\> <f f'>4\!) |
  <e e'>2.\p e'4 |
  e4.-> a,8 a4 r |
  d\< d d d |
  fis4.\> g8 g4\! r |
  
  c4\f-> g8 g e4 c |
  g'4. f8 e2 |
  d c4 e |
  g2\> g,\! |
  d'\p d4 d |
  
  d1(~ |
  d |
  g,~ |
  g2 a4 b |
  c2 b4 a |
  <d, d'>1 |
  <g g'>\>) |
  <g g'>\!\fermata
  
}

lyricscore = \lyricmode {
  \repeat unfold 47 \skip 1
  и сла -- вне -- йшу -- ю
}

lyricscorea = \lyricmode {
  До -- сто -- йно есть я -- ко во -- и -- стин -- ну бла -- жи -- ти Тя
  Бо -- го -- ро -- ди -- цу, при -- сно бла -- же -- нну -- ю и пре -- не -- по --
  ро -- чну -- ю и Ма -- терь Бо -- га на -- ше -- го. Че -- стне -- йшу -- ю хе -- ру --
  вим и сла -- вне -- йшу -- ю без сра -- вне --
  ни -- я се -- ра -- фим, без и -- стле -- ни -- я Бо -- га Сло -- ва Ро -- ждшу -- ю,
  су -- щу -- ю Бо -- го -- ро -- ди -- цу Тя ве -- ли -- ча -- ем, Тя ве -- ли --
  ча -- ем.
}

lyricscoreb = \lyricmode {
  \repeat unfold 40 \skip 1
  и сла -- вне -- йшу -- ю без сра -- вне -- ни -- я без сра -- вне -- ни -- я
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-last-bottom = ##f
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
          \lyricscore
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
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
