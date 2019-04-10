\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 18)

abr = { \break }
%abr = {}

pbr = { \pageBreak }
pbr= {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

global = {
  \autoBeamOff
  \key f \major
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \mark "1."
  f4.\mf f8 g4 g |
  a2( g) |
  f2 r \bar "||" |
  
  \mark "2."
  f'4.-- e8 d[( c]) bes4 |
  a2( g) |
  f2 r \bar "||" | \abr
  
  \mark "3."
  g4.\mf-> a8 bes4 c |
  a2( g) |
  f2 r \bar "||" |
  
  \mark "4."
  c'4.\f d8 e4 f |
  g1 |
  f2 r \bar "||" | \abr
  
  \mark "5."
  d4.\mp a8 a4 bes |
  a2( g) |
  f2 r \bar "||" |
  
  \mark "6."
  g4.\p g8 f4 g |
  a2( g) |
  f2 r \bar "||" | \abr
  
  f1\mp |
  g2.( f4 |
  g2) a |
  f2 r \bar "||"
}

altvoice = \relative c' {
  \global
  c4. c8 d4 e f2( d4 e) c2 r |
  
  a'4. c8 bes[( a]) g4 f2( d4 e) c2 r |
  
  e4. f8 e4 g f( e d e) c2 r |
  
  g'4. g8 bes4 a bes1 a2 r |
  
  f4. f8 f4 f f2( d4 e) c2 r |
  
  d4. d8 c4 e f( e d e) c2 r |
  
  c1 d2.( c4 d2) e c r 
  
  
}

tenorvoice = \relative c' {
  \global
   a4. a8 bes4 bes c2( bes) a2 r |
   
   c4. c8 d4 e f( c bes2) a2 r |
   
   c4. c8 c4 c c2( bes) a2 r |
   
   e'4. f8 g4 f f( e d e) c2 r |
   
   a4. d8 d4 d c2( bes) a2 r |
   
   bes4. bes8 a4 bes c2( bes) a2 r |
   
   a1 bes2.( a4 bes2) bes a2 r 
}

bassvoice = \relative c {
  \global
   f4. f8 f4 f f1 f2 r |
   f4.-- f8 f4 f <f f,>1 q2 r |
   bes4.-> a8 g4 e f1 f2 r |
   c'4. c8 c4 c c2( c,) f2 r |
   d4. d8 d[( c]) bes4 <f f'>1 q2 r |
   q4. q8 q4 q q1 q2 r |
   q1 q~ q q2 r
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
 Ки -- ри -- е, э -- лей -- сон.
 Ки -- ри -- е, э -- лей -- сон.
 Ки -- ри -- е, э -- лей -- сон.
 Ки -- ри -- е, э -- лей -- сон.
 Ки -- ри -- е, э -- лей -- сон.
 Ки -- ри -- е, э -- лей -- сон.
 Си, Ки -- ри -- е.
}


\bookpart {
  \header {
    title = "Великая ектения"
    subtitle = ""
    composer = "Дикий"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 0
    %ragged-bottom = ##f
    ragged-last-bottom = ##f
    ragged-last = ##t
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
  >>
  \layout {
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=90
  }
}
}

