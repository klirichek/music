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
  title = "Вокализ «Поклонники»"
  subtitle = "(перелож. О. Серебровой)"
  composer = "Э. Артемьев"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \minor
  \time 4/4
  \numericTimeSignature
  \autoBeamOn
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
pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


solovoice = \relative c' {
  \set Score.markFormatter = #format-mark-circle-numbers
  \global
  \dynamicUp
  R1*7 |
  r2 r4 f16 g as g |
  \mark \default
  as2.~ as8 g8 |
  bes2.~ bes8 g | \abr
  c,1~ |
  c2. f16 g as g |
  as2.~ as8 g |
  bes2.~ bes8 g | \abr
  
  g as4.~ as2 |
  r2 r4 es' |
  \mark \default des,2. c'4 |
  des,2. c'8 bes | \abr
  bes,2. c4 |
  c'2. bes8 as |
  bes2~ \tuplet 3/2 { bes4 as g } |
  \tuplet 3/2 {g2 e2. des4 } | \abr
  c1~ |
  c2 r4 es' |
  \mark \default des,2. c'4 |
  des,2. c'8 bes | \abr \pbr
  
  bes2. as4 |
  c2. bes8 as |
  bes2 as4 g |
  g e2 f4 | \abr
  f1 |
  r2 r4 f16 g as g |
  \mark \default as2~ as4. g8 |
  bes2~ bes8 g bes g | \abr
  
  c,2~ c |
  \time 2/4 r4 f16 g as g |
  \time 4/4 as2.~ as8 g |
  bes2.~ bes8 g | \abr
  g as4.~ as2 |
  r2 r4 es'4 |
  \mark \default des,2. c'4 |
  des,2. c'8 bes | \abr \pbr
  
  bes2. as4 |
  c2. bes8 as |
  bes2~ \tuplet 3/2 { bes4 as g} |
  \tuplet 3/2 { g2 e2. des4 } \abr
  
  c1 | \mark \default % 6
  R1 |
  r4 as'2.~ |
  as4 bes g2~ | \abr
  
  g8 r es4 es'2~ |
  es8 r as,4 f'2~ |
  f1~ |
   f4 e2. | \bar "||" \abr
   
   \mark \default f4 r r2 |
   R1*11 
   \mark \default % 8
   R1*8 \mark \default % 9
   R1*7 \mark \default % 10
   R1*7 r2^\markup\italic"соло" r4 es4 \abr \pbr
   
   \mark \default des,2. c'4~ |
   c8 des,~ des2 c'8 bes |
   bes2~ bes8 as4 c8~ |
   c2.~ c8 bes16 as | \abr
   
   bes2~ \tuplet 3/2 {bes4 as g } |
   g4 e2~ e8 f |
   f1~ |
   f~ | \abr
   f~ |
   f |
   R1 |
   \bar "||"
}

sopvoice = \relative c' {
  \global
  \tempo "Ad libitum"
  \dynamicUp
  R1*32
  <des f>1_\markup\column{"SI,II" "A"} |
  <es g> |
  <f as> |
  R2 |
  <des f>1 |
  <es g> |
  <f as> |
  R1 |
  r2 as'2~ |
  as g~ |
  g1 ~ |
  g2 f |
  f1~ |
  \tuplet 3/2 {f2 e2. des4( } |
  c4) f( g g |
  as2) r4 es4 |
  des,2. c'4 |
  des,2. c'8 bes |
  bes,2.~ bes8 c16 bes |
  c2. bes'8 as |
  bes2. as4 |
  g e2. |
  f4 r r2 |
  R1*2 |
  \oneVoice r2^\markup\italic"унисон" r4 f16\( g as g |
  as2.~ as8 g | \pbr
  
  bes2.~ bes8 g |
  c,1~ |
  c2.\) f16\( g as g |
  as2.~ as8 g |
  bes2.~ bes8 g |
  g as~ as2. \) |
  r2 r4 \voiceOne es' |
  des,2. c'4 |
  
  des,2. c'8 bes |
  bes2~ bes8 as4 c8~ |
  c2. bes8 as |
  bes2~ bes8 as4 g8 |
  g4 e2~ e8 g |
  g2. f4 |
  as2. es'4 |
  des,2. c'4 |
  des,2. c'8 bes |
  c2.~ c8 c16 bes |
  c2.~ c8 bes16 as |
  bes2~ \tuplet 3/2 {bes4 as g } |
  g4 e2~ e8 f |
  f2 r
  R1*8
  
  r2 as'2~ |
  as g~ |
  g1~ |
  g2 f |
  f,1_\markup\column{SI,II} |
  f4 e2~ e8 f |
  f1~ |
  f~ |
  f~ |
  f
  R1

}


altvoice = \relative c' {
  \global
  \dynamicUp
  R1*15 |
  r2 r4 es4_\markup\italic"(з.р.)" |
  des2. c4 |
  des1 |
  bes2. c4 |
  c2. r4 |
  R1*3 |
  r2 r4 es4_\markup\italic"(з.р.)" |
  des2. c4 |
  des2. c8 bes |
  
  bes2. c8 bes |
  c2. bes'8 as |
  bes2 as4 g |
  g e2 f4 |
  
  f1 |
  R1
  as,1 |
  bes |
  c |
  R2 |
  as1 |
  bes |
  c |
  R |
  <des as>~
  q2 g,2~
  <g c>2. as4 |
  <c f>1 |
   << { \voiceThree f \tuplet 3/2 { f2 e2. des4 }} \new Voice { \voiceTwo bes1~ bes } >>
  \voiceTwo c4 f g g |
  as2 r4 es |
  des2. c4 |
  des2. c8 bes |
  
  bes2.~ bes8 c16 bes |
  c2. bes'8 as |
  bes2. as4 |
  g es2. |
  
  s1*11
  s2 s4 es4 |
  des2. c4 |
  des2. c8 bes |
  bes2~ bes8 as4 c8~ |
  c2. bes'8 as |
  bes2~ bes8 as4 g8 |
  g4 e2~ e8 g |
  g2. f4 |
  as2. es4 |
  des2. c4 |
  des2. c8 bes |
  c2.~ c8 c16 bes |
  c2. r8 bes'16 as |
  bes2~ \tuplet 3/2 {bes4 as g } |
  g4 e2~ e8 f |
  f2 r |
  R1*8 |
  
  <des as>1~
  q2
  g,2~ |
  <g c>2. as4 |
  <c f>1 |
  bes1 |
  bes |
  as~ |
  as~ |
  as~ |
  as |
  R1
}


bassvoice = \relative c {
  \global
  \oneVoice
  \dynamicUp
  R1*23
  r2 r4 es4_\markup\italic"(з.р.)" |
  des2. c'4 |
  des,2. c'8 bes |
  
  bes,2. c8 bes |
  c2. bes'8 as |
  bes2 as4 g |
  g e2 f4 |
  f1 |
  R1 |
  des |
  es |
  f |
  R2 |
  des1 |
  es |
  f |
  R |
  f |
  es~ |
  
  es |
  f |
  des |
  c |
  R |
  r2 r4 es |
  des2. c'4 |
  des,2. c'8 bes |
  bes,2.~
  bes8 c16 bes |
  c2. bes'8 as |
  bes2. as4 |
  g e2.
  f4 r r2 |
  R1*2 |
  r2 r4 f16\( g as g |
  as2.~ as8 g |
  
  bes2.~ bes8 g |
  c,1~ |
  c2.\) f16 \( g as g |
  as2.~ as8 g | \abr
  bes2.~ bes8 g |
  g as~ as2.\) |
  r2 r4 es |
  des2. c'4 | \abr
  des,2. c'8 bes |
  bes2~ bes8  as4 c8~ |
  c2. bes8 as |
  bes2~ bes8 as4 g8 | \abr
  g4 e2~ e8 g |
  g2. f4 |
  as2. es4 |
  des2. c'4 | \abr
  des,2. c'8 bes |
  c2.~ c8 c16 bes |
  c2.~ c8 bes16 as |
  bes2~ \tuplet 3/2 { bes4 as g } | \abr
  g e2~ e8 f |
  f2 r |
  R1*8 |
  
  f1 |
  es~ |
  es |
  f |
  des |
  c |
  f~ |
  f~ |
  f~ |
  f |
  R
  
}

lyricsalto = \lyricmode {
  \repeat unfold 100 \skip 1
  у...
}

lyricsbass = \lyricmode {
  \repeat unfold 13 \skip 1
   А...
   \repeat unfold 16 \skip 1
   Па па па па па...
}

lyricsbasss = \lyricmode {
  \repeat unfold 17 \skip 1
   \lyricsbass
   \repeat unfold 53 \skip 1
   у...
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
      \new Staff = "upstaff" \with {
        instrumentName = "Соло"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } {
        \new Voice = "solo" { \oneVoice \solovoice }
     } 
      
      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricsbass }
      \new Lyrics \lyricsto "alto" { \lyricsalto }

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
      
       \new Lyrics \lyricsto "bass" { \lyricsbasss }

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
      \tempo 2=50
    }
  }
}
