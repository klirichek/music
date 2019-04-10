\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Новосибирск"
  subtitle = "(перелож. О. Серебровой)"
  composer = "муз. Ленского"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key e \minor
  \time 4/4
%  \numericTimeSignature
  \autoBeamOff
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

%use this as temporary line break
abr = { \break }
pbr = { \pageBreak }
con = { \cadenzaOn }
coff = { \cadenzaOff \bar "|" }
cbr = { \bar "" }
toalto = { \set associatedVoice = "alto" }
tosop = { \set associatedVoice = "soprano" }
markfermata = {\mark \markup { \musicglyph #"scripts.ufermata" }}

% uncommend next line when finished
abr = {}
%pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


sopvoice = \relative c' {
  \global
  \repeat volta 2 {
  \oneVoice b4. e8 dis4. g8 |
  fis e dis e b'4 a |
  b,8 e g fis e cis cis e |
  dis2 r | \abr
  b4. e8 dis4. g8 |
  fis e dis e b'4 a |
  a8 g fis e d4 \voiceOne <fis c'> |
  <fis b>2 r | \abr
  e'2^\markup"А…"( dis |
  d cis) |
  \oneVoice a8 g fis e \voiceOne dis fis <fis a> <a c> |
  b2( \acciaccatura {b4 a} b4) r | \abr
  b4. a8 b4. fis8 |
  a g fis g <b cis>4 <a cis> |
  } \alternative {
    
    { b,8 e g fis e4 dis | e2 r }
    { b8 e g fis e4 dis | e2 r }
  }
  b'4. e8 dis4. g8 |
  fis e dis e b4 a | \abr
  b8 e g fis e cis cis e |
  dis2 r |
  b4. e8 dis4. g8 |
  fis e dis e b4 a |
  c8 b a g fis4 e' |
  d2 r |
  b4. a8 b4. a8 |
  a g fis g b4 a | \abr
  \oneVoice a8 g fis e \voiceOne dis fis <fis a> <a c> |
  b2( \acciaccatura {b4 a} b4) r | \abr
  <b e>4. <a e'>8 <b dis>4. <fis dis'>8 |
  <a d>8 <g d'> <fis d'> <g d'>^\markup\italic"rit." <b cis>4 <a cis> | 
  \markfermata
  \tempo "Широко"
  b,8 e g fis e4 b' |
  <b e>1~ q | \bar "||"
}


altvoice = \relative c' {
  \global
  \repeat volta 2 {
  s1*6
  s2 d4 c |
  b2 r |
  b'4. a8 b4. a8 |
  a8 g fis g b4 a 
  s2 dis,8 dis dis dis |
  <d f>2( <d e gis>4) r |
  <e e'>2( <dis dis'> <d d'>) cis4 cis |
  } \alternative
  {
    { s1*2 }
    {s1*2 }
  }
  b4. e8 dis4. g8 |
  fis e dis e b4 a |
  b8 e g fis e cis cis e |
  dis2 r |
  b4. e8 dis4. g8 |
  fis e b' g g4 fis |
  a8 g fis e d4 c' |
  b2 r |
  e,2(_\markup"А…" dis |
  d cis) |
  s2 dis8 dis dis dis |
  <d f>2( <d e gis>4) r |
  e4. e8 dis4. dis8 |
  d8 d d d cis4 cis
  s4 s s dis |
  <fis gis>1~ q |
}


bassvoice = \relative c {
  \global
   \repeat volta 2 {
     b4. e8 dis4. g8 |
     fis e dis e b'4 a |
     b,8 e g fis e cis cis e |
     dis2 r |
     b4. e8 dis4. g8 |
     fis e dis e b'4 a |
     a8 g fis e d4 d |
     g2 r |
     b4. a8 b4. a8 |
     a g fis g b4 a |
     a8 g fis e dis fis a c |
     b2. r4 |
     b4. a8 b4. fis8 |
     a g fis g b4 a 
   }
   \alternative 
   {
     { b,8 e g fis e4 dis | e2 r }
     { b8 e g fis e4 dis | e2 r }
   }
  R1*8
  b'4. a8 b4. a8 |
  a g fis g b4 a |
  a8 g fis e dis fis a c |
  b2. r4 |
  b4. a8 b4. fis8 |
  a g fis g b4 a |
  b,8 e g fis e4 <b b'>4 |
  <e b>1~ |
  q
}

lyricscommon = \lyricmode {
  \set stanza = "1. " Есть на све -- те мно -- го пе -- сен ра -- зных
  о боль -- ших и ма -- лых го -- ро -- дах.
  Я по -- ю о го -- ро -- де пре -- кра -- сном
  том, что до -- рог мне все -- \toalto гда.
  Пусть зи -- мой здесь снег и -- дёт и хо -- \tosop лод,
  а в_и -- ю -- ле то гро -- за, то зной,
  я лю -- блю те -- бя, мой ми -- лый го -- род,
  мой Но -- во -- си -- бирск ро -- дной.
  мой Но -- во -- си -- бирск ро -- дной.
  Ла…
  \repeat unfold 35 \skip 1
  Пусть зи -- мой здесь снег и -- дёт и хо -- лод,
  а в_и -- ю -- ле то гро -- за, то зной, __
  я лю -- блю те -- бя, мой ми -- лый го -- род,
  мой Но -- во -- си -- бирск ро -- дной.
  
}

lyricscommonsecond = \lyricmode {
  \set stanza = "2. " Я и -- ду по Кра -- сно -- му про -- спе -- кту
  где а -- лле -- и шу -- мно -- ю ли -- ствой,
  мне по -- ют бе -- рё -- зки пе -- сню э -- ту
  cо -- лнцу ра -- ду -- ясь со \toalto мной.
  Вы -- со -- ка во -- лна Об -- ско -- го мо -- \tosop ря,
  хо -- ро -- ши ра -- ссве -- ты над ре -- кой
 
}



lyricsthree = \lyricmode {
  \repeat unfold 109 \skip 1
  \set stanza = "3. " Точ -- ный пас, шай -- ба в_цель, гол за -- бит. Мы по -- бе -- ду ра -- зде -- лим на всех.
}

lyricscite = \lyricmode {
  \repeat unfold 67 \skip 1
  Рос -- си -- я впе -- рёд!
}
  urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 0
    ragged-last-bottom = ##f
  }
  \score {
    %  \transpose c bes {
    

    <<
 %     \new ChordNames %\with { chordChanges=##t }
 %     {
 %       \harmonies
 %     }
      
      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      %\new Lyrics \lyricsto "alto" { \lyricscite }
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
      \new Lyrics \lyricsto "soprano" { \lyricscommonsecond }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef bass \oneVoice \bassvoice }
      >>
      
      >>
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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      %Metronome_mark_engraver
    }    
  }
\urllogo

}

\bookpart {
  \score {
    \unfoldRepeats
    %  \transpose c bes {
    \new ChoirStaff <<
%            \new ChordNames %\with { chordChanges=##t }
%      {
%        \harmonies
%      }
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
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=120
    }
  }
}
