\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Город спит"
  composer = "В. ГАВРИЛИН (1939—1999)"
  poet = "Слова А. ШУЛЬГИНОЙ"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

  \paper {
    top-margin = 15
    left-margin = 25
    right-margin = 15
    bottom-margin = 35
    indent = 20
    ragged-last-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }


abr = { \break }
%abr = \tag #'BR { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key c \minor
  \time 4/4
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \tempo "Andante"
  \partial 4 g8\p as |
  g4 g8 as g as g4~ |
  g c8 g es4 es8 f | \abr
  
  es4 es8 f es f d4~ |
  d g8 es c4 \breathes g'8 as |
  g4 g8 as g as bes? as |
  \time 2/4 g4 c4~ | \abr
  
  \time 4/4 c4 g8 c, f4 \breathes es8 f |
  es4 es8 f es f d4~ |
  d g8 es c4 \breathes g'8 f | \abr
  
  %page 161
  
  g4 g8 f g4 g8 f |
  f g g2 g8 f |
  e4 g8 bes des4 e8 <e g> | \abr
  
  c2. b8 d |
  g,4 g8 f g f g4~ |
  g c8 g es4 \breathes es8 f | \abr
  
  es4 es8 f es f d4~ |
  d g8 es c4 \breathes \autoBeamOn g'8[ as] |
  g4 g8 as g[ as] bes?[ as] | \abr
  
  %page 162
  
  \time 2/4 g4 es'~ |
  \time 4/4 es c8 as f4 \breathes \autoBeamOff es8 f |
  es4 es8 f es f d4~ | \abr
  
  d g8 es c2 |
  c' d |
  es d | \abr
  
  es d |
  c d4. \breathes d8 |
  es d es d d c4 d8 | \abr
  
  %page 163
  es8 d es d d c4 d8 |
  es d es d d c4 es8 |
  d c4 d8 d[( es]) es4 |
  R1 | \abr
  
  \key g \major
  r4 b8 c b c b4~ |
  b r4 r g8 a |
  g4 g8 a g a fis4~ | \abr
  
  fis2 r4 b8 c |
  b1~ |
  \time 2/4 b2 | \abr
  
  %page 164
  \time 4/4 b1~ |
  b1~ |
  b2. \breathes b8 a | \abr
  
  b4 b8 a b4 b8 a |
  a b b2 b8 a |
  gis4 b8 d f4 e8 d | \abr
  
  <e>2. dis8 fis |
  b,4 b8 a b a b4~ |
  b e8 b g4 \breathes g8 a | \abr
  
  %page 165
  g4 g8 a g a fis4~ |
  fis b8 g e2 |
  \time 2/4 g4 es'~ | \abr
  
  \time 4/4 es4 c8 as f4 \breathes es8 f \bar "||" |
  \key c \minor es4 es8 f es f d4~ |
  d g8 es c2 | \abr
  
  c'2 d |
  es d |
  es d | \abr
  
  %page 166
  c2 d4. \breathes d8 |
  es d es d d c4 d8 |
  es d es d d c4 d8 | \abr
  
  es d es d d c4 es8 |
  d c4 d8 d[( es]) es4~ |
  2~ 8 r8 g,8\p as | \abr
  
  g1 |
  g2. g8 as |
  g1 |
  f2.\ppp e8[( f]) |
  e1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 r4
  es2 \pp d |
  c c |
  
  c b~ |
  b c |
  es d |
  c |
  
  c c |
  c b~ |
  b c4 g'8 f |
  
  %page 161
  es4 es8 es d4 d8 d |
  d d d2 d8 d |
  c4 e8 g g4 bes8 bes |
  
  as4( g f) f8 f |
  es4 es8 es d d d4( |
  c) c8 c c4 c8 c |
  
  c4 c8 c b b b4~ |
  b b8 b c2 |
  es d |
  
  %page 162
  c2 |
  c b |
  c b~ |
  
  b4 b8 b c2 |
  as'2 as |
  g as |
  
  g2 g |
  as as |
  g as |
  
  %page 163
  g as |
  g as |
  as g4. g8 |
  g[( a]) a4~ 8 r8 r4 |
  
  \key g\major r4 g8 g fis fis fis4~ |
  fis r4 r4 e8 e |
  e4 e8 e dis dis dis4~ |
  
  dis2 r4 <e g>8 q |
  q2 <dis fis> |
  <e g>2~ |
  
  %page 164
  q4 b'8 e, a4 \breathes g8 a |
  g4 g8 a g a fis4~ |
  fis b8 g e4 b'8 a |
  
  g4 g8 g fis4 fis8 fis |
  fis fis fis2 fis8 fis |
  e4 gis8 b b4 <f gis>8 q8 |
  
  << e2. \new Voice { \voiceThree b'4( c a)} >> a8 a |
  g4 g8 g fis fis fis4( |
  e) e8 e e4 e8 e |
  
  %page 165
  e4 e8 e dis dis dis4~ |
  dis dis8 dis e2 |
  c2 |
  
  c b |
  \key c\minor c b~ |
  b4 b8 b c2 |
  
  as'2 as |
  g as |
  g g | 
  
  %page 166
  as2 as |
  g as |
  g as |
  
  g as |
  as g |
  b2~ 8 r8 r4 |
  
  es,2(\pp f) |
  g2( es4) es8 es |
  es1 |
  b2. b4 |
  c1
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4   r4 |
   c2\pp b |
  g2 as |
  
  f2 f~ |
  f2 es |
  c' b |
  g2 |
  
  es2 as |
  g2 f2~ |
  f2 es4 g8 f |
  
  %page 161
  c'4 c8 c as4 as8 as |
  bes bes bes2 bes8 bes |
  bes4 c8 des bes4 des8 des |
  
  c2. d8 b |
  c4 c8 c b b b4( |
  g) g8 g as4 \breathes as8 as |
  
  f4 f8 f f f f4~ |
  f f8 f es2 |
  c' b |
  
  %page 162
  g2 |
  es 2 as |
  g f~ |
  
  f4 f8 f es2 |
  es'8 d es d d c4 d8 |
  es d es d d c4 d8 |
  
  es d es d d c4 d8 |
  es8 d4 es8 d c4. |
  es2 d |
  
  %page 163
  es d |
  es es |
  d es4. es8 |
  es4 es~ es8 r8 r4 |
  
  \key g\major r4 e8 e dis dis dis4~ |
  dis r4 r4 c8 c |
  c4 c8 c b b b4~ |
  
  b2 r2 |
  r4 b8 c b c d! c |
  b4 e~ |
  
  %page 164
  e2 c |
  e dis~ |
  dis e4 \breathes b8 a |
  
  e'4 e8 e c4 c8 c |
  d8 d d2 d8 d |
  d4 e8 f d4 e8 d |
  
  c2. fis8 dis |
  e4 e8 e dis8 dis dis4( |
  b) b8 b c4 c8 c |
  
  %page 165
  a4 a8 a a a a4~ |
  a a8 a g2 |
  g2 |
  
  es2 as |
  \key c\minor g2 f~ |
  f4 f8 f es2 |
  
  es'8 d es d d c4 d8 |
  es d es d d c4 d8 |
  es d es d d c4 d8 |
  
  %page 166
  es d4 es8 d c4. |
  es2 d |
  es d |
  
  es es |
  d es4. es8 |
  es[( f]) f4~8 r8 r4 |
  
  r4\pp g,8 as g2 |
  c2. c8 c |
  c1 |
  f,2.\ppp f4 |
  g1\fermata
  
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \partial4   r4 |
  c2 d |
  es f |
  
  as,2 g |
  g'2-> c, |
  c d |
  es |
  
  as, <c f,> |
  g2 g |
  g'2-> c,4 g'8 f |
  
  %page 161
  <f as>4 q8 q <bes, f'>4 q8 q |
  <es g>8 q g2 q8 q |
  bes8[( as]) g f e4 <c g'>8 q |
  
  f4( es d?) g8 g |
  c,4 c8 c d d d4( |
  es) es8 es f4 f8 f8 |
  
  as,4 as8 as g g g4~ |
  g g8 g c2 |
  c d |
  
  %page 162
  es |
  as, des |
  g g,~ |
  
  g4 g8 g c2 |
  f <f bes,> |
  <es bes'> <f bes,> |
  
  <es bes'> <g c,> |
  f <f bes,> |
  <es bes'> <f bes,> |
  
  %page 163
  <es bes'> <f bes,> |
  <g c,> f |
  <f bes,> <es bes'> |
  <a b,>2~ 8 r8 b8 c |
  
  \key g\major b1~ |
  b4 e8 b g2~ |
  g2 <a b,>2~ |
  
  q4 b8 g e2~ |
  e2 fis2 |
  g2~ |
  
  %page 164
  <g c,>2 <g a,> |
  <g b,> <a b,>~ |
  q2 <g e>4 \breathes b8 a |
  
  <a c>4 q8 q <a d,>4 q8 q |
  <g b>8 q q2 g8 a |
  d8[( c]) b a gis4 <b e,>8 q |
  
  a4( g? fis) b8 b |
  <b e,>4 q8 q <b fis>8 q q4( |
  g4) g8 g a4 \breathes a8 a |
  
  %page 165
  c,4 c8 c b b b4~ |
  b b8 b e2 |
  es |
  
  as, des |
  \key c\minor g g,~ |
  g4 g8 g c2 |
  
  f <f bes,> |
  <es bes'> <f bes,> |
  <es bes'> <g c,> |
  
  %page 166
  f2 <f bes,> |
  <es bes'>-! <f bes,> |
  <es  bes'> <f bes,> |
  
  <g c,> f2 |
  <f bes,> <es bes'> |
  g2~ 8 r8 r4 |
  
  c,2( d) |
  es( f4) f8 f |
  as1 |
  g,2. g4 |
  <c c,>1
  
  
  
}

lyricscores = \lyricmode {
  \set stanza = "1. " Го -- род спит, ти -- хий го -- род спит над Не -- вой. Свет про --
  лит, яс -- ный свет про -- лит на не -- го. На мос -- ту, на мос -- ту за -- сты -- ла па -- мять
  на по -- сту. Чьи ша -- ги вдоль пус -- тых са -- дов стук по -- стук? Го -- род
  
  спит, го -- род спит, ти -- хий го -- род спит. Го -- род спит, толь -- ко па -- мять не
  спит. Стук ша -- гов, ров -- ный стук ша -- гов вдоль о -- град. Го -- род
  спит, ти -- хий го -- род спит, Ле -- ни -- нград. А…
   _ _ _ _ _ _ _ _
   
   _ _ _ _  _ Го -- род спит, ти -- хий го -- род спит,
   Ле -- нин -- град. Донн… Донн… Донн… Донн…
   Донн… Донн… Донн… Донн… И баш -- ни зо -- ло -- ты -- е, на --
   
   це -- лен -- ны -- е в_пол -- день, как стрел -- ки ча -- со -- вы -- е, про вре -- мя на -- пом -- нят.
   Сно -- ва ночь цве -- тёт. Мир те -- бе, мир -- ный го -- род мой,
   у ог -- рад,
   
   А…  Го -- род
   спит, го -- род спит, ти -- хий го -- род спит. На пле -- чах у Пет -- ра две за --
   ри. Стук ша -- гов, чей -- то стук ша -- гов вдоль о -- град. Э -- ту
   
   ночь ми -- лый го -- род мне по -- да -- рил. Го -- род 
   по -- да -- рил, э -- ту ночь ми -- лый го -- род мне _ _ _
   _ _ _ _ _ _ 
   
   _  _ И баш -- ни зо -- ло -- ты -- е, на -- це -- лен -- ны -- е в_пол -- день, как
   стрел -- ки ча -- со -- вы -- е про вре -- мя на -- пом -- нят. Го -- род
   спит… Спит, го -- род спит… Го -- род спит…
  
}

lyricscorea = \lyricmode {
  Мм… _ _ _ 
  _ _ _ _ _ _ 
  _ _ _ _ _ _ _ 
  
  _ _ _ _ _ _ |  _ _ _ _ _ |   _ _ _ _ _ _ |
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ |
  _ _ _ _ _ _ _ _ _ А… _ 
  
  _ _ _ _ _
  _ _ _   _ _ _ _
  _ _ А… _ Донн… Донн…
  
  Донн… Донн… Донн… Донн… Донн… Донн… на -- пом -- нят.
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ зо -- ри
  
  на пос -- ту. И ша -- ги вдоль пус -- тых са -- дов стук по -- стук. _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ по --
  да -- рил, го -- род по -- да -- рил
  А… _ _ _ _ _
  
  _ _ Донн… Донн… Донн… Донн…
 Донн… Донн… Донн… Донн… _
 
}

lyricscoret = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  
  _ _ _ _ _ _ 
  Ле -- нин -- град. За -- си -- я -- ет ут -- ро, и ма -- ят -- ник кач -- нёт -- ся, и
  свет жи -- вой вдоль у -- лиц мет -- нёт -- ся, мет -- нёт -- ся. А… _
  
  _ _ _ _ _ _ на -- пом -- нят
  Сно -- ва ночь цве -- тёт.   Мир те -- бе, мир -- ный го -- род мой,
   у ог -- рад за -- сты -- ли зо -- ри.
   
   А… _ _ _ _ _ 
   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
   _ _ _ _ _ _ _ _ _ _ _ _ _ _
   
   _ _ _ _ _ _ _ _ _ по --
   да -- рил го -- род по -- да -- рил
   За -- си -- я -- ет ут -- ро, и ма -- ят -- ник кач -- нёт -- ся, и  свет жи -- вой вдоль у -- лиц мет --
   
   нёт -- ся, мет -- нёт -- ся. Донн… Донн… Донн… Донн…
   Донн… Донн… Донн… Донн… На -- пом -- нят.
   Го -- род спит…    
   Спит, го -- род спит… Го -- род спит…
}

lyricscoreb = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  
  _ _ _ _ _
  _ _ _ Донн… Донн… Донн… Донн…
  Донн… Донн… _ _ _ _
  
  _ _ _ _ _ _ _ Ночь цве --
  тёт, бе -- лый свет мой,
  мно -- го лет. зо -- ри
  
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  А…   
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Спит…
}


\bookpart {

  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      \new Lyrics \lyricsto "alto" { \lyricscorea }
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
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
      \new Lyrics \lyricsto "bass" { \lyricscoreb }
    >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=60
    }
  }
}
