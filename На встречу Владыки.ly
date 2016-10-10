\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
%abr = {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }
stemOff = { \hide Staff.Stem }

global = {
  \autoBeamOff
  \key f \major
  \stemOff
}

sopvoice = \relative c'' {
  \global
  \co bes4 bes bes bes bes bes bes bes bes a bes( a) g2 \cb \co f4 f f f g a a a a g a bes2 \cb
  \co bes2 bes4 bes a g bes( a) g2 \cb \co f4( g) a a a a a a a a a a a a a
  g( a) bes2 \cb \co bes4 bes bes bes bes bes a g bes2 bes4 a g a2( bes a) g
  \cof \bar "||"
 
}

altvoice = \relative c'' {
  \global
  g4 g g g g g g g g f g( f) e2
  d4 d d d e f f f f e f g2
  g g4 g f e g( f) e2
  d4( e) f f f f f f f f f f f f f e( f) g2
  g4 g g g g g f e g2 g4 f e f2( g f) e
}

tenorvoice = \relative c' {
  \global
  \parenthesize c4 \repeat unfold 9 s4 c2 c
  a4 a a a c c c c c c c c2
  c \parenthesize c4 \repeat unfold 3 s4 c2 c
  a4( c) c \parenthesize c \repeat unfold 11 s4 c2 c
  \parenthesize c4 \repeat unfold 12 s4 c2 s1 c2
}

bassvoice = \relative c {
  \global
  \parenthesize c4 \repeat unfold 9 s4 c2 c
  d4 d d d c f f f f c c c2
  c \parenthesize c4 \repeat unfold 3 s4 c2 c
  d4( c) f \parenthesize f \repeat unfold 11 s4 c2 c
  \parenthesize c4 \repeat unfold 12 s4 f2( e f) c
}

 
texts = \lyricmode { 
  На го -- ру Си -- он взы -- де бла -- го -- ве -- ству -- я, и И -- е -- ру -- са -- ли -- му про -- по -- ве -- ду -- яй,
  в_кре -- по -- сти во -- зне -- сти глас: пре -- сла -- вна -- я гла -- го -- ла -- ша -- ся о те -- бе гра -- де Бо -- жий.
  Мир на И -- зра -- и -- ля, и спа -- се -- ни -- е я -- зы -- ком.
}

\bookpart {
  \header {
    title = "На встречу Владыки…"
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
    \tempo 4=120
  }
}
}

