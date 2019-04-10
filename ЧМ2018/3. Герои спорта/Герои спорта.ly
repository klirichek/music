\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Герои спорта"
  subtitle = "(перелож. О. Серебровой)"
  composer = "муз. А. Пахмутовой"
  poet = "сл. Н. Добронравова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
  urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}
global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
%abr = { \break }
con = { \cadenzaOn }
coff = { \cadenzaOff \bar "|" }
cbr = { \bar "" }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \tempo "Энергично"
  \dynamicUp
  R1*4
  \bar ".|:"
  \oneVoice a8^\markup\tiny{"Для 3-го куплета"} e r a16 b c2 |
  b8 a r4 r2 |
  g8. g16 fis8 g a4. g8 | \abr
  g8 f r4 r2 |
  \voiceOne d8. d16 f8 a d2 |
  <c a>8 <b a> r4 r2 |
  e,8. e16 gis8 a b2 | \abr
  b8 a r4 r2 |
  \bar "||" <c e>1^"а..." |
  q8^"люди" q r4 r2 |
  <b d>1^"а..." | \abr
  <a c>8^"теле" q r4 r2
 d,8. d16 f8 a d2 |
 <c a>8 <b a> r4 r2 |
 e,8 e r gis16 a b2 | \abr
 b8 a \oneVoice r4 r8 a^\markup\italic{"Пр. унисон"} b c |
 c4 b~ b8 g a b |
 b4 a2 b8 c | \abr
 c4 b8 a a4 g8 f |
 e2~ e4 g8. f16 |
 e2 \voiceOne b'4. d8 | \abr
 d4 c2 a8. b16 |
 c4 c8. c16 b4 a8. g16 |
 e2~ e8 r g8. f16 | \abr
 e2 b'4. d8 |
 d4 c2  c8. b16 |
 d4 c8. b16 a4 a8 gis |
 a8 r r4 r2 \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  s1*8
  d8. d16 f8 f <f a>2 |
  dis8 dis s4 s2 |
  e8. e16 e8 e <e gis>2 |
  <c e>8 q s4 s2
  a'8 e a b c2 |
  b8 a s4 s2 |
  g8. g16 fis8 g a4. g8 |
  g8 f s4 s2 |
  d8. d16 f8 f <f a>2 |
  dis8 dis s4 s2 |
  e8 e r8 e16 f <e gis>2 |
  <c e>8 q s4 s2 |
  s1*4
  e2 <e gis>4. q8 |
  <e a>4 q2 a8. g16 |
  <f a>4 q8. q16 <f g>4 f8. e16 |
  c2~ c8 r8 g'8. f16 |
  e2 <e gis>4. q8 |
  <f a>4 q2 c8. b16 |
  d4 c8. b16 a4 a8 gis |
  a8 r r4 r2
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 

}


bassvoice = \relative c' {
  \global
  \oneVoice
  \dynamicUp
  R1*4
  a8 e r a16 b c2 |
  b8 a r4 r2 |
  g8. g16 fis8 g a4. g8 |
  g8 f r4 r2 |
  d8. d16 f8 a f2 |
  fis8 fis r4 r2 |
  e8. e16 gis8 a b2 | 
  b8 a r4 r2 | \bar "||"
  R1*7
  r2 r8 a b c |
  c4 b4~ b8 g a b |
  b4 a2 b8 c |
  c4 b8 a a4 g8 f |
  e2~ e4 g8. f16 |
  e2 e4. e8 |
  a4 a2 a8. b16 |
  a4 a8. a16 b4 a8. g16 |
  g2~ g8 r g8. f16 |
  e2 e4. e8 |
  f4 f2 c'8. b16 |
  d4 c8. b16 a4 a8 gis |
  a r r4 r2
}

lyricsrefrain = \lyricmode {
Мы ве -- рим твё -- рдо в_ге -- ро -- ев спо -- рта, нам по -- бе -- да как во -- здух нуж -- на...
Мы хо -- тим всем ре -- ко -- рдам на  -- ши
зво -- нки -- е дать и -- ме -- на,
мы хо -- тим всем ре -- ко -- рдам на -- ши зво -- нки -- е дать и -- ме -- на!
}


skipverse = { \repeat unfold 14 \skip 1 }
lyricsopranoOne = \lyricmode {
  \skipverse
\set stanza = "1. " За -- ме -- рли во -- круг лю -- ди
све -- тя -- тся э -- кра -- ны те -- ле...
Верь -- те, что ре -- корд бу -- дет! Зна -- йте, мы близ -- ки к_це -- \set associatedVoice = "soprano"  ли!
\lyricsrefrain
}
lyricsopranoTwo = \lyricmode {
  \skipverse
  \set stanza = "2. " Су -- дьи бу -- дут к_нам стро -- ги
Но в_ко -- нце ко -- нцов по -- ве -- рьте,
ска -- жут нам, что мы_— бо -- ги,
ска -- жут: «Мо -- ло -- дцы, че -- рти!»
}

lyricsopranoThree = \lyricmode {
  \skipverse
\set stanza = "3. " На -- до по -- бе -- ждать че -- стно,
на -- до жить на све -- те я -- рко!
Сло -- жат и о нас пе -- сни,
бу -- дет не -- бе -- сам жа -- рко
}

lyricsoprano = \lyricmode {
\set stanza = "3. " Ше -- стсвуй на О -- лимп го -- рдо
К_со -- лне- -- чной стре -- мись на -- гра -- де.
Ра -- ди кра -- со -- ты спо -- рта, Ро -- ди -- ны сво -- ей
ра -- ди.
}

textOfSong = \markup {

    \fill-line {
      \column {
        \line {
          \column { 1. (солист)}
          \column \italic { 
            \line { Будет небесам жарко! }
            \line { Сложат о героях песни. }
            \line { В спорте надо жить ярко, }
            \line { Надо побеждать честно! }
          } 
        }
        \line { 
          \vspace #2
          \column \italic { (хор): } 
          \column {
            \line { Замерли вокруг люди, }
            \line { Светятся экраны теле... }
            \line { Верьте, что рекорд будет! }
            \line { Знайте: мы близки к цели! }
          }
          
        }
         \vspace #1
        \line \italic { Припев. }
        \vspace #2
      }
      \hspace #0
  
      \column {
        \line {
          \column { 2. (солист)}
          \column {\italic { 
            \line { Дерзкий путь наверх сложен, }
            \line { Лидерам сегодня трудно...}
            \line { Знаем: победить сможем, }
            \line { Если совершим чудо! }
          }
            \line { (хор): Судьи будут к нам строги... (и т.д.) }
          }
        }
        \vspace #1
        \line \italic { Припев. }
        \vspace #2
        \line {
          \column { 3. (хор)}
          \column { 
            \line { Шествуй на Олимп гордо }
            \line { К солнечной стремись награде.}
            \line { Ради красоты Спорта, }
            \line { Родины своей ради }
            \line { Надо побеждать честно... (и т.д.) }
          }
        }
        \vspace #1
        \line \italic { Припев. }
      }
    }
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
      \new Lyrics \lyricsto "soprano" \lyricsoprano
      
      \new Lyrics \lyricsto "alto" \lyricsopranoOne
      \new Lyrics \lyricsto "alto" { \lyricsopranoTwo }
      \new Lyrics \lyricsto "alto" \lyricsopranoThree


      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>

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
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
  \textOfSong
  \urllogo
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
      
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \midi {
      \tempo 2=50
    }
  }
}
