\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Превjечни родисjа по љети"
  composer = "Jосиф Маринковић"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key g \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
%abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar  
  g4 a b2 |
  c8 b a b g4. d8 |
  g4 a b2 |
  c8 b a b g4 g |
  d d \tieDashed d'~ d |
  c8 b a g fis g a4 |
  b a b( d8[ e]) |
  b4 a8[( b]) g2 \bar "||"
  
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  g4 fis g2 |
  g8 g fis fis d4. d8 |
  e4 fis g2 |
  a8 g fis fis d4 d |
  d d \tieDashed d~ d |
  a'8 g fis e dis e fis4 |
  g fis g2 |
  g4 g8[( fis]) d2
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  g4 d' d2 |
  e8 d c c b4. b8 |
  b4 d d2 |
  d8 d c c b4 b |
  c8 b a g fis g a [( b]) |
  d d c c b b d4 |
  d d8[( c]) b[( g' fis e]) |
  d4 c8[( b]) b2
  
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  g4 d g2 |
  r4 d8 d g, b d g |
  e4 d g2 |
  fis8 g d d <g g,>4 q |
  a8 g fis e d e fis[( g]) |
  fis g d e b e d4 |
  g d g( c,) |
  d e8[( d]) <g g,>2
}

lyricscoreone = \lyricmode {
  \set stanza = "1. " Пре -- вjе -- чни ро -- ди -- сjя по -- ље -- ти,
  во -- схо -- тjев зем -- љy про -- свjе -- ти -- ти,
  да нас от__тми и кто свjе -- ту при -- вjе -- дет от мра -- чних, от мра -- чних.
}

lyricscoretwo = \lyricmode {
  \set stanza = "2. " Но -- во -- jе ље -- то на -- чи -- ња -- jет,
  но -- ви цар цар -- jа ни -- зла -- га -- jет.
  у -- бо -- ги_сjа бо -- га -- та -- го за -- сму -- тил И -- ро -- да, И -- ро -- да.
}

lyricscorethree = \lyricmode {
  \set stanza = "3. " А звjе -- зда пре -- два -- ри -- ла ца -- ри,
  к_ве -- рте -- пу те -- ку -- шчи -- jа сда -- ри;
  скор -- ше при-шли не -- жел му -- дри звjе -- зда -- ри И -- су -- су, И -- су -- су.
}

lyricscorefour = \lyricmode {
  \set stanza = "4. " Jе -- му -- же гла -- ви при -- кла -- ња -- jут,
  во jа -- сљех Бо -- га про -- сла -- вља -- jут;
  ра -- ди нас от Дjе -- ви же ро -- жде -- на, пре -- вjе -- чна, пре -- вjе -- чна.
}

lyricscorefive = \lyricmode {
  \set stanza = "5. " Ми же что Бо -- гу да во -- зне -- сем,
  чест, сла -- ву Jе -- му да при -- не -- сем;
  да нам жи-вот цар -- ство не -- бес го -- ту -- jет на вjе -- ки, на вjе -- ки.
}

lyricscoreoneb = \lyricmode {
  \set stanza = "1. " Пре -- вjе -- чни ро -- ди -- сjя по -- ље -- ти,
  во -- схо -- тjев зем -- љy про -- свjе -- ти -- ти,
  да нас от тми во -- зве -- дет и кто свjе -- ту при -- вjе -- дет от мра -- чних, от мра -- чних.
}

lyricscoretwob = \lyricmode {
  \set stanza = "2. " Но -- во -- jе ље -- то на -- чи -- ња -- jет,
  но -- ви цар цар -- jа ни -- зла -- га -- jет.
  у -- бо -- ги сjа  на -- ро -- дил бо -- га -- та -- го за -- сму -- тил И -- ро -- да, И -- ро -- да.
}

lyricscorethreeb = \lyricmode {
  \set stanza = "3. " А звjе -- зда пре -- два -- ри -- ла ца -- ри,
  к_ве -- рте -- пу те -- ку -- шчи -- jа сда -- ри;
  скор -- ше при шли па -- сти -- ри не -- жел му -- дри звjе -- зда -- ри И -- су -- су, И -- су -- су.
}

lyricscorefourb = \lyricmode {
  \set stanza = "4. " Jе -- му -- же гла -- ви при -- кла -- ња -- jут,
  во jа -- сљех Бо -- га про -- сла -- вља -- jут;
  ра -- ди нас во -- пло -- шче -- на, от Дjе -- ви же ро -- жде -- на, пре -- вjе -- чна, пре -- вjе -- чна.
}

lyricscorefiveb = \lyricmode {
  \set stanza = "5. " Ми же что Бо -- гу да во -- зне -- сем,
  чест, сла -- ву Jе -- му да при -- не -- сем;
  да нам жи -- вот да -- ру -- jет, цар -- ство не -- бес го -- ту -- jет на вjе -- ки, на вjе -- ки.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
    ragged-bottom = ##f
    system-separator-markup = \slashSeparator
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
      
      %\new Lyrics = "sopranos"
      \new Lyrics \lyricsto "soprano" { \lyricscoreone }
      \new Lyrics \lyricsto "soprano" { \lyricscoretwo }
      \new Lyrics \lyricsto "soprano" { \lyricscorethree }
      \new Lyrics \lyricsto "soprano" { \lyricscorefour }
      \new Lyrics \lyricsto "soprano" { \lyricscorefive }
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
      \new Lyrics \lyricsto "bass" { \lyricscoreoneb }
      \new Lyrics \lyricsto "bass" { \lyricscoretwob }
      \new Lyrics \lyricsto "bass" { \lyricscorethreeb }
      \new Lyrics \lyricsto "bass" { \lyricscorefourb }
      \new Lyrics \lyricsto "bass" { \lyricscorefiveb }
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \accidentalStyle modern-voice-cautionary
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
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
    \midi {
      \tempo 4=90
    }
  }
}
