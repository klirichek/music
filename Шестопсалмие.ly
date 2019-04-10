\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

abr = { \break }
%abr = {}

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

global = {
  \hide Staff.TimeSignature
  \autoBeamOff
  \key es \major
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Подвижно, легко"
  \time 5/2
  es4(\p\< f g) g g8[( f]) es4 f2--\> f8[( g] as4)\! |
  \time 4/2 g4 g g8[(\> f]) es4 f1\! |
  g4\mf g g g\> g2 g8[(\! f])\< es4 | \abr
  f2_-\> f4\p f~ f r es\p(\< f |
  g)\! g g8[( f]) es4 f2_- f8[( g] as4) |
  g4 g g8[( f]) es4 f1-- | \abr
  \time 6/2 g4 g g g g2-- g8[( f]) es4 f2-- f4\> f\! \breathe |
  \time 5/2 es4\pp(\< f g) g\! g8[( f]) es4 f2-- f8[( g] as4) | \abr
  \time 4/2 g4 g g8[( f]) es4 << as1 { s4\> s2 s4\! } >> |
  g4 g g g g2 g8[( f]) es4 |
  f2-- f\> f1\fermata\!|
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
  s2.... <as c es>2->\p q
  s2*4 s8 <es g bes>2->\p q\pp
  s2*15 s4 <as c es>2(\ppp s4 q4 <bes d>) <as c>1
}

altvoice = \relative c' {
  \global
  es2( f c) d--( es) |
  d --( c) d( es) |
  d( c d es)
  f r1 es4( f |
  g) g g8[( f]) es4 f2 f8[( g] as4) |
   g4 g g8[( f]) es4 f1-- |
   g4 g g g g2-- g8[( f]) es4 f2-- f4 f |
   es4( f g) g g8[( f]) es4 f2-- f8[( g] as4) |
   g4 g g8[( f]) es4 f1 |
   g4 g g g g2 g8[( f]) es4 |
   f2 f f1
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
   g( as bes c) |
   d\pp( c bes as |
   g1\pp) r1 |
   g'\pp->( f)
   es4
   r2. d1->\pp\> c2\!( d)
   c\pp( d es) c( d)
   bes2( c) as1 |
   g2 <c es g>1->\ppp\> c2\!
   f,2--(\p as) f--( as)
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
  R2*5
  R1*2
  R
  g2\pp^\markup\italic"бар."( as d, c)
  bes1 r |
  <c' es>1~( q2 bes)
  es4 r2. <g, bes>1 as2( bes) \breathe
  r2 g1 f
  s1 s |
  \once \shiftOnnn bes,2 r1. |
  \once \shiftOnnn bes2(-- c) \once \shiftOnnn bes(-- c)\fermata |
  
}

bassvoice = \relative c, {
  \global
  \dynamicDown
  R2*5
  R1*2
  R
  R
  es1~ es~ |
  es~ es |
  es~ es s |
  s2 bes'2(\p c) as( bes) |
  
  <g d'>( <as c>) <f c'>( bes) |
  es,1~ es |
  
  es1 es\fermata
  
  es'2 bes es r4 <es as,>
  <es g,>1~ q4 q <es bes> << \voiceThree es4 \\ { c8[( bes]) } >>
  es2. es4 es1 |
  r2 es4 f |
  g2. as4 g2( f) |
  c2. f4 c2 es |
  <es g,>1~ q2 << \voiceThree {es4( d)} \\ as2 >> |
  < es es'>1 \fermata

}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  Сла -- ва в_вы -- шних Бо --
  гу, Сла -- ва в_вы -- шних Бо -- гу, и на зе -- мли мир,
  в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  Сла -- ва в_вы -- шних Бо -- гу
  и на зе -- мли мир, в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  
  Го -- спо -- ди, у -- стне мо -- и о -- тве -- рзе -- ши, и у --
  ста мо -- я во -- зве -- стят хва -- лу Тво -- ю.
  
}

textup = \lyricmode {
  Сла -- ва в_вы -- шних Бо -- гу, и на зе -- мли мир, в_че -- ло -- ве -- цех бла -- го -- во --
  ле -- ни -- е
  
}

textslava = \lyricmode {
  \override LyricText.font-size = #-1
  Сла -- ва
  сла -- ва
  сла -- ва
}

textbar = \lyricmode {
  Сла -- ва
  сла -- ва
  сла -- \set associatedVoice = "tenor" ва __
  и на \skip 1 \skip 1 \skip 1 Сла -- ва
}

textbass = \lyricmode {
  Сла -- ва 
  и \skip 1
  зе -- мли мир __
  Сла -- ва
  
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
    
    \new Lyrics = "sopranos"
    \new Lyrics = "slava"
     
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice = "slava" { \voiceThree \slavavoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "alto" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bar" { \voiceTwo \barvoice }
        \new Voice = "bass" { \voiceFour \bassvoice }
    >>
    \new Lyrics \lyricsto "bar" { \textbar }
    \new Lyrics \lyricsto "bass" { \textbass }
    \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \textup
        }
      }
      
      \context Lyrics = "slava" {
        \lyricsto "slava" {
          \textslava
        }
      }
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

