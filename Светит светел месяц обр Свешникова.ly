\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Светит светел месяц"
  composer = "обр. Свешникова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 2/2

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

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Умеренно"
  \secondbar  
  f4\mf g a\< d\! | % 2
  c2.\> a4\! | % 3
  g4 a bes g\< | % 4
  f4\! ( c'2)\> a4\! \abr | % 5
  g4\pp a bes g | % 6
  f4 ( c'2) a4 | % 7
  g4\mp a c8 [( bes]) a[( g )] | % 8
  f2\< ( f'4)\! es | \abr 
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    d2\f^\markup\bold"Припев" ( f4) d | 
    c2. a4 | % 11
    g4-> a c8([ bes]) a[( g])  | % 12
    f4 f f'4. ( es8) | % 13
    d4 d <d f>4.-> d8 | % 14
    c8-> c c a c4. a8 \abr | % 15
    g4-> a c8 [( bes]) a[( g )] | % 16
    f4 f f2
  }
  R1*6 | % 23
  g4-> a c8 ( [ bes]) a[( g ]) | % 24
  f2( f'4) es \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  f4 e f bes | % 2
  a2. f4 | % 3
  e4 f g e | % 4
  f4 ( a2) f4 | % 5
  e4 f g e | % 6
  f4 ( a2) f4 | % 7
  e4 f e e | % 8
  f2 ~( f8[ g]) a[( c )] \repeat volta 2 {
    | % 9
    bes2. bes4 |
    a2. f4 | % 11
    e4 f e e | % 12
    f4 f f ( g8 [ a ]) | % 13
    bes4 bes bes4. bes8 | % 14
    a8 a a f f4. f8 | % 15
    e4 f e e | % 16
    f4 f f2
  }
  R1*6 | % 23
  e4 f e e | % 24
  f2 ( f8 [ g]) a [(c) ] \bar "|."
  \mark \markup { \musicglyph #"scripts.segno" }
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  R1*4 | % 5
  c4\p c c bes | % 6
  a4 ( f'2) f4 | % 7
  c4 a g c8 ([ bes )] | % 8
  a4 ( f'2) f4 \repeat volta 2 {
    | % 9
    f2\f d4 f |
    f2. c4 | % 11
    c4-> a g c8 ([ bes )] | % 12
    a4 f' f2 | % 13
    <d f>4 q q4.-> f8 | % 14
    f8-> f f c a4. c8 | % 15
    c4-> a g c8 ( [ bes )] | % 16
    a4 f f2
  }
  | % 17
  f4\f g a d | % 18
  c2. a4 | % 19
  g4 a bes g \abr | 
  f4-> ( c'2 ) a4 | % 21
  g4 a bes g | % 22
  f4-> ( c'2 ) a4 | % 23
  c4-> a g c8 ([ bes )] | % 24
  a4 ( f'2 ) f4 \bar "|."
}


bassvoice = \relative c {
  \global
  \dynamicUp
  R1*6 | % 7
  c4\p c c c  | % 8
  f2. f4 \repeat volta 2 {
    
    | % 9
    bes2. bes4 | 
    f2. f4 | % 11
    c4-> c c c | % 12
    f4 f << {f8[( es d c])} \new Voice {\voiceFour f2} >> | % 13
    <bes, bes'>4 bes' bes4.-> bes8 | % 14
    f8-> f f f f4. f8 | % 15
    c4-> c c c | % 16
    f4 f f2_\markup\bold"Конец"
  }
  | % 17
  f4 e f bes | % 18
  a2. f4 | % 19
  e4 f g e | 
  f4 ( a2) f4 | % 21
  e4 f g e | % 22
  f4 ( a2 ) f4 | % 23
  c4-> c c c | % 24
  f2. f4 \bar "|."
}

lyricscore = \lyricmode {
  \set stanza = "1." Све -- тит све -- тел ме -- сяц вы -- со -- ко не ни -- зко,
  вы -- со -- ко не ни -- зко, да -- ле -- ко не бли -- зко,
  
  \repeat unfold 28 \skip 1 снял бы ру -- ка -- ви -- цы.
  
}

lyricscoretwo = \lyricmode {
  \set stanza = "2." Как во чи -- стом по -- ле де -- вка про -- со по -- лет,
  де -- вка про -- со по -- лет, бе -- лы ру -- ки ко -- лет.
  
    То -- ли, сё -- ли, то -- то, лю -- ше -- ньки мо -- и, __ то -- то лю -- ли, то -- то лю -- ли лю -- ли,
  то -- то лю -- ше -- ньки мо -- и.
}

lyricscorethree = \lyricmode {
  \set stanza = "3." Жа -- лко мне де -- ви -- цы, снял бы ру -- ка -- ви -- цы,
  снял бы ру -- ка -- ви -- цы, снял бы ру -- ка -- ви -- цы.
}

lyricscorefour = \lyricmode {
  \set stanza = "4." Снял бы ру -- ка -- ви -- цы, по -- да -- рил де -- ви -- це, 
  по -- да -- рил де -- ви -- це, по -- да -- рил де -- ви -- це.
}

lyricscorefive = \lyricmode {
  \set stanza = "5." Чтоб про -- со по -- ло -- ла, а рук не ко -- ло -- ла,
  а рук не ко -- ло -- ла, а рук не ко -- ло -- ла.
  
  \repeat unfold 28 \skip 1 по -- да -- рил де -- ви -- це.
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15

    ragged-last-bottom = ##f
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
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorefive }
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      
      \new Lyrics \lyricsto "bass" { \repeat unfold 34 \skip 1 \lyricscorethree }
      \new Lyrics \lyricsto "bass" { \repeat unfold 34 \skip 1 \lyricscorefour }
      
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
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
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 2=90
    }
  }
}
