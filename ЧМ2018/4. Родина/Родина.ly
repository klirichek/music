\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}

\header {
  title = "Родина моя"
  subtitle = "(перелож. О. Серебровой)"
  composer = "Д. Тухманов"
  poet = "Р. Рождественский"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \major
  \time 2/2
%  \numericTimeSignature
  \autoBeamOn
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

% uncommend next line when finished
abr = {}
%pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


harmonies = \chordmode {
  e1:m
  s1*15
  \repeat volta 2 {
  e1:m s1*3
  c1 s1*3
  d1 s1
  d:7 s2 c
  g:7 s2 s1*3
  a1:m s1*3
  e1:m s1*3
  c1 s1
  }
  \alternative
  {
    {
      d1 s1
      a1:m s1
      b1:7
    }
    {
      d1 s1
      fis1 s1
      b1
    }
  }
  s1 b:7 s1
  e1 s1*3
  fis1 s1*3
  a1 s fis:7 b:7
  

}

yavoice = \relative c'' {
    \override NoteHead.style = #'cross
  a4-> r a-> r |
  a r8 a a4 r |
  a a a8 a a4 |
  r a a r | \abr
  
  a4 a a8 a a4 |
  r a a r |
  a8 a a4 r a |
  a a a r | \abr
   \revert NoteHead.style

}

solovoice = \relative c'' {
  \set Score.markFormatter = #format-mark-circle-numbers
  \global
  \yavoice
      \override NoteHead.style = #'cross
   a a a a |
  a a a r |
  a a a a |
  a a a r |
  a a r a8 a | \abr
  a4 a r2 |
  a8 a a4 r a |
  a a r2 \bar "||"   \revert NoteHead.style

  \repeat volta 2 
  {
  \mark "Solo"
  b,2. e4 |
  e2. g4 | \abr
  g2. b4 |
  b2 a |
  g1~ |
  g4 fis e d |
  e1~ | \abr
  e2 r |
  a,2. d4 |
  d2. fis4 |
  fis2. a4 |
  a2 g | \abr
  fis1~ |
  fis4 e d cis |
  d1~ |
  d2 r | 
  e2. a,4 |
  a2. c4 | \abr
  
  c2. e4 |
  dis4 e fis e |
  e2. g,4 |
  g2. b4 |
  b2. e4 | \abr
  dis e fis e | \break
  g1~ |
  g4 fis e g |
  }
  \alternative {
    {
      fis1~ |
      fis4 e d fis | \abr
      e1~ |
      e4 d c d |
      b2 r
    }
    {
      a'1~ |
      a4 g fis a | \abr
      ais1~ |
      ais4 gis fis ais |
      b1~ |    
    }
  }
  b4 b a? b |
      cis4 b2.~ | \abr
      b1 |
  \key e \major
  b2. ais4 |
  b2. gis4 |
  b1 |
  ais4 b cis b | \abr
  b1~ |
  b2 a4 gis |
  a1~ |
  a2. r4 |
  cis2. b4 | \abr
  cis2. a4 |
  cis1 |
  b4 a gis fis |
  a1~ |
  a2 b4 a | \abr
  gis r b2 |
  cis b |
  b2. ais4 |
  b2. gis4 |
  b1 | \abr
  ais4 b c b |
  d1~ |
  d2 c4 b |
  c1~ |
  c4 b a g | \key g \major | \abr
  f2 g4 a |
  g2 a4 b |
  a2 b4 c |
  b2 c4 d |
  b2 c4 d | \abr
  b2 c4 d |
  b1~ |
  b |
  \repeat volta 1
  {
    R1^\markup\italic"(повторяется три раза)"
    R1*7
  }
  
 
}

sopvoice = \relative c'' {
  \global
  R1*16
  \repeat volta 2 
  {
    R1*4
    g1~ |
    g4 fis e d |
    e1~ |
    e2 r |
    R1*4
    fis1~ |
    fis4 e d cis |
    d1~ |
    d2 r |
    R1*8
    <g c e>1~ |
    q
  }
  \alternative
  {
    {
      <fis b d>1~ |
      q
      <e a c>1~ |
      q |
      <dis a' b>2 r
    }
    {
      <fis a d>1~ |
      q |
      <fis ais cis>1~ |
      q |
      <fis b dis>1~ |
    }
  }
  q4 b a b |
  cis b2.~ |
  b1 | \key e \major
  b2. ais4 |
  b2. gis4 |
  b1 |
  ais4 b cis b |
  <gis b>1~ |
  q2 a4 gis |
  <fis a>1~ |
  q2. r4 |
  <a cis>2. <gis b>4 |
  <a cis>2. a4 |
  <a cis>1 |
  b4 a gis fis |
  <a e>1~ |
  a2 <b gis>4 <a fis> |
  gis4 r b2 |
  cis b |
  b2. ais4 |
  b2. gis4 |
  b1 |
  ais4 b c b |
  <b d>1~ |
  q2 c4 b |
  c1~ |
  c4 b a g | \key g \major |
  f2 g4 a |
  g2 a4 b |
  a2 b4 c |
  b2 c4 d |
  b2 c4 d |
  b2 c4 d |
  b1~ |
  b |
  \yavoice
  

}


altvoice = \relative c' {
  \global
  
     s1*16
  \repeat volta 2 
  {
    s1*26
  }
  \alternative
  {
    {
      s1*5
    }
    {
      s1*5
    }
  }
  s4 dis cis dis |
  e dis2.~ |
  dis1
  <e gis>2. <e g>4 |
  <e gis>2. e4 |
  <e gis>1 |
  <e g>4 <e gis> <e a> <e gis> |
  cis1~ |
  cis2 <cis fis>4 <cis f> |
  cis1~ |
  cis2. r4 |
  e2. e4 |
  e2. fis4 |
  e1 |
  dis4 cis b dis |
  cis1~ |
  cis2 dis4 cis |
  <b e>4 r b2 |
  cis2 b |
  <e gis>2. <e g>4 |
  <e gis>2. e4 |
  <e gis>1 |
  <e g>4 <e gis> <e a> <e gis> |
  e1~ |
  e2 a4 gis |
  a1~ |
  a4 b a g |
  s1*3 |
  b2 c,4 d |
  b2 c4 d |
  b2 c4 d |
  b1~ |
  b |
}


bassvoice = \relative c {
  \global
  \oneVoice
  
    R1*16
  \repeat volta 2 
  {
    R1*26
  }
  \alternative
  {
    {
      R1*5
    }
    {
      R1*5
    }
  }
   r4 b' a b |
   cis b2.~ |
   b1 \key e\major
   e,2. e4 |
   e2. b4 |
   e1 |
   e4 e e e |
   fis1~ |
   fis2 cis4 cis |
   fis1~ |
   fis2. r4 |
   a2. a4 |
   a2. a4 |
   fis1 |
   b,4 b b b |
   e1~ |
   e2 b4 b |
   e4 r b'2 |
   cis b |
   e,2. e4 |
   e2. b4 |
   e1 |
   e4 gis a gis |
   b1~ |
   b2 a4 gis |
   a1~ |
   a4 b a g? |
   \key g\major
   f2 g4 a |
   g2 a4 b |
   a2 b4 c |
   b2 << { c4 d } \\ { c, d } >>
   << { b'2 c4 d | b2 c4 d b1~ b } \\
      { b,2 c4 d | b2 c4 d | b1~ | b } 
   >>
   \transpose c c, << \yavoice \\ s1^\markup\italic"(баритоны со 2 раза)" >>
}

lyricscommon = \lyricmode {
  как буд -- то праз -- дник! __
  Бу -- дут на те -- бя звё -- зды у -- див -- лён -- но смо -- треть, __
     Бу -- дут над то -- бой до -- бры -- е ра -- све -- ты го --
     реть в_пол -- не -- ба В_си -- ней вы -- ши -- не
     пти -- цы бу -- дут ра -- до -- стно петь, __ и бу -- дет
     пе -- сня зве -- неть над то -- бой в_о -- бла -- ках на кры -- ла -- тых тво --
     их я -- зы -- ках! __
}

lyricsya = \lyricmode {
  Я, ты, он, о -- на,
  вме -- сте це -- ла -- я стра -- на,
  вме -- сте дру -- жна -- я се -- мья,
  в_сло -- ве «мы»_— сто ты -- сяч «я».
}


lyricssolo = \lyricmode {
  \lyricsya
  боль -- ше -- гла -- зых, о -- зо -- рных,
  чё -- рных, ры -- жих  и льня -- ных,
  гру -- стных и ве -- сё -- лых
  в_го -- ро -- дах и сё -- лах!
    Над то -- бо -- ю со -- лнце све -- тит, Ро -- ди -- на -- мо -- я! __
    Ты пре -- кра -- сней всех на све -- те Ро -- ди -- на мо -- я! __
    Я лю -- блю, стра -- на, тво -- и про -- сто -- ры,
    я лю -- блю тво -- и по -- ля и го -- ры,
    сон -- ны -- е о --

     зё -- ра и бур -- ля -- щи -- е мо -- ря

}

lyricssolosnd = \lyricmode {
\repeat unfold 52 \skip 1
    Над по -- ля -- ми вы -- гнет спи -- ну ра -- ду -- га ду -- га __
    нам от -- кро -- ет сто тро -- пи -- нок
    си -- ня -- я тай -- га! __
    Вновь на -- ста -- нет вре -- мя спе -- лых я -- год,
    а по -- том о -- пять, на зе -- млю ля -- гут бе -- лы -- е ог_-  
    \repeat unfold 9 \skip 1
         //-ро -- мны -- е, ро -- ско -- шны -- е сне -- га,
     \lyricscommon
}

lyricssop = \lyricmode {
  \repeat unfold 17 \skip 1
  \lyricscommon
  \lyricsya
}

lyricsecondone = \lyricmode {
  \set stanza = "2а) " Льё -- тся с_вы -- со -- ты __
  \set stanza = "2а) " Смо -- жем_— я и ты. __
}

lyricsecondtwo = \lyricmode {
    \set stanza = "2б) " Ширь тво -- их сте -- пей __
  \set stanza = "2б) " Со -- лне -- чно в_су -- дьбе. __
}

textOfSong = \markup {
    \line {
          \right-column { 2. }
          \column { 
            \line { Над тобою солнце светит, }
            \line { Льётся с высоты. }
            \line { Всё на свете, всё на свете }
            \line { Сможем — я и ты. }
            \line { Я прильну, земля, к твоим берёзам, }
            \line { Я взгляну в глаза весёлым грозам. }
            \line { И, смеясь от счастья, упаду в твои цветы. }
          }
          \column { "   " }
          \column {
                    
            \line { Обняла весна цветная }
            \line { Ширь твоих степей. }
            \line { У тебя, страна, я знаю, }
            \line { Солнечно в судьбе. }
            \line { Нет тебе конца и нет начала, }
            \line { И текут светло и величаво }
            \line { Реки необъятные, как песня о тебе, }
            \line { 	как будто праздник! }
          }
    }
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
    

    <<
 %     \new ChordNames %\with { chordChanges=##t }
 %     {
 %       \harmonies
 %     }

      \new Staff = "upstaff" \with {
        shortInstrumentName = "С"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solo" { \oneVoice \solovoice }
      >> 
     
           \new Lyrics \lyricsto "solo" { \lyricssolo }
           \new Lyrics \lyricsto "solo" { \lyricssolosnd }

      
      \new StaffGroup <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricssop }
      
            \new Lyrics \lyricsto "soprano" { \lyricsecondone }
      \new Lyrics \lyricsto "soprano" { \lyricsecondtwo }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        instrumentName = "Бар."
        shortInstrumentName = "Б"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \clef "bass" \oneVoice \bassvoice }
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
 \textOfSong
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
        \new Voice = "solo" { \oneVoice \solovoice }
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
      \tempo 2=120
    }
  }
}
