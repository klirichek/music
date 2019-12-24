\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Angels we have heard on high"
  composer = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key g \major
  \time 4/4
  %\numericTimeSignature
  
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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo "Moderato" 4=84
  \secondbar  
  \repeat volta 2 {
    b4 b b d |
    d4. c8 b2 |
    b4 a b d |
    b4. a8 g2
  } \abr
  
  \tempo 4=96
  d'2( e8 d c b |
  c2 d8 c b a |
  b2 c8 b a g |
  a4.) fis8 d2 | \abr
  
  g4 a b c |
  b2 a |
  d2( e8 d c b |
  c2 d8 c b a | \abr
  
  b2 c8 b a g |
  a4.) fis8 d2 |
  g4 a b c |
  b2( a) |
  g1 \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  \repeat volta 2 {
    g4 g g g |
    g4. g8 g2 |
    g4 fis g g |
    g fis d2 |
  }
  
  b'4 a gis e |
  e2 d4 fis |
  g2. e4 |
  fis4. fis8 fis2 |
  
  e4 d d e |
  g2 fis |
  fis4 g gis e |
  e2 d4 fis |
  
  g2. e4 |
  fis4. fis8 fis2 |
  g4 fis g a |
  a( g2 fis4) |
  g1
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \repeat volta 2 {
    d4 d e d |
    e e d2 |
    d4 d d d |
    d4. c8 b2 |
  }
    
    d2 b4 e |
    a,2. d4~ |
    d( e e8) d c b |
    d4. d8 d2 |
    
    b4 a g g |
    g( b8 d) d2 |
    d4 b2 e4 |
    a,2. d4~ |
    
    d( e e8) d c b |
    d4. a8 a2 |
    d4 d d e |
    d2.( c4) |
    b1
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \repeat volta 2 {
    g4 g e b |
    c e g2 |
    g4 d g b |
    d d, g2 |
  }
  
  g4( f e gis |
  a g fis d |
  g e c e |
  d4.) d8 d2 |
  
  e4 fis g c, |
  d( g8 b) d4( c) |
  b( g e gis |
  a g fis d |
  
  g e c e |
  d4.) d8 d2 |
  b4 d g c, |
  d1 |
  g,
}

lyricscore = \lyricmode {
   \set stanza = \markup { \dynamic "mf" } An -- gels we have heard on high
  Swee -- tly sing -- ing o'er the plains,
  
  \set stanza = \markup { \dynamic "f" } Glo -- ri -- a
  in ex -- cel -- sis De -- o, Glo --
  ri -- a in ex -- cel -- sis De -- o.
}

lyricscorea = \lyricmode {
  And the mount -- ains in re -- ply E -- cho still' their joy -- ous strains.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
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
      
      \new Lyrics = "sopranos"
      \new Lyrics \lyricsto "soprano" { \lyricscorea }
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
  
    \markup {
       \hspace #2
       \column { 2. }
       \column { \line { \dynamic "p" Shepherds, why this Jubilee? }
       \line { Why your rapturous strains prolong? }
       \line { Say, what may the tidings be, }
       \line { Which inspire your heavenly song. }
       \line { \dynamic "f" \italic "Gloria in Excelsis Deo." }}
          
       \hspace #2
       \column { 3. }
       \column { \line { \dynamic "mf" Come to Bethlehem, come and see }
       \line { Him whose birth the Angels sing, }
       \line { \dynamic "p" Come, adore on bended knee }
       \line { Th'Infant Christ, the new-born King. }
       \line { \dynamic "pp" \italic "Gloria in Excelsis Deo." }}
          
    }     
     \markup {     
       \vspace #1
       \hspace #2
       \column { 4. }
       \column { \line { \dynamic "p" See within a manger laid }
       \line { Jesus, Lord of Heaven and earth. }
       \line { \italic\bold "cr" Lend your voices, lend your aid }
       \line { To proclaim the Saviour's birth. }
       \line { \dynamic "f" \italic "Gloria in Excelsis Deo." }}
       
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
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
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
