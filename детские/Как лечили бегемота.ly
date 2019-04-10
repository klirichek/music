\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Как лечили бегемота"
  subtitle = " "
  composer = "М. Матвеев"
  poet = "Слова Е. Руженцева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \minor
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
      \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
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
  \secondbar  
  R2*4
  r4 r8 g^\markup"Все" |
%  \repeat volta 2   {
    c8. c16 b8 g |
    c4 g8 g |
    f f es es |
    d4 r8 g |
    c8. c16 b8 d |
    c4 g8 a |
    bes bes a a |
    g4 r8 b^\markup"Двое"
%  }
  c8 c r bes |
  c c r g |
  as8. as16 bes8 bes |
  g r r bes |
  c c d d |
  es es c c |
  as4 f |
  bes 
  
  r8 g16 as |
  bes8 es r es |
  d16 es d c d8 f,16^\markup"Все" g |
  as8 d r c |
  bes16 c bes a bes8 g16 as  |
  bes8 es r es |
  c16 d c b c8 d16 c |
  bes8 es r d |
  es r r4
  
  
  
 \bar "||"
}

altvoice = \relative c'' {
  \global
  \dynamicDown  
  R2*4
  r4 r8 g |
%  \repeat volta 2 {
    es8. es16 g8 g |
    g4 g8 g |
    f f es es |
    d4 r8 g |
    g8. g16 g8 f |
    es4 g8 a |
    g g fis fis |
    g4 r8 g
%  }
  as8 as r <bes \parenthesize f>|
  es, es r es |
  c8. c16 d8 d |
  es r r g |
  as as f f |
  g g es es |
  c4 f |
  bes,
  
  r8 g'16 as |
  bes8 r g r |
  as4 r8 f16 g |
  as8 r f r |
  g4 r8 g16 as |
  bes8 r g r |
  as4 r8 d16 c |
  bes4 as |
  g8 r r4
  
  
  \bar "||"
}



lyricscore = \lyricmode {
  \set stanza = "1. " Ле -- чи -- ли бе -- ге -- мо -- та два о -- пы -- тных вра -- ча.
  О -- ни се -- бе на по -- мощь по -- зва -- ли скри -- па -- ча.
  Бес -- силь -- ны таб -- лет -- ки, мик -- сту -- ра не ну -- жна.
  Ко -- не -- чно, толь -- ко му -- зы -- ка по -- мочь дол -- жна.
  
  Па -- ра -- пам пам пам,
  па -- ра -- па -- ра -- пам,
  па -- ра -- пам, пам, пам
  па -- ра -- па -- ра -- пам,
  па -- ра -- пам, пам, пам
  па -- ра -- па -- ра -- пам,
  па -- ра пам, пам, пам, пам.
}

lyricscorea = \lyricmode {
  \set stanza = "1. " Ле -- чи -- ли бе -- ге -- мо -- та два о -- пы -- тных вра -- ча.
  О -- ни се -- бе на по -- мощь по -- зва -- ли скри -- па -- ча.
  Бес -- силь -- ны таб -- лет -- ки, мик -- сту -- ра не ну -- жна.
  Ко -- не -- чно, толь -- ко му -- зы -- ка по -- мочь дол -- жна.
  
  Па -- ра -- пам пам пам,
  па -- ра -- пам, пам, пам.
  Па -- ра -- пам, пам, пам,
  Па -- ра -- пам, пам, пам.
  
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
 %     \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
     \new Staff = "downlstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
      } <<
        \new Voice  = "alto" { \oneVoice \altvoice }
      >> 
      
            \new Lyrics \lyricsto "alto" { \lyricscorea }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
    >>
 %     }  % transposeµ
    \layout { 
      \context {
        \Score
%         \override BarNumber.break-visibility = #end-of-line-invisible
%          \override BarNumber.self-alignment-X = #LEFT
%          \override BarNumber.stencil  = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
%          barNumberVisibility = #all-bar-numbers-visible
%          barNumberVisibility = #(every-nth-bar-number-visible 2)
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
  
       \markup {
       \hspace #2
       \column { 2. }
       \column { \line { Скрипач недолго думал, }
       \line { Он стал водить смычком, }
       \line { И тысячами звуков }
       \line { Наполнил водоём. } }
          
       \hspace #2
       \column { 3. }
       \column { \line { Волнуется он всё же: }
       \line { А вдруг не повезёт? }
       \line { Ужасно толстокожий }
       \line { Попался бегемот. } }
          
       \hspace #2
       \column { 4. }
       \column { \line { Скрипач уж тяжко дышит, }
       \line { Отчаяться готов. }
       \line { И вдруг он ясно слышит: }
       \line { «Спасибо, я здоров!» } }
      }
      

  
}

\bookpart {
  \score {
    \unfoldRepeats
 %     \transpose es f {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Х"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      
    >>
%      }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
