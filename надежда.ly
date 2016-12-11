\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Надежда"
  composer = \markup\right-column {"А. Пахмутова" "Н. Добронравов"}
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr  = { \break }
abr = {}

global = {
  \key d \minor
  \time 4/4
  \set Score.skipBars = ##t
  \numericTimeSignature
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  <f a>8. q16 q8. <g bes>16 <f a>8. <e g>16 <d f>8. <e g>16 |
  <f a>2 r |
  <e g>8. q16 q8. <e a>16 <e g>8. <d f>16 <cis e>8. <d f>16 | \abr
  <e g>4 <cis e> r2 | \break
  d8. d16 d8. d16 <bes' d>8 q r <a c>16 <g bes> |
  <f a>2 r |
  <g bes>8. q16 q8. q16 q4 \tuplet 3/2 { q8 q q } | \abr
  <f a>2 <e a>4 r |
  <f a>8. q16 q8 <g bes> <f a> <e g> <d f> <e g> |
  <f a> 2 r |
  <a c>8. q16 q8 <bes d> <a c> <f a> <e g> f | \abr
  <f bes>2 <fis a> |
  g8. a16 <g bes>8 <a c> <bes d>4 <g bes> |
  <f a> <e g> <d f>2 |
  <e g>8. q16 q8 q <e c'> <g bes> <f a> <e g> |
  <d f>2( <cis e>) | \abr
  d4 r r d |
  <bes' d> e, r <g bes> |
  <f a>8 q4 <g bes>8 <f a>4 r8 q16 q |
  <e g>8 q4 <f a>8 <e g> f4 e8 |
  f4( g) a d, | \break
  <bes' d> e, r r8 d' |
  c4 a8 g f4 r8 f |
  \tuplet 3/2  {e4 f g} \tuplet 3/2  {c bes d,} |
  f2( e) | \break
  d4 a'8 bes a4 a8 bes| \abr
  a4 a8 bes a g f g |
  <f a>2 r | \break
  a8. a16 a8 bes a g f g |
  a2 r | \abr
  g8. g16 g8 a g f e f |
  g4 e r2 | \break
  d8. d16 d8 d d' d c bes |
  a2 r | \abr
  e8 e e e c' bes a g |
  f2 e |
  a8. a16 a8 bes a g f g |
  a2 r | \abr
  c8. c16 c8 d c a g f |
  bes2 a |
  g8. a16 bes8 c d4 bes |
  a g f2 | \abr
  e8. e16 e8 e c' bes a g |
  f2( e) |
  d4 r r d |
  <bes' d> e, r <g bes> |
  <f a>8 q4 <g bes>8 <f a>4 r8 q16 q | \abr
  <e g>8 q4 <f a>8 <e g> f4  e8 |
  f4( g) a d, | \break
  <bes' d> e, r r8 d' |
  c4 a8 g f4 r8 f | \abr
  \tuplet 3/2 { e4 f g } \tuplet 3/2 {c bes d,} |
  f2( e) | \break
  d4 a'8[ bes] a4 a8[ bes] |
  a4 \key es \minor 
  bes8[ ces] bes[ as ges as] |
  <ges bes>2 r | \break \abr
  q8. q16 q8. <as ces>16 <ges bes>8. <f as>16 <es ges>8. <f as>16 |
  <ges bes>2 r |
  <f as>8. q16 q8. <f bes>16 <f as>8. <es ges>16 <d? f>8. <es ges>16 | \abr
  <f as>4 <d? f> r2 | \break
  es8. es16 es8. es16 <ces' es>8 q <bes des> <as ces> |
  <ges bes>2 r |
  <as ces>8. q16 q8. q16 q8 q q q | \abr
  <ges bes>2 <f bes>4 r |
  <ges bes>8. q16 q8 <as ces> <ges bes> <f as> <es ges> <f as> |
  <ges bes>2 r |
  <bes des>8. q16 q8 <ces es> <bes des> <ges bes> <f as> ges | \abr
  <ges ces>2 <g bes> |
  as8. bes16 <as ces>8 <bes des> <ces es>4 <as ces> |
  <ges bes> <f as> <es ges>2 |
  <f as>8. q16 q8 q <f des'> <as ces> <ges bes> <f as> | \abr
  <es ges>2( <d f>) | \break
  es4 r r es |
  <ces' es> f, r <as ces> |
  <ges bes>8 q4 <as ces>8 <ges bes>4 r8 q16 q | \abr
  <f as>8 q4 <ges bes>8 <f as> ges4 f8 |
  ges4( as) bes es, | \break
  <ces' es> f, r r8 es' |
  des4 bes8 as ges4 r8 ges | \abr
  \tuplet 3/2 { f4 ges as} \tuplet 3/2 { des ces es,} |
  ges2( f) |
  es4 r r2 |
  R1*2 \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  d8. d16 d8. d16 d8. bes16 a8. cis16 |
  d2 r |
  cis8. cis16 cis8. cis16 cis8. b16 a8. b16 | \abr
  cis4 a r2 |
  d8. d16 d8. d16 e8 e r e16 e |
  c2 r |
  d8. d16 d8. d16 e4 \tuplet 3/2 {e8 e e } | \abr
  cis2 cis4 r |
  d8. d16 d8 d d bes a cis |
  d2 r |
  f8. f16 f8 f f c c c | \abr
  d2 d |
  g8. f16 e8 d e4 cis |
  d c bes2 |
  bes8. bes16 bes8 bes bes bes bes bes |
  a1 | \abr
  d4 r r d |
  e e r e |
  d8 d4 d8 d4 r8 d16 d |
  cis8 cis4 cis8 cis cis4 cis8 |
  d4( e) f d | \abr
  e e r r8 e |
  e4 d8 e f4 r8 f |
  \tuplet 3/2 { e4 f g} \tuplet 3/2 { c bes d,} |
  d2( cis) |
  
  r4 f8 g f4 f8 g | \abr
  f4 f8 g f e d e |
  d2 r |
  
  f8. f16 f8 g f e d e |
  f2 r | \abr
  e8. e16 e8 f e d cis d |
  e4 cis r2 |
  d8. d16 d8 d bes' bes a g |
  f2 r | \abr
  e8 e e e a g f e |
  d2 cis |
  f8. f16 f8 g f e d e |
  f2 r | \abr
  a8. a16 a8 bes a f e f |
  f2 fis |
  g8. f16 g8 a bes4 g |
  f e d2 | \abr
  e8. e16 e8 e e g f e |
  d2( cis) |
  d4 r r d |
  e e r e |
  d8 d4 d8 d4 r8 d16 d | \abr
  cis8 cis4 cis8 cis cis4 cis8 |
  d4( e) f d |
  e e r r8 e |
  e4 d8 e f4 r8 f | \abr
  \tuplet 3/2 { e4 f g } \tuplet 3/2 { c bes d, } |
  d2( cis) |
  r4 f8 g f4 f8 g |
  f4 \key es \minor ges8 as ges f es f |
  es2 r | \abr
  es8. es16 es8. es16 es8. ces16 bes8. d16 |
  es2 r |
  d8. d16 d8. d16 d8. c16 bes8. c16 | \abr
  d4 bes r2 | es8. es16 es8. es16 f8 f f f |
  des2 r |
  es8. es16 es8. es16 f8 f f f | \abr
  d2 d4 r |
  es8. es16 es8 es es ces bes d |
  es2 r |
  ges8. ges16 ges8 ges ges des des des | \abr
  es2 es |
  as8. ges16 f8 es f4 d |
  es des ces2 |
  ces8. ces16 ces8 ces ces ces ces ces | \abr
  bes1 |
  es4 r r es |
  f f r f |
  es8 es4 es8 es4 r8 es16 es | \abr
  d8 d4 d8 d d4 d8 |
  es4( f) ges es |
  f4 f r r8 f |
  f4 es8 f ges4 r8 ges | \abr
  \tuplet 3/2 { f4 ges as } \tuplet 3/2 { des ces es, } |
  es2( d) |
  es4 r r2 R1*2
  
}


lyricscore = \lyricmode {
  \set stanza = "1. " Све -- тит не -- зна -- ко -- ма -- я зве -- зда,
  сно -- ва мы о -- то -- рва -- ны от до -- ма,
  сно -- ва ме -- жду на -- ми го -- ро -- да,
  взлё -- тны -- е о -- гни а -- э -- ро -- дро -- мов.
  Здесь у нас ту -- ма -- ны и до -- жди,
  здесь у нас хо -- ло -- дны -- е рас -- све -- ты,
  здесь на не -- и -- зве -- да -- нном пу -- ти
  ждут за -- мы -- сло -- ва -- ты -- е сю -- же -- ты.
  
  На -- де -- жда, мой ко -- мпас зе -- мной,
  а у -- да -- ча_― на -- гра -- да за сме -- лость,
  а пе -- сни до -- во -- льно о -- дной,
  чтоб то -- лько о до -- ме в_ней пе -- лось.
  
  \repeat unfold 13 \skip 1
  \set stanza = "2. " И, по -- верь, что здесь и -- зда -- ле -- ка
  мно -- го -- е те -- ря -- е -- тся из ви -- ду,
  та -- ют гро -- зо -- вы -- е о -- бла -- ка,
  ка -- жу -- тся не -- ле -- пы -- ми о -- би -- ды.
  На -- до то -- лько вы -- у -- чи -- ться ждать,
  на -- до быть спо -- ко -- йным и у -- пря -- мым,
  чтоб по -- рой от жи -- зни по -- лу -- чать
  ра -- до -- сти ску -- пы -- е те -- ле -- гра -- ммы.
  
    На -- де -- жда, мой ко -- мпас зе -- мной,
  а у -- да -- ча_― на -- гра -- да за сме -- лость,
  а пе -- сни до -- во -- льно о -- дной,
  чтоб то -- лько о до -- ме в_ней пе -- лось.
  
  \repeat unfold 7 \skip 1
  \set stanza = "3. "
  И за -- быть по -- пре -- жне -- му не -- льзя
  всё, что мы ко -- гда -- то не до -- пе -- ли,
  ми -- лы -- е у -- ста -- лы -- е гла -- за,
  си -- ни -- е мо -- ско -- вски -- е ме -- те -- ли.
  Сно -- ва ме -- жду на -- ми го -- ро -- да, 
  жизнь нас ра -- злу -- ча -- ет, как и пре -- жде,
  В_не -- бе не -- зна -- ко -- ма -- я зве -- зда
  све -- тит, сло -- вно па -- мя -- тник на -- де -- жды!
  
  На -- де -- жда, мой ко -- мпас зе -- мной,
  а у -- да -- ча_― на -- гра -- да за сме -- лость,
  а пе -- сни до -- во -- льно о -- дной,
  чтоб то -- лько о до -- ме в_ней пе -- лось.
  
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
%  ragged-bottom = ##f
}
\score {
  %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
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
