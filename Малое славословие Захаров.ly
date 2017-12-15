\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.8)

\header {
  composer = "Захаров"
  title = "Малое славословие"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  c2\f e4 |
  g2 f4 |
  e e e |
  d d d |
  c2. |
  r4 c c |
  <b d>2 q4 | \abr
  <c e> q q |
  <d f>2 q4 |
  <c e>( <b d> c) |
  <c f> q d |
  c2 b4 |
  c2 r4 \bar ":|."
  <c e>2\pp q4 |
  <d f>2 <c e>4 |
  <b d>2 c4 |
  <gis b> q <a c> |
  <b d>( <a c> <gis b>) |
  <a c>2.\ppp |
  R2.*3 |
  r4 e' c |
  g'2 f4 |
  e f e |
  d( e) d |
  c2\fermata r4 |
  cis2\p cis4 |
  d( cis) d |
  e2 d4 |
  cis( d) e |
  f2 e4 |
  d2 r4 |
  R2. |
  R2. |
  r4 <cis e> q |
  <d f>( <cis e>) <d f> |
  <e g>2 <d f>4 |
  <cis e>2 r4 |
  r c c |
  d( c) d |
  es2. |
  r4 a, a |
  bes( a) bes |
  a2 g4 |
  f2 a4 |
  g2 g4 |
  g c\f c |
  c2\fermata c4 |
  b2 b4 |
  c2 g4\p |
  a2. |
  f2( a4) |
  g2.\fermata\pp
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
   g2 g4 |
   g2 g4 |
   g g g |
   a g f |
   e2. |
   r4 e e |
   g2 g4 | \abr
   g g g |
   g2 g4 |
   g2. |
   a4 a a |
   g2 f4 |
   e2 r4 |
   a2 a4 |
   a2 a4 |
   gis2 a4 |
   e e e |
   e2. |
   a2. |
   R2.*3 |
   r4 g g |
   b2 b4 |
   g a g |
   f( g) f |
   e2 r4 |
   e2 e4 |
   f( e) f |
   g2 f4 |
   e( f) g |
   a2 g4 |
   f2 r4 |
   R2. |
   R2. |
   r4 a a |
   a2 a4 |
   a2 a4 |
   g2. |
   r4 a a |
   bes( a) bes |
   a2 r4 |
   r f f |
   f2 f4 |
   f2 c4 |
   c2 f4 |
   f2 f4 |
   e g a |
   g2 g4 |
   g2 f4 |
   e2 e4 |
   f2. |
   d2( f4) |
   e2.
   
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
   e2 e4 |
   d2 d4 |
   c c c |
   c b b |
   g2. |
   R2.*3 |
   r4 b b |
   e( d) e |
   f f f |
   e2 d4 |
   g,2 r4 | \abr
   R2.*6 |
   r4 <gis b> q | \abr
   <a c>2 q4 |
   <b d> q q |
   <c e>2. |
   <b d>2( b4) |
   c2.( |
   b)( |
   g2) r4 \bar "||" \abr
   \repeat unfold 5 { a2 a4 }
   a4 d e |
   f2 e4 | \abr
   d cis d |
   a2 r4 |
   R2.*2 |
   c2.\rest
   r4 f f |
   f2 f4 | \abr
   f2. |
   r4 c c |
   d( c) d |
   c2 bes4 |
   a2 c4 |
   b2 b4 | \abr
   c e f |
   e2 e4 |
   d2 d4 |
   g,2 c4 |
   c2. |
   c |
   c \bar "|."
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  c2\f c4 |
  b2 b4 |
  c g e |
  f g g |
  c,2. |
  R2.*3 |
  r4 g' g |
  c2 c4 |
  c a f |
  g2 g,4 |
  c2 r4 |
  R2.*6 |
  r4 e\ppp e |
  a2 a4 |
  g g g |
  c2. |
  g |
  c,( |
  g)( |
  c2)\fermata r4
  a2\p a4 |
  \repeat unfold 4 { a2 a4 }
  d f a |
  d2 a4 |
  f e d |
  a2 r4 |
  R2.*2 |
  r4 a' g |
  f2. |
  f |
  f4 f f |
  f2. |
  f |
  f~ |
  f2 f4 |
  d2 <d g,>4 |
  c4 c'\f c |
  c2\fermata c4 |
  g2 <g g,>4 |
  c,2 c4\p |
  c2. |
  c |
  c\pp\fermata
  
}

lyricscore = \lyricmode {
  Сла -- ва в_вы -- шних Бо -- гу, и на зем -- ли мир, в_че -- ло -- ве -- цех
  бла -- го -- во -- ле -- ни -- е, __ бла -- го -- во -- ле -- ни -- е.
  Сла -- ва в_вы -- шних Бо -- гу, и на зем -- ли __ мир.
  В_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  Го -- спо -- ди, у -- стне мо -- и __ от -- ве -- рзе -- ши
  во -- зве -- стят хва -- лу Тво -- ю, и у -- ста мо --
  я во -- зве -- стят хва -- лу Тво -- ю, Хва -- лу Тво --
  ю, во -- зве -- стят хва -- лу Тво -- ю, хва -- лу Тво -- ю.
}

lyricsbass = \lyricmode {
  \repeat unfold 11 \skip 1
  В_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  В_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  \repeat unfold 11 \skip 1 и у -- ста мо --
  я во -- зве -- стят И у -- ста -- мо --
  я во -- зве -- стят хва -- лу __  
  
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
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
      
      \new Lyrics = "sopranos"
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
      \new Lyrics \lyricsto "bass" { \lyricsbass }
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
