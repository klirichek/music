\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Христос анэсти"
  subtitle = "(Пасхальный тропарь на трёх языках)"
  arranger = "перел. для дет. хора С. Дружининой"

  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \numericTimeSignature
  \autoBeamOff
}

partialfour = { \set Timing.measurePosition = #(ly:make-moment -1/4) }
partialeight = { \set Timing.measurePosition = #(ly:make-moment -1/8) }

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

sopvoice = \relative c' {
  \global
  \dynamicUp
  \key f \major
  \time 4/4
  \partialfour c4 |
  f4. f8 f4 c |
  f a c4\fermata r8 a |
  a4 a bes8 bes bes bes |
  <a f>4( <g e>) a2 |
  bes4 a bes c |
  <d bes>4. q8 q4 q |
  c2 <bes g>4 q |
  a2 g | a1 \bar "|."
}

sopvoicetwo = \relative c'' {
  \key f \major
  \time 4/4
  \global
  \dynamicUp
  a4. g8 a4 <bes g> |
  c2 a4 a |
  g2( a4) bes |
  a1 |
  c2 a |
  d2 c4 c |
  bes2( a) |
  bes2. bes4 |
  bes4. bes8 a4( g) |
  <a f>2 <bes g> |
  <c a> a |
  <d bes> <c a>4 <bes g> |
  <a f>2( <g e>) |
  a1 \bar "|."
}

sopvoicethree = \relative c'' {
  \key f \major
  \time 3/4
  \global
  \dynamicUp
  \partialfour c4 |
  d2 c4 |
  d4 d <e bes> |
  <d bes>8.( <c bes>16 <bes f>4 <a f>) |
  <bes f>2. |
  <f d>4 q8 q q q |
  <g es>2. |
  <a f>4 q8 q q q |
  <bes f>2 \breathe <c a>4 |
  d d <c a>8. q16 |
  d2 <e bes>4 |
  <d bes>8.( c16) <bes f>4 <a f> |
  <bes f>2 \bar "||"
}

sopvoicefour = \relative c' {
  \key f \major
  \time 2/4
  \global
  \dynamicUp
  \partialeight d8 |
  g8([ a]) a4 |
  c8[( bes)] a([ g)] |
  g[( f)] g([ a)] |
  a8.[( bes16 a8]) g |
  bes8[( a)] g4 |
  bes8[( a]) g[( f)] |
  e4 f |
  g8[( a bes c)] |
  a8.[( g16] a8[ bes)] |
  c4 bes8[( a)] |
  g[( a bes]) c16[( bes)] |
  a4 g |
  f g8[( a)] |
  a4 g8 a |
  bes[( a g]) fis16[( d)] |
  g4. \bar "||"
}


altvoice = \relative c' {
  \key f \major
  \time 4/4
  \global
  \dynamicUp 
  \partialfour c4 |
  f4. f8 f4 c |
  f f <f a>4\fermata r8 f |
  f4 f <f d>8 q q q |
  c2 f2 |
  g4 <fis d> g <a fis> |
  bes,4. bes8 bes8[ c] d[ e] |
  <f a>2 d4 bes |
  <c f>2 <c e>|  f1 |
  
}

altvoicetwo = \relative c' {
  \key f \major
  \time 4/4
  \global
  \dynamicUp  
  f4. e8 f4 f |
  <a f>2 f4 f |
  <c e>2( <c f>4) <c g'> |
  f1 |
  <a f>2 f |
  <e bes'> <a f>4 q |
  g2( <fis d>) |
  g2. <g c,>4 |
  q4. q8 <f c>4( <e c>) |
  f2 f |
  f f |
  bes, c4 d |
  c2~ c |
  f1
}

altvoicethree = \relative c' {
  \key f \major
  \time 3/4
  \global
  \dynamicUp  
  \partialfour <f a>4 |
  bes2 <f a>4 |
  bes4 bes g |
  f8.( e16 d4 c) |
  d2. |
  bes4 bes8 bes bes bes |
  bes2. |
  es4 es8 es es es |
  d2 \breathe f4 |
  bes bes f8. f16 |
  bes2 g4 |
  f8.( e16) d4 c |
  d2
}

altvoicefour = \relative c' {
  \key f \major
  \time 2/4
  \global
  \dynamicUp  
  \partialeight r8 |
  d2 |
  d |
  d |
  d |
  c |
  c |
  c |
  c |
  f |
  f |
  c |
  f4 c |
  d c |
  f c |
  c4. d8 |
  d4.
}


lyricscore = \lyricmode {
  Хри -- стос а -- нэ -- сти эк нэ -- крон,
  фа -- на -- то фа -- на -- тон па -- ти -- сас,
  кэ тис эн тис мни -- ма -- си зо -- ин
  ха -- ри -- са -- мэ -- нос.
}

lyricscoregreek = \lyricmode {
  [Χρισ -- τός α̉ -- νέ -- στη ε̉κ νεκ -- ρω̂ν, 
  θα -- νά -- τω θά -- να -- τον πα -- τή -- σας, 
  καὶ τοὶς ε̉ν τοὶς μνή -- μα -- σι ζω -- ὴν χα -- ρι -- σά -- με -- νος.]
}

lyricscoretwo = \lyricmode {
  Хрис -- тус рэ -- зу -- рек -- сит э мо -- рту -- ис,
  мор -- тэ мор -- тэм каль -- ка -- вит
  эт эн -- ти -- бус ин сэ -- пуль -- хрис ви -- там до -- на -- вит.
}

lyricscoretwolatin = \lyricmode {
  [Chri -- stus re -- sur -- re -- xit e mor -- tu -- is,
  mor -- te mor -- tem cal -- ca -- vit
  et en -- ti -- bus in se -- pul -- chris vi -- tam do -- na -- vit.]
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
    %ragged-bottom = ##t
    ragged-last-bottom = ##f
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoregreek }

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
      
       \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
       \new Lyrics \lyricsto "soprano" { \lyricscoretwolatin }
      
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }

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
        \new Voice = "soprano" { \voiceOne \sopvoicefour }
        \new Voice  = "alto" { \voiceTwo \altvoicefour }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoregreek }

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
        \new Voice = "soprano" { \voiceOne \sopvoice \sopvoicetwo \sopvoicethree \sopvoicefour}
        \new Voice  = "alto" { \voiceTwo \altvoice \altvoicetwo \altvoicethree \altvoicefour}
      >> 
      
      \new Lyrics = "sopranos"
      

      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore \lyricscoretwo \lyricscorethree \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=90
    }
  }
}
