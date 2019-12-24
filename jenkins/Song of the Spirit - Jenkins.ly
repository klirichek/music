\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17.9)

\header {
  title = "Song of the spirit"
  composer = "Karl Jenkins"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key d \minor
  \time 12/8
  \numericTimeSignature
  \override VerticalAxisGroup.remove-first = ##f
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override MultiMeasureRest.expand-limit = #1
  %\override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
}

abr = { \break }
abr = {}

pbr = {\pageBreak}

pbr={}

% вместо знака альтерации однократно пишем текст сбоку от ноты (голос)
aside =  #(define-music-function 
           (parser location  x-y text)
           (pair? markup?)
           #{
              \once \override Accidental.extra-offset = #x-y
              \once \override Accidental.stencil = #ly:text-interface::print
              \once \override Accidental.text = \markup {\rotate #90 \rounded-box \pad-x #2 #text } 
           #}
           )


sopvoice = \relative c'' {
  \global
  \tempo 4=75
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
     R1.*4
     \mark \default
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4 r8 | 
     
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. |
     \key e \minor g8 fis g g4 r8 g8 fis g g4 r8 |
     g g fis f f e dis dis dis fis e r |
     g fis g g4 r8 g fis g g4 r8 |
     f f e dis dis dis e e e fis e r |
     
     f\< f e\! dis\> dis\! r f\< f e\! dis\> dis\! r |
     e\cresc e r e e  r fis fis r fis fis r 
     
     fis fis r fis fis r fis fis r fis fis r |
     fis fis r fis eis r f f r f e r | 
     
     e e r f e r e e r f e r |
     e4\f e8~ e e4 g f8~ f e4 | \key d \minor 
     
     d2. r2. |
     R1.*3 | 
     
     \mark \default 
     a'16\mf a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
     
     
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | \key e\minor 
     
     g8 fis g g4 r8 g fis g g4 r8 |
     g g f f f e dis dis dis fis e r | 
     
     g fis g g4 r8 g fis g g4 r8 |
     f f e dis dis dis e e e fis e r | 
     
     f\< f e\! dis\> dis r\! f\< f e\! dis\> dis r\! |
     e\cresc e r fis fis r fis fis r fis fis r | 
     
     fis fis r fis eis r f f r f e r |
     \mark \default \key f \minor
     \tempo "più mosso" \time 3/4 f2.~\f |
     << f2. {s16\> s s s s s s s s s\!} >>
     R2.*6 | 
     
     r8 f'\f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f | 
     
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f | 
     
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f | 
     
     r8 f16 f f8 f f f |
     \time 12/8  f1.~ |
     << f1. { s4\> s s s s s\! } >> | 
     
     R1.*2 | 
     
     \mark \default
     \tempo "Tempo primo"
     c8\mp c r bes bes r as g as g g r |
     as as r g g r as g as g4. | 
     
     c8 c r bes bes r as g as g g4 |
     gis8 fis gis a r r b a b c4. | 
     
     g8 g4 as8 as4 bes8 bes4 ces8 ces4 |
     ces8 bes as as ges4 bes8 a g g fis4 | 
     
     g8 g4 aes8 aes4 bes8 bes4 c4. |
     bes8 as ges ges f r f g f f e4 | 
     
     R1.*4 
     
     g8^\markup{\dynamic mf \italic " leggiero" } g4 as8 as4 bes8 bes4 ces8 ces4 |
     ces8 bes as as ges4 bes8 a g g fis4 | 
     
     g8 g4 a8 a4 bes8 bes4 c4. |
     ais8 gis fis eis dis cis gis' fis e dis cis b | 
     
     \key a \minor
     fis'8 f r fis f r fis f r fis f r |
     f e r f e r f e r f e r | 
     
     \mark \default
     
     R1.*10 |
     \key d \minor |
     R1.*4 
     
     a16\mf a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
     
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
     
    \key e\minor g8 fis g g4 r8 g fis g g4 r8 |
    g g fis f f e dis dis dis fis e r | 
    
    g fis g g4 r8 g fis g g4 r8 |
    f f e dis dis dis e e e fis e r | 
    
    f f e dis dis r f f e dis dis r |
    e\cresc e r e e r fis fis r fis fis r | 
    
    fis fis r fis fis r fis fis r fis fis r |
    fis fis r fis eis r f f r f e r | 
    
    e e r f e r e e r f e r |
    e4\f e8~ e e4 g f8~ f e4 | 
    
    \key d\minor d2. r |
    R1.*3 | 
        
    a'16\mf a g g a a a a g g a a a8 bes a g f e |
    a16 a g g a a a a g g a a a8 b a gis4. 
    
    a16 a g g a a a a g g a a a8 bes a g f e |
    a16 a g g a a a a g g a a a8 b a gis4. | 
    
    \key e\minor g?8 fis g g4 r8 g fis g g4 r8 |
    g g fis f f e dis dis dis fis e r | 
    
    g fis g g4 r8 g fis g g4 r8 |
    f f e dis dis dis e e e fis e r | 
    
    f\< f e\! dis\> dis\! r f\< f e\! dis\> dis \! r |
    e\cresc e r fis fis r fis fis r fis fis r | 
    
    fis fis r fis eis r f f r f e r |
    e e r f e r e e r f e r | 
    
    e4\f e8~ e e4 g f8~ f e4 |
    \key d\minor d2. r | 
    
    R1.*4 | \bar "|."    
}

sopvoiceii = \relative c'' {
  \global
  \dynamicUp
%  \override Score.BarNumber.break-visibility = #end-of-line-invisible
%  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
     R1.*4
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4 r8 | 
     
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. |
     
     \key e \minor e8 dis e e4 r8 e dis e dis4 r8 |
     e e dis c c c b b b c c r |
     dis dis dis e4 r8 dis dis dis e4 r8 |
     c c c b b b b b b c c r |
     
     c c cis b b r c c cis b b r |
     c c r c c r e e r e e r |
     d d r d d r c c r c c r |
     cis cis r cis cis r des des r c c r |
     d d r d d r d d r d d r
     d4 d8~ d cis4 e d8~ d c4 | \key d \minor
     
     a2. r |
     R1.*3 |
     
     % B
     a'16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
   
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | \key e\minor 
     
     e8 dis e e4 r8 e dis e dis4 r8 |
     e e dis c c c b b b c c r |
     
     dis dis dis e4 r8 dis dis dis e4 r8 |
     c c c b b b b b b c c r |
     
     c c cis b b r c c cis b b r |
     c c r e e r d d r c c r |
     
     
     
     cis cis r cis cis r des des r c c r |
     \mark \default \key f \minor
     \time 3/4 c2.~ |
     c2. 
     R2.*6 | 
     
     r8 f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     
     r f16 f f8 f f f 
     \time 12/8  f1.~ |
     f1.  | 
     
     R1.*2 | 
     
     \mark \default
     as8 as r g g r f f f f f r |
     f f r f f r d d d es4. |
     
     as8 as r g g r f f f f f4 |
     d8 d d e r r f f f g4. |
     
     f8 e4 g8 f4 as8 g4 bes8 as4 |
     f8 f f es es4 d8 d d d d4 |
     
     f8 e4 g8 f4 as8 g4 as4. |
     ges8 ges ges des des r des des des c c4 |
     
     R1.*4 
     
     f8 e4 g8 f4 as8 g4 bes8 as4 |
     f8 f f es es4 d8 d d d d4 |
     
     f8 e4 g8 f4 as8 g4 as4. |
     fis8 fis fis cis cis cis e e e b b b
     
     \key a \minor
     d8 d r d d r d d r d d r |
     d cis r d cis r d cis r d cis r |
     
     \mark \default
     
     R1.*10 |
     \key d \minor |
     R1.*4 
     
     a'16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
     
     a16 a g g a a a a g g a a a8 bes a g f e |
     a16 a g g a a a a g g a a a8 b a gis4. | 
     
    \key e\minor e8 dis e e4 r8 e dis e dis4 r8 |
    e e dis c c c b b b c c r |
    
    dis dis dis e4 r8 dis dis dis e4 r8 |
    c c c b b b b b b c c r |
    
    c c cis b b r c c cis b b r |
    c? c r c c r e e r e e r |
    
    d d r d d r c c r c c r |
    cis cis r cis cis r des des r c c r  |
    
    d d r d d r d d r d d r |
    d4 d8~ d cis4 e d8~ d cis4 |
    
    \key d\minor a2. r |
    R1.*3 | 
    
    a'16 a g g a a a a g g a a a8 bes a g f e |
    a16 a g g a a a a g g a a a8 b a gis4. 
    
    a16 a g g a a a a g g a a a8 bes a g f e |
    a16 a g g a a a a g g a a a8 b a gis4. | 
    
    \key e\minor e8 dis e e4 r8 e dis e dis4 r8 |
    e e dis c c c b b b c c r |
    
    dis dis dis e4 r8 dis dis dis e4 r8 |
    c c c b b b b b b c c r |
    
    c c cis b b r c c cis b b r |
    c c r e e r d d r c c r |
    
    cis cis r cis cis r des des r c c r |
    d? d r d d r d d r d d r |
    
    d4 d8~ d cis4 e d8~ d cis4    
    \key d\minor d2. r | 
    
    R1.*4
     
}


altvoice = \relative c' {
  \global
     R1.*4
     f16\mf f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8 gis fis e4 r8 |
     
     f16 f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8 gis fis e4. |
     
     \key e\minor  b8 b b c4 r8 b b b a4 r8 |
     b b b a a a fis fis fis g g r | 
     
     a a a b4 r8 c c c b4 r8 |
     a a a fis fis fis g g g g g r |
     
     a\< a g\! fis\> fis\! r a\< a g\! fis\> fis\! r |
     a\cresc a r a a r bes bes r bes bes r |
     
     b b r b b r a a r a a r |
     a a r gis gis r g g r g g r |
     
     gis gis r gis gis r gis gis r gis gis r |
     a4\f a8~ a a4 a a8~ a a4 |
   
     \key d\minor f2. r |
     R1.*3
     
     f'16\mf f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8 gis fis e4. |
     
     f16 f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8 gis fis e4. \key e\minor |
     
     b8 b b c4 r8 b b b a4 r8 |
     b b b a a a fis fis fis g g r |
     
     a a a b4 r8 c c c b4 r8 |
     a a a f f f g g g g g r |
     
     a\< a g\! fis\> fis r\! a\< a g\! fis\> fis r\! |
     a\cresc a r bes bes r b b r a a r |
     
     a a r gis gis r g g r g g r |
     \key f \minor f2.\f~ << f { s4\> s s\! } >> |
     R2.*6 |
     
     r8 f\f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f f f f f |
     
     r f16 f f8 f f f |
     r f f f f f |
     r f16 f f8 f f f |
     r f8 f f f f |
     r f16 f f8 f f f |
     
     \time 12/8 f1.~ |
     << f1. { s4\> s s s s s\! } >>
     
     R1.*2 | 
     
     f'8\mp f r des des r c bes c des des r |
     c c r bes bes r b b b c4. |
     
     f8 f r des des r c bes c des des4 |
     b8 b b c r r d d d e4. |
     
     bes8 bes4 c8 c4 es8 es4 es8 es4 |
     d8 d d bes bes4 bes8 bes bes a a4
     
     bes8 bes4 c8 c4 es8 es4 es4. |
     des8 des des as as r g g g g g4 |
     R1.*4
     
     bes8^\markup{\dynamic mf \italic " leggiero" }  bes4 c8 c4 es8 es4 es8 es4 |
     d8 d d bes bes4 bes8 bes bes a a4 |
     
     bes8 bes4 c8 c4 es8 es4 es4. |
     cis8 cis cis gis gis gis b b b fis fis fis |
     
     \key a\minor gis gis r gis gis r gis gis r gis gis r |
     gis a r gis a r gis a r gis a r |
     
     R1.*10 \key d\minor
     R1.*4
     
     f'16\mf f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8gis fis e4. |
     
     f16 f e e f f f f e e f f f8 g f e d c |
     f16 f e e f f f f e e f f fis8 gis fis e4. 
     
     \key e\minor
     b8 b b c4 r8 b b b a4 r8 |
     b b b a a a fis fis fis g g r |
     
     a a a b4 r8 c c c b4 r8 |
     a8 a a fis fis fis g g g g g r |
     
     a a g fis fis r a a g fis fis r |
     a\cresc a r a a r bes bes r bes bes r |
     
     b b r b b r a a r a a r |
     a a r gis gis r g g r g g r |
     
     gis gis r gis gis r gis gis r gis gis r |
     a4\f a8~ a a4 a a8~ a a4
     
     \key d\minor f2. r R1.*3 |
     
     f'16\mf f e e f f f f e e f f f8 g f e d c |
    f16 f e e f f f f e e f f fis8gis fis e4. |
    
    f16 f e e f f f f e e f f f8 g f e d c |
    f16 f e e f f f f e e f f fis8 gis fis e4.
    
    \key e\minor b8 b b c4 r8 b b b a4 r8 |
    b8 b b a a a fis fis fis g g r |
    
    a a a b4 r8 c c c b4 r8 |
    a a a fis fis fis g g g g g r |
    
    a\< a g\! fis\> fis\! r a\< a g\! fis\> fis\! r |
    a\cresc a r bes bes r b b r a a r |
    
    a a r gis gis r g g r g g r |
    gis gis r gis gis r gis gis r gis gis r |
    
    a4\f a8~ a a4 a a8~ a a4 |
    \key d\minor f2. r |
    R1.*4

}


ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}

lyricscore = \lyricmode {
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ка --  ма -- ша Ка  -- ма -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ка -- ма -- ша  Ва
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ка --  ма -- ша Ка  -- ма -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ка -- ма -- ша   Ва
  
  Ка -- ма -- ша Ва Ка -- ма -- ша Ва
  Ка -- ма -- ша Ма -- на -- ва Ка -- ма -- ша Ма -- на
  
  Ка -- ма -- ша Ва Ка -- ма -- ша Ва
  Ка -- ма -- ша Ма -- на -- ва Ка -- ма -- ша Ма -- на
  
  Ка -- ма -- ша Ма -- на Ка -- ма -- ша Ма -- на
  Ша -- ма Ша -- ма Ка -- ма Ка -- ма
  
  Ша -- ма Ша -- ма Ка -- ма Ша -- ма Ка -- ма Ша -- ма Ка -- ма
  
  Ка -- ма Ка -- ма Ка -- ма Ка -- ма Ка  -- ма 
  Ка -- ма -- ша Ка -- ма -- ша Ва
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ла
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ла

  Ма -- ра -- ша -- ла Ма -- ра -- ша -- ла
  Ма -- ра -- ша Ла -- са -- ва Ма -- ра -- ша Ла -- са
  
  Ма -- ра -- ша -- ла Ма -- ра -- ша -- ла
  Ма -- ра -- ша Ла -- са -- ва Ма -- ра -- ша Ла -- са
  
  Ма -- ра -- ша Ла -- са Ма -- ра -- ша Ла -- са
  Ша -- ла Ма -- ра Ша -- ла Ма -- ра
  
  Ша -- ла Ша -- ла Ша -- ла Ша -- ла А __
  
  ма -- на -- ра -- ма -- на а -- ма На -- ра -- ма -- на
  ма -- на -- ра -- ма -- на а -- ма На -- ра -- ма -- на
  ма -- на -- ра -- ма -- на а -- ма На -- ра -- ма -- на
  ма -- на -- ра -- ма -- на а -- ма На -- ра -- ма -- на
  ма -- на -- ра -- ма -- на а -- ма На -- ра -- ма -- на
  
  ма -- на -- ра -- ма -- на
  а -- ма На -- ра -- ма -- на
  ма -- на -- ра -- ма -- на

  а -- ма На -- ра -- ма -- на -- ва __
  
  Та -- ма Та -- ма Ка -- ли -- ма На -- ма
  Та -- ма Та -- ма Ка -- ли -- ма Е
  
  Та -- ма Та -- ма Ка -- ли ма На -- ма
  Ка -- ли -- ма Е Ка -- ли -- ма Е
  
  Та -- ма Та -- ма Та -- ма  Та -- ма
  Ка -- ли -- ма На -- ма Ка -- ли -- ма Са -- ма
  
  Та -- ма Та -- ма Та -- ма Е
  Ка -- ли -- ма На -- ма Ка -- ли -- ма Са -- ма
  
  Та -- ма Та -- ма Та -- ма Та -- ма
  Ка -- ли -- ма На -- ма Ка -- ли -- ма Са -- ма
  
  Та -- ма Та -- ме Та -- ма Е
  Ка -- ли -- ма Ка -- ли -- ма Ка -- ли -- ма Ка -- ли -- ма
  
  Са -- ма Са -- ма Са -- ма Са -- ма 
  Ма -- на Ма -- на Ма -- на Ма -- на
  
    Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша  Ва
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ва

  Ка -- ма -- ша Ва Ка -- ма -- ша Ва
  Ка -- ма -- ша Ма -- на -- ва Ка -- ма -- ша Ма -- на
  
  Ка -- ма -- ша ва Ка -- ма -- ша  Ва
  Ка -- ма -- ша Ма -- на -- ва Ка -- ма -- ша Ма -- на
  
  Ка -- ма -- ша Ма -- на Ка -- ма -- ша Ма -- на
  Ша -- ма Ша -- ма Ка -- ма Ка -- ма
  
  Ша -- ма Ша -- ма Ка -- ма Ка -- ма 
  Ша -- ма Ка -- ма Ша -- ма Ка -- ма
  
  Ка -- ма Ка -- ма Ка -- ма Ка -- ма
  Ка -- ма -- ша Ка -- ма -- ша Ва
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша  Ла
  
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ма -- ра -- ша
  Та -- фа -- те -- фе -- ти -- фе Та -- фа -- те -- фе -- ти -- фе Ма -- ра -- ша Ла

  Ма -- ра -- ша -- ла Ма -- ра -- ша -- ла
  Ма -- ра -- ша Ла -- са -- ва Ма -- ра -- ша Ла -- са
  
  Ма -- ра -- ша -- ла Ма -- ра -- ша -- ла
  Ма -- ра -- ша Ла -- са -- ва Ма -- ра -- ша Ла -- са
  
  Ма -- ра -- ша Ла -- са Ма -- ра -- ша Ла -- са
  Ша -- ла Ма -- ра Ша -- ла Ма -- ра
  
  Ша -- ла Ша -- ла Ша -- ла Ша -- ла 
  Ша -- ша Ма -- ра Ша -- ла Ма -- ра
  Ма -- ра -- ша Ма -- ра -- ша Ва

}

lyricscorebass = \lyricmode {
 
  
  
}



\book {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 15
  %ragged-bottom = ##t
  %ragged-last =  ##t
  ragged-last-bottom =  ##f
  
}

\score {
  
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано 1" "Сопрано 2"  } }
        shortInstrumentName = \markup { \right-column { "С 1" "С 2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "sopranoii" { \voiceTwo \sopvoiceii }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
  
      \new Staff = "downstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      }  \new Voice  = "alto" { \clef "treble_8" \oneVoice \altvoice }
    
    >>
    %  }  % transposeµ
  \layout {
    \context {
      %\Staff \RemoveEmptyStaves
     % printKeyCancellation = ##f
    }
  %Metronome_mark_engraver
  }
}
}

