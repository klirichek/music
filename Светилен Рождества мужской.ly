\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  composer = "муз. Шевцова"
  title = "№26 Светилен Рождества"
  subtitle = "(мужской)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breath = { \once \override BreathingSign.text =
    \markup { \musicglyph #"scripts.tickmark" } \breathe }

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

sopvoice = \relative c' {
  \global
  \dynamicUp
  
  \secondbar  
  b2 c4 |
  d4.( e8) c4 |
  b2. |
  \time 4/4 g'2 e |
  \time 3/4 d8([ b] e[ d] c[ b]) |
  a2 a8[ b] | \abr
  c4.( e8) d[ c] |
  c4 b\fermata \breath b |
  \time 4/4 e4. e8 dis[ e] fis[ dis] |
  e4\breathe e d? d | \abr
  d d d e8[ c] |
  b4 a g2 \breath |
  g' fis4 e |
  d4.( c8) b4 \breathe d |
  e8[( c b c]) d4\fermata e\fermata |
  a,8[( b c b]) d[ c] b[ a] |
  b1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  g2 a4 |
  b4.( c8) a4 |
  g2. |
  e'2 c |
  b8[( g] c[ b] a[ g]) |
  fis2 fis8[ g] |
  a4.( c8) b[ a] |
  a4 g g |
  b4. b8 b4 b |
  c c b b |
  a8[ b] c[ a] b4 c8[ a] |
  g4 fis g2 |
  e' d4 c |
  b4.( a8) g4 b |
  c8[( a g a]) b4 c |
  fis,8[( g a g]) b[ a] g[ fis] |
  g1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  g2 g4 |
  g2 d4 |
  g2. |
  c2 c |
  g( fis8[ g]) |
  fis2 d4 |
  d( fis) d |
  g g g |
  g4. g8 fis[ g] a[ fis] |
  g4 g g g |
  fis8[ g] a[ fis] g4 g8[ a] |
  g4 fis g2 |
  c c4 c |
  b4.( a8) g4 \breathe g
  c,2 g'4 g |
  fis8[( g a g]) d4 d d1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  g2 g4 |
  g2 d4 |
  g,2. |
  c2 e |
  d2. |
  d2 d4 |
  d( fis) d g g\fermata \breath g |
  e4. e8 b4 b |
  c c g' g |
  fis8[ g] a[ fis] g4 c, |
  d d g2 \breath |
  c, d4 e8[ fis] |
  g4( d) g  g |
  c,2 g'4\fermata g\fermata |
  d2 d,4 d |
  g1\fermata
}

lyricscore = \lyricmode {
  По -- се -- тил ны есть свы -- ше Спас __ наш.
  Во -- сток во -- сто -- ков. И су -- щи -- я во тьме и се -- ни
  о -- бре -- то -- хом и -- сти -- ну.
  И -- бо от Де -- вы ро -- ди -- ся, ро -- ди -- ся Го -- сподь.
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
        shortInstrumentName = \markup { \right-column { "Т1" "Т2"  } }
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \clef "G_8" \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Б1" "Б2" } }
        instrumentName = \markup { \right-column { "Б1" "Б2" } }
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
