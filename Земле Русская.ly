\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Стихиры на стиховне"
  subtitle = "глас 2, подобен «Доме Евфрафов»"
  composer = "Напева Киево-Печерской Лавры"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
    \set Score.markFormatter = #format-mark-circle-numbers
  \key g \minor
  \time 3/2
  \numericTimeSignature
  \autoBeamOff
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

co = \cadenzaOn
cof = { \cadenzaOff \bar "|" }

votenori = \relative c' {
  \global
%\tempo 2=88
  \dynamicUp
  \autoBeamOn
  \mark \default \co d4( es8[ f]) es2 es4( d8[ c] d[ es f g] es4) d es2 \cof
  \co f2 f4 es8[( f]) g4( f es \bar "" \abr
  d8[ es] f[ g] es4 d es2) \cof
  \co f4 f f es8[( f]) g2( es8[ g f es] d2  d8[ es f es] d2) \cof
  \co es4 es es d f es2 \cof 
  \co d4 d d d d d8[( es]) f2( es d) c1 \cadenzaOff \bar "|." \abr
  
  \mark \default \co d4( es8[ f] es4) es es( d8[ c] d[ es f g] es4) d es2 \cof
  \co f2 f4( es8[ f] g4 f) es \bar ""
  d8[( es]) f[( g]) es4( d es2) \cof
  \co f2. es8[( f]) g2( es8[ g f es]) d2 d8[( es f es]) d2 \cof \abr
  \co es4 es es es d( f) es2 \cof
  \co d4 d d d d d8[( es]) f2( es) d4 d d c1 \cof \bar "|."
  
  \mark \default \co d4( es8[ f]) es4 es es es( d8[ c]) d[( es f g] es4 d) es2 \cof
  \co f2 f4 es8[( f]) g4( f es d8[ es] f[ g] \bar "" \abr
  es4) d es2 \cof
  \co f4 f f f es8[( f]) g2( es8[ g f es] d2 d8[ es f)] es d2 \cof
  \co es4 es es es \bar "" \abr
  es es es d( f) es2 \cof
  \co d4 d d d d d d d d8[( es]) f2( es) d c1 \bar "|." \abr
  
  \mark \default \co d4( es8[ f] es4) es es es es es( d8[ c] d[ es f g] es4 d) es2 \cof
  \co f4 f2 f4 es8[( f]) \bar "" \abr
  g4( f es d8[ es] f[ g] es4 d) es2 \cof
  \co f2.\fermata es8[( f]) g2( es8[ g f es] d2 d8[ es f es]) d2 \cof \abr
  \co es4 es es es es es d f es2 \cof
  \co d4 d d d d d8[( es]) f2( es) d c1 \cof \bar "|."
}


votenorii = \relative c' {
  \global
  \dynamicUp
  \mark \default \co bes4( c8[ d]) c2 c4( bes8[ a] bes[ c d es] c4) b c2 \cof
  \co d2 d4 c8[( d]) es4( d c \bar "" b!8[ c] d[ es] c4 b! c2) \cof
  \co d4 d d c8[( d]) es2( c8[ es d c] b!2 b8[ c d c] b!2) \cof
  \co c4 c c bes d c2 \cof
  \co bes4 bes bes bes bes bes8[( c]) d2( c bes) a1 \bar "|."
  
  \mark \default \co bes4( c8[ d] c4) c c( bes8[ a] bes[ c d es] c4) b c2 \cof
  \co d2 d4( c8[ d] es4 d) c \bar ""
  b!8[( c]) d[( es]) c4( b! c2) \cof
  \co d2. c8[( d]) es2( c8[ es d c]) b!2 b!8[( c d c]) b!2 \cof
  \co c4 c c c bes( d) c2 \cof
  \co bes4 bes bes bes bes bes8[( c]) d2( c) bes4 bes bes a1 \cof \bar "|."
  
  \mark \default \co bes4( c8[ d]) c4 c c c( bes8[ a]) bes[( c d es ] c4 b) c2 \cof
  \co d2 d4 c8[( d]) d4( d c b8[ c] d[ es] \bar ""
  c4) b c2 \cof
  \co d4 d d d c8[( d]) es2( c8[ es d c] b2 b8[ c d)] c b2 \cof
  \co c4 c c c \bar ""
  c c c bes( d) c2 \cof
  \co bes4 bes bes bes bes bes bes bes bes8[( c]) d2( c) bes a1 \cof \bar "|."
  
  \mark \default \co bes4( c8[ d] c4) c c c c c( bes8[ a] bes[ c d es] c4 b) c2 \cof
  \co d4 d2 d4 c8[( d]) \bar ""
  es4( d c b!8[ c] d[ es] c4 b!) c2 \cof
  \co d2.\fermata c8[( d]) es2( c8[ es d c] b!2 b!8[ c d c]) b!2 \cof 
  \co c4 c c c c c bes! d c2 \cof
  \co bes4 bes bes bes bes bes8[( c]) d2( c) bes a1 \bar "|."

}


vobaritone = \relative c {
  \global
  \dynamicUp 
  \mark \default \co f2 f f( bes c4) b g2 \cof
  bes!2 bes4 c8[( bes]) bes2( c4 \bar ""
  g2~ g4)~ g2. \cof
  \co bes!4 bes bes c8[( bes]) bes2( g1~ g) \cof
  \co f4 f f f f f2 \cof
  \co f4 f f f f f bes2( a f) f1 \cof \bar "|."
  
  \mark \default \co f2. f4 f2( bes c4) b g2 \cof
  \co bes!2 bes4( c8[ bes]~ bes2) c4 \bar ""
  g g g1 \cof
  \co bes!2. c8[( bes]) bes2( g) g g g \cof
  \co f4 f f f f2 f \cof
  \co f4 f f f f f bes2( a) f4 f f f1 \cof \bar "|."
  
  \mark \default \co f2 f4 f f f2 bes( c4 b ) g2 \cof
  \co bes!2 bes4 c8[( bes]) bes2( c4 g2~ \bar ""
  g4) g g2 \cof 
  \co bes!4 bes bes bes c8[( bes]) bes2( g2~ g~ g4.) g8 g2 \cof
  \co f4 f f f \bar ""
  f f f f2 f \cof
  \co f4 f f f f f f f f bes2( a) f f1 \cof \bar "|."
  
  \mark \default \co f2. f4 f f f f~( f bes2 c4 b) g2 \cof
  \co bes4 bes2 bes4 c8[( bes]) \bar ""
  bes2( c4 g2~ g) g \cof
  \co bes!2.\fermata c8[( bes]) bes2( g~ g1) g2 \cof
  \co f4 f f f f f f f f2 \cof
  \co f4 f f f f f bes2( a) f f1 \cof \bar "|."

}


vobass = \relative c {
  \global
  \dynamicUp
  
  \mark \default \co bes2 f' f( bes c4) g c,2 \cof
  \co bes'2 bes4 c8[( bes]) es,[( g] bes4 c \bar ""
  g2 c,4 g c2) \cof
  \co bes'4 bes bes c8[( bes]) es,2( g1~ g) \cof
  \co f4 f f f f f2 \cof
  \co bes,4 bes bes bes bes f' bes2( f bes,4 d) f1 \cof \bar "|."
  
  \mark \default \co bes,2( f'4) f f2( bes c4) g c,2 \cof
  \co bes'!2 bes4( c8[ bes] es,[ g] bes4) c \bar ""
  g g c,( g c2) \cof
  \co bes'! 2. c8[ bes] es,2( g) g g g \cof
  \co f4 f f f f2 f \cof
  \co bes,4 bes bes bes bes f' bes2( f) bes,4 bes d f1 \cof \bar "|."
  
  \mark \default \co bes,2 f'4 f f f2 bes2( c4 g) c,2 \cof
  \co bes'2 bes4 c8[( bes]) es,[( g] bes4 c g2 \bar ""
  c,4) g c2 \cof
  \co bes'4 bes bes bes c8[( bes]) es,2( g~ g~ g4.) g8 g2 \cof
  \co f4 f f f \bar ""
  f f f f2 f \cof
  \co bes,4 bes bes bes bes bes bes bes f' bes2( f) bes,4( d) f1 \cof \bar "|."
  
  \mark \default \co bes,2( f'4) f f f f f~( f bes2 c4 g) c,2 \cof
  \co bes'4 bes2 bes4 c8[( bes]) \bar ""
  es,[( g] bes4 c g2 c,4 g) c2 \cof
  \co bes'2.\fermata c8[( bes]) es,2( g~ g1) g2 \cof
  \co f4 f f f f f f f f2 \cof
  \co bes,4 bes bes bes bes f' bes2( f) bes,4( d) f1 \cof \bar "|."
  
  
 
}

lyricscore = \lyricmode {
  Зе -- мле Ру -- сска -- я, гра -- де свя -- тый, __
  у -- кра -- шай Твой дом __
  в_нем же Бо -- же -- стве -- нный ве -- лий сонм свя -- тых про -- сла -- ви.
  
  Це -- рковь Ру -- сска -- я, кра -- су -- йся
  и ли -- куй: __ се бо ча -- да Тво -- я
  пре -- сто -- лу Вла -- ды -- чно во сла -- ве пре -- дсто -- ят ра -- ду -- ю -- ще -- ся.
  
  Со -- бо -- ре Свя -- тых Ру -- сских, По -- лче Бо -- же -- 
  стве -- нный, мо -- ли -- те -- ся ко Го -- спо -- ду о зе -- мном О --
  те -- че -- стве ва -- шем и о по -- чи -- та -- ю -- щих вас лю -- бо -- ви -- ю.
  
  Но -- вый до -- ме Е -- вфра -- фов, у -- де -- ле и --
  збра -- нный, Русь Свя -- та -- я!
  Хра -- ни Ве -- ру Пра -- во -- сла -- вну -- ю: в_ней же те -- бе у -- тве -- ржде -- ни -- е.
  
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }

\bookpart {
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \voiceOne \clef "G_8" \votenori }
        \new Voice  = "tenorii" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бар." "Бас" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Тенор 1"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "T1"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \oneVoice \clef "G_8" \votenori }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Тенор 2"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Т2"
        midiInstrument = "voice oohs"
      } <<
        \new Voice  = "tenorii" { \oneVoice \clef "G_8"\votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenorii" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}



\bookpart {
  \header {
    piece = "Баритон"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "baritone" { \oneVoice \clef bass \vobaritone }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscore

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Бас"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бас"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \voiceTwo \clef bass \vobass }
      >>
      %\new Lyrics \lyricsto "baritone" \lyricscore
      \new Lyrics \lyricsto "bass" \lyricscore

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
         \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Тенора"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Т1" "Т2"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenori" { \voiceOne \clef "G_8" \votenori }
        \new Voice  = "tenorii" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics \lyricsto "tenori" \lyricscore
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \header {
    piece = "Баритон, бас"
  }
  \score {
%      \transpose f es {
    \new ChoirStaff <<
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Бар." "Бас" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "baritone" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \new Lyrics \lyricsto "baritone" \lyricscore

    >>
%      }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
  }
}

\bookpart {
  \score {
    \unfoldRepeats
%      \transpose f es {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \votenori }
        \new Voice  = "alto" { \voiceTwo \votenorii }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \vobaritone }
        \new Voice = "bass" { \voiceTwo \vobass }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "tenor" {
          \lyricscore
        }
      }
    >>
%      }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}