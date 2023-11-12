\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr= {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

global = {
  \hide Staff.TimeSignature
  \autoBeamOff
  \key es \major
  \placeDynamicsLeft
  \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1
}


sopvoice = \relative c' {
  \global
 % \dynamicUp
  \tempo "Подвижно, легко"
  \time 5/2
  es4(\mf f g) g g8[(\< f]) es4 f2--\> f8[( g] as4)\! |
  \time 4/2 g4 g g8[( f]) es4 f1 |
  g4 g g g g2\> g8[(\! f])\< es4\! | \abr
  f2_- f4\> f~ f\! r r2 |
  \tempo "Немного медленнее"
  r1 <as c es>2->\p q\pp |
  r1*2 | \abr
  \time 6/2 <es g bes>2->\p q\pp r2*4 |
  \time 5/2 es4\pp( f g) g g8[( f]) es4 f2-- f8[( g] as4) | \abr
  \time 4/2 g4 g g8[( f]) es4 << f1 { s4\> s2 s4\! } >> |
  
  r1 r2
  << \voiceOne {
    
    <c' es>->\ppp~( |
    q8[ <bes d> <as c> <bes d>]) <c es>2~( q8[ <bes d> <as c> <bes d>)] <c es>2--~( |
    q8[ <bes d> <as c> <bes d>]) <c es>[( <bes d> <as c> <bes d>]) <c es>[( <bes d> <as c> <bes d>]) <c es>[( <bes d> <as c> <bes d>] |
    <c es>1~)\< q2\f\fermata\> r2\fermata\!
    
     } \new Voice { \voiceTwo 
                    as2~ ( |
                    as8[ bes c bes]) as2(~ as8[ bes c bes]) as2~( |
                    as8[ bes c bes]) as[( bes c bes]) as[( bes c bes]) as[( bes c bes] |
                    as1~) as2\fermata r2\fermata
  } >>
  
  
\abr
  
  
  % fine
  \tempo "Медленно, очень мягко. С большим чувством"
  \dynamicDown
   
  g2\p\> f g\pp r4 as4\< |
  bes1--\>~ bes4 as\pp g f8[( g]) |
  as2.--\> g4 g1\! | \abr
  \time 2/2 r2 g4\pp as |
  \time 4/2 bes2. as4 bes2\<( b) |
  c2.--\mf\> bes4 c2\p\> g |
  bes1\pp~ bes2\> as |
  g1\ppp\fermata \bar "|."
}

slavavoice = \relative c'' {
  \set fontSize = #-3
  \dynamicUp
  s2*17
  s2.... <as c es>2->\p q\pp
  s2*4 s8 <es g bes>2->\p q\pp
  s2*15 s4 <as c es>2(\ppp s4 q4 <bes d>) <as c>1
}

altvoice = \relative c' {
  \global
  es2(\p f c) d--( es) |
  d --( c) d( es) |
  d( c d\> es)
  f4\! r4 r2 r2 es4(\p f |
  g) g g8[( f]) es4 f2-- f8[( g] as4) |
   g4 g g8[( f]) es4 f1-- |
   g4 g g g g2-- g8[( f]) es4 f2--\> f4 f\! |
   
   << { \voiceOne
   es4(\pp f g) g g8[( f]) es4 f2-- f8[( g] as4) |
   g4 g g8[( f]) es4 f1\> |
   g4 g g g g2\! g8[( f]) es4 |
   f1-- f--
   f-> f->
   f->~\< f2\fermata\f\> r2\!\fermata
      } 
      \new Voice="altoi" { \voiceTwo 
                  c2( d es) c( d) |
                  bes2( c) as1
                   
                  \showStaffSwitch
                  \change Staff="tb"
                  \voiceOne
                  r2
                  g'1.->
                  \change Staff="a"
                  \voiceTwo
                  es2 \breathe es1-> es2->~
                  es2 es1-> es2~ |
                  es1~ es2\fermata r2\fermata
      }
   >>
   
     % fine

   es2 d es r4 es |
   es1--~ es4 es es es |
   es2.-- es4 es1 |
   r2 es4 es |
   es2. es4 es2( d) |
   es2. d4 es2 <d g> |
   des1~ des2 c |
   es1
  
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  c2(\p g as)\> bes--\!( c) |
   g2--( as)\> bes\!( c) |
   g( as bes) c |
   d\pp( c bes as) |
   g1 r1 |
   << {\voiceOne g'\pp->( f) es2 r2 d1->\pp\> c2( d)\! } 
      \new Voice { \voiceTwo <c es>1( q2 bes) es2 r2 <g, bes>1 as2( bes)} >>
   
   \oneVoice c\pp( d es) c( d)
   bes2( c) as1 |
   g2
      << {\voiceOne 
          es'1.
          c2 \breathe c->( bes->) c2(
          bes->) c->( bes->) c->~
          c1~ c2\fermata r2\fermata
         } 
      \new Voice="tenori" {\voiceTwo
          c1.\ppp f,4--( as f as) f--( as f as)
          f--( as f as) f--( as f as
          f2\< as~\f\> as)\!\fermata r2\fermata
      } >>
      
   
     % fine

   bes2-- bes bes r4 c |
   des1--~ des4 c bes as8[( bes]) |
   c2.-- bes4 bes1 |
   r2 bes4 bes |
   bes2. bes4 bes2( as) |
   g2. as4 g2 d' |
   des1~ des2 c |
   bes1
}

barvoice = \relative c' {
  \global
  \dynamicDown
  r2*5
  r1*2
  r
  g2\pp( as d, c)
  bes1 r |
  r1*2
  r1*3
  r2 g'1 f
  d2 c c( bes)
   
  \once \shiftOnnn bes2 r1 r2 |
   bes4(-- c bes c) bes(-- c bes c) |
   bes--( c bes c) bes--( c bes c)
   bes2( c~ c)\fermata r2\fermata
  
}

bassvoice = \relative c, {
  \global
  \dynamicDown
  r2*5
  r1*2
  r
  r
  es1~ es~ |
  es~ es |
  es~ es r |
  r2 bes'2(\p c) as( bes) |
  
  g( as) f( bes) |
  es,1~ es |
  
  es1 es
  es es~
  es~\< es2\f\>\fermata r2\!\fermata
  
    % fine

  es'2 bes es r4 <es as,>
  <es g,>1~ q4 q <es bes> << \voiceThree es4 \new Voice { \voiceFour c8[( bes]) } >>
  es2. es4 es1 |
  r2 es4 f |
  g2. as4 g2( f) |
  c2. f4 c2 es |
  <es g,>1~ q2 << \voiceThree {es4( d)} \new Voice { \voiceTwo  as2 } >> |
  < es es'>1 \fermata

}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  Сла -- ва в_вы -- шних Бо --
  гу, Сла -- ва в_вы -- шних Бо -- гу, и на зе -- мли мир,
  в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  Сла -- ва в_вы -- шних Бо -- гу
  и на зе -- мли мир, в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  Сла -- ва.
  
  Го -- спо -- ди, у -- стне мо -- и о -- тве -- рзе -- ши, и у --
  ста мо -- я во -- зве -- стят хва -- лу Тво -- ю.
  
}

textup = \lyricmode {
  Сла -- ва в_вы -- шних Бо -- гу, и на зе -- мли мир, в_че -- ло -- ве -- цех бла -- го -- во --
  ле -- ни -- е.
  Сла -- ва
  Сла -- ва
  
  Сла -- ва в_вы -- шних Бо -- гу
  и на зе -- мли мир, 
  сла -- ва,
  сла -- ва,
  сла -- ва.
  
}

textaltoi = \lyricmode {
  и на зе -- мли.
  Сла -- ва, сла -- ва, сла -- ва. 
}

texttenor = \lyricmode {
Сла -- ва в_вы -- шних Бо -- гу, 
  Сла -- ва
  Сла -- ва
  Сла -- ва
  и на
  зе -- мли мир. Сла -- ва, сла -- ва, сла -- ва.
}

texttenori = \lyricmode {
_ Сла -- ва, сла -- ва.
}

textbass = \lyricmode {
  Сла -- ва 
  и на
  зе -- мли мир __
  Сла -- ва,
  сла -- ва.
  
  Го -- спо -- ди, у -- стне мо -- и о -- тве -- рзе -- ши, и у --
  ста мо -- я во -- зве -- стят хва -- лу Тво -- ю.
  
}



\bookpart {
  \header {
    title = "Шестопсалмие"
    subtitle = "(Славословие малое)"
    %composer = "муз. Шишкин"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \paper {
    #(set-default-paper-size "a4")
    top-margin = 10
    left-margin = 20
    right-margin = 15
    bottom-margin = 15
    indent = 0
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
    ragged-last = ##f
  }

\score {
  \new ChoirStaff
  <<
    

    
     \new Staff = "s" \with {
      instrumentName = "Сопрано"
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \oneVoice \sopvoice }
    >>    
    \new Lyrics \lyricsto "soprano" { \textup }
     
    \new Staff = "a" \with {
      instrumentName = "Альт"
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "alto" { \oneVoice \altvoice }
    >> 
    \new Lyrics \lyricsto "alto" { \texts }
    \new Lyrics \lyricsto "altoi" { \textaltoi }
    
          

    \new Staff = "tb" \with {
      instrumentName = "Тенор"
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \oneVoice \clef "treble_8" \tenorvoice }
    >>
    \new Lyrics \lyricsto "tenor" { \texttenor }
    \new Lyrics \lyricsto "tenori" { \texttenori }
      
       \new Staff = "b" \with {
      instrumentName = "Бас"
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "bar" { \clef bass \voiceOne \barvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \textbass }
    
  

      
  >>
  \layout {
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=90
  }
}
}

