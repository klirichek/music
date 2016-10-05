\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

%#(set-global-staff-size 16)

\header {
   title = "Врачи России"
   subtitle = "(реконструкция песни)"
   subsubtitle = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 30
  right-margin = 15
  bottom-margin = 30
  %system-separator-markup = \slashSeparator
  %ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
}

scoreABaritoneVoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  r4 e c a | 
  g'2. f4 e4. f8 e4 b |
  f'2 e \break r4 e c a | 
  g'2. f4  a4. g8 c,4 d |
  e1 \break  r2 r4 e4 | 
  g4. f8 e4 d e4. e8 c'4 b |
  a2 a~ \break  a4 r r a |
  g4. f8 e4 d c b c d | 
  e1 \bar "||" \break
  
  r4 a,4 a' g |
  g2 f  e4 f a g |
  f2 e  \break r4 e g f |
  e d cis d  f2 e |
  c1  \break r4 a a'4. g8 |
  g2 f e4 f a g |
  f2 e \break r4 e g f |
  e4. d8 cis4 d  f2 e |
  a1 \bar "|."
}

chordsmusic = \chordmode {
  \set chordChanges = ##t
  %\set chordNameLowercaseMinor = ##t
  a1:m d:m e2 e2:7 f a:m \break
  a1:m d:m g1 c 
  c d:m e2 e:7 f1
  f d:m f e
  a2 a:7 d1:m g:7 c2:sus4 c
  a1:m d:m e2:7 e a1:m
  a2 a:7 d1:m g2 g:7 c:sus4 c
  a1:m d:m e2 e:7 a1:m
  
}
  

verseone = \lyricmode {
  Всё по -- беж -- да -- ет: го -- ды, не -- здо -- ро -- вье,
  про -- сту -- ды, хо -- лод, боль и дет -- ский плач
  лю -- дей не -- у -- го -- мон -- но -- е со -- сло -- вье,
  зо -- вут ко -- то -- рых про -- сто: рус -- ский врач.
  
  Вра -- чи Рос -- си -- и, де -- ло ва -- ше свя -- то,
  И клят -- ве Гип -- по -- кра -- та вы вер -- ны.
  Ваш труд до -- ро -- же жем -- чу -- га и зла -- та,
  у вас в_ру -- ках здо -- ро -- вье всей стра -- ны!
}


rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "baritone" \new Voice = "baritone" { \scoreABaritoneVoice }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \chordsmusic }
    \new Staff \with {
      instrumentName = "Бар."
      midiInstrument = "choir aahs"
    } 
      << \clef bass
         \new Voice = "Baritone" { \scoreABaritoneVoice }
      >>
    \new Lyrics \lyricsto "Baritone" { \verseone }
  >>
  \layout { 
    
  }
  \midi {
    \tempo 2=90
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "soprano sax" { \verseone }
    \midi { }
  }
}


