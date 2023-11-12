\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 19)

abr = { \break }
%abr = {}

pbr = { \pageBreak }
%pbr= {}
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbrf = { \breathe \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

global = {
  \once \hide Staff.TimeSignature
  \autoBeamOff
  \key g \major
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co g4 g a b g a \cbr b c2 b \cbr
  g4 g g a b2 a4 g  \cbr a2 g \cbrf
  fis4 g a fis g \cbr
  
  a4 b2 b \cbr c4 e2 d4 c  \cbr c b2  \cbr a4 g a2. a4 g2. \cbrf
  fis4 a2 g4 g fis \cbr
  
  fis4 fis g8[( a]) b4 a  \cbr g fis g \cbr g a( b) \cbr
  c2. a4  \cbr g2 fis g2. \cbrf
  fis4 a2 g4 \cbr
  
  fis  \cbr fis fis fis fis fis \cbr
  g2 a b b  \cbr c c4 c b2 \cbr
  g4( a) b2 \cbr
  
  b4 b2  \cbr a4 g a2 a4 g1 \cbrf
  g4 g a  \cbr b c2 b \cbr
   g4 a b2  \cbr g4 g g a \cbr
  
  b2 a4  \cbr g a2. a4 g1 \cbrf \pbr
  e'2 d4  \cbr c c-> c c b2 b4 b \cbr
   \cbr g4 g a b2 b4 b \cbr
  
   \cbr b4 a g a2 a4  \cbr b a g1 \cbrf
  c4 c  \cbr c c c  \cbr  c c c \cbr
  b2 g4 a fis g2 \cbrf
  
  %page 2
  g4 b2 g g4 g a b( g) a b c2 c \cbr
  c4 d e2 c4 d e2 d4 c1 \cbr
  
  c2 c4 c   \cbr c c c   \cbr c b2 \cbr
    \cbr a4 g   \cbr a2 b4 a g2 \breathe \cbar
    fis4 a2 a4 a   \cbr a a a( fis) g a\cbr
  
  b2 b4 a g2 \cbar 
  b4 b e( d) c b c2 \cbr
  a4( b c) d e2( dis) e1
  
 \cof \bar "|."
 
}
 
altvoice = \relative c' {
  \global
  e4 e fis g e fis g a2 g e4 e e fis g2 fis4 e  fis2 e dis4 e fis dis e
  fis g2 g a4 c2 b4 a a g2 fis4 e fis2. fis4 e2. dis!4 fis2 e4 e \nat d 
  d d e8[( fis]) g4 fis e d e e fis ( g) a2. fis4 e2 dis!2 e2. dis!4 fis2 e4
  dis!4 dis dis dis dis dis e2 fis g g a a4 a g2 e4( fis) g2
  g4 g2 fis4 e fis2 fis4 e1 e4 e fis g a2 g e4 fis g2 e4 e e fis
  g2 fis4 e fis2. fis4 e1 c'2 b4 a a a a g2 g4 g e e fis g2 g4 g
  g fis e fis2 fis4 g fis e1 a4 a a a a a a a g2 e4 fis dis! e2
  
  %page 2
  e4 g2 e e4 e fis g( e) fis g a2 a a4 b c2 a4 b c2 b4 a1
  a2 a4 a a a a a g2 fis4 e fis2 g4 fis e2 dis!4 fis2 fis4 fis fis fis fis( dis) e fis
  g2 g4 fis e2 e4 e g2 e4 e e2 a2. a4 g2( fis) g1
  
}

tenorvoice = \relative c' {
  \global \co
  b4 b b e e e e e2 e b4 b b b e2 b4 b b2 b \breathe b4 b b b b
  b e2 e e4 e2 e4 e e e2 b4 b b2. b4 b2. \breathe b4 b2 b4 b b
  b4 b b b b b b b b e2 e2. c4 b2 b b2. \breathe b4 b2 b4
  b4 b b b b b b2 b e e e e4 e e2 b e
  e4 e2 b4 b b2 b4 b1 \breathe b4 b e e e2 e b4 b e2 b4 b b b
  e2 b4 b b2. b4 b1 \breathe e2 e4 e e-> e e e2 e4 e b b b e2 e4 e
  e b b b2 b4 b b b1 \breathe  e4 e e e e e e e e2 b4 b b b2 \breathe
  
  %page 2
  b4 e2 b b4 b b e2 e4 e e2 e e4 e e2 e4 e e2 e4 e1
  e2 e4 e e e e e e2 b4 b b2 b4 b b2 \breathe b4 b2 b4 b b b b2 b4 b
  e2 e4 dis! b2 \cbar g4 g b2 a4 b a2 c4( \nat d e) fis e2( b) b1 \cof
 
}

bassvoice = \relative c {
  \global
  e4 e e e e e e a2 e e4 e e e e2 dis4 e b2 e b4 b b b e
  e4 e2 e a4 a2 a4 <a a,> <a c,> e2 dis!4 e b2. b4 e2. b4 b2 b4 b b
  b4 b b b b b b e e e2 a2. a4 b2 b, e2. b4 b2 b4
  b4 b b b b b e2 e e e a <a a,>4 <a c,> e2 e e
  e4 e2 dis!4 e b2 b4 e1 e4 e e e a,( c) e2 e4 e e2 e4 e e e
  e2 dis!4 e b2. b4 e1 a2 e4 a, a a c e2 e4 e e e e e2 e4 e
  e4 dis! e b2 b4 b b e1 a4 a a a a a a a e2 e4 b b e2
  
  %page 2
  e4 e2 e e4 e e e2 c4 b a2 a c4 e a( e) e e a2 e4 a,1
  a'2 a4 a a a a a e2 dis!4 e b2 b4 b e2 b4 b2 b4 b b b b2 b4 b
  e2 e4 b e2 e4 e e2 fis4 g a2 a2. a4 b2( b,) e1 
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  %\override LyricText.self-alignment-X = #LEFT
 Бо -- го -- лю -- би -- ва -- я Ца -- ри -- це, Не -- ис -- ку -- со -- муж -- ня -- я Де -- во, Бо -- го -- ро -- ди -- це
 Ма -- ри -- е, мо -- ли за ны Те -- бе воз -- лю -- бив -- ша -- го, и рожд -- ша -- го -- ся
 из Те -- бе Сы -- на Тво -- е -- го Хри -- ста Бо -- га на -- ше -- го по -- да -- ти
 нам ос -- тав -- ле -- ни -- е пре -- гре -- ше -- ний, ми -- ро -- ви мир, зем -- ли
 пло -- дов и -- зо -- би -- ли -- е, па -- сты -- рем свя -- ты -- ню, и все -- му че -- ло -- ве -- чу
 ро -- ду спа -- се -- ни -- е. Гра -- ды и стра -- ны Рос -- сий -- ски -- я от на -- хож -- де -- ни -- я
 и -- но -- пле -- мен -- ных за -- сту -- пи, и от меж -- до -- у -- соб -- ны -- я бра -- ни со -- хра -- ни.
 
 %page 2
 О, ма -- ти Бо -- го -- лю -- би -- ва -- я Де -- во! О, Ца -- ри -- це все -- пе -- та -- я!
 Ри -- зо -- ю сво -- е -- ю по -- крый нас от вся -- ка -- го зла, от ви -- ди -- мых и не -- ви -- ди -- мых
 враг за -- щи -- ти и спа -- си, и спа -- си ду -- ши на -- ша.
 
}


\bookpart {
  \header {
    title = "Тропарь Боголюбской иконе Божией"
    subtitle = " "
    composer = "А. Архангельский"
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
    bottom-margin = 35
    indent = 0
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    ragged-last = ##t
  }

\score {
  \new ChoirStaff
  <<
    \new Staff = "sa" \with {
      instrumentName = \markup { \column { "С" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
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

