\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  %composer = "муз. Шевцова"
  %title = "№26 Светилен Рождества"
  %subtitle = "(женский)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}



global = {
  \key f \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
}

globalg = {
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
    \markup { \musicglyph #"scripts.tickmark" } \breathe }

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopone = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar
  a2 bes4 |
  c4. ( d8) bes4 |
  a2. \breath
  \time 4/4 f'2 d |
  \time 3/4 c8[( a] d[ c bes a]) |
  g2 \breathe 
  g8[( a]) |
  bes4.( d8) c[( bes]) |
  bes4 a\fermata \breath a4 |
  \time 4/4 d4. d8 cis[( d]) e([ cis]) |
  d4 \breathe d c? c |
  c c c d8[( bes]) |
  a4 g f2 |
  \breath f' e4 d |
  c4.( bes8) a4 c |
  d8[( bes a bes]) a4\fermata \breathe d\fermata |
  g,8[( a bes a]) c[( bes]) a[( g]) |
  a1 \bar "||"

}


soptwo = \relative c' {
  \global
  \dynamicUp  
  f2 g4 |
  a4.( bes8) g4 |
  f2. |
  d'2 bes |
  a8[( f] bes[ a g f]) |
  e2 e8[( f]) |
  g4.( bes8) a[( g]) |
  g4 f f |
  a4. a8 a4 a |
  bes bes a a |
  g8[( a]) bes[( g]) a4 bes8[( g]) |
  f4 e f2 |
  d' c4 bes |
  a4.( g8) f4 a |
  bes8[( g f g]) a4 bes |
  e,8[( f g f]) a[( g]) f[( e]) |
  f1
  
}


altone = \relative c' {
  \global
  \dynamicUp 
  f2 f4 |
  f2 c4 |
  f2. |
  bes,2 d |
  f ( e8[ f]) |
  c2  c4 |
  c e c |
  f f f |
  f4. f8 e8[( f]) g[( e]) |
  f4 f f f |
  e8[( f]) g[( e]) f4 bes, |
  c4 c f2 \breath
  bes bes4 bes |
  a4.( g8) f4 f |
  bes,2 f'4 \breathe f |
  c2 c4 c f1
}


alttwo = \relative c' {
  \global
  \dynamicUp
  f2 f4 |
  f2 c4 |
  f2. \breath |
  bes,2 d |
  f ( e8[ f]) |
  c2 \breathe c4 |
  c e c |
  f f\fermata \breath f |
  d4. d8 a4 a |
  bes bes
  f' f |
  e8[( f]) g[( e]) f4 bes, |
  c4 c f2 
  bes,2 c4 d8[( e]) |
  f4( c) f f |
  bes,2 f'4\fermata f\fermata |
  c2 c4 c f1
}

sopvoice = \relative c' {
  \globalg
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
  a8[( b c b]) d[ c] b[ a] |
  b1\fermata \bar "|."
}


altvoice = \relative c' {
  \globalg
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
  \globalg
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
  \globalg
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
  По -- се -- тил __ ны есть свы -- ше Спас __ наш.
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
    indent = 20
    ragged-bottom = ##f
  }
  
    \markup { \center-column { " " \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(женский)"} }  
    
    
  \score {
    \header { piece = "F-dur" }
 %     \transpose g f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopone }
        \new Voice  = "alto" { \voiceTwo \soptwo }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \altone }
        \new Voice = "bass" { \voiceTwo \alttwo }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
 %     }  % transposeµ
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
  
      \markup { \center-column {  " "  \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(мужской)"} }  
  \paper {

    indent = 10

  }
  \score {
      \transpose g f {
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
  
    \markup { \center-column { \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(женский)"} } 
    
  \score {
    \header { piece = "G-dur" }
      \transpose f g {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopone }
        \new Voice  = "alto" { \voiceTwo \soptwo }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \altone }
        \new Voice = "bass" { \voiceTwo \alttwo }
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
  
  
      \markup { \center-column {  " "  \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(мужской)"} }  
  \paper {

    indent = 10

  }
  \score {
 %     \transpose f g {
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
 %     }  % transposeµ
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




