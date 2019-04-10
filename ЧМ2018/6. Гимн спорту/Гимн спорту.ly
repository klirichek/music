\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Гимн спорту"
  subtitle = "(перелож. О. Серебровой)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 4/4
%  \numericTimeSignature
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
abr = { \break }
pbr = { \pageBreak }
con = { \cadenzaOn }
coff = { \cadenzaOff \bar "|" }
cbr = { \bar "" }

% uncommend next line when finished
abr = {}
%pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


sopvoice = \relative c' {
  \global
  \tempo "Бодро"
  R1*4
  \oneVoice
  c4^\markup\italic"соло" f e8 c a f |
  d' c bes a g2 | \abr
  c4 f g8 a g f |
  g f e f fis2 |
  d4 g a8 bes bes bes | \abr
  a g fis g d4 d8 e |
  f f f f f d e f |
  g2. r4 | \abr
  \repeat volta 3 {
  c,4 f e8 c a f |
  d' c bes a g2 |
  c4 f g8 a g f | \abr
  g f e f fis2 |
  d8 g a bes d bes a g |
  f4 f8 e~ e4 r | \abr
  d8 g a bes d bes a g |
  f4 f8 g~ g4 r4 \bar "||" |
  \voiceOne <a c>4^\markup\italic"S, A" q8. q16 q8 q q q | \abr
  \tuplet 3/2 { <a c>4 <g bes> a } \tuplet 3/2 { g a bes } |
  <a c>8. q16 q8 q \tuplet 3/2 { <a c>4 <g bes> <f a> } |
  f4 r r a8^\markup\italic"SII" g | \abr 
  f4 a8 g f4 a8 g |
  f2 r4 d8 e |
  f4 f8 f f4 e8 f
  <e g>2 r4 r8 c |
  c a' a g~ g f a4 |
  a8 bes c g~ g4 r8 c | \abr
  c8. d16 e8 f~ f a,4 g8 |
  f2 r4 r8 c |
  c a' a g~ g f a4 | \abr
  a8 bes c g~ g4 r8 c |
  c8. d16 e8 f~ f a,4 g8 |
  } \alternative { {f2. r4 } {f2 r4 cis} } \bar "||"
  \key fis \major |
  \tempo "Широко" \oneVoice cis8 ais' ais gis~ gis fis ais4 |
  ais8 b cis gis~ gis4 r8 \voiceOne cis | \abr
  cis8. dis16 eis8 fis8~ fis ais,4 gis8 |
  fis2 \oneVoice r4 r8 cis8 |
  cis ais' ais gis~ gis fis ais4 | \abr
  ais8 b cis gis~ gis4 r8 \voiceOne cis |
  cis8. dis16 eis8 fis~ fis ais,4 gis8 |
  fis2 \voiceTwo  r4 r |
  r2 r4 \voiceOne cis' |
  \tuplet 3/2 { b2 dis eis } |
  <cis fis>1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  R1*4
  s1*8
  \repeat volta 3 {
    s1*8
    f4 f8. f16 e8 e e e
    \tuplet 3/2 { d4 d f } \tuplet 3/2 { e f g } |
    f8. f16 f8 f \tuplet 3/2 { e4 d c } |
    d4 r r s4 |
    <d d'>2(_\markup"А.." <des des'> |
    <c c'> <b b'>4) d8 c |
    <bes d>4 q8 q q4 q8 q |
    c2 r4 r8 c^\markup\italic"unis." |
    s1 |
    s2.. f8 |
    f8. d16 e8 f~ f c4 c8 |
    d2 r4 r8 c^\markup\italic"unis." |
    s1 |
    s2 s4 s8 f8 |
    f8. d16 e8 f~ f c4 c8    
  } \alternative {
    { d2. r4 }
    {d2 r4 cis4}
  }
  s1 |
  s2.. fis8 |
  fis8. dis16 eis8 fis~ fis cis4 cis8 |
  dis2 s2 |
  s1 |
  s2.. fis8 |
  fis8. dis16 eis8 fis~ fis cis4 cis8 |
  dis2 \voiceOne r8 \override NoteHead.style = #'cross dis''8 \tuplet 3/2 {dis dis dis }
  dis4 \revert NoteHead.style \voiceTwo
  s2 <eis,, gis>4 |
  \tuplet 3/2 { <dis fis>2 <fis b> <gis b> } |
  <fis ais>1
  

}


bassvoice = \relative c' {
  \global
  R1*4
  s1*8
  \repeat volta 3 {
    R1*4
    d8 g a bes d bes a g |
    f4 f8 e~ e4 r
    d8 g a bes d bes a g |
    f4 f8 g~ g4 r |
    \clef bass c,4^\markup\italic"B" c8. c16 a8 a a a |
    \tuplet 3/2 { g4 g g } \tuplet 3/2 { bes a bes } |
    c8. c16 c8 c \tuplet 3/2 { a4 bes a } |
    bes4 r r a8 g |
    f4 a8 g f4 a8 g |
    f2 r4 d8 e |
    f4 f8 f f4 e8 f |
    g2 r4 r8 c, |
    c a' a g~ g f a4 |
    a8 bes c g~ g4 r8 a |
    a8. bes16 c8 a~ a a4 a8 |
    bes2 r4 r8 c, |
    c a' a g~ g f a4 |
    a8 bes c g~ g4 r8 a |
    a8. bes16 c8 a~ a a4 a8 
  } \alternative {
    { bes2. r4 }
    { bes2 r4 cis,4 }  
  } \bar "||" \key fis \major
  cis8 ais' ais gis~ gis fis ais4 |
  ais8 b cis gis~ gis4 r8 ais |
  ais8. b16 cis8 ais~ ais ais4 ais8 |
  b2 r4 r8 cis, |
  cis ais' ais gis~ gis fis ais4 |
  ais8 b cis gis~ gis4 r8 ais |
  ais8. b16 cis8 ais~ ais ais4 ais8 |
  b2 r4 r |
  r2 r4 <cis cis,>4 |
  \tuplet 3/2 {q2 q q} |
  <cis fis,>1\fermata

}

lyricscommon = \lyricmode {
  \set stanza = "1. " На -- ша Ро -- ди -- на спо -- рти -- вна -- я стра -- на,
  С_ка -- ждым го -- дом мы ста -- но -- ви -- мся си -- льней.
  На -- ша Ро -- ди -- на спо -- рти -- вна -- я стра -- на
  от Ка -- мча -- тки и до се -- ве -- рных мо -- рей.
   \repeat volta 3 {
  Не -- ле -- гка по -- рой спо -- рти -- вна -- я су -- дьба,
  тру -- ден путь от по -- ра -- же -- ний до по -- бед.
  Бы -- ли в_дет -- стве чем -- пи -- о -- на -- ми дво -- ра
  чем -- пи -- о -- ны ми -- ра и о -- ли -- мпи -- ад.
  Над ста -- ди -- о -- ном гимн Рос -- си -- и зву -- чит.
  Флаг Роc -- сий -- ский по -- дни -- ма -- е -- тся вверх,
  \set stanza = "1. 2." Бит ре -- корд, взят ба -- рьер, счёт о -- ткрыт.
  Э -- то наш, э -- то об -- щий у -- спех.
  Мы ве -- рим в_Рос -- си -- ю, Рос -- си -- я, впе -- рёд,
  впе -- рёд, и по -- бе -- да при -- дёт.
  Мы ве -- рим в_Рос -- си -- ю, мир, дру -- жбу и спорт, 
  впе -- рёд, и по -- бе -- да при -- }
  \alternative { {дёт. } {дёт. Мы } }
  ве -- рим в_Рос -- си -- ю, Рос -- си -- я впе -- рёд, впе -- рёд, и по -- бе -- да при -- дёт,
  Мы ве -- рим в_Рос -- си -- ю, мир,
  дру -- жбу и спорт, впе -- рёд, и по -- бе -- да при -- дёт!
  Рос -- си -- я, впе -- рёд!
}


lyricsthree = \lyricmode {
  \repeat unfold 109 \skip 1
  \set stanza = "3. " Точ -- ный пас, шай -- ба в_цель, гол за -- бит. Мы по -- бе -- ду ра -- зде -- лим на всех.
}

lyricscite = \lyricmode {
  \repeat unfold 67 \skip 1
  Рос -- си -- я впе -- рёд!
}

lyricsalto = \lyricmode {
  \set stanza = "(1.) "
    Бы -- ли в_дет -- стве чем -- пи -- о -- на -- ми дво -- ра
  чем -- пи -- о -- ны ми -- ра и о -- ли -- мпи -- ад.
}

textOfSong = \markup {
    \line {
          \right-column { 2. }
          \column { 
            \line  { В тренажёрный зал, в бассейн и на каток. }
            \line  { Ходят взрослые и ходит детвора. }
            \line { Выше прыгнем, дальше сделаем бросок. }
            \line { А футбол, футбол — народная игра. }
            \line \right-align {  }
            \line \italic \bold {Припев: }
              \line { Над стадионом гимн России звучит. }
              \line { Флаг Российский поднимается вверх, }
              \line { Бит рекорд, взят барьер, счёт открыт. }
              \line { Это наш, это общий успех. }
              \line { Мы верим в Россию, Россия, вперёд, }
              \line { вперёд, и победа придёт. }
              \line { Мы верим в Россию, мир, дружбу и спорт, }
              \line { вперёд, и победа придёт. }
          }
          \right-column { 3. }
          \column {
                    
            \line { Ветеранам спорта слава и почёт. }
            \line { Их победы не забудем никогда }
            \line { Собирает нас в одну команду спорт }
            \line { Мы за наших, за победу навсегда! }
            \line \right-align \italic {  }
            \line \italic \bold {Припев: }
              \line { Над стадионом гимн России звучит. }
              \line { Флаг Российский поднимается вверх, }
              \line \bold { Точный пас, шайба в цель, гол забит. }
              \line \bold { Мы победу разделим на всех. }
              \line { Мы верим в Россию, Россия, вперёд, }
              \line { вперёд, и победа придёт. }
              \line { Мы верим в Россию, мир, дружбу и спорт, }
              \line { вперёд, и победа придёт. }
    }
    }
  }
  
  urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    

    <<
 %     \new ChordNames %\with { chordChanges=##t }
 %     {
 %       \harmonies
 %     }
      
      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscite }
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
      \new Lyrics \lyricsto "soprano" { \lyricsthree }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsalto }
      
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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
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
%            \new ChordNames %\with { chordChanges=##t }
%      {
%        \harmonies
%      }
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
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
