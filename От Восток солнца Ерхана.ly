\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 16)

abr = { \break }
abr = {}

global = {
  \key c \major
  \time 3/4
  \autoBeamOff
}


sopvoice = \relative c'' {
  \global
  \dynamicUp
  \partial 4
  b8\mf b |
  c4. b8 c b |
  c4 c8 r e\mf\< e | \abr
  f4(\! e) d8 d |
  e2. |
  c2. |
  \time 2/4 <c e>4.\f q8 |
  f4 f8 f | \abr
  <c e>4 q |
  \time 3/4 <c f>2 q4 |
  q <c e> q | \abr
  \time 2/4 r4 <c e>\< |
  f2\! |
  <c e>
  r4 q8 q\> |
  d2\! |
  c2\fermata\p \bar "|."
}

altvoice = \relative c'' {
  \global
  g8 g |
  g4. g8 g g |
  g4 g8 r g g |
  a4( g) g8 g |
  g2. |
  e2. |
  g4. g8 |
  <a c>4 q8 q |
  g4 g |
  a2 a4 |
  a4 g g |
  r g |
  <a c>2 |
  g |
  r4 g8 g |
  b2 |
  g
  
}

tenorvoice = \relative c' {
  \global
  \dynamicUp
  d8 d |
  e4. d8 c d |
  e4 e8 r c c |
  c2 b8 b |
  c2. |
  g |
  e'4. e8 |
  f4 f8 f |
  e4 e |
  f2 f4 |
  f e e |
  r e |
  f2 |
  e |
  r4 e8 e |
  d2 |
  <c e>
}

bassvoice = \relative c' {
  \global
  \dynamicDown
  g8 g |
  c4. g8 e g |
  c4 c,8 r c c |
  f4( g) g,8 g |
  c2. |
  c2. |
  c'4. c8 |
  a[ c] a f |
  c'4 c, |
  f8[ e f g] a[ g] |
  a[ b] c4 c, |
  r c |
  f8[ g a b] |
  c2 |
  r4 c,8 e |
  g2 |
  c,\fermata
}

 
texts = \lyricmode { 
  От во -- сток со -- лнца до за -- пад хва -- льно И -- мя Го -- спо -- дне.
  Бу -- ди И -- мя Го -- спо -- дне бла -- го -- сло -- ве -- нно от ны -- не и до ве -- ка.
}

\bookpart {
  \header {
    title = "От восток солнца…"
    composer = "муз. свящ. М. Ерхана"
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
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 4=120
  }
}
}

