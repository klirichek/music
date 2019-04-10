\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Заиграйте, мои гусельки"
  subtitle = "Из оперы «Садко»"
  composer = "Музыка Н. Римского-Корсакова"
  %poet = "Слова Е. Руженцева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \major
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

sopvoice = \relative c' {
  \global
  \dynamicUp
  \secondbar  
  R2*9
  r4\fermata e8\mf cis' 
  b8. a16 gis8 fis |
  
  e[( fis]) cis[( d]) |
  e4 e8 cis' |
  b8. a16 gis8 fis |
  e[( fis]) cis[( b]) |
  e4
  
  e8 fis |
  g8. fis16 e8 b' |
  a[( b]) fis e |
  fis4 fis8 gis |
  a8. gis16 fis8 cis' |
  b[( cis]) gis[( fis]) |
  gis4 r |
  b8.^\markup\italic"оживлённее" cis16 d8 a |
  gis4 fis8[( gis]) |
  a4 r |
  b8. cis16 d8 a |
  
  gis4 fis8[( gis]) |
  a4 r |
  
  R2^\markup\italic"В прежнем темпе" R2*6 R2^\markup\italic"Замедляя"
  r4\fermata e8\mf^\markup\italic"в темпе" cis' |
  b8. a16 gis8 fis |
  e[( fis]) cis[( b]) |
  
  cis4 e8 cis' |
  b8. a16 gis8 fis |
  e[( fis]) cis[( b]) |
  e4 \breathe e8 fis |
  
  g8. fis16 e8 b' |
  a[( b]) fis[( e]) |
  fis4 fis8 gis |
  a8. gis16 fis8 cis' |
  b[( cis]) gis[( fis]) |
  gis4 r |
  
  b8.^\markup\italic"оживлённее" cis16 d8 a |
  gis4 fis8[( gis]) |
  a4 r |
  b8. cis16 d8 a |
  gis4 fis8[( gis]) a4 r
  
  
  
 \bar "||"
}

altvoice = \relative c' {
  \global
  \dynamicDown  
  R2*9
    r4\fermata e8 cis' 
  b8. a16 gis8 fis |
  
  e[( fis]) cis[( d]) |
  e4 e8 cis' |
  b8. a16 gis8 fis |
  e[( fis]) cis[( b]) |
  e4
  
  
  
  e8 fis |
  g8. fis16 e8 e |
  cis4 cis8 cis |
  d4 \breathe fis8 gis |
  a8. gis16 fis8 fis |
  dis4 dis |
  e r |
  b'8. b16 b8 a |
  gis4 fis8 gis |
  e4 r |
  gis8. gis16 gis8 fis |
  e4 d |
  cis4 r |
  
  R2*8
  
  r4\fermata e8 cis' 
  b8. a16 gis8 fis |
  
  e[( fis]) cis[( b]) |
  
  cis4 e8 cis' |
  b8. a16 gis8 fis |
  e[( fis]) cis[( b]) |
  e4
  
  
  
  e8 fis |
  gis8. fis16 e8 e |
  cis4 cis8 cis |
  d4 \breathe fis8 gis |
  a8. gis16 fis8 fis |
  dis4 dis |
  e r |
  b'8. b16 b8 a |
  gis4 fis8 gis |
  e4 r |
  gis8. gis16 gis8 fis |
  e4 d |
  cis4 r |
  
  \bar "||"
}



lyricscore = \lyricmode {
  За -- и -- грай -- те, мо -- и гу -- сель -- ки, за -- и -- грай -- те, стру -- ны звон -- ча -- ты!
  Как под час -- ты пе -- ре -- бо -- ры мо -- и рас -- пля -- са -- ли -- ся ле -- бё -- душ -- ки.
  
  Лё -- ли, лё -- ли, ле -- бе -- ди, лё -- ли, лё -- ли, бе -- лы -- е!
  Кра -- ше всех их од -- на де -- ви -- ца, луч -- ше всех од -- на ле -- бё -- душ -- ка,
  со -- би -- ра -- ет бе -- лы цве -- ти -- ки, 
  мо -- ло -- диль -- нич -- ки ду -- ши -- сты -- е.
  Лё -- ли, лё -- ли, цве -- ти -- ки, лё -- ли, лё -- ли, бе -- лы -- е!
}

lyricscorea = \lyricmode {
  
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
