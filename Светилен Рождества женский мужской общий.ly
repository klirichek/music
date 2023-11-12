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

tivoice = \relative c' {
  \global
  \dynamicUp
  
  \secondbar  
  a2 bes4 |
  c4.( d8) bes4 |
  a2. |
  \time 4/4 f'2 d |
  \time 3/4 c8([ a] d[ c] bes[ a]) |
  g2 g8[ a] | \abr
  bes4.( d8) c[ bes] |
  bes4 a\fermata \breath a |
  \time 4/4 d4. d8 cis[ d] e[ cis] |
  d4\breathe d c? c | \abr
  c c c d8[ bes] |
  a4 g f2 \breath |
  f' e4 d |
  c4.( bes8) a4 \breathe c |
  d8[( bes a bes]) c4\fermata d\fermata |
  g,8[( a bes a]) c[ bes] a[ g] |
  a1\fermata \bar "|."
}


tiivoice = \relative c' {
  \global
  \dynamicUp  
  f,2 g4 |
  a4.( bes8) g4 |
  f2. |
  d'2 bes |
  a8[( f] bes[ a] g[ f]) |
  e2 e8[ f] |
  g4.( bes8) a[ g] |
  g4 f f |
  a4. a8 a4 a |
  bes bes a a |
  g8[ a] bes[ g] a4 bes8[ g] |
  f4 e f2 |
  d' c4 bes |
  a4.( g8) f4 a |
  bes8[( g f g]) a4 bes |
  e,8[( f g f]) a[ g] f[ e] |
  f1
}


barvoice = \relative c' {
  \global
  \dynamicUp 
  f,2 f4 |
  f2 c4 |
  f2. |
  bes2 bes |
  f( e8[ f]) |
  e2 c4 |
  c( e) c |
  f f f |
  f4. f8 e[ f] g[ e] |
  f4 f f f |
  e8[ f] g[ e] f4 f8[ g] |
  f4 e f2 |
  bes bes4 bes |
  a4.( g8) f4 \breathe f
  bes,2 f'4 f |
  e8[( f g f]) c4 c c1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  f,2 f4 |
  f2 c4 |
  f,2. |
  bes2 d |
  c2. |
  c2 c4 |
  c( e) c f f\fermata \breath f |
  d4. d8 a4 a |
  bes bes f' f |
  e8[ f] g[ e] f4 bes, |
  c c f2 \breath |
  bes, c4 d8[ e] |
  f4( c) f  f |
  bes,2 f'4\fermata f\fermata |
  c2 c,4 c |
  f1\fermata
}

sopcvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar
  \tempo Lento
  a2\mf\< bes4\!
  \time 4/4 c4.( d8) bes2\> |
  a2\!\fermata \breathe f'4\fermata d\fermata |
  \time 3/4 c8[( a] d[ c] bes[ a]) |
  g2 \breath g8[ a] |
  bes4.(\< d8)\> c[ bes]\! | \abr
  bes4 a\fermata a |
  \time 4/4 d4. d8 cis8[ d] e[ cis] |
  d4 \breathe d c? c |
  c c c( d8) bes |
  f4\> e f2\! | \abr
  f'2-> e4-> d-> |
  c4.( bes8) a4 \breath c |
  d8[ bes a bes] c4\fermata d\fermata |
  g,8[ a bes a] c[\> bes] a[ g] |
  a1\fermata\! \bar "|."
}


altcvoice = \relative c'' {
  \global
  \dynamicUp  
  f,2 g4 |
  a4.( bes8) g2 |
  f d'4 bes |
  a8[( f] bes[ a] g[ f]) |
  e2 e8[ f] |
  g4.( bes8) a[ g] |
  g4 f f |
  f4. f8 e[ f] g[ e] |
  f4 f a a |
  g8[ a] bes[ g] a4( bes8) g |
  f4 e f2 |
  d'2 c4 bes |
  a4.( g8) f4 a |
  bes8[ g f g] a4 bes |
  e,8[ f g f] a[ g] f[ e] |
  f1
}


tenorcvoice = \relative c' {
  \global
  \dynamicUp 
  c2\mf\< c4\! |
  c2 c\> |
  c\! \breathe f4 d |
  c8[( a] d[ c] bes[ a]) |
  c2 \breath c4 |
  c2 c4 |
  c c d |
  a4. a8 a4 a |
  bes \breathe bes c c |
  c c c( d8) bes |
  c4\> bes a2\! |
  f'2 e4 d |
  c4.( bes8) a4 \breath c |
  d8[ bes a bes] c4 d |
  c2 c4\> c |
  c1\!
}


basscvoice = \relative c' {
  \global
  \dynamicUp
  << { \parenthesize f,,4( \parenthesize a) \parenthesize c } \new Voice { \voiceFour f2 f4 } >> |
  f2 c |
  f\fermata bes,4\fermata bes\fermata |
  << c2. \new Voice { \voiceFour  f4( e f) } >>|
  c2 c4 |
  c\<( e)\> c\! |
  f f\fermata f |
  d4. d8 a4 a |
  bes bes f' f |
  e8[ f] g[ e] f4 bes, |
  c4 c f2 |
  bes,-> c4-> d8->[ e] |
  f4( c) f4 f |
  bes,2 f'4\fermata f\fermata |
  c2 c4 c |
  <f f,>1\fermata
  
}

lyricscore = \lyricmode {
  По -- се -- тил  ны есть свы -- ше Спас __ наш.
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
%      \transpose g f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т1" "Т2"  } }
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "ti" { \clef "G_8" \voiceOne \tivoice }
        \new Voice  = "tii" { \voiceTwo \tiivoice }
      >> 
      
      \new Lyrics = "ti"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Б1" "Б2" } }
        instrumentName = \markup { \right-column { "Б1" "Б2" } }
        midiInstrument = "voice oohs"
        
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \barvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "ti" {
        \lyricsto "ti" {
          \lyricscore
        }
      }
    >>
%      }  % transposeµ
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
      \markup { \center-column {  " "  \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(общий)"} }      
  
  \score {
    \header { piece = "F-dur" }
%      \transpose g f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopcvoice }
        \new Voice  = "alto" { \voiceTwo \altcvoice }
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
        \new Voice = "tenor" { \voiceOne \clef bass \tenorcvoice }
        \new Voice = "bass" { \voiceTwo \basscvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
%      }  % transposeµ
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
      \transpose f g {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        shortInstrumentName = \markup { \right-column { "Т1" "Т2"  } }
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "ti" { \clef "G_8" \voiceOne \tivoice }
        \new Voice  = "tii" { \voiceTwo \tiivoice }
      >> 
      
      \new Lyrics = "ti"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        shortInstrumentName = \markup { \right-column { "Б1" "Б2" } }
        instrumentName = \markup { \right-column { "Б1" "Б2" } }
        midiInstrument = "voice oohs"
        
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \barvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "ti" {
        \lyricsto "ti" {
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
      \markup { \center-column {  " "  \fill-line {
    \null
    \fontsize #4 \bold \center-align "№ 26 Светилен Рождества"
    "муз. Шевцова"
  }
"(общий)"} }    
  \score {
    \header { piece = "G-dur" }
      \transpose f g {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopcvoice }
        \new Voice  = "alto" { \voiceTwo \altcvoice }
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
        \new Voice = "tenor" { \voiceOne \clef bass \tenorcvoice }
        \new Voice = "bass" { \voiceTwo \basscvoice }
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

