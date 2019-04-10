\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 19)

abr = { \break }
abr = {}

pbr = { \pageBreak }
pbr= {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
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
  \co 
  b4( c) b2 a g g4 a b2.( c4) \cbr d c b2 a4 g a2 g \cbar a4( b) c2. c4  \cbr d c b2  \cbr g4 a b( c b g)  \cbr a2 a g1 \cb
  \co g4 a b( c) b a g2.  \cbr a4 b2 g  \cbr g a b4. b8 b4  \cbr c b2 a g \cbar
  g g4  \cbr g a( b8[ a])  \cbr g4  \cbr fis g2( a)  \cbr b4 a g  \cbr a b2( a) g1 \cb
  \co g\breve \cb
  \co b4( c) b2  \cbr a g  \cbr g a4  \cbr b8[( c]) d2.  \cbr c4 b2( a) g2.  \cbr g4  \cbr a2 a4( b) c2 c  \cbr b4 c  \cbr d c b2  \cbr b8[( a b c]) d4 c b2  \cbr a8[( b]) c4 b  \cbr g a2 a4  \cbr b c c b2( a) g1\fermata \cb
}

altvoice = \relative c'' {
  \global
 g2 g e4( fis) d2 e4 fis g1 g4 g g2 g4 g fis2 d g g2. g4 g g g2 g4 g g1 g2 fis d1
 g4 g g2 g4 fis e2. fis4 g2 d e fis g4. g8 g4 g g2 fis d e e4 e e2 e4 e e2( fis) g4 g g g g2( fis) d1
 d\breve
 g2 g fis d d g4 g g2. g4 g2( fis) d2. d4 fis2 fis4( g) g2 g g4 g g g g2 g a4 a g2 g4 g g g fis2 fis4 g g a g2( fis) d1
}

tenorvoice = \relative c' {
  \global
  d4( e) d2 c b b4 d d2.( e4) f e d2 c4 b d( c) b2 c4( d) e2. e4 f! e d2 b4 c d( e d b) e2 d4( c) b1
  b4 c d( e) d d b2. d4 d2 d b d d4. d8 d4 e d2 d4( c) b2 d d4 d c( d8[ c]) b4 a b2( d) d4 c b c d2( c) b1
  b\breve
  d4( e) d2 c b b c4 d8[( e]) f!2. e4 d2 (c ) b2. d4 d2 d e e d4 e f! e d2 d8[( c d e]) d4 d d2 c8[( d]) e4 d d d2 d4 d e e d2( c) b1
}

bassvoice = \relative c' {
  \global
  g2 g g g e4 d g1 g4 g g2 g4 g d2 g g c,2. c4 b c g'2 g4 g g1 c,2 d g,1
  g'4 g g2 g4 d e2. d4 g,2 b e d g4. g8 g4 c, d2 d g e e4 e a,2 a4 c e2( d) g4 g g g g2( d) g,1
  g'\breve
  g2 g d g g g4 g8[( c,]) b2. c4 d1 g,2. b4 d2 d4( g,) c2 c g'4 c, b c g2 g4( g') fis fis g2 g4 c, g b d2 d4 g c, c d1 g,\fermata
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {

 От ю -- но -- сти мо -- е -- я мно -- зи бо -- рют мя стра -- сти, но Сам мя за -- сту -- пи и спа -- си, Спа -- се мой.
 Не -- на -- ви -- дя -- щи -- и Си -- о -- на, по -- сра -- ми -- те -- ся от Го -- спо -- да,
 я -- ко тра -- ва бо о -- гнем бу -- де -- те из -- со -- хше.
   \override LyricText.self-alignment-X = #LEFT 
   Слава_Отцу_и_Сыну_и_Святому_Духу_и_ныне_и_присно_и_во_веки_веков._Аминь.
     \override LyricText.self-alignment-X = #CENTER
 Свя -- тым Ду́ -- хом вся -- ка ду -- ша жи -- ви́ -- тся, и чи -- сто -- то -- ю во -- звы -- ша -- е -- тся,
 све -- тле́ -- е -- тся Тро -- йче -- ским е -- ди -- нством свя -- ще -- нно -- та -- йне.
}


\bookpart {
  \header {
    title = "От юности моея"
    %subtitle = "(мажор-минор)"
    composer = "иер. Ионафан Елецких"
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
    bottom-margin = 15
    indent = 0
    %ragged-bottom = ##f
    ragged-last-bottom = ##f
    %ragged-last = ##f
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

