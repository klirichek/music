\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

\paper {
  #(set-default-paper-size "a4")
  
  top-margin = 15
  left-margin = 20
  right-margin = 15
  bottom-margin = 45
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
#(set-global-staff-size 16)

global = {
  \key bes \major
  \numericTimeSignature
  \time 8/4
}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \co c8\mf[ bes] c[ d] ees2 d8[( ees] d4) c2 \cb
  \co d4 ees8[ d] c([ d] ees4) d2 c \cb
  \co c8[ bes] c[ d] ees2 f8[( ees] d[ ees]) f4 ees2 \cb
  \co f4( ees) bes8[( c] d4) c2 bes \cb
  \co ees2( f4 d f) ees2 \cb
  \co c8[ d] ees4( c8[ d]) \bar"" c[ bes] c2 c4 bes2 \cb
  \co bes4 bes aes! c bes(\< c) d ees2\! \cb
  \co ees8[^\markup { \italic "Замедляя" } f] g2 f4 ees ees ees8[ d] \bar"" f4( ees) ees d8[( c] d4 c bes) c2 \breathe \cb
  \co c8[ bes] c[ d] ees2 \bar"" \time 9/4 f8[ ees d ees] f4 ees2 \cb
  \co <d f>4 <c f> <ees f> << {f4} \new Voice { \voiceThree d8[ ees] } >> <d f>4( <c f>) d2 \cb
  \co c8[(^\markup { \italic Замедляя } bes] \nat a4) d ees8[ d] \bar"" c[( d] ees4) d d c2\fermata \cof \bar "|."
}

altvoice = \relative c' {
  \global
  \autoBeamOff
  f4 f g2 g g4( f) | f ees8[ f] g[ f] ees4 f2 f |
  f4 f ees( bes') \bar"" f8[( g] f4) bes bes( aes8[ g]) | f4( g) f2 ees8[ g f ees]  d2 |
  ees4( g bes2.) g2 | g8( f) ees4( ees8[ f]) g4 g2 f8[ ees] d2 | ees4 ees c ees f2 f4 g( ees) |
  g8[\f bes] bes2 bes4 bes ees, ees8[ f] f4( g) g f8[( g] f2 d4) f2 | 
  ees8[ g] g[ f] ees4( aes!8[ g]) f4( f8[ g]) f[ aes!] g2 | f4 f g bes8[ g] f2 f | ees4( c) d g g8[( f] ees4) f f f2 | \bar "|." 
}

tenorvoice = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  a8[ g] a4 c2 bes! c4( a) |
  bes bes bes2 bes4( g) a2 |
  a8[ g] a[ bes] bes4.( c8) d[( ees] bes[ c]) d4 bes2 |
  bes bes8([ \nat a] bes4) g( a) f2 |
  bes4.( c8 bes2.) bes2 |
  bes4 bes2 bes4 bes2 a4 f2 |
  g8[ aes] bes4 f g f( aes?) aes8[ bes] bes2 |
  c8[\f d] ees4( d) d bes bes8[ c] bes4 bes2 bes4 bes8([ ees] d[ bes] a4 g) a2 |
  g4 g8[ bes] bes2 bes bes4 bes2 |
  bes4 a bes bes bes( a) bes2 |
  g4( f) f bes bes2 bes4 bes a2 |  
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  f4\mf f8[ d] c2 g'4.( f8) ees4( f) |
  bes,4 g'8[ f] ees8([ f] g4) bes2 f |
  f4 f8[ bes] g2 bes bes8[ aes] g4( f8[ ees]) |
  d4( ees) d8([ c] bes4) c( f) bes,2 |
  g'4( ees d f ees8[ d]) ees2 |
  ees8[ f] g4( g8[ f]) ees[ d] ees2 f4 bes,2 |
  ees8[ f] g4 f ees d(\< f) f ees(\! g) |
  c8[ bes] g4( bes) aes! g g8[ aes!] g[ f] d4( ees) g bes2( f4 g) f2 \breathe |
  c8[ d] ees[ f] g4( f8[ ees]) d[ c f ees] d4 ees2 |
  d4 c ees bes8[ c] d4( f) bes,2 |
  c4( f) bes,8[ bes'] g[ f] ees[( f] g4) bes d, f2\fermata \bar "|."    
}

tropar = \lyricmode {
  Ро -- жде -- ство тво -- е Хри -- сте Бо -- же наш,
  Воз -- си -- я ми -- ро -- ви свет ра -- зу -- ма,
  "в нем" бо звез -- дам слу -- жа -- щи -- и звез -- до -- ю у -- ча -- ху -- ся,
  Те -- бе кла -- ня -- ти -- ся солн -- цу прав -- ды, 
  и Те -- бе ве -- де -- ти "с вы" -- со -- ты вос -- то -- ка, Гос -- по -- ди сла -- ва Те -- бе.
}

% вместо знака альтерации однократно пишем текст сбоку от ноты (голос)
aside =  #(define-music-function 
           (parser location  x-y text)
           (pair? markup?)
           #{
               \once \override Accidental.extra-offset = #x-y
              \once \override Accidental.stencil = #ly:text-interface::print
              \once \override Accidental.text = \markup { \tiny #text } 
           #}
           )
% то же для двух голосов
asidecol =  #(define-music-function 
           (parser location  x-y one two)
           (pair? markup? markup?)
           #{
               \once \override Accidental.extra-offset = #x-y
              \once \override Accidental.stencil = #ly:text-interface::print
              \once \override Accidental.text = \markup { \tiny \column { #one \raise #1 #two } } 
           #}
           )

sopdevo = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \co d2( c8[ d c a] bes[ c]) d4 c2 \cb
  \co bes8[ c] d4 d d d8[( c] bes4) c8[ d] \bar"" ees4 d8[( c] d4 c bes) c2 \cb
  \co c8[ d] c[ bes] a[( bes] c4) bes8[( a] bes4) a2(\< bes8[ c])\! \cb
  \co d4->\f d-> d2-> d8[( c] bes4) c8[ d] \bar"" ees4 d8[( c] d4 c <bes d>) <c f>2 \cb
  \co << { 
    \aside #'(-3 . 2 ) "С.I." f!4 (\mf g^\markup { \italic "Несколько медленней" } f) f f( ees!) } 
    \new Voice { \voiceThree \aside #'(-1 . 1 ) "С.II." d!2 c8[ d] c[ bes] c2 } >> \cb
  \co 
    \asidecol #'( -2 . 5 ) "С.I" "С.II" <bes! d>4( d)
    << { f4 f f f \bar"" f2~ f} 
       \new Voice { \voiceThree c4 c8[ bes] c[ d] c[ bes] a[ bes] c4 bes8[ a] bes4 } 
    >> <a f'>2\>( <a c>\! {  
    \once \override Accidental.whiteout = ##t
    \aside #'( -3 . -0.5 ) "C.I." f!1->)~\fermata }  \cb 
  \co f4~ \cb
  \co f1~ f~ f(\< f4.\! g8) \cb
  \co a4\< g\! bes8[\f c d c] \bar "" d4 c8[ bes] c4( bes) a2 \cb
  \co 
    \aside #'( -4 . 5 ) \markup { \column { Д.I \raise #1 Д.II  } }
    <a! c>4^\markup { \normalsize \italic Медленнее } 
    <g bes>8[ <a c>] <a d>4 
        << { bes8 ( c4 bes8) } \new Voice { \voiceThree s8 a8[ g]~ g } >>
    <a c>8[^\markup {\italic Замедляя } <bes d>] <a c>[ <g bes>] 
    <f a>[( <g bes>] <a c>4\< bes8[ a]) bes4\! <a c>1->\f\fermata \cof \bar "|."
  
}

altdevo = \relative c' {
  \global
  \autoBeamOff
  f2\mp( f f4) f f2 |
  d8[ f] f4 f f f( d) f g g2( g4 d) f2 |
  ees8[ f] ees4 ees2 d d( d8[ f])
  f4 f f2 f8[ ees] d4 ees8[ f] g4 f8[( ees] d[ f] f2) f |
  \aside #'( -3 . -3.5 ) "Ал." bes!4( f8[ g] a[ bes]) a[ g] a4( g) |
  \aside #'( -2 . -2 ) "Ал." f!2 f4 f f f f8[( g] ees[ f] g[ f]~ f[ g]) f2~ f r1
  r4 r1 r1 r1 r2 |
  ees!4 ees f4.( ees8) d4 g f2 f |
  \aside #'( -2 . -2 ) "Ал."  f!4 f <d f> g8[( f c g']) f4\< c\! d( c d8[ c]) d4 c1\fermata | \bar "|."
    
}

tenordevo = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp
  bes2( a g8[ a]) bes8[ g] a2 |
  g8[ a] bes4 bes bes bes8[( a] bes4) a g8[ a] bes8[( a] bes4 g8[ a] bes4) a2 |
  g4 g g2 g8[( a] g4) a2( g8[ a]) |
  bes4\f bes bes2 bes bes4 bes bes4.( g8 \nat a4 g) a2 |
  \aside #'( -3 . 0 ) "T.I." bes!4( d8[ e] f4) c4 f,( c') |
  \asidecol #'( -3 . 0 ) "T.I" "T.II" f!2 \nat ees8[ f] ees[ d] <c ees>[ <d f>] ees[ d]
  << { c4( c d8[ c] d) } \new Voice { \voiceThree c4 f,8[ a] bes4 bes } >> a2 r2 r1
  \asidecol #'( -3 . 3 ) "T.I" "T.II"  <g! bes>8\p[ <a c>]
  <bes d>4 q <a d>4 q <bes d>8[( <a c>] <g bes>4) <a c>8[ <bes d>] <c ees>4 <bes d>8[ <a c>] <a d>4( <a c>) bes <a c>4.( <bes d>8) |
  <f c'>4 bes bes8[( a] bes4) bes bes a( bes) c2(
  \aside  #'( -3 . 1.5 ) "Тен." f,!2.~) f1~ f4.\f\< f8 f4 f8[ g]\! a1-> | \bar "|."
    
}
bsh = \once \override NoteColumn.force-hshift = #-1.3
bshs = \once \override NoteColumn.force-hshift = #-0.7
bassdevo = \relative c {
  \global
  \dynamicDown
  \autoBeamOff
  bes'2( f4. ees8 d[ c]) bes4 f'2 |
  g8[ f] bes4 f d d( g) f c g'4.( f8 ees4 g) f2 |
  c4 c c2 g' d2(\< d8[ c])\!
  bes4-> f'-> bes2-> bes4.( a8) g[ f] ees[ g] bes2( f) f |
  r2 r2 r2 |
  \aside #'( -3 . -2.5 ) басы <bes,! f'>2 bes'4 f <bes,f'> q q2~ q <f f'>-> r2 r1 |
  << { f'4 } \new Voice {\voiceFour 
       \asidecol #'( -2 . -4 ) "Б.I" "Б.II" d!8[\p c] } >>
      <bes f'>4 q <d f> q <g, d'>4.( f'8)
      <<  { \voiceFour \shiftOnn \bshs ees8[ d] \bsh c4\< <d f>8[ <f a>]\! } \new Voice { \voiceTwo g4 g8[ a] } >>
      <d, f>4( f) g \cresc << { \voiceFour f4( ees8[ d]) } \new Voice { \voiceTwo f2 } >>
      c4\< ees\f d8[( c] bes4) f' ees8[ d] c4( d) f2 |
      r2.\p r1 r4 r8\f f,->_\markup { \italic Замедляя } bes[-> c] bes4-> f1\fermata->\f | \bar "|."
 }


deva = \lyricmode {
  Де -- ва днесь Пре -- су -- ще -- стве -- нна -- го ра -- жда -- ет,
  и зем -- ля вер -- теп Не -- при -- ступ -- но -- му при -- но -- сит
  А -- нге -- ли 
  "с па" -- стырь -- ми сла -- во -- сло -- вят,
%  вол -- сви же со зве -- здо -- ю пу -- те -- ше -- ству -- ют,
  нас бо ра -- ди ро -- ди -- ся 
  От -- ро -- ча мла -- до, 
  пре -- веч -- ный Бог.
}

devab = \lyricmode {
  Де -- ва днесь Пре -- су -- ще -- стве -- нна -- го ра -- жда -- ет,
  и зем -- ля вер -- теп Не -- при -- ступ -- но -- му при -- но -- сит
 % А -- нге -- ли 
  "с па" -- стырь -- ми сла -- во -- сло -- вят,
 вол -- сви же со зве -- здо -- ю пу -- те -- ше -- ству -- ют,
  нас бо ра -- ди ро -- ди -- ся 
 % От -- ро -- ча мла -- до, 
  пре -- веч -- ный Бог.
}

\bookpart {
    \header {
    title = "Тропарь Рождеству Христову"
    subtitle = "Знаменный распев, глас 4-й"
    composer = "А. Кастальскаго"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \score {
    \new ChoirStaff
    <<
      \new Staff \with {
        instrumentName = \markup { \column { "Дискант I" \line { "Тенор I" } \line { "Альт" } } }
        shortInstrumentName = \markup { \column { "DI" \line { "TI" } \line { "A" } } }
        instrumentName = \markup { \column { "Сопрано" "Альт" } }
        shortInstrumentName = \markup { \column { "С" "А" } }        
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics \lyricsto "soprano" { \tropar }
    
      \new Staff \with {
        instrumentName = \markup { \column { "Дискант II" \line { "Тенор II" } \line { "Бас" } } }
        shortInstrumentName = \markup { \column { "DII" \line { "TII" } \line { "B" } } }
        instrumentName = \markup { \column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \center-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
          \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
          \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "bass" { \tropar }
    >>
    \layout {
      #(layout-set-staff-size 19)
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
      \context {
        \Score
        \override StaffGrouper.staffgroup-staff-spacing.padding = #10
      }
    }
    \midi {
      \tempo 4=90
    }
  }
}

\bookpart {
  \header {
  title = "Дева днесь, глас 3-й"
  subtitle = "Знамен. распева подобен"
  composer = "А. Кастальскаго"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
% #(set-global-staff-size 15)

\paper {
  bottom-margin = 15
}

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = \markup { \column { "Дискант I" \line { "Тенор I" } \line { "Альт" } } }
      shortInstrumentName = \markup { \center-column { "ДI" \line { "TI" } \line { "A" } } }
      instrumentName = \markup { \column { "Сопрано" "Альт" } }
      shortInstrumentName = \markup { \column { "С" "А" } }   
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopdevo }
      \new Voice  = "alto" { \voiceTwo \altdevo }
    >> 
    \new Lyrics \lyricsto "soprano" { \deva }
  
    \new Staff \with {
      instrumentName = \markup { \column { "Дискант II" \line { "Тенор II" } \line { "Бас" } } }
      shortInstrumentName = \markup { \center-column { "ДII" \line { "TII" } \line { "Б" } } }
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \center-column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenordevo }
        \new Voice = "bass" { \voiceTwo \bassdevo }
    >>
    \new Lyrics \lyricsto "bass" { \devab }
  >>
  \layout {
    #(layout-set-staff-size 16)
    \context {
      \Staff
      % удаляем обозначение темпа из общего плана
      \remove "Time_signature_engraver"
      \remove "Bar_number_engraver"
    }
    \context {
      \Score
      \override StaffGrouper.staffgroup-staff-spacing.padding = #10

    }
  }
  \midi {
    \tempo 4=90
  }
}
}
