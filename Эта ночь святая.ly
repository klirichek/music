\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

#(set-global-staff-size 19)
\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(include-special-characters)
}

\header {
  title = "Эта ночь святая"
  subtitle = " "
  %opus = "№ 140"
  %composer = \markup { \column { "т.: Йозеф Мор, 1816г" "м.: Франц Грубер, 1818г" }}
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


global = { \time 3/4 \key f \minor }

sopvoice = \relative c' {
  \global
  \tempo "Не спеша"
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
  \mark \default f8 g | as4 bes8[ as] g4 | f2 as8 bes | c4 des8[ c] bes4 | c2 c8 c | bes4 g bes8 c | as4 f c'8 c |
  des c bes as g4 | f2 \breathe <as c>8 q | <g bes>4 g bes8 c | as4 f <as c>8 q | <bes des> <as c> <g bes> as g4 |
  f2 \breathe \mark \default f8 g | as4 bes8[ as] g4 | f2 as8 bes | c4 des8[ c] bes4 | c2 \breathe c8 c | bes4 g bes8 c |
  as4 f as8 as | bes as g f f[ e] | f2 \breathe <as c>8 q | <g bes>4 g bes8 c | as4 f <as c>8 q |
  <bes des> <as c> <g bes> as g4 | f2 \breathe 
  \mark \default f8 g | aes4 bes8[ aes] g4 | f4.( g8) aes bes | c4 des8[ c] bes4 |
  c4( des) \breathe e8 f | g4 e f8 f | f4 c c8 c | <bes des>8 <aes c> <g bes> aes g4 | f2 \breathe <aes c>8 q |
  bes4 g \breathe bes8 c | aes4 f c'8 c | <bes des> <aes c> <g bes> aes g4 | f2 \bar "|"
  \key f \major \mark \default f8 g | a?4 bes8[ a] g4 | a2 a8 bes | c4 des8[ c] bes4 c2 \breathe c8 f |
  e?4 bes e8 d? | c4 a <a c>8 q | <bes d> <a c> <g bes> a g4 | a2 \breathe c8 f |
  e4 bes e8 d | c4 a <a c>8 q | <bes d> <a c> <g bes> a g4 | f2. \bar "|."
}

sopIIvoice = \relative c' {
  \global
  \partial 4
  \autoBeamOff
  f8 f | f4 g8[ f] f[ e] | f2 f8 g | aes4 bes8[ aes] aes[ g] | aes2 aes8 aes | g4 e g8 aes | f4 f aes8 aes |
  bes aes g f f[ e] | f2
}

altvoice = \relative c' {
  \global
  \partial 4
  \autoBeamOff
  f8 f | f4 f c | f2 f8 ees? | aes,4 aes ees' | aes,2 aes8 aes | c[ d] e[ d] e c | f[ ees?] des?[ c] des c |
  bes c des bes c4 f2 \showStaffSwitch \change Staff= "sa" \voiceTwo ees8 ees | e4 g g8 e | f4 des f8 f | f f f f f[ e] |
  f2 f8 f | f4 g8[ f] f[ e] | c2 f8 g | aes4 aes aes8[ g] | aes2 ees8 ees | e4 c c8 e |
  f4 des c8 c | des c bes des c[ bes] | aes2 es'8 es | e4 g g8 e | f4 des f8 f |
  f f f f f[ e] | f2 f8 f | f4 g8[ f] f[ e] | f2 f8 g | aes4 aes aes8[ g] |
  aes4( f) g8 aes | bes4 g <f aes>8 <g bes> | <aes c>4 <f aes> q8 q | f f f f f[ e] | f2 es8 es |
  e4 e g8 e | f4 des <f aes>8 q | f f f f f[ e] | f2
  f8 f | f4 f f | f2 f8 g | a?4 bes8[ a] g4 | a2 f8 a |
  c4 g g8 bes | a4 f f8 f | f f f f f4 | f2 f8 a |
  bes4 g g8 bes | a4-\markup { \italic "rit."}  f f8 f | f f f f f[ e?] | c2. 
}

tenorvoice = \relative c' {
  \global
  \partial 4
  \autoBeamOff
  s4 R2.*7 r2 c8 c | c4 c c8 c | c4 aes aes8 aes | bes aes bes bes bes4 |
  aes2 \breathe aes8 bes | c4 des8[ c] bes4 | aes2 c8 es | es4 f8[ es] es4 | es2 \breathe aes,8 aes | g4 g g8 c |
  c4 aes f8 f | f f f bes g4 | aes2 \breathe c8 c | c4 c c8 c | c4 aes aes8 aes |
  bes aes bes bes bes4 | aes2 \breathe aes8 bes | c4 des8[ c] c[ bes] | aes4.( bes8) c es | es4 f8[ es] es4 |
  es4( des) \breathe c8 d | e4 c c8 c | c4 c aes8 aes | bes aes bes bes bes4 | aes2 \breathe c8 c |
  c4 c \breathe c8 c | c4 aes aes8 aes | bes aes bes bes bes[ g?] a2 
  \key f \major a?8 bes | c4 des8[ c] bes4 | c2 c8 des | f4 f f8[ e?] | f2 \breathe c8 c |
  c4 c c8 c | c4 c c8 c | bes a? bes d? c[ bes] | c4( bes) \breathe c8 c |
  c4 c c8 c | c4 c a?8 a | bes c bes d? c[ bes] a?2.
  
  
}

bassvoice = \relative c {
    \global
  \partial 4
  \autoBeamOff
  s4 R2.*7 r2 <aes aes'>8 q | c[ d] e[ d] e c | f[ ees?] des?[ c] des c | bes c des bes c4 |
  f2 f8 f | f4 f c | f2 f8 es | aes4 aes es | aes2 aes,8 aes | c[ d] e[ d] e c |
  f[ es] des[ c] des c | bes c des bes c4 | f2 <aes, aes'>8 q | c[ d] e[ d] e c | f[ es] des[ c] des c |
  bes c des bes c4 | f2 f8 f | f4 f c | f2 f8 es | aes4 aes es |
  aes4( bes) c8 c | c4 c f,8 f | f4 es des8 c | bes c des bes c4 | f2 <aes, aes'>8 q |
  c[ d] e[ d] e c | f[ es] des[ c] des c | bes c des bes c4 f2
  <f, f'>8 q | q4 q q | q2 q8 q | f'4 f f | f( g) a?8 a |
  c,[ d?] e?[ d] e c | f[ g] a?[ bes] c <c, c'> | bes c d bes c4 | f( g) a8 a |
  c,[ d] e[ d] e c | f[-\markup { \italic "rit."} e?] d[ c] d c | bes c d bes c4 | f2.
  
}
verseone = \lyricmode {
  Э -- та ночь свя -- та -- я, э -- та ночь спа -- се -- нья
  во -- зве -- сти -- ла все -- му ми -- ру та -- йну Бо -- го -- во -- пло -- ще -- нья,
  во -- зве -- сти -- ла все -- му ми -- ру та -- йну Бо -- го -- во -- пло -- ще -- нья.
  
  Па -- сту -- хи у ста -- да в_э -- ту ночь не спа -- ли.
  Свя -- тый А -- нгел при -- ле -- тел к_ним из не -- бе -- сной све -- тлой да -- ли.
  Свя -- тый А -- нгел при -- ле -- тел к_ним из не -- бе -- сной све -- тлой да -- ли.
  
  Страх о -- бъял ве -- ли -- кий их, де -- тей пу -- сты -- ни,
  но ска -- зал Он: &flqq;О, не бо -- йтесь, все -- му ми -- ру ра -- дость ны -- не&frqq;.
  Но ска -- зал Он: &flqq;О, не бо -- йтесь, все -- му ми -- ру ра -- дость ны -- не&frqq;.
  
  И_с вы -- сот не -- бе -- сных ра -- зда -- лось вдруг пе -- нье:
  &flqq;Сла -- ва, сла -- ва в_Вы -- шних Бо -- гу, на зе -- мли бла -- го -- во -- ле -- нье!&frqq;
  &flqq;Сла -- ва, сла -- ва в_Вы -- шних Бо -- гу, на зе -- мли бла -- го -- во -- ле -- нье!&frqq;
}


\book {
  \bookOutputSuffix "fmoll"
\score {
  
  \new ChoirStaff
  <<
    \new Staff = #"sa" \with {
      instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "C" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \global \voiceOne \sopvoice }
      \new Voice  = "sopranoII" { \global \voiceTwo \sopIIvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \verseone }
    
    \new Staff = #"alto" \with {
      instrumentName = #"Альт"
      shortInstrumentName = #"А"
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "alto" { \oneVoice \altvoice }
    >> 
  
    \new Staff \with {
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \global \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \global \voiceTwo \bassvoice }
    >>
  >>
  \layout { 
    %#(layout-set-staff-size 17)
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=90
  }
}
}

\book {
  \bookOutputSuffix "emoll"
\score 
{
  
  \header {
  piece = "E-moll"
}

  \transpose f e {
  \new ChoirStaff
  <<
    \new Staff = #"sa" \with {
      instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "C" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \global \voiceOne \sopvoice }
      \new Voice  = "sopranoII" { \global \voiceTwo \sopIIvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \verseone }
    
    \new Staff = #"alto" \with {
      instrumentName = #"Альт"
      shortInstrumentName = #"А"
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "alto" { \oneVoice \altvoice }
    >> 
  
    \new Staff \with {
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \global \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \global \voiceTwo \bassvoice }
    >>
  >> 
  } %transpose
  \layout { 
    %#(layout-set-staff-size 17)
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=90
  }
}}