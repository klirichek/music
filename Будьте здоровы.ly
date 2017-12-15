\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Будьте здоровы"
  subtitle =  " "
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \minor
  \time 3/8
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
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

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

sopvoice = \relative c' {
  \global
  \dynamicUp
  
  \secondbar  
  R4.*10 \oneVoice
  r4 f16[( g])
  \bar ".|:"
  as8 as g |
  f f <f as>16[( <g bes>]) |
  <as c>8 q <g bes> |
  as as <as c>16[( <bes des>]) |
  <c es>8 q <bes des> | 
  
  \voiceOne es f c |
  \tuplet 3/2 {bes16[( c bes)]} as8 g |
  f f^\markup\italic"конец" \bar "!" \break \oneVoice es
  <c' es>8 q es, |
  <c' es> q <bes des> |
  <as c> <g bes> <f as> |
  \voiceOne  es' es f |
  c c bes |
  c f c |
  \tuplet 3/2 { bes16[( c bes]) } as8 g |
  f f \breathes
  \oneVoice
   f16[( g]) \bar ":|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  R4.*10
  s4.*6
  <as c>16[( g]) f8 as |
  bes as g |
  f f s |
  s4.*3
  es8 es f |
  as as bes |
  as16[( g]) f8 as |
  bes as g |
  f f s
}


tenorvoice = \relative c {
  \global
  \dynamicUp 
  R4.*10
  
  r4 f16[( g])
  \bar ".|:"
  as8 as g |
  f f <f as>16[( <g bes>]) |
  <as c>8 q <g bes> |
  as as <as c>16[( <bes des>]) |
  <c es>8 q <bes des> | 
  
  \voiceOne es f c |
  \tuplet 3/2 {bes16[( c bes)]} as8 g |
  f f
  
   es'8 |
  es es es |
  es es des |
  es es es |
  es es f |
  c c bes |
  c f es |
  s4.*2
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  R4.*10
  s4.*6
  <as c>16[( g]) f8 as |
  bes as g |
  f f 
  es8 |
  <as as,> q es |
  <as as,> q <bes bes,> |
  <as as,> <g g,> <f f,> |
  es es f |
  <as as,> q <bes bes,> |
  <as as,>16[( <g g,>]) <f f,>8 <as as,> |
  <bes bes,> <as as,> <g g,> |
  <f f,> q \breathes \oneVoice <f f,>16[( <g g,>])
}

lyricscore = \lyricmode {
  _ \set stanza ="1." Будь -- те здо -- ро -- вы, жи -- ви -- те бо -- га -- то, а мы у -- ез -- жа -- ем
  до до -- му до ха -- ты. Мы слав -- но гу -- ля -- ли на празд -- ни -- ке ва -- шем,
  ни -- где не ви -- да -- ли мы празд -- ни -- ка кра -- ше. \set stanza = "2." (Как)
}

lyrictwo = \lyricmode {
  \set stanza = "2." Как в_ва -- шем кол -- хо -- зе ши -- ро -- ко -- е по -- ле,
  пу -- скай же для сча -- стья цве -- тёт ва -- ша до -- ля.
  Пусть бу -- дут на ре -- чках да свет -- лы -- е во -- ды,
  Пусть пла -- ва -- ют в_реч -- ках гу -- сей хо -- ро -- во -- ды. \set stanza = "3." (Чтоб)
}

lyricthree = \lyricmode {
  \set stanza = "3." Чтоб на по -- ле жи -- то друж -- ней ко -- ло -- си -- лось,
  чтоб са -- ло в_кла -- до -- вке всё вре -- мя во -- ди -- лось,
  чтоб в_пе -- чке го -- ря -- чей ши -- пе -- ла бы шква -- рка,
  а к_ней, ес -- ли на -- до, наш -- лась бы и ча -- рка. \set stanza = "4." (Чтоб)
}

lyricfour = \lyricmode {
  \set stanza = "4." Чтоб к_вам при -- ез -- жа -- ли же -- лан -- ны -- е го -- сти,
  чтоб лю -- ди на вас не и -- ме -- ли бы зло -- сти.
  Чтоб друж -- ной ра -- бо -- то -- ю ва -- шей бри -- га -- ды
  все бы -- ли до -- воль -- ны, до -- воль -- ны и ра -- ды. \set stanza = "5." (Е_-)
}

lyricfive = \lyricmode {
  \set stanza = "5." Е -- щё по -- же -- лать вам не -- мно -- го о -- ста -- лось:
  чтоб в_год по ре -- бён -- ку у вас на -- рож -- да -- лось,
  а ес -- ли, по сча -- стью, и дво -- е при -- бу -- дет,
  ни -- кто с_вас не спро -- сит, ни -- кто не о -- су -- дит. \set stanza = "6." (Так)
}

lyricsix = \lyricmode {
  \set stanza = "6." Так будь -- те здо -- ро -- вы, жи -- ви -- те бо -- га -- то,
  а мы у -- ез -- жа -- ем до до -- му, до  ха -- ты.
  
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт" } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyrictwo }
      \new Lyrics \lyricsto "soprano" { \lyricthree }

      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \lyricfour }
      \new Lyrics \lyricsto "soprano" { \lyricfive }
      \new Lyrics \lyricsto "soprano" { \lyricsix }
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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
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
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
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
