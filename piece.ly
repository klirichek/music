\version "2.18.2"
% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\header {
%  composer = "муз. Д.В.Аллеманова"
  %title = "Ирмосы первого канона"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

  \paper {
    top-margin = 10
    left-margin = 15
    right-margin = 10
    bottom-margin = 10
    indent = 0
    ragged-last-bottom = ##f
    ragged-last = ##f
  }

vc =  \relative c'' {
    \autoBeamOff
    \dynamicUp
    \key f \major
    \time 3/4
    g8 g f e4 c8
    e e e e f g 
    f f r r4 f8\f^\markup\italic\center-align"Голос из хора:"
  }
  
  lr = \lyricmode {
    -_сер -- ди -- я взмок и сел от -- дох -- нуть на до -- ро -- гу. «Да
  }

\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}

\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
\score {
  \new Staff {
  << \new Voice="soprano" { \vc }
  \new Lyrics \lyricsto "soprano" { \lr }
  >>
  }
   \layout { 
      \context {
        \Staff
         \remove "Time_signature_engraver"
         \remove "Bar_number_engraver"
      }
    }
}
