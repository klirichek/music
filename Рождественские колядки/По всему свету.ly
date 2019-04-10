\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "По всьому свiту"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


globali = {
  \key a \major
  \time 4/4
}

global = {
  \globali
  \autoBeamOff
  \dynamicUp
   \override MultiMeasureRest.expand-limit = #1
    \set Score.skipBars = ##t
}

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

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar
  \repeat volta 3 {
  cis4 b8 gis e4( a8) b |
  cis d cis b a4( b) |
  cis b8 gis e4( a8) b |
  cis d cis b a2 | \abr
  
  cis4 a8[ cis] b a gis fis |
  gis4 gis gis16[ a] b8 a gis |
  a8 a a a gis a b4 |
  a1 | \abr
  
  <cis e>4 cis8[ <cis e>] d cis b a |
  b4 b b16[ cis] d8 cis b |
  cis cis cis cis b cis d4 |
  cis1 } \break
  R1 R_\markup\italic"Ciю, вiю, посiваю, з Новим Роком всiх вiтаю! На все вам добре!"
  R R \break
  \key c \major 
  \repeat volta 2 {
    \transpose a c \relative c''' {
    <cis e>4 cis8[ <cis e>] d cis b a |
  b4 b b16[ cis] d8 cis b |
  cis cis cis cis b cis d4 |
  cis1
  } }
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  \repeat volta 3 {
  a4 e8 e cis4( e8) gis |
  a a a gis e4( gis) |
  a e8 e cis4( e8) gis |
  a a a gis a2
  
  a4 e8[ a] e e e e |
  e4 e e16[ e] e8 e e |
  e e e e e e e4 |
  e1 |
  a4 a b8 a gis fis |
  gis4 gis gis16[ a] b8 a gis |
  a a a a gis a b4 |
  a1 }
  R1*4
  \repeat volta 2 {
    \transpose a c \relative c''' {
    a4 a b8 a gis fis |
  gis4 gis gis16[ a] b8 a gis |
  a a a a gis a b4 |
  a1
  } }
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \repeat volta 3 {
  e4 d8 b a4( cis8) d |
  e fis e d cis4( b) |
  e d8 b a4( cis8) d |
  e fis e d a2 |
  
  e'4 cis8[ e] d cis b a |
  b4 b b16[ cis] d8 cis b |
  cis cis cis cis b cis d4 |
  cis1 |
  
  e4 e e8 e e e |
  e4 e e16[ e] e8 e e |
  e e e e e e e4 |
  e1 }
  
  R1*4
  % R^\markup\right-align"Ciю, вiю, посiваю, з Новим Роком всiх вiтаю! На все вам добре!"

  \key c \major 
  \repeat volta 2 \transpose a c \relative c'' {
      e4 e e8 e e e |
  e4 e e16[ e] e8 e e |
  e e e e e e e4 |
  e1
  }
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \repeat volta 3 {
  R1*8
  
  a4 a e8 fis gis a |
  e4 e e16[ e] e8 fis gis |
  a a e e e e \tuplet 3/2 {e[ fis gis]} |
  a1 }
  
  R1*4
  \repeat volta 2 \transpose a c \relative c'' {
      a4 a e8 fis gis a |
  e4 e e16[ e] e8 fis gis |
  a a e e e e \tuplet 3/2 {e[ fis gis]} |
  a1
  }
}

lyricscoreone = \lyricmode {
  \set stanza = "1. " По всьо -- му сві -- ту ста -- ла но -- ви -- на:
  Ді -- ва Ма -- рі -- я Си -- на ро -- ди -- ла.
  Сі -- ном при -- тру -- си -- ла,
  В_я -- слах по -- ло -- жи -- ла
  Го -- _ спо -- _ дньо -- го Си -- на.
  
  Сі -- ном при -- тру -- си -- ла,
  В_я -- слах по -- ло -- жи -- ла
  Го -- _ спо -- _ дньо -- го Си -- на.
  
  \repeat volta 2 { Сі -- ном при -- тру -- си -- ла,
  В_я -- слах по -- ло -- жи -- ла
  Го -- _ спо -- _ дньо -- го Си -- на. }
}

lyricscoretwo = \lyricmode {
  \set stanza = "2. " Ді -- ва Ма -- рі -- я Бо -- га про -- си -- ла:
   –_В_що ж_би я Си -- на сво -- го спо -- ви -- ла?
  Ти, не -- бе -- сний Ца -- рю,
  При -- шли ме -- ні да -- ри,
  Сьо -- го до -- му го -- спо -- да -- рю.
  
  Ти, не -- бе -- сний Ца -- рю,
  При -- шли ме -- ні да -- ри,
  Сьо -- го до -- му го -- спо -- да -- рю.
  
  
}

lyricscorethree = \lyricmode {
  \set stanza = "3. " Зій -- шли Ан -- ге -- ли з_не -- ба до зем -- лі,
  При -- не -- сли да -- ри Ді -- ві Ма -- рі -- ї:
  Три сві -- чі во -- ско -- ві,
  Ще й_ри -- зи шо -- вко -- ві
  І -- _ су -- со -- ви Хри -- сто -- ви.
  
  Три сві -- чі во -- ско -- ві,
  Ще й_ри -- зи шо -- вко -- ві
  І -- _ су -- со -- ви Хри -- сто -- ви.
}

violinone = \relative c'' {
  \globali
  \repeat volta 3 { R1*4
  r8 <a cis> r q r <e a> <e gis>[ <e fis>] |
  r <e gis> r q r <e b'> <e a>[ <e gis>] |
  r <e a> r q <e gis> <e a> <e b'>4 |
  <e a>2. a32 b cis d e fis gis a 
  
  e1\startTrillSpan |
  e |
  e |
  a\stopTrillSpan | }
  a\startTrillSpan |
  e |
  a2 e |
  a\stopTrillSpan r |
  

  \key c \major
  \repeat volta 2 { <e g>4 <c e>8 <e g> <d f> <c e> <b d>[ <a c>] |
  <b d>4 q q16 <c e> <d f>8 <c e> <b d> |
  <c e>4 q <b d>8 <c e> <d f>4 |
  <c e>1 }
}

violintwo = \relative c' {
  \globali
  \repeat volta 3 { R1*4
  r8 e r e r cis b[ a] |
  r b r b r d cis[ b] |
  r cis r cis b cis d4 |
  cis1
  
  <cis' e>4 <a cis>8 <cis e> <b d>[ <a cis>] <gis b>[ <fis a>]
  <gis b>4 q q16 <a cis> <b d>8 <a cis> <gis b> |
  <a cis>4 q <gis b>8 <a cis> <b d>4 |
  <a cis>1 }
  
  a1\startTrillSpan |
  e |
  a2 e |
  a2\stopTrillSpan r |
  
  \repeat volta 2 { R1*4 }
  
}

toleft = \change Staff="left"
toright = \change Staff="right"

toup = { \showStaffSwitch \toright}
todown = { \hideStaffSwitch \toleft}

violiniPart = \new Staff \with {
  instrumentName = "Violini"
  shortInstrumentName = \markup \right-column { "V1" "V2" }
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

right = \relative c'' {
  \globali
 \repeat volta 3 { << { cis4 b8 gis e4 a8 b |
       cis[ d] cis[ b] a4 <gis b>\arpeggio |
  cis b8 gis e4 a8 b |
  cis8^\markup\italic"rit."[ d] cis[ b] a2 } \\
  {
    a4 e cis e |
    a a8[ gis] e2 |
    a4 e cis e |
    a a e2
  }
  >>
  \oneVoice
  \tempo "meno mosso"
  <cis e a cis>4-.\arpeggio <e a cis e>-.\arpeggio <a cis e a>-.\arpeggio <cis e a cis>-.\arpeggio |
  <b, e gis b>-.\arpeggio <e gis b e>-.\arpeggio <gis b e gis>-.\arpeggio <b e gis b>-.\arpeggio |
  <e, a cis e>-.\arpeggio <a cis e a>-.\arpeggio <b e gis>-.\arpeggio <e gis b d>-.\arpeggio |
  <cis e a d>-.\arpeggio r4 s2 |
  
  \ottava 1
  <e a cis e>4 <cis e a cis>8[ <e a cis e>] <e b' d>[ <cis e a cis>] <b e gis b>[ <a e' fis a>] |
  <b e gis b>4 q q16[ <cis a' cis> <e b' d>8] <cis e a cis>[ <b e gis b>] |
  <cis e a cis>4 q <b e gis b>8[ <cis e a cis>] <e gis b d>4 |
  <e a cis>1 | }
  
  <e e'>4 <cis cis'>8[ <e e'>] <d d'>[ <cis cis'>] <b b'>[ <a a'>] |
  <b b'>4 q q16[ <cis cis'> <d d'>8] <cis cis'>[ <b b'>] |
  <cis cis'>4 q <b b'>8[ <cis cis'>] <d d'>4 |
  <cis cis'>2. r4 |
  
  \key c \major
  \repeat volta 2 { <g' c e g>4 <e g c e>8[ <g c e g>] <g d' f>[ <e g c e>] <d g b d>[ <c g' a c>] |
  <d g b d>4 q q16[ <e c' e> <g d' f>8] <e g c e>[ <d g b d> ] |
  <e g c e>4 q <d g b d>8[ <e g c e>] <g b d f>4 |
  <g c e>1 }
  
  
  
}

left = \relative c' {
  \globali
  \repeat volta 3 { e4 d8 b a4 cis8 d |
  e8[ fis] e[ d] cis4 b |
  e d8 b a4 cis8 d |
  e[ fis] e[ d] <a cis>2 |
  <a, e' a>4-.\arpeggio q-.\arpeggio q-.\arpeggio q-.\arpeggio |
  <e b' e>-.\arpeggio q-.\arpeggio q-.\arpeggio q-.\arpeggio |
  <a e' a>-.\arpeggio q-.\arpeggio <e b' e>-.\arpeggio q-.\arpeggio |
  a,16[ cis e a cis e a cis] \toright e[  a cis e a cis e a]
  \toleft
  \repeat unfold 2 { <a,,,, a,>8[ <e' a cis>] } <e, e,>[ <fis fis,>] <gis gis,>[ <a a,>]
  \repeat unfold 3 { <e e,>[ <e' gis d'>] } <fis, fis,>[ <gis gis,>] |
  <a a,>[ <e' a cis>] <e, e,>[ <e' a cis>] <e, e,>[ <e' a cis>] \tuplet 3/2 { <e, e,> <fis fis,> <gis gis,> } |
  a,16[ cis e a cis e a cis] \toright e[ a cis e a cis e a] }
  
  \toleft 
  <cis,,,, cis'>4 <a a'>8[ <cis cis'>] <b b'>[ <a a'>] <gis gis'>[ <fis fis'>] |
  <gis gis'>4 q q16[ <a a'> <b b'>8] <a a'>[ <gis gis'>] |
  <a a'>4 q <gis gis'>8[ <a a'>] <b b'>4 |
  <a a'>2. r4 |
  
  \key c \major
  \repeat volta 2 { <c c,>8[ <g' c e>] <c, c,>[ <g' c e>] <g, g,>[ <a a,>] <b b,>[ <c c,>] |
  \repeat unfold 3 { <g g,>[ <g' b f'>] } <a, a,>[ <b b,>] |
  <c c,>[ <g' c e>] <g, g,>[ <g' c e>] <g, g,>[ <g' c e>] \tuplet 3/2 { <g, g,> <a a,> <b b,> } |
  c,16[ e g c e g c e] \toright g[ c e g c e g c]  } 
}  

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right"  \right
  \new Staff = "left"  { \clef bass \left }
>>

choirPart = \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscoreone }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>

    >>
    
cimbpart = \drummode {
  \repeat volta 3 { R1*4
  r8 hh r hh r hh hh4
  r8 hh r hh r hh hh4
  r8 hh r hh r hh hh4
  crashcymbal1
  s1*4 }

}
    
drumPart = \new DrumStaff  \with {
        instrumentName = "Timb."
        shortInstrumentName = "Timb."
        midiInstrument = "timpani"
%        drumStyleTable = #percussion-style
        \override StaffSymbol.line-count = #1
%        \hide Stem
      }
{
  \cimbpart
}


  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  
\bookpart {
  \score {
    %  \transpose c bes {
    \choirPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
%        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \score {
    %  \transpose c bes {
    <<
    \violiniPart
    \drumPart
    \pianoPart
    >>
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
   \paper { system-separator-markup = \slashSeparator  }
  \score {
    %  \transpose c bes {
    <<
    \choirPart
    \violiniPart
    \drumPart
    \pianoPart
    >>
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
 %       \RemoveEmptyStaves
         \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    <<
    \choirPart
    \violiniPart
    \drumPart
    \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
