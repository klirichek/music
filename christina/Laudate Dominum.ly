\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Laudate Dominum"
  composer = "J.P.Sweelinck (1562-1621)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  %  #(set-paper-size "a4landscape" )
  system-separator-markup = \slashSeparator
  top-margin = 10
  left-margin = 15
  right-margin = 10
  bottom-margin = 10
  indent = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %print-page-number = ##f
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

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key fis \minor
  \time 4/2
  \dynamicUp
  \autoBeamOff
}

sopranoi = \relative c'' {
  \global
  \secondbar
  b2 e,8[( fis gis a] fis4) b a gis |
  fis2 r r1 
  r2 b2. cis4 cis2 \abr |
  b1 r4 a b gis |
  a fis b2 r1 |
  r2 e4 e e8[( d cis b] a2) | \abr
  a\breve |
  r2 r4 a b8[( cis d b] cis4) e |
  d2 cis4 a a gis a e | \abr
  r2 r4 a b8[( cis d b] e4) cis |
  b2 a r1 |
  b4 b b8[( e, gis a] b4) b gis2 | \abr
  gis4 e gis4.( a8 b4) b4.( ais16[ gis] ais4) |
  b2 b4 b b8[( fis gis a] b4) b |
  gis1 gis2. gis4 |
  fis2 b2. b4 b2 | \abr
  r1 a4 fis e d |
  cis a'2 a4 gis gis gis2 |
  e4 e e fis gis cis2 a4 | \abr
  gis e e gis2 a4 b e~ |
  e cis b a gis1 |
  r2 cis4. b8 a4 a gis gis | \abr
  gis2 gis4 b gis2 gis4 eis |
  eis eis eis2 eis4 fis eis2 |
  fis2 cis'2. cis4 cis2 |
  cis4 fis, fis fis fis2 cis'4. b8 | \abr
  ais4 cis cis cis cis2 cis4 e |
  cis( d8[ e] fis2) dis1 |
  r r2 r4 b |
  gis a b e,2 fis4 gis2 | \abr
  r1 r4 e cis dis |
  e2 fis4 d cis2 r4 e~ |
  e dis e b'2 fis4 gis a |
  b( a8[ gis] fis2) e r | \abr
  r b'4 fis a b cis4.( b8 |
  a[ b gis a] fis2) fis r4 b |
  gis a b e,2 fis4 gis r |
  r1 r4 a gis e | \abr
  fis b2 ais4 b2 r |
  r4 e a, b cis4.( b16[ a] b2) |
  a4 a gis4.( fis16[ e] fis2) r2 | \abr
  r b4 fis gis a b2~( |
  b4 a8[ gis] fis2) fis a4 e |
  fis e cis2 dis1 | \abr
  r2 b'2. fis4 gis a |
  b2.( a4 gis fis2 e4 |
  dis2 e2.. dis16[ cis] dis2) |
  e\breve\fermata
  
}


sopranoii = \relative c'' {
  \global
  R\breve |
  r4 b e,8[( fis gis a] fis4) b a gis |
  fis2 gis2. gis4 a2 | \abr
  gis1 r |
  r2 r4 e' a,8[( b cis d] b4) e |
  d cis b2 cis4 cis cis8[( b a gis] | \abr
  fis1) e |
  R\breve |
  r2 a b8[( cis d b] cis4) e | \abr
  d2 cis4 a a gis a2 |
  fis4 gis a8[( b cis a] b4) cis a2 |
  gis1 r2 b4 b | \abr
  b8([ e, gis a] b4) gis fis2 r |
  d'4 d d8[( b d e]) fis4( e4. dis16[ cis] dis4) |
  e1 b2. b4 |
  b2 gis2. gis4 gis2 | \abr
  a4 fis e d cis2 r |
  r cis'2. cis4 cis2 |
  cis4 a gis fis eis fis8 fis gis4 cis | \abr
  
  cis2 r4 e2 cis4 b a |
  gis a8 a b4 cis b1 |
  cis4. b8 a2 r4 cis cis cis | \abr
  cis2 cis4 d cis1 |
  cis2 cis2. cis4 cis2 |
  r2 ais2. ais4 ais2 |
  ais4 b cis d cis2 ais4. b8 | \abr
  
  cis4 ais ais ais ais2 ais4 b |
  ais( b2 ais4) b2 r4 b |
  gis a b e,2 fis4 gis2 |
  r1 r4 a gis e | \abr
  fis b2 ais4 b2 r |
  r4 e a, b cis4.( b16[ a] b2) |
  a4 a gis4.( fis16[ e] fis2) r |
  r b4 fis gis a b2~( | \abr
  
  b4 a8[ gis] fis2) fis a4 e |
  fis e cis2 dis1 |
  r r2 r4 b' |
  gis a b e,2 fis4 gis2 | \abr
  r1 r4 e cis dis |
  e2 fis4 d cis2 r4 e~ |
  e dis e b'2 fis4 gis a | \abr
  b( a8[ gis] fis2) e r |
  r b'4 fis a b cis4.( b8 |
  a[ b gis a] fis2) fis r | \abr
  b2. cis4 dis dis e2 |
  dis1 r2 b2~ |
  b4 fis gis a b1 |
  gis\breve\fermata
}


alto = \relative c' {
  \global
  R\breve |
  b2 cis8[( d e cis] d4) b cis e |
  dis2 e2. e4 e2 | \abr
  e2 r4 e a,8[( b cis d] b4) e |
  d cis b2 fis'4 fis e8[( d cis b] |
  a2) e e'4 e cis2 | \abr
  d4 a4. a8 d4 cis2 r4 cis |
  d8[( e fis d] e4) fis d2 e4 a, |
  b8[( cis d b] cis4) d b2 a4 cis | \abr
  d8[( e fis d] e4) fis d2 cis4 a |
  b2 fis'4 fis4.( e8 e2 dis4) |
  e2 r b4 b b8[( e, gis a] | \abr
  
  b4) b e,2 r fis'4 fis |
  fis8[( b, d e] fis4) fis d b2 b4 |
  b1 e2. e4 |
  dis2 e2. e4 e2 | \abr
  R\breve |
  r2 e2. e4 e2 |
  r cis4 a gis fis eis fis8 fis | \abr
  
  gis4 a gis2 r4 e'2 cis4 |
  b a gis a8 a b4 b b2 |
  r a4. gis8 fis4 fis' eis eis | \abr
  eis2 eis4 fis eis2 eis4 gis |
  gis gis gis2 gis4 a gis2 |
  cis, fis2. fis4 fis2 |
  cis4 b ais b cis2 fis4. fis8 | \abr
  
  fis4 fis fis fis fis2 fis4 g |
  fis1 fis2 r4 fis |
  e cis b2 cis4 a b gis |
  e' cis b2 cis4 dis e2 | \abr
  r4 b e, fis gis2 a4 fis |
  e a fis gis a4.( gis16[ fis] e2) |
  fis4 a b2 d2. cis4 |
  b e dis2 e r4 e4~ | \abr
  
  e cis d d cis b a gis |
  fis b ais2 b r4 fis' |
  e cis b2 cis4 a b gis |
  e' cis b2 cis4 dis e2 | \abr
  r4 b e, fis gis2 a4 fis |
  e a fis gis a4.( gis16[ fis] e2) |
  fis4 a b2 d2. cis4 | \abr
  
  b e dis2 e r4 e~ |
  e cis d d cis b a gis |
  fis b ais2 b fis' |
  dis1 r2 b~ |
  b4 fis gis a b2 b |
  fis b b4 b b2 |
  b\breve\fermata
}


tenor = \relative c' {
  \global
  r4 b cis8[( d e cis] d4) b cis e |
  dis2 r r1 |
  b4 b b8[( a gis fis] e1) | \abr
  e r |
  r2 e fis8[( gis a fis] gis4) e |
  fis a gis2 r a4 a | \abr
  
  a8[( gis fis e ] d2) a'1 |
  r r2 r4 cis |
  d8[( e fis d] e4) fis d2 e4 a, | \abr
  fis fis a fis r b cis8[( d e cis] |
  dis4) e cis4.( d8 b4) a r2 |
  r b4 b b8[( e, gis a] b4) b | \abr
  
  e,2 e'4 e d2 cis |
  b b2. gis4 fis fis |
  e1 r |
  b'2. b4 b1 | \abr
  a4 a a b e, a2 fis4 |
  e d cis2 r cis'~ |
  cis4 cis cis2 cis4 a gis fis | \abr
  
  e cis'2 cis4 b a gis a8 a |
  b4 e e2 r e4. d8 |
  cis2 r4 cis cis cis cis2~ |
  cis cis4 fis, cis'2 cis4 cis |
  gis gis gis2 gis4 fis gis2 |
  ais r4 cis2 cis4 cis2 |
  fis4 d cis b ais2 cis4. d8 | \abr
  
  cis2 r4 cis cis cis cis2 |
  cis4 b cis2 b r4 b |
  e, fis gis2 a4 fis e2 |
  r1 r4 fis' b, cis | \abr
  dis2 e4 cis b gis e b'8[( a] |
  gis[ fis] e4) r b' e, fis gis2 |
  a4 fis e2 r1 |
  r b'2. e,4 | \abr
  
  gis a b2 fis r  |
  r1 r2 r4 b |
  e, fis gis2 a4 fis e2 |
  r1 r4 fis' b, cis | \abr
  dis2 e4 cis b gis e b'8[( a] |
  gis[ fis] e4) r b' e, fis gis2 |
  a4 fis e2 r1 | \abr
  
  r b'2. e,4 |
  gis a b2 fis r |
  r1 r2 b~ |
  b4 fis gis a b4.( a8 gis2) |
  fis b2. fis4 gis a |
  b4.( a8 gis4 fis8[ e] fis1) |
  e\breve\fermata
}

bass = \relative c {
  \global
  R\breve*2
  r2 e4 e e8[( d? cis b] a2) | \abr
  e r4 e' fis8[( gis a fis] gis4) e |
  fis a gis2 r1 |
  r a4 a a8[( gis fis e] \abr
  d1) a2 r4 a' |
   b8[( cis d b] cis4) d b2 a |
   r1 r2 r4 a, | \abr
   b8[( cis d b] cis4) d b2 a |
   r4 e' fis8[( gis a fis] gis4) a fis2 |
   e\breve | \abr
   r2 b'4 b b8[( b, d e ] fis4) fis |
   b,\breve |
   r2 e2. e4 e2 |
   r2 e2. e4 e2 | \abr
   fis4 d cis b a1~ |
   a cis2. cis4 |
   cis1 cis | \abr
   cis e |
   e e |
   a4. gis8 fis2 r4 fis cis cis | \abr
   cis2 cis4 b cis1~ |
   cis cis |
   fis2. fis4 fis2 fis4 fis |
   fis2. b,4 fis'2 fis4. b8 | \abr
   fis4 fis fis fis fis2 fis4 e |
   fis1 b, |
   r r2 r4 b' |
   e, fis gis2 a4 fis e2 | \abr
   r1 e2 a,4 b |
   cis2 d4 b a2 r |
   r1 b'2. fis4 |
   gis a b2 e,1 | \abr
   r1 r2 fis4 cis |
   d e fis2 b,1 |
   r r2 r4 b' |
   e, fis gis2 a4 fis e2 | \abr
   r1 e2 a,4 b |
   cis2 d4 b a2 r |
   r1 b'2. fis4 | \abr
   gis a b2 e,1 |
   r r2 fis4 cis |
   d e fis2 b,1~ | \abr
   b b |
   b b |
   b b |
   e,\breve\fermata \bar "|."
}

sopranoil = \lyricmode {
  
  La -- da -- te Do -- mi -- num o -- nes gen --
  tes, lau -- da -- te Do -- mi -- num o -- mnes gen --
  
  tes lau -- da -- te e -- um, lau -- da -- te e -- um,
  lau -- da -- te e -- um o -- mnes po -- pu -- li,
  
  o -- mnes po -- pu -- li, o -- mnes po -- pu -- li. Quo -- ni -- am, quo -- ni -- am
  con -- fir -- ma -- ta est, con -- fir -- ma -- ta est, con -- fir -- ma -- ta est, con -- fir --
  
  ma -- ta est, quo -- ni -- am con -- fir -- ma -- ta est su -- per nos mi -- se -- ri --
  cor -- di -- a e -- ius, mi -- se -- ri -- cor -- di -- a e -- ius, quo -- ni -- am con -- fir -- ma -- ta est su -- per
  
  nos mi -- se -- ri -- cor -- di -- a e -- ius: et ve -- ri -- tas Do -- mi -- ni,
  et ve -- ri -- tas Do -- mi -- ni, Do -- mi -- ni ma -- net in æ -- ter -- num,
  
  ma -- net in æ -- ter -- num, et ve -- ri -- tas Do -- mi -- ni, et ve -- ri -- 
  tas Do -- mi -- ni, et ve -- ri -- tas __ Do -- mi -- ni __
  
  ma -- net in æ -- ter -- num, ma -- net in æ -- ter -- num,
  ma -- net in æ -- ter -- num.
}

sopranoiil = \lyricmode {
  Lau -- da -- te Do -- mi -- num o -- mnes gen --
  tes, lau -- da -- te Do -- mi -- num o -- mnes gen --
  
  tes: lau -- da -- te 
  e -- um, lau -- da -- te e -- um, lau -- da -- te e -- um o -- mnes
  
  po -- pu -- li, o -- mnes po -- pu -- li. Quo -- ni -- am, quo -- ni -- am
  con -- fir -- ma -- ta est, quo -- ni -- am con -- fir -- ma -- ta est, con -- fir -- ma -- ta
  
  est, con -- fir -- ma -- ta est, con -- fir -- ma -- ta est su -- per nos mi -- se -- ri --
  cor -- di -- a e -- ius, quo -- ni -- am, quo -- ni -- am con -- fir -- ma -- ta est su -- per
  
  nos mi -- se -- ri -- cor -- di -- a e -- ius: et ve -- ri -- tas Do -- mi -- ni, et ve -- ri --
  tas Do -- mi -- ni, et ve -- ri -- tas __ Do -- mi -- ni __ ma -- net in æ -- ter -- 
  
  num, ma -- net in æ -- ter -- num, et ve -- ri -- tas Do -- mi -- ni,
  et ve -- ri -- tas Do -- mi -- ni, Do -- mi -- ni ma -- net in æ -- 
  
  ter -- num, ma -- net in æ -- ter -- num,
  ma -- net in æ -- ter -- num, ma -- net in æ -- ter -- num.
}
altol = \lyricmode {
  Lau -- da -- te Do -- mi -- num o -- mnes gen --
  tes, lau -- da -- te Do -- mi -- num o -- mnes gen -- tes, o -- mnes gen --
  
  tes, om -- nes gen -- tes: laj -- da -- te e -- um, lau -- da -- te e -- um, lau --
  da -- te e -- um, lau -- da -- te e -- um o -- mnes po --
  
  pu -- li, o -- mnes po -- pu -- li, po -- pu -- li. Quo -- ni -- am, quo -- ni -- am,
  quo -- ni -- am con -- fir -- ma -- ta est, con -- fir --
  
  ma -- ta est, con -- fir -- ma -- ta est, con -- fir -- ma -- ta est su -- per nos mi -- se -- ri --
  cor -- di -- a e -- ius, mi -- se -- ri -- cor -- di -- a e -- ius, quo -- ni -- am con -- fir -- ma -- ta est su -- per
  
  nos mi -- se -- ri -- cor -- di -- a e -- ius: et ve -- ri -- tas Do -- mi -- ni, et ve -- ri -- tas Do -- mi -- ni,
  et ve -- ri -- tas Do -- mi -- ni, et ve -- ri -- tas __ Do -- mi -- ni ma -- net in æ -- ter -- num, ma -- 
  
  net in æ -- ter -- num, ma -- net in æ -- ter -- num, et ve -- ri -- tas Do -- mi -- ni, et ve -- ri -- tas Do -- mi -- ni,
  et ve -- ri -- tas Do -- mi -- ni, et ve -- ri -- tas __ Do -- mi -- ni ma -- net
  
  in æ -- ter -- num, ma -- net in æ -- ter -- num, ma -- net in æ -- ter -- num, ma -- 
  net, ma -- net in æ -- ter -- num, ma -- net in æ -- ter -- num.
}
tenorl = \lyricmode {
  Lau -- da -- te Do -- mi -- num o -- mnes gen --
  tes, lau -- da -- te Do -- mi -- num o -- mnes
  
  gen -- tes: lau -- da -- te e -- um, lau --
  da -- te e -- um, lau -- da -- te e -- um o -- mnes po -- pu --
  
  li, o -- mnes po -- pu -- li, o -- mnes po -- pu -- li. Quo -- ni -- am
  con -- fir -- ma -- ta est, con -- fir -- ma -- ta est, quo -- ni -- am con -- fir -- ma -- ta
  
  est, con -- fir -- ma -- ta est, con -- fir -- ma -- ta est su -- per nos mi -- se -- ri -- cor --
  di -- a e -- ius, mi -- se -- ri -- cor -- di -- a e -- ius, quo -- ni -- am con -- fir -- ma -- ta est su -- per
  
  nos mi -- se -- ri -- cor -- di -- a e -- ius: et ve -- ri -- tas Do -- mi -- ni, et ve -- ri --
  tas Do -- mi -- ni, Do -- mi -- ni, __ et ve -- ri -- tas Do -- mi -- ni ma -- net
  
  in æ -- ter -- num, et ve -- ri -- tas Do -- mi -- ni, et ve -- ri --
  tas Do -- mi -- ni, Do -- mi -- ni, __ et ve -- ri -- tas Do -- mi -- ni
  
  ma -- net in æ -- ter -- num, ma -- 
  net in æ -- ter -- num, ma -- net in æ -- ter -- num.
}

bassl = \lyricmode {
   o -- mnes gen --
   tes, lau -- da -- te Do -- mi -- num o -- mnes gen --
   
   tes: lau -- da -- te e -- um, lau --
   da -- te e -- um, lau -- da -- te e -- um
   
   o -- mnes po -- pu -- li. Quo -- ni -- am, quo -- ni -- am
   con -- fir -- ma -- ta est, __ quo -- ni -- am con --
   
   fir -- ma -- ta est su -- per nos mi -- se -- ri --
   cor -- di -- a e -- ius, quo -- ni -- am con -- fir -- ma -- ta est su -- per
   
   nos mi -- se -- ri -- cor -- di -- a e -- ius: et ve -- ri -- tas Do -- mi -- ni,
   et ve -- ri -- tas Do -- mi -- ni ma -- net in æ -- ter -- num,
   
   ma -- net in æ -- ter -- num, et ve -- ri -- tas Do -- mi -- ni,
   et ve -- ri -- tas Do -- mi -- ni ma -- net
   
   in æ -- ter -- num, ma -- net in æ -- ter -- num, __
   ma -- net in æ -- ter -- num.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for superius
      \new PianoStaff \with {
        systemStartDelimiter = #'SystemStartBrace        
        shortInstrumentName = "S"
      } <<
        \new Staff = "sopranoi" \with {
          instrumentName = "Soprano I"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "sopranoi" { \sopranoi } }   
        \new Lyrics \lyricsto "sopranoi" { \sopranoil }
        
        %staff for medius
        
        \new Staff = "sopranoii" \with {
          instrumentName = "Soprano II"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "sopranoii" { \sopranoii } }   
        \new Lyrics \lyricsto "sopranoii" { \sopranoiil }
      >>
      
      
        %staff for alto
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "alto" { \clef "G_8" \alto } }  
        \new Lyrics = "alto"
        
        %staff for tenor
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "tenor" { \clef "G_8" \tenor } }
        \new Lyrics = "tenor"
      
      %staff for bassus
      \new Staff = "bass" \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bass" { \clef "bass" \bass } }
      \new Lyrics = "bass"
      
      %lyrics
      \context Lyrics = "alto" { \lyricsto "alto" { \altol }}
      \context Lyrics = "tenor" { \lyricsto "tenor" { \tenorl }}
      \context Lyrics = "bass" { \lyricsto "bass" { \bassl }}
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle piano-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
       \context {
        \Lyrics
        \consists "Bar_engraver"
        \consists "Separating_line_group_engraver"
        \hide BarLine
      }
      \context {
       \PianoStaff
       \remove   "Span_bar_engraver" % (eigentlich doppel genäht)
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=180
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "sopranoi" \new Voice = "sopranoi" { \sopranoi }
     \new Staff = "sopranoii" \new Voice = "sopranoii" { \sopranoii }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 90 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

% MIDI для репетиции:
\book {
  \bookOutputSuffix "sopranoi"
  \score {
    \rehearsalMidi "sopranoi" "soprano sax" \sopranoi
    \midi { }
  }
}

\book {
  \bookOutputSuffix "sopranoii"
  \score {
    \rehearsalMidi "sopranoii" "soprano sax" \sopranoii
    \midi { }
  }
}


\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "tenor sax" \alto
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenor
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bass
    \midi { }
  }
}
