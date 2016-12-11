\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "С нами Бог"
  composer = " "
  subtitle = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
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

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \cadenzaOn
  <e c>4.( <d b>8) <c g>4 c \bar "" c d a8[( g] a[ <b g>]) <c g>2 r4 \bar ""
  <c g>8[( <d b>]) <e c>4.( <d b>8) <c g>4 \bar "" c c d a8[( g a]) b c2 r4 \bar "|"
  <e c>8[( <f d>]) <g e>[( <f d>]) <e c>4.( <d b>8 <c g>4 <d a>) <d b> \arpeggioBracket <c g>1\arpeggio\fermata 
  \repeat volta 2 {
    c4 c c1 b4 c1\fermata }
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g4.( f8) e4 a g f a8[( g] a[ f]) e2
  r4 e8([ f)] g4.( f8) e4 a g f a8[( g a]) b c2 r4
  g4 g g4.( f8 e4 f) g8[( f]) e1\fermata
  e8[( f]) g[( f]) e4.( f8 g4 a) g8([ f)] e1
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  c4.( d8) e4 f e d a8([ g] a[ d]) e2 r4
  c8[( d]) e4.( d8) e4 f e d a8[( g a]) b c2 r4
  c8[( d]) c[( b]) c4.( d8 e4 f) g8([ f)] e1\fermata
  c4 c c1 d4 c1\fermata
}


bassvoice = \relative c {
  \global
  \dynamicUp
  c4.( g'8) c4 f, e d a'8[( g] f[ d]) c2 r4
  c8[( g']) c4.( g8) c,4 f e d a'8[( g a]) b c,2 r4
  c8[( d]) e[( f]) g4.( f8 e4 f) g c,1\fermata
  c8[( d]) e[( f]) g4.( f8 e4 f) g c,1\fermata
}

lyricscore = \lyricmode {
  С_на -- ми Бог, ра -- зу -- мей -- те, я -- зы -- цы и по -- ка -- ря -- йте -- ся,
  я -- ко с_на -- ми Бог.
  \repeat volta 2 { я -- ко с_на -- ми Бог. }
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
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
        instrumentName = \markup { \right-column { "Т" "Б" } }
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
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
