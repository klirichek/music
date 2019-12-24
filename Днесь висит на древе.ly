\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
%#(set-global-staff-size 19)

abr = { \break }
%abr = {}

pbr = { \pageBreak }
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
  \key b \minor
}

sopvoice = \relative c' {
  \global
  \dynamicUp
  \co fis4.( d8 e fis) fis4 fis fis fis( e2 fis4) d2 \cbar
  e4 e e\breve e4 fis( e d) cis d2 \cbar
  d4 d e fis4.( d8 e fis) fis4 fis fis\breve fis4 fis( e2) e4 fis d2 \cbar
  e4 e\breve e4 fis( e d) cis d2 \cbar
  
  d4 e fis4.( d8 e fis) fis4 fis fis\breve fis4 fis( e2 fis4) d2 \cbar
  e4 e\breve e4 fis( e d cis) d2 \cbar
  
  d4 e fis4.( d8 e fis) fis4 fis\breve fis4 fis( e2 fis4) d2 \cbar
  e4 e\breve e4 fis( e d) cis d2 \cbar
  d4 e fis4.( d8 e fis) fis4 fis\breve 
  
  fis4 fis( e2) fis4 d2 \cbar
  e4 e\breve e4 fis( e d) cis d2 \cbar
  e4 e\breve  e4 fis2 e d cis8[( d] e4 e) cis d2\fermata
  \cof \bar "|."
}

altvoice = \relative c' {
  \global
  d4.( b8 cis d) d4 d d d( cis2 d4) b2
  cis4 cis cis\breve cis4 d( cis b) ais! b2
  b4 b cis d4.( b8 cis d) d4 d d\breve d4 d( cis2) cis4 d b2
  cis4 cis\breve cis4 d( cis b) ais! b2 
  
  b4 cis d4.( b8 cis d) d4 d d\breve d4 d( cis2 d4) b2
  cis4 cis\breve cis4 d( cis b ais!) b2
  b4 cis d4.( b8 cis d) d4 d\breve d4 d( cis2 d4) b2
  cis4 cis\breve cis4 d( cis b)
  ais! b2 b4 cis d4.( b8 cis d) d4 d\breve
  
  d4 d( cis2) d4 b2
  cis4 cis\breve cis4 d( cis b) ais! b2
  cis4 cis\breve  cis4 d2 cis b ais!8[( b] cis4 b) ais!4 b2
  
}

tenorvoice = \relative c' {
  \global
  b2~ b4 b b b b( a2.) b2
  a4 a a\breve a4 a2( fis4) fis fis2
  b4 b b b2~ b4 b b b\breve b4 b( a2) a4 a b2
  a4 a\breve a4 a2( fis4) fis fis2
  
  b4 b b2~ b4 b b b\breve b4 b( a2.) b2
  a4 a\breve a4 a2( fis) fis2
  b4 b b2~ b4 b b\breve b4 b( a2.) b2
  a4 a\breve a4 a2( fis4)
  fis fis2 b4 b b2~ b4 b b\breve
  
  b4 b( a2) a4 b2
  a4 a\breve a4 a2( fis4)
  fis4 fis2 a4 a\breve  a4 a2 a b fis2. fis4 fis2
 
}

bassvoice = \relative c {
  \global
  b2~ b4 b b b d( a2 fis4) b2
  a4 a a\breve a4 d( e fis) fis b,2
  b4 b b b2~ b4 b b b\breve b4 d( a2) a4 fis b2
  a4 a\breve a4 d( e fis) fis b,2
  
  b4 b b2~ b4 b b b\breve b4 d( a2 fis4) b2
  a4 a\breve a4 d( e fis2) b,2
  b4 b b2~ b4 b b\breve b4 d( a2 fis4) b2
  a4 a\breve a4 d( e fis) fis b,2
  b4 b b2~ b4 b b\breve
  b4 d( a2) fis4 b2
  a4 a\breve a4 d( e fis)
  fis b,2 a'4 a\breve  a4 d,2 a' b fis2. fis4 b,2\fermata
}

lleft = \once \override LyricText.self-alignment-X = #LEFT
texts = \lyricmode {
%  \override LyricText.self-alignment-X = #LEFT
 Днесь ви́ -- сит на дре -- ве
 и -- же на_водах_землю по -- ве -- си -- вый
 ве -- нцем  от те -- рни -- я облагается_и -- же а -- нге -- лов Царь: в_ло -- 
 жную_багряницу_облачается_одеваяй_не -- бо о -- бла -- ки;
 
 за -- у -- ше -- ни -- е прият,_иже_во_Иордане_свободивый А -- да -- ма:
 гво -- здьми_пригвоздися_Жених Це -- рко -- вный
 ко -- пи -- ем __ про -- бодеся Сын Де -- вы,
 По -- кланяемся_страстем Тво -- им __ Хри -- сте;
 по -- кла -- ня -- е -- мся_страстем Тво -- им __ Хри -- сте,
 по -- кланяемся_страстем Тво -- им __ Хри -- сте,
 по -- кажи_нам_и_Славное Тво -- е во -- скре -- се -- ни -- е.

}


\bookpart {
  \header {
    title = "Днесь висит на древе"
    %subtitle = "________... напева"
    %composer = "обиходный"
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
      instrumentName = \markup { \column { "Т1" "Т2"  } }
      midiInstrument = "voice oohs"
    } <<
      \new Voice = "soprano" { \voiceOne \clef "treble_8" \sopvoice }
      \new Voice  = "alto" { \voiceTwo \altvoice }
    >> 
    \new Lyrics \lyricsto "soprano" { \texts }
  
    \new Staff = "tb" \with {
      instrumentName = \markup { \column { "Б1" "Б2" } }
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

