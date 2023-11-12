\version "2.22.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Достойно есть"
  composer = "Д. Бортнянский"
  arranger = "перел. С. Дружининой"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
                                                   grob-interpret-markup grob (                         
                                                                                let (( dyntxt (ly:grob-property grob 'text ) )  )
                                                                                ( set! dyntxt (cond
                                                                                               (( equal? dyntxt "ff" ) "оч. гр." ) 
                                                                                               (( equal? dyntxt "f" ) "гр." )
                                                                                               (( equal? dyntxt "mf" ) "ум." )
                                                                                               (( equal? dyntxt "mp" ) "ум." )
                                                                                               (( equal? dyntxt "p" ) "т." )
                                                                                               )) #{ \markup \normal-text \italic $dyntxt #} )
                                                   )) }


melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.markFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key d \minor
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \tempo "Величественно"
  \partial 4 <f a>\p \< |
  <f a>2.\> <e g>4 |
  <e g>2\! r |
  <d f>2 <d f>4 <e g> |
  <f a>4. <f a>8 <f a>4 <f a> |
  <e g>2. <f a>4 |
  <d bes'>2 <g bes>4 <g bes> |
  <g bes>2. <f a>4~ |
  <f a>4. <e g>8 <e g>4 r | \abr
  
  <d f>2\pp <d f>4 <d f> |
  <d f>4. <cis e>8 <cis e>4 r |
  <d f> <d f> <e g> <e g> |
  <f a>4. <f a>8 <f a>4 <g c> |
  <g b d>2. <g c e>4 |
  <g d' f>2. <g c e>4 |
  <g c e>2( <g d'>4.) <g c>8 |
  <g c>2 r4 g^"S2" | \abr
  
  R1 |
  r2 r4 \breathe a^"S1" |
  <a c>2 <g bes>4 <f a> |
  <f a> <f a>( <g bes>) <a c> |
  <bes d>( <a c>) <g bes> <f a> |
  <e g> <e g> <e g>\fermata r |
  f2\p f |
  <d f>4. <cis e>8 <cis e>4 r | \abr
  
  <d f>4 <d f> <e g> <e g> |
  <f a>4. <f a>8 <f a>4 r |
  <f bes>4\f <f bes>8 <f bes> <f bes>4 <f bes> |
  <f bes>4. <f a>8 <f a>4 r |
  <f g>2\p <f g>4 <f g> |
  <e g>2 <f a>4 <g bes> |
  <a c> <f a> <bes d> <a c> | \abr
  
  <g bes> <f a> <e g> <f a> |
  <e bes'>2 <f a>4 <d g> |
  << {f1 |
  e4 f g2~ |
  g f4 e |
  f1\fermata} \\ \new Voice { \voiceFour c1~ c~ c ~ c} >> \bar "||"
}


altvoice = \relative c' {
  \global
  \dynamicDown
  \autoBeamOff
  \partial 4 f4   |
  f2. <c e>4 |
  <c e>2 r |
  a2 a4 c |
  c4. c8 c4 c |
  c4( bes2) a4 |
  g2 g'4 f |
  e2. f4( |
  c4.) c8 c4 r |
  
  d2 d4 d |
  a4. a8 a4 r4 |
  a4 a c c |
  c4. c8 c4 e |
  <d g>2. <c g'>4 |
  <b g'>2. <c g'>4 |
  <c g'>2( <b f'>4.) <c e>8 |
  <c e>2 r4 e |
  
  <g bes>2 <f a>4 <c g'> |
  <a f'> <c g'> <f a> f |
  f2 e4 f4 |
  f f2 f4 |
  f2 e4 f |
  c4 c c\fermata r |
  d2\p d |
  a4. a8 a4 r |
  a4 a c c |
  c4. c8 c4 r |
  d4\f d8 d d4 d |
  d4. c8 c4 r |
  b2 b4 b |
  c1~ |
  c~ |
  c~ |
  c2. bes4 |
   a2 \parenthesize g4 \parenthesize f  |
                  g4 a bes2~ |
                  bes a4 g |
                  a1
  
}


lyricscore = \lyricmode {
  До -- сто -- йно есть, я -- ко во -- ис -- тин -- ну бла -- жи -- ти Тя, Бо -- го --
  ро -- _  ди -- цу, При -- сно -- бла -- жен -- ну -- ю, и Пре -- не -- по -- роч -- ну -- ю и
  Ма -- терь Бо -- га на -- ше -- го. Чест -- ней -- шу -- ю Хе -- ру -- вим и Слав -- ней -- шу --
  ю без срав -- не -- ни -- я Се -- ра -- фим, без ис -- тле -- ни -- я Бо -- га Сло -- ва
  рожд -- шу -- ю, су -- щу -- ю Бо -- го -- ро -- ди -- цу Тя ве -- ли -- ча -- _ _ _ _ _ _ _ _ _ ем
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    ragged-bottom = ##t
    %  system-separator-markup = \slashSeparator
    
  }
  \score {
    %  \transpose c bes {
    %  \removeWithTag #'BR
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
        %        \RemoveEmptyStaves
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      

    >>
    %  }  % transposeµ
    \layout {
      %    #(layout-set-staff-size 20)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        %        \RemoveAllEmptyStaves
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
