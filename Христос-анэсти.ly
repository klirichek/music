\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Христос анэсти"
  subtitle = "(Пасхальный тропарь на трёх языках)"

  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \numericTimeSignature
  \autoBeamOff
}

partialfour = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c' {
  \global
  \dynamicUp
  \key g \major
  \time 4/4
  \partialfour d4 |
  g4. g8 g4 d |
  g b <b d>4. \breathe <g b>8 |
  q4 q <g c>8 q q q |
  <g b>4( <fis a>) <g b>2 | \abr
  <a c>4 <gis b> <a c> <b d> |
  <c e>4. q8 q4 q |
  <b d>2 <a c>4 q |
  <g b>2 <fis a> |
  <g b>1 \bar "|."
}

sopvoicetwo = \relative c'' {
  \key g \major
  \time 4/4
  \global
  \dynamicUp
  <g b>4. <fis a>8 <g b>4 <a c> |
  <b d>2 <g b>4 q |
  <fis a>2( <g b>4) <a c> |
  <g b>1 |
  <b d>2 <g b> |
  <c e> <b d>4 q | \abr
  <a c>2( <gis b>) |
  <a c>2. q4 |
  q4. q8 <g b>4( <fis a>) |
  <g b>2 <a c> |
  <b d> <g b> |
  <c e> <b d>4 <a c> |
  <g b>2( <fis a>) |
  <g b>1 \bar "|."
}

sopvoicethree = \relative c'' {
  \key c \major
  \time 3/4
  \global
  \dynamicUp
  \partialfour <b d>4 |
  <c e>2 <b d>4 |
  <c e>4 q <c f>4 |
  << {c4(} \new Voice {\voiceThree e8.[ d16]} >> <g, c>4 <g b>) |
  <g c>2. |
  <e g>4 q8 q q q |
  <f a>2 r4 | \abr
  <g b>4 q8 q q q |
  <g c>2 <b d>4 |
  <c e>4 q <b d>8 q |
  <c e>2 <c f>4 |
  << {c} \new Voice { \voiceThree e8.[( d16]) } >> <g, c>4 <g b> |
  <g c>2 \bar "|."
}


altvoice = \relative c' {
  \key g \major
  \time 4/4
  \global
  \dynamicUp 
  \partialfour d4 |
  g4. g8 g4 d |
  g g g4. \breathe d8 |
  d4 d e8 e e e |
  d2 d |
  e4 e e g |
  g4. g8 g4 g |
  g2 e4 e |
  d2 d |
  d1
  
}

altvoicetwo = \relative c' {
  \key g \major
  \time 4/4
  \global
  \dynamicUp  
  d4. d8 g4 g |
  g2 d4 d |
  d2. d4 |
  d1 |
  g2 g |
  fis g4 g |
  a2( e) |
  a2. d,4 |
  d4. d8 d2 |
  d d |
  g g |
  g g4 g |
  d1 d
}

altvoicethree = \relative c'' {
  \key c \major
  \time 3/4
  \global
  \dynamicUp  
  \partialfour g4 |
  g2 g4 |
  g4 g a4 |
  g8.([ f16] e4 d) |
  e2. |
  c4 c8 c c c |
  c2 r4 |
  f4 f8 f f f |
  e2 g4 |
  g g g8 g |
  g2 a4 |
  g8.[( f16]) e4 d |
  e2
}

bassvoice = \relative c {
  \key g \major
  \time 4/4
  \global
  \dynamicUp
  \partialfour d4 |
  g4. g8 g4 d |
  g g g4. \breathe g8 |
  g4 g c,8 c c c |
  d2 g |
  a4 e a g |
  c,4. c8 c[( d]) e[( fis]) |
  g2 e4 c |
  d2 d |
  g1
}

bassvoicetwo = \relative c' {
  \key g \major
  \time 4/4
  \global
  \dynamicUp
  g4. d8 g4 g |
  g2 g4 g |
  d2. d4 |
  g1 |
  R1*3 |
  r2. d4 |
  fis4. fis8 g4( d) |
  g2 g |
  g g |
  c, d4 e |
  d1 |
  g
}

bassvoicethree = \relative c' {
  \key c \major
  \time 3/4
  \global
  \dynamicUp
  \partialfour g4 |
  c2 g4 |
  c4 c f,4 |
  g2. |
  c, |
  c4 c8 c c c |
  f2 r4 |
  d4 d8 d d d |
  c2 g'4 |
  c c g8 g |
  c2 f,4 |
  g <g g,> q |
  c,2
}

lyricscore = \lyricmode {
  Хри -- стос а -- нэ -- сти эк нэ -- крон,
  фа -- на -- то фа -- на -- тон па -- ти -- сас,
  кэ -- тис эн -- тис мни -- ма -- си зо -- ин
  ха -- ри -- са -- мэ -- нос.
}

lyricscoretwo = \lyricmode {
  Хрис -- тус рэ -- зу -- рек -- сит э мо -- рту -- ис,
  мор -- тэ, мор -- тэм каль -- ка -- вит,
  эт эн -- ти -- бус ин сэ -- пуль -- хрис ви -- там до -- на -- вит.
}

lyricscorethree = \lyricmode {
  Хри -- стос во -- скре -- се из ме -- ртвых,
  сме -- рти -- ю смерть по -- прав,
  сме -- рти -- ю смерть по -- прав.
  И су -- щим во гро -- бех жи -- вот да -- ро -- вав.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
    }
  }
  
    \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoicetwo }
        \new Voice  = "alto" { \voiceTwo \altvoicetwo }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoicetwo }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscoretwo
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
    }
  }
  
    \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoicethree }
        \new Voice  = "alto" { \voiceTwo \altvoicethree }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoicethree }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscorethree
        }
      }
    >>
    %  }  % transposeµ
    \layout { 
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice \sopvoicetwo \sopvoicethree }
        \new Voice  = "alto" { \voiceTwo \altvoice \altvoicetwo \altvoicethree }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \bassvoice \bassvoicetwo \bassvoicethree }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore \lyricscoretwo \lyricscorethree
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
