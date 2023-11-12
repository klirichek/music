\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)


\include "articulate.ly"

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

\header {
  title = "Дым (Smoke gets in your eyes)"
  subtitle = "Из мюзикла «Роберта»"
  composer = "Дж. Керн (1885-1945)"
  %arranger = "arranger"
  poet = "О. Харбах; пер. Т. Сикорской"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 10
  %ragged-bottom = ##t
  ragged-last-bottom = ##f
}

global = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \key des \major
  \time 2/2
%  \numericTimeSignature
}

abr = { \break }
%abr = {}

scoreVoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  
  
  R1*4 |
  des2 c8 es des bes |
  ges'2 f8 as ges es |
  des'1~ |
  
  des2 es8 des a bes |
  c2 bes8 as bes, des |
  as'2 bes8 as as, bes |
  
  f'1( |
  es) |
  des2 c8 es des bes |
  
  ges'2 f8 as ges es |
  des'1~ |
  des2 es8 des a bes |
  
  c2 bes8 as bes, des |
  as'2 bes8 as as, bes |
  des1~ |
  des \key a \major
  cis8 e cis'4~ cis8 gis b a |
  cis, e gis4~ gis8 fis \tuplet 3/2 { e fis, a } |
  e'2 e |
  
  e1 |
  cis8 e cis'4~ cis8 gis b a |
  des, fes as4~ as8 ges f es 
  \key des \major
  
  f2 f |
  es1 |
  des2 c8 es des bes |
  
  ges'2 f8 as ges es |
  des'1~ |
  des2 es8 des a bes |
  
  c2 bes8 as \tuplet 3/2 { bes, des f } |
  as2 bes8 as as, bes |
  des1~ |
  des2. r4
  
  
}

scoreVoiceL = \lyricmode {
  Мы встре -- ти -- лись с_то -- бой ночь -- ю го -- лу -- бой,
   и о -- ку -- тал нас об -- ла -- ком сво -- им яб -- лонь неж -- ный
   дым. Дым, всё скры -- ва -- ет дым, сча -- стьем мо -- ло -- дым вся ду -- ша пол -- на,
   дым -- кой зо -- ло -- той при -- зрач -- но -- го сна.
   Жизнь про -- шла, и нет в_ду -- ше теп -- ла, люб -- ви от -- зву -- чал на -- пев.
   Яб -- лонь цвет за -- мёл твой лёг -- кий след, свет -- вей дав --
   но сле -- тев. Дым, всё скры -- ва -- ет дым, я о -- дин в_са -- ду, где кры -- лом се -- дым
   всё о -- ку -- тал кру -- гом скор -- би горь -- кий дым.
}

scoreVoiceLL = \lyricmode {
 They asked me how I knew my true love was true.
 I, of course, re -- plied, some -- thing here in -- side can -- not be de -- nied.
 They said some -- day you'll find all who love are blind,
 when your heart's on fire, you must re -- al -- ize smoke gets in your eyes.
 So, I chaffed them and I gay -- ly laughed to think they could doubt my love.
 Yet to -- day my love has flown a -- way, I am with -- out my love.
 Now laugh -- ing friends de -- ride, tears I can not hide, so I smile and say,
 “When a love -- ly flame dies, smoke gets in your eyes”.
}

scoreVoiceLLL = \lyricmode {
 
}

scoreVoicePart = \new Staff \with {
 % instrumentName = "Voice"
  midiInstrument = "voice oohs"
  \consists "Ambitus_engraver"
  \RemoveEmptyStaves
  \override VerticalAxisGroup.remove-first = ##t
} { \scoreVoice }
\addlyrics { \scoreVoiceL }
\addlyrics { \scoreVoiceLL }
\addlyrics { \scoreVoiceLLL }

U = { \change Staff = right }
D = { \change Staff = left }

scoreInstrRight = \relative c'' {
  \global
  \dynamicNeutral
  \tempo "Andante moderato"
  des2(\mp\< c8 es des bes) |
  c2( bes8 des c as) |
  bes2--\> bes-- |
  \tempo "rall." bes-- as--\! | \abr
  
  \tempo "a tempo"
  des,2\p( c8 es des bes) |
  ges'2( f8 as ges es) |
  << { des'1~ \abr des2 \tempo "poco accel." es8( des a bes | <c f, des>2\arpeggio ) } \\
  { r4\< r8 des, r4 r8 des\! r4 r8 des~ des2 } >>
  \tempo "a tempo" <bes' f des>8--( as-- bes,-- des-- |
  <bes des ges as>2\arpeggio) << { <c es ges bes>8--( as'-- as,-- bes-- | \abr
   f'1 es) } \\ { s2 r8\< bes-. c-. des-. es-. c-. des-. bes-. |
                          r8\> as-. bes-. c-. des-. bes-. c-. as-.\! } >>
  
  des2( c8 es des bes) | \abr
  ges'2( f8 as ges es) |
  << { des'1~ des2 \tempo "accel." es8( des a bes \oneVoice <c f, des>2\arpeggio) } \\
     { r4\< r8 des,8 r4 r8 des |
       r4 r8 des~ des2\! | \abr s2 } >>
  
  \tempo "a tempo"
  <bes' f des>8--( as-- bes,-- des-- |
  <bes des ges as>2\arpeggio) 
  <c es ges bes>8( as' as, bes |
  des1~ |
  des ) \key a \major | \abr
  
  \tempo "Un poco più mosso"
  cis8\mf( e cis'4~ cis8) gis b a |
  cis,( e gis4~ gis8) fis \tuplet 3/2 { e8 fis, a } |
  << { e'2-- e-- } \\ { r4 <d gis,> r <cis g> } >> \abr
  
  
                                   
  << { e1 } \\ { r4 <d gis,>4 r q } >>
  cis8( e cis'4~ cis8) gis( b a) |
  << { des,8( fes as4~ as8 ges f es \key des\major | \abr
       
      f1 |
      es ) } \\
     { beses2( c) \key des\major |
       r8\p bes!8-. c-. des-. es-. c-. des-. c-. |
       r as-. bes-. \tempo "poco rit." c-. des-. bes-. c-. as-. } >>
  
  \tempo "a tempo"
  des2( c8 es des bes) | \abr
  ges'2( f8 as ges es) |
  << {des'1~ | des2 es8( des a bes | \abr <c f, des>2\arpeggio) } \\
     { r4\< r8 des, r4 r8 des\! | r4 r8 \tempo "poco accel." des8~ des2 | s2 } >>
  <bes' f des>8([ as] \tempo "allarg." \tuplet 3/2 { bes,8 des f } |
  <as ges des bes>2)\arpeggio <bes ges es c>8( as as, bes |
  des1~ |
  << des1) {s8\> s4 s s s8\! } >> \bar "|."
  

}

scoreInstrLeft = \relative c'' {
  \global
  r8 as( f as,) r2 |
  r8 ges'( es as,) r2 |
  r8 f'( des as) r8 fes'( des as) |
  r8 es'( c as) r8 e'( c as) | \abr
  
  \clef bass des,,8-. as'-. des-. f-. <f as>2-- |
  es,8-. as-. des-. ges-. <ges as c>2-- |
  f,8( des' as'4) f,8( des' a'4) |
  
  ges,8( des' bes'4) <e, g,>2 |
  as,!8-. des-. f-. as-. r2 |
  es,8-. as-. des-. ges-. as,,4 r |
  
  << { r4 <as' f'>2 <as f'>4 | r4 <as ges'>2 <as ges'>4 } \\
     { des,1 | des } >>
  des8-. as'-. des-. f-. <f as>2-- |
  
  es,8-. as-. des-. ges-. <ges as c>2-- |
  f,8( des' as'4) f,8( des' a'4) |
  ges,8( des' bes'4) <e, g,>2 |
  
  as,!8-. des-. f-. as-. r2 |
  es,8-. as-. des-. ges-. as,,4 r |
  << { r8 as''( f' es des as bes f es f des4-- des2--) } \\
     { des,1~ | des } >>
  \key a \major
  a'8( e' a4) e,( <e' a cis>) |
  a,8( cis e a) e,4( <cis' e>) |
  b2( ais |
  b2 e,) |
  a8( e' a4) e,( <e' a cis>) |
  << { fes-- fes-- ges-- ges-- } \\ { ges,2( as ) } >>
  
  \key des \major
  << { r4 <as f'>2 <as f'>4 | r4 <as ges'>2 <as ges'>4 } \\
     { des,1 | des } >>
  des8-. as'-. des-. f-. <f as>2-- |
  
  es,8-. as-. des-. ges-. <ges as c>2-- |
  f,8( des' as'4) f,8( des' a'4) |
  ges,8( des' bes'4) <e, g,>2 |
  
  as,8-. des-. f-. as-. r2 |
  es,8-. as-. des-. ges-. as,,4 r |
  << { r8 as''( f' es des as bes f es-- f-- des4-- des2--) } \\
     { des,1~ | des } >>
}



scoreInstrPart =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrRight
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } \scoreInstrLeft
  >>



\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
  %  \transpose f fis
    <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
    \transpose des d
    <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
    \transpose des es
    <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
    \transpose des e
    <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
%  piece = "Fis-dur"
  }
  \score {
    \transpose des f
    <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
   \unfoldRepeats \articulate <<
      \scoreVoicePart
      \scoreInstrPart
    >>
    \midi {
      \tempo 4=90
    }
  }      
}
