\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Ныне отпущаеши"
  composer = "П. Чесноков, op 50 № 4"
  arranger = "(пер. для смеш. сост.)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 4/4
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
con = { \cadenzaOn }
coff = { \cadenzaOff \bar "|" }
cbr = { \bar "" }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \tempo "Покойно, певуче"
  \dynamicUp
  
  \con r1 r g2\p g\< g a b1\> a2 a\! \cbr a a a a a \cbr b\< g1~(\! g2 fis)\> e1\! \coff
  \con a2\< b c\! b \cbr a a4( g) fis( g a2) \cbr g2(\> fis) e1\! \coff
  \con b'2 b b b\< c d1\! c4( b) a2 b1 \coff
  \con g4\p( a) b1. a2 g1 \cbr g2(\> fis) e1\! \coff
  \con a2\p g \cbr a4(\< b) c1\! \cbr b2 b4( a) g2(\> fis) e1\! \coff
  \con b'2\< \cbr b c \cbr d1( c4\> b) \cbr a2 b1.(\mf\< c2) \cbr d1~\f d~ d2\> a\! \cbr a b\< c c\> g\! \cbr a2\< \cbr
    b1.\>(a2) g1\! \coff
  \con a2\p\<( b) c1\> b2\! \cbr a4( g) a2 \cbr g4( fis) e2 \cbr g4\mf(a) b1.(\> a2 g1) fis e\fermata\! \cadenzaOff \bar "||"
  
  
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  r1 r e2 e e fis g( fis) e e fis e e e e fis g( e~ e1) e
  fis2 g e4( fis) g( fis) e2 e e2.( fis4) e1 e
  g2 g g g g4( a) b1 g2 g\> g1\!
  e4( fis) g2( e) fis1 g2( e) e1 e
  e2 e g g1 g2 fis e1 e
  g2 g g4( a) b1( g2) g g1.( a2) b1( a2 g a) a a a a a g g g( e fis1) e
  g g g2 e fis d e g g( e fis1 e) e e
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  b1\p c b c b2( d) c c b c c c c b b1( c) b
  d4( c) b2 a b c c4( b) a( b c2) b( c) b1
  e2 e e e e g2.( f4) e( d) e2 d1
  d2 d1. c2 b1 c b
  c2 b f'! e1 d2 d4( c) b2( c) b1
  e2 e e g2.( f!4 e d) e2 d1.~ d2 g1( fis?2 e fis) fis fis f e e e e
  d1.( c2) b1 f'! e e2 c d4( c) b2 b e d1.( c2 b1) c b
}


bassvoice = \relative c {
  \global
  \dynamicUp
  e1 e e e e~ e e2 e1~ e b2 e( g a1) e
  e2 e e1~ e~ e2 e e4( g a2) e1
  e'2 e e d c g1 g2 c, g'1
  b4( a) g1 d e2( g) a1 e
  a2 e d c1 g'2 d e4( g a2) e1
  e'2 d c g1~ g2 c g1. r2 r1 r1 d'2 d d d a a c c g1( d) e
  d c e2 a d, d4( b) e2 c g1( d' e) <a a,> e\fermata
}

lyricsalto = \lyricmode {
  \repeat unfold 15 \skip 1
  \repeat unfold 9 \skip 1
  \repeat unfold 9 \skip 1
  спа -- се -- ни -- е 
}

lyricsoprano = \lyricmode {
  Ны -- не о -- тпу -- ща -- е -- ши \repeat unfold 8 \skip 1  
}

lyricstenor = \lyricmode {
  Ны -- не о -- тпу -- ща -- е -- ши ра -- ба Тво -- е -- го, Вла -- ды -- ко,
  по гла -- го -- лу Тво -- е -- му __  с_ми -- ром
  я -- ко ви -- де -- ста о -- чи мо -- и
  спа -- се -- ни -- е Тво -- е,
  е́ -- же е -- си́ у -- го -- то -- вал
  пред ли -- цем всех __ лю -- дей __
  Свет __ во о -- ткро -- ве́ -- ни -- е я --
  зы́ -- ков и сла -- ву лю -- дей Тво -- их И -- зра -- и -- ля.
}

lyricsbass = \lyricmode {
  Ны -- не о -- тпу -- ща -- е -- ши \repeat unfold 3 \skip 1
  по гла -- го -- лу \repeat unfold 2 \skip 1
  \repeat unfold 29 \skip 1
  свет
  
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
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Lyrics = "tenors"
      \new Lyrics = "altos"
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
          \lyricsoprano
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricsalto
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyricstenor
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
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
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
      \new Lyrics = "tenors"
      \new Lyrics = "altos"

      
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
          \lyricsoprano
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricsalto
        }
      }
      \context Lyrics = "tenors" {
        \lyricsto "tenor" {
          \lyricstenor
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 2=50
    }
  }
}
