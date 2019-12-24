\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Lacrimosa"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key b \minor
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override MultiMeasureRest.expand-limit = #2
  %\override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
}

abr = { \break }
abr = {}

pbr = {\pageBreak}

pbr={}

% вместо знака альтерации однократно пишем текст сбоку от ноты (голос)
aside =  #(define-music-function 
           (parser location  x-y text)
           (pair? markup?)
           #{
              \once \override Accidental.extra-offset = #x-y
              \once \override Accidental.stencil = #ly:text-interface::print
              \once \override Accidental.text = \markup {\rotate #90 \rounded-box \pad-x #2 #text } 
           #}
           )


sopvoice = \relative c' {
  \global
  \tempo 4=56
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
 R2.*4
\bar "||" \mark \default
\autoBeamOn fis8\p( e fis g d e |
fis e fis g d e | \autoBeamOff
fis[ e fis g d)] e
fis4 fis r |
fis8[( b cis]) d cis b |
fis[( b]) cis[( d]) cis b | \abr

a[( gis a]) b e,? fis |
g fis g a e fis |
g[( fis g a d,]) e |
f e f g fis e |
fis4-- fis r |
R2.*3 \abr

\bar "||" \mark \default
\autoBeamOn fis8\p( e fis g d e |
fis e fis g d e | \autoBeamOff
fis[ e fis g d)] e
fis4 fis r |
fis8[( b cis]) d cis b |
fis[( b]) cis[( d]) cis b | 
a[( gis a]) b e,? fis | \abr 

g fis g a e fis |
g[( fis g a d,]) e |
f e f g fis e |
fis4-- fis r |
R2.*3 |
\bar "||" \mark \default 
d'4.\mf d8 cis fis, |
b8. cis16 b2 | \abr

a4. a8 g a |
fis8. a16 a2 |
d4. d8 cis fis, |
bes8. a16 a2 |
\time 2/4 \autoBeamOn d,8\p( e fis d |
e fis g e |
f g a f |
\time 3/4 fis? gis ais4 fis) \autoBeamOff| \abr
b2.\mf
R2.*3
\bar "||" \mark \default
R2.*14
\bar "||" \mark \default d4.\mf d8 cis fis, | \abr

b8. cis16 b2 |
a4. a8 g a |
fis8. a16 a2 |
d4. d8 cis fis, |
bes8. a16 a2 |
\time 2/4 \autoBeamOn d,8\p( e fis d |
e fis g e |
f g a f | \abr

\time 3/4 fis? gis ais4 fis) | 
b2.\mf  \autoBeamOff|
R2.*3
\bar "||" \mark \default \autoBeamOn fis8\p-\markup\italic"solo"( e fis g d e |
fis e fis g d e |
fis[ e fis g d)]\autoBeamOff e |
fis4 fis r |
fis8\mf[( b cis]) d cis b | \abr 

fis[( b]) cis[( d]) cis b |
a[( gis a]) b e,? fis |
g fis g a e fis |
g[( fis g a d,]) e |
f e f g fis e | \abr

fis4-- fis r |
R2.
fis4---\markup\italic"tutti"\p fis-. r |
R2. |
R\bar "|." 
}


altvoice = \relative c' {
  \global
  \dynamicDown
  R2.*4
  
  \autoBeamOn
  d8( cis d e b cis |
  d cis d e ais,4 |
  \autoBeamOff d8[ cis d e b]) cis |
  d4 d r |
  d4. d8 d d |
  d4 d f8 f |
  
  fis?8[( eis fis)] d g, a |
  b a b c g a |
  b[( a b c bes]) bes |
  a g a ais ais ais |
  d4-- d r |
  R2.*3 |
  
    \autoBeamOn
  d8( cis d e b cis |
  d cis d e ais,4 |
  \autoBeamOff d8[ cis d e b]) cis |
  d4 d r 
  d4. d8 d d |
  d4 d f8 f |
  fis?8[( eis fis]) d g, a |
  
  b a b c g a |
  b[( a b c bes]) bes |
  a g a ais ais ais |
  d4-- d r |
  R2.*3 |
  d4. d8 d d |
  d8. d16 d2 |
  d4( cis8) b bes bes |
  a8. d16 d2 |
  d4. d8 d d |
  e8. e16 e2 |
  b4~( b8.[ cis16] |
  d4 c8[ des] |
  es2 |
  e?2.)
  d2. |
  R2.*17
  
  d4. d8 d d |
  d8. d16 d2 |
  d4( cis8) b bes bes |
  a8. d16 d2 |
  d4. d8 d d |
  e8. e16 e2 |
  b4~( b8.[ cis16] |
  d4 c8[ des] |
  es2 |
  
  e?2.) |
  d2. |
  R2.*3 |
   \autoBeamOn
  d8[(-\markup\italic"solo" cis d e b cis] |
  d cis d e ais,4 |
  \autoBeamOff d8[ cis d e b]) cis |
  d4 d r 
  d4. d8 d d |
  
  d4 d f8 f |
  fis?([ eis fis]) d g, a |
  b a b c g a |
  b[( a b c des]) des |
  a g a ais ais ais |
  d4-- d r |
  R2.
  d4-- d-. r |
  R2.
 R^\fermataMarkup
}


tenorvoice = \relative c {
  \global
  \dynamicDown
 R2.*18
 fis2.\p~( |
 fis2 g4 |
 fis2) fis4 |
 fis4-- fis r |
 fis4. fis8 fis fis |
 fis4 fis b8 gis |
 a[( b cis]) fis, g? a
 
 g g g g g a |
 g2 g4 |
 f8 f f f fis fis |
 fis4-- fis-. r |
 R2.*3 |
 fis4.\mf fis8 fis fis |
 g8. g16 g2 |
 
 fis4. fis8 e e |
 d8. fis16 fis2 |
 fis4. fis8 fis fis |
 bes8. a16 a2 |
 d,4~(\p d16[ e fis8] |
 g2 |
 a |
 ais8[ b] cis2) |
 
 fis,2.\mf |
 R2.*3 |
 \autoBeamOn
 fis8([-\markup\italic"solo" e fis g d e] |
 fis e fis g d e |
 \autoBeamOff fis[ e fis g d]) e |
 fis4 fis r |
 fis8[( b cis]) d cis b |
 fis[( b]) cis[( d]) cis b |
 
 a[( gis a]) b e, fis |
 g fis g a e fis |
 g[( fis g a d,]) e |
 f e f g fis e |
 fis4-- fis r |
 R2.*3 |
 fis4.\mf fis8 fis fis |
 g8. g16 g2 |
 fis4. fis8 e e |
 d8. fis16 fis2 |
 fis4. fis8 fis fis |
 bes8. a16 a2 |
 d,4~\p( d16[ e fis8] |
 g2 |
 a |
 ais8[ b] cis2) |
 fis,2.\mf |
 R2.*15
 fis4--\p-\markup\italic"tutti" fis-. r |
 R2.
 R_\fermataMarkup
}


bassvoice = \relative c {
  \global
  \dynamicUp
R2.*18
b2.~( |
b2 ais4 |
b2) b4 |
b-- b r |
b4. b8 a a |
gis4 gis cis8 cis |
fis4. fis8 d d |

g g g g d d |
g,2 c4 |
f8 f f f fis fis |
fis4-- fis-. r |
R2.*3 |
a,4. a8 a a a8. a16 a2 |

a4. a8 a a |
d8. d16 d4( cis) |
b4. b8 a a |
g8. g16 fis2 |
g4( gis |
a bes |
c b?8[ c] |
cis?4 fis2) |

b,2. |
R2.*3 |
fis'8[( e fis g d e] |
fis[ e fis g d e] |
fis[ e fis g d]) e |
fis4 fis r |
fis8[( b cis]) d cis b |
fis[( b]) cis[( d]) cis b

a([ gis a]) b e, fis |
g fis g a e fis |
g[( fis g a d,)] e |
f e f g fis e |
fis4-- fis r |
R2.*3 |
a,4. a8 a a |
a8. a16 a2 |
a4. a8 a a |
d8. d16 d4( cis) |
b4. b8 a a |
g8. g16 fis2 |
g4( gis |
a bes |
c b?8[ c] |
cis?4 fis2) |
b,2. |
R2.*15
b4-- b-. r |
R2.|
R
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
  La -- cri -- mo -- sa di -- es i -- lla qua  re -- su -- rget
  ex __  fa -- vi -- lla ju -- di -- ca -- ndus ho -- mo re -- us:
  hu -- ic e -- rgo pa -- rce De -- us.
  
  La -- cri -- mo -- sa di -- es i -- lla, qua re -- su -- rget ex __ fa -- vi -- lla
  ju -- di -- can -- dus ho -- mo re -- us:
  hu -- ic e -- rgo pa -- rce De -- us. Pi -- e Je -- su Do -- mi -- ne
  
  do -- na e -- is re -- qui -- em. Pi -- e Je -- su Do -- mi -- ne. A -- men.
  
  Pi -- e Je -- su Do -- mi -- ne, do -- na e -- is re -- qui -- em.
  Pi -- e Je -- su Do -- mi -- ne. A -- men.
  
  \ijLyrics
  La -- cri -- mo -- sa di -- es i -- lla 
  qua  re -- su -- rget ex fa -- vi -- lla ju -- di -- ca -- ndus 
  ho -- mo re -- us: hu -- ic e -- rgo pa -- rce De -- us. 
  \normalLyrics
  
  De -- us.
  
}

lyricscorebass = \lyricmode {
  La -- cri -- mo -- sa di -- es i -- lla qua  re -- su -- rget ex fa -- vi -- lla 
  
  ju -- di -- ca -- ndus ho -- mo re -- us:
  hu -- ic e -- rgo pa -- rce De -- us.
  
  Pi -- e Je -- su Do -- mi -- ne  do -- na e -- is re -- qui -- em. __ 
  Pi -- e Je -- su Do -- mi -- ne. A -- men.
  
  \ijLyrics
  La -- cri -- mo -- sa di -- es i -- lla qua  re -- su -- rget
  ex fa -- vi -- lla ju -- di -- ca -- ndus ho -- mo re -- us:
  hu -- ic e -- rgo pa -- rce De -- us.
  
  \normalLyrics
  
  Pi -- e Je -- su Do -- mi -- ne, do -- na e -- is re -- qui -- em. __ 
  Pi -- e Je -- su Do -- mi -- ne. A -- men.
  
  
  De -- us.
  
  
}



\book {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  %ragged-bottom = ##t
  %ragged-last =  ##t
  ragged-last-bottom =  ##f
  
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \lyricscorebass }
    >>
    %  }  % transposeµ
  \layout {
    #(layout-set-staff-size 20)
    \context {
      \Staff \RemoveEmptyStaves
      printKeyCancellation = ##f
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

