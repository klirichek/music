\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Моя земля"
  subtitle = "(к 80-летию Новосибирской области)"
  poet = "Сл. О. Колоколова"
  composer = "Муз. О. Серебровой"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key g \minor
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

% uncommend next line when finished
abr = {}
%pbr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }


sopvoice = \relative c' {
  \global
 \repeat volta 3 {
   \time 4/4
   R1*3_"тенор = альт" |
   \oneVoice r2 r4 r8 d8 |
   \time 3/4 d'4. c8 bes a |
   d8. c16 c4 r8 d, | \abr
   c'4. bes8 a bes |
   a8. g16 g4 r8 e |
   bes' a g4 fis | \abr
   a8. g16 g4. d8 |
   cis bes' a4 es |
   a2 r8 \voiceOne d,^"(без бар.)" | \abr
   d'4. c8 bes a |
   d8. c16 c4. c8 |
   c4. c8 b g | \abr
   g c c4 r8 c, |
   c4. c8 d es |
   d g g4. d8 | \abr
   <e g>8. q16 q4 <fis d> |
   \key a \minor <d g>2.~ |
   q4 r8 g b d | \abr
   f4. e8 d c |
   e4. e,8 g c |
   <c e>4. <c d>8 c b | \abr
   <c e>4 r8 d8~ d c16 d |
   c4. g8 c8. b16 |
   c4 r8 d,8 fis a | \abr
   
   c4. f, 8 a c  |
   <d c>8( <d b>) r g, b d |
   <c f>4. <c e>8 <c d> c |
   <c e>4.  e,8 g c |
   <c e>4. <c d>8 <c a> <b a> |
   <c e>4 r8 d~ d c16 d |
   c4. g8 c8. b16 |
   c4  r8 d, fis a |
   c2.~ |
   c2 <c a>4 |
   <c d>2 <b d>4 |
  \time 4/4 c2.  r4 |
 }
   R1*2 |
   r2 r8 d, fis a |
   c2~ <c e>4 c |
   <c d>2. <b d>4 |
   c2. r4 |
   r2 r8 bes <bes d> <bes d f> |
   <e g>1\fermata \bar "||"
}


altvoice = \relative c'' {
  \global
  \repeat volta 3 {
    \time 4/4 s1*4
    \time 3/4 s2.*8
    bes4. a8 g a |
    fis8. a16 a4. a8 |
    as4. as8 g d |
    e8 e e4 r8 c |
    c4. c8 d es |
    d g g4. d8 |
    c8. c16 c4 c |
    b2.~ |
    b4 r8 g' g g |
    <a c>4. <g c>8 <f c'> <e g>
    <g c>4.
    e8 g e |
    f4. f8 <f a> q  |
    f4  r8 f~ f f16 f |
    e4. g8 e8. g16 |
    fis4 r8 d fis fis
    f4. f8 f f |
    f8( g) r8 g g g |
    a4. g8 f <e g> |
    g4.  e8 g e |
    f4. f8 f f |
    f4 r8 f~ f f16 f |
    e4. g8 e8. g16 |
    fis4 r8 d fis fis |
    e2.~ |
    e2 e4 |
    <f a>2 <f g>4 |
    \time 4/4 <e g>2. r4 |
 }
 R1*2
  r2 r8 d fis fis |
  e2( g4) g
  <f a>2. <f g>4 |
  <e g>2. r4 |
  r2 r8 bes'8 f f |
  <g c>1
}


bassvoice = \relative c {
  \global
  \repeat volta 3 {
        \time 4/4 R1*4
    \time 3/4 R2.*11
    r4 r r8 c |
    c4. c8 d es |
    d g g4. d8 |
    g8. g16 g4 a |
    \key a \minor g2.~ |
    g4  r8 g b g |
    c4. e,8 f g |
    g4. e8 g e |
    a4. a8 a a |
    as4 r8 as ~ as as16 as |
    g4. g8 g8. g16 |
    a4 r8 d, fis a |
    a4. d,8 f a |
    g4 r8 g b g |
    c4. e,8 f g | \abr
    
    g4. e8 g e |
    a4. a8 a a |
    as4 r8 as~ as as16 as | \abr
    g4. g8 g g |
    a4 r8 d, fis a |
    g2. ( |
    a2) a4 | \abr
    c2 b4 |
    \time 4/4 c2. r4 |
  }
    R1*2 | \abr
    r2 r8 d, fis a |
    g2. g4 |
    c2. b4 |
    c2. r4 | \abr
    r2 r8 bes f bes |
    <c \parenthesize c,>1\fermata \bar "||"

}

lyricscommon = \lyricmode {
  \set stanza = "1. " О -- на дав -- но жи -- вёт во мне 
  пу -- скай е -- щё не я -- сна -- я,
  ме -- чта, что я во -- спеть смо -- гу кра -- су тво -- ю и ширь.
  Зе -- рно мо -- ё пше -- ни -- чно -- е, мо -- я ка -- ли -- на
  кра -- сна -- я, ра -- здо -- льна -- я и го -- рда -- я,
  зе -- мля мо -- я Си -- бирь!
  Взма -- хну кры -- лом, поль -- юсь ре -- кой,
  из кра -- я в_край про -- йду весь мир,
   и не на -- йду дру -- гой та -- кой зе -- мли,
   как ты, мо -- я Си -- бирь.
  Взма -- хну кры -- лом, поль -- юсь ре -- кой,
  из кра -- я в_край про -- йду весь мир,
  И не на -- йду дру -- гой та -- кой зе -- мли, как ты, мо -- я Си -- бирь.
  
  Зе -- мли, как ты, мо -- я Си -- бирь, мо -- я Си -- бирь!
}

lyricssecond = \lyricmode {
  \set stanza = "2. " В_бе -- де лю -- бой и в_ра -- до -- сти, без о -- тды -- ха без у -- ста -- ли
 от тру -- дных дел не пря -- та -- лись и не та -- и -- ли зла.
Жи -- вёт во мне от ма -- те -- ри тво -- я кро -- ви -- нка ру -- сска -- я
жи -- вым о -- гнём мо -- ро -- зно -- го си -- би -- рско -- го те -- пла.
}

lyricsthird = \lyricmode {
  \set stanza = "3. " И -- щу сло -- ва хо -- ро -- ши -- е, пра -- вди -- вы -- е и си -- льны -- е
чтоб пе -- ре -- дать лю -- бовь сво -- ю и по -- лю -- бить си -- льней.
Ле -- са тво -- и вы -- со -- ки -- е,
тво -- и о -- зё -- ра си -- ни -- е
и не -- бо ва -- си -- лько -- во -- е
и пе -- сни глу -- ха -- рей.
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscommon }
      \new Lyrics \lyricsto "soprano" { \lyricssecond }
      \new Lyrics \lyricsto "soprano" { \lyricsthird }

      
      % or: \new Lyrics \lyricsto "soprano" { \lyricscore }
      % alternative lyrics above up staff
      %\new Lyrics \with {alignAboveContext = "upstaff"} \lyricsto "soprano" \lyricst
      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "bass" { \oneVoice \clef bass \bassvoice }
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
