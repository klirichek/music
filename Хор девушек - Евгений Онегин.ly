\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  subtitle = "Картина третья. № 11. Хор девушек"
  title = "Евгений Онегин"
  composer = "П. И. Чайковский"
  poet = "П. Чайковский, К. Шиловский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key a \major
  \time 3/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Staff.extraNatural = ##f
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
  \tempo "Allegro moderato" 4=112
  R2.*24 |
  cis4.\f <b e>8 a b |
  cis4. <b e>8 << {\voiceOne a8[( cis])} \new Voice {\voiceTwo a4} >> \oneVoice |
  b4 fis fis8 gis |
  a4. fis8 e4 | \abr
  cis'4. <b e>8 a b |
  cis4. <b e>8 << {\voiceOne a8[( cis])} \new Voice {\voiceTwo a4} >> \oneVoice |
  b4 fis fis8 gis |
  a4. fis8 e4 |
  <g e'>4. <g d'>8 <g cis> <g b> |
  <fis a>4 q q |
  <e a>8 q q4 <e gis> |
  e4. gis8 e4 |
  <g e'>4. <g d'>8 <g cis> <g b> | \abr
  <fis a>4 q q |
  <e a>8 q q4 <e gis> |
  e4. gis8 e4 |
  cis'8 cis <cis e>4 <bis dis> | \abr
  gis4. a8 gis4 |
  cis8 cis <cis e>4 <bis dis> |
  gis4. a8 gis4 | \abr
  gis8\p\< <fis ais> <fis b>4 cis' | 
  <b dis> <cis e> <dis! fis> |
  <dis fis>8\mf <b dis!> b <b e> dis cis |
  b8 r r4 r | \abr
  <dis fis>8 <b dis!> b <b e> dis cis |
  b r r4 r |
  <fis b>4. fis8 <fis dis'> <fis cis'> | \abr
  \mark \markup \box T <fis b>8 <e g> <fis b>4 r |
  b8 d! b4 <b cis> |
  <b dis>4. <fis b>8 q4 | \abr
  b8 d! b4 <b cis> |
  <b dis>4. <fis b>8 q4 |
  <f b>8 <b d!> <f b>4 <b cis> | \abr
  <b d>4. <e, b'>8 q4 |
  <f b>8 <b d> <f b>4 <b cis> |
  <b d>4. <e, b'>8 q4 | \abr
  R2. |
  R2. |
  cis'4. <b e>8 a8 b | \abr
  cis4. <b e>8 << {\voiceOne a8[( cis])} \new Voice {\voiceTwo a4} >> \oneVoice |
  b fis fis8 gis |
  a4. fis8 e4 | \abr
  cis'4. <b e>8 a b |
  cis4. <b e>8 << {\voiceOne a8[( cis])} \new Voice {\voiceTwo a4} >> \oneVoice |
  b4 fis fis8 gis | \abr
  a4. fis8 e4 |
  <g e'>4. <g d'>8 <g cis> <g b> |
  <fis a>4 q q | \abr
  <e a>8 q q4 <e gis> |
  e4. gis8 e4 |
  <g e'>4. <g d'>8 <g cis> <g b> | \abr
  <fis a>4 q q |
  <e a>8 q q4 <e gis> |
  e4. gis8 e4 |
  \mark \markup \box U cis'8 cis d4 e | \abr
  g4 fis8[( e]) d4 |
  b8 b cis4 d |
  fis e8[( d]) cis4 |
  e8 cis a4 e'8[( cis]) | \abr
  a4 e'8[( cis]) a4 |
  cis8 a fis4 gis |
  a cis a |
  cis8 cis d4 e | \abr
  g4 fis8[( e]) d4 |
  b8 b cis4 d |
  fis e8[( d]) cis4 |
  e8 cis a4 e'8[( cis]) |
  a4 e'8[( cis]) a4 | \abr
  cis8 a8 fis4 gis |
  a cis a |
  fis8\p fis fis4 gis |
  a4. <cis e>8 q4 |
  fis,8 fis fis4 gis | \abr
  a4. <cis e>8 q4 |
  <cis e>4.^\markup\bold riten. <a cis>8 <e a> <a d> |
  <a cis>2 <e b'>4 |
  <e a>2.~ |
  q4 r r \bar "|."
  
  
}



altvoice = \relative c'' {
  \global
  \dynamicUp
  R2.*24 |
  a4.\f gis8 fis <e gis> |
  a4. gis8 fis[( e]) |
  <d fis>4 <b d> q8 q |
  <cis e>4. <b d>8 cis4 |
  
  a'4. gis8 fis <e gis> |
  a4. gis8 fis[( e]) |
  <d fis>4 <b d> q8 q |
  <cis e>4. <b d>8 cis4 |
  a'2 a,4 |
  
  fis'4. e8 d cis |
  <b d>8 q q4 q |
  cis4. <bis dis>8 cis4 |
  a' a a, |
  
  fis'4. e8 d cis |
  <b d> q q4 q |
  cis4. <bis dis>8 cis4 |
  <e fisis>8 q gis4 fis |
  
  e4. <dis fis>8 e4 |
  <e fisis>8 q gis4 fis |
  e4. <dis fis>8 e4
  
  e8\p\< e dis4 fis |
  fis b b |
  b8\mf fis e e fis <e fis> |
  <dis fis> r r4 r |
  
  b'8 fis e e fis <e fis> |
  <dis fis> r r4 r |
  dis4. dis8 e e |
  
  dis cis dis4 r |
  <d! g!>8 <g! b> <d g>4 <e g>
  fis4. dis8 dis4 |
  
  <d! g!>8 <g! b> <d g>4 <e g> |
  fis4. dis8 dis4 |
  d!8 f d4 f |
  
  f4. d8 d4 |
  d8 f d4 f |
  f4. d8 d4 |
  
  R2. |
  R2. |
  a'4. gis8 fis <e gis>
  
  a4. gis8 fis[( e]) |
  <d fis>4 <b d> q8 q |
  <cis e>4. <b d>8 cis4 |
  
  a'4. gis8 fis <e gis> |
  a4. gis8 fis[( e]) |
  <d fis>4 <b d> q8 q |
  
  <cis e>4. <b d>8 cis4 |
  a'2 a,4 |
  fis'4. e8 d cis |
  
  <b d>8 q q4 q |
  cis4. <bis dis>8 cis4 |
  a' a a, |
  
  fis'4. e8 d cis |
  <b d>8 q q4 q |
  cis4. <bis dis>8 cis4 |
  a'8 a b4 cis |
  
  e d8[( cis]) b4 |
  d,8 d fis4 b |
  b cis8[( b]) a4 |
  g8 g fis4 cis |
  
  d e fis |
  <dis fis>8 q dis4 <d e> |
  <cis e> a' a |
  a8 a b4 cis |
  
  e d8[( cis]) b4 |
  d,8 d fis4 b |
  d cis8[( b]) a4 |
  g8 g fis4 cis |
  d e fis |
  
  <dis fis>8 q dis4 <d e> |
  <e cis> a a |
  <d, fis>8\p q q4 q |
  <e cis>4. a8 a4 |
  <b, d>8 q q4 q |
  
  <e cis>4. a8 a4 |
  a4. e8 cis fis |
  e2 d4 |
  cis2.~ |
  cis4 r r
}


lyricscore = \lyricmode {
 Де -- ви -- цы, кра -- са -- ви -- цы, ду -- ше -- ньки, по -- дру -- же -- ньки!
 Ра -- зы -- гра -- йтесь, де -- ви -- цы, ра -- згу -- ля -- йтесь, ми -- лы -- е! За -- тя -- ни -- те
 пе -- се -- нку, пе -- се -- нку за -- ве -- тну -- ю, за -- ма -- ни -- те
 мо -- ло -- дца к_хо -- ро -- во -- ду на -- ше -- му! Как за -- ма -- ним
 мо -- ло -- дца, как за -- ви -- дим и -- зда -- ли,
 ра -- збе -- жи -- мтесь, ми -- лы -- е, за -- ки -- да -- ем ви -- ше -- ньем,
 ви -- ше -- ньем, ма -- ли -- но -- ю, кра -- сно -- ю смо -- ро -- ди -- ной!
 Не хо -- ди по -- дслу -- ши -- вать пе -- се -- нки за -- ве -- тны -- е,
 не хо -- ди по -- дсма -- три -- вать и -- гры на -- ши де -- ви -- чьи.
 
 Де -- ви -- цы, кра -- са -- ви -- цы, ду -- ше -- ньки, по -- дру -- же -- ньки,
 ра -- зы -- гра -- йтесь, де -- ви -- цы, ра -- згу -- ля -- йтесь, ми -- лы -- е! За -- тя -- ни -- те пе -- се -- нку,
 пе -- се -- нку за -- ве -- тну -- ю, за -- ма -- ни -- те
 мо -- ло -- дца к_хо -- ро -- во -- ду на -- ше -- му! Как за -- ма -- ним
 мо -- ло -- дца, как за -- ви -- дим из -- да -- ли,
 раз -- бе -- жи -- мтесь, ми -- лы -- е! За -- ки -- да -- ем ви -- ше -- ньем!
 Не хо -- ди по -- дслу -- ши -- вать пе -- се -- нки за -- ве -- тны -- е,
 не хо -- ди по -- дсма -- три -- вать и -- гры на -- ши де -- ви -- чьи!
 Не хо -- ди по -- дслу -- ши -- вать, не хо -- ди по -- дсма -- три -- вать
 и -- гры на -- ши де -- ви -- чьи! __
}

lyricscorea = \lyricmode {
  \repeat unfold 28 \skip 1
  Пе -- сню
  за -- тя -- ни -- те, пе -- се -- нку за -- ве -- тну -- ю, мо -- ло -- дца
  за -- ма -- ни -- те 
  \repeat unfold 105 \skip 1
  Пе -- сню
  за -- тя -- ни -- те, пе -- се -- нку за -- ве -- тну -- ю, мо -- ло -- дца
  за -- ма -- ни -- те 
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      
      \new Staff = "upstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \oneVoice \sopvoice }
      >> 
      
      \new Lyrics = "sopranos"
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "alto" { \oneVoice \altvoice }
      >>

  \new Lyrics \lyricsto "alto" { \lyricscorea }

      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }

    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
        
      }
      \context {
        \Staff
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
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \altvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=112
    }
  }
}
