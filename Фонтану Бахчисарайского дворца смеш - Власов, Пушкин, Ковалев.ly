\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Фонтану Бахчисарайского дворца"
  composer = "музыка А.Власова"
  arranger = "переложение Г.Ковалева"
  poet = "Слова А.С.Пушкина"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key des \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \dynamicUp
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

sopvoiceI = \relative c'' {
  \global
  \dynamicUp
  \secondbar  
  \tempo "Moderato"
  R1 |
  r2 r4 r8 as\p | 
  \repeat volta 2 {
    as4. as8 bes4. bes8 |
    des4. c8 as4. as8 |
    ges8 ges ges as bes4. ges8 |
    ges2 f4 r |
    r8 es es f ges as bes ges |
    es2 r8 es es f |
    ges ges as bes bes2\> |
    as2\! r8 as8 as as |
    ges8 ges c bes as2 |
    r8 as as as g g as bes |
    << {c2 c } {s4 s\< s s\!} >>
    f4\f es8 des c bes c des |
    f2 bes, |
    r8 es des c bes as c bes 
  \mark \markup { \musicglyph #"scripts.coda" }
  as2\> r8\! \tempo "più mosso"  as as as |
    g4. g8 c4. bes8 |
    bes4 as r8 as\cresc as bes |
    c c bes as des 2\f |
    r8 d cis b bes bes \dim as? bes |
    \tempo "meno mosso" ces4 as r8 as\p as as |
    ces4 ces r bes?8^\markup\bold"rit." ces
    as2 r2 \tempo "a tempo" |
    R1*3 |
    r2 r4 r8 as\pp }
    \mark \markup { \musicglyph #"scripts.coda" } 
  
  \set Score.repeatCommands = #'((volta "для окончания"))
    as2~ as4~\<^"allargando" as8\! r
    
    \set Score.repeatCommands = #'((volta #f))

<< { as'4\ff ges8 f es des c bes |
  bes2^\markup\italic"dim." as8 } 
     \new ChoirStaff \with { 
       \remove "Time_signature_engraver"
       alignBelowContext = #"downstaff" } <<
       
    
    \new Staff \with {
      \remove "Time_signature_engraver"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      %firstClef = ##f
    }
    { \oneVoice \global \clef bass es,4\ff es8 es ges ges ges ges g2 as8 } 
    \new Staff \with {
      \remove "Time_signature_engraver"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      %firstClef = ##f
    }
    << \new Voice { \voiceOne \global \dynamicUp ges''4\ff f8 es des c bes c bes2 as8} 
      \new Voice { \voiceTwo \global bes4 ges8 ges es es es es e2 f8 } >>
  >> >> 
  as c bes |
  beses4. beses8 as4.\< as8\! |
  as2~\> as8\! r r4 |
  R1*9 \bar "|."
}

sopvoiceII = \relative c' {
  \global
  \dynamicUp
  
  \secondbar  
  R1 |
  r2 r4 r8 f |
  \repeat volta 2 {
    f4. f8 f4. f8 |
    e4. e8 f4. f8 |
    des des c c c4. c8 |
    des2 des4 r |
    r8 bes bes bes bes es ges es |
    bes2 r8 bes bes bes |
    bes bes c c des2 |
    des2 r8 f f f |
    e e e e f2 |
    r8 f f f e e e g! |
    as2 ges? |
    f4 f8 f f des f as |
    g2 g4 \breathe g |
    ges!4. ges8 ges ges e e 
  
  f4. f8 f f f f |
      e4. e8 e4. e8 |
      f4 f r8 f f f |
      ges? ges ges ges fes4 \breathe g |
      fis4. fis8 f4. d8 |
      es4 ces r8 es es es |
      des4 des r des8 des |
      d2 r |
      R1*3
      r2 r4 r8 f
  }
  f4. f8 f4~ f8 r |

bes4 bes8 bes bes bes es, es |
e2 f8 f f f  |
ges4. des8 c4. ges'8 |
  f2~ f8 r8 r4 |
  R1*9
}


bassvoice = \relative c {
  \global
  \dynamicUp  
  R1 |
  r2 r4 r8 des\p |
  \repeat volta 2 {
    des4. as'8 g4. g8 |
    g4. g8 as4. as8 |
    bes4. as8 ges4. bes8 |
    bes2 bes4 \breathe f |
    ges4. f8 es4 des |
    c4 es ges4. f8 |
    es4. es8 f f\> f f\! |
    f4 f \breathe as2 |
    bes4 g as8 as as bes |
    c4. c8 c,4 c |
    f4.\< f8 es4 es |
    des\f as'8 as bes bes bes bes |
    es,2 es4 \breathe es |
    as4. as8 as4 as |
    des,8\> des des des\! des2~ |
    des4 des c c |
    f f \breathe es2\cresc |
    as8 as as as beses4\f \breathe a4 |
    d,4. d8 << d4. {s8 s8\dim s8} >> f8 |
    as?4 as ges?2\p |
    f2 e |
    f r |
    R1*3 |
    r2 r4 r8 des?\pp |
  }
  des8 des des des d4~\< d8\! r |
  es4\ff es8 ges ges ges ges ges |
  g2 as8 as as as |
  es4. es8 as4 as |
  des,2~ des8 r r4 |
  R1*9
}


lyricscore = \lyricmode {
  Фон --  \repeat volta 2 { тан люб -- ви, фон -- тан жи -- вой! При --
  нёс я в_дар те -- бе две ро -- зы.
  Люб -- лю не -- молч -- ный го -- вор твой
  и по -- э -- ти -- чес -- ки -- е слё -- зы.
  Тво -- я  се -- ре -- бря -- на -- я пыль
  ме -- ня кро -- пит ро -- со -- ю хлад -- ной.
  Ах, лей -- ся, лей -- ся ключ от -- рад -- ный!
  Жур -- чи, жур -- чи сво -- ю мне 
  быль, мне быль…
  Фон -- тан люб -- ви, фон -- тан пе -- чаль -- ный!
  И я твой мра -- мор во -- про -- шал: хва -- лу стра -- не я 
  даль -- ной, но о Ма -- ри -- и ты мол -- чал…
  Фон_- } /_быль, мне быль… 
  Ах, лей -- ся, лей -- ся, ключ от -- рад -- ный! Жур -- чи, жур --
  чи сво -- ю мне быль…
}

lyricscoreUp = \lyricmode {
  \skip 1 \repeat volta 2 { 
    \repeat unfold 59 \skip 1
    Жур -- чи,
    \repeat unfold 23 \skip 1 
    Хва -- лу стра -- не  про -- чёл я даль -- ной,
  \repeat unfold 9 \skip 1 } 
}

lyricscoreDown = \lyricmode {
  \skip 1
  \repeat volta 2 { 
    \repeat unfold 7 \skip 1
  При -- нёс те -- бе две ро -- зы. Люб -- 
  лю не -- молч -- ный го -- вор твой и
  по -- э -- ти -- че -- ски -- е 
  слё -- зы. Тво -- я се -- ре -- бря -- на -- я
  пыль кро -- пит ро -- со -- ю хлад -- ной:
  \repeat unfold 9 \skip 1
  Жур -- чи, жур -- чи мне быль, сво -- ю мне быль…
  Фон -- тан пе -- чаль -- ный! И
  \repeat unfold 12 \skip 1
  но ты мол -- чал… \skip 1 } 
  быль, сво -- ю мне быль…
  
}



\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Lyrics = "sopranosI"
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "sopranoI" { \voiceOne \sopvoiceI }
        \new Voice  = "sopranoII" { \voiceTwo \sopvoiceII }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Басы"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "alto" { \clef bass \oneVoice \bassvoice }
      >>
      \new Lyrics = "altos"

      \context Lyrics = "sopranosI" {
        \lyricsto "sopranoI" {
          \lyricscoreUp
        }
      }
      
      \context Lyrics = "sopranos" {
        \lyricsto "sopranoII" {
          \lyricscore
        }
      }

      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \lyricscoreDown
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
        \new Voice = "soprano" { \voiceOne \sopvoiceI }
        \new Voice  = "alto" { \voiceTwo \sopvoiceII }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \bassvoice }
      >>
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
