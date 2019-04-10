\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 14.4)

\header {
  title = "Французская колядка"
  composer = "Обр. и текст м. Иулиании (Денисовой)"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

solosup = \relative c' {
  \global
  \dynamicUp
  \oneVoice
  \set Score.currentBarNumber = #0
  R1 \bar "||"
  
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r |
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r | 
  \voiceOne
  g4( fis8) e fis4. b,8 |
  g' g fis e fis4 r |
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r |
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r |
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r |
  g( fis8) e fis4. b,8 |
  g' g fis e fis4 r |
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r
  
  e8 b' cis a b4 g |
  a8 a16[ b] g8 fis e4 r |
  e8 b' cis a b4 g8 g |
  r2 r4^\markup\italic"solo" b8 b |
  b4 b r b8 b |
  b4 a a r |
  e8 b' cis a b4 g8 g |
  a8 a16[ b] g8 fis e4 r
  
  e8 b' cis d16[ cis] b4 g |
  a8 a16[ b] g8 fis e4 r |
  e8 b' cis d16[ cis] b4 g |
  a8 a16[ b] g8 fis e4 b'8 b
  b4 b r b8 b |
  b4 a a r |
  e8 b' cis d16[ cis] b4 g4 |
  a8^\markup\bold"rit." a16[ b] g8 fis e2
  
}

solosdown = \relative c' {
  \global
  \dynamicUp
  \voiceTwo
  s1*5 |
  e4( d8) cis b4. b8 |
  e e d cis b4 r |
  e8 e a fis g[ fis] e[ d]
  c c d d e4 r
  e8 g a fis g[ fis] e4 |
  e8 e d d e4 r |
  e8 g a fis g[ fis] e4 |
  e8 e d d e4 r |
  e( d8) cis d4. b8 |
  e d cis cis d4 r |
  e8 g a fis g[ fis] e4 |
  e8 e d d e4 r |
  e8 g a fis g4 e |
  fis8 fis16[ g] e8 d e4 r |
  e8 g a fis g4 e8 e |
  <fis a>8 q16[ <g b>] <e g>8 <d fis> e2 |
  <e g>4( <d fis>8) <cis e> <d fis>4. b8 |
  <e g>8 <d g> <cis fis> <cis e> <d fis>4 r 
  e8 g a fis g4 e8 e |
  fis fis16[ g] e8 d e4 r |
  e8 g a <fis a> g[ fis] e4 |
  e8 e e dis e4 r |
  e8 g a <fis a> g[ fis] e4 |
  e8 e e dis e4 r |
  <e g>4( <d fis>8) <cis e> <d fis>4. b8 |
  <e g> <d g> <cis fis> <cis e> <d fis>4 r |
  e8 g a <fis a> g[ fis] e4 |
  e8 e e dis e2
}

soloaup = \relative c' {
  \global
  \dynamicUp
  R1*8 |
  r2 e2( |
  e2. e8[ d] |
  cis4 b) e8 e d fis |
  e4 r e4.( d8 |
  cis4 b) e8 e d b |
  e4 d8 cis b4. b8 |
  b b a a a4( b8[ d])
  e2.( e8[ d] |
  cis4 b) e8 e d16[( e]) cis8 |
  b4 e e8 e d b |
  cis4( b) e8 e d16[( e]) cis8 |
  b4 e8 e e e d16[( e]) cis8 |
  b4 r r2 |
  e4( d8) cis b4. b8 |
  b8 b a a a4( b8[ d]) |
  e2.( e8[ d] |
  cis4 b e) r |
  e8 e <e a,> q e4 e8[ d] |
  c c16[ d] c8 b e4 g8 fis |
  e e <e a,> q e4 e8[ d] |
  c8 c16[ d] c8 b e2
  e4( d8) cis b4. b8 |
  b b a a a4 b8 d |
  e e <e a,> q e4 e8[ d] |
  c c16[ d] c8 b e2
}

soloadown = \relative c' {
  \global
  \dynamicUp
  s1*31
  s2 e8[ d] c[ b] |
  a8 a16[ b] c8 b e2
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  r8 g r g r g r g |
  r g r a r g g g |
  r e r fis r g a a |
  r g r a r g g g |
  r e r fis r g a a |
  r g r e r fis r fis |
  r g r e r fis a a |
  r g r a r g g g |
  r a r fis r g a a |
  r g r a r g g g |
  r e r fis r g a a |
  r g r a r g g g |
  r e r fis r g a a |
  r g r e r fis r fis |
  r g r e r fis a a |
  r g r a r g g g |
  r a r fis r g r g |
  r g r a r g g g |
  r e r fis r g r g |
  r g r a r g r g |
  r fis g fis r g b a |
  r g r e r fis r fis |
  r g r e r fis a a |
  r g r a r g g g |
  r a r fis r g r g |
  r g r a r g g g |
  r a r fis r g r a |
  r g r a r g r g |
  r a r fis r g r a |
  r g r e r fis r fis |
  r g r e r fis a a |
  r g r a r g g g |
  a a16[ b] g8 fis e2
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  r8 e r e r e r e |
  r e r e r e e e |
  r cis r d r e e e |
  r e r e r e e e |
  r cis r d r e e e |
  r e r cis r d r d |
  r e r cis r d fis fis |
  r e r e r e e e |
  r e r d r e e e |
  r e r e r e e e |
  r cis r d r e fis fis |
  r e r e r e e e |
  r cis r d r e fis fis |
  r e r cis r d r d |
  r e r cis r d fis fis |
  r e r e r e e e |
  r e r d r e r e |
  r e r e r e e e |
  r cis r d r e r e |
  r e r e r e r e |
  r d e d r e fis fis |
  r e r cis r d r d |
  r e r cis r d fis fis |
  r e r e r e e e |
  r e r d r e r e |
  r e r e r e e e |
  r e r dis r e r fis |
  r e r e r e r e |
  r e r dis r e r fis |
  r e r cis r d r d |
  r e r cis r d fis fis |
  r e r e r e e e |
  e e e dis e2
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  r8 b r b r b r b |
  r b r cis r b b b |
  r a r b r b cis cis |
  r b r cis r b b b |
  r a r b r b cis cis |
  r b r a r b r b |
  r b r a r a b b |
  r b r cis r b b b |
  r c r b r b cis cis |
  r b r cis r b b b |
  r a r b r b d d |
  r b r cis r b b b |
  r a r b r b d d |
  r b r a r b r b |
  r b r a r a b b |
  r b r cis r b b b |
  r cis r b r b r b |
  r b r cis r b b b |
  r a r b r b r b |
  r b r cis r b r b |
  r a b a r b d d |
  r b r a r b r b |
  r b r a r a b b |
  r b r cis r b b b |
  r cis r b r b r b |
  r b r cis r b b b |
  r c r b r b r b |
  r b r cis r b r b |
  r c r b r b r b 
  r b r a r b r b |
  r b r a r a b b |
  r b r cis r b c b |
  c c c b e2
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \set Score.markFormatter = #format-mark-box-alphabet
  e2 e |
  e e4. d8 |
  cis4 b e2 |
  e e4. d8 | \abr
  cis4 b e2 |
  e b |
  e4 a, b2 |
  e e | \abr
  a,4 b e a,16 b cis d] \bar "||" \mark 1
  e4 a, e'4. d8 |
  cis4 b e b8 d | \abr
  e4 a, e'4. d8 |
  cis4 b e d8 b |
  e2 b |
  e4 a, d b | \abr
  e2 e |
  a,4 b e2  \bar "||" \mark 2
  e4 a, e' d8 b | \abr
  a4 b e2 |
  e4 a, e'2 |
  b4 b e b | \abr
  e2 b |
  e4 a, d b |
  e2 e |
  a,4 b e2 | \bar "||" \mark 3
  e4 a, e'2 |
  a,4 b e2 |
  e4 a, e'2 |
  a,4 b e b | \abr
  e2 b |
  e4 a, d b |
  e a, e'2 |
  a,8 a a b e2 \bar "|."
  
  
}

lyricssolosup = \lyricmode {
  \repeat unfold 102 \skip 1
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  \repeat unfold 34 \skip 1
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  
}

lyricssolosdown = \lyricmode {
  Сла -- ва в_вы -- шних Бо -- гу! По -- йте Не -- бе -- са!
  Па -- сту -- хам до -- ро -- гу
  А -- нгел у -- ка -- зал. 
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  Па -- сту -- хам до -- ро -- гу 
  А -- нгел у -- ка -- зал.
  Там, где над ве -- рте -- пом я -- ркий свет го -- рит,
  Бог со -- шёл на зе -- млю и в_я -- слях ле -- жит.
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  Бог со -- шёл на зе -- млю и в_я -- слях ле -- жит.
  А -- нге -- лы сле -- те -- лись
  и по -- ют с_Не -- бес:
  по -- ди -- ви -- тесь, лю -- \set associatedVoice = "solosdown" ди на чу -- до из чу -- дес!
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  по -- ди -- ви -- тесь, лю -- ди на чу -- до из чу -- дес!
  Чи -- ста -- я Ма -- ри -- я Сы -- на ро -- ди -- ла.
  Сла -- ва в_вы -- шних Бо -- гу, Не -- бе -- сам хва -- ла!
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  Сла -- ва в_вы -- шних Бо -- гу, Не -- бе -- сам хва -- ла!
}

lyricssoloaup = \lyricmode {
  А… Я -- ркий свет го -- рит.
  А… и в_я -- слях ле -- жит, а -- лли -- лу -- я, а -- лли -- лу -- и -- я! __
  А… А -- нге -- лы сле -- те -- лись и по -- ют с_Не -- бес:
  по -- ди -- ви -- тесь, лю -- ди, на чу -- до из чу -- дес!
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я __ а…
  Чи -- ста -- я Ма -- ри -- я Сы -- на ро -- ди -- ла.
  Сла -- ва, сла -- ва в_вы -- шних Бо -- гу, Не -- бе -- сам хва -- ла!
  А -- лли -- лу -- я, а -- лли -- лу -- и -- я!
  Сла -- ва, сла -- ва в_вы -- шних Бо -- гу, Не -- бе -- сам хва -- ла!
}

lyricschoir = \lyricmode {
  \repeat unfold 149 \skip 1
  Не -- бе -- сам хва -- ла!
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
  \score {
      \transpose e fis {
    \new ChoirStaff <<
      \new Lyrics = "soloup"
      \new Staff = "soloup" \with {
        instrumentName = "С"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solosup" { \voiceOne \solosup }
        \new Voice  = "solosdown" { \voiceTwo \solosdown }
      >> 
      \new Lyrics = "solocenter"
      \new Staff = "solosown" \with {
        instrumentName = "А"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soloaup" { \voiceOne \soloaup }
        \new Voice  = "soloadown" { \voiceTwo \soloadown }
      >>
      \new Lyrics = "solodown"
      
      \context Lyrics = "soloup" {
        \lyricsto "solosup" {
          \lyricssolosup
        }
      }
      \context Lyrics = "solocenter" {
        \lyricsto "solosup" {
          \lyricssolosdown
        }
      }
      \context Lyrics = "solodown" {
        \lyricsto "soloaup" {
          \lyricssoloaup
        }
      }
      
      \new StaffGroup = "solos" \with {
        systemStartDelimiter = #'SystemStartSquare
      } <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "choir"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Т" "Б" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >> 
      
      \context Lyrics = "choir" {
        \lyricsto "soprano" {
          \lyricschoir
        }
      }
    >> >>
     }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t

        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new StaffGroup <<
      \new Lyrics = "soloup"
      \new Staff = "soloup" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solosup" { \voiceOne \solosup }
        \new Voice  = "solosdown" { \voiceTwo \solosdown }
      >> 
      \new Lyrics = "solocenter"
      \new Staff = "solosown" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soloaup" { \voiceOne \soloaup }
        \new Voice  = "soloadown" { \voiceTwo \soloadown }
      >>
      \new Lyrics = "solodown"
      
      \context Lyrics = "soloup" {
        \lyricsto "solosup" {
          \lyricssolosup
        }
      }
      \context Lyrics = "solocenter" {
        \lyricsto "solosup" {
          \lyricssolosdown
        }
      }
      \context Lyrics = "solodown" {
        \lyricsto "soloaup" {
          \lyricssoloaup
        }
      }
      
      \new ChoirStaff = "solos" \with {
        systemStartDelimiter = #'SystemStartSquare
      } <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "С" "А"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "choir"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Т" "Б" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >> 
      
      \context Lyrics = "choir" {
        \lyricsto "soprano" {
          \lyricschoir
        }
      }
    >> >> 
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
