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
%abr = {}

\header {
  title = "Away in a manger"
%  composer = "composer"
  %arranger = "arranger"
%  poet = "poet"
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
  \key f \major
  \time 3/4
  \numericTimeSignature
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(1 1 1)
}

abr = { \break }
%abr = {}

sopranoI = \relative c' {
  \dynamicUp
  \autoBeamOff
  c4\f
  f f g8[( a]) |
  f4 f a8[( bes]) |
  c4 c d |
  bes2 g8[( a]) | 
  
  bes4 bes c |
  a a f8[( a]) |
  g4 d f |
  e2 c4 |
  
  f f g8[( a]) |
  f4 f a8[( bes]) |
  c4 c d |
  bes2 g8[( a]) |
  
  bes4 bes c |
  a a f8[( a]) |
  g4 d e |
  f2 r4 |
  
  c'2.\mp |
  c |
  a |
  g |
  
  g |
  f |
  f4 g d' |
  c2. |
  
  c4.\mp c8 d[( e]) |
  f d c d e d |
  c2 a4 |
  bes8 c d c bes4 |
  
  bes4 d  c8 bes |
  a4 a a |
  d c8 bes a[( g]) |
  f2.
  
}


sopranoII = \relative c' {
  \autoBeamOff
  c4
  
  c c d8[( e]) |
  c4 c f8[( g]) a4 a a |
  g2 d4 |
  
  g8[( a]) g[( f]) g4 |
  f e d |
  d4. c8 d4 |
  c2 c4 |
  
  c4 c d8[( e]) c4 c f8[( g]) |
  a4 a a |
  g2 d4 |
  
  g8[( a]) g[( f]) g4 |
  f e d |
  d bes c |
  c2 r4 |
  
  a'2. |
  a |
  f |
  f |
  
  e |
  e4 d2 |
  d4 f g |
  g a^\< bes\! |
  
  c4. c8 bes8[( c]) |
  d4 c c8 bes |
  c2 a4 |
  g8 a bes a g4 |
  
  g4 bes a8 g |
  f g a g f4 |
  g f e |
  f2.
}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \tempo "Просто"
  %intro
  R2.*3 |
  r4 r << \new Voice="sopranoI" { \voiceOne \sopranoI} 
          \new Voice="sopranoII" {\voiceTwo \sopranoII} >> |  
}

altoI = \relative c'' {
  \autoBeamOff
  a8\mp bes a g f e |
  a bes c bes a bes |
  c bes a g f e |
  d2 g8 f |
  
  g8 f g e f g |
  a g f4 d |
  d8 c d4 c |
  c2.

}

altoII = \relative c' {
  \autoBeamOff
  f8 g f e d c |
  f g a g f g |
  a g f e d c |
  bes2 g'8 f |
  
  e d e c d e |
  f4 f8 e d c |
  bes4 g c8 bes |
  a2.

}

scoreVoiceAlto = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff

  
  %intro
  R2.*3 |
  r4 r c8[(\f bes]) |
   a4 a bes8[( c]) |
   a4 a c |
   f4. f8 e4 |
   d4 r bes8[( a]) |
   
   g4 c e |
   f c d8[( c]) |
   b4 a b |
   c2 c8[( bes]) |
   
   a4 a bes8[( c]) |
   a4 a c |
   f4. f8 e4 |
   d4 c bes8[( a]) |
   
   g4 c e |
   f c d8[( c]) |
   bes4 g c8[( bes]) |
   a2 r4 |
   
   f'2.\mp |
   e |
   d |
   d |
   
   d4 c2 |
   c2. b |
   c4 f\< g\! |
   
     
  << \altoI \\ \altoII >> |  
} 


scoreVoiceSolo = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff

  
  %intro
  R2.*4
  
  R2.*14
  R2.^\markup{\bold"rit."\italic"(при повторении)"}
  r4 r c\mf |
  f4 f g8[( a]) |
  f4 f a8[( bes]) |
  c4 c d |
  bes2
  
  g8[( a]) |
  
  bes4 bes c |
  a a f8[( a]) |
  g4 d f |
  e4 r c\f |
  
  f4 f g8[( a]) |
  f4 f a8[( bes]) |
  c4 c d |
  bes2 g8[( a]) |
  
  bes4 bes c |
  a a f8[( a]) |
  g4 d e |
  f2.
}
\addlyrics { The cat -- tle are low -- ing, the ba -- by a -- wakes, but
lit -- tle Lord Je -- sus no cry -- ing he makes. I
love thee, Lord Je -- sus, look down from the sky, and
stay by my cra -- dle 'til mor -- ning is nigh. }


scoreVoicePartSolo = \new Staff \with {
 instrumentName = "Соло"
  midiInstrument = "voice oohs"
} { \scoreVoiceSolo }


scoreVoicePart = \new Staff \with {
 instrumentName = "Сопрано"
 shortInstrumentName = "С"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \new Voice="soprano" \scoreVoice }

scoreAltoVoicePart = \new Staff \with {
 % instrumentName = "Voice"
 instrumentName = "Альты"
 shortInstrumentName = "А"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
} { \scoreVoiceAlto }
\addlyrics {   \repeat unfold 11 \skip 1
 the lit -- tle Lord Je -- sus laid down his sweed head. there
 The stars in the bright sky down where he lay,
 \repeat unfold 16 \skip 1
 donn, donn, donn, donn, donn, donn, donn.
 Din, din, din...
}

%\addlyrics { \scoreVoiceL }
%\addlyrics { \scoreVoiceLL }
%\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  %intro
  <f a>8\f <g bes> <f a> <c g'> <a f'> <c e> |
  <bes d> <c e> <bes d> <f c'> <d bes'> <f a> |
  <e g> <f a> <e g> <d f> <c e> <bes g'> |
  << <c f>2. \\ { bes4 a a } >> | \abr \bar ":|."
  
  % verse 1
  <a c f>4 q <bes d g> |
  <a c f> q << { <f' a>8 <g bes> } \\ c,4 >> |
  <f a c> q <e a d> |
  <g bes d g> <d g bes d> <bes d g bes> | \abr
  
  <bes c g'> <c g' bes> <c g' c> |
  <c f a> <c a' c> <f a c f> |
  <f g b d> <f g a c> <f g b d> |
  <e g c e> <a, c f> <g bes c> | \abr
  
  <a c f> q <bes d g> |
  <a c f> q << { <f' a>8 <g bes> } \\ c,4 >> |
  <f a c> q <e a d> <g bes d g> <d g bes d> <bes d g bes> | \abr
  
  <bes c g'> <c g' bes> <c g' c> |
  <c f a> <c a' c> <f a c f> |
  <g bes d f> <f g bes d> << { < a c>8 <g bes> } \\ e4 >> |
  << { <f a>2 <f' c'>8 <a d> } \\ {c,,2 r4} >> | \abr
  
  % fine
  <f' c'>8\mp <a d> \repeat unfold 8 { <f c'> <a d> }
  \repeat unfold 3 { <f bes>8 <g d'> } \abr
  
  \repeat unfold 3 { <e bes'>8 <g d'> }
  \repeat unfold 3 { <d a'>8 <f c'> }
  \repeat unfold 3 { <f b>8 <a d> }
  <e c'> <g d'> <c e> <d f> \ottava 1 <e g> <g bes> | \abr
  
  <a c> <g bes> <f a> <e g> <d f> <c e> \ottava 0 |
  << <d f>2. \\ { <f, a>8 <g bes> <a c> <g bes> <f a> <g bes> } >>
  <a c> <g bes> <f a> <e g> <d f> <c e> |
  << d2. \\ { <g, bes>8 <a c> <bes d> <a c> <g bes> <f a> } >> \abr
  
  % page 79
  <e g> <d f> <e g> <c e> <d f> <e g> |
  <f a> <g bes> <a c> <g bes> <f a> <e g> |
  <d f>4 << { d c } \\ { c8 bes c bes } >> |
  <a c f>2. \bar "|."                         
  }
  
scoreInstrLeft = \relative c, {
  \clef bass
  \global
  \dynamicUp
  
  %intro
  <f c' f>4 q q |
  <f d' f> q q |
  <f c' g'> q q |
  <f c' f> q q |
  
  <f c' f> q <f d' f> |
  <f c' f> q <f d' f> |
  <f c' f> q q |
  <f d' g> q q | \abr
  
  <e e'> q q |
  <f f'> <e e'> <d f'> |
  <f d' g> q q |
  <c c'> <d d'> <e e'> | \abr
  
  %page 77
  <f c' f> q q |
  q q <f d' f> |
  <f c' f> q q |
  <f d' f> q q | \abr
  
  <e e'> q q |
  <f f'> e <d f'> |
  <g d' g> q <c c'> |
  <f f'>2 r4_\markup\bold"Fine" | \abr
  
  \clef treble <f' a c> \clef bass <f,, c'> \clef treble <f'' a c> | 
  <e a c> \clef bass <f,, c'> \clef treble <e'' a c> | 
  <d a' c> \clef bass <f,, c'> \clef treble <d'' a' c> | 
  <d g bes> \clef bass <f,, c'> \clef treble <d'' g bes> |  \abr
  
  % page 78
  <d g bes> < c e g bes> \clef bass <c,, c'> |
  <f c'> \clef treble <c'' f a> \clef bass <f,, c'> |
  <g, g'> <g'' d'> <g f'> |
  <c e> <c,, c'> q | \abr
  
  <f c' f> q q |
  q q q |
  q q q |
  <f d' f> q q | \abr
  
  %page 79
  <c c'> q q |
  <f c' f> q q |
  <f d' f> q <c c'> |
  <f c' f>2._\markup\bold"D.C. al Fine"
  
  
  
  

}



scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrLeft
  >>


lyricsopII = \lyricmode {
  A -- way in a man -- ger, no crib for a bed,
  the lit -- tle Lord Je -- sus laid down his sweet head.
  The stars in the bright sky looked down where he lay, the
  lit -- tle Lord Je -- sus a -- sleep on the hay.
  
  Donn, donn, donn, donn,
  donn, donn, donn, donn, donn, donn, donn, donn, donn.
  Din, din, din...
  
}

lyricsopI = \lyricmode {
  \repeat unfold 11 \skip 1
 the lit -- tle Lord Je -- sus laid down his sweed head.
 \repeat unfold 28 \skip 1
 donn, donn, donn, donn.
}




\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \scoreVoicePartSolo
      \new ChoirStaff <<
        \new Lyrics = "sopranoup"
        \scoreVoicePart
        \new Lyrics = "sopranodown"
        \scoreAltoVoicePart
%        \new Lyrics = "alto"
        \context Lyrics = "sopranoup" { \lyricsto "sopranoI" { \lyricsopI } }
        \context Lyrics = "sopranodown" { \lyricsto "sopranoII" { \lyricsopII } }
%        \context Lyrics = "alto" { \lyricsto "alto" { \lyricalt } }
      >>
      \scoreInstrPart
      
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
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
%  piece = "Fis-dur"
  }
  \score {
    \transpose f g
    <<
      \scoreVoicePartSolo
      \new ChoirStaff <<
        \new Lyrics = "sopranoup"
        \scoreVoicePart
        \new Lyrics = "sopranodown"
        \scoreAltoVoicePart
%        \new Lyrics = "alto"
        \context Lyrics = "sopranoup" { \lyricsto "sopranoI" { \lyricsopI } }
        \context Lyrics = "sopranodown" { \lyricsto "sopranoII" { \lyricsopII } }
%        \context Lyrics = "alto" { \lyricsto "alto" { \lyricalt } }
      >>
      \scoreInstrPart
      
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
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
%  piece = "Fis-dur"
  }
  \score {
   \transpose f es
    <<
      \scoreVoicePartSolo
      \new ChoirStaff <<
        \new Lyrics = "sopranoup"
        \scoreVoicePart
        \new Lyrics = "sopranodown"
        \scoreAltoVoicePart
%        \new Lyrics = "alto"
        \context Lyrics = "sopranoup" { \lyricsto "sopranoI" { \lyricsopI } }
        \context Lyrics = "sopranodown" { \lyricsto "sopranoII" { \lyricsopII } }
%        \context Lyrics = "alto" { \lyricsto "alto" { \lyricalt } }
      >>
      \scoreInstrPart
      
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

