\version "2.24.2"
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Колыбельная Медведицы"
  subtitle = "Из мультфильма «Умка»"
  composer = "Музыка Е. Крылатова"
  poet = "Слова Ю. Яковлева"
  % Удалить строку версии LilyPond 
  tagline = ##f
  
}

\include "articulate.ly"

abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

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
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key g \major
  \time 4/4
}



scoreASopranoVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  % Вписывайте музыку сюда
  R1*2
  %page 14
  \repeat volta 2 {
    d4\mp e e d |
    e d2. | \abr
    
    d4 e e d |
    e d2. |
    d4 e e d |
    e d2 e4 | \abr
    
    b'1 |
    R1 |
    a4 b b a |
    b a2. | \abr
    
    fis4 a a g |
    a4 g fis e |
    g2. e4 |
    fis2. d4 | \abr
    
    e1 |
    R1 |
    a4 b b a |
    b a2. | \abr
    
    fis4 a a g |
    a g fis e |
    g2. e4 |
    fis2 fis
    
    
  }
  \alternative {
    {
      g1 | \abr
      R1
    }
    {
      g1 |
      R1*3 |
      R1\fermata
    }
  } \bar "|."
  
}

scoreAVerse = \lyricmode {
  % Набирайте слова здесь
  \set stanza = "1. " Ло -- жкой снег ме -- ша -- я,
  ночь и -- дёт бо -- льша -- я.
  Что же ты, глу -- пы -- шка, не спишь?
  Спят тво -- и со -- се -- ди_—
  бе -- лы -- е ме -- две -- ди.
  Спи и ты ско -- рей, ма -- лыш.
    Спят тво -- и со -- се -- ди_—
  бе -- лы -- е ме -- две -- ди.
  Спи и ты ско -- рей, ма -- лыш.
}

scoreAVerse_ii = \lyricmode {
  % Набирайте слова здесь
  \set stanza = "2. " Мы плы -- вём на льди -- не,
  как на бри -- га -- нти -- не,
  по се -- дым су -- ро -- вым мо -- рям.
  И всю ночь со -- се -- ди,
  звё -- здны -- е ме -- две -- ди,
  све -- тят да -- льним ко -- раб -- лям.
  И всю ночь со -- се -- ди,
  звё -- здны -- е ме -- две -- ди,
  све -- тят да -- льним ко -- раб_-  _ лям.
}

scoreARight = \relative c' {
  \global
  % Вписывайте музыку сюда
  \tempo "Умеренно"
  r4\p <g b d>2\arpeggio q4\arpeggio |
  r4 q2\arpeggio q4\arpeggio |
  \repeat volta 2 {
    r4 q2\arpeggio <g b e>4\arpeggio |
    r4 <g b d>2\arpeggio <g b e>4\arpeggio 
    
    r4 <fis c' d>2\arpeggio <fis c' e>4\arpeggio |
    r4 <fis c' d>2\arpeggio <fis c' e>4\arpeggio |
    r4 <fis c' d>2\arpeggio <fis c' e>4\arpeggio |
    r4 <fis c' d>2\arpeggio <fis c' e>4\arpeggio |
    
    r4 <g b d >2\arpeggio <g b e>4\arpeggio |
    r4 <g b d >2\arpeggio <g b e>4\arpeggio |
    <a' e' g a>4( <b e g b>) q( <a e' g a>) |
    <b es g b>4( <a es' g a>2.) |
    
    <fis b d fis>4( <a d fis a>) q( <g d' fis g>) |
    << { <b d>2 q } \\ { <a a'>4( <g g'>) <fis fis'>( <e e'>) } >> 
    <g c e g>2.( <e g c e>4) |
    <fis c' d fis>2.( <d fis c' d>4) |
    
    << <e g b e>1 \\ { r4 <g, b d>2\arpeggio <g b  e>4\arpeggio } >>
    r4 <g b d>2\arpeggio <g b e>4\arpeggio |
    <a' e' g a>4( <b e g b>) q( <a e' g a>) |
    <b es g b>4( <a es' g a>2.) |
    
        <fis b d fis>4( <a d fis a>) q( <g d' fis g>) |
    << { <b d>2 q } \\ { <a a'>4( <g g'>) <fis fis'>( <e e'>) } >> 
    <g c e g>2.( <e g c e>4) |
     <fis c' d fis>2-- q--
  }
  
  \alternative {
    {|
    
    << <e g b e>1 \\ { r4 <g, b d>2\arpeggio <g b  e>4\arpeggio } >>
    r4 <g b d>2\arpeggio <g b e>4\arpeggio |
    
  }
  {
    <d'' g b d>4( <e g b e>) q( <d g b d>) |
    <e g b e> <d g b d>2.~ |
    4 <e g b e>4 q <d g b d> |
    <e g b e>4\arpeggio <d g b d>2. |
    r4 \ottava 1 <b' d g b>2.\arpeggio \fermata \ottava 0
  }
  }

}

scoreALeft = \relative c {
  \global
  % Вписывайте музыку сюда
  
  << d1~ \\ { g,4. g8 d2 } >>
  << d'1 \\ { g,4. g8 d2 } >>
  \repeat volta 2 {
    << d'1~ \\ { g,4. g8 d2 } >>
  << d'1 \\ { g,4. g8 d2 } >>
  
      << d'1~ \\ { a4. a8 d,2 } >>
  << d'1 \\ { a4. a8 d,2 } >>
  << d'1~ \\ { a4. a8 d,2 } >>
  << d'1 \\ { a4. a8 d,2 } >>
  
  << d'1 \\ { g,4. 8 d2 } >>
  << f'1 \\ { g,4. 8 d2 } >>
  c4.( g'8 e'2)
  c,4.( g'8) es'4( g,) |
  
  b,4.( fis'8 d'2) |
  e,4.( b'8 g'2) |
  a,4.( e'8 c'2) |
  d,,4.( a'8 fis'2) |
  
    << d1 \\ { g,4. 8 d2 } >>
  << f'1 \\ { g,4. 8 d2 } >>
  c4.( g'8 e'2)
  c,4.( g'8) es'4( g,) |
  
  b,4.( fis'8 d'2) |
  e,4.( b'8 g'2) |
  a,4.( e'8 c'2) |
  d,,4.( a'8) fis'4( a,) |
    
  }
  \alternative {
    {
        << d1 \\ { g,4. 8 d2 } >>
        << d'1 \\ { g,4. 8 d2 } >>
    }
    {
      << <d'b'>1\arpeggio \\ { g,4.\arpeggio g8 d2 } >>
      << { < d' b'>2. \arpeggio e4 } \\ { g,4.\arpeggio g8 d2 } >>
      << <d'b'>1\arpeggio \\ { g,4.\arpeggio g8 d2 } >>
      << { < d' b'>2. \arpeggio e4 } \\ { g,4.\arpeggio g8 d2 } >>
      g4 \clef treble <b'' d e g>2.\arpeggio\fermata
    }
  }
  
    
  
  
}

scoreASopranoVoicePart = \new Staff \with {
  %instrumentName = "Сопрано"
  midiInstrument = "choir aahs"
} { \scoreASopranoVoice }
\addlyrics { \scoreAVerse }
\addlyrics { \scoreAVerse_ii }

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "нар"
} <<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

\bookpart {
\score {
  \transpose g a
  <<

    \scoreASopranoVoicePart
    \scoreAPianoPart
  >>
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
       ottavationMarkups = #ottavation-simple-ordinals
      }
      %Metronome_mark_engraver
    }
}
}

\bookpart {

\score {
  \transpose g bes
  <<
    \scoreASopranoVoicePart
    \scoreAPianoPart
  >>
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
       ottavationMarkups = #ottavation-simple-ordinals
      }
      %Metronome_mark_engraver
    }
}

\score  {
  \articulate \unfoldRepeats 
  <<
    \scoreASopranoVoicePart
    \scoreAPianoPart
  >>
  \midi {
    \tempo 4=100
  }
}
}