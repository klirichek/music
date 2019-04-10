\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Ангели поют"
  subtitle = "сербская колядка"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


globali = {
  \key e \major
  \time 3/8
}

global = {
  \globali
  \autoBeamOff
  \dynamicUp
    \override MultiMeasureRest.expand-limit = #1
    \set Score.skipBars = ##t
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

intro = \relative c { R4.*32 }
%intro = {}

sopvoice = \relative c'' {
  \global
  \oneVoice 
  \dynamicUp
  \secondbar
  \intro
  gis4. |
  b8 a gis |
  a[( gis]) fis |
  gis4 e8 |
  gis4. |
  b8 a gis | \abr
  
  a[( gis]) fis |
  gis4 e8 |
  \voiceOne e'4. |
  dis8 dis e |
  cis4 b16[( cis]) |
  b4. | \abr
  
  gis4. |
  b8 a gis |
  a[( gis]) fis |
  gis4. |
  R4.*3 | \break
  
  fis8 fis fis |
  fis gis a |
  b b b |
  b a gis |
  fis fis fis |
  fis gis a | \abr
  
  b b b |
  b a gis |
  gis4. |
  b8 a gis |
  a[( gis]) fis |
  gis4. | \abr
  
  gis4. |
  b8 a gis |
  a[( gis]) fis |
  gis4. |
  \oneVoice e'4^\markup\italic"Solo" e8 |
  dis4 e8 |
  cis4 b16[( cis]) |
  b4 a8 | \abr
  
  gis4 gis8 |
  b4 a8 |
  gis4 a8 |
  gis4 fis8 |

% 43
 \voiceOne gis4^\markup\italic"Хор" gis8 |
 b[( a]) gis |
 a[( gis]) fis |
 gis4. | \abr
 
 gis4 gis8 |
 b8[( a]) gis |
 a[( gis]) fis |
 gis4. |
 \oneVoice e'4^\markup\italic"Solo" e8 |
 dis4 e8 | \abr
 
 b4 b8 |
 b[( a]) gis |
 
 \voiceOne gis8^\markup\italic"Хор" a b |
 a4 gis8 |
 gis4.~ |
 gis4 r8 |
 
 \oneVoice
 
 %59
 R4.*2 | \abr
 
 e'4.~ |
 e |
 dis~ |
 dis4 e8 |
 cis4.~ |
 cis8 b cis |
 b4.~ |
 b \breathe |
 gis4.~ |
 gis4 a8 | \abr
 
 fis16[( gis]) fis4~ |
 fis e8 |
 e4.~ |
 e~ |
 e~ |
 e | \bar "||" |
 
 e'4 e8 |
 dis4 e8 |
 b4 b8 |
 b[( a]) gis | \abr
 
 \voiceOne e'4^\markup\italic"Хор" e8 |
 dis4 e8 |
 b4 b8 |
 b[( a]) gis |
 
 
  \voiceOne gis4^\markup\italic"Хор" gis8 |
 b[( a]) gis |
 a[( gis]) fis |
 gis4. | \abr
 
 gis4 gis8 |
 b8[( a]) gis |
 a[( gis]) fis |
 gis4. |
 \oneVoice e'4^\markup\italic"Solo" e8 |
 dis4 e8 | \abr
 
 b4 b8 |
 b[( a]) gis |
 
 \voiceOne gis8^\markup\italic"Хор" a b |
 a4 gis8 |
 gis4.~ |
 gis4 r8 | \abr
 
 
 
 \tempo "Медленно"
 e'4 e8 |
 dis4 e8 |
 b4^\markup\italic"ritard." b8 |
 b[( a]) gis\fermata \breathe |
 gis a b |
 a4 gis8 |
 gis4.\fermata \bar "||"
 

}




altvoice = \relative c'' {
  \global
  \dynamicUp
  \intro
  \voiceTwo
  s4.*8
  \breathe
  gis4. |
  fis8 fis gis |
  a4 gis16[( a]) |
  gis4.
  
  e4. |
  gis8 fis e |
  fis[( e]) dis |
  e4. |
  s4.*3
  
  dis8 dis dis |
  dis e fis |
  gis gis gis |
  gis fis e |
  dis dis dis |
  dis e fis |
  
  gis gis gis |
  gis fis e |
  e4. |
  gis8 fis e |
  fis[( e]) dis |
  e4. |
  
  e4. |
  gis8 fis e |
  fis[( e]) dis |
  e4. |
  
  s4.*8
  
  % 44
  
  e4 e8 |
  gis[( fis]) e |
  fis[( e]) dis |
  e4.
  
  e4 e8 |
  gis[( fis]) e |
  fis[( e]) dis |
  e4. |
  
  s4.*4
  gis8 a b |
 a4 gis8 |
 gis4.~ |
 gis4 r8 
 
 %60
 
 s4.*22
 
 e'4 e8 |
 dis4 e8 |
 gis,4 gis8 |
 gis[( fis]) e |
 e4 e8 |
  gis[( fis]) e |
  fis[( e]) dis |
  e4.
  
  e4 e8 |
  gis[( fis]) e |
  fis[( e]) dis |
  e4. |
  
  s4.*4
  gis8 a b |
 a4 gis8 |
 gis4.~ |
 gis4 r8 
 
 e'4 e8 |
 dis4 e8 |
 gis,4 gis8 |
 gis[( fis]) e\fermata |
 e fis gis |
 fis4 e8 |
 e4.\fermata

}


lyricscoreone = \lyricmode {
  Ноч' прэ -- кра -- сна и ноч' т'и -- я, над пэ -- жи -- ном
  звэ -- зда с'и -- я.
  У пэ -- жи -- ны Ма -- ты сп'и
  Над И -- су -- сом Ан -- джэл бд'и.
  \set stanza =  "Припев." А -- нджэ -- ли пэ -- ва -- ю, па -- сты -- ри сви -- ря -- ю,
  а -- нджэ -- ли пэ -- ва -- ю
  му -- дра -- цы я -- вл'я -- ю, што на -- ро -- ды ч'е -- ка -- шэ
  што про -- ро -- цы рэ -- ко -- шэ.
  Е -- во сад сэ у свэт я -- ви
  у свэт я -- ви и о -- бъя -- ви
  Ро -- д'и нам сэ Хри -- стос Спас
  за спа -- сэ -- нъе сви -- ю нас.
  А -- лли -- лу -- йа,
  а -- лли -- лу -- йа, Го -- спо -- д'и, по -- м'и -- луй
  А... _ _ _ _ _ _ _ _ _ _ _ _
  А -- ли -- лу -- йа, а -- лли -- лу -- йа,
  
  А -- ли -- лу -- йа, а -- лли -- лу -- йа,
  
   
  Ро -- д'и нам сэ Хри -- стос Спас
  за спа -- сэ -- нъе сви -- ю нас.
  А -- лли -- лу -- йа,
  а -- лли -- лу -- йа, Го -- спо -- д'и, по -- м'и -- луй
  
  А -- лли -- лу -- йа,
  а -- лли -- лу -- йа, Го -- спо -- д'и, по -- м'и -- луй.
}


choirPart = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" {  \sopvoice }
        \new Voice  = "alto" {  \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscoreone }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
    >>
    


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    %ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  
\bookpart {
  \score {
    %  \transpose c bes {
    \choirPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%       \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \score {
      \transpose e es {
    \choirPart
    
      }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
%       \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}


\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    <<
    \choirPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
