\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Гимн Рождеству"
  composer = "Слова и напев Галины Кротевич"
  arranger = "Аранжировка В. Чепкасова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key e \major
  \time 3/4
  \autoBeamOff
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
  \tempo "Allegro moderato (скоро, умеренно)"
  \secondbar  
  gis4\f e e |
  gis\p e e |
  \time 4/4 r4\f fis8[( gis]) a[( gis]) a[( fis]) |
  \time 3/4 gis4 gis r | \abr
  
  gis4\f e e |
  gis\p e e |
  \time 4/4 r4\f fis8 gis a4 fis |
  \time 3/4 gis e r | \abr
  
  a2 a4 |
  gis2 gis4 |
  \time 4/4 r4 fis8 gis a4 fis |
  \time 3/4 gis4 gis r |  \abr
  
  b2 b4 |
  a2 a4 |
  \time 4/4 r4 fis8 gis a4 fis |
  \time 3/4 e4 e r | \abr
  
  e'4 e e |
  dis dis dis |
  cis2 cis4 |
  b2. | \abr
  
 
  % page 2
  a4 a a |
  gis gis gis |
  fis2 b4 |
  gis2. | \abr
  
  b4 gis gis |
  b gis gis |
  \time 4/4 r fis8 gis a gis a fis |
  \time 3/4 gis4 gis r | \abr
  
  b\f gis r |
  b\p gis r |
  \time 4/4 r fis8\f gis a4 fis |
  \time 3/4 gis gis r | \abr
  
  a2 a4 |
  gis2 gis4 |
  \time 4/4 r fis8 gis a4 fis |
  \time 3/4 gis4 gis r | \abr
  
  b2 b4 |
  a2 a4 |
  \time 4/4 r fis8 gis a4 fis |
  \time 3/4 e e r  \abr
  
  
    % page 3
  gis2.~ |
  gis( |
  a)( |
  gis)( | \abr
  
  e2.~) |
  e( |
  fis)( |
  gis2) r4 | \abr
  
  e'4 e e |
  dis dis dis |
  cis2 cis4 |
  b2. | \abr
  
  cis4 cis cis |
  e^\markup\italic"rit." e e |
  <dis fis>2 q4 |
  <e gis>2.\fermata | \abr
  \bar "||"
  
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  e4 b b |
  e b b |
  r4 dis8[( e]) fis[( e]) fis[( dis]) |
  e4 e r |
  
  e b b |
  e b b |
  r dis8 e fis4 dis |
  e b r | 
  
  e2 e4 |
  e2 e4 |
  r dis8 e fis4 dis |
  e e r |
  
  gis2 gis4 |
  e2 e4 |
  r dis8 e fis4 dis |
  b b r |
  
  gis' gis gis |
  gis gis gis |
  e2 e4 |
  gis2.
  
  % page 3
  e4 e e |
  e e e |
  dis2 dis4 |
  e2. |
  
  gis4\f e e |
  gis\p e e |
  r dis8\f e fis e fis dis |
  e4 e r |
  
  gis e r |
  gis e r |
  r dis8 e fis4 dis |
  e e r |
  
  e2 e4 |
  e2 e4 |
  r dis8 e fis4 dis |
  e e r |
  
  gis2 gis4 |
  e2 e4 |
  r dis8 e fis4 dis |
  b b r
  
    % page 2
  e2.( |
  dis)( |
  e)~ |
  e~ |
  
  e~ |
  e( |
  dis)( |
  e2) r4
  
  gis4 gis gis |
  gis gis gis |
  e2 e4 |
  gis2. |
  
  a4 a a |
  gis gis gis |
  <fis a>2 q4 |
  <gis b>2.
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  b4 gis gis |
  b gis gis |
  b b2 b4 |
  b b r |
  
  b gis gis |
  b gis gis |
  b b~ b b8 b |
  b4 gis r |
  
  cis2 cis4 |
  b2 b4 |
  r b8 b b4 b |
  b b r |
  
  b2 b4 |
  cis2 cis4 |
  r b8 b b4 a |
  gis gis r |
  
  cis4 cis cis |
  bis bis bis |
  cis2 cis4 |
  b2. |
  
    % page 3
  cis4 cis cis |
  b b b |
  b2 b4 |
  b2. |
  
  b4 b b |
  b b b |
  r b8 b b b b b |
  b4 b r |
  
  b4 b r |
  b b r |
  b2. b4 |
  b b r |
  
  cis2 cis4 |
  b2 b4 |
  r b8 b b4 b |
  b b r |
  b2 b4 |
  cis2 cis4 |
  r b8 b b4 a |
  gis gis r
  
  % page 2
  cis2.( |
  bis)( |
  cis)( |
  b)( |
  
  cis)( |
  b)~ |
  b~ |
  b2 r4 |
  
  cis4 cis cis |
  bis bis bis |
  cis2 cis4 |
  b2. |
  
  e4 e e |
  e e e |
  dis2 dis4 |
  e2.
  

}


bassvoice = \relative c {
  \global
  \dynamicUp
  e4 e e |
  e e e |
  b b2 b4 |
  e e r |
  
  e e e |
  e e e |
  b b~ b b8 b |
  e4 e r |
  
  a2 a4 |
  e2 e4 |
  r b8 b b4 b |
  e e r |
  
  e2 e4 |
  a2 a4 |
  r b,8 b b4 b |
  e e r |
  
  cis cis cis |
  gis' gis gis |
  a2 a4 |
  e2.
  
    % page 3
  a4 a a |
  e e e |
  b2 b4 |
  e2. |
  
  e4 e e |
  e e e |
  r b8 b b b b b |
  e4 e r |
  
  e e r |
  e e r |
  b2. b4 |
  e e r |
  
  a2 a4 |
  e2 e4 |
  r b8 b b4 b |
  e e r |
  
  e2 e4 |
  a2 a4 |
  r b,8 b b4 b |
  e e r
  
  % page 2
  cis2.( |
  gis')( |
  a)( |
  e)( |
  
  a)( |
  e)( |
  b)( |
  e2) r4
  
  cis4 cis cis |
  gis' gis gis |
  a2 a4 |
  e2. |
  
  a4 a a |
  e e e |
  b2 b4 |
  e2.\fermata

}



preduet = { 
  R4*128

}

duetup = \relative c'' {
  \global
  \dynamicUp
  \preduet
  e4 e e |
  dis dis dis |
  cis2 cis4 |
  b2. |
  
  a4 a a |
  gis gis gis |
  b2 b4 |
  e2\fermata r4
}

duetdown = \relative c'' {
  \global
  \dynamicUp
  \preduet
  cis4 cis cis |
  bis bis bis |
  cis2 a4 |
  gis2. |
  
  a4 a a |
  gis gis gis |
  a2 a4 |
  gis2\fermata r4
}

lyricscore = \lyricmode {
  \set stanza = "1. " Ра -- ду -- йся, ра -- ду -- йся, Хри -- стос ро -- ди -- лся.
  Ра -- ду -- йся, ра -- ду -- йся, мир наш о -- бно -- ви -- лся.
  По -- йте, по -- йте а -- нге -- ли на не -- бе.
  По -- йте, по -- йте пе -- сню о ро -- жде -- ньи.
  
  Ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е,
  Ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е.
  
   \set stanza = "2. " Ра -- ду -- йся, ра -- ду -- йся, бла -- го -- да -- тна -- я Ма -- ри -- я.
  Спа -- са, Спа -- са ми -- ру по -- да -- ри -- ла.
  По -- йте, по -- йте а -- нге -- ли на не -- бе.
  По -- йте, по -- йте пе -- сню о ро -- жде -- ньи.
  
  (м...)
  Ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е,
  ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е.
  
}

lyricscored = \lyricmode {
 
  Ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е.
  Ра -- ду -- йтесь, ра -- ду -- йтесь лю -- ди -- е.
  
}

lyricscoreb = \lyricmode {
  \repeat unfold 6 \skip 1
  Хри -- стос ро -- ди -- лся.
   \repeat unfold 6 \skip 1
  мир наш о -- бно -- ви -- лся.
  
     \repeat unfold 56 \skip 1
    по -- да -- ри -- ла.
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
      
      \new Staff = "duet" \with {
        instrumentName = "дуэт"
        shortInstrumentName = "дуэт"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "duetup" { \voiceOne \duetup }
        \new Voice  = "duetdown" { \voiceTwo \duetdown }
      >>
      
      \new Lyrics \lyricsto "duetup" { \lyricscored }
      
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
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
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \lyricscoreb }
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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
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
      \new Staff = "duet" \with {
        instrumentName = "дуэт"
        shortInstrumentName = "дуэт"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "duetup" { \voiceOne \duetup }
        \new Voice  = "duetdown" { \voiceTwo \duetdown }
      >>
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
