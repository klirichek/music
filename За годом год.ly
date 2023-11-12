\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Мы будущее строим"
  composer = "муз. Михаил В. Родионов"
  %arranger = "arranger"
  poet = "слова Арины С. Шевченко"
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
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

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
  
  \key d \major
  \time 12/8
}


scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \accidentalStyle voice
  R1.
  r4. r r r4 a8
  \repeat volta 2 {
   fis'4 d8 a4 a8 fis'4 e8 e4 e8 |
   e4 d8 cis4 d8 cis4.~ cis4 b8 |
   b4 d8 e4 d8 a4 cis8 d4 d8 |
   
   cis4 cis8 cis4 b8 cis4.~ cis4 fis8 |
   b4 b8 b4 fis8 a4 a8 a4 fis8 |
   g4. g8 a g fis4.~ fis4 b,8 |
   b4 d8 cis4. e8 fis e d4 b8 |
   
   b4 d8 cis4 a8 d2. |
   r4. r r r4 a8 |
   fis'4 d8 d4 a8 fis' e4~ e8 fis e |
   d2.~d4.~d4 b8 |
   b'4 b8~ b cis b a4.~ a4 fis8 |
   fis4 g8~ g4. e d4 cis8 |
   b4.~ b4 d8 cis4 fis,8 ais4 cis8
   d2.~ d4.~ d4 b8 |
   b4 b8 b4 d8 cis4 cis8 a4 fis8 |
   e'4. d2. r4 a8 
  }
  fis'4 d8 d4 a8 fis' e4~ e8 fis e |
  d2.~ d4.~ d4 b8 |
  b'4 b8~ b cis b a4.~ a4 fis8 |
  fis4 g8~ g4. e d4 cis8 |
  
  b4.~ b4 d8 cis4 fis,8 ais4 cis8 |
  d2.~ d4.~ d4 b8 |
  b4 b8 b4 d8 cis4 cis8 a 4 fis8 |
  e'4. d2. r4 b8 |
  b4 b8 b4 d8 cis4 cis8 a4 fis8 |
  e'4. d2. r4.
  R1. |
  R
  
  
}

scoreVoiceL = \lyricmode {
  \set stanza = "1. "
За го -- дом год,  мы смот -- рим в_высь
стре -- мим -- ся по -- взрос -- леть.
Как ро -- зы див -- ны -- е цве -- тём
и хо -- чет -- ся ле -- теть!
Ис -- пол -- нить дет -- ски -- е меч -- ты,
ку -- пить ве -- ло -- си -- пед,
и что -- ни -- будь и -- зоб -- ре -- сти,
о -- ста -- вив в_жиз -- ни след.


\set stanza = "Припев: " Зла -- то -- е солн -- це, не -- ба си -- не -- ва,
и пес -- ня ру -- чей -- ком сво -- бод -- ным льёт -- ся.
Нас  ждут  ве -- ли -- ки -- е де -- ла.
Мы ю -- ны -- е_— нам так лег -- ко по -- ёт -- ся.
\set stanza = "2. " По_-/
}

scoreVoiceLL = \lyricmode {
  \set stanza = "2. "
 По -- всю -- ду мно -- же -- ство чу -- дес,
нам встре -- тит -- ся в_пу -- ти.
До -- стиг -- нуть хо -- чет -- ся не -- бес,
на Э -- ве -- рест взой -- ти.
У -- ви -- деть, что на дне мор -- ском,
весь кос -- мос и -- зу -- чить.
Все -- го до -- стичь сво -- им у -- мом,
под мир -- ным не -- бом жить.


\repeat unfold 10 \skip 1
зве -- нит ру -- чей и в_жар -- ком лет -- нем зно -- е.
\repeat unfold 12 \skip 1  мы бу -- ду -- ще -- е стро -- им.


Зла -- то -- е солн -- це, не -- ба си -- не -- ва,
зве -- нит ру -- чей и в_жар -- ком лет -- нем зно -- е.
Нас ждут ве -- ли -- ки -- е де -- ла.
Мы ю -- ны -- е_— мы бу -- ду -- ще -- е стро -- им.
Мы ю -- ны -- е_— мы бу -- ду -- ще -- е стро -- им.
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }

%\addlyrics { \scoreVoiceLL }
%\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c' {
  \global
  \voiceOne
    r8 fis a  d fis, a r fis a d a fis |
  r fis a d fis, a r fis a d a fis |
  \repeat volta 2 {
  r fis a d fis, a r ais cis fis ais, cis | \abr
  
  r d, fis b d, fis r gis b e gis, b |
  r b d g b, d r fis, a d fis, a |
  r e g b e, g r ais cis fis ais, cis \abr
  
  r d, fis b d, fis r a cis fis a, cis |
  r b d g b, d r fis, a d fis, a |
  r b d r cis e r a, cis r d fis | \abr
  
  r b, d r a cis r fis, a d a fis |
  r fis a d fis, a r fis a d a fis |
  r fis a d fis, a r ais cis fis ais, cis | \abr
  
  % page 2
  r d, fis b d, fis r d fis b d, fis |
  r b d g b, d r fis, a d fis, a |
  r ais cis fis ais, cis r d, fis b d, fis | \abr
  
  r b d g b, d r ais cis fis ais, cis |
  r d, fis b d, fis r d fis b d, fis |
  r b d g b, d r cis e a cis, e | \abr
  
  r fis, a d fis, a r fis a d a fis
  
  }
  r fis a d fis, a r ais cis fis ais, cis |
  r d, fis b d, fis r d fis b d, fis | \abr
  
  r b d g b, d r fis, a d fis, a |
  r ais cis fis ais, cis r d, fis b d, fis |
  r b d g b, d r ais cis fis ais, cis | \abr
  
  % page 3
  r d, fis b d, fis r d fis b d, fis |
  r b d g b , d r cis e a cis, e |
  r fis, a d fis, a r fis a d fis, a | \abr
  
  r b d g b, d r cis e a cis, e |
  r fis, a d fis, a r d, a' fis4. |
  d a fis d~  d1. \bar "|."
}

scoreInstrLeft = \relative c {
  \global
  \voiceTwo
  d2. d4. a' |
  d,2. d4. a' |
  \repeat volta 2 {
  d,2. fis |   
  b, e |
  g, d' |
  cis fis |
  
  b, fis' |
  g d |
  g,4. a fis b |
  g a d2. |
  d d4. a' |
  d,2. fis |
  
  % page 2
  b, a |
  g d' |
  fis b, |
  
  g fis |
  b a |
  g a |
  
  d d4. a'
  }
  d,2. fis |
  b, a |
  
  g d' |
  fis b, |
  g fis |
  
  % page 3
  b a |
  g a |
  d cis |
  g a |
  d d4. r |
  s1.
  s1.
}

chordsguitar =\new ChordNames {
    \chordmode {
      d2. d4. a
      d2. d4. a  
      fis2. a2. |
      d g |
      b fis |
      e a |
      d fis |
      b fis |
      
    }
  }


scoreInstrPart =   << 
  
  \new Staff \with {
%    instrumentName = "НАР"
  }
  <<
    \clef "treble_8"
     { \new Voice \voiceOne \scoreInstrRight }
    { \new Voice \voiceTwo \scoreInstrLeft }
  >> 
>>
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

\bookpart {
  \header {
%  piece = "Aes-dur"
  }
  \score {
%    \transpose g as
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      <<
  %      \chordsguitar
      \scoreInstrPart
      >>
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff       % \accidentalStyle piano-cautionary
        % удаляем обозначение темпа из общего плана
        \RemoveEmptyStaves
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}



