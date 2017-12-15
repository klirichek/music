\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Проведёмте, друзья, эту ночь веселей"
  subtitle = "(Студенческая песня)"
  title = "Застольная"
  subtitle = "(на свадьбу)"
  %subsubtitle =  "(Кристины и Николая)"
  composer = "обр. Свешникова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \minor
  \time 3/4
  \numericTimeSignature
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
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  R4 
  \repeat volta 3 {
  R2.*7
  r2^\markup\italic"Припев."
  f8\fermata\f es\fermata
  \tempo "Быстро" d4 d g |
  <f d>2 <g es>8 <f d> |
  es4 c f |
  d2 g,8 a |
  bes4 a g |
  d'2 a8 bes |
  c4 bes a |
  g2 \breathes <d' f>4 |
  q2 <es g>4 |
  <d f>2 d4 |
  es d c |
  d2 \breathes <d f>4\p |
  q2 <es g>4 |
  <d f>2 d4 |
  es d c |
  bes2 \breathes g8\f a |
  bes4 a g |
  d'2 a8 bes |
  c4 bes a |
  g2 \breathes g8 a |
  bes4 a g |
  
  } \alternative {
    { d'2 a8 bes |
     c4 bes a |
     g2 r4 }
    { d'2 d8 d d4 e fis g2\fermata }
  }
  \bar "|."
  
}


altvoice = \relative c'' {
  \global
  \dynamicNeutral  
  R4 \repeat volta 3 {
    R2.*7
    r2 d8 c
  bes4 bes es 
  bes2 bes8 bes |
  a4 a a |
  bes2 g8 a |
  bes4 a g |
  fis2 fis8 g |
  a4 g fis |
  g2 bes4 |
  bes2 bes4 |
  bes2 bes4 |
  c4 bes a |
  bes2 bes4 |
  bes2 bes4 |
  bes2 bes4 |
  c4 bes a |
  bes2 g8 a |
  bes4 a g |
  fis2 fis8 g |
  a4 g fis |
  g2 g8 a |
  bes4 a g |
  } \alternative {
    { fis2 fis8 g |
      a4 g fis |
      g2 r4 }
    { fis2 fis8 g |
      a4 g a |
      b2 } 
  }
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  s4 \repeat volta 3 { s2.*3 s2
  g8. a16 |
  bes4 a g |
  g'2\fermata f8. es16 |
  d4 a bes |
  g2\fermata \breathes f'8 es |
  d4 d g |
  f2 g8 f |
  c4 es es|
  d2 g,8 a |
  d4 c bes |
  a2 c8 bes |
  a4 d c |
  bes2 \breathes f'4 |
  f2 g4 |
  f2 f4 |
  g f es |
  d2 \breathes f4 |
  f2 g4 |
  f2 f4 |
  g f es |
  d2 \breathes g,8 a |
  d4 c bes |
  a2 c8 bes |
  a4 d c |
  bes2 \breathes g8 a |
  d4 c bes |
  } \alternative
  {
    { a2 c8 bes |
      a4 d c |
      bes2 r4
    } 
    {
      a2 a8 bes |
      c4 d d |
      d2 }
  }  
}


bassvoice = \relative c' {
  \global
  \dynamicDown
  \tempo "Медленно, свободно"
  \partial 4 g8.\mf a16 |
  \repeat volta 3 {
  bes2 a8 g |
  d'2 \breathe es8. d16 |
  c4 bes a |
  d2 \breathe 
  g,8. a16 |
  bes4 a g |
  es'2\fermata d8. c16 |
  bes4 a <fis d> |
  g2\fermata f8\fermata\f f\fermata
  bes4 bes bes |
  bes2 bes8 bes |
  f4 f f |
  bes2 g8 a |
  bes4 a g |
  d2 d8 d |
  d4 d d |
  g2 bes4 |
  bes2 bes4 |
  bes2 bes4 |
  f g a |
  bes2 bes4 |
  bes2 bes4 |
  bes2 bes4 |
  f g a |
  bes2 g8 a |
  bes4 a g |
  d2 d8 d |
  d4 d d |
  g2 g8 a |
  bes4 a g |
  } \alternative {
    { d2 d8 d d4 d d g2 g8.\mf a16 }
    { d,2 d8 d d4 bes' a |
      g2\fermata }
  }
}

lyricscore = \lyricmode {
  \set stanza = "1." На -- ша жизнь ко -- ро -- тка, всё у -- но -- сит с_со -- бой.
  На -- ша ю -- ность, дру -- зья, про -- не -- сё -- тся стре -- лой.
  \repeat unfold 66 \skip 1
  \set stanza = "2." (Вы -- пьем)
}

lyricscoretwo = \lyricmode {
  \set stanza = "2." Вы -- пьем пе -- рвый бо -- кал
  все мы за мо -- ло -- дых:
  за __ _ _ _ и __ _ 
  и ро -- ди -- те -- лей их.
  \repeat unfold 66 \skip 1
  \set stanza = "3." (А по_-)
}


lyricscorethree = \lyricmode {
  \set stanza = "3." А по -- сле -- дний бо -- кал бу -- дем все по -- дни -- мать
  За Ве -- ли -- ку -- ю Русь
  на -- шу Ро -- ди -- ну мать!
}

lyricpripev = \lyricmode {
  Про -- ве -- дём -- те_ж, дру -- зья, э -- тот день ве -- се -- лей
  и пусть на -- ша се -- мья со -- бе -- рё -- тся те -- сней.
  На -- лей, на -- лей бо -- ка -- лы пол -- ней!
  На -- лей, на -- лей бо -- ка -- лы пол -- ней!
  И пусть на -- ша се -- мья со -- бе -- рё -- тся те -- сней.
  И пусть на -- ша се -- мья со -- бе -- рё -- тся те -- сней.
  мья со -- бе -- рё -- тся те -- сней!
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
  \score {
      \transpose g f {
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
      \new Lyrics \lyricsto "bass" { \lyricscore }
      \new Lyrics \lyricsto "bass" { \lyricscoretwo }
      \new Lyrics \lyricsto "bass" { \lyricscorethree }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricpripev
        }
      }
    >>
      }  % transposeµ
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
      \tempo 4=120
    }
  }
}
