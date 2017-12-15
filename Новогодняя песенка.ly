\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
 %   ragged-bottom = ##f
 %   ragged-last-bottom = ##f
    indent = 10
  }

global = {
  \key c \major
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
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

tmtwo = \set Timing.measurePosition = #(ly:make-moment -1/8)
tmtwo = \partial 8

choir = \relative c' {
  \global
  \dynamicUp
  \partial 8 R8
  R2*7
  r4 r8 c16\(\mf d |
  \repeat volta 2 {
    e8 c d e |
    e f\) r d16\( e |
    f8 d\) e\( f |
    fis g\) r e16 \( f |
    g8 c, d e |
    g f4\) f16\( g |
    a8 d, e fis |
    a8 g4\) g16\( g |
    f4~ f16 f e d |
    e8 c4 g'16 g |
    a8 g f e |
    f4.\) f16\( f |
    fis8 dis b' a |
    a g\) r g16\(\< g |
    fis8 d e--\f fis-- |
    g4.\)--\fermata \breathe
    g8\(\fermata |
    f g g g |
    e g g\) g\( |
    fis g f g |
    e g g\) g\( |
    a g a g |
    a g g\) g\( |
    a g f g |
    f4.\) a8\( |
    b b c b |
    b a a\) a\( |
    g g a g |
    g f f\) f\( |
  } \alternative {
   {
    c' a g f |
    e d cis\) d\( |
    g g g g |
    c,4\) r8 c16\( d |
  }
  {
    c'8 a g f |
    e d cis\) d\( |
    g4 g\) |
    a\( b | } }
    c2~ |
    c~ |
    c\)\fermata |
    R2*4
    \bar "|."
%  }
%  }
}


lyricscommon = \lyricmode {
 \set stanza = "1." Зна -- ют \repeat volta 2 {
   то -- чно, зна -- ют то -- чно
 да -- же за -- йцы, да -- же бе -- лки,
 что, ко -- гда в_две -- на -- дцать но -- чи
 на ча -- сах со -- йду -- тся стре -- лки,
 то не -- ве -- до -- мо от -- ку -- да
 к_нам не -- ме -- дле -- нно при -- дёт
 э -- то ска -- зо -- чно -- е чу -- до
 под на -- зва -- ньем Но -- вый Год!
 \set stanza = "Припев." Он па -- хнет ма -- нда -- ри -- на -- ми,
 а та -- кже шо -- ко -- лад -- ка -- ми,
 мо -- ро -- зной ко -- лкой ё -- ло -- чкой,
 до -- ма -- шним пи -- ро -- гом.
 Му -- льтфи -- льма -- ми лю -- би -- мы -- ми,
 по -- да -- рка -- ми при -- я -- тны -- ми,
 ка -- } 
 \alternative { 
   { ни -- ку -- ла -- ми дли -- нны -- ми
 и сча -- стьем и те -- плом!
 \set stanza = "2." Со -- ве_-
   }
   {
     ни -- ку -- ла -- ми дли -- нны -- ми и сча -- стьем и те -- плом! __
   }
 }
}




right = \relative c' {
  \global
  \oneVoice
  \tempo "Задорно" 4=100
  \autoBeamOn
  \partial 8 << { f8\mp( |
              e[_\markup\italic"cresc." gis b c] |
  b a a a ) |
  cis,([ e g a] |
  g f f f) |
  c'( a g f | \abr
  
  e f fis g) | } \\
  {
    s8 |
    e2 |
    f |
    cis |
    d4 c |
    c c |
    c c8 c |
  } >>
  
  <fis e'>-.(\f q-. <f d'>-. q-. |
  <e c'>4--)\> r\! | 
  \repeat volta 2 {
    e8(\mf c d e |
    e f) r d16( e | \abr
    f8 d) e( f |
    fis g) r e16( f |
    g8 c, d e |
    g f4) f16( g |
    a8 d, e fis | \abr
    
    a8 g4) g16( g |
    f4~ f16 f e d |
    e8 c4) g'16( g |
    a8 g f e |
    f4.) f16( f | \abr
    
    fis8 dis b' a |
    a g) r << { g16(\< g fis8 d e--\f fis--  g4.--)\fermata } \\
              { s8	 r4 c, d4 s8 } >> \breathe g8\fermata-.( 
    f-. g-. g-. g-. | \abr
    e-. g-. g-.) g-.( |
    fis-. g-. f-. g-. |
    e-. g-. g-.) g-.( |
    a-. g-. a-. g-. a-. g-. g-.) g-.( | \abr
    a-. g-. f-. g-. |
    f4.) a8( |
    b b c b |
    b a a) a( |
    g g a g | \abr
    g f f) f( |
  }
  \alternative 
  {
 {
    c'[ a g f] |
    e[ d cis) d(] |
    g[ g g g] |
    c,4) r8 cis16( d \abr
  } {
  c'8 a g f |
  e d cis) d( |
  g4 g) |
  << { a( b | c2~ \abr | c)} \\ {s4 r8 f, | r e4 e8 \abr | r e4 e8 } >>
  << { \oneVoice <fis e'>8\f(-. q-. <f d'>-. q-. |
  \voiceOne c'2--) \oneVoice <fis, e'>8-.( q-. <f d'>-. q-. \voiceOne c'2~-. c4) r } \\
  { s2 r8 <e, g>[ r q] s2 r8 e[ r e] e4 r  } >>
  \bar "|."
  }
  }
}

left = \relative c {
  \global
  r8
   <<
     {
      e8( d' gis, e) |
      f( a c a) |
      a,([ g' e g]) |
      d([ f a f]) |
      d( f a a) |
      s4 a8 g |
      c-. c-. b-. b-. |
      g-- <e g> r q
     }
     \\
     {
       e2 |
       f |
       a, |
       d |
       d4 s |
       g8( f es e) |
       d-.( d-. g-. g-. |
       c,4-\markup\italic"non legato sempre") g
     }
   >>
   \repeat volta 2 {
     <<
       {
         r8 <e' g>[ r q] |
         r <f g>[ r q] |
         r <f g>[ r q] |
         r <e g>[ r q] |
         r <e bes'>[ r q] |
         r <a c>[ r q] |
         r <fis c'>[ r <a c>] |
         r <b d>[ r q] |
         r <f g>[ r q] |
         r <e g>[ r q] |
         r <g a>[ r q] |
         r <f a>[ r q] |
         r <fis a>[ r q] |
         g8 b4 <g b>8 |
         r <fis a c> r q |
         b4 s
       }
       \\
       {
         c,4 g |
         d' g, |
         b g |
         c g |
         c2 |
         f4 e |
         d2 |
         g |
         d4 g, |
         c g |
         cis a |
         d c |
         b dis |
         e2 |
         d |
         g4\fermata g, |
       }
     >>
     \autoBeamOn
     d'8-. <f g>-. g,-. <f' g>-. |
     c-. <e g>-. g,-. <e' g>-. |
     d-. <f g>-. g,-. <f' g>-. |
     c-. <e g>-. g,-. <e' g>-. |
     cis-. <g' a>-. a,-. <g' a>-. |
     cis,-. <g' a>-. a,-. <g' a>-. |
     cis,-> <g' a>-. a,-. <g' a>-. |
     d-. <f a>-. a,-. <f' a>-. |
     <<
       {
         r8 <gis d'>4 q8 |
         r8 <a c>4 q8 |
         r <g a>4 q8 |
         r <f a>4 q8 |
       }
       \\
       {
         e2 |
         f |
         cis |
         d |
       }
     >>
   }
   \alternative { {
     << { r8 <a' c>4 q8 |} \\ { f2 | } >>
     <d f a>2 |
     <g, d' f> |
     <c e>8 <e g> g, <e' g> |
   }
   {
   <<
     {
       r8 <a c>4 q8 |
       r <f a c>4 q8 |
       r <g c>4 q8 |
       r q4 <g b>8 |
       r <e g>4 q8 |
       r <e g c>4 q8 |
       r <a c>8[ r <b d>] |
       r <e, g c>8[ r q] |
       r <a c>[ r <b d>] |
       r <e, g c>[ r q] |
       c'4 r
     }
     \\
     {
       d,2 |
       b |
       e |
       es4 d |
       c s |
       c2 |
       d4 g |
       c,2 |
       d4 g |
       c,2 |
       <c e g>4 s
     }
   >> }
   }
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>


\bookpart {
  \header {
    title = "Новогодняя песенка"

  }
  \score {
    \transpose c d
    <<
      
      \new ChoirStaff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Хор" 
        shortInstrumentName = "Хор"
      } <<
      \new Voice = "choir" { \oneVoice \choir }  
      >>
      \new Lyrics \lyricsto "choir" \lyricscommon
      
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

      \pianoPart
    >>
    


    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \accidentalStyle piano-cautionary
      }
    }
  }
  
      \markup {
  \fill-line {
    \column {
      \line { \column { 1. }
              \column { \line { Знают точно, знают точно }
          \line { Даже зайцы, даже белки, }
          \line { Что, когда в двенадцать ночи }
          \line { На часах сойдутся стрелки, }
          \line { То неведомо откуда }
          \line { К нам немедленно придёт }
          \line { Это сказочное чудо }
          \line { Под названьем Новый Год! } } }
      \line { 
        \vspace #2
        \column \italic { Припев: } 
        \column {
          \line { Он пахнет мандаринами, }
          \line { А также шоколадками, }
          \line { Морозной колкой ёлочкой, }
          \line { Домашним пирогом. }
          \line { Мультфильмами любимыми, }
          \line { Подарками приятными, }
          \line { Каникулами длинными }
          \line { И счастьем и теплом! }
        }
      }
    }
    \hspace #2

    \column {
      \line { \column { 2. } 
              \column { \line { Совершенно несомненно: }
      \line { Этот праздник самый главный,}
      \line { Праздник, скажем откровенно, }
      \line { Самый лучший, самый славный, }
      \line { И его без промедленья }
      \line { Нам сегодня принесёт }
      \line { Это дивное мгновенье }
      \line { Под названьем Новый Год! } } }
      \vspace #1
      \line \italic { Припев. }
    }
    \hspace #2
  }
}
}


\bookpart {
   
    \score {
      \unfoldRepeats
    
     \transpose c d
      <<
      
      \new ChoirStaff = "upstaff" \with {
        midiInstrument = "voice oohs"
        instrumentName = "Хор" 
        shortInstrumentName = "Х"
      } <<
      \new Voice = "choir" { \oneVoice \choir }  
      >>
      \new Lyrics \lyricsto "choir" \lyricscommon
      
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

      \pianoPart
    >>
    %  }  % transposeµ

    \midi {
      \tempo 4=100
    }
  }
}



