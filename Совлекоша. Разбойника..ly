\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Совлекоша с Мене…"
  subtitle = "На Хвалитех: Слава (гл. 6)"
%  composer = "Composer"
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
  \key g \minor
  \numericTimeSignature
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c'' {
  \global
  \time 3/4
  \dynamicUp
  \autoBeamOff
  \partial 4 bes8 c |
  d4 c bes |
  a2.\( |
  d4\) c bes |
  a4. a8 a bes |
  c4 c c |
  c bes c |
  c8[( bes] c2) | \abr
  
  bes2 \breathes \bar ""  d8 d |
  d4. d8 es es |
  f4. f8 es d |
  d4( c) es8[( d]) |
  d4 c \breathes \bar ""  d8 c |
  bes a bes d c bes | \abr
  
  a2 a4 |
  bes2. \breathes |
  bes4 c d |
  es2. |
  c \breathe |
  c4 d es |
  f2. |
  d2. | \abr
  
  
  d4 bes bes8[( c]) |
  d4 c bes |
  d2 c4 |
  bes2 \breathes g4 |
  d'2 c8 bes |
  es2 d8[( c]) |
  d4 bes \breathes \bar ""  bes | \abr
  
  a4. a8 bes c |
  d4. d8 c bes |
  a4. bes8 a g |
  d4 d\fermata \breathes \bar ""  a' |
  bes bes c | \abr
  
  d4. d8 es d |
  c2 d4 |
  es4.( f8) es d |
  c4( g)\fermata \breathes d'8 d |
  es4 d cis |
  d2.~ |
  <bes d> |
  q \bar "||"
}


altvoice = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g8 a |
  bes4 a g |
  fis2.\( |
  bes4\) a g |
  fis4. fis8 fis g |
  a4 a a |
  a g a |
  a8[( g] a2) |
  
  g2 bes8 bes |
  bes4. bes8 c c |
  d4. d8 c bes |
  bes4( a) c8[( bes]) |
  bes4 a bes8 a |
  g fis g bes a g |
  
  fis2 fis4 |
  g2. |
  g4 a bes |
  c2. |
  a2. |
  a4 bes c |
  d2.|
  bes |
  
  bes4 g g8[( a]) |
  bes4 a g |
  bes2 a4 |
  g2 g4 |
  bes2 a8 g |
  c2 bes8[( a]) |
  bes4 g g |
  
  fis4. fis8 g a |
  bes4. bes8 a g |
  fis4. g8 fis es? |
  d4 d fis |
  g g a |
  
  bes4. bes8 c bes |
  a2 bes4 |
  c4.( d8) es bes |
  a4( g) d8 d |
  es4 d cis |
  d2.( |
  g) |
  g
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 d8\f d |
  d4 d\> d |
  d2.\p\<\( |
  d4\) d\f\> d |
  d4.\! d8 d d |
  d4 d d |
  d d d |
  d2.\mf\> |
  d2\p \breathes f8\mf\< f |
  f4. f8 f f |
  f4.\! f8\> f f |
  f2\! f4\> |
  f\! f \breathes d8 d |
  d d d d\> d d |
  
  d2 d4\p d2. \breathes
  d4\p\< d d |
  g2.\> |
  f2.\pp \breathe |
  f4\f\< f f\> |
  f2. |
  f2.\p |
  
  d4 d d |
  d d d |
  d2\> d4 |
  d2\! \breathes g4\f |
  g2 g8 g |
  g2 g4 |
  d4 d\breathes d\sp |
  
  d4. d8 d d |
  d4. d8 d d |
  d4. c8 d a |
  d4 d \breathes d\mp |  
  d d f |
  
  f4. f8 f f |
  f2 f4 |
  f2 f8 f |
  f4( g\p) \breathes d8 d |
  es4 d cis |
  d2.~ |
  d |
  d
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g8 g |
  g4 fis g |
  d2.\( |
  d4\) d d |
  d4. d8 d d |
  d4 d d |
  d d d |
  d( fis2) |
  
  g2 <bes bes,>8 q |
  q4. q8 f f |
  bes4. bes8 a bes |
  f2 f4 |
  f f d8 d |
  g d g g fis g |
  
  d2 d4 |
  <g g,>2. |
  g4 g g |
  c,2. |
  f |
  f4 g a |
  bes2. |
  <bes bes,> |
  
  g4 g g |
  g fis g |
  d( e) fis |
  g2 g4 |
  g2 g8 g |
  g2 g4 |
  g <g g,> q |
  d4. c8 bes a |
  g4. g8 fis g |
  d'4. es8 d cis |
  d4 d\fermata d |
  g g f |
  
  bes,4. bes8 a bes |
  f'2 f4 |
  f2 f8 f |
  f4( g)\fermata d8 d |
  es4 d cis |
  d2.( |
  g) |
  g
  
}

lyricscore = \lyricmode {
  Со -- вле -- ко́  -- ша с_Ме -- не́ ри́ -- зы Мо -- я́ и о -- бле -- ко́ -- ша Мя в_ри́ -- зу че -- рвле́ --
  ну, во -- зло -- жи́ -- ша на гла -- ву́ Мо -- ю ве -- не́ц от те́ -- рний, и в_де -- сну́ -- ю Мо -- ю́ ру -- ку́
  вда́ -- ша трость, да со -- кру -- шу́ их, да со -- кру -- шу́ их
  я́ -- ко со -- су́ -- ды ску -- де́ -- льни -- чи.
  
  Пле -- щи́ Мо -- я́ дах на ра́ -- ны, ли --
  ца́ же Мо -- е -- го́ не о -- твра -- ти́х от за -- пле -- ва́ -- ний, су -- ди́ -- щу Пи --
  ла́ -- то -- ву пре -- дста́х и Крест пре -- те -- рпе́х за спа -- се́ -- ни -- е ми́ -- ра.
}

%abr = {\break}

sopvoicer = \relative c'' {
  \global
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \partial 4 g4 |
  d'( c8[ d] bes4) <a fis> |
  \time 2/4 <bes g>2~ |
  \time 4/4 q4 g a bes |
  c( es f) es |
  d2 \breathe d4 c8[( d]) | \abr 
  
  f4.( es8) d4 c |
  \time 2/4 bes2 |
  \time 4/4 c4. c8 bes4 c |
  d4 c8 bes a4( bes8[ c]) | \abr
  
  bes4( a8[ g] a4) bes8[( a]) |
  \time 2/4 g2 |
  \time 4/4 d'4 d g( f8[ g]) |
  es4.( c8 bes4) c |
  d4. d8 c4 bes | \abr
  
  a2 \breathes g4 g |
  c2( <bes g>4 <g e> |
  a2 d4 c) |
  <bes g>1 \bar "|."
}


altvoicer = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g4 |
  bes4( a8[ bes] g4) d |
  d2~ |
  d4 g f g |
  g2( a4) g8[( a]) |
  bes2 bes4 a8[( bes]) 
  
  d4.( c8) bes4 a |
  g2 |
  es4. es8 d4 f |
  f es8 d es2 |
  
  g2. g8[( fis]) |
  g2 |
  bes4 bes bes2 |
  g( f4) f |
  f4. f8 es4 g |
  
  fis2 es4 f |
  es2( d |
  <d fis>1) |
  d
}


tenorvoicer = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4  g4 |
  <bes d>4( <a c>8[ <bes d>] bes4) a |
  g2~\< |
  g4\! g a bes |
  c2( d4) f |
  <f \parenthesize bes,>2 \breathe f4 f |
  
  f2 f4 f |
  d2 |
  c4. c8 bes4 a |
  bes a8 g g2 |
  
  g4( a8[ bes] c4) d |
  g,2 |
  d'4\f d <es bes>2 |
  << c2( { \voiceThree g4 a } >> bes4) a |
  bes4. bes8 g8[(\> a]) bes4 |
  
  d2\! \breathes bes4\p b |
  g8[( a bes? c] d2 |
  a1)\> |
  g\!
}


bassvoicer = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4 g4 |
  g2. d4 |
  <d g,>2~ |
  q4 g f es8[( d]) |
  es2( d4) c |
  <bes \parenthesize f'>2  bes'4 a8[( g]) |
  f2 f4 <f f,> |
  << { g,( bes) c4. } \new Voice { \voiceFour g'2~ g4. } >> <g c,>8 g4 f |
  bes, c8 d c2 |
  
  d2. d4 |
  g2 |
  g4 f es( d) |
  c4.( es8 d4) c |
  bes4. bes8 c4 d |
  
  d2 es4 d |
  << { c2( d d1) } \new Voice { \voiceFour g2( g4 bes a1) } >>
  \arpeggioBracket <d, g,>1\arpeggio
  
}

lyricscorer = \lyricmode {
  Ра -- збо́ -- йни -- ка __ бла -- го -- ра -- зу́ -- мна -- го, во е -- 
  ди́ -- ном ча -- се́ ра́ -- е -- ви спо -- до́ -- бил е -- си́, __
  Го́ -- спо -- ди, и ме -- не́ __ Дре́ -- вом Кре́ -- стным про -- све --
  ти́, и спа -- си́ __ мя.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
  }
  \score {
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
}

\bookpart {
  
  \header {
  title = "Разбойника благоразумнаго…"
  subtitle = "Эксапостиларий"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

    \score {
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
}
