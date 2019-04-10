\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Соловушка"
  composer = "сл. и муз. П. И. Чайковского"
  arranger = "Обработка для детского хора В. Соколова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \minor
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

sopfirst = \relative c'' {
  \global
  \dynamicUp
  \tempo "Andante (Не спеша)"
  \time 2/4
  \oneVoice a8^\markup{\dynamic f " Соло"} c d c |
  a4\( e' |
  \time 3/4 d4\) \tuplet 3/4 { c16[( d c]) } a8 \breathes e' |
  d[( c] a2) |
  \time 2/4 g2~\fermata | \abr
  g4~\> g8\~ r |
  e\mf g a g |
  a c b a |
  g[( a] f4) |
  e2~ \fermata |
  e4~\> e8\! r |
  \voiceOne
  b'^\markup{\dynamic pp " живее"} b b b | \abr
  d d a a |
  b4 b~ |
  b~ b8  \oneVoice r\fermata \voiceOne |
  b b b b |
  d d a a |
  b4 b~ | \abr
  b~ b8  \oneVoice r\fermata \voiceOne | \bar "||"
  e,\p e e e |
  f4. f8 |
  g4 g8 g |
  a4. g8 |
  c4 g~ |
  g~\> g8\!  \oneVoice r \voiceOne | | \abr
  
  g\p g g g |
  a8. a16 g8 g |
  c4 g~ |
  g8  \oneVoice r \voiceOne  d' g, |
  e'4 c~ | \abr
  c c8 c |
  f4\f e8 d |
  e4 c~ |
  c~ c8  \oneVoice r  \voiceOne |
  g'4.\ff c,8 | \abr
  c4 c8 c |
  a d c d |
  e4 c~ |
  c~ c8 \oneVoice r\fermata | 
  R2 \voiceOne \abr
  b8\p b b b |
  d8. a16 a4 |
  b4 bis~ |
  bis~ bis8 \oneVoice r | | \abr
  R2 \voiceOne |
  b8 b b b |
  d4 \tuplet 3/2 { a8 a a } |
  b4 b~ |
  b~ b8 \oneVoice r\fermata \voiceOne | \abr
  
  
  e,8\pp e e e |
  a4^> f8 d |
  e4. e8 |
  \oneVoice R2 \voiceOne
  e8\pp e e e | \abr
  a4 f8 d |
  e4. e8 |
   \oneVoice r2\fermata | \voiceOne
  a8\f c d c |
  a4 e' | \abr
  \time 3/4 d4.( c8) a[( e']) |
  d[( c] a2) |
  g~ g8  \oneVoice r \voiceOne |
  a2~ a8 \breathes a |
  d d d4\< d |
   \oneVoice r\ff \voiceOne d d | \abr
  e2. |
  e2  \oneVoice r4 |
  r r \voiceOne g,8\pp g |
  g4 e g8 g |
  g2. |
  e~ |
  e8 \oneVoice r r4 r \bar "||"
  
}

sopsecond = \relative c'' {
  \global
  \dynamicUp
%  \secondbar  
  s2*2 |
  s2.*2 |
  s2*7 |
  gis8 gis gis gis |
  a a a a |
  a4 gis4~ |
  gis~ gis8 s |
  gis gis gis gis |
  a a a a |
  a4 gis~ |
  gis~ gis8 s |
  r2 |
  r2 |
  e8 e e e f4. f8 |
  e4 e~ |
  e~ e8 s |
  
  e e e e |
  f8. f16 f8 f |
  e4 e~ |
  e8 s g g |
  g4 g( |
  c) c8 c |
  d4 c8 b |
  c4 g~ |
  g~ g8 s |
  c4. c8 |
  c4 c8 c |
  a a c b |
  c4 g~ |
  g~ g8 s |
  s2 |
  gis8 gis gis gis |
  a8. a16 a4 |
  a g~ |
  g~ g8 s |
  s2 |
  gis8 gis gis gis |
  a4 \tuplet 3/2 { a8 a a } |
  a4 gis~ |
  gis~ gis8 s |
  
  e e e e |
  e4-> f8 d |
  e4. e8 |
  s2 |
  e8 e e e |
  e4 f8 d |
  s2*2 |
  a'8 a a a |
  a4 a |
  a2 a4 |
  a~ a2 |
  g~ g8 s |
  a2~ a8 a |
  a a a4 a |
  s a a |
  c2. |
  c2 s4 |
  s s e,8 e |
  e4 e e8 e |
  e2. |
  e~ |
  e8 s s2
}

altofirst = \relative c' {
  \global
  \dynamicUp  
  R2*2 |
  R2.*2 |
  R2*7 |
  e8 e e e |
  f f f f |
  f4 e~ |
  e~ e8 \oneVoice r\fermata | \voiceOne
  e e e e |
  f f f f |
  f4 e~ |
  e~ e8 \oneVoice r\fermata | \voiceOne
  e e e e d4. d8 |
  c4 e8 e |
  f4. d8 |
  c4 c~ |
  c~\> c8\! \oneVoice r \voiceOne |
  
  e\p e e e |
  f8. f16 d8 d |
  c4 c~ |
  c8 \oneVoice r \voiceOne f f |
  e4 e~ |
  e g8 g |
  a4\f g8 g |
  g4 e~ |
  e~ e8 \oneVoice r \voiceOne |
  c'4. g8 |
  a4 a8 a |
  f8 f a g |
  g4 e~ |
  e~ e8 \oneVoice r\fermata | \voiceOne |
  e\p e e e |
  e e e e |
  f8. f16 f4 |
  f e~ |
  e~ e8 \oneVoice r | \voiceOne |
  e e e e |
  e2 |
  f4 \tuplet 3/2 {f f8 } |
  f4 e~ |
  e~ e8 \oneVoice r\fermata | \voiceOne |
  
  
  e8\pp e e e |
  c4^> d8 d |
  e4. e8 |
  \oneVoice R2 | \voiceOne |
  e8\p e e e |
  c4 d8 d |
  e4. e8 |
  \oneVoice r2\fermata | \voiceOne
  a8\f f f f |
  f4 c |
  f2 a4 |
  f( a2) |
  g~ g8 \oneVoice r \voiceOne |
  a2~ a8 \breathes a |
  f f f4\< f |
  \oneVoice r\ff \voiceOne f f |
  g2. |
  g2 \oneVoice r4 \voiceOne |
  \oneVoice r r \voiceOne c,8\pp c |
  c4 c c8 c |
  c2. |
  c~ |
  c8 \oneVoice r8 r4 r
  
}

altosecond = \relative c' {
  \global
  \dynamicUp  
  R2*2 |
  R2.*2 |
  R2*7 |
  e8 e e e |
  d d f f |
  f4 e~ |
  e~ e8 s |
  e e e e |
  d d f f |
  f4 e~ |
  e~ e8 s |
  e e e e |
  d4. d8 |
  c4 e8 e |
  f4. d8 |
  s2*2
  
  
  e8 e e e |
  f8. f16 d8 d |
  c4 c~ |
  c8 s b b |
  c4 e~ |
  e e8 e |
  d4 e8 g |
  c,4 c~ |
  c~ c8 s |
  e4. g8 |
  a4 a8 a |
  d, d a' g |
  c,4 c~ |
  c~ c8 s |
  e e e e |
  e e e e |
  d8. f16 f4 |
  f e~ |
  e~ e8 s |
  e e e e |
  e2 |
  d4 \tuplet 3/2 {f f8 } |
  f4 e~ |
  e~ e8 s |
  
  e8 e e e |
  c4 d8 d |
  e4. e8 |
  s2 |
  e8 e e e |
  c4 d8 d |
  e4. e8 |
  s2 |
  a8 f d f |
  f4 c |
  
  d4.( f8) a[( c,]) |
  d[( f] a2) |
  g~ g8 s |
  a2~ a8 a |
  f f f4 f |
  s d d |
  c2. |
  c2 s4 |
  s s c8 c |
  c4 c c8 c |
  c2. |
  c~ |
  c8 s s2
}


lyricsup = \lyricmode {
  \repeat unfold 48 \skip 1
  за ва -- шу любовь, за ла -- ску,
}

lyricscore = \lyricmode {
У -- ле -- тал со -- ло -- _ _ ву -- шка да -- ле -- ко, __
во чу -- жу -- ю тё -- плу -- ю сто -- рон -- ку, __
у -- ле -- тал со -- ло -- ву -- шка да -- ле -- ко, __
во чу -- жу -- ю тё -- плу -- ю сто -- рон -- ку. __
И спа -- си -- бо вам, и спа -- си -- бо вам за ла -- ску,
что ме -- ня, со -- ло -- ву -- шку, не гна -- ли, __ пе -- сни петь мне,
со -- ло -- вью не ме -- ша -- ли. __
Ма -- лых де -- ток мо -- их не за  -- би -- жа -- ли! __
И о -- ста -- лся_б, я те -- перь с_ва -- ми, __
да ли -- ха бе -- да ва -- ши мо -- ро -- зы; __
не -- лю -- блю зи -- мы ва -- шей бе -- лой,
не лю -- блю я бу -- йно -- го ве -- тра!
А уж как ве -- сна кра -- сна ве -- рнё -- тся, __
с_ней и я ве -- рнусь к_вам с_но -- вой
пе -- сней,
я ве -- рнусь к_вам с_но -- вой пе -- сней! __

}

lyricscoresecond = \lyricmode {
  Вы про -- ща -- йте, лю -- ди до -- бры -- е, на -- до -- лго, __
  \repeat unfold 10 \skip 1
  на -- до -- лго про -- ща -- юсь с_ва -- ми, лю -- ди! __
  У -- ле -- теть по -- ра мо -- я на -- ста -- ла! __
}

lyricsdown = \lyricmode {
  \repeat unfold 65 \skip 1
  И о -- ста -- лся,
  \repeat unfold 9 \skip 1
  да ли -- ха бе -- да ва -- ши мо -- ро -- зы __
}

\bookpart {
  \paper {
    top-margin = 10
    left-margin = 15
    right-margin = 10
    bottom-margin = 10
    indent = 0
    ragged-last-bottom = ##f
  }
  \score {
      \transpose a bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopfirst }
        \new Voice  = "sopranotwo" { \voiceTwo \sopsecond }
      >> 
      
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" { \lyricsup }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoresecond }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "altoone" { \voiceOne  \altofirst }
        \new Voice = "altotwo" { \voiceTwo  \altosecond }
      >>
      
      \new Lyrics \lyricsto "altoone" { \lyricsdown }

    >>
      }  % transposeµ
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
      \transpose a bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopfirst }
        \new Voice  = "sopranotwo" { \voiceTwo \sopsecond }
      >> 
           
      \new Staff = "downstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "altoone" { \voiceOne  \altofirst }
        \new Voice = "altotwo" { \voiceTwo  \altosecond }
      >>
      
    >>
      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
