\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-global-staff-size 16)

\header {
  subtitle = "Нас помяни"
  subsubtitle = "Баритон и бас"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 10
  %system-separator-markup = \slashSeparator
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 3/4
}

scoremailvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  g4 g a |
  d d c |
  d4. c8 bes4 |
  a g f |
  g g a|
  bes bes c |
  a2.~ |
  a4 r r | \break
  g g a |
  bes bes c |
  d4. c8 bes4 |
  a g f |
  g bes8[ a] g4 |
  a g f |
  g2.~ |
  g4 r r | \break
  g g a |
  g g a |
  bes bes c |
  c bes a |
  g g a |
  g g a |
  a2.~ |
  a4 r r | \break
  g g a |
  g g a |
  bes bes c |
  c bes d |
  g f es |
  d es d |
  g2.~ |
  g4 r r \bar "||"
}
  
scoreABaritoneVoice = \relative c' {
  
  \dynamicUp
  % Вписывайте музыку сюда
  g4 g a |
  bes bes c |
  d4. c8 bes4 |
  a g f |
  g g a |
  bes bes c |
  a2.~ |
  a4 r r | \break
  g g a |
  bes bes c |
  d4. c8 bes4 |
  a g f |
  g bes8[( a]) g4 |
  a g f |
  g2.~ |
  g4 r r | \break
  g g a |
  bes bes c |
  d4. c8 bes4 |
  a g f |
  g g a |
  bes bes c |
  a2. ~
  a4 r r | \break
  g g a |
  bes bes c |
  d4. c8 bes4 |
  a g f |
  g bes8([ a)] g4 |
  a g f |
  g2.~ |
  g4 r r | \break
}

refrainbaritone = \relative c' {
  bes bes es |
  f2 f4 |
  c es d |
  c4. c8 d4 |
  c2 bes4 |
  bes g a |
  f2. ~
  f4 r r |
  a es' d |
  c4.( d8) es4 |
  d c bes |
  es4. d8 c4 |
  bes c d |
  c2 bes4 |
  bes2.~ |
  bes4 r r \bar "|."
  
}

scoreABassVoiceII = \relative c' {
  
  \dynamicUp
  g g d |
  g, g f |
  bes4. a8 g4 |
  f g f |
  g g d' |
  %g, g a |
  %f2.~ |
  g, g f |
  d'2.~ |
  d4 r r |
  
  g g d |
  g, g f |
  bes4. a8 g4 |
  f g f |
  g g8( f) es4 |
  d' es d |
  g,2.~
  g4 r r |
  
  g' g d |
  g, g a |
  bes4. c8 bes4 |
  c bes a |
  g g d' |
  g, g f |
  d'2.~ |
  d4 r r |
  
  g g d |
  g, g a |
  bes4. bes8 bes4 |
  a g f |
  g bes8( a) g4 |
  a g f |
  g2. ~
  g4 r r | \bar "||"
}

refrainbas = \relative c {
  bes bes a |
  d2 f4 |
  g c bes |
  a4. g8 f4 |
  g2 f4 |
  g g a |
  f2.~ |
  f4 r r |
  
  fis c' bes |
  a4.( bes8) c4 |
  bes a g |
  es4. f8 g4 |
  bes, c d |
  c2 bes4 |
  bes2. ~ |
  bes4 r r \bar "|." \break
}

verseone = \lyricmode {
  \set stanza = "1."
  Нас по -- мя -- ни, ми -- ло -- серд -- ный Спа -- си -- тель наш, в_Цар -- стви -- и веч -- ном Тво -- ём, __
  где по без -- мер -- ной лю -- бви нам про -- ще -- нье дашь, мир и не -- бес -- ный Твой дом __
  При -- нял без -- вин -- но Ты го -- речь про -- кля -- ти -- я пад -- ших по -- роч -- ных сер -- дец; __
  и воз -- не -- сён ра -- ди нас на рас -- пя -- ти -- е Жиз -- ни все -- силь -- ный Ве -- нец. __
}
versesecond = \lyricmode {
  \set stanza = "2."
  Средь би -- че -- ва -- ни -- я и по -- но -- ше -- ни -- я, сме -- ха и лжи -- вой мол -- вы __
  злы -- е тель -- цы о -- кру -- жи -- ли пре -- зре -- ни -- ем, па -- сти рас -- кры -- ли, как львы __
  Жа -- ло зме -- и -- но -- е чле -- ны из -- жа -- ли -- ло, смерт -- на -- я персть впе -- ре -- ди, __
  вос -- ком вну -- три Тво -- ё серд -- це и -- ста -- я -- ло, си -- ла ис -- сох -- ла в_гру -- ди __ 
}
versethird = \lyricmode {
  \set stanza = "3."
  Бог не пре -- зрел скор -- би тя -- гост -- ной, стра -- жду -- щей, Лик Свой свя -- той не со -- крыл;
  что -- бы на -- сы -- тить го -- лод -- ных и жа -- жду -- щих смер -- ти по -- кор -- но вку -- сил. __
  Веч -- но из серд -- ца прон -- зён -- но -- го во -- да -- ми Цер -- ковь чи -- ста; и жи -- вём, __
  Бо -- же, Вла -- ды -- ка над все -- ми на -- ро -- да -- ми, ны -- не уж в_Цар -- стве Тво -- ём. __
}
refrain = \lyricmode {
  Сла -- ва Те -- бе, кре -- стом по -- бе -- жда -- ю -- щий Бог наш и Че -- ло -- век __
  За -- клан -- ный А -- гнец, греш -- ных спа -- са -- ю -- щий бла -- го -- сло -- вен во -- век! __
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "baritone" \new Voice = "baritone" { \scoreABaritoneVoice }
     \new Staff = "bass" \new Voice = "bass" { \scoreABassVoiceII }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new Staff \with {
      instrumentName = \markup \right-column { "Баритон" "Бас" }
      midiInstrument = "choir aahs"
    } 
      << \clef bass
         \new Voice = "Baritone" { \oneVoice \scoremailvoice 
                                   \voiceOne \refrainbaritone \scoreABaritoneVoice }
         \new Voice { \global s2.*32 \voiceTwo \refrainbas 
                      \scoreABassVoiceII }
      >>
    \new Lyrics \lyricsto "Baritone" { \verseone \refrain \versesecond }
    \new Lyrics \lyricsto "Baritone" \versethird
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "soprano sax" { \verseone \refrain \versesecond }
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" { \verseone \refrain \versesecond }
    \midi { }
  }
}
