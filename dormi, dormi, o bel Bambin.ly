\version "2.18.2"

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
}

sopvoice = \relative c {
  \global
  \tempo "Andante con moto"
  \partial 2 f'4. g8 |  a4 
  \once \slurDashed a8( a)
  a4 a | a2\< c4 a | g2\!\lheel \breathe f4.\< g8\! |
  a4 a8 a c4 a | g2\>\lheel r4 a8\! bes\< | c4 c8\! c d4 d | c2\>\lheel a\! |
  g4\mf g f2 | g4\mp g f2 \breathe | f4.\mf g8 a4 a | c 
  \once \slurDashed a8( a)
  g2\>\lheel | f\! \bar "|."
}

altvoice = \relative c {
  \global
  \partial 2  f'4. e8 | f4 \once \slurDashed f8( f) f4 f 
  f2 a4 f f\lheel( e)
  d4. e8 | 
  f4 
  f8 f
  a4 f | e2\lheel r4 f8 g | a4 a8 a bes4 bes | g2\lheel f | 
  bes,4 c c2 | f4 e c2 | d4. e8 f4 f | a 
  \once \slurDashed f8( f)
  f4(\lheel e) | c2 \bar "|."
}

tenorvoice = \relative c {
  \global  
  \partial 2 r2 | c'4 
  \once \slurDashed c8( c)
  c4 c
  c2 f4 c | c2\lheel
  \breathe d4. c8 | 
  c4 c8 c c4 d | e2\lheel f4 r4 | f f8 f f4 f | f(\lheel e) d2 | 
  bes4\mf c a2 | bes4\mp c a2 \breathe | d4.\mf e8 c4 c | f 
  \once \slurDashed c8( c)
  c2\lheel | a \bar "|."
}

bassvoice = \relative c {
  \global
  \partial 2 r2 | f4 
  \once \slurDashed f8( f)
  f4 f | f2\< f,4 a | c2\!\lheel d4.\< e8\! | 
  f4 f8 f f4 f | c2\>\lheel f4 r4\< | f f8 f bes,4 bes\! | c2\>\lheel d\! | 
  d4 e f2 | d4 e f2 | d4. c8 a4 f | a 
  \once \slurDashed bes8( bes)
  c2\>\lheel | f\! \bar "|."
}

sopvoicev = \relative c {
  \global
  \tempo "Andante con moto"
  \partial 2 f'4. g8 |  a4 
  a4
  a4 a | a2\< c4 a | g2\!\lheel \breathe f4.\< g8\! |
  a4 a8 a c4 a | g2\>\lheel r4 a8\! bes\< | c4 c8\! c d4 d | c2\>\lheel a\! |
  g4\mf g f2 | g4\mp g f2 \breathe | f4.\mf g8 a4 a | c 
  a
  g2\>\lheel | f\! \bar "|."
}

altvoicev = \relative c {
  \global
  \partial 2  f'4. e8 | f4 f f4 f 
  f2\< a4 f f\lheel(\! e) \breathe
  d4.\< e8\! | 
  f4 
  f8 f
  a4 f | e2\>\lheel r4 f8\! g\< | a4 a8\! a bes4 bes | g2\>\lheel f\! | 
  bes,4\mf c c2 | f4\mp e c2 \breathe | d4.\mf e8 f4 f | a 
  f
  f4\>(\lheel e) | c2\! \bar "|."
}


tenorvoicev = \relative c {
  \global  
  \partial 2 r2 | c'4 
c  c4 c
  c2\< f4 c | c2\lheel\!
  \breathe d4.\< c8\! | 
  c4 c8 c c4 d | e2\>\lheel f4 r4\< | f f8 f f4 f\! | f\>(\lheel e) d2\! | 
  bes4\mf c a2 | bes4\mp c a2 \breathe | d4.\mf e8 c4 c | f 
c  c2\>\lheel | a\! \bar "|."
}

bassvoicev = \relative c {
  \global
  \partial 2 r2 | f4 
f  f4 f | f2\< f,4 a | c2\!\lheel \breathe d4.\< e8\! | 
  f4 f8 f f4 f | c2\>\lheel f4 r4\< | f f8 f bes,4 bes\! | c2\>\lheel d\! | 
  d4\mf e f2 | d4\mp e f2 \breathe | d4.\mf c8 a4 f | a 
bes  c2\>\lheel | f\! \bar "|."
}

texta = \lyricmode {
  
Dor -- mi, dor -- mi,_o bel Bam -- bin, Re di -- vin. Dor -- mi, 
dor -- mi, o Fan -- to -- lin. Fa la na -- nna, o ca -- ro Fig -- lio, 
Re del ciel, Re del ciel, Tan -- to bel, gra -- zio -- so __ gig -- lio.
}
  
textb = \lyricmode { 
  Per -- che pian -- gi,_o Bam -- bi -- nell, Forse il giel Ti da 
  no -- ia, o l'a -- si -- nell'? Fa la na -- nna, o Pa -- ra -- di -- so 
  Del mio c(u)or, del mio c(u)or, Re -- de -- ntor, ti ba -- ccio_il vi -- so.
}

textc = \lyricmode { 
  Chiu -- di_i lu -- mi, __ mio Te -- sor, Dolce A -- mor Di mia 
  al -- ma, al -- mo Sig -- nor, Fa la na -- nna, o re -- gio Infan -- te,
  Sopra il fien sopra il fien, Ca -- ro ben ce -- le -- ste_A -- man -- te. 
}

textbass = \lyricmode {
  \repeat unfold 16 \skip 1 Fa na -- nna
}

\header {
  title = "Dormi, dormi, o bel Bambin"
  subtitle = " "
  %composer = "П. Г. Чесноков"
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  indent = 5\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\bookpart {
\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \dynamicUp \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \set stanza = #"1. "\texta }
    \new Lyrics \lyricsto "soprano" { \set stanza = #"2. "\textb }
    \new Lyrics \lyricsto "soprano" { \set stanza = #"3. "\textc }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \dynamicUp \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \dynamicDown \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textbass }
  >>
  \layout { 
    %#(layout-set-staff-size 19)
  }
  \midi {
    \tempo 4=120
  }
}

\markup { 
    \column { 
      "gli = [л'] (tiglio, giglio)"
      "gi = [дж'и] (giglio, piangi)     "
      "gio = [дж'о] (regio)"
      "gie = [дж'е] (giel)"
    }
     \column { 
      "cio = [чо] (baccio)"
      "cie = [дче] (ciel)"
      "chiu = [кью] (chiudi)"
      "ti, di = как в греч. языке" 
    }
} 
}

\bookpart {
\header { piece = "Violini" }
\paper { indent = 10\mm }
\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Violin1" 
      shortInstrumentName = #"V1"
      midiInstrument = "violin"
    }
    <<
      \clef treble
      { \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
        \sopvoicev }
    >>
    \new Staff \with {
     instrumentName = #"Violin2"
     shortInstrumentName = #"V2"      
     midiInstrument = "violin"

    }
    <<
      \clef treble
      { \altvoicev }
    >>
    
    \new Staff \with {
     instrumentName = #"Alto"
     shortInstrumentName = #"A"
     midiInstrument = "violin"

    }
    <<
      \clef alto
      { \tenorvoicev }
    >>
    \new Staff \with {
     instrumentName = #"Cello"
     shortInstrumentName = #"Vc."
     midiInstrument = "cello"

    }
    <<
      \clef bass
      { \bassvoicev }
    >>
  >>
  \layout { 
    %#(layout-set-staff-size 19)
  }
  \midi {
    \tempo 4=120
  }
}
}
