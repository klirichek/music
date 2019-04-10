\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Славься народу!"
  subtitle = "Переложение О. Серебровой"
  composer = "С. Рахманинов"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
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

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \secondbar  
  b4  g r b |
  c b b8[( a]) g a |
  b4 g r2 |
  a4-- a8 a a4 a | \abr
  g g8 g g2 |
  fis4 g8 a b4 b |
  b2 <c a>4 <d b> |
  <e c>2~ q8 r r4 | \abr
  <d b>4 b r <d b> |
  <e c> <d b> d8[( c]) b c |
  <d b>4 b r2 |
  r8^\markup\italic"unis." \oneVoice g g g g4~ g | \abr
  g g8 g g4 g |
  g g8 g g4 g |
  g g8 g g2~ |
  g1~ | \abr
  g2 r |
  \time 3/4 \voiceOne c8 b4 a8 g fis |
  b a4 g8 fis e |
  \time 4/4 dis4 dis8 e fis4 g | \abr
  dis4 dis8 e fis4 g |
  fis( g) b e |
  <fis dis>2~ q8 r r4 |
  g4 d r <d b> |
  e4 d d8[( c]) b c |
  d4 b r2 |
  << { \voiceThree a4 a8 a a4 a |
       g g8 g g2 |
       fis4 g8 a b4 b |
       b( g) a b | g2~ g8 }
     \new Voice = "sopranotwo" 
     { \voiceOne \autoBeamOff r4 r e' e8 e |
       e4 e d d8 d |
       d2 d4 e8 fis |
       g4 b, c d8 d | e2~ e8 }
  >>
  r8 r4 |
  g d r r |
  <d b> b r2 |
  <g b>1 |
  <g d>~ q ~ |
  q4 r r2
}



altvoice = \relative c' {
  \global
  \dynamicDown 
  d4 b r d |
  e d d8[( c]) b c |
  d4 b r2 |
  r2 e4 e8 e |
  e4 e4 d4 d8 d |
  d2 d4\< e8 fis |
  g4 g g\! g8 g |
  g2~ g8 r r4 |
  
  g g r g |
  g g b8[( a]) g a |
  g4 g r2 |
  s1*6
  \time 3/4 a8 g4 fis8 e d |
  g fis4 e8 d c |
  \time 4/4 b4 b8 cis dis4 e |
  b b8 cis dis4 e |
  dis(\< e) g <g b>\!|
  fis2~ fis8 r r4 |
  <d b'>4 q r d |
  <e c'> <d b'> d8[( c]) b c |
  <d b'>4 <d g> r2 |
  r4 r e e8 e |
  e4 e d d8 d |
  d2 d4 e8 fis |
  g4 b, c d8 d |
  e2~ e8 r r4 |
  <d b'>4 q r r |
  d <d g> r2 |
  d1 |
  b~ b~ | b4 r r2
  
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \oneVoice
  g4 g r g |
  g g d d8 d |
  g4 g r2 |
  R1*5
  g4 g r g |
  g g d d8 d |
  g4 g r2 |
  r8 g g g g4~ g |
  g g8 g g4 g |
  g g8 g g4 g |
  g g8 g g2~ |
  g1~ |
  g2 r |
  \time 3/4 a8 a4 a8 d, d |
  g g4 g8 c, c |
  \time 4/4 b4 b8 b b4 e |
  b b8 b b4 e |
  b( e) g g
  b2~ b8 r r4 |
  g g r g |
  g g d d8 d |
  g4 g r2 |
  a4 a8 a a4 a |
  g g8 g g2 |
  fis4 g8 a b4 b |
  b( g) a b |
  c2~ c8 r r4 |
  g g r r |
  d d r2 |
  g1 |
  g~ |
  g~ |
  g4 r r2 \bar "||"
}


scoreARight = \relative c' {
  \global
  \autoBeamOn
  \oneVoice <d b'>4-> <b g'>-> r <d b'>-> |
  <e c'>-> <d b'>-> <d b'>8-> <c a'>-> <b g'>-> <c a'>-> |
  <d b'>4-> <b g'>-> \clef bass <d, b' d>-> <d g b>-> \clef treble |
  <fis' a>2-- <e a>-- | \abr
  
  <e g>-- <d g>-- |
  \voiceOne fis4( g8 a) b2 |
  \oneVoice <g b>2 <a c>4 <b d> |
  <c e>\f <e, g>-> <e a c>-> <d a' d>-> | \abr
  <d b' d>-> <d g b>-> r <d b' d>-> |
  <g c e>-> <g b d>-> <d b' d>8-> <d a' c>-> <d g b>-> <d a' c>-> |
  <d b' d>4-> <d g b>-> \clef bass <d, b' d>-> <d g b>-> \clef treble |
  g'2--( <g bes>-- | \abr
  
  <g b>1--) |
  <g b>2--( <g cis>-- |
  <g d'>-- <g es'>-- |
  \voiceOne e'2-- b-- |
  b1) | \abr
  \oneVoice
  \time 3/4 \tempo "Poco meno mosso" <a c>8(\pp <g b>4 <fis a>8 <e g>[ <d fis>]) |
  \voiceOne <g b>( <fis a>4 <e g>8 <d fis>[ <c e>]) |
  \oneVoice \time 4/4 <fis, b dis>4 <b dis>8(\< <cis e> <dis fis>4\>) <ais e' g>4\> | \abr
  <b dis>4 <b dis>8(\< <cis e> <dis fis>4) <e g>4->\! |
  <b dis fis>4\< <b e g> <e g b> <g b e>->\! |
  <b dis fis>->\f \tuplet 3/2 4 { <b b,>8\< q q q q q q q q\! }
  \tempo "Tempo I"
  
  \tuplet 3/2 4 { \repeat unfold 12 <b, g' b> 
  <c e c'> q q <b d b'> q q q q <a c a'> <g b g'> q <a c a'>
  <b g' b> q q q q q q q q q q q
  <a e' a> q q q q q q q q q q q |
  <g e' g> q q q q q <g d' g> q q q q q | \abr
  <c d c'> q q q q q <b d b'> q q q q q |
  <b g' b> q q q q q <c a' c> q q <d b' d> q q | \abr
  <e c' e> q q q q q q q q <d c' d> q q |
  <g b g'> q q <d b' d> q q q q q q q q | \abr
  q q q <b g' b> q q q q q q q q |
  q q q q q q q q q q q q| \abr }
  <g b g'>8[ q] q[ q] q[ q] q[ q] |
  q4-> q-> q-> q-> q-> r r2
  \bar "||"
  
}

scoreBRight = \relative c' {
  \global
  s1*5
  d2 d4( e8 fis) |
  s1*6
  s1*3
  g1 |
  g2( e) |
  s2. |
  b4 r g
  
  s1*4
}

scoreALeft = \relative c {
  \global
  \autoBeamOn
  \dynamicUp
  <g d'>4\f-> <g b>-> r <g d'>-> |
  <g e'>-> <g d'>-> <d d'>8-> <d c'>-> <d b'>-> <d c'>-> |
  <g d'>4-> <g b>-> <g, g'>-> <g g'>-> |
  d'''2--\p c-- |
  c-- b-- |
  a4( g8 fis) g4.( fis8 |
  e4) e'8( d c a g4) |
  c4 <c, c'>8-> <b b'>-> <a a'>-> <g g'>-> \tuplet 3/2 { <fis fis'>-> <e e'>-> <d d'>-> } |
  <g d'>4\ff-> <g b>-> r <g d'>-> |
  <g e'>-> <g d'>-> <d d'>8-> <d c'>-> <d b'>-> <d c'>-> |
  <g d'>4-> <g b>-> <g, g'>-> <g g'>-> |
  e'''2--( es |
  d1--) |
  e2--( <e ais,>-- |
  <d b>-- <es bes>-- |
  <e b e,>1) |
  << { b2( g) } \\ e1 >>
  \time 3/4 << { e2 d4~ | d2 c4 } \\ { a8( b4 c8 d4) | g,8( a4 b8 c4) } >>
  \time 4/4 b2. <cis fis,>4-> |
  <fis b,>2. <e e,>4-> |
  <fis b,> e8-> g-> d'4 c-> |
  <b fis'>-> r r2 |
  <g, d'>2^\ff d'4-> g,4-> |
  <c c,>4 g <d' d,> q |
  <d g,>2 <d d,>4-> <g, g,>-> | \abr
  <c c,>2\mp q |
  <b b,> q | \abr
  <a a,>4 <g' g,>8-> <fis fis,> <g g,>4-> <fis fis,>-> |
  <f f,>-> <e e,>-> <es es,>->\< <d d,>->
  <c c,>-> <b b,>-> <a a,>-> <as as,>-> |
  <g g,>2->\f g'4-> d-> |
  <g, g,>2 d'4-> g,-> |
  \repeat unfold 4 \tuplet 3/2 { <g g,>8.[ e16 d8] }
  \repeat unfold 4 { <g g,>8[ d] }
  <g g,>4-> <g d g,>-> <g g,>-> <g d g,>-> |
  <g d g,>-> r r2
}

scorePiano =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << 
      \new Voice {\voiceOne \scoreARight }
      \new Voice {\voiceTwo \scoreBRight }
    >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreALeft }
  >>

lyricsup = \lyricmode {
  \repeat unfold 10 \skip 1
  До -- ля на -- ро -- да сча -- стье е -- го,
  свет и сво -- бо -- да пре -- жде все -- го! 
  \repeat unfold 65 \skip 1
  \set associatedVoice = "sopranotwo" 
  До -- ля на -- ро -- да, сча -- стье е -- го,
  свет и сво -- бо -- да пре -- жде все -- го!
}


lyricscore = \lyricmode {
  Сла -- вься, на -- ро -- ду да -- вший сво -- бо -- \set associatedVoice = "alto" ду!
  До -- ля на -- ро -- да, сча -- стье е -- го, свет и сво -- бо -- да пре -- жде все -- го! __
  \set associatedVoice = "soprano"
  Сла -- вься на -- ро -- ду да -- вший сво -- бо -- ду!
  Бла -- го -- сло -- ви, Го -- спо -- ди пра -- вый сча -- стьем и сла -- вой, де -- ло лю -- бви. __
  Мы же не -- мно -- го про -- сим у Бо -- га: све -- тло -- е де -- ло 
  де -- лать у -- ме -- ло си -- лы нам дай! __ Сла -- вься, на -- ро -- ду
  да -- вший сво -- бо -- ду.
  До -- ля на -- ро -- да сча -- стье е -- го,
  свет и сво -- бо -- да пре -- жде все -- го! 
  Сла -- вься, Сла -- вься, Сла -- вься! __
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
%    ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  
\bookpart {

  \score {
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S I,II" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" {\lyricsup }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName =  "B"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>

    >>
    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Хор"
  }
  \score {
    %  \transpose c bes {
    <<
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "S I,II" "A"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" {\lyricsup }
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName =  "B"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>

    >>
    %    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Piano"
  }
  \score {
    %  \transpose c bes {
    <<
    \scorePiano
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
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
      
      \scorePiano
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
