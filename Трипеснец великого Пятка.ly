\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Трипеснец Великого Пятка"
  subtitle = "(глас 6)"
  composer = "Киевского напева"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
                                                   grob-interpret-markup grob (                         
                                                                                let (( dyntxt (ly:grob-property grob 'text ) )  )
                                                                                ( set! dyntxt (cond
                                                                                               (( equal? dyntxt "f" ) "гр." ) 
                                                                                               (( equal? dyntxt "p" ) "т." )
                                                                                               )) #{ \markup \normal-text \italic $dyntxt #} )
                                                   )) }



melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key fis \minor
  \autoBeamOff
  \time 2/2
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c'' {
  \global
  \partial 4 gis4 |
  a2( gis) |
  a4.( gis8) a[( b]) cis[( a]) |
  gis2 b8[( a]) gis[( a]) |
  b2 b4 a8[( b]) | \abr
  
  cis4( b a gis) |
  a2. b4 |
  cis2 cis4 cis8[( b]) |
  cis[( d cis b] a[ b]) cis4 |
  b2 cis4 b | \abr
  
  a2 gis4 a |
  a8[( gis]) a[( b]) cis4 b |
  a2 gis |
  a8[( b]) cis4 b a8[( gis]) |
  a2 cis4 b | \abr
  
  a2 gis4 r |
  cis2. b4 |
  cis2 cis |
  cis4( b8[ cis] d4) cis |
  b2 \breathe b4 b |
  cis2( b4) b | \abr
  
  a2( gis) |
  a1 \bar "||"
 
}


altvoice = \relative c' {
  \global
  \partial 4 eis4 |
  fis2( eis) |
  fis4.( eis8) fis[( gis]) a[( fis]) |
  eis2 gis8[( fis]) eis[( fis]) |
  gis2 gis4 fis8[( gis]) |
  
  a4( gis fis eis) |
  fis2. gis4 |
  a2 a4 a8[( gis]) |
  a[( b a gis] fis[ gis]) a4 |
  gis2 gis4 gis |
  
  fis2 eis4 fis |
  fis8[( eis]) fis[( gis]) a4 gis |
  fis2 eis |
  fis8[( gis]) a4 gis fis8[( eis]) |
  fis2 gis4 gis |
  
  fis2 eis4 r |
  a2. gis4 |
  a2 a |
  a4( gis8[ a] b4) a |
  gis2 gis4 gis |
  a2( gis4) gis |
  
  fis2( eis) |
  fis1
}


tenorvoice = \relative c' {
  \global
  \partial 4 cis4 |
  cis1 |
  cis2 cis4 cis |
  cis2 cis4 cis |
  cis2 cis4 cis8[( e]) |
  
  e4( d cis2) |
  cis2. e4 |
  e2 e4 e |
  e2( cis8[ e]) e4 |
  e2 cis4 cis |
  
  cis2 cis4 cis |
  cis cis8[( e]) e4 d |
  cis2 cis |
  cis8[( e]) e4 e cis |
  cis2 cis4 cis |
  
  cis2 cis4 r |
  e2. e4 |
  e2 e |
  e2. e4 |
  e2 \breathe e4 e |
  e2( d4) d |
  cis1 |
  cis
}


bassvoice = \relative c {
  \global
  \partial 4 cis4
  fis2( cis) |
  fis2 fis4 fis |
  cis2 cis4 cis |
  cis2 cis4 fis8[( e]) |
  
  a,4( b cis2) |
  fis2. e4 |
  a2 a4 a |
  a8[( gis a e] fis[ e]) a,[( cis]) |
  e2 eis4 eis |
  
  fis2 cis4 fis |
  fis8[( cis]) fis[( e]) a,4 b |
  cis2 cis |
  fis8[( e]) a,4 b cis |
  fis2 eis4 eis |
  
  fis2 cis4( b) |
  a2( cis4) e |
  a2 a |
  a,( gis4) a8[( cis]) |
  e2 e4 e |
  a,2( b4) b |
  
  cis1 |
  <fis fis,>
}

lyricscore = \lyricmode {
 К_Те -- бе́ у́ -- тре -- ню -- ю, ми -- ло -- се́ -- рди -- я
 ра́ -- ди Се -- бе́ и -- сто -- щи́ -- вше -- му не -- пре -- ло́ -- жно,
 и до стра -- сте́й без -- стра́ -- стно пре -- кло́ -- нше -- му -- ся,
 Сло́ -- ве Бо́ -- жий, мир по -- да́ждь ми па́ -- дше -- му, Че -- ло -- ве -- ко -- лю́ -- бче. 
}

%abr = {\break}

sopvoicer = \relative c'' {
  \global
  \partial 2 gis2 |
  a4( gis8[ a] b4 a) |
  gis2. r4 |
  cis2 cis4 cis8[( b]) |
  cis[( d cis b] a4) a |
  gis2 r4 gis | \abr
  
  a4 a8. a16 gis2 |
  a4( gis8[ a] b4) a |
  gis2 cis4 b |
  a8[( cis b cis] d[ cis b a]) | \abr
  
  gis2 \breathes gis4 a |
  b2 b4 b |
  b b b8[( a]) gis[( a]) |
  b2 b4 b |
  cis2 b4 b | \abr
  
  cis( b8[ cis] d4) cis |
  b2. cis8[( d]) |
  e4. d8 cis4 r |
  d4. cis8 b4 r |
  r cis a gis | \abr
  
  a8 a b2 a4 |
  gis2. gis4 |
  a2. b4 |
  cis2 cis4 cis |
  cis( b8[ cis] d4) cis |
  b2. b4 | \abr
  
  a4( cis) b a |
  gis gis gis a8[( b]) |
  a2. r4 |
  d4. d8 d4 d |
  cis( b a gis) |
  a1 \bar "||"
}


altvoicer = \relative c' {
  \global
 \partial 2 eis2 |
 fis4( eis8[ fis] gis4 fis) |
 eis2. r4 |
 a2 a4 a8[( gis]) |
 a[( b a gis] fis4) fis |
 eis2 r4 eis |
 
 fis4 fis8. fis16 eis2 |
 fis4( eis8[ fis] gis4) fis |
 eis2 fis4 gis |
 fis8[( a gis a] b[ a gis fis]) |
 
 eis2 eis4 fis |
 gis2 gis4 fis |
 gis gis gis8[( fis]) e[( fis]) |
 gis2 gis4 gis |
 a2 gis4 gis |
 
 a( gis8[ a] b4) a |
 gis2. a8[( b]) |
 cis4. b8 a4 r |
 b4. a8 gis4 r |
 r gis fis eis |
 
 fis8 fis gis2 fis4 |
 eis2. eis4 |
 fis2. gis4 |
 a2 a4 a |
 a( gis8[ a] b4) a |
 gis2. gis4 |
 
 fis( a) gis fis |
 eis eis eis fis8[( gis]) |
 fis2. r4 |
 fis4. fis8 fis4 fis8[( gis]) |
 a4( gis fis eis) |
 fis1
}


tenorvoicer = \relative c' {
  \global
  \partial 2 cis2 |
  cis1 |
  cis2. r4 |
  e2 e4 e |
  e2( cis4) cis |
  cis2 r4 cis |
  
  cis cis8. cis16 cis2 |
  cis2. cis4 |
  cis2 cis4 d |
  cis1 |
  
  cis2 \breathes cis4 cis |
  e2 b4 b |
  b b b b |
  b2 e4 e |
  e2 e4 e |
  
  e2. e4 |
  e2. e4 |
  e4. e8 e4 r |
  e4. e8 e4 r |
  r cis cis cis |
  
  cis8 cis cis2 cis4 |
  cis2. cis4 |
  cis2. e4 |
  e2 e4 e |
  e2. e4 |
  e2. e4 |
  
  cis2 cis4 cis |
  cis cis cis cis |
  cis2. r4 |
  gis4. gis8 gis4 a8[( b]) |
  cis1 |
  cis
}


bassvoicer = \relative c {
  \global
  \partial 2 cis2 |
  fis( eis4 fis) |
  cis2.( b4) |
  a2 <a a'>4 q |
  << { a8[( gis a e] fis[ gis])} \new Voice { \voiceFour a'2( fis4) } >> <a, fis'>8[( <b gis'>]) |
  <cis gis'>2 r4 cis |
  
  fis fis,8. gis16 cis2 |
  fis4( cis8[ fis] eis4) fis |
  cis( b) a b |
  cis1 |
  
  cis2 cis4 fis |
  e2 e4 dis |
  e e e e |
  e2 e4 e |
  a,2 e'4 e |
  
  a,2( gis4) a8[( cis]) |
  e2. a,4 |
  a'4. e8 a,4 r |
  e'4. e8 e4 r |
  r eis fis cis |
  
  fis8 fis eis2 fis4 |
  cis2. cis4 |
  fis,2( fis'4) e |
  a,2 a4 a |
  a2( gis4) a8[( cis]) |
  e2. e4 |
  
  fis2 eis4 fis |
  cis cis cis cis |
  fis2. r4 |
  b,4. b8 b4 b |
  cis1 |
  <fis fis,>
}

lyricscorer = \lyricmode {
  Столп зло́ -- бы бо -- го -- про -- ти́ -- вны -- я Бо -- 
  же́ -- стве -- нни -- и о́ -- тро -- цы о -- бли -- чи́ -- ша:
  на Хри -- ста́ же ша -- та́ -- ю -- ще -- е -- ся без -- за -- ко́ -- нных
  со -- бо́ -- ри -- ще со -- ве́ -- ту -- ет тще́ -- тна -- я,
  у -- би́ -- ти по -- у -- ча́ -- е -- тся,
  жи -- во́т Де -- ржа -- ща -- го дла -- ни -- ю:
  Е -- го́ -- же вся тварь бла -- го -- сло -- ви́т,
  сла́ -- вя -- щи во ве́ -- ки.
}

%abr = {\break}

sopvoiced = \relative c'' {
  \global
  \partial 4 gis4 |
  a2( gis4 a |
  b2~ b8[ gis a b] |
  cis2) cis4 b |
  a gis a \breathe b |
  cis( b8[ cis]) d4 cis | \abr
  
  b2 b4 b |
  cis2 b4 b |
  a2 gis |
  a2. r4 |
  <a cis>2 q | \abr
  
  <gis d'> q |
  <a cis>1 |
  q2 q |
  <gis d'> q |
  cis4. cis8 cis4 r |
  gis2( a | \abr
  
  b4) b8 b b[( gis]) a[( b]) |
  cis2 cis4 b8[( cis]) |
  d2 cis4 b |
  a2( gis) |
  a1 \fermata \bar "|."
}


altvoiced = \relative c' {
  \global
  \partial 4 eis4 |
  fis2( eis4 fis |
  gis2~ gis8[ e fis gis] |
  a2) a4 gis |
  fis eis fis gis |
  a( gis8[ a]) b4 a |
  
  gis2 gis4 gis |
  a2 gis4 gis |
  fis2 eis |
  fis2. r4 |
  e2 e |
  
  e e |
  e1 |
  e2 e |
  e e |
  a4. a8 a4 r |
  eis2( fis |
  
  gis4) gis8 gis gis[( e]) fis[( gis]) |
  a2 a4 gis8[( a]) |
  b2 a4 gis |
  fis2( eis) |
  fis1
}


tenorvoiced = \relative c' {
  \global
  \partial 4 cis4 | 
  cis1( |
  e |
  e2) e4 d |
  cis cis cis e |
  e2 e4 e |
  
  e2 e4 e |
  e2 d4 d |
  cis2 cis |
  cis2. r4 |
  a2 a |
  
  b b |
  a1 |
  a2 a |
  b b |
  e4. e8 e2 |
  cis1( |
  
  e4) e8 e e4 e |
  e2 e4 e |
  e2 e4 d |
  cis1 |
  cis
}


bassvoiced = \relative c {
  \global
  \partial 4 cis4 |
  fis2( cis4 fis |
  e1 |
  a,2) a4 b |
  cis cis fis \breathe e |
  a,2 gis4 a8[( cis]) |
  
  e2 e4 e |
  a,2 b4 b |
  cis2 cis |
  fis2. r4 |
  a,2 cis4( e) |
  
  <e, e'>2 <fis e'>4( <gis e'>) |
  <a \parenthesize e'>1 |
  a2 cis4( e) |
  <e, e'>2 <fis e'>4( <gis e'>) |
  a4. a8 a4( b) |
  cis2( fis |
  
  e4) e8 e e4 e |
  <a a,>2 q4 e8[( a,]) |
  gis2 a4 b |
  cis1 |
  <fis fis,>\fermata
  
}

lyricscored = \lyricmode {
 Че -- стне́ -- йшу -- ю хе -- ру -- ви́м
 и сла́ -- вне -- йшу -- ю без сра -- вне́ -- ни -- я се -- ра -- фи́м,
 без и -- стле́ -- ни -- я Бо́ -- га Сло́ -- ва ро́ -- ждшу -- ю, су́ --
 щу -- ю Бо -- го -- ро́ -- ди -- цу, Тя ве -- ли -- ча́ -- ем.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
   % ragged-last = ##t
  }
  \score {
    
    \header { piece = "Песнь 5" }

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
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        %  \RemoveEmptyStaves
        %  \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }

  \pageBreak
    \score {
      
          \header { piece = "Песнь 8" }

    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoicer }
        \new Voice  = "alto" { \voiceTwo \altvoicer }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscorer }
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoicer }
        \new Voice = "bass" { \voiceTwo \bassvoicer }
      >>
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        %  \RemoveEmptyStaves
        %  \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
  
      \score {
      
          \header { piece = "Песнь 9" }

    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoiced }
        \new Voice  = "alto" { \voiceTwo \altvoiced }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscored }
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoiced }
        \new Voice = "bass" { \voiceTwo \bassvoiced }
      >>
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        %  \RemoveEmptyStaves
        %  \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=90
    }
  }
}
