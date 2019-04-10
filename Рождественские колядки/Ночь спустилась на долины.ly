\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Ночь спустилась"
  subtitle = "(колядка)"
  % composer = "Composer"
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

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c' {
  \global
  \repeat volta 3 {  
  c8 c  \slurDashed f[( g]) a4 |
  g8 f g[( a]) bes4 |
  a8 bes c4 bes |
  a8 g f2 | \break
  \slurSolid
  
  c8 c f[( g]) a4 |
  g8 f g[( a]) bes4 |
  a8 bes c4 bes |
  a8 g f2 | \break
  
  c'4. bes8 a a |
  d c bes[( a]) bes4 |
  bes4. a8 g g |
  c bes a[( g]) a4 |
  a8 bes c4 bes |
  a8 g f2 | }
}


lyricscore = \lyricmode {
  \set stanza = "1." 
  Ночь спу -- сти -- лась на до -- ли -- ны,
  за -- сы -- па -- ет Ви -- фле -- ем.
  Э -- той но -- чью в_бед -- ных я -- слях Бог я -- ви -- лся на зе -- мле.
  
  Меж во -- ла -- ми и му -- ла -- ми 
  спит, по -- ви -- тый пе -- ле -- на -- ми, Бог мла -- де -- нец Царь ца -- рей.
}

lyricscoretwo = \lyricmode {
  \set stanza = "2." 
  А И -- о -- сиф и Ма -- ри -- я
  Ря -- дом с_Го -- спо -- дом сто -- ят.
  И, лю -- бо -- вью со -- гре -- ва -- я,
  не -- жно на Не -- го гля -- дят.
  
  Я -- рко звё -- здо -- чка си -- я -- ет,
  ра -- дость ми -- ру во -- зве -- ща -- ет:
  здесь ро -- ди -- лся Бо -- жий Сын!
}

lyricscorethree = \lyricmode {
  \set stanza = "3." 
  В_бе -- дных я -- слях средь я -- гня -- ток
  ждёт нас Бо -- жий Сын, Хри -- стос.
  На -- ше с_Бо -- гом при -- ми -- ре -- нье
  Он на Зе -- млю нам при -- нёс.
  
  Сле -- дуй -- те за па -- сту -- шка -- ми,
  по -- спе -- ша -- йте за вол -- хва -- ми,
  при -- хо -- ди -- те ко Хри -- сту!
}

lyricscorefour = \lyricmode {
  \set stanza = "4." 
  Ра -- до --  \set ignoreMelismata = ##t стно зву -- чит ан -- гель -- ский наш хор, \set ignoreMelismata = ##f
  пой -- те вме -- сте с_на -- ми все!
  Сла -- ва, сла -- ва в_вы -- шних Бо -- гу
  в_Не -- бе -- сах и на Зе -- мле!
  
  С_а -- нге -- ла -- ми во -- спе -- ва -- йте,
  пе -- сней Зе -- млю о -- гла -- ша -- йте:
  Сла -- ва Бо -- гу на -- ше -- му!
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
%      \transpose f d {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
    \midi {
      \tempo 4=90
    }
  }
  \markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "2."
        \column {
          "А Иосиф и Мария"
          "Рядом с Господом стоят."
          "И, любовью согревая,"
          "Нежно на Него глядят"
          "    Ярко звёздочка сияет,"
          "    Радость миру возвещает:"
          "    Здесь родился Божий Сын!"
        }
      }
      \vspace #3 % moves the column off the left margin;
      \line { \bold "4."
        \column {
          "Радостно звучит ангельский наш хор,"
          "Пойте вместе с нами все!"
          "Слава, слава в Вышних Богу —"
          "В Небесах и на Земле!"
          "    С ангелами воспевайте,"
          "    Песней Землю оглашайте:"
          "    Слава Богу нашему!"
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "3."
        \column {
          "В бедных яслях средь ягняток"
          "Ждёт нас Божий Сын, Христос."
          "Наше с Богом примиренье"
          "Он на Землю нам принёс."
          "    Следуйте за пастушками,"
          "    Поспешайте за волхвами,"
          "    Приходите ко Христу!"
        }
      }
      
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
  }
}



% То же самое, но под нотами слова только 1-го куплета
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
%      \transpose f d {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      \new Lyrics \lyricsto "soprano" { \lyricscorefour }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
    \midi {
      \tempo 4=90
    }
  }
}