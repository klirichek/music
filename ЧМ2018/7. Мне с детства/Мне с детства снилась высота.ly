\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 19)

\header {
  title = "Мне с детства…"
  subtitle = "(перелож. О. Серебровой)"
  composer = "муз. А. Пахмутовой"
  poet = "Сл. Н. Добронравова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}
shortvolta = { \set Score.voltaSpannerDuration = #(ly:make-moment 4/4) }
urllogo = \markup {
  \fill-line { " " \epsfile #X #10 #"../qrlink.eps" }
}

global = {
  \key d \major
  \time 4/4
%  \numericTimeSignature
  \autoBeamOff
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1
  \shortvolta
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

solovoice = \relative c' {
  \global
  \oneVoice
  R1 |
  r2^\markup\italic"соло" r4 r8 a8 |
  \repeat volta 3 {
    fis'4. a,8 g b d e | \abr
    fis4~( fis16[ e fis g] fis[ e d8]) r8 a |
    fis'4. a,8 d e fis a |
    b2 a4 r8 fis | \abr
    d'4. cis8 cis b cis d |
  } \alternative {
    { d4~( d16[ b g fis] e4) r8 d' |
    e4. d8 d cis d e | \abr
    b4.( cis16[ b]) ais4~ ais8 r |
    r fis fis8. fis16 fis g g8~ g r |\abr
    r16 b b b a8. g16 g[( fis]) fis8~ fis r |
    r fis gis8. a16 a b b8~ b r | \abr
    r16 gis gis gis a8. b16 b[( cis]) cis8~ cis r |
    R1*4
    r8 d d4~ d8 b cis d | \abr
    d2 cis4~ cis8 r |
    r4 b b4. d,8 |
    d4. cis8 cis4 r |
    R1 | \abr
    r2 r4 r8 a
    }
  {
  d'4~( d16[ b g fis] e4) r8 b |} }
  b'4. b,8 b b cis d | \abr
  fis4.( g16[ fis]) e4 r4 |
  R1*2 \abr
  R1
  r2 r4 r8 fis |
  d'4. cis8 cis b cis d |
  d4~( d16[ b g fis] e4) r8 d'8
  e4. d8 d cis d e |
  d2( cis) |
  d4~ d8 r r2 | \abr
  R1*7
}

sopvoice = \relative c'' {
  \global
   R1*2 |
  \repeat volta 3 {
    R1*5
  }
  \alternative {
    {R1*7
    r8 fis fis8. fis16 e b gis8~ gis r | \abr
    r16 dis' dis dis dis8. dis16 cis[( gis]) eis8~ eis r |
    r8 fis8 fis8. fis16 e b b8~ b r | \abr
    r16 dis^\markup\italic"SI,II" dis dis dis8. dis16 cis8 cis~ cis r | \bar "||"
    R1*6
  }
  {R1}} R1
  r2 r4 r8 a' |
  fis'4. a,8 g b d e |
  fis4~( fis16[ e fis g] fis[ e d8]) r a |
  fis'4. a,8 d e fis fis |
  <d eis>2 <d fis>4 r
  fis1( |
  g2.) r8 d8 | \abr
  e4. d8 d cis d e |
  d2( cis) |
  d4~ d8 r <c e>2\( | \abr
  <b g'> <a cis>\) |
  r2 <c e>\( |
  <b g'> <a cis>\) |
  r2 e^\markup\italic"SI,II" <d fis>( <b e>) |
  <d fis>1~ |
  q2~ q8 \oneVoice r r4 \bar "|."
}


altvoice = \relative c'' {
  \global
   \voiceTwo
  s1*2 |
  \repeat volta 3 {
    s1*5 }
  \alternative { {R1*7
    r8 <ais cis> q8. q16 <gis b> <e gis> <b e>8~ q r |
    r16 <fis' b> q q q8. q16 <eis gis>[( <cis eis>]) <gis cis>8~ q r |
    r <ais cis> q8. q16 <gis b>16 gis gis8~ gis r |
    r16 b b b b8. b16 gis8 gis~ gis r |
    s1*6
  }
    {s1}} s1
    s2 s4 r8 a |
    fis'4. a,8 g b d e |
    fis4~( fis16[ e fis g] fis[ e d8]) r a |
    fis'4. fis8 <fis a> q q <a d> |
    b2 a4 r |
    <b d>1~ |
    q2. r8 d, |
    e4. d8 d cis d e |
    d2( cis) |
    d4~ d8 r <e g>2 |
    <d g> <e g>
    r <e g> |
    <d g> <e g> |
    r b |
    a( gis) |
    a1~ |
    a2~ a8 s s4
}


bassvoice = \relative c' {
  \global
 R1*2 |
  \repeat volta 3 {
    R1*5 }
  \alternative {{ R1*9
    r8 ais8 ais8. ais16 gis e e8~ e r
    r16 fis fis fis fis8. fis16 eis8 eis~ eis r |
    R1*6
  }
  {R1}} R1*10
  r2 c'2 |
  b a |
  r c |
  b a |
  r gis |
  a( gis) |
  fis1~ |
  fis2~ fis8 r r4
  
}

lyricscommon = \lyricmode {
  \set stanza = "1. " Мне с_дет -- ства сни -- лась вы -- со -- та. __
  Я с_дет -- ства рва -- лся в_под -- не -- бе -- сье,
  со мной о -- ста -- лась на -- все -- гда __
  мо -- я не -- сда -- вша -- я -- ся пе -- сня.
  
  \set stanza = "Припев: " Сквозь о -- бла -- ка тре -- вог
  бле -- снёт за -- ри у -- лы -- бка…
  Е -- щё о -- дин ры -- вок,
  е -- щё о -- дна по -- пы -- тка.
  
  Бле -- снёт за -- ри у -- лы -- бка,
  и свет е -- ё вы -- сок 
}

lyricschoir = \lyricmode {
  
  Е -- щё о -- дин ры -- вок,
  е -- щё о -- дна по -- пы -- тка.
  
  Е -- щё о -- дин ры -- вок,
  е -- щё о -- дна по -- пы -- тка. 
  
  \set stanza = "4. " Нам с_дет -- ства сни -- лся не -- бо -- свод __
  и звёзд се -- ре -- бря -- ны -- е ча -- щи
  А… __
  Ге -- рой, в_бес -- сме -- рти -- е ле -- тя -- щий __
  ле -- тя -- щий
  ле -- тя -- щий
  ле -- тя -- щий. __
}

lyricscommonsecond = \lyricmode {
  \skip 1 -_ка ве -- рши -- на не взя -- та, __
  не смей до стра -- ха о -- пу -- ска -- ться.
  О -- на ко -- ва -- рна, вы -- со -- та. __
  О -- на не лю -- бит по -- ко -- ря -- ться.
  
  \repeat unfold 39 \skip 1
  
  \set stanza = "2. " По_-
  //_-_чты __ Мы в_не -- бо го -- рдо -- е взле --
  та -- ем.
  
  И стал пе -- вцом и -- ных вы -- сот __
  ге -- рой, в_бес -- сме -- рти -- е ле -- тя -- щий __
}

lyricscommonthird = \lyricmode {
  \skip 1 све -- те вы -- ше вы -- со -- ты __
  о -- дна лю -- бовь ―_лю -- бовь зе -- мна -- я.
  Во и -- мя ве -- ры и ме_- %чты __
  %мы в_не -- бо го -- рдо -- е взле -- та -- ем.
  
  \repeat unfold 49 \skip 1
  
  \set stanza = "3. " На 
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
    

    
 %     \new ChordNames %\with { chordChanges=##t }
 %     {
 %       \harmonies
 %     }
      <<
      \new Staff = "solostuff" \with {
        instrumentName = "Соло"
        shortInstrumentName = "Соло"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "solo" { \oneVoice \solovoice }
      >>
      
      \new Lyrics \lyricsto "solo" { \lyricscommon }
      \new Lyrics \lyricsto "solo" { \lyricscommonsecond }
      \new Lyrics \lyricsto "solo" { \lyricscommonthird }
      
      \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = "Хор"
        shortInstrumentName = "Хор"
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice  = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricschoir }

      
      %\new Lyrics \lyricsto "alto" { \lyricscite }


      
      \new Staff = "downstaff" \with {
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "baritone" { \clef bass \oneVoice \bassvoice }
      >>
      
%      \new Lyrics \lyricsto "baritone" { \lyricsbaritone }

      
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
        \new Voice = "solo" { \voiceOne \solovoice }

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
      \tempo 4=90
    }
  }
}
