\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Ныне силы небесныя… Вкусите и видите…"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}

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
  g4\p\<( a\! b a8[ g] |
  fis2)\> fis\! | \abr
  g4.( fis8)\< g4 a\! |
  b4.\> b8 b2\! |
  a b4 a | \abr
  g( fis8[ g]) a4 g |
  fis1 |
  g2. r4\fermata \bar "||" \abr
  
  g4(\p a b a8[ g] |
  fis2) fis |
  g4.( fis8) g4 a | \abr
  b2 b |
  b4( c) d c8[ b] |
  a4.->\p a8 a2 | \abr
  b2( a4) b^"<" |
  g-> fis8[ g] a4 g |
  fis2 fis |
  e1\fermata\pp \bar "||" \abr
  
  g4( a b) a8[ g] |
  fis2 fis4 fis |
  g4. fis8 g4 a | \abr
  b2 b |
  a2. a4 |
  b4 b8 b a4 b\< | \abr
  g4(\! fis8[) g]\> a4\! g |
  fis1 |
  e2. r4 | \abr \bar "||"
}

soal = \relative c'' {
  \global
  \dynamicUp
    g4\p a b a8[ g] |
  fis4 r r2 | \abr
  b4 c d c8[ b] |
  a2. r4 |
  b2( a4) b | \abr
  g( fis8[ g] a4 g |
  fis2) fis |
  e1\fermata \bar "||"
}

sopthree = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  g4\<( a\! b a8[\> g]) |
  fis2\! fis4 fis | \abr
  g4.( fis8)\< g4 a\! |
  b4.\> b8 b2\! |
  b4\<( c\! d c8[\> b])\! | \abr
  a2 a4 a |
  b2 a4\< b\! |
  g\>( fis8[ g]\! a4) g | \abr
  fis2 fis e1\fermata\pp \bar "||"

}


altvoice = \relative c' {
  \global
  \dynamicUp  
  e4( fis g fis8[ e] |
  dis2) dis | \abr
  e4.( dis8) e4 fis |
  g4. g8 g2 |
  fis fis4 fis | \abr
  e2 e4 e |
  e2( dis) |
  e2. r4
  e4( fis g fis8[ e] |
  dis2) dis |
  e4.( dis8) e4 fis | 
  g2 g |
  g4( a) b a8[ g] |
  fis4. fis8 fis2 | 
  g2( fis4) fis |
  e e e e |
  e2 dis |
  e1
  
  e4( fis g) fis8[ e] |
  dis2 dis4 dis |
  e4. dis8 e4 fis | 
  g2 g |
  fis2. fis4 |
  g g8 g fis4 fis |
  e2 e4 e |
  e2( dis) |
  e2. r4 
}

altal = \relative c' {
  \global
  \dynamicUp 
    e4 fis g fis8[ e] |
  dis4 r r2 |
  g4 a b a8[ g] |
  fis2. r4 |
  g2( fis4) fis |
  e1~ |
  e2 dis |
  e1
}

altthree = \relative c' {
  \global
  \dynamicUp  
  e4( fis g fis8[ e]) |
  dis2 dis4 dis | \abr
  e4.( dis8) e4 fis |
  g4. g8 g2 |
  g4( a b a8[ g]) |
  fis2 fis4 fis |
  g2 fis4 fis |
  e2. e4 |
  e2 dis |
  e1

}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  b1~ |
  b2 b |
  b2 b4 d?4 |
  d4. d8 d2 |
  d b4 b |
  b2 a4 b |
  c2( b) |
  e2. r4 |
  
  b1~ |
  b2 b |
  b b4 d? |
  d2 d |
  d d4 d |
  d4. d8 d2 |
  d2. b4 |
  b b a b |
  c2 b |
  e1
  b2. b4 |
  b2 b4 b |
  b4. b8 b4 d? |
  d2 d |
  d2. d4 |
  d d8 d d4 b |
  b2 a4 b |
  c2( b) |
  e2. r4
}

tenal = \relative c' {
  \global
  \dynamicUp 
  b4 b b b |
  b r r2 |
  d4 d d d |
  d2. r4 |
  d2. b4 |
  b2( a4 b |
  c2) b |
  e1
}

tenorthree = \relative c' {
  \global
  \dynamicUp 
  b1 |
  b2 b4 b |
  b2 b4 d?4 |
  d4. d8 d2 |
  d1 |
  d2 d4 d |
  d2 d4 b |
  b2( a4) b |
  c2 b |
  e1
 
}

bassvoice = \relative c {
  \global
  \dynamicDown
  e1( \p |
  b2) b  |
  e4.( b8) e4 d? |
  g4. <g g,>8 q2 |
  d2 dis4 dis |
  e2 c4 b |
  a2( b) |
  e2. r4\fermata
  
  e1\p( |
  b2) b |
  e4.( b8) e4 d? |
  g2 g |
  g g4 g |
  d4.\p d8 d2 |
  g2( d4) dis |
  e e c b |
  a2 b |
  e1\pp\fermata
  
  e2. e4 |
  b2 b4 b |
  e4. b8 e4 d? |
  g2 <g g,> |
  d2. d4 |
  g g8 g d4 dis |
  e2 c4 b |
  a2( b) |
  e2. r4 |
  
}
basal = \relative c {
  \global
  \dynamicDown
  e4\p e e e |
  b4.( c8 b4 a) |
  <g' g,> q g g |
  d2. r4 |
  g2( d4) dis |
  e2( c4 b |
  a2) b |
  e1\fermata
}

bassthree = \relative c {
  \global
  \dynamicDown
  e1 |
  b2 b4 b  |
  e4.( b8) e4 d? |
  g4. g8 g2 |
  g1 |
  d2 d4 d |
  g2 d4 dis |
  e2( c4) b |
  a2 b |
  e1\fermata\pp

  
}

lyricscore = \lyricmode {
  Ны -- не си -- лы не -- бе -- сны -- я с_на -- ми не -- ви -- ди -- мо слу -- жат:
  се __ бо вхо -- дит Царь Сла -- вы, се, 
  Же -- ртва Та -- йна -- я
  со -- ве -- рше -- на до -- ри -- но -- си -- тся.
  Ве -- ро -- ю и лю -- бо -- ви -- ю при -- сту -- пим,
  да при -- ча -- стни -- цы жи -- зни ве -- чны -- я бу -- дем.
  А -- лли -- лу -- и -- а,
  а -- лли -- лу -- и -- а,
  а -- лли -- лу -- и -- а.
}

lyrictwo = \lyricmode {
  А -- лли -- лу -- и -- а,
  а -- лли -- лу -- и -- а,
  а -- лли -- лу -- и -- а.
}

lyricthree = \lyricmode {
  Вку -- си -- те, 
  вку -- си -- те и ви -- ди -- те, вку -- си -- те и ви -- ди -- те, я -- ко
  благ Го -- сподь.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
  }
  
  \score {
    \header {
        piece = "№63 Ныне силы небесныя с нами"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
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
        instrumentName = \markup { \right-column { "Т" "Б" } }
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
      }
      %Metronome_mark_engraver
    }
  }
  
  \score {
    \header {
        piece = "Аллилуиа"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \soal }
        \new Voice  = "alto" { \voiceTwo \altal }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Т" "Б" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenal }
        \new Voice = "bass" { \voiceTwo \basal }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyrictwo
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
      }
      %Metronome_mark_engraver
    }
  }
  
  \score {
    \header {
        piece = "№72 Вкусите и видите, яко благ Господь"
    }
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopthree }
        \new Voice  = "alto" { \voiceTwo \altthree }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Т" "Б" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorthree }
        \new Voice = "bass" { \voiceTwo \bassthree }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricthree
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
        \new Voice = "soprano" { \voiceOne \sopvoice \soal \sopthree \soal}
        \new Voice  = "alto" { \voiceTwo \altvoice \altal \altthree \altal }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice \tenal \tenorthree \tenal}
        \new Voice = "bass" { \voiceTwo \bassvoice  \basal \bassthree \basal}
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore \lyrictwo \lyricthree \lyrictwo 
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
