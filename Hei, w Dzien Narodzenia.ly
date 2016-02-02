\version "2.18.2"

global = { \time 3/4 \key c \major }

sopIvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  R2.*12 | c2~ c4 | e2 c8[ b] | c2. \bar "||"
  
}

sopIIvoice = \relative c'' {
  \global
  \autoBeamOff
  R2.*12 | g2~ g4 | c2 g4 | g2. \break
}

altbegin = \relative c' {
  \global
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-numbers
  \mark \default 
  c8 d e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 | \break
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 | \break
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 g | c8. d16 e4 f | g2 e8[ d] | <c e>2.
}

sopvoice = \relative c'' {
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-alphabet
  \mark \markup { \musicglyph #"scripts.segno" }
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 b | c8. <b d>16 <c e>4 <d f> | <c g'>2 e8[ d] | << c2. {s8 s s s s \mark \markup { \musicglyph #"scripts.coda" } s } >> \break 
  \set Score.markFormatter = #format-mark-box-numbers
  \mark \default
  R2.*2 | c,8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 | \break
  c8. d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 | 
  
  g2 g4 | g2. | fis2( a4) | g2. | <c, c'>8.^"SI" <d d'>16 <e e'>4 <f f'> | <g g'>2 <e e'>8[ <d d'>] | c2. \bar "||"
  
  \mark \markup { \musicglyph #"scripts.segno" \musicglyph #"scripts.coda" }
  c8. \mark \default d16 e4 f | g2 a8[ g] | f8. e16 f4 a | g e2 |
  c'8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  f2 f4 | e8. d16 e4 g | d2 c4 | b8. a16 b4 g | c8. <b d>16 <c e>4 <d f> | <e g>2 e8[ d] | c2. \mark \markup { \musicglyph #"scripts.segno" \musicglyph #"scripts.coda" } \bar "|."
}

altvoice = \relative c' {
  \autoBeamOff
  b'2 b4 | c8. c16 c4 c | fis,2 a4 | g8. g16 g4 g | g2~ g4 | e2 g8[ f] | e2. \bar "||"
  
  R2.*2 | c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 |
  
  f2 f4 | e8. d16 e4 g | fis2( d4) | d2. | c8. d16 e4 f | g2 e8[ d] | c2.
  
  
  c8. b16 c4 d | e2 f8[ e] | d8. c16 d4 f | e c2 | 
  e8. d16 e4 f | g2 a8[ g] f8. e16 f4 a | g e2 |
  b' b4 | g8. g16 g4 g | a2 a4 | g8. g16 g4 g |
  g8. g16 g4 g | g2 g8[ f] e2.
}

tenorvoice = \relative c'' {
  \global
  \autoBeamOff
  R2.*15
  g2 g4 | g8. f16 g4 e | d2 d4 | d8. c16 d4 b | g'2~ g4 | e2 c8[ b] c2.
  
  g2 g4 | g2 g4 | g2 g4 | g2 g4 | g2 g4 | g2 g4
  c2 c4 | c2 c4  b2 b4 | c2 c4 |
  
  <g b>2 q4 | <g c>2. | d'2 c4 | b8. a16 b4 g | c8. d16 e4 f | g2 e8[ d] | c2.
  
  g8. g16 g4 g | g2 g4 | g8. g16 g4 g | g g2 | 
  c8. c16 c4 c | c2 c4 | b8. b16 b4 b | c c2 | 
  d d4 | c8. c16 c4 e | d2 d4 | d8. c16 d4 b |
  c8. c16 c4 c | c2 c8[ b] g2.
 
}

bassvoice = \relative c' {
    \global
    \autoBeamOff 
    R2.*15
    g4( a) b | c8. c16 c4 c | d,4( e) fis | g8. g16 g4 g | c2~ c4 | c2 g4 | <c, g'>2.
    c2 c4 | c2 c4 | c2 c4 | c2 c4 | g2 g4 | c2 c4 |
    <c g'>2 q4 | q2 q4 | <g g'>2 q4 | <c g'>2 q4 |
    
    g4( a) b | c2. | d4( e fis) | g2.
    c,8. d16 e4 f | g2 e8[ d] c2.
    
    c8. c16 c4 c | c2 c4 | g8. g16 g4 g | c c2 | 
    <c g'>8. q16 q4 q | q2 q4 | <g g'>8. q16 q4 q | <c g'>4 q2 |
    g' g4 g8. g16 g4 g | fis2 fis4 | g8. g16 g4 g |
    c,8. c16 c4 c | c2 g4 | c2.
    
}

verseone = \lyricmode {
  Хэй, в_Дж'ень на -- ро -- дзэ -- н'а Сы -- на Йе -- ды -- нэ -- го
  Ой -- ца Пше -- дв'е -- чнэ -- го, Бо -- га Пра -- вдж'и -- вэ -- го
  Вэ -- со -- ўа щп'е -- вай -- мы хва -- \markup{ "ўэ"\tiny"н"} Бо -- гу дай -- мы. Хэй, ко -- \markup{ "л'э"\tiny"н"} -- да, 
  ко -- \markup{ "л'э"\tiny"н"} -- да!
}
 
kolenda= \lyricmode {
  Хэй, __ ко -- \markup{ "л'э"\tiny"н"} -- да!
  
}

versesop = \lyricmode {
  Вэ -- со -- ўа щп'е -- вай -- мы хва -- \markup{ "ўэ"\tiny"н"} Бо -- гу дай -- мы. Хэй, ко -- \markup{ "л'э"\tiny"н"} -- да, 
  ко -- \markup{ "л'э"\tiny"н"} -- да!   

  Пан -- на по -- ро -- дж'и -- ўа н'е -- б'ес -- к'е Дж'е -- \markup{"ч'е"\tiny"н""т"} -- ко
  В_жўо -- б'е по -- ўо -- жы -- ўа ма -- ўэ Па -- хо -- \markup{"л'о"\tiny"н""т"} -- ко
  
  Па -- стэ -- жэ гра -- йон. 
  Хэй, ко -- \markup{ "л'э"\tiny"н"} -- да, ко -- \markup{ "л'э"\tiny"н"} -- да!
  
  Ско -- ро па -- сту -- шко -- в'е о тым у -- сўы -- шэ -- л'и.
  За раз до Бэт -- л'э -- йем чым \markup{ "прэ"\tiny"н"} -- дзэй -- б'я -- жэ -- л'и.
  Ви -- та -- йён Дж'е -- \markup{"ч'е"\tiny"н""т"} -- ко Ма -- ўэ Па -- хо --  \markup{"л'о"\tiny"н""т"} -- ко
  
  Хэй, ко -- \markup{ "л'э"\tiny"н"} -- да, ко -- \markup{ "л'э"\tiny"н"} -- да!
}

versesecond = \lyricmode {
  \repeat unfold 12 \skip 1
  Хэй, __ ко -- \markup{ "л'э"\tiny"н"} -- да!
   \repeat unfold 27 \skip 1 
   щп'е -- ва -- \markup{ "йо"\tiny"н"}
}

versetenor = \lyricmode {
   \repeat unfold 39 \skip 1 
  На муль -- тан -- ках гра -- йон
}

versebass=\lyricmode { 
  \repeat unfold 16 \skip 1
  Ла -- ла, ла -- ла. Ла -- ла, ла -- ла, ла -- ла, ла -- ла.
  Ла -- ла, ла -- ла, ла -- ла, ла -- ла.
  Па -- стэ -- жэ гра -- йон.
}

%#(set-global-staff-size 19)
\paper {
  #(set-default-paper-size "a4")
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 15
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(include-special-characters)
  indent = 0
}

\header {
  title = "Hej, w Dzien' Narodzenia"
  subtitle = " "
  %opus = "№ 140"
  %composer = \markup { \column { "т.: Йозеф Мор, 1816г" "м.: Франц Грубер, 1818г" }}
  %arranger = "перелож для см. хора"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\score {
  \new ChoirStaff
  <<
   
    
    \new Staff = #"sisii" \with {
      shortInstrumentName = \markup { \column { "SI" "SII"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "sopranoi" { \voiceOne \sopIvoice }
      \new Voice  = "sopranoii" { \voiceTwo \sopIIvoice }
    >>
    \new Lyrics \lyricsto "sopranoi" { \kolenda }
    
    \new Staff = #"sa" \with {
      shortInstrumentName = \markup { \column { "S" "A"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice  = "soprano"  { \clef treble \global s2.*15 \voiceOne \sopvoice }
      \new Voice = "alto" { \global s2.*15 \voiceTwo \altvoice }
    >>
    \new Lyrics \lyricsto "soprano" { \versesop }
    \new Lyrics \lyricsto "alto" {\versesecond }
    
     \new Staff = #"asii" \with {
      shortInstrumentName = "A"
      instrumentName = \markup { \column { "A" "(SII)"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "altobegin" { \oneVoice \altbegin }
    >> 
    \new Lyrics \lyricsto "altobegin" { \verseone }
    
    \new Staff \with {
      shortInstrumentName = \markup { \column { "T" "B" } }
      midiInstrument = "voice oohs"
    } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" {  \voiceTwo \bassvoice }
    >>
        \new Lyrics \lyricsto "tenor" { \versetenor }
        \new Lyrics \lyricsto "bass" { \versebass }


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
