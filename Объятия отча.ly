\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "7. Объятия Отча"
  subtitle = "(киевский распев)"
  composer = "Переложение Гр. Львовского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
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

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Спокойно, с умилением"
  \secondbar  
  \partial 4 fis4 |
  g4.( a8 b4 a ) |
  g fis e( fis) |
  g2 r4 g8[( a]) |
  b4-> b b8[( c]) b[( a]) | \abr
  g4( b) a2 |
  b8[( a b g]) a[( b a g]) |
  fis[( g a b]) a4.( g8) |
  fis4 g8[( b]) b4 ais | \abr
  b2\fermata r4 g8 a |
  b4-> b b8[( c]) b a |
  g[( a]) b g a2 | \abr
  b8[( a b g]) a[( b a g]) |
  fis[( g]) a[( b]) a4.->( g8) |
  fis4 g8[( b]) b4( ais) |
  b2\fermata r4 g8[( a] \abr
  b4) b b8[( c]) b[( a]) |
  g4-> b a2 |
  b8[( a b g]) a[( b a g]) |
  fis[( g]) a[( b]) a4.( g8) | \abr
  fis4 g8[( b]) b4( ais) |
  b2\fermata r4 g8[( a]) |
  b4-> b b8[( c b a] |
  g4) b a2 | \abr
  b8[( a b g] a4)-> a8 g |
  fis[( g]) a[( b]) a4.( g8 |
  fis4) g8[( b]) d4 cis |
  b1~ | \abr
  b2\fermata b8[( c b a] |
  g4) b a2 |
  b8[( a]) b[( g]) a[(-> b a g]) \abr
  fis[( g a b]) a4.->( g8) |
  fis4 g b cis |
  d2^\markup\italic"rit."( cis4.. b16) |
  b1\fermata \bar "|."
  
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  \partial 4 dis4 |
  e4.( fis8 g4 fis) |
  e4 d cis( dis) |
  e2 r4 e8[( fis]) |
  g4 g g8[( a]) g8[( fis]) |
  g2 g4( fis) |
  g2 fis4.( e8) |
  dis[( e fis g]) fis4.( e8) |
  dis4 e8[( g]) fis4 e |
  d2 r4  e8 fis |
  g4 g g8[( a]) g fis |
  g4 g8 g g4( fis) |
  g2 fis4.( e8) |
  dis[( e]) fis[( g]) fis4.( e8) |
  dis4 e8[( g]) fis4( e) |
  d2 r4 e8[( fis]
  g4) g g8[( a]) g[( fis]) |
  g4 g g( fis) |
  g2 fis4.( e8) |
  dis[( e]) fis[( g]) fis4.( e8) |
  dis4 e8[( g]) fis4( e) |
  d2 r4 e8[( fis]) |
  g4 g g8[( a g fis] |
  g4) g g( fis) |
  g2~( g8[ fis]) fis e |
  dis[( e]) fis[( g]) fis4.( e8 |
  dis4) e8[( g]) fis[( gis]) ais4 |
  b2( a4 g |
  fis2) g8[( a g fis] |
  g4) g g( fis) |
  fis fis8[( e]) dis4.( e8) |
  dis[( e fis g]) fis4.( e8) |
  dis4 e g g |
  fis( b2 ais8. b16) |
  fis1 |
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \partial 4 b4 |
  b4.( d8~ d2 ) |
  a4 a a4.( b8) |
  b2 r4 b8[( d]) |
  d4 d d d |
  d( b8[ cis]) d2 |
  d d4.( b8) |
  b2 dis4.( e8) |
  b4 b8[( cis]) d4 cis |
  b2 r4 b8 d |
  d4 d d d8 d |
  d4 d8 d d2 |
  d d4.( b8) |
  b4 b b8[( cis dis e]) |
  b4 b8[( cis])\< d4( cis)\> |
  b2 r4\! b8[( d] |
  d4) d d d |
  d b8[( cis]) d2 |
  d d4.( b8) |
  b4 b b8[( c] b4) |
  b b8[( cis]) d4( cis) |
  b2 r4 b8[( d]) |
  d4 d d2~ |
  d4 b8[( cis]) d2 |
  d2.\p d8 b |
  b4 b b8[( c] b4 |
  b) b8[( cis]) d4\< e |
  d2( dis4\!) e4\> |
  e( dis)\fermata\! d2~\<\pp
  d4\> b8[( cis])\! d2 |
  b4 b b2 |
  b2 b8[( cis\> dis e]) |
  b4\< b e e |
  d2\>(  e)
  d1\!
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \partial 4 b4 |
  e4.( d8 g,4 d') |
  cis d a'( fis) |
  e2 r4 e8[( d]) |
  g4-> g g g,8[( a]) |
  b4( g) d'2 |
  g,4.( b8) d4.( e8) |
  b2 b |
  b4 e fis <fis fis,> |
  <fis b,>2\fermata r4 e8 d |
  g4-> g g g,8 a |
  b[( a]) g b d2 |
  g,4.( b8) d4.( e8) |
  b4 b b2-> |
  b4 e << { fis4( fis,) } \new Voice { \voiceFour fis'2 } >> |
  <fis b,>2\fermata r4 e8[( d] |
  g4) g g g,8[( a]) |
  b4-> g d'2 |
  g,4.( b8) d4.( e8) |
  b4 b dis4.( e8) |
  b4 e fis2 |
  <fis b,>\fermata r4 e8[( d]) |
  g4-> g g,4.( a8 |
  b4) g d'2
  g,4.( b8) d4-> d8 e |
  b4 b dis4.( e8 |
  b4) e fis fis |
  g2( fis4) e |
  b2\fermata g4.( a8 |
  b4) g d'2 |
  dis4 dis8[( e]) fis4.->( g8) |
  b2 b, |
  b4 <g g'> <e e'> q |
  <fis fis'>1 |
  b\fermata
}

lyricscore = \lyricmode {
  О -- бъя -- ти -- я о -- тча о -- тве -- рзти ми по --
  тщи -- ся; __ блу -- дно мо -- е __ и -- ждих жи -- ти --
  е на бо -- га -- тство не и -- жди -- ва -- е -- мо -- е __
  взи -- ра -- яй ще -- дрот __ Тво -- их, Спа -- се, ны --
  не о -- бни -- щав -- ше -- е __ мо -- е __ да не пре -- 
  зри -- ши се -- рдце. К_Те -- бе бо, Го -- спо -- ди, __
  Го -- спо -- ди, у -- ми -- ле -- ни -- ем зо -- \set associatedVoice = "tenor" ву: зо --
  \set associatedVoice = "alto" ву: со -- гре -- ших, __ со -- гре -- ших __
  на не -- бо и пред То -- бо -- ю.
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
      \context Lyrics = "sopranos" {
        \lyricsto "alto" {
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
        \lyricsto "alto" {
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
