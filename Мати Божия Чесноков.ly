\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Мати Божия"
  composer = "Павел Чесноков"
  opus = "«Во дни брани» №5"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

vbreathe = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicDown
  \tempo "Largo (Медленно)" 4=50
  
  \secondbar  
  <b fis'>2\mf\> b4 |
  <b cis>4.\!\> q8 q4~ |
  q8\! r <b d>4\< <b cis> |
  <b fis'>2\! b4 | \abr
  
  <b cis>4 q\< <b d> |
  <cis e>4.\! q8 d <cis e> |
  <d fis>4 <b d> <cis e> |
  <d fis>4.\f q8 d d | \abr
  
  <d g>4\f q d8 <d e> |
  <d fis>4. q8 q4~ |
  q8 r fis,4\p fis |
  fis4. fis8 fis4~ | \abr
  
  fis8 r\< gis4 gis\! |
  ais2.~\> |
  ais8\! r fis4\mf\< fis |
  d'2.\!( |
  cis2) cis4 | \abr
  
  b4. b8\> b b\! |
  a2 a4 |
  a4. g8\> g g\! | \abr
  
  fis4. fis8 e e |
  a2\< b4 |
  d\! d e |
  fis4.\mf d8 d4~ | \abr
  
  d8 r d4\< fis |
  a2.\ff |
  g2 d4 |
  fis fis e8 e | \abr
  
  d4.\> d8 a\mf a |
  bes2\> g4\! |
  fis\< fis\! \vbreathe e8\> e |
  a2.\!~ \abr
  
  a4( b, cis) |
  fis2\mf\> b,4\! |
  cis4.\> cis8 cis4~\! |
  cis8 r fis4\< b,\! | \abr
  
  cis2\>~ cis8 r\! |
  a'2\mf\> b,4\! |
  cis4. cis8 cis4~ |
  cis8 r a'4\< b,\! | \abr
  
  cis2\>~ cis8 r\! |
  r4 fis\< b,\! |
  cis2\>~ cis8 r\! |
  r4 fis b, |
  cis2\>~ cis8 r\! | \abr
  
  a'2\p a,4 |
  fis'2.\>~ |
  fis2 fis4\! |
  fis2.\p\>~ |
  fis~ |
  fis4\! r r \bar "|."
  
}


altvoice = \relative c' {
  \global
  \dynamicDown  
  fis2 fis4 |
  e4. e8 e4~ |
  e8 r fis4 g |
  fis2 fis4 |
  
  g g fis |
  a4. a8 b a |
  a4 a a |
  a4. a8 a a |
  
  g4 g b8 b |
  a4. a8 a4~ |
  a8 r fis4 fis |
  fis4. fis8 fis4~ |
  
  fis8 r fis4 fis |
  fis2.~ |
  fis8 r r4 r |
  r d\mf d |
  a'2 a4 |
  
  g4. g8 g g |
  fis2 d4 |
  d4. d8 d d |
  
  cis4. cis8 cis cis |
  cis4( d) a' |
  g g g |
  fis4. fis8 fis4~ |
  
  fis8 r d'4 d |
  dis2. |
  d2 d4 |
  cis cis cis8 cis |
  
  a4. a8 d, d |
  d2 g4 |
  fis fis e8 e |
  a2.~ |
  
  a4( b, cis) |
  fis2 b,4 |
  cis4. cis8 cis4~ |
  cis8 r fis4 b, |
  
  cis2~ cis8 r |
  a'2 b,4 |
  cis4. cis8 cis4~ |
  cis8 r a'4 b, |
  
  cis2~ cis8 r |
  r4 fis b, |
  cis2~ cis8 r |
  r4 fis b, |
  cis2~ cis8 r |
  
  a'2 a,4 |
  fis'2.~ |
  fis2 fis4 |
  fis2.~ |
  fis~ |
  fis4 r r

}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  d2 <d b>4 |
  b4. b8 b4~ |
  b8 r b4 b |
  b2 b4 |
  
  b <b cis> d |
  <cis e>4. q8 d <cis e> |
  <d fis>4 <b d> <cis e> |
  <d fis>4. q8 q q |
  
  <d g>4 q d8 <d e> |
  <d fis>4. q8 q4~ |
  q8 r a4 a |
  <ais e'>4. q8 q4~ |
  
  q8 r <b d>4 q |
  cis2.~ |
  cis8 r r4 r |
  fis,2 fis4 |
  fis fis\mf fis |
  
  b2 b4 |
  b4. b8 b b |
  b4. b8 b b |
  
  a4. a8 a a |
  a2 d4 |
  b b cis |
  d4. d8 d4~ |
  
  d8 r d4 <d fis> |
  <dis a'>2. |
  <d g>2 d4 |
  <cis fis> q <cis e>8 q |
  
  d4. d8 a a |
  g2 <bes d>4 |
  cis4 cis \vbreathe <cis a>8 q |
  << {cis4( d2) } \new Voice {\voiceFour a2( b?4) } >>
  
  <g b>2 q4 |
  <fis a>\p q r |
  r <g b> <g a> |
  <fis a>4. q8 q r |
  
  r4 <g b>\pp <g a> |
  <fis a>4~ q8 r r4 |
  r <g b>\pp <g a> |
  <fis a>4. q8 q r |
  
  r4 <g b>\pp <g a> |
  <fis a>4~ q8  r r4 |
  r <g b>\pp <g a> |
  <fis a>4~ q8 r r4 |
  r <g b>\pp <g a> |
  
  <fis a>4~ q8 r r4 |
  r <fis a>\pp q |
  q~ q8 r r4 |
  r4 q4\pp q |
  q2.~ |
  q4 r r
}


bassvoice = \relative c' {
  \global
  \dynamicDown
  b2 a4 |
  g4. g8 g4~ |
  g8 r fis4 e |
  d2 d4 |
  
  e e b' |
  a4. a8 b a |
  <a d,>4 <a fis> a |
  d4. d8 c c |
  
  b4 b g8 g |
  <d a'>4. q8 q4~ |
  q8 r d4 d |
  <cis fis>4. q8 q4~ |
  q8 r <b fis'>4 q |
  <fis fis'>2.~ |
  
  q8 r r4 r |
  b2.~ |
  b2 b4
  
  b b b |
  d2 fis4 |
  e4. e8 e e |
  
  a4. a8 g g |
  fis2 fis4 |
  e e a |
  <a d,>4. q8 q4~ |
  
  q8 r d4 c |
  b2. |
  <b e,>2 <bes e,>4 |
  a a <a g>8 q |
  
  <a fis>4. q8 fis fis |
  e2 e4 |
  <a a,>4 q <g g,>8 q |
  <fis fis,>2. |
  
  <e e,>2 a,4 |
  <a d,> q r |
  r q\pp q |
  q4. q8 q r |
  
  r4 q q |
  q4~ q8 r r4 |
  r q q |
  q4. q8 q r |
  
  r4 q q |
  q~ q8 r r4 |
  r q q |
  q~ q8 r r4 |
  r q q |
  
  q~ q8 r r4 |
  r q q |
  q~ q8 r r4 |
  r q q |
  q2.~ |
  q4 r r
  
}

lyricscores = \lyricmode {
  \repeat unfold 38 \skip 1
  и сво -- им, __
  
}

lyricscorea = \lyricmode {
  Ма -- ти Бо -- жи -- я, __ со -- хра -- ни под
  кро -- вом Тво -- им Хри -- сто -- лю -- би -- во -- е во -- и -- нство и
  ца -- рство все -- ро -- сси -- йско -- е, __ Ма -- ти Бо -- жи -- я,
  со -- хра -- ни __ и сво -- им пред --
  ста -- те -- льством, сво -- им пре -- дста -- те -- льством, у
  Сы -- на Сво -- е -- го, __ Хри -- ста Бо -- га на -- ше -- го, __
  и -- спро -- си нам по -- бе -- ду на вра --
  ги и су -- по -- ста -- ты на -- ша, и -- спро -- си __
  Ма -- ти Бо -- жи -- я, __ со -- хра --
  ни, __ Ма -- ти Бо -- жи -- я, __ и -- спро --
  си, __ со -- хра -- ни, __ и -- спро -- си, __
  Ма -- ти Бо -- жи -- я. __
}

lyricscoret = \lyricmode {
  \repeat unfold 38 \skip 1
  и сво -- им, и сво --
  им пре -- дста -- те -- льством, пре_-
  \repeat unfold 33 \skip 1
  и -- спро -- си,
  нам по -- бе -- ду Ма -- ти Бо -- жи -- я,
  со -- хра -- ни, __ Ма -- ти Бо -- жи -- я.
  
  и -- спро -- си, __ со -- хра -- ни, __ и -- спро --
  си, __ и -- спро -- си, __ со -- хра -- ни. __
  
  
}

lyricscoreb = \lyricmode {
  \repeat unfold 38 \skip 1
  и __ сво -- им, и сво --
  им пре_-
  
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      \new Lyrics \lyricsto "alto" { \lyricscorea }
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
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
      \new Lyrics \lyricsto "bass" { \lyricscoreb }
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
          \lyricscorea
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=50
    }
  }
}
