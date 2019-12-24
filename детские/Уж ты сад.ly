\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

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
abr = {}

\header {
  title = "Уж ты, сад"
  composer = " "
  %arranger = "arranger"
  poet = " "
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 3/4
}

%abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \secondbar
  \tempo "Не спеша"
  \partial 4 r4 |
  R2.*7
  r2 d8\mp d |
  g4.( \tempo "a tempo" a8) b d |
  a4.( g16[ fis]) e8 d |
  g4.( a8) b([ d)] |
  
  a2 a8 a |
  d4. e8 d c |
  g2 d'8 b |
  
  a8[( c b a)] e'4 |
  d2.~ |
  d4 r d8 b16[( a]) |
  
  g4. a8 b16[( d]) b[( d]) |
  a4.( g16[ fis]) e[( d]) e[( fis]) |
  g4.( d'8) e[( d]) |
  a2 a8 b |
  
  d4.( e8) d16[( e]) d[( c]) |
  b2 d8 b |
  a[( c b a]) e'4 |
  d2.~( |
  
  d4. g8[ fis g] |
  e4. d16[ c] b[ a b c] |
  d2) r4 |
  r2 b8 c |
  d4. e8 d16[( e]) d[( c]) |
  
  b2 d8 b |
  a8[( c b a]) e'4 |
  d2.~ |
  d4 r2 |
  R2.*6
  
  r2 d,8 d |
  g4.( a8) b d |
  a4.( g16[ fis]) e8 d |
  g4.( a8) b[( d]) |
  
  a2 a8 a |
  d4.( e8) d c |
  g2 d'8 b |
  
  a[( c b a]) e'4 |
  d2 d,16[( e]) fis[( b]) |
  g4. a8 b16[( d]) b[( d]) |
  a4.( g16[ fis]) e[( d]) e[( fis]) |
  
  g4. d'8 e d |
  a2 a8 b |
  d4. e8 d16[( e]) d[( e]) |
  b2 d8 b |
  
  \time 4/4
  
  a8[( c b]) a e'4 e |
  a1~ |
  a |
  \tempo "Tempo I. Спокойно" g( |
  
  e2~ e8[) e]( d[ e] |
  b2.) b8[(\p c]) |
  d1~ |
  d2 r4 d\pp |
  g2. r4
}

scoreVoiceL = \lyricmode {
  Уж ты, сад, ты мой сад, сад зе -- лё -- нень --
  кий, ты за -- чем ра -- но цве -- тёшь, о -- сы --
  па -- ешь -- ся? Ты за --
  чем ра -- но цве -- тёшь, о -- сы -- па -- ешь -- ся? Ты ку -- 
  да, ми -- лый друг, со -- би -- ра -- ешь -- ся?
  
  Не во путь ли, во по --
  ход, во до -- ро -- жень -- ку?
  Ты со
  все -- ми людь -- ми ра -- спро -- ща -- ешь --
  
  ся, а со мно -- ю, мла -- дой, всё ру -- 
  га -- ешь -- ся. Не ру -- гай -- ся, не бра -- нись, ска -- жи
  ла -- ско -- во: про -- щай! Ска -- жи ла -- ско -- во: про -- щай! У -- ез --
  жа -- ю в_даль -- ний край. А __
  
  Про -- щай, про -- щай!
}

scoreVoiceLL = \lyricmode {
 
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
  instrumentName = "Голос"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c' {
  \global
  \dynamicNeutral
  \partial 4 d8(\p d |
  <b g'>4. <c a'>8) <d b'>([ <g d'>] |
  a4. g16 fis)\<  e8( d
  <b g'>4. <c a'>8) <d b'>[ <g d'>] |
  <c, a'>2\! <fis a>8\mf <e a> | \abr
  
  <d fis d'>4. <g e'>8 <fis d'>[ <e c'>] |
  <b d g>2 \voiceOne d'8\> b |
  a c b a e' b16 c\! |
  \oneVoice <d, fis d'>4._\markup"poco rit." <e c' e>8 \voiceOne d'16 c b a | \abr
  
  \oneVoice <b, g'>16\p d' g d g d d' g, d' d, g d' |
  \repeat unfold 4 { d, a' d }
  \repeat unfold 4 { d, g d' } \abr
  
  \repeat unfold 4 { d, a' d }
  d, fis d' d, fis d' e g, << { d'8[ c] } \\ { d16 fis, c' e, } >> |
  b' b, d b' b, d b' d, << { d'8 b } \\ { d16 fis, b d, } >> \abr
  
  << { a'8 c b a } \\ { a16 c, c' e, b' d, a' c, } >> e' e, g e' |
  d\< d, fis d' d, fis d' d, a' d d, a' |
  d\> d, a' d d,_\markup"poco rit." a' d d, d' a d, a\! | \abr
  
  <b d,>8\p d'( b4) <d, b d,> |
  <c a e>8 d'( a4) <c, a e> |
  <d b d,>8 d'( b4) <e, b e,> |
  <c a e>8 d'( a4) <a, fis>8 <b fis> | \abr
  
  <d b fis d> <fis d fis,>~ q <e c e,> <d b fis d> <c a e c> |
  <g d b> d''( b4) <d, b fis d> |
  <c a e c>8 c'( a4) << { c,8 e} \\ <a, e>4 >> |
  <d fis, d> d,8( e16 fis g a b c) | \abr
  
  <d, g b d>4\arpeggio\mf <d' g b d>\arpeggio r4 |
  <e, g c e>\arpeggio <e' g c e>\arpeggio r |
  <d, g b d>\arpeggio <d' g b d>8\arpeggio <e g>( <d fis> <b g'> |
  <c e>4) <e g c e>\arpeggio r |
  <d, fis b d>\arpeggio <b' d fis b>\arpeggio <a d fis a>\arpeggio | \abr
  
  <g b d g>\arpeggio <fis b d fis>\arpeggio r |
  <e a c e>\arpeggio r <e' g c e>\arpeggio |
  <d fis a d>\arpeggio << { d r } \\ { d,8\< e16 fis g a b c\! } >> |
  <b d>4.\f <g g'>8( <a fis'> <b g'>) |
  <c e>4.( <b d>16 <a c> <g b> <fis a> <g b> <a c>) | \abr
  
  <b d>4. <b g'>8( <a fis'> <b g'>) |
  <c e>2 <d, g b>8(\mp <e a c> |
  <fis b d>4. <e g c e>8 <d fis b d> <e a c> |
  <d g b>2) << { d'8 b } \\ <d, g>4 >> |
  << { a'8 c b a~ a b16 c \oneVoice <d, fis d'>4. <e g c e>8 \voiceOne d'16 c b a} \\
     { <c, e>4\> <d g> <e e'> s2  <d fis>4\p } >> \abr
  
  <b g'>16 d' g d g d d' g, d' d, g d' |
  \repeat unfold 4 { d, a' d }
  \repeat unfold 4 { d, g d' } | \abr
  
  
  \repeat unfold 4 { d, a' d } |
  d, fis d' d,  << { s8 e'8 d c } \\ {fis,16 d' e g, d' fis, c' e, } >> |
  << { b'4 s d8 b } \\ { b16 b, d b' b, d b' d, d' fis, b d, } >> | \abr
  
  << { a'8 c b a } \\ { a16\< c, c' g b d, a' c,\! } >> \oneVoice <e g c e>4 |
  <d fis a d>2\f r4 |
  <b, g'>8\p d''( b4) <d,, b' d> |
  <e a c>8 d''( a4) <e, a c> | \abr
  
  <d b' d>8 d''( b4) <e,, b' e> |
  <e a c>8 <a' d> <g e'> <a d> <d, a'>4 |
  <d, fis b d>4. <e g c e>8 <d fis b d> <c e a c> |
  <b d g b>2 <d g b d>4 | \abr
  
  \time 4/4 
  
  <e a c>2 <e g b e>4\< <e g c e> |
  <d' fis a>16\f a <e' a> c <d fis a>\cresc c <e a> c <d fis a> c <e a> c <d fis a> c <d fis b> b |
  <c e a c>2\! << d \\ { d,8\>( e fis b)\! } >> |
  <g b,>2~_\markup\italic"dim. poco a poco" <g b,>8 <b g'> <a fis'> <b g'> | \abr
  
  <g e'>2. <fis d'>4 |
  << \new Voice { \voiceOne r8 e''( d e b2\p) } \new Voice { \voiceFour r8 g~ g2. } \new Voice { \voiceTwo <g, b>1 } >>
  << { <d d'>2. a''8( b c2. ) d,,16\pp( e fis b <g b,>2) } \\
     { r4 <fis b>2 r4 r <c' a'>2 s4 s2 } >>
 
  <g' b d g>4\arpeggio r \bar "|."
 
}

scoreInstrRightd = \relative c' {
  \global
  \dynamicNeutral
  \voiceTwo
  \partial 4 s4 |
  s2.
  c
  s
  s
  
  s
  s2 <d g>4 |
  <c e>2 <e g>4 |
  s2 <d fis>4 |
  
}

scoreInstrLeft = \relative c {
  \global
  \dynamicUp
  \autoBeamOn
  \partial 4 r4 |
  g8( d' b'4~ b8 d,) |
  g,( e' a4 g8 d) |
  g,( d' g4~ g8 d) |
  g,([ e'] c'[ e,] a[ g]) |
  
  \set Timing.beamExceptions = #'()
  fis b, b' c d a |
  g fis e d b' e, |
  a a, e' a c b |
  a d,, a' e' a d, |
  
  g,( d' b' d, d') r |
  g,,( e' c' e, c') r |
  g,( d' b' d, d') r |
  
  g,,( e' c' e,) d'( fis,) |
  b,( fis' d' fis,) a,( fis') |
  g,( d' b' d,) b'( d,) |
  
  c'( e, a, e') c'( e,) |
  d d, a' fis' a d~ |
  d c16( b) a8 d,( e fis) |
  
  g,( d' b' d,) b'( d,) |
  g,( e' c' e,) c'( e,) |
  g,( d' b' d,) c'( d,) |
  g,( e' c' e,) d'( c) |
  
  b( b, fis' a) b( d,) |
  g,( d' b' d,) b'( fis) |
  a,( e' c' e,) a( e) |
  d( d, a' fis' d' c)
  
  <g, d' b'>4\arpeggio <g' d' b'>\arpeggio r |
  <g, d' b'>4\arpeggio \clef treble <c' g' c>\arpeggio r4 |
  \clef bass <g, d' b'>4\arpeggio <g' d' b'>\arpeggio r |
  <g, d' b'>4\arpeggio <e' c' g'>\arpeggio r |
  <b fis' b>\arpeggio <b fis' d'>\arpeggio <a fis' d'>\arpeggio | 
  
  <g d' b'>\arpeggio <b fis' d'>\arpeggio r |
  <a e' c'>\arpeggio r  \set PianoStaff.connectArpeggios = ##f <a e' c'>\arpeggio 
  <d, a' fis'>\arpeggio r2 |
  g8( d' b') r b( d,) |
  g,( e' c') r r4 |
  
  g,8( d' b') r b( d,) |
  g,( e' c' e,) b'( a |
  b fis) b,( g' b d,) |
  g,( d' b' d,) b'( e,) |
  a( e a, e') c'( b |
  a) d,, a' e' a( d,) |
  
  g,( d' b' d, d') r |
  g,,( e' c' e, c') r |
  g,( d' b' d, d') r |
  
  g,,( e' c' e,) d'( fis,) |
  b,( fis' d' fis,) a,( fis') |
  g,( d' b' d,) b'( d,) |
  
  f, c' a' c, <a e' c'>4 |
  <d, a' fis'?>2 r4 |
  g8( d' b' d,) b'( d,) |
  g,( e' c' e,) c'( e,) |
  
  g,( d' b' d,) c'( d,) |
  g,( e' c' e) << a4 \\ { <fis d>8( <e c>) } >> |
  b,( fis' d'4) a,8( fis') |
  g( d g, d') b'( d,) |
  
  \unset Timing.beamExceptions
  f,( c' a' c,) e,( b' g' c,) |
  <d, a' fis'> <c'' e a> <d fis a> <c e a> <d fis a> <c e a> <d fis a> <b d fis a> |
  <a c e a>2 <d, d,> |
  <d g,>4 <d b'> <g d'> r |
  
  <g, e'> <e' c'> <g e'>2 |
  <b, e,>4 <b g'> <g' e'>2 |
  <b, fis'>4 <fis' d'>2 r4 |
  <a, e'> <e' c'>2 <d d,>4 |
  <d g,>2 <g d' b'>4\arpeggio r4
  
  
  
  
}



scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Ф-п."
  } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \scoreInstrRight \scoreInstrRightd >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreInstrLeft }
  >>



\bookpart {
  \header {
  piece = "G-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "Fis-dur"
  }
  \score {
    \transpose g fis
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "F-dur"
  }
  \score {
    \transpose g f
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "E-dur"
  }
  \score {
    \transpose g e
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  piece = "Es-dur"
  }
  \score {
    \transpose g es
    <<
      \new ChoirStaff <<
        \scoreVoicePart
      >>
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}