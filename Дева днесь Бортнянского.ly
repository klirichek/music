\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\paper { 
  indent = 5
  top-margin = 15
  left-margin = 20
  right-margin = 15
  bottom-margin = 25
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
%#(set-global-staff-size 16)

global = {
  \key c \major
%  \numericTimeSignature
  \time 2/2
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \arpeggioBracket
  <c e>1\arpeggio( | <b d>2. <c e>4 | <b d>2 <a c>) | <gis b> r | <a c> <b d> | <c e> r | <c e> <b d> <c e> <d f>( |
  <c e> <b d>4) q | <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 q4 r | << { c4 b c2 }  { e4( d e fis) } >> | <b, g'>1\arpeggio | q2 r | \break
  
  <c e>1\arpeggio( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b> r | <a c>( <b d>) | <c e> r | q <b d> | <c e>( <d f> | <c e> <b d>4) q |
  <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 q4 r | << { c4 b c2 }  { e4( d e fis) } >> | <b, g'>1\arpeggio | q2\arpeggio r | \break
  
  <c e>1\p( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b> r | <a c> <b d> | <c e> r | <c e> <b d> <c e> <d f>( |
  <c e>4) q  <b d>2 | <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>2 q4 r | <c e>( <b d> <c e>) <c fis> | <b g'>1\arpeggio | q2\arpeggio r | \break
  
  <c e>1\arpeggio | <b d>2.( <c e>4 | <b d>2 <a c>) | <gis b> r | <a c> <b d> | <c e> r | <c e> <b d> <c e> <d f> | \break
  <c e>4 q  <b d>4. q8 | <c e>1 | <b d>2 <c e> | <b d>4( <g b> <a c> <b d> | <c e>4.) q8 q4 r | <c e>( <b d> <c e>) <c fis> | <b g'>2. q4 | q2 r | \break
  
  <c e>1\arpeggio | <b d>2.(\arpeggio <c e>4) | <b d>2( <a c>) | <gis b> r | <a c>( <b d>) | <c e> q4 r | <c e>2 <b d> | <c e>( <d f>) |
  <c e>2( <b d>) | <c e>1 | <b d>2( <c e>) | <b d>4( <g b> <a c>) <b d> | <c e>2 r | <c e>4( <b d>) <c e> <c fis> | <b g'>2 \breathe <c g'> |
  << { <d f?>1\arpeggio~ <d f>2 }  {s1( b2) } >> <b d>2 | <c e>1\arpeggio\fermata
  
  \bar "|."

  
}

altvoice = \relative f' {
  \global
  \autoBeamOff
  g1~( | g~ | g2 e) | e r | e g | g r | g g g g~ | g2. g4 |
  g1 | g~ g | g2 g4 r |
  a1 | d, | d2 r | 
  
  g1~ | g~ | g2 e | e r | e( g) | g r | g g g1~ | g2. g4 g1 | g~ | g | g2 g4 r | a1 | d, | d2 r |
  
  g1~ | g~ | g2 e | e r | e g | g r | g g | g g~ | g4 g g2 | g1 | g~ | g2. g4 | g2 g4 r |  a2. a4 | d,1 d2 r |
  
  g1 | g( | g2 e) | e r | e g | g r |  g g | g g | g4 g g4. g8 | g1 | g2 g | g1~ | g4. g8 g4 r | a2. a4 | d,2. d4 | d2 r |
  
  g1 | g | g2( e) | e r | e( g) | g g4 r | g2 g | g1 | g | g | g | g2. g4 | g2 r | a2 a4 a | d,2 g | a1( | g2) g | g1\fermata
  
  
  \bar "|."
  
}

bassvoice = \relative c {
  \global
  \oneVoice
  \autoBeamOff
  c'1( | g2. c4 | g2 a) | e r | a g | c, r | c' g | e b( | 
  c4 e g) g, | c( d e f) | g2( c | g1) | c2 c,4 r | a'2.( d,4) | g1 | g,2 r |
  
  c'1( | g2. c4 | g2) a | e r | a( g) | c, r | c' g | e( b | 
  c4 e g) g, | c( d e f) | g2( c | g1) | c2 c,4 r | a'2.( d,4) | g1 | g,2 r |
  
  c'1\p( | g2. c4 | g2) a | e r | a g | c, r | c' g | e b( | 
  c4) e g2 | c,4( d e f)  \break | g2( c | g2.) g4 | c2 c,4 r | a'2. d,4 | g1 | g,2 r |
  
  c'1 | g2.( c4 | g2 a) | e r | a g | c, r | c' g | e b | 
  c4 e g4. g,8 | c4( d e f) | g2 c | g1( | c4.) c,8 c4 r | a'2. d,4 | g2. g,4 | g2 r |
  
  c'1 | g2.( c4) | g2( a) | e r | a( g) | c2 c,4 r | c'2 g | e( b) | 
  c4( e g2) | c,4( d e f) | g2( c) | g2. g4 | c2 r | a2 a4 d,4 | g2 \breathe e | f1( | g2) g, | c1\fermata 
  
  \bar "|."
}


devadnes = \lyricmode {
  Де -- ва, Де -- ва днесь пре -- су -- ще -- стве -- \set associatedVoice = "bass" нна -- го __ ра -- жда -- ет, ра -- жда -- ет.
    И __ зе -- мля ве -- ртеп не -- при -- сту -- пно -- му __ при -- но -- сит, при -- но -- сит.
    А -- нге -- ли, А -- нге -- ли с_па -- сты -- рьми сла -- во -- сло -- вят, __ сла -- во -- сло -- вят, сла -- во -- сло -- вят;
    во -- лсви __ же, во -- лсви  же со зве -- здо -- ю пу -- те -- ше -- ству -- ют, __ пу -- те -- ше -- ству -- ют, пу -- те -- ше -- ству -- ют;
    нас бо ра -- ди ро -- ди -- ся О -- тро -- ча __ мла -- до, __ пре -- ве -- чный Бог, пре -- ве -- чный Бог, пре -- ве -- чный Бог.
}

\bookpart {
    \header {
    title = "Дева днесь"
    subtitle = \markup { "кондак" }
    composer = "муз. Дм. Бортнянского"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }
  \markup { \footnote " " \italic "* Тенора поют с дискантами" }

  \score {
    \header { piece = "C-dur" }
    \new ChoirStaff
    <<
      \new Staff \with {
       instrumentName = \markup { \column { "Д" "А" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "devadnes"
    
      \new Staff \with {
        instrumentName = \markup { "Б*"  }
        midiInstrument = "voice oohs"
      } <<
          \new Voice = "bass" { \clef bass \bassvoice }
      >>
      
      \context Lyrics = "devadnes" { \lyricsto "soprano" { \devadnes } }
    >>
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
      }
      \context {
        \Score
        \override StaffGrouper.staffgroup-staff-spacing.padding = #10
  
      }
    }
  }
}

\bookpart {
    \header {
    title = "Дева днесь"
    subtitle = \markup { "кондак" }
    composer = "муз. Дм. Бортнянского"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }
  \markup { \footnote " " \italic "* Тенора поют с дискантами" }

  \score {
    \header { piece = "Be-dur" }
    \transpose c bes, {
    \new ChoirStaff
    <<
      \new Staff \with {
       instrumentName = \markup { \column { "Д" "А" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "devadnes"
    
      \new Staff \with {
        instrumentName = \markup { "Б*"  }
        midiInstrument = "voice oohs"
      } <<
          \new Voice = "bass" { \clef bass \bassvoice }
      >>
      
      \context Lyrics = "devadnes" { \lyricsto "soprano" { \devadnes } }
    >>
    }
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
      }
      \context {
        \Score
        \override StaffGrouper.staffgroup-staff-spacing.padding = #10
  
      }
    }
    \midi {
      \tempo 2=120
    }
  }
}


