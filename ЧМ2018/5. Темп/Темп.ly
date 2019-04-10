\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)
urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}
\header {
  title = "Темп"
  subtitle = "(перелож. О. Серебровой)"
  composer = "А. Пахмутова"
  poet = "Н. Добронравов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key bes \minor
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


solovoice = \relative c' {
 \global
 \tempo "Энергично"
  R1*4
  \repeat volta 3 {
    R1*4
    des2~ des8 des c bes |
    c2~ c8 c des es |
    des4 r r2 | \abr
    R1 |
    des2~ des8 des c bes |
    c2~ c8 c des es |
    des4 r r2 | \abr
    R1 |
    d2~ d8 d es f |
    f2~ f8 f ges as |
    as4 r r2 | \abr
    R1 |
    ges2~ ges8 ges f es |
    es2~ es8 es des c |
    c4 r r2 | \abr
    R1 |
    des2~ des8 des c bes |
    c2~ c8 c des es |
    des4 r r2 | \abr
    R1 |
    des2~ des8 des c bes |
    c2~ c8 c des es |
    f4 r r2 | \abr
    R1 |
    ges8 as bes4~ bes8 r r4 |
    r2 r4 as8 ges |
    f es des es f4 r | \abr
    r2 r4 ges8 f |
    es4 des c des |
    es r r f8 es |
  }
  \alternative {
    { des8 c bes4 r2 |
      R1*4 }
    {des8 c bes4 r2}
  }
  R1*3
  \time 2/4 R2 | \abr
  \time 4/4 
 
}

sopvoice = \relative c'' {
  \global
  R1*4
  \repeat volta 3 {
    R1*6
    r4   \parenthesize   <\footnote #'(1 . 0.1) "Удвоение октавное — для 3-го куплета." des \footnote #'(1 . 0.1) \markup\column { "2-й куплет хор поёт 2 первых фразы до слов «Жизнь, ты всё сложней» в унисон," "затем как в 1-м куплете."} f>2 
    \parenthesize <es g>4  |
    \parenthesize <f as>2 \parenthesize <es g>4 r |
    R1*2 |
    r4 \parenthesize <des f>2 \parenthesize <es g>4 |
    \parenthesize <f as>2 \parenthesize <es g>4 r |
    R1
    ces2~ <ces~ as~> |
    <ces as des>1~ |
    q2 r2 |
    r es2~ |
    es1 |
    r4 f,2 ges4~ |
    ges4 a c es |
    <bes des>1( |
    <bes es> |
    <bes des>4) r r2 |
    R1 |
    <bes des>( |
    <bes es>) |
    <d f>~ |
    q |
    ges,8 as bes4~ bes8 r r4 |
    r2 r4 as8 ges |
    f es des es f4 r |
    r2 r4 ges8 f |
    es4 des c des |
    es r r f8 es 
  }
  \alternative 
  {
    { des8 c bes4 r2 R1*4 }
    {des8 c bes4 r2}
  }
  R1*3
  \time 2/4 R2 |
  \time 4/4 bes1
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 bes,1 |
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 bes1 | \abr
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 R1 \bar "||"
}


altvoice = \relative c' {
  \global
  R1*4
  \repeat volta 3 {
    R1*6
    r4 <des f>2-> <es g>4->
    <f as>2-> <es g>4-> r 
    R1*2 |
    r4 <des f>2-> <es g>4-> |
    <f as>2-> <es g>4-> r |
    d2~ <d f>~ |
    q1 ~ |
    q~ |
    q2 r |
    r <ges bes>2~ |
    q1 |
    r4 f2 ges4~ |
    ges a c, es |
    f1(
    ges |
    f4) r r2 |
    R1 |
    f1( |
    ges) |
    <as ces>1~ |
    q |
    s1*6
  }
  \alternative {
    {s1*5}
    {s1}
  }
  R1*3
    \time 2/4 R2 |
  \time 4/4 bes,1
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 bes,1 |
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 bes,1 | \abr
  c |
  des2 es |
  fes ges |
  \time 2/4 as8 r bes r |
  \time 4/4 R1 \bar "||"
  

}


bassvoice = \relative c {
  \global
  R1*4
  \repeat volta 3 {
    R1*12
    d1~ |
    d~ |
    d~ |
    d2 r |
    r es~ |
    es c |
    r4 f2 ges4~ |
    ges a c a |
    bes1~ |
    bes~ |
    bes4 r r2 |
    R1 |
    bes1~ |
    bes |
    bes~ |
    bes |
    ges8 as bes4~ bes8 r r4 |
    r2 r4 as8 ges |
    f es des es f4 r |
    r2 r4 ges8 f |
    es4 des c des |
    es r r f8 es 
  }
  \alternative
  {
    {
      des8 c bes4 r2
      R1*4
    }
    {des8 c bes4 r2}
  }
 R1*3
 \time 2/4 R2 |
 \time 4/4 R1*4 |
 \time 2/4 R2 |
 \time 4/4 bes1 |
 c |
 des2 es |
 fes ges |
 \time 2/4 as8 r bes r |
 \time 4/4 bes,1 |
 c |
 des2 es |
 fes ges |
 \time 2/4 as8 r bes r |
 \time 4/4 R1
}

lyricscommon = \lyricmode {
  а, а, а, а
  а, а, а, а.
}


lyricssolo = \lyricmode {
  
  \set stanza = "1. " Старт, ры -- вок и фи -- ниш зо -- ло -- той.
  Ты у -- пал за фи -- ниш -- ной чер -- той…
  Ты на це -- лый миг бы -- стре -- е всех.
  Мир, за -- стыв, гля -- дит на твой у -- спех...
  Мир, за -- стыв, гля -- дит на твой у -- спех
  Ты на це -- лый миг бы -- стре -- е всех,
  Всё бы -- стрей мчи -- тся вре -- мя всё бы -- стрей,
  вре -- мя стрес -- сов и стра -- стей, мчи -- тся 
  
  всё бы -- стрей.
  всё бы -- стрей.
     
}

textOfSong = \markup {
    \line {
          \right-column { 2. }
          \column { 
            \line \bold { Темп моей страны, моей земли. }
            \line \bold { Ждать мы ни секунды не могли… }
            \line { Жизнь, ты всё сложней, ты всё быстрей. }
            \line { Темп — наш современный чародей. }
            \line { Темп — наш современный чародей. }
            \line { Жизнь, ты всё сложней, ты всё быстрей… }
            \line \right-align \italic {  }
            \line { \column \italic {Припев: } \column {
              \line { Всё быстрей… }
              \line { Мчится время всё быстрей }
              \line { Время стрессов и страстей }
              \line { Мчится всё быстрей. }
            } }
          }
          \right-column { 3. }
          \column {
                    
            \line { След зари, бегущей по волнам. }
            \line { Свет любви всё ярче светит нам… }
            \line { Верь своей невспыхнувшей звезде! }
            \line { Ритм аккомпанирует мечте. }
            \line { Ритм аккомпанирует мечте. }
            \line { Верь своей невспыхнувшей звезде! }
                        \line \right-align \italic { Припев. }

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
    

    <<
 %     \new ChordNames %\with { chordChanges=##t }
 %     {
 %       \harmonies
 %     }

      \new Staff = "upstaff" \with {
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solo" { \oneVoice \solovoice }
      >> 
     
           \new Lyrics \lyricsto "solo" { \lyricssolo }
  %         \new Lyrics \lyricsto "solo" { \lyricssolosnd }

      
      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef "bass" \oneVoice \bassvoice }
      >>
      
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
        \new Voice = "solo" { \oneVoice \solovoice }
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
