\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Зимняя дорога"
  composer = "Музыка В. Шебалина"
  arranger = "Арранжировка Т. Авериной"
  poet = "Слова А. Пушкина"
  % Удалить строку версии LilyPond 
  tagline = ##f
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
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

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
  \partial 4 c8 es |
  d8 c bes as c4 g |
  r2 r4 c8 es | \abr
  
  d8 c bes16[( as]) c8 g4 r |
  r2 r4 c8 es |
  f f f g f es d c | \abr
  
  bes8 as c2 bes8[( as]) |
  g2 r |
  r r4 c8 es | \abr
  
  d8 c bes as c4 g |
  r2 r4 c8 es |
  d c bes16[( as]) c8 g4 r | \abr
  
  r2 r4 c8 c |
  c c c c c c c c |
  c c d16[( c]) es8 c4 r | \abr
  
  \time 3/2 R1. |
  \time 4/4 r2 r4 g8 as |
  bes c d es f4 c | \abr
  
  %page 2
  g'4. f16[( es]) d8 bes as16[( bes]) c8 |
  g4 r r f'8 f |
  es16[( f]) g8 f es <d f>[( <c es>]) bes4 | \abr
  
  r4 <c f>8 <c es> d c bes16[( as]) c8 |
  g2~ 8 r8 g g |
  g2 r8 g8 g g | \abr
  
  \time 3/2 g4 g r2 e4. e8 |
  \time 4/4 g2 r8 g g g |
  as4 c8 d f es d c | \abr
  
  \time 3/2 bes8 g r4 r2 r |
  \time 4/4 r2 c4 es |
  d2 c4 bes8 as | \abr
  
  c8[( bes16 as]) g2 c8 es |
  d8 c bes16[( as]) c8 g4 c8 c | 
  c8 8 8 8 8 8 8 8 | \abr
  
  8 8 d16[( c]) es8 c4 g8 g |
  g4 g g8[( f]) bes4 |
  r2 c4^\markup\italic"неск. чел." c |
  c1 \bar "||"
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g4( |
  as4 f g4. ) g8 |
  as8 g16[( f]) bes8 as g2( |
  
  as4 f) g4 g8 g |
  as8 g16[( f]) bes8 as g2 |
  c4( bes2) es,4 |
  
  f2. f4 |
  g4 g g8[( f]) es[( d]) |
  es4 f g2( |
  
  as4 f g) g8 g |
  as g16[( f]) bes8 as g2( |
  as4 f) g4 g8 g |
  
  as8 g16[( f]) bes8 as g2 |
  as2 g |
  as2 g4 g8 g |
  
  \time 3/2 g8 g g g g2. f4 |
  \time 4/4 g2. g8 g |
   g8 g bes bes c4 c |
   
   % page 2
   c4. c8 bes g as as |
   g4 r r bes8 bes |
   bes8 8 8 8 4 4 |
   
   r4 as8 8 8 8 f as |
   g2~ 8 r8 g8 g |
   es2 r8 es8 8 8 |
   
   \time 3/2 d4 d r2 cis4. cis8 |
   \time 4/4 d2 r8 g g g |
   as4 as8 bes d c bes as |
   
   \time 3/2 g8 g r4 r2 r2 |
   \time 4/4 r2 g4 g |
   as2 g4 es8 es |
   
   as8[( f]) g2 g8 g |
   as g f as g2 |
   as2 g |
   
   as2 g4 8 8 |
   es4 es d f |
   <es g>1~ |
   1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 es4( |
  f4 d es4.) es8 |
  d8 d d d es2( |
  
  f4 d) es4 es8 es |
  d d d d es2 |
  as2( g4) g |
  
  f4.( es8 d4) d |
  d4 d c c |
  c c es2( |
  
  f4 d es) es8 es |
  d8 d d d es2 |
  f2. es8 es |
  
  d8 d d d es2 |
  es2 es |
  es es4 r |
  
  \time 3/2 f4 es d es8[( d]) c[( d]) c4 |
  \time 4/4 g'2. g8 g |
  g8 g g g as4 as |
  
  %page 2
  g4. g8 bes g f as |
  g4 g8. g16 as8. g16 f8 f |
  g16[( f]) es8 f g f[( es]) bes4 |
  
  r4 d8([ es] f[ es]) d[( f]) |
  es c bes16[( as]) c8 g r8 g g |
  bes2 r8 bes bes bes |
  
  \time 3/2 bes4 bes r2 a4. a8 |
  \time 4/4 bes2 r8 g'8 g g |
  as4 as8 8 8 8 8 8 |
  
  \time 3/2 g8 8 g16[( f]) es8 d[( es]) f4 es g |
  \time 4/4 d4~8 r8 es4 4 |
  f2 es4 8 8 | 
  
  d4 es2 8 8 |
  f es d d es2 |
  2 2 |
  
  2 4 r4 |
  c2 c4( d) |
  es1~ |
  1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 c4~( |
  2 c4.) 8 |
  8 8 8 8 2~ |
  
  2 4 8 8 |
  8 8 8 8 2 |
  es4( d~ 8[ es]) bes4 |
  
  c4( as2) c4 |
  g4 g as as |
  c8[( bes]) as4 c2~ |
  
  2. 8 8 |
  8 8 8 8 2~( |
  4 d8[ bes]) es[( d]) c c |
  
  c8 c bes bes es[( d] c4) |
  as2 c |
  as c4 r |
  
  \time 3/2 d4 c bes c8[( bes]) as[( bes]) as4 |
  \time 4/4 g2. g'8 f |
  es8 8 8 8 4 4 |
  
  %page 2
  es4. es8 g g f f |
  g4 g,8. g16 f'8. es16 d8 d |
  es16[( d]) c8 d es bes4 bes |
  
  g2. g4 |
  g8 c bes16[( as]) c8 g r g8 g |
  es2 r8 es es es |
  
  \time 3/2 g4 g r2 g4. g8 |
  \time 4/4 g2 r8 g'8 g g |
  f4 f8 8 8 8 8 8 |
  
  \time 3/2 g8 g es16[( d]) c8 bes[( c]) d4 c es |
  \time 4/4 d4~8 r8 c4 c |
  c2 4 8 8 |
  
  c4 2 8 8 |
  8 8 8 8 2 | 
  as2 c |
  
  as2 c4 r |
  g2 as4( c) |
  c1~ |
  1
 
}

lyricscorei = \lyricmode {
  Сквозь вол -- ни -- сты -- е ту -- ма -- ны про -- би -- ра -- ет -- ся лу -- на,
  на пе -- чаль -- ны -- е по -- ля -- ны льёт пе -- чаль -- но свет о -- на.
  По до -- ро -- ге зим -- ней, скуч -- ной трой -- ка бор -- за -- я бе -- жит,
  
  ко -- ло -- коль -- чик од -- но -- зву -- чный у -- то -- ми -- тель -- но гре -- мит.
  
  Что -- то слы -- шит -- ся род -- но -- е
  в_дол -- гих пес -- нях ям -- щи -- ка: то раз -- гу -- лье у -- да -- ло -- е,
  то сер -- деч -- на -- я то -- ска… Ни ог -- ня, ни чёр -- ной
  ха -- ты… Глушь и снег… На -- встре -- чу мне толь -- ко вёр -- сты по -- ло --
  са -- ты
  
  Ску -- чно, гру -- стно: путь мой
  ску -- чен, дрем -- ля смолк -- нул мой ям -- щик, ко -- ло -- коль -- чик од -- но -- зву -- чен,
  о -- ту ма -- нен лун -- ный лик, о -- ту -- ма -- нен лун -- ный лун -- ный лик.
}

lyricscoreii = \lyricmode {
 Сквозь вол -- ни -- сты -- е ту -- ма -- ны про -- би -- ра -- ет -- ся лу -- на,
  на по -- ля -- ны льёт пе -- чаль -- но свет о -- на.
  По до -- ро -- ге зим -- ней, скуч -- ной трой -- ка бор -- за -- я бе -- жит,
  
  ко -- ло -- коль -- чик у -- то -- ми -- тель -- но гре -- мит, гре -- мит.
  
  \repeat unfold 68 _
  о -- ту -- ма -- нен, _ _ _ _ _ _  лик
  
}

lyricscoreiii = \lyricmode {
  \repeat unfold 45 _

  
  у -- то -- ми -- тель -- но гре -- мит.
  
  \repeat unfold 15 _
  то раз -- гу -- лье, то раз -- гу -- лье  у -- да -- ло -- е,
  то сер -- деч -- на -- я то -- ска…
  
  \repeat unfold 23 _
  по -- па -- да -- ют -- ся од -- не…
  
  \repeat unfold 19 _
  лун -- ный лик
}

lyricscoreiiii = \lyricmode {
  \repeat unfold 45 _

  
  _ _ _ _ _ _ _
  
  \repeat unfold 15 _
  _ _ _ _ _ _ _ _ _ _ _ _
  то  
}

\bookpart {
  \paper {
    top-margin = 13
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С" % \markup { \right-column { "С1" "С2"  } }
        midiInstrument = "voice oohs"
        %        \consists Merge_rests_engraver
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscorei }
      \new Lyrics \lyricsto "alto" { \lyricscoreii }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Альты"
        shortInstrumentName = "А" %\markup { \right-column { "А1" "А2" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricscoreiii }
       \new Lyrics \lyricsto "bass" { \lyricscoreiiii }
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
      \tempo 4=90
    }
  }
}
