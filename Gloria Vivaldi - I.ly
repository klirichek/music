\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.5)

\header {
  title = "Gloria"
  subtitle = "RV 589"
  piece = "I Gloria in excelsis Deo"
  composer = "Antonio Vivaldi (1678-1741)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globalcommon = {
  \autoBeamOff
  \set Score.skipBars = ##t
  \secondbar
}

global = {
  \key d \major
  \globalcommon
}

globalg = {
  \key g \major
  \globalcommon
}

globalf = {
  \key f \major
  \globalcommon
}

globalc = {
  \key c \major
  \globalcommon
}

%use this as temporary line break
abr = { }


% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

iL = { \override Lyrics.LyricText #'font-shape = #'italic }
nL = { \revert Lyrics.LyricText #'font-shape }


s_I = \relative c'' {
  \time 4/4
  \tempo Allegro
  \global
  \dynamicUp
  R1*16
  r2 d8.\f d16 d4 |
  d8. d16 d4 r2 |
  r2 cis8. cis16 cis4 | \abr
  cis8. cis16 cis4 r2 |
  r2 cis |
  d e |
  d d | \abr
  cis r |
  cis\p d |
  e d |
  d cis | \abr
  r a4.\f a8 |
  a2 b4. b8 |
  b2 b4. b8 |
  b2 cis4. cis8 | \abr
  cis2 cis |
  cis d |
  b b( |
  ais) b | \abr
  R1*2 |
  b4.\f b8 b2 |
  b4. b8 b2 | \abr
  b2 b |
  b1( |
  ais |
  a~) | \abr
  a |
  gis |
  gis~ |
  gis | \abr
  gis |
  R |
  cis4 cis8 cis cis4 cis |
  d2 d | \abr
  b4 b8 b b4 b |
  cis2 cis |
  cis1 |
  b2 r | \abr
  d4 d8 d d4 d |
  cis2 d |
  d( cis) |
  d r | \abr
  R1*2 |
  a4 a b2~( |
  b a~ |
  a g~ | \abr
  g1) |
  g~ |
  g4 r r2\fermata |
  d'8. d16 d4 d8 d d d | \abr
  cis2 d |
  R1*3 \bar "|."
}

a_I = \relative c' {
  \global
  \dynamicDown
  R1*16
  r2 fis8. fis16 fis4 |
  fis8. fis16 fis4 r2 |
  r2 e8. e16 e4 |
  e8. e16 e4 r2 |
  r e |
  fis g |
  fis e |
  e r |
  e fis |
  g fis |
  e e |
  r d4. d8 |
  d2 d4. d8 |
  d2 e4. e8 |
  e2 e4. e8 |
  e2 fis |
  fis fis |
  fis fis~ |
  fis fis |
  R1*2 fis4. fis8 fis2 |
  fis4. fis8 fis2 |
  g2 g |
  gis1( |
  fis2 e |
  dis1~) |
  dis |
  e |
  dis~ |
  dis |
  e |
  R1 |
  fis4 fis8 fis fis4 fis |
  fis2 fis |
  e4 e8 e e4 e |
  e2 a |
  a1 |
  gis2 r |
  gis4 gis8 gis gis4 gis |
  g2 fis |
  e1 |
  fis2 r |
  R1*2 |
  r2 fis4 fis |
  g2( e |
  fis d |
  e1) |
  e~ |
  e4 r r2 |
  fis8. fis16 fis4 e8 e e e |
  e2 fis |
  R1*3
}


t_I = \relative c' {
  \global
  \dynamicUp
  R1*16
  r2 a8.\f a16 a4 |
  a8. a16 a4 r2 |
  r2 a8. a16 a4 |
  a8. a16 a4 r2 |
  r2 cis |
  a cis |
  a a |
  a r |
  cis\p a |
  cis a |
  a a |
  r2 fis4.\f fis8 |
  fis2 b4. b8 |
  b2 gis4. gis8 |
  gis2 cis4. cis8 |
  cis2 ais |
  ais b |
  d cis~ |
  cis d |
  R1*2 |
  d4.\f d8 d2 |
  dis4. dis8 dis2 |
  e2 e |
  eis1( |
  cis |
  b |
  bis) |
  cis |
  cis( |
  bis) |
  cis |
  R1 |
  cis4 cis8 cis e4 e |
  d2 d |
  d4 d8 d d4 d |
  cis2 e |
  fis1 |
  b,2 r |
  b4 b8 b b4 e |
  e( cis) a2 |
  a1 |
  a2 r |
  R1*2 |
  d2 d |
  e1( |
  d |
  cis) |
  cis~ |
  cis4 r r2 |
  a8. a16 a4 a8 a a a |
  a2 a |
  R1*3
}


b_I = \relative c {
  \global
  \dynamicDown
  R1*16
  r2 d8. d16 d4 |
  d8. d16 d4 r2 |
  r2 a8. a16 a4 |
  a8. a16 a4 r2 |
  r a' |
  a a |
  a a |
  a r |
  a a |
  a a |
  a a |
  r d,4. d8 |
  d2 g4. g8 |
  g2 e4. e8 |
  e2 a4. a8 |
  a2 fis |
  fis fis |
  fis fis~ |
  fis b, |
  R1*2 |
  b'4. b8 b2 |
  a4. a8 a2 |
  g2 g |
  cis,1( |
  fis~) |
  fis~ |
  fis |
  cis |
  gis'~ |
  gis |
  cis, |
  R1 |
  ais'4 ais8 ais ais4 ais |
  b2 b |
  gis4 gis8 gis gis4 gis |
  a2 a |
  dis,1 |
  e2 r |
  e4 e8 e e4 e |
  a,2 d |
  a'( a,) |
  d r |
  R1*2 |
  r2 d4 d |
  cis1( |
  b |
  a) |
  a~ |
  a4 r r2\fermata |
  d8. d16 d4 a'8 a a a |
  a,2 d |
  R1*3
}

l_I = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a
  in ex -- cel -- sis De -- o,
  in ex -- cel -- sis De -- o.
  Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a
  in ex -- cel -- sis De -- o.
  Glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o.
  Glo -- ri -- a in ex -- cel -- sis, 
  glo -- ri -- a in ex -- cel -- sis De -- o.
  Glo -- ri -- a in ex -- cel -- sis De -- o, 
  in ex -- cel -- sis, __ glo -- ri -- a in ex -- cel -- sis De -- o.
}

l_cI = \lyricmode {
  \repeat unfold 79 \skip 1
  in ex -- cel
}

pianoR = \relative c' {
  \key d \major
  \tempo Allegro
  d8\f d' d, d d d' d, d |
  d fis16 g a8 g fis fis16 g a8 g |
  fis d' d, d d d' d, d |
  d << \new Voice { \voiceOne fis'16 g a g a g fis8 fis16 g a g a g }
       \new Voice { \voiceTwo d16 e fis e fis e d8 d16 e fis r r8} >>|
  <fis d>8 d d, d d d' d, d |
  d << \new Voice { \voiceOne fis'16 g a g a g fis8 fis16 g a g a g }
       \new Voice { \voiceTwo d16 e fis e fis e d8 d16 e fis r r8} >>|
  <fis d>8 d d, d d d' d, d |
  d <d' fis>16 <e g> <fis a> e <fis a> d \repeat tremolo 4 { <fis b>16 d }
  \repeat tremolo 4 { <g b> e } \repeat tremolo 4 { <e a> cis } |
  \repeat tremolo 4 { <fis a> d } \repeat tremolo 4 { <d g> b } |
  \repeat tremolo 4 { <e g> cis } \repeat tremolo 4 { <cis fis> a } |
  \repeat tremolo 4 { <d fis> b } \repeat tremolo 4 { <b e> g } |
  \repeat tremolo 4 { <e' g> cis } \repeat tremolo 4 { <e g> cis } |
  \repeat tremolo 4 { <g cis> e } \repeat tremolo 4 { <e cis> a, } |
  <g cis>4 r r2 |
  \repeat tremolo 4 { <fis'' a>16 d } \repeat tremolo 4 { <fis a> d } |
  \repeat tremolo 4 { <e a> cis } <d fis>8 d d, d |
  d d' d, d << \new Voice { \voiceOne d fis'16 g] a g a g fis8 fis16 g a g a fis }
                 \new Voice { \voiceTwo s8 d16 e fis e fis e d8 d16 e fis r r8 } >>
  <cis e> a a, a |
  a a' a, a << \new Voice { \voiceOne a e''16 fis g fis g fis e8 e16 fis g fis g fis }
               \new Voice { \voiceTwo s8 cis16 d e d e d cis8 cis16 d e r r8 }
  >> <cis e>8 a a, a |
  << \new Voice { \voiceOne a8 a' a, a a a' a, a |
                  a a' a, a a a' a, a |
                  a a' a, a a4 r |
                  a8 a' a, a a a' a, a |
                  a a' a, a a a' a, a |
                  a a' a, a a a' a, a | }
     \new Voice { \voiceTwo <d fis>2 <e g> |
                  <d fis> <d e~> |
                  <cis e> r2 |
                  <cis e> <d fis> |
                  <e g> <d fis> |
                  <d e~> <cis e> |
  } >>
  a4 r <d fis a>8 d' q q |
  q d q q <d, g b> d' q q |
  q d q q <e, gis b> e' q q |
  q e q q <e, a cis> e' q q |
  q e q q <fis, ais cis> fis' q q |
  q fis <ais, cis> q <b d> b' q q |
  q b q q <b, cis> b' q q |
  <ais, cis> ais' q q <b, d> b b, b |
  << \new Voice { \voiceOne b d'16 e fis e fis e d8 d16 e fis e fis e |
                  d8\p d16 e fis e fis e d8 d16 e fis e fis e | }
     \new Voice { \voiceTwo s8 b16 cis d cis d cis b8 b16 cis d16 r r8 |
                  s b16 cis d cis d cis b8 b16 cis d r r8 | }
  >>
  <b d>\f d <d, fis b> q q d' q q |
  <dis, fis b> dis' q q q dis q q |
  <e, g b> e' q q q e q q |
  <eis, gis b> eis' q q q eis q q |
  <fis, ais> fis' <fis, ais cis> q <e ais cis> fis' q q |
  <dis, a'! b> fis' <a, b dis> q q fis' q q |
  <ais, b dis> fis' q q q fis q q |
  <e, gis cis> e' q q q e q q |
  <dis, gis cis> dis' q q q dis q q |
  <dis, gis bis> dis' q q q dis <bis, dis gis> q |
  <cis e gis> cis' cis, cis cis cis' cis, cis |
  << \new Voice { \voiceOne cis e'16 fis gis fis gis fis e8 e16 fis gis fis gis fis }
     \new Voice { \voiceTwo s8 cis16 dis e dis e dis cis8 cis16 dis e r r8 } >>
  <cis e>8 q16 <d fis> <e g> fis g fis <cis e>4 r |
  <fis, b d>8 fis' q q q fis q q |
  <b, d> q16 <cis e> <d fis> e fis e <b d>4 r |
  <e, a cis>8 e' q q q e q q |
  <fis, a cis> fis' q q q fis q q |
  <gis, b> e' e, e e e' e, e |
  e <e' gis>16 <fis a> <gis b> a b a <e gis>4 r |
  <a, cis e>8 a' q q <a, d fis> a' q q |
  <a, d e> a' q q <a, cis e> a' q q |
  <a, d fis> d d, d d d' d, d |
  d fis16 g a8 g fis fis16 g a8 g |
  fis d' d, d d d' d, d |
  d <d' fis>16 <e g> <fis a> e q d \repeat tremolo 4 { <fis b> d } |
  \repeat tremolo 4 { <g b> e } \repeat tremolo 4 { <e a> cis } |
  \repeat tremolo 4 { <fis a> d } \repeat tremolo 4 { <d g> b } |
  \repeat tremolo 4 { <e g> cis } \repeat tremolo 4 { <e g> cis } |
  \repeat tremolo 4 { <cis e> g } \repeat tremolo 4 { <g cis> e } |
  <cis e>4 r r2\fermata |
  \repeat tremolo 4 { <fis' a>16 d } \repeat tremolo 4 { <e a> d } |
  \repeat tremolo 4 { <e a> cis }
  << \new Voice { \voiceOne \repeat tremolo 2 { <d fis> a' } \repeat tremolo 2 { <d, fis> a' } |
                  \repeat tremolo 2 { <a, d> fis' } \repeat tremolo 2 { <fis, a> d' } }
     \new Voice { \voiceTwo <a d>4 r | fis r } >>
  <d fis>8 d16 e fis8 fis16 g |
  a4 r8 d, <a a'>4 
  a d\fermata r r2
                  
  
}

pianoL = \relative c {
  \key d \major
  d8 d' d, d d d' d, d |
  d d16 e fis8 e d d16 e fis8 e |
  d d' d, d d d' d, d |
  d4 r r2 |
  d8 d' d, d d d' d, d |
  d4 r4 r2 |
  d8 d' d, d d d' d, d | d d' d, d d d' d, d |
  cis cis' cis, cis cis cis' cis, cis |
  b b' b, b b b' b, b |
  a a' a, a a a' a, a |
  g g' g, g g g' g, g |
  a a' a, a a a' a, a |
  a a' a, a a a' a, a |
  <a cis>4 r r2 |
  d8 d' d, d a a' a, a |
  a a' a, a d d' d, d |
  d d' d, d d4 r |
  r2 a8 a' a, a |
  a a' a, a a4 r |
  r2 a8 a' a, a |
  a a' a, a a a' a, a |
  a a' a, a a a' a, a |
  a a' a, a a4 r |
  a8 a' a, a a a' a, a |
  a a' a, a a a' a, a |
  a a' a, a a a' a, a |
  a4 r d8 d' d, d |
  d d' d, d g, g' g, g |
  g g' g, g e' e' e, e |
  e e' e, e a, a' a, a |
  a a' a, a fis' ais fis fis|
  fis ais fis fis fis b fis fis |
  fis b fis fis fis b fis fis |
  fis ais fis fis b, b' b, b |
  b4 r r2 |
  <b fis' b>4 r r2 |
  <b fis>8 b' b, b b b' b, b |
  a a' a, a a a' a, a |
  g g' g, g g g' g, g |
  cis cis' cis, cis cis cis' cis, cis |
  fis, fis' fis, fis fis fis' fis, fis |
  fis fis' fis, fis fis fis' fis, fis |
  fis fis' fis, fis fis fis' fis, fis |
  cis' cis' cis, cis cis cis' cis, cis |
  gis gis' gis, gis gis gis' gis, gis |
  gis gis' gis, gis gis gis' gis, gis |
  cis cis' cis, cis cis cis' cis, cis |
  cis4 r r2 |
  <ais fis'>8 ais' ais, ais <ais fis'> ais' ais, ais |
  b b' b, b b b' b, b |
  <gis e'> gis' gis, gis <gis e'> gis' gis, gis |
  a! a' a, a a a' a, a |
  dis dis' dis, dis dis dis' dis, dis |
  e e' e, e e e' e, e |
  e e' e, e <e b'> e' e, e |
  a, a' a, a d d' d, d |
  a a' a, a a a' a, a |
  d d' d, d d d' d, d |
  d d16 e fis8 e d d16 e fis8 e |
  d d' d, d d d' d, d |
  d d' d, d d d' d, d |
  cis cis' cis, cis cis cis' cis, cis |
  b b' b, b b b' b, b |
  a a' a, a a a' a, a |
  a a' a, a a a' a, a |
  <a a'>4 r r2\fermata |
  d8 d' d, d a a' a, a |
  a a' a, a d4 r |
  d r d8 d16 e fis8 fis16 g |
  a4 r8 <d, d,> <d e a,>4 
  << \new Voice { \voiceOne \crossStaff { <cis e> <d fis> } }
     \new Voice { \voiceTwo <a a,> |
  <a d,>4\fermata } >>
  r4 r2
  
  
}

pianopart = \new PianoStaff \with 
  { \consists #Span_stem_engraver 
    instrumentName = "Piano" 
  } <<
        \new Staff = "pianoRight" { \accidentalStyle piano \oneVoice \pianoR }
        \new Staff = "pianoLeft" { \accidentalStyle piano \clef bass \oneVoice \pianoL }
      >>


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
        
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "soprano" \with { \consists Ambitus_engraver } {\override Ambitus.X-offset = 2 \voiceOne \s_I }
        \new Voice  = "alto" \with { \consists Ambitus_engraver } { \voiceTwo \a_I }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "tenor" \with { \consists Ambitus_engraver } { \override Ambitus.X-offset = 2 \voiceOne \clef bass \t_I }
        \new Voice = "bass" \with { \consists Ambitus_engraver } { \voiceTwo \b_I }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_I
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cI
        }
      }
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Soprani" "Contralti"  } }
        shortInstrumentName = \markup { \right-column { "S" "C"  } }
        midiInstrument = "voice oohs"
        
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "soprano"  { \voiceOne \s_I }
        \new Voice  = "alto"  { \voiceTwo \a_I }
      >> 
      
      \new Lyrics = "sopranos"
      \new Lyrics = "altos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Tenori" "Bassi" } }
        shortInstrumentName = \markup { \right-column { "T" "B" } }
        midiInstrument = "voice oohs"
      } <<
        \accidentalStyle modern-voice-cautionary
        \new Voice = "tenor" { \voiceOne \clef bass \t_I }
        \new Voice = "bass" { \voiceTwo \b_I }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_I
        }
      }
      \context Lyrics = "altos" {
        \lyricsto "alto" {
          \l_cI
        }
      }
    >>
      \pianopart
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    <<

      \new Staff = "upstaff" \with {
        instrumentName = "Choir"
        shortInstrumentName = "Ch."
        midiInstrument = "voice oohs"
        
      } <<
        \accidentalStyle modern-voice-cautionary
        \partcombine
        \new Voice = "soprano" <<  \voiceOne \s_I \a_I >>
          <<  \voiceTwo \t_I \b_I >>
      >> 
      
      \new Lyrics = "sopranos"
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \l_I
        }
      }
      \pianopart
    >>

    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves 
        \override VerticalAxisGroup.remove-first = ##t
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }

      %Metronome_mark_engraver
    }
  } % score I 
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
        \new Voice = "soprano" { \voiceOne \s_I}
        \new Voice  = "alto" { \voiceTwo \a_I }
      >> 
           
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \t_I }
        \new Voice = "bass" { \voiceTwo \b_I }
      >>
    \pianopart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=131
    }
  }
}
