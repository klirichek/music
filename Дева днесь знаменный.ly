\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

\paper {
  #(set-default-paper-size "a4")
  
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 160
  ragged-last-bottom = ##f
  indent = 0
}

abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

global = {
  \key c \major
  \numericTimeSignature
  \time 8/4
}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }
nat = { \once \hide Accidental }

sopvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \co e2( d8[ e d b] c[ d]) e4 d2 \cb
  \co c8[( d]) e4 e e e8[( d] c4) d8[( e]) \cb
  \co f4 e8[( d] e4 d c) d2\cb  \abr
  \co d8[( e]) d[( c]) b[( c] d4) c8[( b] c4) b2( c8[ d]) \cb
  \co e4 e e2 e8[( d] c4) d8[( e]) f4 e8[( d] e4 d c) d2 \cb \abr
  \co e2( d8[ e]) d[( c] ) d2 c4( e) d d8[( c]) d[( e]) d[( c]) b[( c] d4 c8[ b] c4) b2 \cb \abr
  \co c8[( d]) e4 e e e e8[( d)] c4 d8[( e]) f4 e8[( d] e4) d( c) d2\cb \abr
  \co b4 a4 c8[( d e d]) e4 d8[( c]) d4( c) b2  \cb
  \co d4 c8[( d]) e4 c8( d4 c8) d[( e]) d[( c]) b[( c] d4) c8[( b] c4) b2 \fermata \cof \bar "|."
}


deva = \lyricmode {
  Де -- ва днесь Пре -- су -- ще -- стве -- нна -- го ра -- жда -- ет,
  и зем -- ля вер -- теп Не -- при -- ступ -- но -- му при -- но -- сит.
  А -- нге -- ли 
  с_па -- стырь -- ми сла -- во -- сло -- вят,
  вол -- сви же со зве -- здо -- ю пу -- те -- ше -- ству -- ют,
  нас бо ра -- ди ро -- ди -- ся 
  От -- ро -- ча мла -- до, 
  пре -- веч -- ный Бог.
}

\bookpart {
    \header {
    title = "Рождество Христово, кондак"
    subtitle = "Знаменный распев, глас 3-й"
    %composer = "А. Кастальскаго"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \score {
    \transpose d f  
    \new ChoirStaff
    <<
      \new Staff << \new Voice = "soprano" { \clef bass \oneVoice  \sopvoice } >> 
      \new Lyrics \lyricsto "soprano" { \deva }
%      \new Staff <<  \new Voice { \clef bass  \oneVoice  \lowvoice  }  >> 
    >>
    \layout {
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
      \context {
        \Score
        \override StaffGrouper.staffgroup-staff-spacing.padding = #10
      }
    } 
  }
  
    \score {
    \transpose c e   \new ChoirStaff
    <<
      \new Staff \with { midiInstrument = "voice oohs" } <<  \new Voice {  \oneVoice  \sopvoice } >>    
    >>
    \midi {
      \tempo 4=90
    }
  }
}

