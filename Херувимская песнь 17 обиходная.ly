\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "№17 Херувимская песнь"
  composer = "№7 Обиходная мелодия"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 4/4
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
piano =  _\markup\italic"т."

sopvoice = \relative c'' {
  \global
  \dynamicUp
  \secondbar  
  \tempo Медленно
  g4\piano g b8[ a] b4\< |
  a4.(\> g8 fis[ g] a4)\! |
  g2\piano g4 g8\<[ a] |
  b4  c\! b8[(\> a] b4)\! | \abr
  a2 a8[ g] a[ b] |
  c4.( b8 a[ b] c4) |
  c2 a4 g |
  fis4.(\< g8 a4)\! g8[ fis] | \abr
  e4\>( fis\!) g g |
  fis2. fis4 |
  e1\fermata \bar "||"
  g4\piano g g8[\< a] b4\! |
  a4.(\> g8 fis[ g] a4)\! | \abr
  g2 g8 g g a |
  b4\< c\! b8[\> a] b4\! |
  a2 a8[ g] a[ b] |
  c4.( b8 a[ b]) c4 | \abr
  b2 a4 g |
  fis4.( g8 a4) g8[ fis] |
  e4( fis) g\piano g |
  fis2. fis4 |
  e1\fermata \bar "||" \abr
  g2 g8[ a]\< b4 |
  a4.\>( g8 fis[ g]\! a4) |
  g2 g4.( a8) |
  b4 c b8[ a] b4 | \abr
  a2 a8[ g] a[ b] |
  c4.( b8 a[ b] c4 |
  b2) a4 g |
  fis4.( g8\< a4\! g8[ fis] | \abr
  e4 fis) \tempo Медленно g4 g |
  fis2.^"<>" fis4 |
  e1\fermata \bar "||"
  \set Timing.measurePosition = #(ly:make-moment -1/2) << a2 {s8\< s s s\!} >> | << a1 {s4\> s s s\!} >>\bar "||"
  \tempo Умеренно g4 g g8[ a] b4 | \abr
  a4.( g8 fis[ g] a4) |
  g2 g4(\< a)\! |
  b( c b8[ a] b4) |
  a2 a8[ g] a[ b] |
  c4.( b8 a[ b] c4) | \abr
  b2( a4) g\piano |
  fis4.( g8\< a4\!) g8[ fis] |
  e4( fis) g2 |
  fis fis  | \abr
  g2 r8 g g\< a |
  b4\! c b8[( a] b4) |
  a2 a8[ g] a[ b] |
  c4.( b8 a[ b]) c4 |
  b2 a4 g |
  fis4.( g8 a4)\< g8[ fis]\! |
  e4( fis)\> g g\! |
  fis2. fis4 |
  e1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  e4 e e e |
  e1 |
  e2 e4 e |
  d8[ g] e[ fis] g2 |
  fis fis8[ e] fis[ g] |
  e2( a~) |
  a4 g fis e |
  dis4.( e8 fis4) e8[ dis] |
  e2 e4 e |
  e2( dis4) dis |
  e1 |
  e4 e e e |
  e1 |
  e2 e8 e e e |
  d[ g] e[ fis] g4 g |
  fis2 fis8[ e] fis[ g] |
  a2. a4\< |
  a\!( g) fis e |
  dis4.( e8 fis4) e8[ dis] |
  e2 e4 e |
  e2( dis4) dis |
  e1
  e2 e4 e |
  e1 |
  e2 e |
  d8[ g] e[ fis] g4 g |
  fis2 fis8[ e] fis[ g] |
  a1( |
  a4 g) fis e |
  dis4.( e8 fis4 e8[ dis] |
  e2) e4 e |
  e2( dis4) dis |
  e1 
  fis2 fis1 |
  g4 g d g |
  fis4. g8 d2 |
  d g |
  g2.(~ g8[ e]) |
  fis2 fis8[ e] fis[ g] |
  a1 |
  a4( g fis) e |
  dis4.( e8 fis4) e8[ dis] |
  e2 e |
  e( dis4) dis |
  e2 r8 e e fis |
  g4 g g2 |
  fis fis8[ e] fis[ g] |
  a2. a4 |
  a( g) fis e |
  dis4.( e8 fis4) e8[ dis] |
  e2 e4 e |
  e2( dis4) dis |
  e1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  b4 b b b |
  c1 |
  b2 b4 b8[ c] |
  d4 c d2 |
  d d4 d |
  c2 e |
  e b4 b |
  b2. b8[ a] |
  g4( a) b b |
  c2( b4) a |
  g1 |
  b4 b b b |
  c1 |
  b2 b8 b b c |
  d4 c d d |
  d2 d4 d |
  e2. e4 |
  e2 b4 b |
  b2. b8[ a] |
  g4( a) b b |
  c2( b4) a |
  g1 |
  b2 b4 b |
  c1 |
  b2 b4. c8 |
  d4 c d d |
  d2 d4 d |
  e1~ |
  e2 b4 b |
  b2.~\( b8[ a] |
  g4( a)\) b b |
  c2( b4) a |
  g1 d'2 d1 |
  b4 b b8[ c] d4 |
  c4.( b8 a[ b] c4) |
  b2 b4( c) |
  d( e d2) |
  d2 d4 d |
  e1 |
  e2( b4) b |
  b2. b8[ a] |
  g4( a) b2 |
  c2( b4) b |
  b2 r8 b b d |
  d4 e d2 |
  d d4 d |
  e2. e4 |
  e2 b4 b |
  b2. b8[ a] |
  g4( a) b b |
  c2( b4) a |
  g1
}


bassvoice = \relative c {
  \global
  \dynamicDown
  e4 e e8[ fis] g4 |
  << a1 {s4\< s\! s\> s\! } >> |
  e2 e4 d8[ c] |
  b4 a g( b) |
  d2 d4 c8[ b] |
  a2( c) |
  e2 dis4 e |
  b2. b4 |
  c2 g4 g |
  a2( b4) b |
  e1\fermata
  e4 e e8[ fis] g4 |
  << a1 {s4\< s\! s\> s\! } >> |
  e2 e8 e d c |
  b4 a g b |
  d2 d4 c8[ b] |
  a2( c4) c |
  e2 dis4 e |
  b2. b4 |
  c2 g4 g |
  a2( b4) b |
  e1\fermata
  e2 e8[ fis] g4
  << a1 {s4\< s\! s\> s\! } >> |
  e2 e4( d8[ c]) |
  b4 a g b |
  d2 d4 c8[ b] |
  a2( c |
  e) dis4 e |
  b2.( b4 |
  c2) g4 g |
  a2( b4) b |
  e1\fermata d2 d1 |
  g4 g g g |
  d1 |
  g2 g |
  g1 |
  d2 d4 c8[ b] |
  a2( c) |
  e2( dis4) e |
  b2. b4 |
  c2 g |
  a( b4) b |
  e2 r8 e e d |
  g4 g << { g,4( b)} \new Voice {\voiceFour g'2} >> |
  d2 d4 c8[ b] |
  a2( c4) c |
  e2 dis4 e |
  b2. b4 |
  c2 g4 g |
  a2( b4) b |
  e1\fermata
}

lyricscore = \lyricmode {
  И -- же хе -- ру -- ви -- мы и -- же хе -- ру -- ви --
  мы та -- йно та -- йно о -- бра -- зу -- ю --
  ще, о -- бра -- зу -- ю -- ще, и жи -- во -- тво -- ря --
  щей и жи -- во -- тво -- ря -- щей Тро -- и -- це три -- свя -- ту -- ю
  песнь при -- пе -- ва -- ю -- ще при -- пе -- ва -- ю -- ще,
  вся -- ко -- е ны -- не ны -- не жи -- те -- йско --
  е о -- тло -- жим, __ о -- тло -- жим __
  по -- пе -- че -- ни -- е. А -- минь. Я -- ко да ца --
  ря всех по -- ды -- мем, а -- нге -- льски --
  ми не -- ви -- ди -- мо не -- ви -- ди --
  мо до -- ри -- но си -- ма чи -- нми. А -- лли -- лу -- и --
  я, а -- лли -- лу -- и -- я, а -- лли -- лу -- и -- я.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
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
      
      \new Lyrics = "sopranos"
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
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
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
      \tempo 4=90
    }
  }
}
