\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 16.6)

co = \cadenzaOn
cof = \cadenzaOff
con = { \cadenzaOff \bar "|" \cadenzaOn }
codd = { \cadenzaOff \bar "||" \cadenzaOn }

\header {
  title = "Блажен муж"
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
  \mark \markup {\box "1" }
  \co a4\mf a8[( b] c4 b g) a2 \con
  a4 a8 a\breve a8 b4 b8 b a4( g) a2 \codd
  
  \mark \markup {\box "2" }
  a8 b c4. a8 b4 a8 b c c b4 b8 b a4 g a2 \codd
  
  \mark \markup {\box "3" }
  R\breve. \con
  a4 a a8 a b4 b8 b a4( g) a2 \codd
  
  \mark \markup {\box "4" }
  a8 g g4. g8 g4 g8 g g8 g g4 g8 g a4 g a2 \codd
  
  \mark \markup {\box "5" }
  a4 g a8 b c4 b8 a g4 e a2 a4 b c c8 c b a b4 a g a2 \codd
  
  \mark \markup {\box "6" }
  a8 b c4. c8 b4 a8 b c c b4 b8 b a4 g a2 \codd
  
  \mark \markup {\box "7" }
  a4 a8[( b] c4 b g) a2 a4 a b b8 b a4 g a2 \codd
  
  \mark \markup {\box "8" }
  a8 g g4. g8 g4 g8 g g g g4 g8 g a4 g a2 \codd
  
  \mark \markup {\box "9" }
  a4 g a8[( b] c4) b g a2. b4 c b a g a2 \codd
  
  \mark \markup {\box "10" }
  <e a>8 <e b'> <a c>4. q8 <g b>4 a8 b <a c>8 q <b g>4 q8 q a4 b a2 \codd
  
  \mark \markup {\box "11" }
  a4 a8[( b]) c4 b a g e a2 \con c4 a b b8 b a b c d b4 b a g a2 \codd
  
  \mark \markup {\box "12" }
  a8 b c4. c8 b4 a8 b c c b4 b8 b a4 g a2 \codd
  
  \mark \markup {\box "13" }
  a2 g4 a8[( b]) c4( b2) a4 g( e) a2 \con a4 a b b a( g) a2 \codd
  
  \mark \markup {\box "14" }
  a8 g g4. g8 g4 g8 g g g g4 g8 g a4 g a2 \codd
  
  \mark \markup {\box "15" }
  a4 a8[( b] c4) b a g( e) a2 c4 a b b8 b a4 g a2 \codd
  
  \mark \markup {\box "16" }
  a8 a a4. a8 g4 a8 b c c b4 b8 b a4 g a2 \codd
  
  \mark \markup {\box "17" }
  \repeat volta 2 { a8 a\breve a8 b b b b a4( g) a1 }
  a8 a\breve a8 a a b c4 c b2 b4 b c b a2( g) a1
  

  \cof \bar "||"
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  a4 a8[( b] c4 b g) a2
  e4 e8 e\breve e8 g4 g8 g e2 e
  
  e8 g g4. g8 g4 g8 g g g g4 g8 g f4 e e2
  R\breve.
  e4 e e8 e e4 e8 e e2 e
    
  %4
  a8 g g4. g8 g4 g8 g g8 g g4 g8 g e4 e e2
  
  %5
  a4 g a8 b c4 b8 a e4 e e2 e4 g g g8 g g g g4 fis e4 e2
  
  %6
  e8 g g4. g8 g4 g8 g g g g4 g8 g fis!4 e fis2
  
  %7
  fis!4 fis e2. e2 e4 e d e8 e d4 e e2
  
  %8
  c8 d e4. e8 d4 c8 d e e d4 d8 d c4 b c2
  
  %9
  e4 e e8[( g]~ g4) g e e2. f?4 a f e e e2
  
  %10
  c8 d e4. e8 e4 e8 e e e e4 e8 e f4 e e2
  
  e4 e a g f d e e2 a4 e g g8 g a g a a g4 g e e e2
  
  e8 g g4. g8 g4 e8 g a a g4 g8 g d4 e e2
  
  a2 g4 a8[( b]) c4( b2) a4 e2 e e4 e e e d( e) e2
  
  %14
  c8 d e4. e8 d4 c8 d e e d4 d8 d c4 b c2
  
  e4 e( a) g f d( e) e2 e4 e d e8 e e4 d e2
  
  %16
  c8 d e4. e8 e4 e8 e f e d4 f8 f d4 d c2
  
  \repeat volta 2 { e8 e\breve e8 g g g g e2 g1 }
  e8 e\breve e8 e e g g4 g g2 g4 g g g e2( d8[ c] b4) c1
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  
  a4 a8[( b] c4 d e) e2
  c4 c8 c\breve c8 d4 d8 d c4( a) c2
  
  c8 d e4. e8 d4 c8 d e e d4 d8 d d4 b c2
  
  a4. a8 g4 a8[( b]) c4( b2) a4 g e a2 c4 c c8 c b4 b8 b c4( b) c2
  
  %4
  c8 d c4. c8 b4 c8 d e e d4 d8 d c4 b c2
  
  %5
  a4 g a8 b c4 b8 a b4 b c2 c4 d e e8 e d c d4 d b c2
  
  %6
  c8 c e4. e8 d4 c8 d e c d4 d8 d d4 b d2
  
  %7
  d4 d( c g b) c2 c4 c d c8 c a4 b c2
  
  %8
  a8 g g4. g8 g4 g8 g g g g4 g8 g e4 e e2
  
  %9
  c'4 c c8[( d] e4) e b c2. d4 e d c b c2
  
  a8 a a4. a8 g4 a8 a a a g4 g8 g a4 b c2
  
  c4 c8[( d]) e4 e c b d c2 e4 c e e8 e e d f f d4 d c b c2
  
  c8 c e4. e8 d4 c8 d f f d4 e8 d a4 b c2
  
  a2 g4 a8[( b]) c4 b2 a4 b4( g) a2
  c4 c b b a( b) c2
  
  a8 g g4. g8 g4 g8 g g g g4 g8 g e4 e e2
  
  c'4 c8[( d] e4) e c b d c2 a4 c b g8 g a4 b c2
  
  a8 a a4. a8 b4 c8 b a a b4 a8 a b4 b a2
  
  \repeat volta 2 { c8 c\breve c8 d d d d c4( b) c1 }
  c8 c\breve c8 c c d e4 c d2 d4 d c d c2( b8[ a] g4) a1
  

}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  
  a4 a8[( b] c4 e g) a2
  a4 a8 a\breve a8 g4 g8 g a4( e) a2
  
  a8 g c,4. e8 g4 g8 g c, c g'4 g8 g d4 e a2
  
  % 3
  a4. a8 g4 a8[( b]) c4( b2) a4 g e a2 a4 a a8 a g4 g8 g a4( e) a2
  
  %4 
  a8 b c4. c8 b4 a8 b c c b4 b8 b a4 e a2
  
  %5
  a4 g a8 b c4 b8 a e4 g a2 a4 g c, c8 e g g g4 d e a2
  
  %6
  a8 g c,4. e8 g4 g8 g c, e g4 g8 g d4 e d2
  
  %7
  d4 d( g, e'2) a a4 a g g8 g fis4 e a2
  
  %8
  a,8 b c4. c8 b4 a8 b c c b4 b8 b a4 e' a,2
  
  %9
  a'4 c a8[( g] c,4) e e a2. a4 a d, e e a,2
  
  a8 a8 a4. c8 e4 c8 b a a e'4 e8 e d4 e a,2
  
  a'4 a a e f g b a2
  a,4 c e e8 e a g f d g4 g e e a,2
  
  a'8 g c,4. e8 g4 a8 g f d g4 e8 g f4 e a,2
  
  %13
  <a a'>2 q4 q8[( <b b'>]) <c c'>4( <b b'>2) <a a'>4 e'2 a, 
  <a a'>4 q <g g'> q <fis fis'>( <e e'>) <a a'>2
  
  a8 b c4. c8 b4 a8 b c c b4 b8 b a4 e' a,2
  
  a4 a2 e'4 f? g b a2 a4 a g e8 e c4 b a2
  
  a8 b c4. c8 e4 a8 g f f g4 d8 d f4 e <e a,>2
  
  \repeat volta 2 { <a, e' a>8 q\breve q8 <g d' g>8 q q q <a e' a>4( e') <a, e' a>1 }
  
  <a e' a>8 q\breve q8 q q <g d' g> c4 e g2 g4 g e g a2( e) <e a,>1


}

lyricscore = \lyricmode {
%  \override LyricText.self-alignment-X = #LEFT
  Бла -- жен муж, и -- же не_иде_на со -- вет не -- че -- сти -- вых
  
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- \set associatedVoice = "tenor" я.
  
  Я -- ко весть Го -- сподь путь пра -- ве -- \set associatedVoice = "soprano" дных, 
  а путь не -- че -- сти -- вых по -- ги -- бнет.
  
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  Ра -- бо -- та -- йте Го -- спо -- де -- ви со стра -- хом и ра -- ду -- йте -- ся Е -- му с_тре -- пе -- том.
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  Бла -- же -- нни вси на -- де -- ю -- щи -- и -- ся нань.
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  
  Во -- скре -- сни, Го -- спо -- ди, спа -- си мя Бо -- же мой!
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  Го -- спо -- дне есть спа -- се -- ни -- е и на лю -- дех Тво -- их бла -- го -- сло -- ве -- ни -- е Тво -- е.
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  Сла -- ва О -- тцу и Сы -- ну и Свя -- то -- му Ду -- ху
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  И ны -- не, и при -- сно, и во ве -- ки ве -- ков. А -- минь.
  А -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
  
  \repeat volta 2 { А -- ллилуия,_аллилуия,_аллилуи -- я, сла -- ва Те -- бе Бо -- же. }
  
  А -- ллилуия,_аллилу -- и -- я, а -- лли -- лу -- и -- я, сла -- ва Те -- бе, Бо -- же.
}

  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 0
  ragged-last =  ##f
  ragged-last-bottom = ##f
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
      \Score
    }
    \context {
      \Staff
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}

  
}



