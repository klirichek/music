\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Що то за прэдыво"
  subtitle = " "
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key c \minor
  \time 3/4
  \numericTimeSignature
}

abr = { \break }
abr = {}

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  g8 c es4 g |
  f8[( g]) es4.( c8) |
  \slurDashed f8( es) \slurSolid  d[( c16 d]) \slurDashed es8[( d]) | \slurSolid
  \tieDashed c2~ c4 \tieSolid |
  g8 c es4 g | \abr
  
  f8[( g]) es4.( d16[ c]) |
  \slurDashed f8( es) \slurSolid d4 es8[( d]) |
  \tieDashed c2~ c4 \tieSolid |
  \repeat volta 3 { b8 b g4  c8( d)  | \abr
                    
    es f es[( d c]) es |
    d c b4 c8[( d]) |
    es f es([ d es])  f\fermata |
    g4 f8[( g]) \slurDashed es ( d) \slurSolid | \abr
  }
  \alternative {
    { c2 c4 }
    { c2. }
    { c2.~ c \fermata }
  }
  \bar "|."
  
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  es8 es g4 g 
  f8[( d]) es2 |
  \melon \slurDashed f8( g)  as4 g8[( f]) |
  es4(\( as\) g8[ f]) \slurSolid | \meloff
  es es g4 g |
  
  as8[( g]) g2 |
  \slurDashed as8( as) \slurSolid as4 g8[( f]) |
  \melon \slurDashed es[( f g f] es4) | \slurSolid \meloff
  \repeat volta 3 { g8 g g4 g |
                    
   g8 g g4. fis8 |
   g g g4 g |
   g8 g as4. as8 |
   bes4 as \slurDashed g8( f) \slurSolid |
   
  } \alternative {
    { es8[( g] f[ es16 d]) es8[( c]) }
    { es8[( g] f4 c8[ d]) }
    { es8[( g] f4 c8[ d] e2.) }
  }

}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  c8 c c4 es |
  c8[( b]) c2 |
  \slurDashed c8( c) \slurSolid c4 b |
  \tieDashed c2~ c4 \tieSolid |
  c8 c c4 es |
  
  d c2 |
  \tieDashed c8~ c \tieSolid c4 b |
  \slurDashed c8[( d es d] c4) \slurSolid |
  \repeat volta 3 { d8 d b4 a8[( b]) |
    c d c[( b a]) a |
    b c d4 c8[( b]) |
    c c c[( bes? c]) d |
    es4 c \slurDashed b8( b) \slurSolid |
    
  } \alternative {
    {c8[( bes?] as[ g16 f]) g8[( es]) }
    { c'2. }
    { c8[( bes?] as2 | g2.) }
  }
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  c8 c c4 c'
  as8[( g]) c,2 |
  \slurDashed as'8( g) f4 g |
  as8[\(( g] f4\) \slurSolid es8[ d]) |
  c8 c c4 c' |
  
  c8[( b]) c4( bes) |
  \slurDashed as8( g) \slurSolid f4 g |
  \tieDashed c,2~ c4 \tieSolid |
  \repeat volta 3 { g'8 g g[( f]) es[( d]) |
    c8 b c4. c8 |
    g' g g[( f]) es[( d]) |
    c c f4. bes,8\fermata |
    es4 f \slurDashed g8( g) \slurSolid |
  } \alternative {
    { c,2 c4 }
    { c'8[( bes?] as4 g8[ f]) }
    { c2.~ c \fermata }
  }
}

lyricscoreone = \lyricmode {
  \set stanza = "1. " Що то за прэ -- ды -- во,
  в_свити но -- вы -- на, __
  що Ма -- ри -- я
  Ма -- ты __ Йсуса ро -- ды -- ла. __
  А як Во -- на по -- ро -- ды -- ла, то -- ди Во -- на и спо -- вы -- ла,
  Чы -- ста -- я Пан -- на.
}

lyricscoretwo = \lyricmode {
  \set stanza = "2. "
  А Йо -- сып ста -- рэнь -- кый в_жало -- би сто -- йить, __
  вин на Йсу -- са Хры -- ста __ пэлю -- шкы ɦри -- ить. __
  А Ма -- ри -- я спо -- вы -- ва -- е, до сэ -- рдэ -- нька пры -- ɦо -- рта -- е: «Йсу -- сэ, \set associatedVoice = "alto" Сыну
  _ _  /_Мий». __
}

lyricscorethree = \lyricmode {
  \set stanza = "3. "
  Ан -- ɦе -- лы на нэ -- \set associatedVoice = "alto" би тай __ _ за -- спи -- _ ва -- _  \set associatedVoice = "soprano" лы,
  па -- сты -- ри на зэ -- \set associatedVoice = "alto" мли __ лю -- дям ска -- за -- _ _ _ \set associatedVoice = "soprano" лы:
  Сла -- ва бу -- ла, сла -- ва й_бу -- дэ,
  Ро -- дже -- нно -- му ра -- дисть бу -- дэ,
  и нам на_зэ- _ _ _ /-мли. __
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
    \transpose c b, {
    \new ChoirStaff <<
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
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
      }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
}
}

\include "articulate.ly"

\bookpart {
\score {
    \transpose c b {
  \unfoldRepeats  \articulate 
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
 
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
  >> 
      }  % transposeµ
  \midi {
    \tempo 4=90
  }
}
}
