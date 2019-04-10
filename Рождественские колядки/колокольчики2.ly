\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  tagline = ##f
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    ragged-bottom = ##f
    indent = 0
  }

global = {
  \key f \major
  \time 2/4
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
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopkling = \relative c'' {
  \global
  \dynamicUp
  g8 g a f |
  a4 g |
  bes8 bes c g |
  bes4 a | \abr
  g8 g a b |
  \slurDotted c8( g g g) |
  a d c b |
  d4 c | \abr
  \repeat volta 2
  {
    c4 a8 bes |
    c16 d c d c4 |
    bes4 g8 c|
    a4 r
  }
}


lyricsklingone = \lyricmode {
  \set stanza = "1." 
  В_Рож -- де -- ство Хри -- сто -- во
  в_храм при -- хо -- дят де -- ти,
  и зво -- нят \set ignoreMelismata = ##t ко -- ло -- ко -- ла
  по всей, по всей пла -- не -- те:
  Глин, глён, глин, ли -- га, ли -- га -- ли,
  глин, глён, глин, глин.
}

lyricsklingtwo = \lyricmode {
  \set stanza = "2." 
  Ан -- ге -- лы свя -- ты -- е по -- я -- ви -- лись всю -- ду.
  Нас зо -- вут с_со -- бой __ по -- кло -- нить -- ся чу -- ду.

}

lyricsklingthree = \lyricmode {
  \set stanza = "3." 
  И в_мо -- ём пусть серд -- це бу -- дет э -- та сла -- дость:
  к_Гос -- по -- ду лю -- бовь __ и свя -- та -- я ра -- дость.
}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  c8 bes a bes |
  c4 a |
  bes8 a g a |
  bes2 | \abr
  bes8 bes bes bes |
  bes4 d |
  c8 c c bes |
  a2 | \abr
  \repeat volta 2 {
    c4 f8[( e]) |
    d c bes a |
    bes4 d |
    c8 bes a g |
    a bes c d |
    c4 bes |
    a2
  }
}


lyricscore = \lyricmode {
  \set stanza = "1." 
  Рож -- де -- ство Хри -- сто -- во,
  Ан -- гел при -- ле -- тел;
  он ле -- тел по не -- бу,
  лю -- дям пес -- ню пел:
  
  Вы лю -- ди, ли -- куй -- те
  и днесь тор -- же -- ствуй -- те:
  днесь Хри -- сто -- во Рож -- де -- ство!
}

lyricscoretwo = \lyricmode {
  \set stanza = "2." 
  Я ле -- чу от Бо -- га,
  ра -- дость вам при -- нёс,
  что в_вер -- те -- пе бед -- ном
  ро -- дил -- ся Хри -- стос!
  
  Ско -- рей по -- спе -- шай -- те,
  Хри -- ста про -- слав -- ляй -- те
  и Свя -- ту -- ю Мать Е -- го!
 
}

lyricscorethree = \lyricmode {
  \set stanza = "3." 
  Пас -- ты -- ри в_пе -- ще -- ру
  пер -- вы -- ми при -- шли
  и Мла -- ден -- ца_- Бо -- га
  с_Ма -- те -- рью на -- шли;
  
  Сто -- я -- ли, мо -- ли -- лись,
  Хри -- сту по -- кло -- ни -- лись_—
  днесь Хри -- сто -- во Рож -- де -- ство!
}

lyricscorefour = \lyricmode {
  \set stanza = "4." 
  Слы -- ши -- те со -- глас -- ный
  ан -- гель -- ский наш клир:
  «Сла -- ва в_Выш -- них Бо -- гу
  и на зем -- ли мир!»
  
  Вы, лю -- ди, внем -- ли -- те,
  ан -- ге -- лам вто -- ри -- те,
  ра -- ду -- ют -- ся Не -- бе -- са!
}

\bookpart {
  
    \header {
    title = "Kling, Glörchen"
    subtitle = "(колокольчики)"
  }


  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopkling }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricsklingone }
      \new Lyrics \lyricsto "soprano" { \lyricsklingtwo }
      \new Lyrics \lyricsto "soprano" { \lyricsklingthree }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
    \midi {
      \tempo 4=90
    }
  }
}



\bookpart {
\header {
  title = "Рождество Христово"
  subtitle = "(колядка)"

}
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      \new Lyrics \lyricsto "soprano" { \lyricscorefour }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
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
    \midi {
      \tempo 4=90
    }
  }
}
