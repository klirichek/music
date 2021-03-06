\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Ночь спустилась…"
  %subtitle = "(польская колядка)"
  poet = "Русский текст А. Пивоваров"
  %composer = "Composer"
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
  system-separator-markup = \slashSeparator
}

secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \tempo "С движением, легко"
  \secondbar
}

globalv = {
  \global
  \autoBeamOff
  \dynamicUp
}

tbreak = {
  \tag #'breaking' { \break }
}

sopvoice = \relative c' {
  \global
  R2.*6
  \repeat volta 3 {
    R2.*2
  c8 c  \slurDashed f[( g]) a4 |
  g8 f g[( a]) bes4 |
  a8 bes c4 bes |
  a8 g f2 | \tbreak
  \slurSolid
  
  c8 c f[( g]) a4 |
  g8 f g[( a]) bes4 |
  a8 bes c4 bes |
  a8 g f2 | \tbreak
  
  c'4. bes8 a a |
  d c bes[( a]) bes4 |
  bes4. a8 g g |
  c bes a[( g]) a4 |
  a8 bes c4 bes |
  a8 g f2 | 
  
  R2.*6 }
}


lyricscore = \lyricmode {
  \set stanza = "1." 
  Ночь спу -- сти -- лась на до -- ли -- ны,
  за -- сы -- па -- ет Ви -- фле -- ем.
  Э -- той но -- чью в_бед -- ных я -- слях Бог я -- ви -- лся на зе -- мле.
  
  Меж во -- ла -- ми и му -- ла -- ми 
  спит, по -- ви -- тый пе -- ле -- на -- ми, Бог мла -- де -- нец Царь ца -- рей.

}

lyricscoretwo = \lyricmode {
  \set stanza = "2." 
  А И -- о -- сиф и Ма -- ри -- я
  Ря -- дом с_Го -- спо -- дом сто -- ят.
  И, лю -- бо -- вью со -- гре -- ва -- я,
  не -- жно на Не -- го гля -- дят.
  
  Я -- рко звё -- здо -- чка си -- я -- ет,
  ра -- дость ми -- ру во -- зве -- ща -- ет:
  здесь ро -- ди -- лся Бо -- жий Сын!
  

}

lyricscorethree = \lyricmode {
  \set stanza = "3." 
  В_бе -- дных я -- слях средь я -- гня -- ток
  ждёт нас Бо -- жий Сын, Хри -- стос.
  На -- ше с_Бо -- гом при -- ми -- ре -- нье
  Он на Зе -- млю нам при -- нёс.
  
  Сле -- дуй -- те за па -- сту -- шка -- ми,
  по -- спе -- ша -- йте за вол -- хва -- ми,
  при -- хо -- ди -- те ко Хри -- сту!
  
  
}

lyricscorefour = \lyricmode {
  \set stanza = "4." 
  Ра -- до --  
  \set ignoreMelismata = ##t стно зву -- чит ан -- гель -- ский наш хор, \set ignoreMelismata = ##f
  пой -- те вме -- сте с_на -- ми все!
  Сла -- ва, сла -- ва в_вы -- шних Бо -- гу
  в_Не -- бе -- сах и на Зе -- мле!
  
  С_а -- нге -- ла -- ми во -- спе -- ва -- йте,
  пе -- сней Зе -- млю о -- гла -- ша -- йте:
  Сла -- ва Бо -- гу на -- ше -- му!
  

}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

zigzag = { \once \override Glissando.style = #'zigzag }


toleft = \change Staff="left"
toright = \change Staff="right"

flute = \relative c'' {
  \global
  R2. |
  a8 c f g a4 |
  R2. |
  bes,8 d g a bes4 |
  r4 c, c' |
  a2 g4 | \abr
  
  \repeat volta 2 {
  f4 r c8 c' |
  r4 r c,8 c' \bar "||" | \abr
  
  r8 c,4 c8 f c |
  r8 g c4 g'8 c, |
  r c f a g d |
  c4 r8 a c f |
  r4 c2 | \abr
  c2. |
  f2 bes,4 |
  c f \breathe f,8 a |
  c4. bes8 a a |
  d c bes a bes4 | \abr
  bes4. a8 g g |
  c bes a g a4 |
  a8 bes c4 bes |
  a8^\markup\italic"rit." g f \breathe a^\markup\italic"a tempo" c f |
  a4. g8 fis fis | \abr
  bes8 a g fis g4 |
  g4. f8 e e |
  a g f e f4 |
  f a g |
  c, f2 | }
}

violinone = \relative c'' {
  \global
  a2.~ |
  a |
  bes2.~ |
  bes |
  c2 bes4 |
  c c, bes' |
  
  \repeat volta 2 {
  a2. |
  f2. |
  
  c8 c f g a4 |
  g8 f g a bes4 |
  a8 bes c4 bes |
  a8 g f f a c |
  c, c f g a4 |
  g8 f g a bes4 |
  a8 bes c4 bes |
  a8 g a4 f'8 a |
  c2. |
  d2. |
  bes2. |
  c2. |
  f,8 g a4 g |
  e f r |
  a,8-. c-. f-. g-. a-. c-. |
  bes-. a-. g-. d-. bes-. g-. |
  e-. g-. bes-. c-. e-. g-. |
  f c c bes a4 |
  c f d |
  c8 bes a2
  }
  
}

violintwo = \relative c' {
  \global
  c2. |
  f |
  d |
  g |
  e~ |
  e |
  
  \repeat volta 2 {
  f |
  a, |
  
  c8 bes a bes c4 |
  e8 d e f g4 |
  f8 g a4 d, |
  e8 c a c f a |
  c, bes a bes c4 |
  e8 d e f g4 |
  f8 g a4 g |
  e8 c a4 c'8 f |
  a2. |
  bes |
  g |
  a |
  a,2 bes4 |
  c4 a f8 a |
  c4. bes8 a a |
  d c bes a bes4 |
  bes4. a8 g g |
  c bes a g f4 |
  a8 bes c4 bes |
  a8 g f2
  }  
}



right = \relative c' {
  \global
  \oneVoice
  a8-. c-. f-. g-. a4~ |
  a2. |
  bes,8-. d-. g-. a-. bes4~ |
  bes2. |
  <c e g c>2.\arpeggio |
  <c, e g c>\arpeggio |
  
  \repeat volta 2 {
  << { c8 f a bes a4 } \\ { c,4. d8 c4 } >>
  << { c8 f a bes a4 } \\ { c,4. d8 c4 } >> \bar "||"
  
  a8 c <a c f>4<c f a> |
  c8 f <g e c bes>4 <bes g e c> |
  <a f c> <c a f c> <d bes f d > |
  << {a8 g } \\ { <c e, c>4 } >> <f, c a>4 <c' f, c> |
  a,8 c <a c f>4 <c f a> |
  c8 f <bes, c e g>4 <c e g bes> |
  <c f a> <c f c'> <d g bes> 
  << { <c a'>8 <bes g'> } \\ e4 >> <a, c f>8 c f a |
  a-. c-. f-. g-. a-. f-. |
  bes,-. d-. g-. a-. bes g-. |
  bes,-. c-. e-. f-. g-. c,-. |
  a-. c-. f-. g-. a-. f-. |
  <c, f>4 <c f c'> <d g bes> |
  << { a'8 g } \\ <c, e>4 >> <a c f>4 <c f a> |
  <f a c f>\arpeggio <c f c'>\arpeggio <d fis a c>\arpeggio |
  <d g bes>\arpeggio <d g bes d>2\arpeggio |
  <c e g c>\arpeggio <e g bes>4\arpeggio |
  <c f a>\arpeggio <c f c'>\arpeggio <c f a>\arpeggio |
  <f a c f>\arpeggio <f c'> <d g bes d>\arpeggio 
  << { f8 <e g> } \\ <c a' c>4 >> <a c f>2
  }
}

left = \relative c, {
  \global
  \oneVoice
  <f c' f>2.\arpeggio~ |
  q |
  <g d' g>\arpeggio~ |
  q |
  <c g' c>\arpeggio |
  <c, c'>\arpeggio |
  
  \repeat volta 2 {
  <f c' f>\arpeggio |
  q\arpeggio |
  
  <f f'> |
  <c c'>2 <e e'>4 |
  f' <a, f'> <bes bes'> |
  << {c8 bes'} \\ c,4 >> <f, f'>4 a' |
  <f, f'>2.
  <c c'>4 <g' g'> <e e'> |
  <f f'> <a, a'> <bes bes'> |
  <c c'> <f f'>2 |
  <f' c' f>2\arpeggio <a c f>4\arpeggio |
  <g d' g>2\arpeggio <bes d g>4\arpeggio |
  <c, g' e'>2\arpeggio <bes' c e g>4\arpeggio |
  <f c' f>2\arpeggio <a c f>4\arpeggio
  <f a> <a, f'> <bes bes'> |
  << {c8 bes'} \\ c,4 >> f2 |
  <f, f'>4 <a a'> <d, d'> |
  <g g'> <bes bes'> <g g'> |
  <c, c'> <e e'> <c c'> |
  <f f'> <a a'> f' |
  <f, f'> <a, a'> <bes bes'> |
  <c c'> <f f'>2
  } 
}


voicePart = \new Staff \with {
  instrumentName = "Choir"
  shortInstrumentName = "Ch"
  midiInstrument = "voice oohs"
} << \new Voice = "soprano" { \oneVoice \sopvoice }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      \new Lyrics \lyricsto "soprano" { \lyricscorefour } >>

flutePart = \new Staff \with {
  instrumentName = "Fl."
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} { \oneVoice \flute }

violinPart = \new Staff \with {
  instrumentName = \markup\column{"Vn1" "Vn2"}
  shortInstrumentName = "V-ni"
  midiInstrument = "violin"
} <<
     \new Voice { \voiceOne \violinone }
     \new Voice { \voiceTwo \violintwo }
  >>

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
    piece = "Choir"
  }
  \score {
    \keepWithTag #'breaking
    <<
      \voicePart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
 
%book with instruments
\bookpart {
  \header {
    piece = "Instruments"
  }
  \score {
    <<
      \flutePart
      \violinPart
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
  \header {
    piece = "Flute & Violini"
  }
  \score {
    <<
      \flutePart
      \violinPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\bookpart {
  \paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
  \header {
    piece = "Piano"
  }
  \score {
      \pianoPart
    \layout { 
    }
  }
}

%book with instruments
\bookpart {
  \header {
    piece = "Full"
  }
  \score {
    <<
      \voicePart
      \flutePart
      \violinPart
      \pianoPart
    >>
    \layout { 
      \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\include "articulate.ly"

\bookpart {
  \score {
    \unfoldRepeats \articulate
    <<
      \voicePart
      \flutePart
      \violinPart
      \pianoPart
    >>
    \midi {
      \tempo 4=90
    }
  }
}

