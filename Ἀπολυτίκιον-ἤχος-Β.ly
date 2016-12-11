\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Ἀπολυτίκιον ἤχος Β΄"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \autoBeamOff
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}
bb = {\bar ""}
be = {\bar "|"}
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  \cadenzaOn
  a4 g g e( fis g) g \bb
  f g a2 g4 f2 \be
  f4 f a g \bb \abr
  g e8[( fis] g4) g g2 \be
  a4 a g a a \bb g b( a) g g2 \be \abr
  e4 f? g a g \bb g g2 f4 e2 \be
  b'4 b b b8[( a]) g4 \bb a b c2 b \bb \abr
  b4 b a a g a a \bb g g8[( a] b4) a g2 \be
  b4 b b \bb \abr
  a a g g e f? g a a \bb g g2 f4 e2 \be
  e4 fis g g \bb \abr
  g a a g g \bb fis! g \bb
  e( fis! g a) g g2\fermata \cadenzaOff \bar "||"
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  f4 g g e( fis g) g g g f2 f4 f2
  f4 f f g g g2 g4 g2
  f4 f g f f g g2 g4 g2  
  e4 e e e e e e2 e4 e2
  g4 g g g g g g g2 g 
  g4 g g g g f f g g2 g4 g2
  g4 g g g g g g e e e e e e e2 e4 e2
  e4 fis g g 
  g f f g g g g e( fis g f) g g2\fermata
}

lyricscore = \lyricmode {
  Ὅ -- τε κα -- τῆλ -- θες  πρὸς τὸν θά -- να -- τον
  ἡ ζω -- ὴ ἡ ἀ -- θα -- να -- τος 
  τό -- τε  τὸν ᾅ -- δην ἐ -- νὲκ -- ρω -- σας,
  τῇ ἀ -- στρα -- πῇ τῆς θε -- ό -- τη -- τος· 
  ὅ -- τε δἑ καὶ τοὺς τε -- θνε -- ῶ -- τας,
  ἐκ τῶν κα -- τα -- χθο -- νί -- ων ἀ -- νε -- στη -- σας,
  πᾶ -- σαι αἱ Δυ -- νά -- μεις  τῶν ἐ -- παυ -- ρα -- νί -- ων  
  ἐκ -- ραύ -- γα -- ζον· Ζω -- ο -- δό -- τα
  Χρι -- στέ, ὁ Θε -- ὸς ἡ -- μῶν, δό -- ξα σοι.
}


\bookpart {
  \paper {
    top-margin = 15
    indent = 0
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        %instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        %shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        %instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        %shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
