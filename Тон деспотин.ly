\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
abr = {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }

global = {
  \key d \major
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co d4. d8 d2 d4 r d8 d\breve d8 d d4 r4
  d8 d d d4. d8 d4 r \cb \repeat volta 2 {
    \co d8 d d d d d4. d8 d4 r \cb
  }
  dis2\f dis |
  e1 |
  dis2 d |
  d1( |
  d4 cis d e |
  fis2 e4..) d16
  d2\fermata r2 \bar "||"
 
}

altvoice = \relative c' {
  \global
  fis4. fis8 fis2 fis4 r fis8 fis\breve fis8 fis fis4 r
  fis8 fis fis fis4. fis8 fis4 r
  fis8 fis fis fis fis fis4. fis8 fis4 r
  fis2 fis g1
  fis2 fis g1( fis4 g a b a2 g4..) fis16 fis2\fermata r
}

tenorvoice = \relative c' {
  \global
  a4. a8 a2 a4 r a8 a\breve a8 a a4 r
  a8 a a a4. a8 a4 r a8 a a a a a4. a8 a4 r
  b2 b b1 b2 c b1( a2 d~ d cis4..) a16 a2\fermata r
}

bassvoice = \relative c {
  \global
  \dynamicDown
  d4. d8 d2 d4 r d8 d\breve d8 d d4 r
  d8 d d d4. d8 d4 r d8 d d d d d4. d8 d4 r
  b2\f b e1 b2 a g4( a b c d e fis g a2 a,4..) d16 d2\fermata r
}

 
texts = \lyricmode { 
  Тон де -- спо -- тин ке архиере -- а и -- мон,
  Ки -- ри -- е, фи -- ла -- те. Ис по -- лла э -- ти, де -- спо -- та,
  Ис по -- лла э -- ти, де -- спо -- та
}

\bookpart {
  \header {
    title = "Тон деспотин"
    composer = "А. Львова"
    opus = "№116"
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
    %ragged-last-bottom = ##f
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
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=60
  }
}
}

