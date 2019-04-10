\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Утренняя молитва"
  composer = "П. Чайковский"
  poet = "сл. В. Лунина"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
}
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  a4\p\( a4. g8 |
  bes4 a2\) \breathe |
  g4\(\< f g |
  a2.\!\) |
  a4\> d,4. g8\! | \abr
  g4\>\( c,4. e8\! |
  f4\cresc f d'8.[ g,16] |
  g2.\mf\>\) | \breathes
  a4\mp\( a4. g8 | \abr
  bes4 a4. a8\cresc |
  bes4 c d |
  e2\f\) \breathe d4 | 
  cis\>\( d4. b8 | \abr
  c4 a bes |
  a8.[ g16] g4 g |
  f\!\)\dim r f'\(\mf | \break
  e8. bes16 bes4 a8 g | \abr
  a4\) r a\(\p | 
  bes8. e,16 e4 a8 g |
  a4\) \breathe d\< c | \abr
  d2 e4\> |
  f2 r4\! |
  R2.*2 \bar "|."
  
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  f4 f4. e8 |
  f4 f2 |
  e4 d e |
  e2. |
  d4 d2 |
  b4 c4. c8 |
  c4 d f |
  f( e8[ d] e4) | \break
  f4 f4. e8 |
  f4 f4. f8 |
  f4 a bes |
  b2. |
  a4 a g |
  g f f |
  f f e |
  c r a' |
  bes8. bes16 bes4 e,8 e |
  f4 r f |
  e8. e16 e4 e8 e |
  f4 bes a |
  b2 bes4 |
  c2 r4 |
  R2.*2
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  c4\( c4. c8 |
  d4 c2\) |
  c4\( d d |
  cis2.\) |
  c4\( b2 |
  b4 c bes |
  a bes b |
  c2.\) \breathes |
  f4 f4. e8 |
  d4 c es |
  d f f |
  e2. |
  e4\( d f |
  e f d |
  d d c8[ bes] |
  a4 r \) c\( |
  des2. |
  c4 r\) c\( |
  des2 des8 des |
  c4\) \breathe f a |
  as2 g4 |
  a2 r4 |
  R2.*2
  
}



lyricscore = \lyricmode {
 Го -- спо -- ди Бо -- же! Греш -- ных спа -- си!
 Сде -- лай, чтоб луч -- ше жи -- лось на Ру -- си
 Сде -- лай, чтоб ста -- ло те -- пло и све -- тло
 и что -- бы ве -- сен -- не -- е солн -- це взо -- шло.
 Лю -- дей и птиц, и зве -- рей про -- шу Те -- бя
 о -- бо -- грей, про -- шу Бо -- же мой!
}

lyricsalto = \lyricmode {
  \repeat unfold 40 \skip 1
 (ей) про -- шу о -- бо -- грей
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 10
    %ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = \markup { \right-column { "С1" "C2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \oneVoice \tenorvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricsalto }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
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
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" {  \sopvoice }
        \new Voice  = "alto" {  \altvoice }
        \new Voice = "tenor" {  \tenorvoice }
      >>       
      \new Lyrics = "sopranos"
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
