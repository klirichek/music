\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Ангел вопияше"
  composer = "Макаров"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

zatakt = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  d2\p c4 |
  b(\< c) d\! |
  e2. |
  d2.\> |
  c2\! c4 | \abr
  b2( a4) |
  b2. |
  d4-> d d |
  d2 d4 |
  d2-> d4 | \abr
  d2\< d4 | 
  e2.->\> |
  d\! |
  a4( b) c |
  b2 a4 |
  b2 r4 | \abr
  d2.-> |
  c2 c4 |
  d2.-> |
  c |
  cis4\< cis cis |
  d2. |
  e4( d cis) | \abr
  d2\! d4\p\< | 
  d2 d4 |
  d2 d4 |
  d2 d4 |
  d2. |
  e2\f\> e4 |
  d2. | \abr
  c2 c4 |
  b2 a4 |
  b2.\!\fermata \bar "||" 
  \key c \major \time 4/4 |
  \zatakt d4\f |
  e2 d4 d | \abr
  e e c\> g |
  a8 b c d e4 e |
  e2->\f e | \abr
  d4 d e e |
  r2 r4 c4\< | \abr
  c4 e\! f2\f\> |
  e4( d) c2\< |
  e4 e8 e f4 f8 f | \abr
  e4(\> d) c2 |
  b2\p b |
  c4 c c2 |
  c4 bes bes bes | \abr
  bes2 a |
  g4 a bes a |
  g2 b4 b |
  c4. c8 c2 | \abr
  c2.\f c4 |
  e2 d4 d |
  c2\fermata r2 \bar "|."
  
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  b2 a4 |
  g( a) b |
  c2. |
  b |
  a2 a4 |
  g2( fis4) |
  g2. |
  c4 c c |
  b2 b4 |
  c2 c4 |
  b2 b4 |
  c2. |
  b |
  g2 g4 |
  g2 fis4 |
  g2 r4 |
  g2. |
  g2 g4 |
  g2. |
  g |
  a4 a a |
  a2. |
  a |
  a2 a4 |
  b2 b4 |
  a2 b4 |
  c2 c4 |
  b2. |
  c2 c4 |
  b2. |
  a2 a4 |
  g2 fis4 |
  g2. |
  \zatakt b4 |
  c2 b4 b |
  c4 g e e |
  f8 g a b c4 c |
  c2 c |
  b4 b c g |
  g8 g a[( c]) b a g4 |
  r4 g4 a2 |
  g4( f) e2 |
  g4 g8 g a4 a8 a |
  g4( f) e2 |
  g2 g |
  e4 e e2 |
  e4 e e g |
  g2 f |
  e4 f g f |
  e2 g4 g |
  g4. g8 g2 |
  a4( g f) a |
  c2 b4 b |
  c2 r
  
  
}


tenorvoice = \relative c'' {
  \global
  \dynamicUp 
  g2\p g4 |
  g2 g4 |
  fis2. |
  g |
  e2 c4 |
  d2. |
  g |
  a4-> g8[( fis]) e[( d]) |
  g2 g4 |
  a4( g8[ fis]) e[( d]) |
  g2 g4 |
  fis2.-> |
  g2. |
  c,4( d) e |
  d2 d4 |
  g2 r4 |
  f2. |
  e2 e4 |
  f2. |
  e |
  e4 e e |
  fis2. |
  g4( fis e) |
  fis2 fis4\p |
  g2 g4 |
  fis2 g4 |
  a2 a4 |
  g2. |
  fis2\f fis4 |
  g2. |
  e2 c4 |
  d2 d4 |
  g2.\fermata
  \key c \major
  \zatakt g4\f |
  c,2 g'4 g |
  c, c r2 |
  R1 |
  c2\f c |
  g'4 g c, c |
  e8 e f[( a]) g f e4
  r4 c c2\f |
  <g g'>2 c |
  c4 c8 c c4 c8 c |
  <g g'>2 c |
  f\p f |
  c4 c c2 |
  c4 c c e |
  f2 f |
  c4 c c c |
  c2 g'4 f |
  e4. e8 e2 |
  f4\f( g a) f |
  g2 g4 g |
  c,2\fermata r2
  
}

lyricsup = \lyricmode {
  \repeat unfold 73 \skip 1
  Ли -- куй,
}

lyricscore = \lyricmode {
А -- нгел во -- пи -- я -- ше бла -- го -- да -- тней,
чи -- ста -- я Де -- во, ра -- ду -- йся, и па -- ки ре -- ку: ра -- ду -- йся:
твой Сын во -- скре -- се три -- дне -- вен от гро -- ба
и ме -- ртвы -- я во -- здви -- гну -- вый: лю -- ди -- е,
ве -- се -- ли -- те -- ся.
Све -- ти -- ся, све -- ти -- ся, но -- вый И -- е -- ру -- са -- ли -- ме:
сла -- ва бо Го -- спо -- \set associatedVoice = "alto" дня на те -- бе во -- зси -- я.
Ли -- куй ны -- не и ве -- се -- ли -- ся, Си -- о -- не.
Ты же, чи -- ста -- я, чи -- ста -- я, кра -- су -- йся, Бо -- го -- ро -- ди -- це,
о во -- ста -- ни -- и ро -- жде -- ства тво -- е -- го.
}


\bookpart {
  \paper {
    top-margin = 10
    left-margin = 15
    right-margin = 10
    bottom-margin = 10
    indent = 15
    ragged-last-bottom = ##f
  }
  \score {
      \transpose g as {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Гол. 1" "Гол. 2"  } }
        shortInstrumentName = \markup { \right-column { "1" "2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \lyricsup }
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Гол. 3"
        shortInstrumentName = "3"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \oneVoice  \tenorvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
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
      \transpose g as {
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
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
