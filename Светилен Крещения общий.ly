\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
%#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  composer = "муз. Шевцова"
  title = "№26 Светилен Крещения"
  subtitle = "(общий)"
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

breath = { \once \override BreathingSign.text =
    \markup { \musicglyph "scripts.tickmark" } \breathe }

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
  \tempo Lento
  b2\mf\<( c4\!)
  \time 4/4 d4.( e8) c2\> |
  b2\!\fermata \breathe g'4 e |
  \time 3/4 d8\fermata b e[( d]) c([ b)] |
  a2 \breath a8 b |
  c4.(\< e8)\> d c\! | \abr
  c4 b\fermata b |
  \time 4/4 e4. e8 dis8([ e)] fis([ dis)] |
  e4 \breathe e d? d |
  d d d e8 c |
  g4\>( fis) g2\! | \abr
  g'2-> fis4-> e-> |
  d4.( c8) b4 \breath d8 d |
  e8([ c b c)] d4\fermata e\fermata |
  a,8([ b c)] b d([\> c b a]) |
  b1\fermata\! \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g2( a4) |
  b4.( c8) a2 |
  g e'4 c |
  b8 g c([ b)] a([ g]) |
  fis2 fis8 g |
  a4.( c8) b a|
  a4 g g |
  g4. g8 fis([ g)] a[( fis)] |
  g4 g b b |
  a8[( b]) c[( a]) b4 c8 a |
  g4( fis) g2 |
  e'2 d4 c |
  b4.( a8) g4 b8 b |
  c8([ a g a)] b4 c |
  fis,8[( g a]) g b([ a g fis)] |
  g1
} 


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \after 2. \! d2.\mf\<  |
  d2 d\> |
  d\! \breathe g4 e |
  d8 b e([ d)] c([ b]) |
  d2 \breath d8 d |
  d2 d8 d |
  d4 d e |
  b4. b8 b4 b |
  c \breathe c d d |
  d d d e8 c |
  d4\>( c) b2\! |
  g'2 fis4 e |
  d4.( c8) b4 \breath d8 d |
  e8[( c b c)] d4 e |
  d4. d8 d2\>  |
  d1\!
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  g2( d4)  |
  g2 d |
  g\fermata c,4 e |
    g8\fermata g d4 d |
  d2 d8 d |
  d4\<( fis)\> d8 d\! |
  g4 g\fermata g |
  e4. e8 b4 b |
  c c g' g |
  fis8([ g)] a[( fis)] g4 c,8 c |
  d2 g2 |
  c,-> d4-> e8->[( fis)] |
  g4( d) g4 g8 g |
  c,2 g'4\fermata g\fermata |
  d4. d8 d2 |
  <g g,>1\fermata
  
}

lyricscore = \lyricmode {
  Я -- ви -- ся Спас, Бла -- го -- дать и и -- сти -- на,
  во стру -- ях И -- о -- рдан -- ских. И су -- щи -- я во тьме и се -- ни
  спя -- щи -- я про -- све -- тил есть.
  И -- бо при -- и -- де и я -- ви -- ся свет не -- при -- сту -- пный.
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
  }
  \score {
    \header { piece = "F-dur" }
      \transpose g f {
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
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
  }
  \score {
    \header { piece = "G-dur" }
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
