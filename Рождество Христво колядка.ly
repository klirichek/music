\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Рождество Христово"
  subtitle = "(колядка)"
  % composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/4
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
  c8 bes a bes |
  c4 a |
  bes8 a g a |
  bes2 | \abr
  bes8 bes bes bes |
  bes4 d |
  c8 c c bes |
  a2 | \abr
  \repeat volta 2 {
    c4 f8[( e]) |
    d c bes a |
    bes4 d |
    c8 bes a g |
    a bes c d |
    c4 bes |
    a2
  }
}


lyricscore = \lyricmode {
  \set stanza = "1." 
  Рож -- де -- ство Хри -- сто -- во,
  Ан -- гел при -- ле -- тел;
  он ле -- тел по не -- бу,
  лю -- дям пес -- ню пел:
  
  Вы лю -- ди, ли -- куй -- те
  и днесь тор -- же -- ствуй -- те:
  днесь Хри -- сто -- во Рож -- де -- ство!
}

lyricscoretwo = \lyricmode {
  \set stanza = "2." 
  Я ле -- чу от Бо -- га,
  ра -- дость вам при -- нёс,
  что в_вер -- те -- пе бед -- ном
  ро -- дил -- ся Хри -- стос!
  
  Ско -- рей по -- спе -- шай -- те,
  Хри -- ста про -- слав -- ляй -- те
  и Свя -- ту -- ю Мать Е -- го!
 
}

lyricscorethree = \lyricmode {
  \set stanza = "3." 
  Пас -- ты -- ри в_пе -- ще -- ру
  пер -- вы -- ми при -- шли
  и Мла -- ден -- ца_- Бо -- га
  с_Ма -- те -- рью на -- шли;
  
  Сто -- я -- ли, мо -- ли -- лись,
  Хри -- сту по -- кло -- ни -- лись_—
  днесь Хри -- сто -- во Рож -- де -- ство!
}

lyricscorefour = \lyricmode {
  \set stanza = "4." 
  Слы -- ши -- те со -- глас -- ный
  ан -- гель -- ский наш клир:
  «Сла -- ва в_Выш -- них Бо -- гу
  и на зем -- ли мир!»
  
  Вы, лю -- ди, внем -- ли -- те,
  ан -- ге -- лам вто -- ри -- те,
  ра -- ду -- ют -- ся Не -- бе -- са!
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    ragged-bottom = ##f
    indent = 0
  }
  \score {
      \transpose f d {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
    \midi {
      \tempo 4=90
    }
  }
  \markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Рождество Христово,"
          "Ангел прилетел;"
          "Он летел по небу,"
          "Людям песню пел:"
          "    Вы, люди, ликуйте"
          "    И днесь торжествуйте:"
          "    Днесь Христово Рождество!"
        }
      }
      \combine \null \vspace #0.3 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "Я лечу от Бога,"
          "Радость вам принёс,"
          "Что в вертепе бедном"
          "Родился Христос!"
          "    Скорей поспешайте,"
          "    Христа прославляйте"
          "    И Святую Мать Его!"
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "3."
        \column {
          "Пастыри в пещеру"
          "Первыми пришли"
          "И Младенца-Бога"
          "С Матерью нашли;"
          "    Стояли, молились,"
          "    Христу поклонились —"
          "    Днесь Христово Рождество!"
        }
      }
      \combine \null \vspace #0.3 % adds vertical spacing between verses
      \line { \bold "4."
              \column {
          "Слышите согласный"
          "Ангельский наш клир:"
          "«Слава в Вышних Богу"
          "И на земли мир!»"
          "    Вы, люди, внемлите,"
          "    Ангелам вторите,"
          "    Радуются Небеса!"
        }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
  }
}



% То же самое, но под нотами слова только 1-го куплета
