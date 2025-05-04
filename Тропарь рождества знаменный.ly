\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-global-staff-size 18)

\paper {
  #(set-default-paper-size "a4")
  
  top-margin = 10
  left-margin = 20
  right-margin = 15
  bottom-margin = 160
  ragged-last-bottom = ##f
  indent = 0
}

global = {
  \key bes \major
  \numericTimeSignature
  \time 8/4
}

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "|" }
nat = { \once \hide Accidental }

sopvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \co c8([ bes)] c[( d]) ees2 d8[( ees] d4) c2 \cb
  \co d4 ees8[( d]) c([ d] ees4) d2 c \cb
  \co c8[( bes]) c[( d]) ees2 f8[( ees d ees]) f4 ees2 \cb
  \co f4( ees) bes8[( c] d4) c2 bes \cb
  \co ees2( f4 d f) ees2 \cb
  \co c8([ d)] ees4( c8[ d]) \bar"" c([ bes)] c2 c4 bes2  \cb
  \co ees8[( f)] g4 f ees d( f) f ees2 \cb
  \co ees8([^\markup { \italic "Замедляя" } f)] g4 f4 ees ees ees8([ d)] \bar"" f4( ees) ees d8[( c] d4 c bes) c2 \breathe \cb
  \co c8[( bes)] c[( d]) ees2 \bar"" \time 9/4 f8[( ees d ees)] f4 ees2 \cb
  \co f4 f es d8[( es]) f4 d2  \cb
  \co c8[(^\markup { \italic Замедляя } bes] \nat a4) d ees8[( d]) \bar"" c[( d] ees4) d d c2\fermata \cof \bar "|."
}

lowvoice = \relative c {
  \global
  \autoBeamOff
  \co c8([ bes)] c[( d]) ees2 d8[( ees] d4) c2 \cb
  \co bes1. c2 \cb
  \co c\breve( s4 \cb
  \co c2) bes1.( \cb
  \co bes1. s4) \cb
  \co r4 bes2.( c2. bes2) \cb
  \co r4 c\breve \cb
  \co r4 c1 s4 bes1. s4 c2 \cb
  \co c8[( bes)] c\breve \cb
  \co bes1. s4  \cb
  \co c8[( bes] \nat a4) g1. f2 \cof
}


tropar = \lyricmode {
  Ро -- жде -- ство Тво -- е Хри -- сте Бо -- же наш,
  воз -- си -- я ми -- ро -- ви свет ра -- зу -- ма,
  в_нем бо звез -- дам слу -- жа -- щи -- и звез -- до -- ю у -- ча -- ху -- ся,
  Те -- бе кла -- ня -- ти -- ся солн -- цу прав -- ды, 
  и Те -- бе ве -- де -- ти с_вы -- со -- ты вос -- то -- ка, Го -- cпо -- ди сла -- ва Те -- бе.
}




\bookpart {
    \header {
    title = "Тропарь Рождеству Христову"
    subtitle = "Знаменный распев, глас 4-й"
    %composer = "А. Кастальскаго"
    % Удалить строку версии LilyPond 
    tagline = ##f
  }

  \score {
    \transpose c e  
    \new ChoirStaff
    <<
      \new Staff \with {
  
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { 
          \clef "treble_8" 
          \clef bass
          \oneVoice  \sopvoice }

      >> 
      \new Lyrics \lyricsto "soprano" { \tropar }
      
            \new Staff \with {
  
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "low" { \clef bass
          \oneVoice  \lowvoice
        }
      >> 

    >>
    \layout {
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        \remove "Time_signature_engraver"
        \remove "Bar_number_engraver"
      }
      \context {
        \Score
        \override StaffGrouper.staffgroup-staff-spacing.padding = #10
      }
    } 
  }
  
    \score {
    \transpose c e   \new ChoirStaff
    <<
      \new Staff \with {
  
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { 
          \clef "treble_8" 
          \clef bass
          \oneVoice  \sopvoice }
      >> 
      \new Lyrics \lyricsto "soprano" { \tropar }
      
            \new Staff \with {
  
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { 
          \clef "treble_8" 
          \clef bass
          \oneVoice  \lowvoice }
      >> 
    
    >>
    \midi {
      \tempo 4=90
    }
  }
}

