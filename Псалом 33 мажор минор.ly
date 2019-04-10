\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 18)

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
  \key c \major
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co <g c>4 q\breve q4 q1 <g b> \cbar \abr
  q4 q\breve q4 <g c>2. q4 q1 \cbar \abr
  <a c>4 q\breve q4 q2 q <gis b>1 \cbar \abr
  <gis! b>4 <gis b>\breve q4 a1 a \cbar \abr
  g?4 g\breve g4 g1 g \cbar \abr
  g4 g\breve g4 g1 g \cbar \pbr
  
  a4 a\breve a4 a2 a gis1 \cbar \abr
  gis!4 gis\breve gis4 a2. a4 a1 \cbar \abr
  <g? c>4 <g c>\breve q4 q2 q <g b>1 \cbar \abr
  q4 q\breve q4 <g c>1 q \cbar \abr
  <a c>4 q\breve q4 q2 q <gis b>1 \cbar \abr
  <gis! b>4 <gis b>\breve q4 a1 a \cbar \pbr
  
  g?4 g\breve g4 g2. g4 g g g1 \cbr \abr
  g4 g g2. g4 g1 \cbar \abr
  a4 a\breve a4 a2 a gis1 \cbar \abr
  gis!4 gis\breve gis4 a2. a4 a1 \cbar \abr
  <g? c>4 <g c>\breve q4 q2 q4 q <g b>1 \cbar \abr
  q4 q\breve q4 <g c>2. q4 q q q1 \cbar \pbr
  
  <a c>4 q\breve q4 q1 <gis b> \cbar \abr
  <gis! b>4 <gis b>\breve q4 a1 a <a d> a2 <a b> <a c>1( <gis b>) <e a>1
  \cof \bar "|."
 
}

altvoice = \relative c' {
  \global
  e4 e\breve e4 e1 d 
  d4 d\breve d4 e2. e4 e1
  e4 e\breve e4 e2 e e1
  e4 e\breve e4 e1 e
  e4 e\breve e4 e1 d
  f4 f\breve f4 e1 e
  e4 e\breve e4 e2 e e1
  e4 e\breve e4 e2. e4 e1
  e4 e\breve f4 e2 e d1
  d4 d\breve d4 e1 e
  e4 e\breve e4 e2 e e1
  e4 e\breve e4 e1 e
  e4 e\breve e4 e2. e4 e e d1 f4 f e2. e4 e1
  e4 e\breve e4 e2 e e1
  e4 e\breve e4 e2. e4 e1
  e4 e\breve e4 e2 e4 e d1
  f4 f\breve f4 e2. e4 e e e1
  e4 e\breve e4 e1 e
  e4 e\breve e4 e1 e f f2 f e1( d)
  c
  
  
}

tenorvoice = \relative c' {
  \global
  <g c>4 q\breve c4 c1 b
  d4 d\breve d4 c2. c4 c1
  c4 c\breve c4 c2 c b1
  d4 d\breve d4 c1 c
  c4 c\breve c4 c1 b
  d4 d\breve d4 c1 c
  c4 c\breve c4 c2 c b1
  d4 d\breve d4 c2. c4 c1
  c4 c\breve c4 c2 c b1
  d4 d\breve d4 c1 c
  c4 c\breve c4 c2 c b1
  d4 d\breve d4 c1 c
  c4 c\breve c4 c2. c4 c c b1
  d4 d
  c2. c4 c1
  c4 c\breve c4 c2 c b1
  b4 b\breve b4 c2. c4 c1
  c4 c\breve c4 c2 c4 c b1
  d4 d\breve d4 c2. c4 c c c1
  a4 a\breve a4 a1 b
  d4 d\breve d4 c1 c d d2 d e1( d)
  c
}

bassvoice = \relative c {
  \global
  c4 c\breve <c g'>4 q1 <g g'>
  q4 q\breve q4 <c g'>2. q4 q1
  <a a'>4 q\breve q4 q2 <c a'> e1
  e4 e\breve e4 <a, e'>1 q
  c4 c\breve c4 c1 g'
  <g b>4 q\breve q4 <c, g'>1 q
  <a a'>4 q\breve q4 q2 <c a'> e1
  e4 e\breve e4 <a, a'>2. q4 q1
  <c g'>4 q\breve q4 q2 q <g g'>1
  q4 q\breve q4 <c g'>1 q
  <a a'>4 q\breve q4 q2 <c a'> e1
  e4 e\breve e4 <a, e'>1 q
  c4 c\breve c4 c2. c4 c c g'1
  g4 g
  c,2. c4 c1
  <a e'>4 q\breve q4 q2 <c e> e1
  e4 e\breve e4 <a, a'>2. q4 q1
  <c g'>4 q\breve q4 q2 q4 q <g g'>1
  q4 q\breve q4 <c g'>2. q4 q q q1
  <a e'>4 q\breve q4 q1 e' 
  e4 e\breve e4 a1 a d, f2 d e1( <e, e'>)
  <a e'>
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
 Бла -- гословлю_Господа_на_всяко -- е вре -- мя,
 вы -- ну_хвала_Его_во у -- стех мо -- их,
 О Господе_похвалится ду -- ша мо -- я,
 да услышат_кротции_и_возве -- се -- ля -- тся.
 Во -- звеличите_Господа со мно -- ю,
 и вознесем_Имя_Е -- го в_ку -- пе.
 
 Взы -- сках_Господа_и у -- слы -- ша мя,
 и от_всех_скорбей_моих и -- зба -- ви мя,
 при -- ступите_к_Нему_и_про -- све -- ти -- те -- ся
 и лица_ваша_не_по -- сты -- дя -- тся,
 сей нищий_воззва_и_Господь у -- слы -- ша и,
 и от_всех_скорбей_его спа -- се и.
 
 О -- полчится_Ангел_Господень_окрест бо -- я --
 щи -- хся Е -- го и и -- збва -- вит их.
 Вку -- сите_и_видите_я -- ко благ Го -- сподь,
 бла -- жен_муж_иже_у -- по -- ва -- ет нань.
 Бо -- йтеся_Господа_все свя -- ти -- и Е -- го,
 я -- ко_несть_лишения бо -- я -- щим -- ся Е -- го.
 
 Бо -- гатии_обнищаша_и вза -- лка -- ша:
 взы -- скающии_же_Господа_не ли -- ша -- тся
 вся -- ка -- го бла -- га.
}


\bookpart {
  \header {
    title = "Псалом 33"
    subtitle = "(мажор-минор)"
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
    bottom-margin = 15
    indent = 0
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
    ragged-last = ##f
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

