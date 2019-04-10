\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Surrexit Pastor Bonus"
  composer = "Jean Lhéritier"
  piece = "Easter Responsory"
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
  \key e \minor
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \override AccidentalSuggestion.avoid-slur = #'around
}

vsi = \relative c'' {
  \global
  \secondbar  
  a1 |
  a2 e'~( |
  e4 d) c b |
  a8[( g a b] c4 b~ |
  b8[ a] a2 g4)
  c a c2~ | \abr
  c4 b a4.( g8) |
  fis4 d8[( e] fis[ g a b] |
  c[ d] e4. d8 d4~ |
  d \ficta cis) d4.( cis16[ b] |
  a8[ g fis e] fis2) | \abr
  
  r4 e e2 |
  a2.( g4) |
  fis8[ g a b] c4.( a8) |
  c4( d) e2~ |
  e r4 a, | \abr
  a a e'2~( |
  e4 d c4. b16[ a]) |
  c1 |
  b |
  r4 a a a |
  c4. d8 e2 |
  
  r e~ |
  e d |
  c a |
  e'2. e4 |
  e2 c( |
  b1 |
  g2) a~ |
  a r |
  R1 |
  r2 b |
  e2. e4 |
  
  d c b4. b8 |
  b4 c b a~ |
  a g a a |
  a a g2~ |
  g4 g c4.( d8) | 
  e2 r |
  a, e'~ |
  e4 e c e~( |
  e8[ d c b] c2) |
  b4 b e2~ |
  e4 a, b2 |
  
  g a~ |
  a r |
  R1 |
  fis2 g~ |
  g4 e g4.( a8 |
  b2 g4 a~ |
  a8[ g]) c4 b b |
  c a c4. d8 e2 r |
  r r4 a, |
  d d( c2~ |
  c4 b8[ a]) g4 c4~ |
  
  c8[ b] a2 g4 |
  a2 r |
  r4 b2 a4 |
  b b c2 |
  d b |
  r4 e2 d4 |
  e4.( d8 c4) b |
  a8[( b c d] e4) fis4~ ( |
  fis8[ e] e2 \ficta dis4) |
  e1 |
  R1 |
  
  r2 c |
  d e( |
  d4) e2( d8[ c] |
  b4) d4.( c8[ b a] |
  g4 a) g2 |
  g r |
  R1*3 |
  r2 r4 a |
  
  b2( c) |
  a b |
  r4 a2 g4 |
  a2 a4 a |
  e'2. e4 |
  c a e' c~( |
  c8[ b] a2 \ficta gis4) |
  a1~ |
  a~ |
  a
}


vsii = \relative c'' {
  \global
  R1 |
  r2 a~ |
  a a |
  e'2.( d4) |
  c2 b |
  a8[( b c d] e[ \ficta f] e4~ |
  e8[ d] d2 \ficta cis4) |
  d1 |
  g,4. ( a8 b4) g |
  a2 fis~ |
  fis r 
  
  a1 |
  a2 e' |
  fis e~( |
  e4 d) c2 |
  b4 g a c~( |
  c8[ b] a2 g4) |
  a1~ |
  a |
  r4 e e e |
  a1 |
  a2.( g4) |
  
  g2 r4 g~ |
  g a b2 |
  r4 e2 d4 |
  c b c a |
  c4.( d8 e4) fis~( |
  fis8[ e] e2 \ficta dis4) |
  e1~ |
  e |
  R1 |
  r4 a, d2~ |
  d4 c a b~( |
  
  b8[ a] a2 g8[ fis]) |
  g2 r |
  b c4. ( d8) |
  e2.( d8[ c] |
  b[ a g fis]) e4 c'~( |
  c b8[ a]) g4 c~( |
  c8[ b] a2 \ficta gis4) |
  a1 |
  r4 a e'2~ |
  e4 e b( c~ |
  c8[ d] ) e2 ( \ficta dis4) |
  
  e1 |
  R1*2 |
  r2 b |
  b2. e,4 |
  g4.( a8 b4 c~ |
  c8[ b]) a2( \ficta gis4) |
  a2 r |
  R1*2 |
  r4 d, a' a |
  g c4.( b8[ a g]) |
  
  a2 b ( |
  c) a |
  R1 |
  r4 b2 a4 |
  b4. ( a8 g[ fis]) b4~ |
  b a b2( |
  g4 a2 g4) |
  c4.( b16[ a] g4) b~ |
  b a b2~( |
  b4 c4. b8[ g a]) |
  b2 r4 e,~ |
  
  e d e2 |
  fis e |
  b'( c |
  d8[ c b a] b[ a] d4~ |
  d8[ c] c2 b4) |
  c1 |
  R1*4
  
  r2 r4 e~ |
  e d e2~ |
  e c~ |
  c4 c d d |
  c2.( b8[ a]) |
  e'4.( d8 c[ b a g] ) |
  a2 b |
  c r4 a |
  c4.( d8) e2 |
  c1
}


vsiii = \relative c' {
  \global
  R1*3 |
  r2 e2~ |
  e e |
  a2.( g4)
  \ficta f2 e |
  d8[( e fis g] a4 fis |
  e c d2 ) |
  e2 r4 d |
  d2 a'~ |
  
  a4 a,8[( b] c[ d] e4~ |
  e8[ d]) d4.( c8[ c b16 c] |
  d4) a( a'2) |
  e r4 e |
  g2 f4( e) |
  c d e2 |
  c4.( d8 e2~ |
  e) r4 e |
  e e g2~( |
  g4 fis8[ e] fis2) |
  e2 e~ |
  
  e1~ |
  e2 r |
  r4 c2 d4 |
  e2. e4 |
  a2. a4 |
  g( fis8[ e]) fis2 |
  e2. a,4 |
  c4.( d8 e[ \ficta f] e4~ |
  e) d4 e4. e8 |
  g4 fis fis d |
  a'4.( g16[ fis] g4) g4~ |
  
  g8[ fis e d] e4.( d16[ c] |
  b8[ g]) g'4 g fis |
  e4.( d8 c4) a~ |
  a c c8[ d] e4~ |
  e e ( c) e~ |
  e8[ c] g'4.( fis8[ e d] |
  c4) d e2 |
  c2 r4 e |
  a2. a4 |
  g2. a4(~ |
  a8[ g fis e] fis2) |
  
  e r4 a, |
  e'2. e4 |
  b c4.( d8 e4~ |
  e \ficta dis) e2~ |
  e r4 e |
  e2. a,4 |
  c4. d8 e2 |
  r4 c2 e4~ |
  e g g d |
  e2 a, |
  b4 b c2 |
  r4 a e' c |
  
  c e e4. ( d8 |
  c[ b]) c2( b8[ a]) |
  b2 r |
  r r4 e~ |
  e d g g |
  e4.( fis8) g2 |
  e1 |
  r4 e2 d4 |
  e2 fis4 g(~ |
  g8[ fis e d] c[ d]) e4~( |
  e d) e2 |
  
  R1 |
  r2 g |
  g a |
  g1 |
  e4( \ficta f) d2( |
  e4 g2 \ficta f4~ |
  \ficta f! g2 d4) |
  e1~ |
  e2 r |
  r4 g2 e4 |
  
  fis g e2 |
  fis e~ |
  e1 |
  r4 e2 d4 |
  e2 c |
  r4 a2 c4~ |
  c8[ d] e2 e4 |
  c e2 (d4) |
  e( a, c4. d8) |
  e1
}


vsiv = \relative c' {
  \global
  R1*5 |
  r2 a~ |
  a a |
  d2. d4 |
  c2 b |
  a1 |
  r4 a a d~ |
  
  d c2 b4~( |
  b a) b ( g8[ a] |
  b[ g] d'4 c a~ |
  a b c a |
  b4. c8 d4 e |
  a,2 b) |
  a1 |
  R1 |
  r4 b b b |
  d1 |
  c |
  
  d2 e,8[( fis g a ] |
  g4 e fis d8[ e] |
  fis[ g a b] c4 a~ |
  a g) a2 |
  r4 c2 d4 |
  e2 b~ |
  b c~ |
  c4 a b c~( |
  c b8[ a] c4 b~ |
  b8[ a] a2 \ficta gis4) |
  a2 r |
  
  r b |
  e4 e d4.( c8) |
  b2 a |
  r4 e2 g4~ |
  g8 a b4 r a~ |
  a c4.( d8 e4) |
  a,2( b) |
  a1~ |
  a2 r4 a |
  e'2. a,4 |
  c2 b4 b |
  
  b2 c~ |
  c b |
  e2.( a,4) |
  b2.( g4) |
  g1 |
  R |
  r2 r4 e' |
  e2. a,4 |
  c e d a |
  c( b4. a8) a4~( |
  a \ficta gis) a8[( b c d] |
  e4) c4.( d8) e4 |
  
  e( c) b2 |
  r4 e2 d4 |
  e2. e4 |
  fis( g) e4.( fis8 |
  g4. fis8 e[ d c b] |
  c2 b) |
  c4.( b8 a4) e |
  a4.( b8 c4) b |
  c2 b |
  g4( a4. g8 e4 |
  fis g2 a4 |
  
  b d4. c8 c4~ |
  c b) c2 |
  R1*3 |
  r4 e2 c4 |
  d c a4.( b8 |
  c[ d]) c2( b8[ a] |
  g4. fis8 e[ fis g a] |
  b4 ) g c2 |
  
  b4 d2( c4) |
  d2 b4 b |
  c2.( b4 ) |
  a1~ |
  a2 r4 a~ |
  a c4.( d8) e4~( |
  e8[ d] c4 b2) |
  a1~ |
  a~ |
  a
}

vsv = \relative c {
  \global
  R1*9 |
  r2 d~ |
  d d |
  
  a'2.( g4) |
  fis2 e |
  d8[( e fis g] a[ b] c4~ |
  c b a2 |
  g4 e \ficta f a~ |
  a d,) g2 |
  r4 e e e |
  a4.( g8 fis[ e]) a4~( |
  a g8[ fis] g2) |
  a1 |
  r4 a,4.( b8[ c d] |
  
  e[ fis] g4. fis8[ e d] |
  e4 c b2) |
  a r |
  R1*4 |
  r2 e' |
  a a4 g |
  e( fis) d2 |
  r4 a' a e |
  
  g a e2 |
  r r4 d |
  g4. fis8 e4 e |
  a, a c4. d8 |
  e1 |
  r4 e4. fis8 g4 |
  a d, g4. fis8 |
  e1~ |
  e2 r |
  R1*2 |
  
  e2 a~ |
  a4 a g2~ |
  g4 a4.( g8[ fis e] |
  fis2) e |
  R1*2 |
  r2 e |
  a r |
  r r4 d, |
  g2 fis4 e~ |
  e d e2~ |
  e4 a, c4.( d8) |
  a2( e') |
  a, r4 a'~ |
  a g c2 |
  b4 e, a2 |
  g r |
  R1*3 |
  r2 r4 b, |
  e a, c2 |
  b c8[( d e fis] |
  
  g4 a4. g8 g4~ |
  g fis) g2 |
  R1*2 |
  r2 g |
  g a |
  g4 e \ficta f2 |
  e( a,4. b8 |
  c[ d e fis] g[ a] b4) |
  e,2. c4 |
  
  d( b) a2 |
  r4 a'2 g4 |
  a2 e |
  a, d4 d |
  a a2 c4~ |
  c8 d e2 a,4~( |
  a8[ b]) c[ a] e'2 |
  a,4. a8 d4 d |
  a1~ |
  a
}

vsvi = \relative c {
  \global
  R1*13
  r2 a~ |
  a a |
  e' d4 c | \abr
  \ficta f2( e) |
  a,1 |
  r4 a a a |
  e'1 |
  d( |
  a4. b8 c[ d e fis] | \abr
  g4 e8[ fis] g[ a] b4~ |
  b8[ a] a2 \ficta gis4) |
  a( g f2 |
  e) r |
  R1 \abr
  R1 |
  e2 a~ |
  a4 a g( \ficta f8[ e]) |
  \ficta f2( e4. d8 |
  c4 d b2) |
  a r | \abr
  r r4 e' |
  e c g' a |
  e2 a,4 a |
  c4. ( d8) e2 |
  r a, | \abr
  c4.( d8 e4 c) |
  f2 ( e ) |
  a,1~ |
  a |
  R1*2 | \abr
  R1 |
  a2 e'~ |
  e4 a, c2 |
  b e~ |
  e1 |
  R1 | \abr
  R1 |
  a,2 a'~ |
  a4 e g( fis |
  e2 d4 c) |
  b2 a4 a |
  c4. ( d8 e4) a, | \abr
  e'4.( fis8 g4) g |
  e a4.( g8 fis4) |
  e2 r4 a~ |
  a g c2 |
  b e, |
  a g | \abr
  R1*4 |
  r4 b, e a, | \abr
  e' fis2( e4 ) |
  d2 c |
  R1*3 | \abr
  c2. a4 |
  b c d d |
  a4.( b8 c[ d] e4~ |
  e8[ fis g a] b4 e,8[ fis] |
  g[ a] b4. e,8) a4~ | \abr
  a g a2 |
  d, r4 e |
  c a8[( b] c[ d] e4~ |
  e d8[ c] f2) |
  e2. a,4 | \abr
  c4.( d8 e4) e |
  e4.( fis8 g4) e~ |
  e c \ficta f2 |
  e1~ |
  e1 \bar "|."
}


vli = \lyricmode {
  Sur -- re -- xit __ pa -- stor bo -- nus, sur -- re -- 
  xit pa -- stor bo -- nus, __
  
  Sur -- re -- xit __ pa -- stor __ bo -- nus __ qui
  a -- ni -- mam __ su -- am, qu a -- ni -- ma su -- am
  
  po -- su -- it pro o -- vi -- bus su --
  is, __ pro o -- vi --
  
  bus su -- is, pro o -- vi -- bus su -- is, al -- le -- lu -- ya, al -- le -- lu --
  ya. Et pro __ gre -- ge su -- o, et pro __ gre -- ge
  
  su -- o __ mo -- ri __ di -- gna --
  tus est, mo -- ri di -- gna -- tus est, al -- le -- lu -- ya, al --
  
  le -- lu -- ya. Et e -- nim pas -- cha no -- strum, et e --
  nim __ pa -- scha __ no -- strum
  
  im -- mo -- la -- tus __ est __ Chri --
  stus al --
  
  le -- lu -- ya, al -- le -- lu -- ya, al -- le -- lu --
  ya, al -- le -- lu -- ya. __
}

vlii = \lyricmode {
  Sur -- re -- xit __ pa -- stor bo --
  nus, pa -- stor bo -- nus, __
  
  sur -- re -- xit pa -- stor __ bo -- nus, pa -- stor bo --
  nus __ qui a -- ni -- mam su --
  
  am po -- su -- it, po -- su -- it pro o -- vi -- bus __ su --
  is, __ pro o -- vi -- bus su --
  
  is, al -- le -- lu -- ya, al --
  le -- lu -- ya. Et pro __ gre -- ge __ su --
  
  o mo -- ri di -- gna --
  tus __ est, al -- le -- lu -- ya, al --
  
  le -- lu -- ya. Et e -- nim __ pas -- cha no --
  strum, __ pas -- cha no -- strum, im --
  
  mo -- la -- tus est Chri --
  stus, 
  
  al -- le -- lu -- ya, __ al -- le -- lu -- ya, __
  al -- le -- lu -- ya, al -- le -- lu -- ya.
}

vliii = \lyricmode {
  Sur -- re -- xit __
  pa -- stor bo -- nus, sur -- re -- xit __
  
  pa -- stor __ bo -- nus, sur -- re -- xit __
  pa -- stor bo -- nus __ qui a -- ni -- mam __ su -- am __
  
  po -- su -- it pro o -- vi --
  bus __ su -- is, pro o -- vi -- bus su -- is, pro o -- vi -- bus __ su --
  
  is, __ pro o -- vi -- bus __ su -- is, al -- le -- lu -- ya, __
  al -- le -- lu -- ya. Et pro gre -- ge su --
  
  o, et pro gre -- ge su -- o __ mo -- ri di --
  gna -- tus est, mo -- ri __ di -- gna -- tus est, al -- le -- lu -- ya, al -- le -- lu --
  
  ya, al -- le -- lu -- ya. Et __ e -- nim pas -- cha __ no --
  strum, et e -- nim pas -- cha __ no -- strum 
  
  im -- mo -- la -- tus est __ Chri --
  stus, __ im -- mo --
  
  la -- tus est Chri -- stus, __ al -- le -- lu -- ya,
  al -- le -- lu -- ya, al -- le -- lu -- ya.
}

vliv = \lyricmode {
  Sur -- 
  re -- xit pa -- stor bo -- nus, sur -- re -- xit __
  
  pa -- stor __ bo -- 
  nus qui a -- ni -- mam su --
  
  am, su -- am, po -- su --
  it pro __ o -- vi -- bus su -- is.
  
  Pro o -- vi -- bus __ su -- is, al -- le -- lu -- ya, al --
  le -- lu -- ya. __ Et pro gre -- ge su -- o,
  
  et pro __ gre -- ge __ su -- o
  mo -- ri di -- gna -- tus est, di -- gna -- tus __ est __ al -- le --
  
  lu -- ya. Et e -- nim pas -- cha __ no --
  strum, __ et e -- nim pas -- cha no -- 
  
  strum
  im -- mo -- la -- tus est __ Chri -- stus, al --
  
  le -- lu -- ya, al -- le -- lu -- ya, __ al --
  le -- lu -- ya. __
}

vlv = \lyricmode {
  Sur -- re --
  
  xit __ pa -- stor bo -- 
  nus qu a -- ni -- mam __ su -- am, su --
  
  am
  pro o -- vi -- bus su -- is, pro o -- vi --
  
  bus su -- is, pro o -- vi -- bus su -- is, al -- le -- lu -- ya,
  al -- le -- lu -- ya, al -- le -- lu -- ya. __
  
  Et pro __ gre -- ge __ su -- o
  mo -- ri, mo -- ri di -- gna -- tus est, __ al -- le --
  
  lu -- ya. Et __ e -- nim pas -- cha no -- strum,
  et e -- nim pas -- cha no --
  
  strum im --
  mo -- la -- tus ets Chri -- stus, __ al -- le --
  
  lu -- ya, al -- le -- lu -- ya, al -- le -- lu -- ya, al -- le --
  lu -- ya, al -- le -- lu -- ya, al -- le -- lu -- ya. __
}

vlvi = \lyricmode {
  Sur -- re -- xit pa -- stor
  bo -- nus qui a -- ni -- mam su --
  am __
  pro o -- vi -- bus __ su -- is,
  pro o -- vi -- bus su -- is, al -- le -- lu -- ya, al --
  le -- lu -- ya. __
  et pro __ gre -- ge su -- o __
  mo -- ri __ di -- gna -- tus est, al -- le -- lu --
  ya, __ al -- le -- lu -- ya. Et __ e -- nim pas -- cha no -- strum,
  et e -- nim
  pas -- cha __ no -- strum
  im -- mo -- la -- tus est Chri -- stus, __ al --
  le -- lu -- ya, al -- le -- lu -- ya, al --
  le -- lu -- ya, __ al -- le -- lu -- ya. __
}


vni = "sopranoone"
sni = "S1"
vfi = \markup { \center-column { "Soprano" \bold \sni  } }

vnii = "sopranotwo"
snii = "S2"
vfii = \markup { \center-column { "Soprano" \bold \snii  } }

vniii = "alto"
sniii = "A"
vfiii = \markup { \center-column { "Alto" \bold \sniii  } }

vniv = "tenor"
sniv = "T"
vfiv = \markup { \center-column { "Tenor" \bold \sniv  } }

vnv = "bassone"
snv = "B1"
vfv = \markup { \center-column { "Bass" \bold \snv  } }

vnvi = "basstwo"
snvi = "B2"
vfvi = \markup { \center-column { "Bass" \bold \snvi  } }


\bookpart {
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      %staff for voice i
      \new Staff = \vni \with {
        instrumentName = \vfi
        shortInstrumentName = \sni
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vni { \vsi } }   
      \new Lyrics \lyricsto \vni { \vli }
      
      %staff for voice ii
      \new Staff = \vnii \with {
        instrumentName = \vfii
        shortInstrumentName = \snii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnii { \vsii } }   
      \new Lyrics \lyricsto \vnii { \vlii }
      
      %staff for voice iii
      \new Staff = \vniii \with {
        instrumentName = \vfiii
        shortInstrumentName = \sniii
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniii { \vsiii } }   
      \new Lyrics \lyricsto \vniii { \vliii }
      
      %staff for voice iv
      \new Staff = \vniv \with {
        instrumentName = \vfiv
        shortInstrumentName = \sniv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vniv { \clef "G_8" \vsiv } }   
      \new Lyrics \lyricsto \vniv { \vliv }
      
      %staff for voice v
      \new Staff = \vnv \with {
        instrumentName = \vfv
        shortInstrumentName = \snv
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnv { \clef "bass" \vsv } }   
      \new Lyrics \lyricsto \vnv { \vlv }
      
      %staff for voice vi
      \new Staff = \vnvi \with {
        instrumentName = \vfvi
        shortInstrumentName = \snvi
        midiInstrument = "choir aahs"
      }
      { \new Voice = \vnvi { \clef "bass" \vsvi } }   
      \new Lyrics \lyricsto \vnvi { \vlvi }
      
      
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
 (parser location midiInstrument name lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = \vni \new Voice = \vni { \vsi }
     \new Staff = \vnii \new Voice = \vnii { \vsii }
     \new Staff = \vniii \new Voice = \vniii { \vsiii }
     \new Staff = \vniv \new Voice = \vniv { \vsiv }
     \new Staff = \vnv \new Voice = \vnv { \vsv }
     \new Staff = \vnvi \new Voice = \vnvi { \vsvi }
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

midivoice = "soprano sax"

% MIDI для репетиции:
\book {
  \bookOutputSuffix \vni
  \score {
    \rehearsalMidi \midivoice \vni \vli 
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnii
  \score {
    \rehearsalMidi \midivoice \vnii \vlii
    \midi { }
  }
}


\book {
  \bookOutputSuffix \vniii
  \score {
    \rehearsalMidi \midivoice \vniii \vliii
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vniv
  \score {
    \rehearsalMidi \midivoice \vniv \vliv
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnv
  \score {
    \rehearsalMidi \midivoice \vnv \vlv
    \midi { }
  }
}

\book {
  \bookOutputSuffix \vnvi
  \score {
    \rehearsalMidi \midivoice \vnvi \vlvi
    \midi { }
  }
}

