\version "2.18.2"


% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

global = { \time 2/4 \key d \minor \autoBeamOff \partial 4}

sopvoice = \relative c' {
  \global
  \dynamicUp 
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  d8 d | a'8. g16 a8 b | c a16 a a a a a | a a a a a8 a16 a |
  g8 \breathe c c b | a8. a16 a8 g | f e f a | c4 c8. b16 | c8 a16 a a a a a |
  a8 a16 a a a a a | g8 \breathe c c b | a8. a16 a8 g | f g a a | c8. b16 c8 b |
  c8 r r4 | R2*2 | r8 f f e | d8. d16 d8 d |
  c8 e16 e e8 e16 d | c8 a16 a a a a a | a a a a a8 a16 a | g8 a16 a a8 a16 a |
  g8 a16 a a8 a16 a | g8 a16 a a a a a | g g a a a a a a |
  g8[ a] d d | d8. d16 d8 d | d r r4 | R1 | r8 a16 a a8 a16 a | a8 a16 a a g a bes | c16 c d d d8 d16 d |
  d8 d16 d d8 d16 d | d8 d16 d d8 d16 d | d8\ff d16 d d8 d16 d | d d d d d d, d d d8 r r4
   \bar "|."
}

altvoice = \relative c' {
  \global
  d8 d | a'8. g16 a8 g | a g16 g g g g g | f f f f f8 f16 f |
  e8 a a g | f8. f16 f8 e | d e d d | a'4 a8. g16 | a8 g16 g g g g g |
  f8 f16 f f f f f | e8 a a g | f8. f16 f8 e | d e f f | a8. g16 a8 g |
  a8 r r4 | R2*2 | r8 d, e g | a8. a16 a8 a | 
  a a16 a a8 a16 b | a8 g16 g g g g g | f f f f f8 f16 f | e8 f16 f f8 f16 f |
  e8 f16 f f8 f16 f | e8 f16 f f f f f | e e f f f f f f |
  e4 d8 d | a'8. g16 a8 b | c r r4 | R2 |
  r8 e,16 e e e e e | e e d d d8 d16 d | d8 f16 f f e f g | g g a a a8 a16 a |
  g8 a16 a a8 a16 a | g8 a16 a a8 a16 a | a8 a16 a a8 a16 a | a a a a a d, d d d8 r r4
}

tenorvoice = \relative c' {
  \global
  s4 R2*3
  r8 e e e | d8. d16 d8 d | d d d e | f[ e] d8. e16 | f8 d16 d d d d d |
  d8 d16 d d d d d | c8 \breathe c d e | f8. e16 d8 c | bes? d c d16[ e] | f8. f16 e8 d |
  c8 \breathe a16 a a a a a | a8 a16 a a a a a | g8 \breathe c c b | a8. a16 a8 a | a4 a8 a |
  c4 c8. b16 | c8 r a a | a4 a8 a | a d16 d d8 d16 d |
  d8 d16 d d8 d16 d | d8 d16 d d d d d | d d d d d d d d |
  d4 d8 d | d8. d16 d8 d | d8 r r4 | r8 b16 b b b b b |
  b8 c16 c c c c c | bes bes d d d8 d16 d | d8 d16 d d d d d | e e e e e8 e16 e |
  e8 f16 f f8 f16 f | e8 d16 d d8 d16 d | d8 d16 d d8 d16 d | d d d d d d, d d | d8 r r4
}

bassvoice = \relative c' {
   \global
  \dynamicUp
  s4 R2*3
  r8 r4 a8 \( d\) r8 r4
  R2*4 | r8 a a g | f8. f16 f8 f | f f f f | f8. f16 f8 f |
  f g16 g g g g g | f8 f16 f f f f f e8 a a g | f8. f16 f8 e | d[ e] f d |
  a'4 a8. g16 | a8 r d, d | d4 d8 d | c d16 d d8 d16 d |
  bes8 d16 d d8 d16 d | bes8 c16 c c c c c | c c c c c c c c |
  c4 d8 d a'8. g16 a8 b | c a16 a a a a a | g8\p a16 a a a a a |
  g8 a16 a a a a a | g g a a a8 a16 a | a8 bes?16 bes bes bes bes bes | bes bes bes bes bes8 bes16 bes |
  c8 c16 c c8 c16 c | c8 d16 d d8 d16 d | d8 d16 d d8 d16 d | d d d d d d, d d | d8 r r4  
}

verseup = \lyricmode {
  Уж ты, зи -- му -- шка зи -- ма, сту -- де -- на зи -- ма бы -- ла, зи -- ма мо -- ро -- зли -- ва я!
  Ой, сту -- де -- на зи -- ма бы -- ла, зи -- ма мо -- ро -- зли -- ва -- я,
  за -- кру -- ти -- ла, за -- ме -- ла, за -- мо -- ро -- зи -- ла ме -- ня!
  Ой, за -- кру -- ти -- ла, за -- ме -- ла, да за -- мо -- ро -- зи -- ла ме -- ня!
  Ой, что у -- да --  лый мо -- ло -- дец всё о -- гля -- ды -- ва -- лся,
  про -- тив Ма -- ши -- ных о -- ко -- шек о -- ста -- на -- вли -- ва -- лся!
  О -- ста -- на -- вли -- ва -- лся, с_Ма -- шей здра -- вство -- ва -- лся: 
  &flqq;Здра -- вствуй, Ма -- ша ра -- злю -- ба -- ша, здра -- вствуй, лю -- бу -- шка мо -- я!
  Здра -- вствуй, лю -- бу -- шка мо -- \set associatedVoice = "alto" я!
   не у -- зна -- ла, не при -- зна -- ла, про -- тив ска -- зы -- ва -- ла,
  не у -- зна -- ла, не при -- зна -- ла, про -- тив ска -- зы -- ва -- ла!
  Мо -- ё се -- рдце бо -- лит, о -- то -- йти не ве -- лит,
  о -- то -- йти не ве -- лит, ве -- лит су -- да -- ру -- шку лю -- бить!&frqq;
}

versedown = \lyricmode {
  Э -- эх!
  Ой, за -- кру -- ти -- ла, за -- ме -- ла, да за -- мо -- ро -- зи -- ла ме -- ня!
  За -- мо -- ро -- зи -- ла ме -- ня, у -- да -- ло -- го мо -- ло -- дца!
  Ой, что у -- да --  лый мо -- ло -- дец сам о -- гля -- ды -- ва -- лся,
  о -- хо -- ра -- ши -- ва -- лся! 
  О -- ста -- на -- вли -- ва -- лся, с_Ма -- шей здра -- вство -- ва -- лся: 
  &flqq;Здра -- вствуй, Ма -- ша ра -- злю -- ба -- ша, здра -- вствуй, лю -- бу -- шка мо -- я!
  Здра -- вствуй, лю -- бу -- шка мо -- я!
  Я ве -- чор был у те -- бя, не у -- зна -- ла ты ме -- ня,
  не у -- зна -- ла, не при -- зна -- ла, про -- тив ска -- зы -- ва -- ла,
  не у -- зна -- ла, не при -- зна -- ла, про -- тив ска -- зы -- ва -- ла!
  Мо -- ё се -- рдце бо -- лит, о -- то -- йти не ве -- лит,
  о -- то -- йти не ве -- лит, ве -- лит су -- да -- ру -- шку лю -- бить!&frqq;
}

#(set-global-staff-size 19)
\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(include-special-characters)
}

\header {
  title = "Уж ты, зимушка-зима"
  subtitle = " "
  %opus = "№ 140"
  piece = "Сибир. нар. песня"
  composer = "обр. Лондонова"
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\score {
  \new ChoirStaff
  <<
    \new Staff = #"sa" \with {
      instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
      shortInstrumentName = \markup { \column { "C" "А"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \verseup }
    
    \new Staff \with {
      instrumentName = \markup { \column { "Тенор" "Бас" } }
      shortInstrumentName = \markup { \column { "Т" "Б" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
    >>
    \new Lyrics \lyricsto "bass" { \versedown }
  >>
  \layout { 
    %#(layout-set-staff-size 17)
    \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=90
  }
}
