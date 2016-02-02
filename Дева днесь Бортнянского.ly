 \version "2.18.2"

\paper {
  #(set-default-paper-size "a4")
  
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
  <c e> <b d>4) q | <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 q4 r | << { c4 b c2 }  { e4( d e fis) } >> | <g, e'>1\arpeggio | q2 r |
  
  <c e>1\arpeggio( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b> r | <a c>( <b d>) | <c e> r | q <b d> | <c e>( <d f> | <c e> <b d>4) q |
  <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 q4 r | << { c4 b c2 }  { e4( d e fis) } >> | <g, e'>1\arpeggio | q2\arpeggio r |
  
  <c e>1\p( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b> r | <a c> <b d> | <c e> r | <c e> <b d> <c e> <d f>( |
  <c e>4) q  <b d>2 | <c e>1 | <b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>2 q4 r | <c e>( <b d> <c e>) <c fis> | <b g'>1\arpeggio | q2\arpeggio r |
  
  <c e>1\arpeggio | <b d>2.( <c e>4 | <b d>2 <a c>) | <gis b> r | <a c> <b d> | <c e> r | <c e> <b d> <c e> <d f> |
  <c e>4 q  <b d>4. q8 | <c e>1 | <b d>2 <c e> | <b d>4( <g b> <a c> <b d> | <c e>4.) q8 q4 r | <c e>( <b d> <c e>) <c fis> | <b g'>2. q4 | q2 r |
  
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
  c4) e g2 | c,4( d e f) | g2( c | g2.) g4 | c2 c,4 r | a'2. d,4 | g1 | g,2 r |
  
  c'1 | g2.( c4 | g2 a) | e r | a g | c, r | c' g | e b | 
  c4 e g4. g,8 | c4( d e f) | g2 c | g1( | c4.) c,8 c4 r | a'2. d,4 | g2. g,4 | g2 r |
  
  c'1 | g2.( c4) | g2( a) | e r | a( g) | c2 c,4 r | c'2 g | e( b) | 
  c4( e g2) | c,4( d e f) | g2( c) | g2. g4 | c2 r | a2 a4 d,4 | g2 \breathe e | f1( | g2) g, | c1\fermata 
  
  \bar "|."
}


devadnes = \lyricmode {
    Де -- ва, Де -- ва днесь пре -- су -- ще -- ствен -- на -- го раж -- да -- ет, раж -- да ет.
    И зем -- ля вер -- теп не -- при -- ступ -- но -- му при -- но -- сит, при -- но -- сит.
    Ан -- ге -- ли, Ан -- ге -- ли "с па" -- стырь -- ми сла -- во -- сло -- вят, сла -- во -- сло -- вят, сла -- во -- сло -- вят;
    вол -- сви же, вол -- сви  же со звез -- до -- ю пу -- те -- шест -- ву -- ют, пу -- те -- шест -- ву -- ют, пу -- те -- шест -- ву -- ют;
    нас бо ра -- ди ро -- ди -- ся От -- ро -- ча мла -- до, пре -- веч -- ный Бог, пре -- веч -- ный Бог, пре -- веч -- ный Бог.
}

\book {
  \header {
  title = "Дева днесь"
  subtitle = \markup { "кондак" }
  composer = "муз. Дм. Бортнянского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
\markup { \footnote " " \italic "* Тенора поют с дискантами" }

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
     instrumentName = \markup { \column { "Д" "А" } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \devadnes }
  
    \new Staff \with {
      instrumentName = \markup { "Б*"  }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "bass" { \clef bass \bassvoice }
    >>
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
  \midi {
    \tempo 4=120
  }
}
}


