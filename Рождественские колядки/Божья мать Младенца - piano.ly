\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Божья Мать Младенца…"
  subtitle = "(Gdy sliczna Panna)"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  ragged-bottom = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

globali = {
  \key as \major
  \time 4/4
  \secondbar
}

global = {
  \globali
  \autoBeamOff
  \override MultiMeasureRest.expand-limit = #3
  \set Score.skipBars = ##t
}



%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }


toleft = \change Staff="left"
toright = \change Staff="right"

toup = { \showStaffSwitch \toright}
todown = { \hideStaffSwitch \toleft}



rightinterone = \relative c' {
  << { es2^\markup\italic\column {"Если 3 куплета," "то между I и II"} f | es f4 g8 c } \\ { c,2 des c des } >>
}

rightintertwo = \relative c''' {
  << { c4\arpeggio^\markup\italic\column {"Если 2 куплета, то после 28 играем отсюда, потом 5-28"} bes c\arpeggio as } \\ { <f as>2\arpeggio q\arpeggio } >>
  << <des f bes>1\arpeggio \\ { r4 f-. des'-. f,-. } >>
  << { g4 bes as g } \\ <bes, es>1\arpeggio  >>
  << { <des f>2 <c es> } \\ { as2~ as } >>
  << { as'4 g c\arpeggio as } \\ { <c, es c'>2\arpeggio <c ges'>\arpeggio } >>
  << { r8 des, f as des-. f-. as-. des-. } \\ <f, as des f>1 >>
  
  << {c'4\arpeggio es des8 c bes as} \\ <es as>1\arpeggio >>
  << << {s2.. as16 bes\stopTrillSpan} bes1\startTrillSpan >> \\ << des,1\startTrillSpan { s2.. c16 des\stopTrillSpan} >> >>
  << { r4 es-. f-. g-. } \\ <c, as'>1 >>
  << { es2 f4 g8 c } \\ c,1 >>
  << { es2 f4 g } \\ { c,2 des } >>
  << { es2 f4 g8 c } \\ c,1 >>
}

leftinterone = \relative c {
  << { r4 es-. as-. es-. r es-. bes'-. es,,-. } \\ { as1 as } >>
}

leftintertwo = \relative c {
  \voiceTwo
  <f c'>4 f' \toright as c
  \toleft <bes,, f'>( bes' des f)
  \oneVoice << { r <g, bes>( des' <g, bes>) } \\ <es es,>1 >>
  as,8( es' as bes c es \toright as c)
  \voiceFour \toleft <as,, as'>( bes' c es \toright g as bes c)
  \toleft \oneVoice << <des,, des,>1 \\ { r8 f as des \toright f-. as-. des-. f-. } >>
  \toleft <es,, as c es>1\arpeggio
  
  << {r4 g <bes des es> g } \\ <es es,>1 >>
  << {r4 c' <g des'> <es bes'> } \\ <as as,>1 >>
  << {r4 c <f, des'> <es bes'> } \\ <as as,>1 >>
  << {r4 c <g des'> <es bes'> } \\ <as as,>1 >>
  << {r4 c <f, des'> <es bes'> } \\ <as as,>1 >>
  
  
  
}

right = \relative c'' {
  \set Staff.connectArpeggios = ##t
  \globali
  \tempo "Andante"
  \repeat volta 2 { << <c as'>1 \\ { r4 es-. f-. g-. } >> |
  << c,1 \\ {es2 f4 g8-. as-. } >> } |
  
  \set Score.currentBarNumber = #5
  \repeat volta 2 {
  << { es,2 f4 g } \\ { es2 f4 es} >> |
  <c es as>1 |
  << { <f bes>4 <as des> <g c> <f bes> } \\ { des f es des } >> |
  << { <f bes>2 <es as> } \\ { des2 c } >>
     \breathe
     
  << { es2 f4 g } \\ { es2 des4 des} >> |
  << { as'2 as } \\ { c, c } >> |
  << { bes'4 des c bes } \\ { des, f es des } >>
  << { bes'2\arpeggio as } \\ { des,\arpeggio c } >> 
    \breathe
    
  << { <as' c>4\arpeggio <g bes> <as c>\arpeggio <f as> } \\ { f2\arpeggio f2\arpeggio } >>
  << <des f bes>1 \\ { r8 bes-. des-. f-. bes-. des-. f-. bes-. } >>
  <es,, g>4 <g bes> <f as> <es g> |
  <des f>2 <c es> |
  
  << { c'4 bes c as } \\ { as g ges2 } >>
  <<  { \toleft r8 as,,-. as'-. des-. \toright f-. as-. des-. f-. } \\ <f, as des>1 >>
  \breathe 
  
  << { <as c>4\arpeggio <c es> <bes des> <as c> } \\ { es\arpeggio as f es } >>
  << { <g bes>2 <es as> } \\ { des c } >> |
  \breathe
  
  << { c'4 bes c as } \\ { <as es'>2\arpeggio q } >>
  << <g bes es>1\arpeggio \\ { r4 es'-. es'-. es,-. } >>
  << { des2 des } \\ { g,4 bes as g } >> 
  << { <as~ des>2 <as c> } \\ {f es } >>
  
  << { <as as'>4 <g g'> <ges ges'>2 } \\ { <c es>2 q } >>
  << { r8 des,-. f-.^\markup\italic"rit." as-. des-. f-. as-. des-. } \\ <f, as des f>1 >>
  
  <as, c>4 <c es> <bes des>8 <as c> <f bes> <es as> |
  << { < f bes>2 <es as> } \\ { des c } >> }
  \alternative {
  \rightinterone
  \rightintertwo
  }
  \bar "||"   
   
}

left = \relative c' {
  \globali
  \set Staff.connectArpeggios = ##t
  \repeat volta 2 {
    << { r4 c( <g des'> <es bes'>) r as( <f des'> <es bes'>) } \\ { <as, as'>1 q } >>
  }
  
  \repeat volta 2 {
  << { r4 c'( des bes) } \\ <as, es' as>1\arpeggio >>
  << { r4 as'( es c) } \\ as1 >>
  << { r4 bes( es g) } \\ es,1 >>
  << { r4 es'( as es) } \\ as,1 >>
  \breathe
  
  << { r4 c'( \parenthesize des  es,,) } \\ <as es' as>1\arpeggio >>
  << { r4 es'( as c) } \\ as,1 >>
  << { f'4\arpeggio as g f } \\ <es, bes'>1\arpeggio >>
  << { r4 bes''4( es, c) } \\ < as es'>1\arpeggio >>
  \breathe
  
  <f' c'>2\arpeggio q\arpeggio |
  << { r4 f( bes des) } \\ bes,1 >> 
  << { r4 bes( des g) } \\ es,1 >>
  << { r4 as'( es c) } \\ <as es'>1 >>
  
  << { r4 es' as c } \\ as,1 >>
  << des,1 \\ { s4 des'8-. f-. as-. des-. \toright f-. as-. }  >>
  
  <es, c'>1\arpeggio
  << { r4 <des g bes> <es as>2 } \\ { es, as } >> \breathe
  
  <as es'>4 as' <c es> f
  <es, bes'> g <bes es> \showStaffSwitch \toright g' \hideStaffSwitch \toleft
  es,, bes' es g
  as, es' as c
  
  as, es' as c
  << <des, des,>1 \\ { r8 f-. as-. des-. \toright f-. as-. des-. f-. } >>
  \toleft <es,, as c es>1\arpeggio
  r4 <es, bes' es g bes>\arpeggio <as es' as>2
  }
  \alternative {
  \leftinterone
  \leftintertwo
  }
  
\bar "||"   

}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "P-no"
  midiInstrument = "acoustic grand"
  \consists "Span_arpeggio_engraver"
} <<
  \new Staff = "right" \with { \consists "Span_arpeggio_engraver" }
   { \right }
  \new Staff = "left"  \with { \consists "Span_arpeggio_engraver" }
  { \clef bass \left }
>>


\bookpart {
  \header { piece = "Piano" }
  \score {
    %  \transpose c bes {
    <<
    \pianoPart
    >>
    %  }  % transposeµ
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
    }
  }
} 


\include "articulate.ly"
% midi output
\bookpart {
  \score {
    \unfoldRepeats \articulate
    %  \transpose c bes {
    <<
      \pianoPart
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
