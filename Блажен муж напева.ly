\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }

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

\header {
  title = "Блажен муж"
  subtitle = "... напева"
  %composer = "С. Мокраняц"
  % Удалить строку версии LilyPond  
  tagline = ##f
}

global = {
  \key c \major
  \time 1/1
  \once \omit Staff.TimeSignature
  \numericTimeSignature
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  
  \mark "1."
  \co gis4 a8 a a\breve a8 b c2( b8[ c b a]) gis2 \cb \break
  
  \time 3/4\set Timing.measurePosition = #(ly:make-moment -1/4) gis!8^\markup\bold"Припев:" a |
  b2 a8[( gis]) |
  a2 b8 c |
  d2 c8[( b]) |
  c2. |
  e2( d8[ c] |
  b2) d4 |
  c2( b8[ c] |
  a2.) |
  gis |
  a  \bar "||" \time 1/1 \once \omit Staff.TimeSignature \break
  
  \mark  "2." 
  \co gis!4 gis a8 a a\breve a8 b c2( b8[ c b a])  gis!2 \cb
  
  \mark  "3." 
  \co gis!8 a4 a8 a\breve a8 b c2( b8[ c b]) a gis!2 \cb
  
  \mark  "4." 
  \co gis!8 a a a b c2 b8 c b a gis!2 \cb
  
  \mark  "5." 
  \co gis!4 gis a8 a a a a a b c2( b8[ c]) b[( a]) gis2 \cb
  
  \mark  "6."
  \co gis!4 a8 a\breve a8 b c2( b8) c b a gis!2 \cb \break
  
    \time 3/4\set Timing.measurePosition = #(ly:make-moment -1/4) gis!8^\markup\bold"Припев:" a |
  b2 a8[( gis]) |
  a2 b8 c |
  d2 c8[( b]) |
  c2. |
  e2( d8[ c] |
  b2) d4 |
  c2( b8[ c] |
  a2.) |
  gis |
  a  \bar "||" \time 1/1 \once \omit Staff.TimeSignature \break
  
  \co gis!4 gis gis a8 a a a a a a b c2( b8[ c b a]) gis!2 \cb
  
  \co gis!4 a8 a\breve a8 b c2( b8[ c] b) a gis!2 \cof
  
  \repeat volta 2 {
    \co gis!8 gis\breve gis8 a2 gis2 \cof
  }
  
  \co gis!8 gis\breve gis8 a2 a4 b2 d4 c2( b8[ c] a1 gis) a
  
  \cof \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  e4 e8 e e\breve e8 e a2( f4. fis8) e2

  e8 e e2 e4 e2 a8 a b2 g4 g2. g~ g2 e4 e2( d8[ e] e2.) e e
  

  d4 e e8 e e\breve e8 e a2( e4 f)
  
     \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
    \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  e8 e4 e8 e\breve e8 gis gis2( f4.) f8      
  %\newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
    %\newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  e8 e e e e a2 e8 e e e      \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
    \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  e4 e e8 e e e e e gis gis2( f4) f      \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
    \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  e4 e8 e\breve e8 e a2( e8) e e e  e2
  
  e8 e e2 e4 e2 a8 a b2 g4 g2. g~ g2 e4 e2( d8[ e] e2.) e e
  
  e4 e e e8 e e e e e e e a2( e)     
  %\newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
   % \newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  e4 e8 e\breve e8 e a2( e4.) e8      
  %\newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 
  \aside #'( 3 . -10 ) "Аллилуия" e!2 
    %\newSpacingSection \revert Score.SpacingSpanner.spacing-increment
  
  \repeat volta 2 { e8 e\breve e8 e2 e }
  
  e8 e\breve e8 e2 e4 \nat g2 g4 g2( f4 e1~ e) e
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  b4 c8 c c\breve c8 c e2( d8[ e d c]) b2
  
  b8 c d2 c8[( b]) c2 d8 e f2 e8[( d]) e2. g2( f8[ e] d2) b4 a2~( a4 c2.) b c  \time 1/1 \once \omit Staff.TimeSignature
  
  b4 b c8 c c\breve c8 c e2( d8[ e d c]) b2
  
  b8 c4 c8 c\breve c8 d e2( d8[ e] d) c b2
  
  b8 c c c c e2 d8 e d c b2
  
  b4 b c8 c c c c c d e2( d8[ e]) d[( c]) b2
  
  b4 c8 c\breve c8 d e2( d8) e d c b2
  
  b8 c d2 c8[( b]) c2 d8 e f2 e8[( d]) e2. g2( f8[ e] d2) b4 a2~( a4 c2.) b c  \time 1/1 \once \omit Staff.TimeSignature
  
  b4 b b c8 c c c c c c d e2( d8[ e d c]) b2
  
  b4 c8 c\breve c8 c e2( d8[ e] d) c b2
  
  \repeat volta 2 { b8 b\breve b8 c2 b }
  
  b8 b\breve b8 c2 c4 d2 f4 e2( d8[ e] c1 b) c
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  
  e4 a8 a a\breve a8 a a2( d,4. dis8) e2
  e8 e e2 e4 a,2 a'8 a g2 g4 c,2. c'2( b8[ c] g2) gis4 a2( d,4 e2.) e a,
  
  e'4 e a8 a a\breve a8 a a2( c,4 d) e2
  
  e8 a4 a8 a\breve a8 g c,2( d4.) d8 e2
  
  e8 a a a a a2 a8 a gis a e2 
  
  e4 e a8 a a a a a \nat g c,2( d4) d e2 
 
 e4 a8 a\breve a8 a a2~ a8 a gis a e2
 
 e8 e e2 e4 a,2 a'8 a g2 g4 c,2. c'2( b8[ c] g2) gis4 a2( d,4 e2.) e a,
 
 e'4 e e a8 a a a a a a a a2.( gis!8[ a]) e2
 
 e4 a8 a\breve a8 a a2~( a4 gis!8) a e2
 
 \repeat volta 2 { e8 e\breve e8 a,2 e' }
 
 e8 e\breve e8 a2 a4 \nat g2 g4 c,2( d4 e1~ e) a,
}


ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
}


lyricscore = \lyricmode {
%  \override LyricText.self-alignment-X = #LEFT
  Бла -- жен муж, иже_не_иде_на_совет не -- че -- сти -- вых.

\ijLyrics
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и --  я.
\normalLyrics  
  
  Я -- ко весть Го -- сподь_путь_праведных,_а_путь_нечести -- вых по -- ги -- бнет.
  
 
  Ра -- бо -- та -- йте_Господеви_со_страхом_и_радуйтеся Е -- му с_тре -- пе -- том.
  
  Бла -- же -- нни вси на -- де -- ю -- щи -- и -- ся нань.
  
  
  Во -- скре -- сни, Го -- спо -- ди, спа -- си мя Бо -- же мой!
  
  Го -- спо -- дне_есть_спасение_и_на_людех_Твоих_бла -- го -- сло -- ве -- ни -- е Тво -- е.
  
  \ijLyrics
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и --  я.
\normalLyrics  
  
  Сла -- ва О -- тцу и Сы -- ну и Свя -- то -- му Ду -- ху
  
  И ны -- не,_и_присно,_и_во_ве -- ки ве -- ков. А -- минь.
  
  \repeat volta 2 { А -- ллилуия,_аллилуия,_аллилуия,_слава_Те -- бе Бо -- же. }
  
  А -- ллилуия,_аллилуия,_аллилуи -- я, сла -- ва Те -- бе, Бо -- же.
}

  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-last =  ##f
  ragged-last-bottom = ##f
  system-separator-markup = \slashSeparator
}


\bookpart {
 
\score {

  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      \new Lyrics = "sopranos"
  
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score \remove "Bar_number_engraver"
    }
    \context {
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}

  
}



 