\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  title = "Пряха"
  subtitle = "Русская народная песня"
  composer = "Обработка В. Золотарёва"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

abr = { \break }
%abr = {}

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
    ))}

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
  \key f \major
  \time 6/8
  \numericTimeSignature
    \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \override DynamicText.X-offset = #-2.5
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t
}

sopvoiceup = \relative c'' {
  \global
  \voiceOne
  \mark \default
  \tempo "Не скоро"
  c4 a8 d4 c8 |
  c4. bes |
  c,8[( e]) g d'4 c8 |
  a4.~ a4 r8 | \abr
  
  f8[( a]) c f4 e8 |
  e4. d |
  e4 d8 c4 bes8 |
  a4.~ a4 r8 | \abr
  
  f8[( a]) c f4 e8 |
  e4. d |
  e4 d8 c4 a8 |
  f4.~ f4 r8 | \abr
  
  R2.*12
  c'4 a8 d4 c8 |
  c4. bes |
  c,8[( e]) g d'4 c8 |
  a4.~ a4 r8 |
  f8[( a]) c f4 e8 |
  e4. d | \abr
  
  e4 d8 c4 bes8 |
  a8 a c a'4 g8 |
  g4. f |
  e4 d8 c4 e,8 |
  f4.~ f4 r8 | \abr
  
  \mark \default
  c'4 a8 d4 c8 |
  c4. bes |
  c,8[( e]) g d'4 c8 |
  a4.~ a4 r8 |
  f[( a]) c f4 e8 |
  e4. d | \abr
  e4 d8 c4 bes8 |
  a4.~ a4 r8 |
  f8[( a]) c a'4 g8 |
  g4. f |
  e4^\markup\italic"rit." d8 c4 g'8 |
  f2.\fermata \bar "|."
  
  
  
}

sopvoice = \relative c'' {
  \global
  \voiceTwo
  a4 f8 bes4 a8 |
  a4. g |
  c,8[( e]) g bes4 a8 |
  f4.~ f4 r8 |
  
  f8[( a]) c d4 c8 |
  c4. bes |
  c4 bes8 a4 g8 |
  f4.~ f4 r8 |
  
  f8[( a]) a a4 a8 |
  c4. bes |
  g4 bes8 a4 e8 |
  f4.~ f4 r8 |
  
    R2.*12
  c'4 a8 d4 c8 |
  c4. bes |
  c,8[( e]) g bes4 a8 |
  a4.~ a4 r8 |
  f8[( a]) c c4 c8 |
  c4. bes |
  
  c4 bes8 a4 g8 |
  a a c f4 e8 |
  d4. f |
  e4 d8 c4 e,8 |
  f4.~ f4 r8 |
  
  a4 f8 bes4 a8 |
  a4. g |
  c,8[( e]) g bes4 a8 |
  f4.~ f4 r8 |
  f8[( a]) c d4 c8 |
  c4. bes |
  
  c4 bes8 a4 g8 |
  a4.~ a4 r8 |
  f8[( a]) c f4 e8 |
  e4. d |
  e4 d8 c4 bes8 |
  a2.
}

altvoice = \relative c' {
  \global
  \voiceOne
  R2.*8
  f4 e8 d4 f8 |
  f4. f |
  c4 f8 e4 e8 |
  f4.~ f4 r8 |
  
  \oneVoice
  R2.*12
  a4 f8 bes4 a8 |
  a4. g |
  c,8[( e]) e e4 e8 |
  f4.~ f4 r8 |
  d8[( f]) f f4 f8 |
  f4. f |
  
  e4 e8 e4 e8 |
  f8 f a a4 a8 |
  bes4. bes |
  bes4 bes8 a4 a8 |
  f2.~ |
  f_\markup\italic"(закр. ртом)" |
  d |
  c4. e |
  f2. |
  d4. f~ |
  f2. |
  e |
  f |
  f4 a8~ a4. |
  bes2.~ |
  bes |
  a2.\fermata
  
}

altvoiceii = \relative c' {
  \global
  \voiceTwo  R2.*8
  f4 e8 d4 c8 |
  bes4. g |
  c4 c8 c4 c8 |
  f4.~ f4 r8 |
  
  s2.*23
  
}


tenorvoice = \relative c' {
  \global
  \voiceOne
  R2.*12
  \mark \default
  c4 a8 d4 c8 |
  c4. bes |
  c,8[( e]) g d'4 c8 |
  a4.~ a4 r8 |
  f8[( a]) c f4 e8 |
  e4. d | \abr
  
  e4 d8 c4 bes8 |
  a4.~ a4 r8 |
  f8[( a]) c f4 e8 |
  e4. d |
  e4 d8 c4 a8 |
  f4.~ f4 r8 | \abr
  
  \mark \default
  f'2.( |
  e4. d |
  c2.)
  c4 d8 c4 d8 |
  f4 f8 c4 c8 |
  c4. bes | \abr
  
  g8 g4 c4 c8 |
  c c f a4 g8 |
  g4. g |
  g4 f8 e4 c8 |
  a2.~ |
  a_\markup\italic"(закр. ртом)" |
  g |
  bes |
  c4 a8 d4 c8 |
  c4. c~ |
  c bes |
  g c~ |
  c4 a8 c4 f8 |
  a4. f4 e8~ |
  e4. g~ |
  g4 f8 e4. |
  f2.\fermata
  
}

tenorvoiceii = \relative c' {
  \global
   \voiceTwo   R2.*12
   a4 a8 bes4 a8 |
   a4. g |
   c,8[( e]) g bes4 a8 |
   f4.~ f4 r8 |
   f8[( a]) a a8[( bes]) c |
   c4. bes |
   
   g4 bes8 a4 g8 |
   f4.~ f4 r8 |
   f[( a]) a a4 c8 |
   c4. bes |
   g4 bes8 a4 g8 |
   f4.~ f4 r8 |
   
   f'2.( |
   e4. d |
   c2.) |
   c4 d8 c4 d8 |
   c4 c8 c4 c8 |
   c4. bes |
   
  g8 g4 c4 c8 |
  c c f f4 e8 |
  e4. d |
  e4 f8 e4 c8 |
  a2.~ |
  a |
  g |
  bes |
  c4 a8 d4 c8 |
  a4. c~ |
  c bes |
  g c~ |
  c2. |
  f,8[( a]) c cis4.~ |
  cis d4. |
  c?2. |
  a2.
  
}


bassvoice = \relative c {
  \global
  \voiceOne
  R2.*12
  f4 f8 f4 f8 |
  c4. c |
  c8[( e]) g e4 c8 |
  f4.~ f4 r8 |
  f4 f8 f[( g]) a |
  bes4. bes, |
  
  c4 c8 c4 e8 |
  f4.~ f4 r8 |
  f4 e8 d4 f8 |
  f4. f |
  c4 f8 e4 e8 |
  f4.~ f4 r8 |
  f2.~ |
  f~ |
  f |
  a4 a8 a4 a8 |
  a4 a8 a4 f8 |
  f4. f |
  
  c4 c8 c4 c8 |
  f a c c4 c8 |
  bes4. bes |
  c c, |
  c4( d8 c4 d8) |
  
  c4( d8 c4 d8) |
  c4( d8 c4 d8) |
  c4( d8 c4 d8) |
  c2. |
  d4. f~ |
  f2. |
  c |
  f2.~ |
  f ~ |
  f |
  c |
  f
}

bassvoiceii = \relative c {
  \global
  \voiceTwo R2.*12
  f4 f8 f4 f8 |
  c4. c |
  c8[( e]) g e4 c8 |
  f4.~ f4 r8 |
  f4 f8 f[( g]) a |
  bes4. bes, | 
  
  c2. |
  c4 d8 c4 a8 |
  f4.~ f4 a8 |
  bes4. g |
  c2. |
  f4.~ f4 r8 | 
  
  f,2.~ |
  f~ |
  f |
  f'4 f8 e4 e8 |
  d4 d8 a4 a8 |
  bes4. g |
  
  c4 c8 c4 c8 |
  f f e d4 a'8 |
  bes4. bes |
  c c, |
  f,2.~ |
  f~_\markup\italic"а…" |
  f~ |
  f~ |
  f |
  d'4. a |
  bes g |
  c2. |
  f2.~ |
  f4.( a, |
  bes2.) |
  c |
  f,\fermata
  
}

lyricsi = \lyricmode {
 В_ни -- зе -- нькой све -- тё -- лке
 о -- го -- нёк го -- рит,
 мо -- ло -- да -- я пря -- ха под о -- кном си -- дит,
 мо -- ло -- да -- я пря -- ха под о -- кном си -- дит.
 Ру -- са -- я го -- ло -- вка, ду -- мы без ко -- нца…
 Ты о чём ме -- чта -- ешь,
 де -- ви -- ца кра -- са?
 Ты о чём ме -- чта -- ешь, де -- ви -- ца кра -- са?
 В_ни -- зе -- нькой све -- тё -- лке о -- го -- нёк го -- рит.
 Мо -- ло -- да -- я пря -- ха под о -- кном си -- дит,
 мо -- ло -- да -- я пря -- жа под о -- кном си -- дит.
}


lyricsa = \lyricmode {
  \repeat unfold 11 \skip 1
  
}

lyricst = \lyricmode {
  Мо -- ло -- да, кра -- си -- ва, ка -- ри -- е гла -- за
  по пле -- чам ра -- зви -- та ру -- са -- я ко -- са
  по пле -- чам ра -- зви -- та ру -- са -- я ко -- са.
  А… Ду -- мы без ко -- нца… О чём ме -- чта -- ешь,
  де -- ви -- ца кра -- са? Ты о чём ме -- чта -- ешь, де -- ви -- ца кра -- са?
  
}

lyricsb = \lyricmode { 
  \repeat unfold 17 \skip 1
  ру -- са -- я ко -- са, по пле -- чам ра -- зви -- та ру -- са -- я ко -- са.
 
}

lyricsbii = \lyricmode { 
  \repeat unfold 17 \skip 1
  ру… ру -- са -- я ко -- са, ра -- зви -- та ко -- са.
  А…
  Ду -- мы без ко -- нца… О чём ме -- чта -- ешь,
  де -- ви -- ца кра -- са? Ты о чём ме -- чта -- ешь,
  де -- ви -- ца?‥
}

\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\score {
  
    \new ChoirStaff <<
      \new Staff = "sopstaff" \with {
        instrumentName = "Сопрано"
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "sopranoii" { \voiceOne \sopvoiceup }
        \new Voice = "soprano" { \sopvoice }
      >>
      \new Lyrics \lyricsto "soprano" { \lyricsi }
      
      \new Staff = "altstaff" \with {
        instrumentName = "Альт"
        shortInstrumentName = "А"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "alto" { \altvoice }
        \new Voice  = "alto" { \altvoiceii }
      >> 
      
      \new Lyrics \lyricsto "alto" { \lyricsa }
      
      
      %\new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      %\new Lyrics \lyricsto "soprano" { \lyricscorethree }
  
      \new Staff = "tenorstaff" \with {
        instrumentName = "Тенор"
        shortInstrumentName = "Т"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \clef "treble_8" \tenorvoice }
        \new Voice = "tenorii" { \tenorvoiceii }
      >>
      
      \new Lyrics \lyricsto "tenor" { \lyricst }
      
     \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \bassvoice }
        \new Voice = "bassii" { \clef bass \bassvoiceii }
      >>
      \new Lyrics \lyricsto "bass" { \lyricsb }
      \new Lyrics \lyricsto "bassii" { \lyricsbii }
    >>
        % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
       \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  %Metronome_mark_engraver
  }
    \midi {
    \tempo 4=60
  }
}
}

