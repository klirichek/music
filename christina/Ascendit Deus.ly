\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Ascendit Deus"
  composer = "Peter Philips ( c. 1561 to 1628)"
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
  indent = 25
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
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

ficta = { \once \set suggestAccidentals = ##t }
fictab = { \ficta \once \override AccidentalSuggestion.parenthesized = ##t }

global = {
  \key bes \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
}

superius = \relative c'' {
  \global
  \secondbar
  bes2 d ~ | % 2
  d4 d f2 | % 3
  c2 r4 bes | % 4
  es4 es d8( [ c bes c ] | % 5
  d8 [ c d es ] f2 ~  \abr| % 6
  f4) d c2 ~ | % 7
  c2 bes | % 8
  r4 bes bes bes | % 9
  bes4 bes as2 | \barNumberCheck #10
  as4 es g g  \abr | % 11
  bes2 f4 f | % 12
  bes4 bes a8( [ g f g ] | % 13
  a8 [ bes ] c4 ~ c8) c bes4( ~ | % 14
  bes4 a) bes f' | % 15
  f4. bes,8 bes4 r8 es  \abr | % 16
  es4. es8 d4 d | % 17
  d4. d8 c2 | % 18
  r4 r8 c d  f  e4 | % 19
  f4 r8 c a  f  c'4 | \barNumberCheck #20
  f,8  f' f c  d4 c \abr | % 21
  r8 f  f bes,  d4 bes | % 22
  r8 f'  f bes,  d2 | % 23
  c8  f es d  es  d c c  | % 24
  d4 r r8 c  d c  | % 25
  a8  c c b  c4 r \abr
  | % 26
  r8 bes  bes a  bes  f' f c  | % 27
  d2 r R1 | % 29
  r2 c4. c8 | \barNumberCheck #30
  c2 r \abr | % 31
  r4 d e( f ~ | % 32
  f4 e) f2 ~ | % 33
  f2 r | % 34
  r4 c d es | % 35
  d2 c4 c8 ([ d ] \abr | % 36
  e8 f4 e8 ) f4 d | % 37
  c4 c c2 ~ | % 38
  c4 a g2 | % 39
  f1 R \abr | % 41
  r4 c' d2 | % 42
  es2 d | % 43
  c4 c ( d8 [ es f d ] | % 44
  e8 f4 e8 ) f2  | % 45
  r4 f, c'4. c8 \abr | % 46
  a4 bes2 ( a8 [ g ] | % 47
  a4 ) a g2 R1*2 \abr | \barNumberCheck #50
  \time 3/4  | \barNumberCheck #50
  \tempo 4=220 d'4 d d | % 51
  es2 d4 | % 52
  c4 bes ( g ) | % 53
  a2 r4 R2. \abr
  R2.*3 | % 58
  c4 c c | % 59
  d2 c4 ~ \abr | \barNumberCheck #60
  c4 d d | % 61
  e2 r4 | % 62
  f4 f c | % 63
  d2 c4 | % 64
  bes2 a4 \abr | % 65
  bes2 r4 | % 66
  bes4 bes bes | % 67
  bes2 r4 | % 68
  d4 es c | % 69
  d2 r4 \abr | \barNumberCheck #70
  es4 es es | % 71
  d2 c4 | % 72
  bes2 a4 | % 73
  bes2. \bar "|."
}


medius = \relative c'' {
  \global
  R1*7 | % 8
  bes2 d ~ | % 9
  d4 d f2 | \barNumberCheck #10
  c2 r4 bes | % 11
  es4 es d8( [ c bes c ] | % 12
  d8 [ c d es ] f2 ~ | % 13
  f4) es d2( | % 14
  c2) d | % 15
  r4 d d4. bes8 | % 16
  bes2 r4 f' | % 17
  f4. bes,8 a4 f | % 18
  g8  bes  a4 bes r8 c | % 19
  bes8  a  g4 f8  c' a f  | \barNumberCheck #20
  c'8( bes4 a8) bes  f' f c  | % 21
  d4 bes r8 f'  f bes,  | % 22
  d4 bes8  f'  f  bes,  bes4 | % 23
  a8  c c b  c  bes bes a  | % 24
  bes4 r r2 | % 25
  r8 f'  es d  es  c c b  | % 26
  c8  f f c  d  bes bes a  | % 27
  bes2 r R1 | % 29
  g4. g8 g2 | \barNumberCheck #30
  r4 a b( c ~ | % 31
  c4 b) c2 | % 32
  r4 c c d | % 33
  c4 f,2 bes4 ~ ( | % 34
  bes8[  a16 g ] a4 bes8 [ a ] g4 | % 35
  f8 [ g16 a ] bes4) a2 | % 36
  r4 c2 bes4 | % 37
  a4 (g )a2 | % 38
  r4 c d es | % 39
  d2 c4 c8 [( d ] | \barNumberCheck #40
  e8 f4 e8 ) f2 R1*2 | % 43
  r2 r4 f, | % 44
  c'4. c8 a2 ~ | % 45
  a4 bes g2 | % 46
  f2 r4 c' | % 47
  f4. f8 es4 d | % 48
  bes8 [( c d es ] f2 ~ | % 49
  f2 ) d | \barNumberCheck #50
  \time 3/4  | \barNumberCheck #50
  \tempo 4=220 bes4 bes bes | % 51
  bes2 r4 | % 52
  c4 d c | % 53
  c2 r4 | % 54
  c4 c c | % 55
  d2 es4 | % 56
  d8 c4 ( b8 c4 ) | % 57
  a2 r4 | % 58
  a4 a a | % 59
  bes2 a4 | \barNumberCheck #60
  g8 c4 ( b16 [ a ] b4 ) | % 61
  c2 r4 | % 62
  a4 a a | % 63
  bes2 a4 ( | % 64
  f4 ) g f | % 65
  f2 r4 | % 66
  f'4 f d | % 67
  es2 d4 | % 68
  bes2 a4 | % 69
  bes2 r4 | \barNumberCheck #70
  bes4 bes bes | % 71
  bes2 r4 | % 72
  f'4 es c | % 73
  d2. \bar "|."
}


sextus = \relative c' {
  \global
  R1*2 | % 3
  f2 g ~ | % 4
  g4 g bes2 | % 5
  f2 r4 f | % 6
  bes4 bes a8( [ g f g ] | % 7
  a8 bes4) a8 g4.( f8 | % 8
  es8 [ d ] es4) d f | % 9
  d4 bes c f | \barNumberCheck #10
  \tuplet 3/2  { es4( d c4) } bes d | % 11
  g4 bes bes2 | % 12
  bes,2 r4 c | % 13
  f4 c f4. f8 | % 14
  f2 f4 d | % 15
  d4. g8 g4 g | % 16
  g4. g8 f4 f | % 17
  f4. f8 f4 c | % 18
  es8  f  f4 f8  f  g4 | % 19
  f8 f4( e8) f2 | \barNumberCheck #20
  r4 f bes8  bes  a4 | % 21
  bes8  bes, d d  f4 d | % 22
  r8 bes  d d  f2 | % 23
  f8  f g g  c,  d es f  | % 24
  bes,8  bes' a g  a  f f e  | % 25
  f4 r r8 g  as g  | % 26
  g8  f f f  f  f f f  | % 27
  f2 d4. d8 | % 28
  d2 d | % 29
  e4( f2 e4) | \barNumberCheck #30
  f4 c g'2 | % 31
  f4 f g as | % 32
  g2 f4 f8 [ ( g ] | % 33
  a8 bes4 a8 bes [ a ] g4) | % 34
  f2 r | % 35
  r4 bes, f'2 | % 36
  g4 g f f (~ | % 37
  f4 e) f2 ~ | % 38
  f2 r4 g | % 39
  a4( bes) a2 | \barNumberCheck #40
  g2 f | % 41
  g2 f | % 42
  r4 g2 bes4 ~ | % 43
  bes8  bes  a4 f2 | % 44
  g2 f ~ | % 45
  f2 r R1 | % 47
  r4 f bes4. bes8 | % 48
  g2 a4 bes ~ ( | % 49
  bes4 a ) bes2 | \barNumberCheck #50
  \time 3/4  | \barNumberCheck #50
  \tempo 4=220 f4 f f | % 51
  g2 f4 | % 52
  f2 e4 | % 53
  f2 r4 | % 54
  a4 a a | % 55
  bes2 bes4 | % 56
  as4 g2 | % 57
  c,2. R2.*4 | % 62
  f4 f f | % 63
  f2 f4 ~ | % 64
  f4 es c | % 65
  d2 r4 | % 66
  f4 f f | % 67
  g2 f4 | % 68
  g2 f4 | % 69
  f2 r4 | \barNumberCheck #70
  g4 g g | % 71
  f4 bes a | % 72
  f4 ( g f ) | % 73
  f2.
}


tenor = \relative c' {
  \global
  R1*4 | % 5
  bes2 d ~ | % 6
  d4 d f2 ~ | % 7
  f2 bes,4 d | % 8
  g4 g f8 ([ es d es ] | % 9
  f4) f, ~ f as( ~ | \barNumberCheck #10
  as8 [ bes c d ] es [ d16 c ] bes4) | % 11
  bes4 bes d d | % 12
  g2 c,4 a | % 13
  c4. c8 a4 bes | % 14
  c2 bes4 bes | % 15
  bes4. g8 g2 | % 16
  r4 bes bes4. f8 | % 17
  f2 r4 a | % 18
  bes8  d  c4 bes8  d c g  | % 19
  d'8  c  r4 r8 c  c a ~  | \barNumberCheck #20
  a8  d c c  bes  bes  c4 | % 21
  bes4 r8 bes ~ bes d4 f8 | % 22
  f4 f8  f  bes,  bes  bes4 | % 23
  c4 r r2 | % 24
  r8 f  f e  f  c g' g  | % 25
  f4 r es d8  d  | % 26
  es8  d c c  bes  d c c  | % 27
  bes4 f' ~ f8  f  f4 | % 28
  f4 g2 f4 R1 | \barNumberCheck #30
  c4 f ~( f8[  es]  es[  d16 c]  | % 31
  d2) c4 f, | % 32
  c'4. c8 a4 bes | % 33
  c2 ( bes4. c8 | % 34
  d4 c ) bes2 ~ | % 35
  bes2 r4 f | % 36
  c'4. c8 a4 bes | % 37
  c2 f, ~ | % 38
  f2 r | % 39
  r2 r4 f | \barNumberCheck #40
  c'4. c8 a4 bes ~ | % 41
  bes4 c2 ( b4 ) | % 42
  c4 g g'4. g8 | % 43
  e4 f d2 | % 44
  c2. c4 | % 45
  f4. f8 es4 es ~ | % 46
  es4 d c c ~ | % 47
  c4 d bes bes ~ | % 48
  bes4 bes c ( d | % 49
  c2 ) bes | \barNumberCheck #50
  \time 3/4  | \barNumberCheck #50
  \tempo 4=220 bes4 bes bes | % 51
  es,8 [( f  g  a ] bes4 ) | % 52
  a4 g c | % 53
  f,2 r4 | % 54
  f'4 f f | % 55
  f4 g2 | % 56
  f4 d ( e ) | % 57
  f2 r4 | % 58
  f4 f f | % 59
  bes,8 [( c  d  es ] f4 ) | \barNumberCheck #60
  es4 d g | % 61
  c,2 r4 | % 62
  c4 c c | % 63
  bes2 r4 R2.*2 | % 66
  d4 d bes | % 67
  bes2 bes4 ~ | % 68
  bes4 c c | % 69
  bes2 r4 | \barNumberCheck #70
  bes4 bes bes | % 71
  bes4 f'2 | % 72
  d4 c2 | % 73
  bes2.
}


bassus = \relative c {
  \global
  R1*6 | % 7
  f2 g ~ | % 8
  g4 g bes2 | % 9
  bes,2 r4 f' | \barNumberCheck #10
  as4 as g4.( f8 | % 11
  es8 [ f g a ? ] bes2) | % 12
  g2 f ~ | % 13
  f1 ~ | % 14
  f2 bes, | % 15
  r4 bes' bes4. es,8 | % 16
  es2 r4 bes | % 17
  bes4. bes8 f'4 f | % 18
  es8  bes  f'4 bes, r8 c | % 19
  d8  f  c4 f2 | \barNumberCheck #20
  r4 f d8  bes  f'4 | % 21
  bes,4 bes bes bes | % 22
  bes1 | % 23
  f'4 r r2 | % 24
  r8 bes  c c  f,  a bes c  | % 25
  f,8  f g g  c,  es f g  | % 26
  c,8  d f f  bes,  bes f' f  | % 27
  bes,2 bes'4. bes8 | % 28
  bes2 bes | % 29
  c1 | \barNumberCheck #30
  f,2 r R1 | % 32
  r2 r4 bes, | % 33
  f'4. f8 d4 es | % 34
  f2 bes, ~ | % 35
  bes2 r R1 | % 37
  r4 c c'4. c8 | % 38
  a2 bes4 c | % 39
  f,1 | \barNumberCheck #40
  r4 c d2 | % 41
  es2 d4 d | % 42
  c2 g R1 | % 44
  r4 c f4. f8 | % 45
  d2 es | % 46
  f2 f | % 47
  f2 g ~ | % 48
  g4 g f bes, | % 49
  f'2 bes, | \barNumberCheck #50
  \time 3/4  | \barNumberCheck #50
  \tempo 4=220 R2.*4 | % 54
  f'4 f f | % 55
  bes8 [( a  g  f ] es4 ) | % 56
  f4 g c, | % 57
  f2. R2.*4 | % 62
  f4 f f | % 63
  bes,8 [( c  d  es ] f4 ) | % 64
  d4 c f | % 65
  bes,2 r4 | % 66
  bes'4 bes bes | % 67
  es,8 [( f  g  a ] bes4 ) | % 68
  g4 es f | % 69
  bes,2 r4 | \barNumberCheck #70
  es4 es es | % 71
  bes8 ([ c  d  es ] f4 ) | % 72
  bes,4 es f | % 73
  bes,2.
}

superiusl = \lyricmode {
  A -- scen -- dit De -- us in ju -- bi -- la -- 
  ti -- o -- ne, in ju -- bi -- la -- ti -- o -- ne, a -- scen -- dit
  De -- us in ju -- bi -- la -- ti -- o -- ne, et Do -- mi -- nus, et
  
  Do -- mi -- nus, et Do -- mi -- nus in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- bæ,
  in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia. Do -- mi -- nus
  
  in cœ -- lo __ pa -- ra -- vit se -- dem su --
  am, pa -- ra -- vit se -- de su -- am,
  pa -- ra -- vit se -- dem su -- am, pa -- ra -- vit
  
  se -- dem __ su -- am.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al --
  
  le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu --
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia.
}

mediusl = \lyricmode {
  A -- scen -- dit De -- us in
  ju -- bi -- la -- ti -- o -- ne et Do -- mi --
  
  nus, et Do -- mi -- nus in vo -- ce tu -- bæ in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce
  tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia. Do -- mi -- nus in cœ -- 
  
  lo pa -- ra -- vit se -- dem su -- am,
  se -- dem su -- am, pa -- ra -- vit se -- dem su -- am,
  pa -- ra -- vit se -- dem su -- 
  
  am, pa -- ra -- vit se -- dem su -- am.
  Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- 
  
  le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia, 
  al -- le -- lu -- ia, al -- le -- lu -- ia.
}
sextusl = \lyricmode {
  A -- scen -- dit De -- us in
  ju -- bi -- la -- ti -- o -- ne, in ju -- bi -- la -- ti -- o -- ne, a --
  scen -- dit De -- us in ju -- bi -- la -- ti -- o -- ne, et Do -- mi -- nus, et
  
  Do -- mi -- nus, et Do -- mi -- nus in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- 
  bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia. Do -- mi -- nus in cœ -- lo pa -- ra --
  
  vit, pa -- ra -- vit se -- dem su -- am, pa -- ra -- 
  vit se -- dem su -- am, __ pa -- ra -- vit se -- dem 
  su -- am, pa -- ra -- vit se -- dem su -- am, __
  
  pa -- ra -- vit se -- dem su -- am.
  Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, 
  
  al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia, 
  al -- le -- lu -- ia, al -- le -- lu -- ia.
}
tenorl = \lyricmode {
  A -- scen -- 
  dit De -- us in ju -- bi -- la -- ti -- o -- 
  ne, a -- scen -- dit De -- us in ju -- bi -- la -- ti -- o -- ne, et Do -- mi -- nus,
  
  et Do -- mi -- nus in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- 
  bæ,  in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia. Do -- mi -- nus in cœ -- lo, in cœ -- 
  
  lo pa -- ra -- vit se -- dem su -- am, __ pa -- 
  ra -- vit se -- dem su -- am, pa -- ra -- vit se -- dem __
  su -- am, pa -- ra -- vit se -- dem su -- am, pa -- ra -- vit se -- dem __
  
  su -- am, pa -- ra -- vit se -- dem su -- am.
  Al -- le -- lu -- ia, __ al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia, __
  
  al -- le -- lu -- ia, al -- le -- lu -- ia, 
  al -- le -- lu -- ia, al -- le -- lu -- ia, 
  al -- le -- lu -- ia, al -- le -- lu -- ia.
}

bassusl = \lyricmode {
  A -- scen -- dit De -- us in ju -- bi -- la -- 
  ti -- o -- ne, et Do -- mi --
  
  nus, et Do -- mi -- nus in vo -- ce tu -- bæ, in vo -- ce tu -- bæ, in vo -- ce tu -- 
  bæ, in vo -- ce tu -- bæ, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- 
  ia, al -- le -- lu -- ia, al -- le -- lu -- ia. Do -- mi -- nus in cœ -- lo
  
  pa -- ra -- vit se -- dem su -- am, __ 
  pa -- ra -- vit se -- dem su -- am, pa -- ra -- 
  vit se -- dem su -- am pa -- ra -- vit se -- dem 
  
  su -- am, pa -- ra -- vit se -- dem su -- am.
  Al -- le -- lu -- 
  ia, __ al -- le -- lu -- ia, 
  
  al -- le -- lu -- ia, __ al -- le -- lu -- 
  ia, al -- le -- lu -- ia, __ al -- le -- lu -- ia, 
  al -- le -- lu -- ia, __ al -- le -- lu -- ia.
}

\bookpart {
  \score {
    %  \transpose c bes {

        \new ChoirStaff <<
        %staff for superius
        \new Staff = "superius" \with {
          instrumentName = "Treble 1"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "superius" { \superius } }   
        \new Lyrics = "superius"
      
        %staff for medius
        \new Staff = "meduis" \with {
          instrumentName = "Treble 2"
          midiInstrument = "choir aahs"
        }
        { \new Voice = "medius" { \medius } }   
        \new Lyrics = "medius"

      %staff for sextus
      \new Staff = "sextus" \with {
        instrumentName = "Alto"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "sextus" { \sextus } }  
      \new Lyrics = "sextus"
      
      %staff for tenor
      \new Staff = "tenor" \with {
        instrumentName = "Tenor"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "tenor" { \clef "G_8" \tenor } }
      \new Lyrics = "tenor"
      
     
      %staff for bassus
      \new Staff = "bassus" \with {
        instrumentName = "Bass"
        midiInstrument = "choir aahs"
      }
      { \new Voice = "bassus" { \clef "bass" \bassus } }
      \new Lyrics = "bassus"
      
      %lyrics
      \context Lyrics = "superius" { \lyricsto "superius" { \superiusl }}
      \context Lyrics = "medius" { \lyricsto "medius" { \mediusl }}
      \context Lyrics = "sextus" { \lyricsto "sextus" { \sextusl }}
      \context Lyrics = "tenor" { \lyricsto "tenor" { \tenorl }}
      \context Lyrics = "bassus" { \lyricsto "bassus" { \bassusl }}
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
     \new Staff = "superius" \new Voice = "superius" { \superius }
     \new Staff = "medius" \new Voice = "medius" { \medius }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "sextus" \new Voice = "sextus" { \sextus }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
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
  \bookOutputSuffix "superius"
  \score {
    \rehearsalMidi "superius" "soprano sax" \superiusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "medius"
  \score {
    \rehearsalMidi "medius" "soprano sax" \mediusl
    \midi { }
  }
}


\book {
  \bookOutputSuffix "sextus"
  \score {
    \rehearsalMidi "sextus" "tenor sax" \sextusl
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorl
    \midi { }
  }
}


\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "tenor sax" \bassusl
    \midi { }
  }
}
