\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "У зари-то, у зореньки"
  %composer = "Composer"
  arranger = "Обработка Я. Немировского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \minor
  \time 4/4
  \numericTimeSignature
}

abr = { \break }
abr = {}

alter = \markup \scale #' ( 0.75 . 0.75 ) { \score {
	  { \new Staff \with {\remove "Time_signature_engraver"   \remove "Clef_engraver" }
	    { \voiceTwo \cadenzaOn b'8 c''16[ b']  } \addlyrics { -_ной то }
	  } \layout { indent = 0 }}}

scoreVoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  R1*3 R2
  \repeat volta 2 {
  c4. bes8 as[ bes] g as16[ g] |
  f4.( g8) as[( g]) f4 |
  bes4. c8 des( c16[ des] es8) <des \parenthesize f>
  c2. r4 |
  es4. des8 c4 bes8([ c16 bes]) |
  f4.( g8) as[( g]) f4 | \abr
  g des' c bes |
  f2( <\parenthesize f f'>) |
  es'4. des8 c4 bes8([^\alter c16 bes]) |
  f4.( g8) as[( g]) f4 | \abr
  g des' c bes |
  f2~ f4 r |
  c'4. bes8 as[( bes]) g[( as16 g]) |
  f4.( g8) as[( g]) f4 | \abr
  bes4. c8 des8([ c16 des] es8) f |
  c2. r4 |
  es4. des8 c8 c bes c16( bes) | \abr
  
  f4.( g8) as[( g]) f4 |
  g des' c bes |
  f2~ f4 r |
  es'4. des8 c~ c bes c16( bes) | \abr
  
  f4.( g8) as[( g]) f4 |
  g des' c bes
  }
  \alternative {
    { \time 2/4 f4~ f8 r | }
    { \time 4/4 f'1\fermata }
  }
  \bar "|."
}

scoreVoiceL = \lyricmode {
  У за -- ри то, у зо -- рень -- ки мно -- го яс -- ных
  звёзд, а у тём -- ной но -- чень -- ки
  им и счё -- ту нет, а у тём -- ной но -- чень -- ки
  
  им и счё -- ту нет.  Го -- рят звёз -- доч -- ки_на не -- бе,
  пла -- мен -- но го -- рят, мо -- е -- му то серд -- цу 
  бед -- но -- му что -- то го -- во -- рят, мо -- е -- му_то серд -- цу
  бед -- но -- му что -- то го -- во -- рят.
}

scoreVoiceLL = \lyricmode {
 Звёз -- ды мо -- и, _ звёз -- доч -- ки, пол -- но вам си --
 ять, пол -- но вам про -- шед -- ше -- е
 мне на -- по -- ми -- нать, пол -- но вам про -- шед -- ше -- е

 мне на -- по -- ми -- нать. Я бы це -- лу но -- чень -- ку,
 не смы -- ка -- я глаз, всё смо -- трел _ бы, _
 звёз -- доч -- ки ми -- лы -- е, на вас, всё смот -- рел бы, _
 звёз -- доч -- ки ми -- лы е, на _ вас.
}

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRightU = \relative c'' {
  \global
  \dynamicNeutral
  \tempo "Медленно. Певуче"
  \oneVoice es4.( des8 c4 bes8 c16 bes |
  \voiceOne f4. g8) as g f4 | 
  <des g>4( <f des'> <f c'> <f bes>8 c'16 bes |
  \oneVoice \time 2/4 <f f'>4.) r8 \abr
  
  \repeat volta 2 {
    \time 4/4 <as, c f as>2.\arpeggio  <bes f' bes>4\arpeggio |
    \voiceOne <as c f>8[ <f' bes>] <es as> g16 bes f4 f |
    \voiceOne <bes, f' bes>4. <c c'>8 des' c16 des es8 <bes des> | \abr
    \oneVoice <c, as' c>4.<f f'>8 \voiceOne <es es'> <des des'>16 es' <c, c'>8 <bes bes'> |
    c'2. bes8 c16 bes |
    f8 as g c, f2 |
    g8 bes as g f as es c |
    \oneVoice <as c f>4. <f' des' f>8 <es c' es> <des bes' des> <c as' c> <bes g' bes> |
    \voiceOne c'2~ c4 bes8 c16 bes |
    \oneVoice <as, c f>4. <bes des g>8 \voiceOne <c as'> <bes g'> <as des f>4 |
    <des f g> r as'( g) |
    r4 des'8( f es f16 es des8 bes) |
    \oneVoice c as' \acciaccatura des g, f \voiceOne c'4 s |
    \oneVoice f,,8( g as c) <f f'>4. <es es'>8 |
    
    \voiceOne <bes' des>8( <as c> <g bes> <f as> g bes es, des) |
    \oneVoice <c as>([ <es g,>] \voiceOne as, bes c2) |
    es4.( des8) c es bes c |
    
    r4 \acciaccatura es'8 as,4 r \acciaccatura c8 f,4 |
    g,8( as bes g as f g es) |
    \oneVoice <as, c f>4\< <es'' as es'>\arpeggio\> <c f c'> \arpeggio <as des as'>\arpeggio \! |
    <es g es'>4. \voiceOne <des des'>8 <c c'>4 bes'8 c16 bes |
    
    f4 es8 des f g as c |
    <des, f g>4 r c'2 
  }
  \alternative {
  {\oneVoice <f, f'>4~ q8 r}
  {\voiceOne r4 <f' bes des>\arpeggio <f as f'>2\arpeggio \fermata }
  }
}

scoreInstrRightD = \relative c'' {
  \global
  \dynamicNeutral
  \voiceTwo
     s1 |
     f,8[ es] des[ g] c,4 des |
     des2 c4 bes | s2
     \repeat volta 2 {
     s1 |
     s4 s8 des c4 << \voiceTwo as \\ { \voiceThree des8 c } >>
     \voiceTwo s2 <des f as>4 <des g c> |
     s2 as'8 f4.|
     <c es>4 <des f> <es g> <bes f'> |
     <as c>2 as4.( es'8) |
     <des f>2 c4 bes |
     s1 |
     <c es>4 <des f> <es g> <bes f'> |
     s2 es4 s |
     
     s2 <c c'> |
     f1 |
     s2 c'8 des bes c |
     s1 |
     
     des2 es8 des c bes |
     s4 f es2 |
     r8 es f[ g] as[ es] <des f> c |
     
     f2 des |
     <des f> c |
     s1 |
     s4. es8~ es4 <bes f'>8 <c g'> |
     
     r8 as4 bes8 <f c'>4 <c' f>8 es |
     s2 f8 as es c |
     }
     \alternative {
     {s2}
     {<f f'>2 s}}
}

scoreInstrRight = \relative c'' {
<< \scoreInstrRightU \\ \scoreInstrRightD >>
  
}


scoreInstrLeftU = \relative c' {
  \global
  \oneVoice r8 es( f g) as es des c |
  des c \clef bass \voiceOne bes4( as2) |
  bes8 as g bes as f g as16 g |
  \oneVoice f4. r8 |
  \repeat volta 2 {
  <f, c' f>2.\arpeggio <f des' f>4\arpeggio |
  r8 des'' c bes <as as,> <g g,> <f f,> <es es,> |
  <des des,>4 <c c,> <bes bes,> <es es,> |
  as,8( es' as des) c( bes as g) |
  as2 es4 des |
  f es des c |
  \voiceOne f4.( g8 ) as4 g |
  f,8( c') f des' c bes as g |
  \oneVoice as2 es4 des |
  f es as,8 c des c |
  
  <bes f'>4 r c2 |
  \voiceOne r4 g' as bes |
  \oneVoice f, <as' c f> \voiceOne r \oneVoice <c f> |
  \voiceOne r <c f> \oneVoice f,, <as' c f> |
  
  bes, <f' bes des> es, <g' bes es> |
  as, des as' c |
  g, <es' bes'> <as, as'> g'8 c, |
  
  <des as'>4 <c as' es'>\arpeggio <bes f'> <as f' c'>\arpeggio |
  <bes f'>2 \voiceOne as'4( bes) |
  \oneVoice <f, f'> \clef treble <es'' as c>\arpeggio <c f as>\arpeggio <as des f>\arpeggio |
  \clef bass r8 <es, es'> <f f'> <g g'> <as as'>[ c] des es |
  
  f des c bes as g f4 |
  \voiceOne f'4( g) as( bes)
  }
  \alternative {
    { \oneVoice f( f,8) r }
    { \voiceOne r4 \clef treble <f'' g des'>\arpeggio \oneVoice <f as c>2\arpeggio \fermata }
  }
}

scoreInstrLeftD = \relative c' {
  \global
  s1 |
  s4 \voiceTwo r8 es, r4 des8( c) |
  bes2 c4 des |
  s2 |
  \repeat volta 2 {
  s1 |
  <f, f'>2 s |
  s1 |
  s1*3 |
  bes2 c |
  r4 f2. |
  s1*2
  s1 |
  f,1 |
  s2 bes'
  as s |
  s1*4
  s2 c, |
  s1*3 |
  bes2 c |
  }
  \alternative {
  {s2}
  {<f, f'>2 s}
  }
}

scoreInstrLeft = \relative c' {
<< \scoreInstrLeftU \\ \scoreInstrLeftD >>
  
}

scoreVoicePart = << 
  
  %\new Staff \with {\remove "Time_signature_engraver"   \remove "Clef_engraver" } { \voiceTwo s1*3 s2 s1*8 s2. b'8 c''16[ b']  } \addlyrics { -_ной то }

  
  \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"

} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
>>

scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "НАР"
    connectArpeggios = ##t
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } \scoreInstrLeft
  >>

\bookpart {
  \header {
  piece = "Fis-mol"
}
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
}
\score {
  \transpose f fis
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
    \context {\Staff 
                \RemoveEmptyStaves
                \override VerticalAxisGroup.remove-first = ##t
		%\consists Ambitus_engraver 
  }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}

\bookpart {
\score {
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
    \context {\Staff 
                \RemoveEmptyStaves
                \override VerticalAxisGroup.remove-first = ##t
		%\consists Ambitus_engraver 
  }
  %Metronome_mark_engraver
  }
}
}
