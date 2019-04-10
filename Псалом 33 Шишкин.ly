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
  \key e \minor
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co g4 fis e a2-> a\breve b4 a2 g \cbar \abr
  g4 fis e a\breve b4 a2 a4 g2 \cbar \abr
  g4 b2 b\breve a4 b( a) b c2 \cbar \abr
  b4 c d2 d\breve e4 d2 c \cbar \abr
  c4 c b2 b\breve c4 b2 a \cbar \abr
  a4 a a ais b2 a4 a a \nat g2 g\fermata \cbar \pbr
  
  fis4 e a2 a4 a a b a2 a4 g2 \cbar \abr
  fis4 e a\breve b4 a2 a4 g2 \cbar \abr
  g4 g b2 b\breve b4( a) b c2 \cbar \abr
  c4 b c d\breve e4 d2 d \cbar \abr
  c4 b2 b\breve c4 b2 b4 a2 \cbar \abr
  a4 a g ais b2 a4 a a g2 g\fermata \cbar \pbr
  
  fis4 e a2 a\breve b4 a2 \cbr \abr
  a4 a a g2 fis4 e a2 a4 g2 \cbar \abr
  g4 b2 b\breve a4 b( a) b c2 \cbar \abr
  b4( c) d2 d4 d d d e d2 d4 c2 \cbar \abr
  b2 b\breve c4 b2 b4 b a2 \cbar \abr
  a4 a a ais b2 a4 a a g2 g4 g g g2 \cbar \pbr
  
  b4 d\breve d dis4 e2 d2 \cbar \abr
  d4 c\breve c\breve b4.( c8) b2 \cbar \abr
  b2 a4 ais b2( ais ) g2
  \cof \bar "|."
 
}

altvoice = \relative c' {
  \global
  d4 d d fis2 fis\breve g4 fis2 d 
  d4 d d fis\breve fis4 fis2 fis4 d2 
  d4 g2 g\breve g4 g2 g4 g2
  g4 g f2 f\breve g4 f2 e
  g4 g gis2 gis\breve gis4 gis2 e
  e4 e e e d2 d4 e fis d2 d
  
  d4 d fis2 fis4 fis fis fis fis2 fis4 d2
  d4 d fis\breve fis4 fis2 fis4 d2
  g4 g g2 g\breve fis2 g4 g2
  g4 g g f\breve g4 f2 e
  g4 gis2 gis\breve gis4 gis2 gis4 e2
  e4 e e e d2 d4 e fis d2 d
  
  d4 d fis2 fis\breve fis4 fis2
  fis4 fis fis d2 d4 d fis2 fis4 d2
  d4 g2 g\breve g4 g2 g4 g2
  g2 f g4 f4 f f g f!2 f4 e2
  gis2 gis\breve gis4 gis2 gis4 gis e2
  e4 e e e d2 d4 e fis g2 d4 d d d2
  
  g4 b\breve b b4 b2 b
  b4 a\breve a a2 a |
  g2 g4 g fis( g e fis) d2
  
}

tenorvoice = \relative c' {
  \global
  b4 b b c2 c\breve d4 c2 b2 
  b4 b b c\breve d4 c2 c4 b2
  b4 d2 d\breve c4 d( c) d c2
  fis4 e b2 b\breve b4 b2 c 
  e4 e e2 d\breve e4 d2 c
  c4 c c c d2 c4 c c b2 b
  
  b4 b c2 c4 c c d c2 c4 b2
  b4 b c\breve d4 c2 c4 b2
  b4 b d2 d\breve d4( c) d c2
  c4 f e b\breve b4 b2 c
  e4 e2 d\breve e4 d2 d4 c2
  c4 c c c d2 c4 c c b2 b
  
  b4 b c2 c\breve d4 c2
  c4 c c b2 b4 b c2 c4 b2
  b4 d2 d\breve c4 d( c) d4 c2
  f!4( e) b2 b4 b b b b b2 b4 g2
  e'2 d\breve e4 d2 d4 d c2
  c4 c c c d2 c4 c c b2 b4 b d c2
  
  d4 g\breve f! f4 e2 e
  e4 e\breve e dis2 dis
  e4( d) c cis d2( c) b
}

bassvoice = \relative c' {
  \global
  g4 g g d2-> d\breve d4 d2 g 
  g4 g g d\breve d4 d2 d4 g2
  g4 f2 f\breve f4 f2 f4 e2
  d4 c <g g'>2 g'\breve g4 g2 c,
  c4 c e2 e\breve e4 e2 a
  a4 a a g fis?2 d4 d d g2 g\fermata
  
  g4 g d2 d4 d d d d2 d4 g2
  g4 g d\breve d4 d2 d4 g2
  g4 g f2 f\breve f2 f4 e2
  e4 d c g\breve g4 g2 c
  c4 e2 e\breve e4 e2 e4 a2
  a4 a a g fis?2 d4 d d g2 g\fermata
  
  g4 g d2 d\breve d4 d2
  d4 d d g2 g4 g d2 d4 g2
  g4 f2 f\breve f4 f2 f4 e2
  d4( c) g'2 g4 g g g g g2 g4 c,2
  e2 e\breve e4 e2 e4 e a2
  a4 a a g fis?2 d4 d d <d g,>2 q4 q q q2
  
  g4 g\breve g g4 gis!2 gis
  gis!4 a\breve g\breve <fis b,>2 q
  e2 e4 es d1 <g g,>2
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
 Бла -- го -- сло -- влю Господа_на_всяко -- е вре -- мя
 вы -- ну хва -- ла_Его_во у -- стех мо -- их,
 О Го -- споде_похвалится ду -- ша мо -- я
 да у -- слы -- шат_кротции_и_возве -- се -- ля -- тся.
 Во -- зве -- ли -- чите_Господа со мно -- ю,
 и во -- зне -- сем И -- мя Е -- го в_ку -- пе.
 
 Взы -- сках Го -- спо -- да и у -- слы -- ша мя,
 И от всех_скорбей_моих и -- зба -- ви мя,
 при -- сту -- пи -- те_к_Нему_и_просве -- ти -- те -- ся
 и ли -- ца ваша_не_по -- сты -- дя -- тся,
 сей ни -- щий_воззва_и_Господь у -- слы -- ша и,
 и от всех ско -- рбей е -- го спа -- се и.
 
 О -- по -- лчи -- тся_Ангел_Господень_окрест бо -- я --
 щи -- хся Е -- го и и -- збва -- вит их.
 Вку -- си -- те_и_видите_я -- ко благ Го -- сподь,
 бла -- жен муж и -- же у -- по -- ва -- ет нань
 Бо -- йтеся_Господа_все свя -- ти -- и Е -- го,
 я -- ко несть ли -- ше -- ни -- я бо -- я -- щим -- ся Е -- го.
 
 Бо -- гатии_обни -- щаша_и вза -- лка -- ша:
 взы -- скающии_же Господа_не_ли -- ша -- тся
 вся -- ка -- го бла -- га.
}


\bookpart {
  \header {
    title = "Псалом 33"
    composer = "муз. Шишкин"
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

