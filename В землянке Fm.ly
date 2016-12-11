\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  composer = "Константин Листов"
  poet = "Алексей Сурков"
  title = "В землянке"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \minor
  \time 3/8
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \autoBeamOff
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

tenorone = \relative c {
  \global
  \dynamicUp 
  \tempo "Не скоро, с теплотой"
  \repeat volta 2 {
    \partial 4 f8 g8 | % 1
    as8 c as | % 2
    g8 f e | % 3
    f4. | % 4
    r8 as bes | % 5
    c8 c c | % 6
    des8 as bes | % 7
    c4. ~ | % 8
    c8 f, f | % 9
    bes8 c bes | \barNumberCheck #10
    des8 c bes | % 11
    as4. ~ | % 12
    as8 c, c | % 13
    bes'8 as g | % 14
    bes8 as g | % 15
    f4. | % 16
    r8 g f | % 17
    es8 g bes | % 18
    des8 c bes | % 19
    as4. ~ | \barNumberCheck #20
    as8 g f | % 21
    es8 g bes | % 22
    f'8 es des | % 23
    c4. | % 24
    r8 f, f | % 25
    bes8 c bes | % 26
    f'8 g f | % 27
    c4. ~ | % 28
    c8 c, c | % 29
    as'8 g c, | \barNumberCheck #30
    as'8 g c, | % 31
    f4.
  }
}

tenortwo = \relative c {
  \global
  \dynamicUp 
  f8 g8 | % 1
    as8 c as | % 2
    g8 f e | % 3
    f4. | % 4
    r8 f g | % 5
    as8 as as | % 6
    bes8 as bes | % 7
    as4. ~ | % 8
    as8 f f | % 9
    bes8 c bes | \barNumberCheck #10
    des8 c bes | % 11
    as4. ~ | % 12
    as8 c, c | % 13
    bes'8 as g | % 14
    g8 f e | % 15
    f4. | % 16
    r8 g f | % 17
    es8 g bes | % 18
    des8 c bes | % 19
    as4. ~ | \barNumberCheck #20
    as8 g f | % 21
    es8 g bes | % 22
    des8 c bes | % 23
    as4. | % 24
    r8 f f | % 25
    bes8 c bes | % 26
    des8 des des | % 27
    as4. ~ | % 28
    as8 c, c | % 29
    as'8 g c, | \barNumberCheck #30
    as'8 g c, | % 31
    f4.
}

bassvoice = \relative c {
  \global
  \dynamicUp
  f8 g | % 1
    as8 c as | % 2
    g8 f e | % 3
    f4. | % 4
    r8 f g | % 5
    es8 es es | % 6
    fes8 fes fes | % 7
    es4. ~ | % 8
    es8 f f | % 9
    bes8 c bes | \barNumberCheck #10
    bes8 as g | % 11
    f4. ~ | % 12
    f8 c c | % 13
    c8 c c | % 14
    c8 d e | % 15
    f4. | % 16
    r8 g f | % 17
    es8 es es | % 18
    es8 f g | % 19
    as4. ~ | \barNumberCheck #20
    as8 g f | % 21
    es8 es es | % 22
    es8 f g | % 23
    as4. | % 24
    r8 f f | % 25
    bes8 c bes | % 26
    bes8 bes bes | % 27
    as4. ~ | % 28
    as8 c, c | % 29
    c8 c c | \barNumberCheck #30
    e8 e e | % 31
    f4.
}

lyricscore = \lyricmode {
    \set stanza = "1." Бьёт -- ся в_тес -- ной пе -- чу -- рке о -- гонь, 
    на по -- лень -- ях смо -- ла, как сле -- за. 
    И по -- ёт мне в_зем -- лян -- ке гар -- монь 
    про у -- лыб -- ку тво -- ю и гла -- за. 
    Про те -- бя мне ше -- пта -- ли ку -- сты 
    в_бе -- ло -- снеж -- ных по -- лях под Мо -- сквой. 
    Я хо -- чу, что -- бы слы -- ша -- ла ты, 
    как то -- ску -- ет мой го -- лос жи -- вой.
}

lyricscoretwo = \lyricmode {
    \set stanza = "2."
    
    Ты сей -- час да -- ле -- ко, да -- ле -- ко,
    Меж -- ду на -- ми сне -- га и сне -- га.
    До те -- бя мне дой -- ти не лег -- ко,
    А до смер -- ти_— че -- ты -- ре ша -- га.
    
    Пой, гар -- мо -- ни -- ка, вью -- ге на -- зло,
    за -- плу -- тав -- ше -- е сча -- стье зо -- ви.
    Мне в_хо -- лод -- ной зем -- лян -- ке теп -- ло
    от тво -- ей не -- га -- си -- мой люб -- ви.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 10
    ragged-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { "Тенор" }
        shortInstrumentName = \markup { "Т" }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef "treble_8" \tenorone }
        \new Voice = "tenor2" { \voiceTwo \tenortwo }
      >> 
      
      \new Lyrics \lyricsto "tenor" { \lyricscore }
      \new Lyrics \lyricsto "tenor" { \lyricscoretwo }

      % alternative lyrics above up staff
      
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { "Бас" }
        shortInstrumentName = \markup { "Б" }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
      >>
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
