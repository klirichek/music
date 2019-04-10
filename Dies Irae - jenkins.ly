\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Dies Iræ"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-alphabet
  \override MultiMeasureRest.expand-limit = #2
  %\override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
}

abr = { \break }
abr = {}

pbr = {\pageBreak}
%pbr={}

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

mrk = { \bar "||" \mark \default }

sopvoice = \relative c' {
  \global
  \tempo 4=120
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  R1*8
  \mrk %A
  \repeat percent 2 \repeat unfold 2 {f8-.-> f-.-> r4 r2 |  e8-.-> e-.-> r4 r2 | } \abr \break
  
  \mrk %B
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 \abr \break
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 \abr \break
  
  \mrk %C
  \repeat percent 2 \repeat unfold 2 {f8-.-> f-.-> r4 r2 |  e8-.-> e-.-> r4 r2 | } \break
  
  \mrk %D
  d4-> f-. r e-> | \abr
  
  g-. r f-> a-. |
  r g-> bes-. r |
  a->( c-.) r cis( |
  d f) e c |
  d bes c a |
  bes g a f |
  g e f( e) | \abr
  
  d1~ d~ d~ d8 r r4 r2 | \break
  \mrk %E
  \repeat percent 8 \repeat unfold 2 {d8->-. \tuplet 3/2 { r16 r d->-. } d8->-. r } \abr
  
  \break
  \mrk %F % 53
  \repeat unfold 3 { d'8~[ \tuplet 3/2 {d8] d16 } d8 d d d d d } R1 | \abr \break
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16 } d8 d d d d d } R1 |  \break
  \mrk %G
  \repeat unfold 2 {f,8-.-> f-.-> r4 r2 |  e8-.-> e-.-> r4 r2 | } \break
  \repeat unfold 2 {f8-.-> f-.-> r4 r2 |  e8-.-> e-.-> r4 r2 | }
  
  \key e\minor
  \mrk R1*8 \abr \break
  
  \mrk %I %77
  \repeat unfold 3 { <e'>8~[ \tuplet 3/2 {q8] q16 } q8 q q q q q } R1 | \abr \break
  
  \repeat unfold 3 { <e>8~[ \tuplet 3/2 {q8] q16 } q8 q q q q q } R1 | \abr \break
  
  \key f\minor 
  \mrk %J %85
  \repeat percent 2 { f8-.-> \tuplet 3/2 { r16 r f,->-. } f8-.-> r f-.-> \tuplet 3/2 { r16 r f-.-> } f8-.-> r | g8-.-> g-.-> r4 r2 } \abr
  
  % 89
  \repeat percent 2 { f'8-.-> \tuplet 3/2 { r16 r f,->-. } f8-.-> r f-.-> \tuplet 3/2 { r16 r f-.-> } f8-.-> r 
                     f'8-.-> \tuplet 3/2 { r16 r f,-.-> } f8-.-> f g-.-> g-.-> r4 } \abr
  
  \break
  \mrk % K
  f4-> as-. r g-> | 
  bes-. r as-> c-. | 
  r bes-> des-. r | 
  c->( es-.) r es( | 
  f as) g es | \abr

  f des es c |
  des bes c as |
  bes g as( g) |
  f1~ f~ f~ f8 r r4 r2 \abr \break
  
  \mrk %L 105
  \repeat percent 8 {f'8->-. \tuplet 3/2 { r16 r f,->-. } f8->-. r f8->-. \tuplet 3/2 { r16 r f->-. } f8->-. r } 
  
  \break
  \key fis\minor
  \mrk %M
  \repeat percent 8 {fis'8->-. \tuplet 3/2 { r16 r <fis,>->-. } q8->-. r q8->-. \tuplet 3/2 { r16 r q->-. } q8->-. r } 
  
  \break
  \mrk %N 121
  \repeat percent 8 {fis'8->-. \tuplet 3/2 { r16 r fis->-. } fis,8->-. r fis'8->-. \tuplet 3/2 { r16 r fis->-. } fis,8->-. r } \abr
  
  \break
  \mrk %O 129
  \repeat percent 8 {<fis'>8->-. \tuplet 3/2 { r16 r q->-. } q8->-. r q8->-. \tuplet 3/2 { r16 r q->-. } q8->-. r } 
  fis4-.-> r r2 \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicDown
  R1*8
  %  \repeat percent 8 {d8-.-> d-.-> r4 r2 }
  \repeat percent 2 \repeat unfold 2 {d8-.-> d-.-> r4 r2 d8-.-> d-.-> r4 r2 }
  
  %17
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  
  %page 2
  \repeat percent 2 \repeat unfold 4 {d8-.-> d-.-> r4 r2 } 
  d4-> f-. r e-> |
  g-. r f-> a-. | 
  r g-> bes-. r | 
  a->( c)-. r a( | 
  f a) g e |
  f d e c |
  d c c a |
  c a d( cis) |
  d1~ d~ d~ d8 r r4 r2 
  
  \repeat percent 8 { r8 \tuplet 3/2 { r16 r d-.->} d8-.-> d-.-> r2 }
  
  % part F 53
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  
  
  % G
  \repeat unfold 2 \repeat unfold 4 {d8-.-> d-.-> r4 r2 }
  \key e\minor
  R1*8
  \repeat unfold 3 {<e>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  <g>8~[ \tuplet 3/2 {q8] q16} q8 q <a> q q q
  q8~[ \tuplet 3/2 {q8] q16} q8 q <b> q q q
  q8~[ \tuplet 3/2 {q8] q16} q8 q <c> q q q
  R1
  \key f\minor 
  
  %J
  \repeat percent 2 { r8 \tuplet 3/2 { r16 r <f,>-.->} q8-.-> q-.-> r2 | q8-.-> q-.-> r4 r2 }
  \repeat percent 2 { r8 \tuplet 3/2 { r16 r q-.->} q8-.-> q-.-> r2
  r8 \tuplet 3/2 { r16 r q-.->} q8-.-> q-.-> q-.-> q-.-> r4 }
  
  %K
  f4-> as-. r g-> |
  bes-. r as-> c-. |
  r bes-> des-. r |
  c->( es-.) r c( |
  as c) bes g |
  as f g es |
  f es es c |
  es c f( e) |
  f1~ f~ f~ f8 r r4 r2 |
  
  %L
  \repeat percent 8 \repeat unfold 2 { r8 \tuplet 3/2 { r16 r <f>-.-> } q8-.-> q-.-> }
  
%  \break
  
  \key fis\minor %M
  %\repeat percent 48 { r8 \tuplet 3/2 { r16 r <fis>-.-> } q8-.-> q-.-> }
  \repeat percent 8 { \repeat unfold 2 { r8 \tuplet 3/2 { r16 r <fis>-.-> } q8-.-> q-.-> }}
  \repeat percent 8 { \repeat unfold 2 { r8 \tuplet 3/2 { r16 r <fis>-.-> } q8-.-> q-.-> }}
  \repeat percent 8 { \repeat unfold 2 { r8 \tuplet 3/2 { r16 r <fis>-.-> } q8-.-> q-.-> }}
  q4-.-> r4 r2
}


tenorvoice = \relative c' {
  \global
  \dynamicDown
  R1*8
  \repeat percent 2 \repeat unfold 2 { a8-.-> a-.-> r4 r2 | bes8-.-> bes-.-> r4 r2 }
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 
  \repeat percent 2 \repeat unfold 2 { a8-.-> a-.-> r4 r2 | bes8-.-> bes-.-> r4 r2 }
  
  d,4-> f-. r e-> |
  g-. r f-> a-. |
  r g-> bes-. r |
  a->( c-.) r a( |
  d b) c a |
  bes g a f |
  g e f d |
  e cis d( a') |
  d,1~ d~ d~ d8 r r4 r2 |
  
  \repeat percent 16 \repeat unfold 1 { r8 d'8-.-> r4 }
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 
  \repeat unfold 3 { d8~[ \tuplet 3/2 {d8] d16} d8 d d d d d } R1 
  
  %G
  \repeat unfold 2 \repeat unfold 2 { a8-.-> a-.-> r4 r2 | bes8-.-> bes-.-> r4 r2 }
  \key e\minor
  R1*8
  <e,>8~[ \tuplet 3/2 {q8] q16} q8 q <f> q q q |
  fis?8~[ \tuplet 3/2 {<fis>8] q16} q8 q <g> q q q |
  <gis>8~[ \tuplet 3/2 {q8] q16} q8 q <a> q q q |
  R1
  \repeat unfold 2 { <g'>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q | }
  q8~[ \tuplet 3/2 {q8] q16} q8 q <e> q q q |
  R1   \key f\minor 
  \repeat percent 2 { r8 f-.-> r4 r8 f-.-> r4 | des8-.-> des-.-> r4 r2 }
  \repeat percent 2 { r8 f-.-> r4 r8 f-.-> r4 | r8 f-.-> r4 f8-.-> f-.-> r4 }
  %K
  f,4-> as-. r g-> |
  bes-. r as-> c-. |
  r bes-> des-. r |
  c->( es-.) r c( |
  f d) es c |
  des bes c as |
  bes g as f |
  g e f( c') |
  f,1~ f~ f~ f8 r r4 r2
  
  \repeat percent 8 \repeat unfold 2 { r8 f'-.-> r4 }
  \key fis\minor %M
  \repeat percent 24 \repeat unfold 2 { r8 fis-.-> r4 }
  fis4-.-> r r2 
}


bassvoice = \relative c {
  \global
  \dynamicUp
  R1*8
  %\repeat unfold 8 {d8-.-> d-.-> r4 r2 }
  \repeat percent 2 \repeat unfold 2 {d8-.-> d-.-> r4 r2 d8-.-> d-.-> r4 r2}

  
  %17
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  
  %page 2
  \repeat percent 2 \repeat unfold 4 {d8-.-> d-.-> r4 r2 } 
  d4-> f-. r e-> |
  g-. r f-> a-. | 
  r g-> bes-. r | 
  a->( c)-. r cis,( | 
  d b) c a |
  bes g a f |
  g e' f d |
  e cis d( a) |
  d1~ d~ d~ d8 r r4 r2 
  
  \repeat percent 16 \repeat unfold 1 { r4 d8-.-> d-.-> }
  
  % part F 53
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  \repeat unfold 3 {<d>8~[ \tuplet 3/2 {q8] q16} q8 q q q q q } R1
  
  
  % G
  d2. dis4 |
  e2 e |
  f2. fis4 |
  g2. a4 |
  d,2. dis4 |
  e2 e |
  f2. fis4 |
  g2.( a4) |
  
  \key e\minor %H
  e4 r r2 
  R1*7 
  
  <e>8~[ \tuplet 3/2 {q8] q16} q8 q <f> q q q
  fis?8~[ \tuplet 3/2 {<fis>8] q16} q8 q <g> q q q
  <gis>8~[ \tuplet 3/2 {q8] q16} q8 q <a> q q q
  R1
  
  <e>8~[ \tuplet 3/2 {q8] q16} q8 q <f> q q q
  fis?8~[ \tuplet 3/2 {<fis>8] q16} q8 q <g> q q q
  <gis>8~[ \tuplet 3/2 {q8] q16} q8 q <a> q q q
  R1
  \key f\minor 
  
  %J
  \repeat percent 2 { r4 f8-.-> f-.-> r4 f8-.-> f-.-> | bes-.-> bes-.-> r4 r2 }
  \repeat percent 2 { r4 f8-.-> f-.-> r4 f8-.-> f-.-> | r4 f8-.-> f-.-> bes-.-> bes-.-> r4 }
  
  
  %K
  f4-> as-. r g-> |
  bes-. r as-> c-. |
  r bes-> des-. r |
  c->( es-.) r e,( |
  f d) es? c
  des bes c as|
  bes g' as f|
  g e f( c) |
  f1~ f~ f~ f8 r r4 r2 |
  
  %L
  \repeat percent 8 \repeat unfold 2 { r4 f8-.-> f-.-> }
  
  \key fis\minor %M
  \repeat percent 24 \repeat unfold 2 { \tuplet 6/4 { <fis>16 q8[( q]) q16 } q8 q }
  q4-.-> r4 r2
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
%  \repeat unfold 2 { Di -- es i -- ræ, di -- es i -- lla. }
  Di -- es i -- ræ, di -- es i -- lla.
%  Di -- es i -- ræ, di -- es i -- lla.
  
  Di -- es i -- ræ, di -- es i -- lla, so -- lvet sæ -- clum in fa -- vi -- lla,
  te -- ste Da -- vid cum Si -- by -- lla.
  Qua -- ntus tre -- mor est fu -- tu -- rus,
  qua -- ndo ju -- dex est ve -- ntu -- rus, cu -- ncta stri -- cte di -- scu -- ssu -- rus!
  
%  \repeat unfold 2 { Di -- es i -- ræ, di -- es i -- lla. }
  Di -- es i -- ræ, di -- es i -- lla.
%  Di -- es i -- ræ, di -- es i -- lla.
  
  Tu -- ba mi -- rum spa -- rgens so -- num
  per __ se -- pu -- lcra re -- gi -- o -- num,
  co -- get o -- mnes a -- nte thro -- num. __
  
  %E
%  \repeat unfold 48 di
  \repeat unfold 6 di
  
  Mors stu -- pe -- bit et na -- tu -- ra
  cum re -- su -- rget cre -- a -- tu -- ra
  ju -- di -- ca -- nti re -- spo -- nsu -- ra.
  
  Li -- ber scri -- ptus pro -- fe -- re -- tur
  in quo to -- tum co -- nti -- ne -- tur
  u -- nde mu -- ndus ju -- di -- ce -- tur.
  
  %G
  Di -- es i -- ræ, di -- es i -- lla.
  Di -- es i -- ræ, di -- es i -- lla.
  
  %H
  
  Ju -- dex e -- rgo cum se -- de -- bit
  quid -- quid la -- tet a -- ppa -- re -- bit
  nis i -- nu -- ltum re -- ma -- ne -- bit.
  
  Quid sum mi -- ser tunc di -- ctu -- rus
  quem pa -- tro -- num ro -- ga -- tu -- rus
  cum vix ju -- stus sit se -- cu -- rus?
  
  Di di di di di di i -- ræ. 
  Di di di di di di di di di -- es i -- ræ.
  
  Tu -- ba mi -- rum spa -- rgens so -- num
  per __ se -- pu -- lcra re -- gi -- o -- num,
  co -- get o -- mnes a -- nte thro -- num. __
  
  di di di di di di %L
  di di di di di di %M
  di di di di di di %N
  di di di di di di %O
  di.
}

lyricscorea = \lyricmode {
  
%  \repeat unfold 8 \repeat volta 2 \skip 1 %A
  \repeat unfold 8 \skip 1 %A
  \repeat unfold 48 \skip 1 %B
  \repeat unfold 8  \skip 1 %C
% \repeat unfold 8 \repeat volta 2 \skip 1 %C 
  \repeat unfold 24 \skip 1 %D
  
  %E
%  \repeat unfold 8 { di di -- es }
  di di -- es
  
  \repeat unfold 112 \skip 1
  
  %J
  di di -- es i -- ræ.
  di di -- es di di -- es i -- ræ.
  \repeat unfold 24 \skip 1
  
  \repeat unfold 2 { di di -- es } %L
  \repeat unfold 2 { di di -- es } %M
  \repeat unfold 2 { di di -- es } %N
  \repeat unfold 2 { di di -- es } %O
}

lyricscoret = \lyricmode {
  \repeat unfold 8 \skip 1 %A
  \repeat unfold 48 \skip 1 %B
  \repeat unfold 8  \skip 1 %A
  \repeat unfold 24 \skip 1 %D
  
%  \repeat unfold 16 di %E
  \repeat unfold 1 di
  
  \repeat unfold 112 \skip 1
  
  %J
  di di i -- ræ.
  di di di i -- ræ.

  \repeat unfold 24 \skip 1
  di di %L
  di di %M
  di.
}

lyricscorebass = \lyricmode {
  \repeat unfold 8  \skip 1 %A
  \repeat unfold 48 \skip 1 %B
  \repeat unfold 8  \skip 1 %A
  \repeat unfold 24 \skip 1 %D
  
%  \repeat unfold 16 { di -- es } %E
  \repeat unfold 1 { di -- es }
  
  
  \repeat unfold 48 \skip 1
  
  Di -- es i -- ræ, di -- es i -- lla.
  Di -- es i -- ræ, di -- es i -- lla.
  
  \repeat unfold 48 \skip 1
  
  %J
  Di -- es, di -- es i -- ræ.
  Di -- es, di -- es, di -- es i -- ræ.

  \repeat unfold 24 \skip 1
  \repeat unfold 2 { di -- es } %L
  \repeat unfold 2 { di di __ di di -- es }
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
      \new Lyrics \lyricsto "alto" { \lyricscorea }
       
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
       \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \clef bass \bassvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
      \new Lyrics \lyricsto "bass" { \lyricscorebass }
    >>
    %  }  % transposeµ
  \layout {
%    #(layout-set-staff-size 20)
    \context {
      \Staff \RemoveEmptyStaves
      printKeyCancellation = ##f
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
}
}

