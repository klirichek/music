\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%каждый куплет с новой строки
%вообще без двухголосия
%20 без вольты, проигрыш.
%между 4 и 5 тоже проигрыш.
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Три танкиста"
  composer = "Музыка Данила и Дмитрия Покрасова"
  poet = "Слова Б. Ласкина"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key b \minor
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

choir = \markup\italic"Хор"
solo = \markup\italic"Solo"
proigrish = \markup\italic"(проигрыш)"

br = { \bar "" \break }

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Умеренно"
  \secondbar
  
  \partial 4
  d8^\solo e |
  fis4. fis8 g e b' g |
  fis4 fis~ fis8 r b8. cis16 |
  d4. b8 cis8 cis b ais |
  b2~ b8 \breathe r \br d b |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \br d8^\choir b |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \bar "" \break d,8.^\choir e16 |
  fis4. fis8 g e b' g |
  fis4 fis~ fis8 r b8. cis16 |
  d4. b8 cis8 cis b ais |
  b2~ b8 r \breathe \br d b8 |
    a4 fis b8 b a b |
    g4 e~ e8 r d e |
    fis4. fis8 cis'8. cis16 b8 ais |
 
  b2~ b8 r^\proigrish \bar "||" \break d,8^\solo e
  fis4. fis8 g e b' g |
  fis4 fis~ fis8 r b8 cis8 |
  d4. b8 cis8. cis16 b8 ais |
  b2~ b8 \breathe \br d4-> b8 |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \br d8^\choir b |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \bar "" \break d,^\markup\italic"Хор (тихо!)" e |
  fis4. fis8 g e b' g |
  fis4 fis~ fis8 r b cis |
  d4. b8 cis cis b ais |
  b2~ b8 r \br d^\markup\italic"(громче)" b |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais b2~ b8 r^\proigrish \bar "||" \pageBreak 
  \tempo "Решительно" d,8 e |
  fis4 fis g8 e b' g |
  fis4 fis r b8 cis |
  d4. b8 cis8. cis16 b8 ais |
  b2~ b8 r \br d b |
  \repeat volta 2 {
    a4 fis b8 b a b |
    g4 e~ e8 r d e |
    fis4. fis8 cis'8. cis16 b8 ais | }
  \alternative { { b2~ b8 r d8 b } {b2~ b8 r \bar "" \break d,^\solo e} }
  fis4. fis8 g e b'8. g16 |
  fis4 fis~ fis8 r b8 cis |
  d4. b8 cis cis b ais |
  b2~ b8 \br d4-> b8 |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \br d b |
  a4 fis b8 b a b |
  g4 e~ e8 r d e |
  fis4. fis8 cis'8. cis16 b8 ais |
  b2~ b8 r \bar "|."
  
  
  
  
}


lyricscore = \lyricmode {
  \set stanza = "1."
  На гра -- ни -- це ту -- чи хо -- дя хму -- ро,
  край су -- ро -- вый ти -- ши -- ной объ -- ят.
  У вы -- со -- ких бе -- ре -- гов А -- му -- ра
  ча -- со -- вы -- е Ро -- ди -- ны сто -- ят.
  У вы -- со -- ких бе -- ре -- гов А -- му -- ра
  ча -- со -- вы -- е Ро -- ди -- ны сто -- ят.
  
  \set stanza = "2."
  Там вра -- гу за -- слон по -- став -- лен проч -- ный,
  там сто -- ит, от -- ва -- жен и си -- лён, у гра -- 
  ниц зем -- ли даль -- не -- во -- сточ -- ной
  бро -- не -- вой у -- дар -- ный ба -- та -- льон.
  
  \set stanza = "3."
  Там жи -- вут_― и пес -- ня в_том по -- ру -- ка_―
  не -- ру -- ши -- мой, креп -- ко -- ю семь -- ёй
  три тан -- ки -- ста_― три ве -- сё -- лых дру -- га_―
  э -- ки -- паж ма -- ши -- ны бо -- е -- вой.
  Три тан -- ки -- ста_― три ве -- сё -- лых дру -- га_―
  э -- ки -- паж ма -- ши -- ны бо -- е -- вой.
  
  \set stanza = "4."
  На тра -- ву лег -- ла ро -- са гу -- ста -- я,
  по -- лег -- ли ту -- ма -- ны ши -- ро -- ки.
  В_э -- ту ночь ре -- ши -- ли вра -- жьи ста -- и
  пе -- рей -- ти гра -- ни -- цу у ре -- ки.
  
  \set stanza = "5."
  Но раз -- вед -- ка до -- ло -- жи -- ла точ -- но_―
  и по -- шёл, ко -- ман -- до -- ю взме -- тён,
  по род -- \repeat volta 2 { ной зем -- ле даль -- не -- во -- сточ -- ной
  бро -- не -- вой у -- дар -- ный ба -- та -- }
  \alternative { { льон. По род -- } { льон.
  
  \set stanza = "6."
  И до -- } } би -- ли_― пес -- ня в_том по -- ру -- ка_―
  всех вра -- гов в_а -- та -- ке ог -- не -- вой
  три тан -- ки -- ста_― три ве -- сё -- лых дру -- га_―
  э -- ки -- паж ма -- ши -- ны бо -- е -- вой.
  Три тан -- ки -- ста_― три ве -- сё -- лых дру -- га_―
  э -- ки -- паж ма -- ши -- ны бо -- е -- вой.
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
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
        \accidentalStyle modern-voice-cautionary
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
      >> 
      
      \new Lyrics = "sopranos"
      
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
