\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 19)

abr = { \break }
%abr = {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }
lleft = \once \override LyricText.self-alignment-X = #LEFT
global = {
  \autoBeamOff
  \key c \major
}

sopvoice = \relative c'' {
  \global
  \co b8 b b \cbr a8. a16 a8 \cbr
  a a a g1 fis2\fermata r2 \cb
  \co g8 g a b4 b8 \cbr
  b \cbr b a4 \cbr a8
  a \cbr a a g2 g fis\fermata r \cb
  \co b8 b a4 \cbr a8
  a a g4. g8 g4 \cof \bar "|"
  \co b4 b8 b
  b a4 a8 a8 a a a a
  g4. g8 g2 \cof \bar "|" \co
  a4 g fis! a g2( fis) e1\fermata
  \cof \bar "|."
 
}

altvoice = \relative c'' {
  \global
  g8 g g fis8. fis16 fis8 fis!8 fis fis e2( cis) d2 r2 
  e8 e fis! g4 g8 g
  g fis!4 fis8
  fis fis fis e2 e4( cis) d2 r 
  g8 g fis!4 fis8
  fis fis e4. e8 e4
  g4 g8 g
  g fis!4 fis8 fis8 fis fis fis fis 
  e4. e8 e2
  e4 e e e e2( dis) b1
  
}

tenorvoice = \relative c' {
  \global
  d8 d d d8. d16 d8
  d8 d d a1 a2 r
  b8  b d d4 d8 d
  d8 d4 d8 d
  d8 d a2 a a r
  d8 d8 c4 c8
  c c b4. b8 b4
  d4 d8 d
  d c4 c8 c8 c c c c
  b4. b8 b2
  c4 b a c b2( a) g1
}

bassvoice = \relative c' {
  \global
  g8 g g d8. d16 d8
  d8 d fis! a2( a,) d2\fermata r
  e8 e d g4 g8 g
  g d4 d8  d
  d8 fis! a2 a,2 d2 r
  g8 g d4 d8
  d dis e4. e8 e4
  \bar "|" g4 g8 g g \nat d4 d8 d8 d d d dis
  e4. e8 e2
  a,4 b c a b2~ b e1\fermata
  
}

 
texts = \lyricmode { 
  \lleft Святии_мученицы,_иже_добре_страдавше
  и вен -- ча -- вше -- ся, \lleft молитеся_ко_Господу_спастися 
  ду -- шам на -- шим.
  \lleft Слава_Тебе, Хри -- сте Бо -- же, \lleft апостолов_похвало_и_мучеников 
  ве -- се -- ли -- \lleft е_их_же_проповедь_Троица_е -- ди -- но -- су -- щна -- я.
  \lleft Исаие_ликуй,_Дева_име во чре -- \lleft ве,_и_роди_Сына
  Ем -- ма -- ну -- и -- ла, Бо -- \lleft га_же_и
  Че --  ло -- ве -- ка, во -- сток \lleft имя_Ему:_Его_же
  ве -- ли -- ча -- ю -- ще, Де -- ву у -- бла -- жа -- ем.
}

\bookpart {
  \header {
    title = "Святии мученицы…"
    subtitle = "№ 149"
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
    \tempo 4=120
  }
}
}

