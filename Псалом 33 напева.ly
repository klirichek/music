\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 19)

abr = { \break }
%abr = {}

pbr = { \pageBreak }
%pbr= {}

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
  \key bes \major
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \co <bes>8 q\breve q8 c d4( c8[ bes] c4 bes) a2
 a8 a bes c c c c c bes4. bes8 bes2 \cbar 
 
 <g>8 q\breve q8 a bes4( a8 g a4) g fis1
 \cbr fis8 g <a> q\breve q8 g fis! g2 g \cbar
 
 <bes>8 q\breve q8 c d4( c8[ bes] c4 bes) a2
 \cbr a8 a bes c c c c c bes2 bes \cbar
 
 <g>8 q\breve q8 a bes4( a8[ g] a4) g fis!2
 \cbr fis!8 g a a a a g fis! g4.  g8 g2 \cbar
 
 <bes>8 q\breve q8 q c d4( c8[ bes]  c4) bes a2
 \cbr a8 a bes c c c c c bes2 bes \cbar
 
 <g>8 q\breve q8 a bes4( a8[ g] a4) g fis!2 \cbr fis8 g 
 a a a a g fis! g2 g \cbar
 
 <bes>8 q\breve q8 q \cbr c d4 c8[( bes]) c4 bes a2 \cbr bes8 c bes4. bes8 bes2 \cbar
 
 <g>8 q\breve q8 a bes4( a8[ g] a4) g fis!2
 \cbr fis8 g a a a g fis! g4. g8  g2 \cbar
 
 <bes>8 q\breve q8 c d4( c8[ bes]) c4 bes4 a2
 \cbr a8 bes <c>8 q\breve q8  bes4.  bes8 bes bes bes2 \cbar
 
 <g>8 q\breve q8 a bes4( a8[ g] a4 g)  fis!2 \cbr 
 fis8 a a a a a g4.  g8 g2 \cbr  <c>8 q\breve q8  q bes2(  a4 g <a f>2)  \arpeggioParenthesis <bes f>1\arpeggio\fermata 
 \cof \bar "|."
 
}

altvoice = \relative c' {
  \global
  <f>8 q\breve q8 q q1 q2
  q8 q q a a a a a f4. f8 f2
  
  <d>8 q\breve q8 q g4( d2) d4 d1
  d8 d <fis!>8 q\breve fis8  d d d2 d2
  
  f!8 f\breve  f8 f f1 f2 
  f8 f f a a a a a f2 f 
  
  <d>8 q\breve q8 q g4( d2) d4 d2
  d8 d fis! fis fis fis d d d4. d8 d2
  
  f!8 f\breve f8 f f f2. f4 f2
  f8 f f a a a a a f2 f 
  
  <d>8 q\breve q8  q g4( d2) d4 d2 
  d8 d fis8 fis fis fis d d d2 d 
  
  f!8 f\breve f8 f f f4 f f f f2 f8 f f4. f8 f2
  
  <d>8 q\breve q8 q g4( d2) d4 d2 
  d8 d fis! fis fis  d d d4. d8 d2
  
  f!8 f\breve f8 f f2 f4 f f2
  f8 f a8 a\breve a8 f4. f8 f f f2
  
  d8 d\breve d8 d g4( d2.) d2 d8 fis! fis
  fis fis fis d4. d8  d2
  g8 g\breve g8 f f1( es2)  d1
  
}

tenorvoice = \relative c' {
  \global
  <d>8 q\breve q8 es f4( es8[ d] es4 d) c2
  c8 c d es es es es es d4. d8 d2
  
  bes8 bes\breve bes8 c d4(  c8[ bes] c4) bes4 a1
  a8 bes c8 c\breve c8 bes a bes2 bes
  
  d8 d\breve d8 es f4( es8[ d] es4 d ) c2 
  c8 c d es es es es es d2 d
  
  bes8 bes\breve bes8  c d4( c8[ bes] c4) bes a2
  a8 bes c c c c bes a bes4. bes8 bes2
  
  d8 d\breve d8 d es f4( es8[ d] es4) d4 c2 
  c8 c d es es es es es d2 d
  
  bes8 bes\breve bes8 c d4( c8[ bes] c4) bes a2
  a8 bes c c c c bes a bes2 bes
  
  d8 d\breve d8 d es f4 es8[( d]) es4 d c2 d8 es d4. d8 d2
  
  bes8 bes\breve bes8  c d4( c8[ bes] c4) bes a2 
  a8 a bes c c bes a bes4. bes8 bes2
  
  d8 d\breve d8 es f4( es8[ d]) es4 d c2
  c8 d es es\breve es8 d4. d8 d d d2
  
  bes8 bes\breve bes8  c d4( c8[ bes] c4 bes) a2
  
  a8 c c c c c bes4. bes8 bes2
  es8 es\breve es8 es d2(  c4 bes c2) d1
}

bassvoice = \relative c {
  \global
 <f bes,>8 q\breve q8 q <bes bes,>2( <a a,>4 <bes bes,>) f2
 f8 f f f f f f f bes4. bes8 bes2
 
 g8 g\breve g8 g g2( fis4) g d1
 d8 d d d\breve d8 d d <g g,>2 q
 
 <f bes,>8 q\breve q8 q <bes bes,>2( <a a,>4 <bes bes,>) f2
 f8 f f f f f f f bes2 bes
 
 g8 g\breve g8 g g2( fis4) g d2
 d8 d d d d d d d <g g,>4. q8 q2
 
 <f bes,>8 q\breve q8 q q <bes bes,>2( <a a,>4) <bes bes,> f2
 f8 f f f f f f f <f bes,>2 q
 
 g8 g\breve g8 g g2( fis4) g d2
 d8 d d d d d d d <g g,>2 q
 
 <f bes,>8 q\breve q8 q q <bes bes,>4 <f bes,> <f a,> <f bes,> f2
 f8 f <f bes,>4. q8 q2
 
 <g g,>8 q\breve q8 q g2( fis4) g d2
 d8 d d d d d d <g g,>4. q8 q2
 
 <f bes,>8 q\breve q8 q <bes bes,>2 <a a,>4 <f bes,> f2
 f8 f f f\breve f8 <f bes,>4. q8 q q q2
 
 g8 g\breve g8 g g2( fis4 g) d2
 d8 d d d d d g4. g8 g2 <g c,>8 q\breve q8 <f a,>8
 << \voiceThree f1. \\ {bes,2( a4 g f2) } >>
 \arpeggioParenthesis <bes f'>1\arpeggio\fermata
 
 
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
 Бла -- гословлю_Господа_на_вся -- ко -- е вре -- мя,
 вы -- ну хва -- ла Е -- го во у -- стех мо -- их,
 
 О Го́споде_похва́ли -- тся ду -- ша __ мо -- я,
 да у -- слы -- шат_кротции_и во -- зве -- се -- ля -- тся.
 
 Во -- звели́чите_Госпо -- да со мно -- ю,
 и во -- зне -- сем И -- мя Е -- го в_ку́ -- пе.
 
 Взы -- ска́х_Господа и у -- слы -- ша мя,
 и от всех ско -- рбей мо -- их и -- зба -- ви мя.
 
 При -- ступи́те_к_Нему и про -- све -- ти -- те -- ся
 и ли -- ца ва -- ша не по -- сты -- дя -- тся.
 
 Cей нищий_воззва_и_Го -- сподь у -- слы -- ша и,
 и от всех ско -- рбей е -- го спа -- се и.
 
 О -- полчи́тся_Ангел_Господень о́ -- крест бо -- я́ --
 щи -- хся Е -- го, и и -- збва -- вит их.
 
 Вку -- си́те_и_видите я -- ко благ __ Го -- сподь,
 бла -- жен муж и -- же у -- по -- ва -- ет нань.
 
 Бо -- йтеся_Господа вси свя -- ти -- и Е -- го,
 я -- ко несть лишения бо -- я -- щим -- ся Е -- го.
 
 Бо -- гатии_обнищаша и вза -- лка -- ша,
 взы -- ска́ -- ю -- щи -- и же Го -- спо -- да не лишатся_вся -- ка -- го бла -- га.
}


\bookpart {
  \header {
    title = "Псалом 33"
    %subtitle = "________... напева"
    composer = "обиходный"
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

