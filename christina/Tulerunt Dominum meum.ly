\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Tulerunt Dominum meum"
  composer = "Giovanni Battista dalla Gostena (c.1558-1593)"
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
  \key c \major
  \time 2/2
  \numericTimeSignature
  \dynamicUp
  \autoBeamOff
}

treble = \relative c'' {
  \global
  \secondbar
  \tempo 2=45
  g2 g |
  b c~ |
  c4 b b2 |
  e8[( d] c[ b] a[ b] c4~ |
  c8[ b16 a] g4. a8 b[ g] |
  a4 b a2) | \abr
  g r |
  g g4. f8 |
  e2 r4 c' |
  c4. b8 a2 |
  r4 d d4. c8 | \abr
  b2 e2. d4 |
  c4. b8 a2 |
  g4 e'2 d4 |
  c4. b8 a2 |
  g4 c2( b4) | \abr
  c2 r |
  r4 c2 b4 |
  a2 g |
  r r4 c~ |
  c b a2 |
  g4 c2 b4 | \abr
  a2 g4 g b c( |
  d1) |
  b2 r |
  r r4 g~ |
  g g fis2 |
  g e | \abr
  d e4 c'~ |
  c c c b |
  c g8 g a g a b |
  c4 b8 g a g a b | \abr
  c4 b8 d c4 b a a |
  g e fis( g2 fis4) |
  g r8 d' d d a4 |
  r8 c c c g4 r8 g |
  g g d4 r8 d' d d |
  a4 r8 c c c e4 |
  r8 c c c4( b16[ a] b4) | \abr
  c2 r |
  r r4 c~ |
  c g bes2 |
  a4 d a2 |
  c4 g2 g4 | \abr
  a4. b8 c2 |
  r4 c b8[( g]) a4 |
  g f e8[( f]) g4 |
  g c b8[( g]) a4 | \abr
  g f e8[( c]) d4 |
  c8 c' b[( g]) a4 g |
  r8 d'4 b8 a2 | \abr
  g1 |
  r4 c4. g8 c4 |
  b1
}


alto = \relative c'' {
  \global
  R1*2 |
  g2 g |
  e f |
  e e |
  fis4( g2 fis4) | \abr
  g d d d |
  e2 r |
  r4 e e e |
  f f f4. e8 |
  d2 r4 d | \abr
  g4. f8 e4 a g4. f8 |
  e2 r8 d d8. c16 |
  b4 r8 e4 f8 g4~ |
  g e f f |
  g1 | \abr
  e2 g~ |
  g4 f g2 |
  e4 f c2 |
  f e |
  r4 g2 f4 |
  e8.[( f16] g4) g2 | \abr
  r4d e4.( f8 g4 e) |
  fis( g2 fis4) |
  g1 |
  r4 d2 d4 |
  cis2 d |
  e4. f8 g2 | \abr
  r4 g2 g4 |
  g a g2 |
  e4 e f8 e e g~ |
  g fis g d f4 f | \abr
  e g e g f2 |
  e4 g d d d2 |
  b4 r8 d f f c4 | \abr
  f e8 e e2 |
  d4 g8 g d4 f |
  f8 f c4 r8 g a c(~ |
  c16[ b a8]) e' g g4 g | \abr
  e r g2~ |
  g4 f a2 |
  e4 g2 d4 |
  f2 c |
  e1 | \abr
  f4 f e e |
  d8 b c4 d8 e4 d8( |
  e4) d g e |
  d8( e4 f8 g4) d | \abr
  r2 r4 r8 b |
  e[( f]) g[( d16 e]) f4 e8( d~ |
  d ) d d4 d2~ |
  d4 e4. c8 g'4(~ |
  g8[ f] e[ f] c8.[ d16] e4) |
  d1
}


tenori = \relative c' {
  \global
  R1*5 |
  d2 d4. c8 | \abr
  b2. b4 |
  b4. a8 g4 b |
  c4. b8 a4 c |
  c c d8 a a g |
  fis1 | \abr
  g2. a4 b b |
  c g2 fis4 |
  g g a d, |
  e2 a4 d, |
  g1 | \abr
  g4 e'2 d4 |
  c2( d) |
  c r4 g |
  a b c e~ |
  e d c2 |
  c4 e d2 |
  d g,2. c4~ |
  c b a2 |
  g4 b2 b4 |
  a2 b |
  g4 g a2 |
  c4 c c, c | \abr
  d2 c8[( d] e[ f] |
  g4) r r2 |
  r4 c a8 c c b |
  a4 g r d' | \abr
  e d r g, a f |
  g2 r8 a b c d[( c16 b] a4) |
  d2 r8 a a a | \abr
  c4 r8 c c c g4~ |
  g b b8 b a4 |
  r8 a f' f e8. d16 c8( a~ |
  a) c4( g8) g2~ | \abr
  g4 e'2 d4 |
  d2 c4 a |
  a e' d2 |
  r8 d4 a f' c8~ |
  c c, e8. f16 g2 | \abr
  r8 a f f g2~ |
  g4 r r a |
  b8 c4( b8) c2 |
  r r4 r8 d | \abr
  b c4( b8) c4 g |
  e8[( c]) d4 d8 d' b4( |
  a) g( a2) | \abr
  b4 c4. e8 d4 |
  c4 g e e8[( c]) |
  d1
}


tenorii = \relative c' {
  \global
  R1*6 | \abr
  g2 g4. f8 |
  e2 e'4 e~ |
  e8 d c4 c8 c4 b8 |
  a4 a d, d |
  a'2 b~ | \abr
  b4 b c c b g |
  g2 d' |
  r4 b c d |
  g,2 d'4.( c8 |
  b4) e d2 | \abr
  c r |
  r r4 g |
  a2( c) |
  d g, |
  R1 |
  r2 r4 g
  a a b c b g |
  a d d d |
  d1~ |
  d2 r4 g,~ |
  g8 g e4 a d,8 d |
  g2 r4 g~ |
  g g g e'~ |
  e8 e a, a d2 |
  c r |
  r4 b c f, | \abr
  g4 r8 b c d e e c4 d |
  e8[( d] c[ b] a4 g a2) |
  g8 b b b a4 r8 a | \abr
  a a g4 r8 g c c |
  b8.[( a16] g4) r d' |
  c8 c a4 g c,8 c |
  f4 e d d | \abr
  c c'2 g4 |
  bes2 f |
  c' g4. g8 |
  a2 r8 a4 f8 |
  g2 e8 c' c b | \abr
  d2 r4 c |
  b8[( g]) a4 g f |
  e8[( c]) d4 c g' |
  b c d8[( c16 b] a4) | \abr
  r8 g a f g[( f16 e] d8) d' |
  c[( a]) b4 a r |
  r8 d b( g4) fis16[( e] fis4) | \abr
  g g e g8[( f] |
  e[ d] e[ f] g2) |
  g1
}

bass = \relative c' {
  \global
  R1*6 | \abr
  r2 g |
  g4. f8 e2 |
  a2 a4. g8 |
  f2 r4 d |
  d4. c8 b2 | \abr
  \time 3/2 e2. f4 g2 |
  \time 2/2 c, d |
  e a,4( b |
  c2 d |
  e4. f8 g2) | \abr
  c,4 c'2 b4 |
  a2 g |
  r4 f2 e4 |
  d2 c |
  g' a4. b8 |
  c2 g~ | \abr
  \time 3/2 g4 f e1 |
  \time 2/2 d |
  r4 g2 g4 |
  fis2 g |
  e4 e d2 |
  c4 c e2 | \abr
  b c4.( d8 e4 f g2) |
  c, r |
  r4 g' f d | \abr
  \time 3/2 c g' a e f2 |
  c4 c d g, d'2 |
  \time 2/2 g,8 g' g g d4 f | \abr
  f8 f c4 r8 c c c |
  g4 r8 g' g g d4 |
  f f8 f c4 a~ |
  a c g2 | \abr
  c r |
  R1 |
  r2 r4 g' |
  d2 f |
  c2. e4 | \abr
  d d c2 |
  R1 |
  r2 r4 c |
  b8[( g]) a4 g8 g' f([ d]) | \abr
  e4 d c b8[( g]) |
  a4 g d' e8[( g]) |
  fis4 g d2 | \abr
  g,4 c2( b4 |
  c1) |
  g \bar "|."
  
  
}

treblel = \lyricmode {
  Tu -- le -- runt Do -- mi -- num me --
  um, et mne -- sci -- o, et ne -- sci -- o, et ne -- sci --
  
  o u -- bi po -- su -- e -- runt, u -- bi po -- su -- e -- runt e --
  um. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le --
  
  lu -- ia, al -- le -- lu -- ia. Di -- cunt e -- i an --
  ge -- li: Mu -- li -- er quid plo -- ras? Sur -- re -- xit si -- cut di -- xit, sur -- re -- xit si -- cut
  
  di -- xit præ -- ce -- det vos in Ga -- li -- le -- am. Al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  
  ia. I -- bi e -- um, i -- bi e -- um vi --
  de -- bi -- tis. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia,  al -- le -- lu -- ia.
}

altol = \lyricmode {
  Tu -- le -- runt Do -- mi -- num me --
  um, et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o, et
  
  ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o u -- bi po -- su -- e -- runt e --
  um. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
  
  al -- le -- lu -- ia. Di -- cunt e -- i an -- ge -- li:
  Mu -- li -- er quid plo -- ras? Sur -- re -- xit si -- cut __ di -- xit, præ -- ce -- det
  
  vos in Ga -- li -- le -- am, in Ga -- li -- le -- am. Al -- le -- lu -- ia, 
  al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu --
  
  ia. I -- bi e -- um, i -- bi e -- um vi --
  de -- bi -- tis. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, 
  
  al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia.
}
tenoril = \lyricmode {
  Et ne -- sci --
  o, et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o
  
  u -- bi po -- su -- e -- runt e -- um, u -- bi po -- su -- e -- runt e --
  um. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le --
  
  lu -- ia, al -- le -- lu -- ia. Di -- cunt e -- i an -- ge -- li: Mu -- li -- er quid
  plo -- ras? __ Sur -- re -- xit si -- cut di -- xit, præ --
  
  ce -- det, præ -- ce -- det vos in Ga -- li -- le -- am. Al -- le -- lu -- 
  ia, al -- le -- lu -- ia, __ al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia. __
  
  I -- bi e -- um vi -- de -- bi -- tis, i -- bi e -- um __ vi -- de -- bi -- tis,
  vi -- de -- bi -- tis. __ Al -- le -- lu -- ia, al --
  
  le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}
tenoriil = \lyricmode {
  Et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o, u --
  
  bi po -- su -- e -- runt e -- um, u -- bi po -- su -- e -- runt e --
  um. Al -- le -- lu -- ia, al --
  
  le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia. __ Di -- cunt e -- i an -- ge -- li, an --
  ge -- li: Mu -- li -- er quid plo -- ras? Præ -- ce -- det
  
  vos, præ -- ce -- det vos in Ga -- li -- le -- am. Al -- le -- lu -- ia, al --
  le -- lu -- ia, al -- le -- lu -- ia, __ al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu --
  
  ja. I -- bi e -- um vi -- de -- bi -- tis, i -- bi e -- um vi -- de -- bi --
  tis. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, __
  
  al -- le -- lu -- ia, __ al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia.
}

bassl = \lyricmode {
  Et ne -- sci -- o, et ne -- sci -- o, et ne -- sci -- o
  u -- bi po -- su -- e -- runt e --
  um. Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al --
  le -- lu -- ia. De -- cunt e -- i an -- ge -- li: Mu -- li -- er
  quid plo -- ras? Præ -- ce -- det
  vos in Ga -- li -- le -- am, in Ga -- li -- le -- am. Al -- le -- lu -- ia, al --
  le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu --
  ia. I -- bi e -- um vi --
  de -- bi -- tis. Al -- le -- lu -- ia, al -- le -- 
  lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al --
  le -- lu -- ia.
}

\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for superius
      \new Staff = "treble" \with {
        instrumentName = \markup { \center-column { "Treble" \bold"S"  } }
        shortInstrumentName = "S"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "treble" { \treble } }   
      \new Lyrics = "treble"
      
      %staff for medius
      
      \new Staff = "alto" \with {
        instrumentName = \markup { \center-column { "Alto" \bold"A"  } }
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "alto" { \alto } }   
      \new Lyrics = "alto"
      
      
        %staff for sextus
        \new Staff = "tenori" \with {
          instrumentName = \markup { \center-column { "Tenor I" \bold"TI"  } }
          shortInstrumentName = "T1"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "tenori" { \clef "G_8" \tenori } }  
        \new Lyrics = "tenori"
        
        %staff for tenor
        \new Staff = "tenorii" \with {
          instrumentName = \markup { \center-column { "Tenor II" \bold"T2"  } }
          shortInstrumentName = "T2"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "tenorii" { \clef "G_8" \tenorii } }
        \new Lyrics = "tenorii"
      
      %staff for bassus
      \new Staff = "bass" \with {
        instrumentName = \markup { \center-column { "Bass" \bold"B"  } }
        shortInstrumentName = "B"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bass" { \clef "bass" \bass } }
      \new Lyrics = "bass"
      
      %lyrics
      \context Lyrics = "treble" { \lyricsto "treble" { \treblel }}
      \context Lyrics = "alto" { \lyricsto "alto" { \altol }}
      \context Lyrics = "tenori" { \lyricsto "tenori" { \tenoril }}
      \context Lyrics = "tenorii" { \lyricsto "tenorii" { \tenoriil }}
      \context Lyrics = "bass" { \lyricsto "bass" { \bassl }}
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        \consists Ambitus_engraver
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "treble" \new Voice = "treble" { \treble }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenori" \new Voice = "tenori" { \tenori }
     \new Staff = "tenorii" \new Voice = "tenorii" { \tenorii }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 45 2)
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
  \bookOutputSuffix "treble"
  \score {
    \rehearsalMidi "treble" "soprano sax" \treblel
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altol
    \midi { }
  }
}


\book {
  \bookOutputSuffix "tenori"
  \score {
    \rehearsalMidi "tenori" "tenor sax" \tenoril
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenorii"
  \score {
    \rehearsalMidi "tenorii" "tenor sax" \tenoriil
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassl
    \midi { }
  }
}
