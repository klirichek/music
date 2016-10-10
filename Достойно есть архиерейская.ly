\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
abr = {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }

global = {
  \autoBeamOff
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co g4 a b b b b a8[ b] c4 b \abr
  b8[( a] b4) \cb \co c4 b c8[ d] d[ c]  b4 c8[ d] \abr
  d[ c] b[ a] b2 \cb \co c4 b a8[ b] c[ d] \abr
  d[ c] b4 \cb \co g8 a b4 a8[ b] c4 b \abr
  b8[( a] b4) \cb \co c4 b( c8[ d]) d[ c] b4 c8[ d] \abr
  d[ c] b[ a] b2 \cb \co g4 b a8[ b] c4 \abr
  b4 b b8[( a] b4) \cb \co c b( c8[ d]) d c \abr
  b4 g8 a b4 a8[ b] c4 b b \abr
  b8[( a] b4) \cb \co c4 b c8[ d] d[ c] b4 c b8[ a] \abr
  g[ a b] a b2 a g \cb \co b4 b8 b \abr
  b4 a8[ b] c[ d] d[ c] b4 b a8[ b] \abr
  c4 c( b a2) g1\fermata \cof \bar "||"
 
}

altvoice = \relative c'' {
  \global
  \co g4 g g g g g g g g
  g2 \cb \co g4 g g g g a8[ b] 
  b[ a] g[ fis] g2 \cb \co g4 g g g
  g g \cb \co g8 g g4 g g g
  g2 \cb \co g4 g2 g4 g a8[ b]
  b[ a] g[ fis] g2 \cb \co g4 g g g
  g g g2 \cb \co g4 g2 g8 g
  g4 g8 g g4 g g g g
  g2 \cb \co g4 g g g g g g8[ fis]
  g[ fis g] g g2 g4( fis) g2 \cb \co g4 g8 g
  g4 g g g g gis a8[ gis]
  a4 g?2.( fis4) d1\fermata
}

tenorvoice = \relative c' {
  \global
  \co b4 c d d d d c8[ d] e4 d
  d8[( c] d4) \cb \co c f e8[ f] f[ e] d4 d
  d << { d8[ c] } \new Voice { \voiceThree d4} >> <b d>2 \cb \co e4 d c8[ d] e[ f]
  f[ e] d4 b8 c d4 c8[ d] e4 d
  d8[( c] d4) \cb \co c4 f e8[ f] f[ e] d4 d
  d << { d8[ c] } \new Voice { \voiceThree d4} >> <b d>2 \cb \co b4 d c8[ d] e4
  d4 d d8[( c] d4) \cb \co c4 f e8[ f] f e
  d4 b8 c d4 c8[ d] e4 d d
  d8[ c] d4 \cb \co c4 f e8[ f] f[ e] d4 e d8[ c]
  b4. e8 d2 c b \cb \co d4 d8 d
  d4 c8[ d] e[ f] f[ e] d4 e e
  e d2( c) b1\fermata
}

bassvoice = \relative c {
  \global
  \dynamicDown
  \co <g g'>4 q q q q q q c8[ e] g4
  <g, g'>4.( <f f'>8) \cb \co e'4 d c8[ b] b[ c] g4 <g g'>
  d' d <g, g'>2 \cb \co c8[ e] g4 g << { c,8[ b] b[ c]} \new Voice { \voiceFour g'4 g} >>
  g4 \cb \co g8 g g4 g c,8[ e] g4
  g4.( f8) \cb \co e4 d( c8[ b]) b[ c] g'4 g
  d d <g, g'>2 \cb \co g'4 g g c,8[ e]
  g4 g g4.( f8) \cb \co e4 d( c8[ b]) b c
  g'4 g8 g g4 <g, g'> c8[ e] g4 g
  g4.( f8) \cb \co e4 d c8[ b] b[ c] g'4 c, d 
  e4. c8 d2 d <g g,> \cb \co g4 g8 g
  g4 g c,8[ b] b[ c] g'[ f] e[ d] c[ b]
  a[ c] d1 <g g,>\fermata
}

 
texts = \lyricmode { 
  До -- сто -- йно есть я -- ко во -- и -- сти -- ну __ бла -- жи -- ти Тя, Бо -- го -- ро -- ди -- цу,
  при -- сно -- бла -- же -- нну -- ю, и пре -- не -- по -- ро -- чну -- ю, __ и Ма -- терь Бо -- га на -- ше -- го.
  Че -- стне -- йшу -- ю хе -- ру -- вим __ и сла -- вне -- йшу -- ю без сра -- вне -- ни -- я се -- ра -- фим, __
  без и -- стле -- ни -- я Бо -- га Сло -- ва ро -- ждшу -- ю, су -- щу -- ю Бо -- го -- ро -- ди -- цу,
  Тя ве -- ли -- ча -- ем.
}

\bookpart {
  \header {
    title = "Достойно есть…"
    subtitle = "архиерейская"
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
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=60
  }
}
}

