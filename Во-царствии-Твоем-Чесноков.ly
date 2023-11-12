\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Во Царствии Твоем"
  composer = "П. Чесноков"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 3/4
  \autoBeamOff
   \set Score.markFormatter = #format-mark-numbers
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

breath = { \once \override BreathingSign.text =
    \markup { \musicglyph #"scripts.tickmark" } \breathe }

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%опциональный разрыв
pbr = { \bar "" }

cb = { \cadenzaOn }
ce = { \cadenzaOff }
cd = { \ce \bar "|" \cb }

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicDown
  \tempo "Тихо, Молитвенно"% 4 = 50
  \secondbar
  r4 r4\fermata b\p |
  b4. b8 b\< b\! |
  d2\> \breath d8\! d |
  c2 c4 | \abr
  
  e4.\> e8\! e4~ |
  e~ e8 r8 e4 |
  c2\> c4\! |
  a4. a8 a a |
  a4.\p a8 a g | \abr
  
   

  a4~ a8 r  \mark 1 a4 |
  b2\< b4\! |
  d4.\> d8\! d4 |
  c2\> c4~\! |
  c8 r c4 c | \abr
  
  e2 e4 |
  c c4.\> c8\! |
  a4. a8 a4~ |
  a~ a8 r \pbr \break 
  
  
  
  
  \mark 2 a4 |
  b2\< b4\! |
  d2\> d8\! d |
  c2.\>~ |
  c8\! r c4 c | \abr
  
  e2. |
  c2 \> c4\! |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
   \mark 3 a4 |
  b2\< b4\! |
  d2\> d4\! |
  c2.\>~ |
  c8\! r c4 c | \abr
  
  e4 e e |
  c2 \> c4\! |
  a2 a4~ |
  a4 
  
  
  
  
     r8 \mark 4 a a a |
  b4 b8 b b b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c | \abr
  
  e2. |
  c2 \> c4\! |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
    \mark 5 a4 |
  b2 b4 |
  d4. d8 d d  |
  c2.~ |
  c8 r c4 c | 
  
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a~ a8 r 
   \pbr \break
   
   
   
   \mark 6 a4 |
  b2 b4 |
  d4. d8 d4  |
  c2 c4~ |
  c8 r c4 c | 
  
  e2 e4 |
  c2 c4 |
  a2 a4~ |
  a~ a8 r 
  
  
  
  
  
   \mark 7 a4 |
  b4. b8 b b |
  d2.  |
  c2.~ |
  c8 r c c c c | 
  
  e4 e e |
  c4 c8 c c c |
  a2 a4~ |
  a~ a8 r 
  
  
  
  \mark 8 a4 |
  b2 b8 b |
  d4. d8 d d  |
  c2 c4~ |
  c8 r c4 c | 
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
   \mark 9 a4 |
  \time 4/4 a4 a8 a a a a a |
  \time 3/4 b2 b4  |
  d4. d8 d d |
  c2. | 
  
  c8 c c c c c |
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a~ a8 r r4
   
  
  
  
  d4\mf d8 d d4~ |
  d r8 d\< g g\! |
  fis4. fis8 fis4~ |
  fis8 r fis4 fis | \abr
  
  << e2. {s4\> s s\! } >>
  a,2 a4 \breath |
  d4 d8 d d d |
  d2.~ |
  d4~ d8 r r4
  \bar "|."
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  s4 r4 g |
  g4. g8 g g |
  fis2 fis8 fis |
  a2 a4 |
  
  g4. g8 g4~ |
  g~ g8 r g4 |
  g2 g4 |
  e4. e8 e e |
  fis4. fis8 fis e |
  
  fis4~ fis8 r 
  
  
  fis4 |
  g2 g4 |
  fis4. fis8 fis4 |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g g4. g8 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
  
  fis4 |
  g2 g4 |
  fis2 fis8 fis |
  a2. ~ |
  a8 r a4 a |
  
  g2. |
  g2 g4 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
  
   fis4 |
  g2 g4 |
  fis2 fis4 |
  a2. ~ |
  a8 r a4 a |
  
  g4 g g |
  g2 g4 |
  fis2 fis4~ |
  fis4 
  
  
  
     r8 fis fis fis |
  g4 g8 g g g |
  fis4. fis8 fis fis |
  a2 a4~ |
  a8 r a4 a |
  
  g2. |
  g2 g4 |
  fis4. fis8 fis4~ |
  fis~ fis8 r 
  
  
  
    
  
  %5
   fis4 |
  g2 g4 |
  fis4. fis8 fis fis |
  a2. ~ |
  a8 r a4 a |
  
  g4 g g |
  g4. g8 g g |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  
  
  %6
   fis4 |
  g2 g4 |
  fis4. fis8 fis4 |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g2 g4 |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  %7
   fis4 |
  g4. g8 g g |
  fis2. |
  a2.~ |
  a8 r a a a a |
  
  g4 g g |
  g4 g8 g g g |
  fis2 fis4~ |
  fis4~ fis8 r 
  
  
  
  %8
   fis4 |
  g2 g8 g |
  fis4. fis8 fis fis |
  a2 a4~ |
  a8 r a4 a |
  
  g2 g4 |
  g4 g4. g8 |
  fis4. fis8 fis4~ |
  fis4~ fis8 r 
  
  
  %9
  fis4
  \time 4/4 fis4 fis8 fis fis fis fis fis |
  \time 3/4 g2 g4 |
  fis4. fis8 fis fis |
  a2. |
  a8 a a a a a |
  g4 g g |
  g4. g8 g g |
  fis2 fis4~ |
  fis~ fis8 r r4
  
  
  
  
  g4 g8 g g4~ |
  g r8 g b b |
  b4. b8 b4~ |
  b8 r b4 a |
  
  g2. |
  e2 e4 |
  g4 g8 g g g |
  g2.~ |
  g4~ g8 r r4
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  r4 r b4 |
  b4. b8 b b |
  d2 \breath d8 d |
  c2 c4 |
  
  e4. e8 e4~ |
  e~ e8 r e4 |
  c2 c4 |
  a4. a8 a a |
  a4. a8 a <b g> |
  
  a4~ a8 r 
  
  
  a4 |
  b2 b4 |
  d4. d8 d4 |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  
  a4 |
  b2 b4 |
  d2 d8 d |
  c2. ~ |
  c8 r c4 c |
  
  e2. |
  c2 c4 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
   a4 |
  b2 b4 |
  d2 d4 |
  c2. ~ |
  c8 r c4 c |
  
  e4 e e |
  c2 c4 |
  a2 a4~ |
  a4 
  
  
  % 4
     r8 a a a |
  b4 b8 b b b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c |
  
  e2. |
  c2 c4 |
  a4. a8 a4~ |
  a~ a8 r 
  
  
  
  %5
     a4 |
  b2 b4 |
  d4. d8 d d |
  c2. ~ |
  c8 r c4 c |
  
  e4 e e |
  c4. c8 c c |
  a2 a4~ |
  a4~ a8 r 
  
  
  
  
  
  
  %6
     a4 |
  b2 b4 |
  d4. d8 d4 |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c2 c4 |
  a2 a4~ |
  a4~ a8 r 
  
  
    %7
     a4 |
  b4. b8 b b |
  d2. |
  c2.~ |
  c8 r c8 c c c |
  
  e4 e e |
  c4 c8 c c c |
  a2 a4~ |
  a4~ a8 r 
  
  
    %8
     a4 |
  b2 b8 b |
  d4. d8 d d |
  c2 c4~ |
  c8 r c4 c |
  
  e2 e4 |
  c4 c4. c8 |
  a4. a8 a4~ |
  a4~ a8 r 
  
  
  %9
  a4
  \time 4/4 a4 a8 a a a a a |
  \time 3/4 b2 b4 |
  d4. d8 d d |
  c2. |
  c8 c c c c c |
  e4 e e |
  e4. e8 e e |
  a,2 a4~ |
  a4~ a8 r r4
  
  
  
  b4 
  b8 b b4~ |
  b r8 b d d |
  d4. d8 d4~ |
  d8 r d4 d |
  
  e2. |
  g,2 g4 \breath |
  <g b>4 q8 q q q |
  q2.~ |
  q4~ q8 r r4 |
  
  
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  r4 r\fermata <g d'>4 |
  q4. q8 q <g g'> |
  <b fis'>2 q8 q |
  <a e'>2 <a a'>4 |
  
  <c g'>4. q8 q4~ |
  q~ q8 r q4 |
  <a e'>2 q4 |
  <c g'>4. q8 q q |
  d4. d8 d d |
  
  d4~ d8 r 
  
  
  d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q4 |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,> q4. q8 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
    d4 |
  <d g,>2 <g g,>4 |
  <fis b,>2 q8 q |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>2. |
  <e a,>2 q4 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
  
      d4 |
  <d g,>2 <g g,>4 |
  <fis b,>2 q4 |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>4 q q |
  <e a,>2 q4 |
  d2 d4~ |
  d4 
  
  
  %4
    r8 d d d |
  <d g,>4 q8 q q q |
  <fis b,>4. q8 q q |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2. |
  <e a,>2 q4 |
  d4. d8 d4~ |
  d~ d8 r 
  
  
  %5
        d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q q |
  <e a,>2.~ |
  q8 r q4 <a a,> |
  
  <g c,>4 q q |
  <e a,>4. q8 q q |
  d2 d4~ |
  d4~ d8 r
  
  
  
  
  %6
        d4 |
  <d g,>2 <g g,>4 |
  <fis b,>4. q8 q4 |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,>2 q4 |
  d2 d4~ |
  d4~ d8 r
  
  
  
    %7
        d4 |
  <d g,>4. q8 <g g,> q8 |
  <fis b,>2. |
  <e a,>2.~ |
  q8 r q8 q <a a,> q |
  
  <g c,>4 q q |
  <e a,>4 q8 q q q |
  d2 d4~ |
  d4~ d8 r
  
  
  
    %8
        d4 |
  <d g,>2 <g g,>8 q |
  <fis b,>4. q8 q q |
  <e a,>2 q4~ |
  q8 r q4 <a a,> |
  
  <g c,>2 q4 |
  <e a,>4 q4. q8 |
  d4. d8 d4~ |
  d4~ d8 r
  
  
  %9
  d4
  \time 4/4 d4 d8 d d d d d |
  \time 3/4 <d g,>2 q4 |
  <fis b,>4. q8 q q |
  <e a,>2. |
  q8 q q q <a a,> q |
  <g c,>4 q q |
  <e a,>4. q8 q q |
  d2 d4~ |
  d~ d8 r r4
  
  
  
  g4 g8 g g4~ |
  g r8 g g g |
  b4. b8 b4~ |
  b8 r b4 b |
  c2. |
  c,2 c4 |
  <d g,>4 q8 q q q |
  q2.~ |
  q4~ q8 r r4
}

lyricscore = \lyricmode {
  Во Цар -- стви -- и Тво -- ем по -- мя -- ни нас, Го --
  спо -- ди, ег -- да при -- и -- де -- ши во Цар -- стви -- и Тво -- ем
  Бла -- же -- ни ни -- щи -- е ду -- хом, я -- ко тех есть
  Цар -- ство Не -- бе -- сно -- е. Бла -- же -- ни пла -- чу -- 
  щи -- и, я -- ко ти -- и у -- те -- шат -- ся.
  Бла -- же -- ни кро -- ци -- и, я -- ко -- ти -- и
  на -- сле -- дят зе -- млю. Бла -- же -- ни ал -- чу --
  щи -- и и жаж -- ду -- щи -- е прав -- ды
  я -- ко ти -- и на -- сы -- тят -- ся.
  Бла -- же -- ни ми -- ло -- сти -- ви -- и я -- ко
  ти -- и по -- ми -- ло -- ва -- ни бу -- дут.
  Бла -- же -- ни чис -- ти -- и серд -- цем, я -- ко
  ти -- и Бо -- га уз -- рят. Бла -- же -- ни
  ми -- ро -- твор -- цы, я -- ко ти -- и сы -- но --
  ве Бо -- жи -- и на -- ре -- кут -- ся. Бла -- же -- ни
  из -- гна -- ни прав -- ды ра -- ди, я -- ко тех есть
  Цар -- ство Не -- бес -- но -- е. Бла -- же -- ни ес -- те
  ег -- да по -- но -- сят вам и из -- же --
  нут, и ре -- кут всяк зол гла -- гол на вы лжу -- ще
  Ме -- не ра -- ди. Ра -- дуй -- те -- ся и
  ве -- се -- ли -- те -- ся, я -- ко мзда ва -- ша
  мно -- га на не -- бе -- сех. Ра -- дуй -- те --
  ся и ве -- се -- ли -- те -- ся, я -- ко
  мзда ва -- ша мно -- га на не -- бе -- сех.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    %ragged-bottom = ##f
    ragged-last-bottom =  ##f
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }


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
      
      \new Lyrics \lyricsto "bass" { \lyricscore }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
          %\remove "Time_signature_engraver"
          %\remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
