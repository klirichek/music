\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 20)

\header {
  title = "Единородный Сыне"
  composer = "М. Речкунов (1870-1921)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key bes \major
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
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \tempo Andantino
  \secondbar  
  bes4\f bes8 bes bes bes |
  bes4. bes8 bes bes |
  bes2 bes4 |
  bes bes r8 bes | \abr
  es4 es r8 es |
  d4 d8 r d d |
  bes4 bes8 bes c^\markup\bold"rit." c |
  d2\fermata r4 \bar "||" \abr
  \tempo "a tempo"
  R2.^"3 soli"
  
  r4 r8 bes\mp c d |
  es4( d) c |
  d4.( bes8) c d |
  c4( d) es | \abr
  d c bes8[( c]) |
  g2 g4 |
  g2 r4 |
  g2^\markup{\dynamic p "tutti"} g4 |
  bes4. bes8 bes bes |
  c4 c c | \abr
  d d d |
  es2. |
  es |
  es2 es4 |
  f4 c8 c c c |
  f4. f8 f f | \abr
  g2 c,4 |
  c2.~ |
  c~ |
  c~ |
  c |
  c~ |
  c~ | \abr
  c4 r r
  r r c^\markup{\dynamic p "tutti"} |
  es2 d4 |
  c bes8[( c]) d4 |
  c2. |
  c2 r4 |
  d2\f d8 d | \abr
  d2 d4 |
  f2. |
  f2 r8 bes, |
  es4 es8 es d c |
  d4 d r | \abr
  r bes\mf c8[( d]) |
  es4. d8 c es |
  d4 c8[( bes]) c[( d]) |
  es4( d) c | \abr
  d d d |
  g2.\f |
  f4 r f |
  es2.\mf |
  d4 r d |
  bes2.(\mp |
  c2 d4) |
  d2.\fermata \bar "|."
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  bes4 bes8 bes bes a |
  g4. g8 g g |
  g2 g4 |
  f f r8 f |
  g4 g r8 g |
  fis4 fis8 r fis fis |
  g4 g8 g g g |
  fis2 r4
  
  R2. |
  r4 r8 g a bes |
  c4( bes) a |
  bes4.( g8) a bes |
  a4( bes) c |
  
  bes4 a g8[( a]) |
  g2 g4 |
  g2 r4 |
  g2 g4 |
  g4. g8 g g |
  g4 g g |
  
  bes bes bes |
  c2. |
  c |
  c2 c4 |
  as as8 as as as |
  c4. c8 c c |
  
  c2 c4 |
  c2.~ |
  c~ |
  c~ |
  c |
  c~ |
  c~ |
  
  c4 r r |
  r r c |
  es2 d4 |
  c bes8[( c]) d4 |
  c2. |
  c2 r4 |
  bes2 bes8 bes |
  
  bes2 bes4 |
  d2. |
  d2 r8 bes |
  bes4 bes8 bes bes c |
  g4 g r |
  
  r g a8[( bes]) |
  c4. bes8 a c |
  bes4 a8[( g]) a[( bes]) |
  c4( bes) a |
  
  bes bes bes |
  es2. |
  d4 r d |
  c2. |
  a4 r a |
  bes2.( |
  a2 bes4) |
  bes2.
}


tenorvoice = \relative c'' {
  \global
  \dynamicUp 
  \oneVoice bes4^\markup{\dynamic f "unis."} bes8 bes bes a |
  g4. g8 g f |
  es2 f8[( es]) |
  d4 d r8 d |
  c4 c r8 c |
  d4 d8 r d d |
  es4 es8 es es es |
  d2\fermata r4
  
  g\mp g g |
  g2. |
  g |
  g4 g g |
  g2 g4 |
  
  g g g |
  g2 g4 |
  g2 r4 |
  g2\p f4 |
  es4. es8 es es |
  es4 es es |
  
  f f f |
  as2. |
  as |
  as2 g4 |
  f f8 f f f |
  as4. as8 as as |
  
  \voiceOne g2 g4 |
  g r r |
  es f g |
  as g f |
  g2( f8[ g]) |
  es4 f g |
  as g8 f es f |
  
  c2 c8 c |
  \oneVoice
  c2^"unis." c4\p |
  es2 d4 |
  c bes8[( c]) d4 |
  c2. |
  c2 r4 |
  f2\f f8 f |
  
  bes,4( d) f |
  bes2. |
  bes2 r8 bes |
  g4 g8 g f es |
  d4 d r |
  
  g2\mf g4 |
  g2.~ |
  g2 g4 |
  g2 g4 |
  
  g2 g4 |
  bes2.\f |
  bes4 r bes |
  g2.\mf |
  fis4 r \voiceOne fis |
  g2.\mp( |
  a2 f4) |
  f2.\fermata
  
  
  
}


bassvoice = \relative c'' {
  \global
  \dynamicUp
  s2.*25
  g2 es4 |
  es4 r r |
  c d es |
  f es d |
  es2( d8[ es]) |
  c4 d es |
  f es8 d c d |
  c2 c8 c |
  s2.*19
  s2 fis4 |
  g2.( |
  f) |
  bes,
}

lyricscore = \lyricmode {
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху и
  ны -- не, и при -- сно, и во ве -- ки ве -- ков. А -- минь.
  Е -- ди -- но -- род -- ный Сы -- не и Сло -- ве
  Бо -- жий, без -- смер -- тен сый, и из -- во -- ли -- вый спа -- се -- ни -- я
  на -- ше -- го ра -- ди во -- пло -- ти -- ти -- ся от Свя -- ты -- я Бо -- го --
  ро -- ди -- цы 
  \skip 1
  рас -- пный -- ся же, Хри -- сте Бо -- же, смер -- ти -- ю
  смерь по -- пра -- вый, е -- дин сый Свя -- ты -- я Трой -- цы,
  спро -- слав -- ля -- е -- мый От -- цу и Свя -- то -- му
  Ду -- ху, спа -- си нас, спа -- си нас, спа -- си __ нас.
  
}

lyricscorealto = \lyricmode {
  \repeat unfold 27 \skip 1
  Е -- ди -- но -- род -- ный Сы -- не и
  \repeat unfold 36 \skip 1
  и Прис -- но -- де -- вы Ма -- ри -- и не -- пре -- лож -- но во -- че -- ло --
  ве -- чи -- вый -- ся:
  \repeat unfold 23 \skip 1
  спро -- слав -- ля -- е -- мый От -- цу
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 10
    ragged-bottom = ##f
  }
  \score {
      \transpose bes a {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \left-column { "C I" "C II"  } }
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
        instrumentName = \markup { \left-column { "А I" "А II"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricscorealto }
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
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
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
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
      \tempo 4=90
    }
  }
}
