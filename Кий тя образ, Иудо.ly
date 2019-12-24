\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 19)

abr = { \break }
%abr = {}
fbr = {\bar "" \break}

pbr = { \break }
%pbr= {}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

global = {
  \once \hide Staff.TimeSignature
  \autoBeamOff
  \key d \minor
}

sopvoice = \relative c'' {
  \global
  \dynamicUp 
  \co a2 g4 a g a bes2( g4) a2 \cbar
  a4 c2 bes4 a a a \cbr
  a \cbr g2( e4) f2 \cbar
  
  a4 a2 \cbr g4 a a g \cbr a bes2 bes4 bes bes g a2 \cbar
  
  a4 c2 \cbr a4 a a a a \cbr a a g2 e4 \cbr e f2 \cbar
  
  g4 a2 \cbr g4 a a a\breve a4 g \cbr a bes2( g4) a2 \cbar
  a4 c2 \cbr bes4 a a a a a \cbr a g2 g4 g f2 \cbar
  
  a2 g4 a a a \cbr a a g a bes2 \cbr g4 a2 \cbar
  
  a4 c2 \cbr a4 a a a a a a \cbr a a g2 g4 g f2 \cbar
  
  g4 a2 g4 a a a a a a a a a a a g a bes2 g4 a2 \cbar
  a4 c2 c4 bes a2( bes4 a) g1\fermata \cof
  
  
  
  \bar "|."
 
}

altvoice = \relative c' {
  \global
  
  f2 e4 f e f f2( e4) f2
  
  f4 f2 f4 f f f f d2. d2 
  
  d4 f2 e4 f f e f f2 f4 f f e f2
  
  f4 f2 f4 f f f f f f d2 d4 d d2
  
  e4 f2 e4 f f f\breve f4 e f f2( e4) f2
  
  f4 f2 f4 f f f f f f d2 e4 e d2
  
  f e4 f f f f f e f f2 e4 f2
  
  f4 f2 f4 f f f f f f f f d2 e4 e d2
  e4 f2 e4 f f f f f f f f f f f e f f2 e4 f2
  f4 f2 f4 e f1 d
  
}

tenorvoice = \relative c' {
  \global 
  
  d2 d4 d d d d2. d2 
  d4 c2 d4 d a a a bes2. a2
  d4 d2 d4 d d d d d2 d4 d d d d2
  d4 c2 d4 d a a a a a bes2 bes4 bes a2
  d4 d2 d4 d d d\breve d4 d d d2. d2
  d4 c2 d4 d a a a a a bes2 bes4 bes a2
  d2 d4 d d d d d d d d2 d4 d2
  d4 c2 d4 d a a a a a a a bes2 bes4 bes a2
  d4 d2 d4 d d d d d d d d d d d d d d2 d4 d2
  d4 c2 c4 d d2.( c4) bes1
}

bassvoice = \relative c {
  \global 
  d2 d4 d d c bes2. d2
  d4 a2 bes4 d d d c bes2( g4) d'2
  d4 d2 d4 d d d d bes2 bes4 bes bes bes d2 
  d4 a2 d4 d d d d d c bes2 g4 g d'2
  d4 d2 d4 d d d\breve d4 d d bes2. d2
  d4 a2 bes4 d d d d d c bes2 g4 g d'2
  d2 d4 d d d d d d d bes2 bes4 d2
  d4 a2 d4 d d d d d d d c bes2 g4 g d'2
  d4 d2 d4 d d d d d d d d d d d d c bes2 bes4 d2
  d4 <a a'>2 q4 <g g'> << { \voiceFour f'2( d4 f)} \\ f,1 >> <g g'>1\fermata

 
 
}

ijLyrics = {
  \override Lyrics.LyricText #'font-shape = #'italic
  \override Lyrics.LyricText #'font-series = #'bold
}

normalLyrics = {
  \revert Lyrics.LyricText #'font-shape
  \revert Lyrics.LyricText #'font-series
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
  Кий тя о -- браз, И -- у -- до, пре -- да -- те -- ля Спа́ -- су
  со -- де -- ла? Е -- да́ от ли́ -- ка тя а -- по́ -- сто -- льска 
  ра -- злу -- чи, е -- да да -- ро -- ва́ -- ни -- я и -- сце -- ле -- ний ли -- ши?
  Е -- да́ со о́ -- не -- ми_вечеря́в,_тебе_от_тра -- пе́ -- зы о -- три -- ну,
  е -- да и -- ны́х но -- ги у -- мы́в, тво -- и же пре -- зре́?
  О, ко -- ли́ -- ких благ не -- па́ -- мя -- тлив был е -- си, и твой у -- бо
  не -- бла -- го -- да -- рный о -- бли -- ча -- е -- тся нрав.
  То -- го же бе -- зме -- рно -- е про -- по -- ве -- ду -- е -- тся 
  до -- лго -- те -- рпе -- ни -- е и ве -- ли -- я ми -- лость.
 
}



\bookpart {
  \header {
    title = "Кий тя образ, Иудо"
    %subtitle = "________... напева"
    composer = "7-й глас в гармонизации Кастальского"
    %composer = "муз. Шишкин"
    %subtitle = "№ 149"
    %subtitle = "архиерейская"
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
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    ragged-last = ##t
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
    \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %\remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
%    #(layout-set-staff-size 15)
  }
  \midi {
    \tempo 2=90
  }
}
}

