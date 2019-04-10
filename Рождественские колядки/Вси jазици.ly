\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Вси jазици"
  subtitle = "(сербская колядка)"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

global = {
  \key f \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-numbers
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
  \mark \default
  a8 c c c c d c a |
  d4 d c2 |
  d4 d c2 |
  bes8 bes bes bes-> a a-> a a
  <e g>4 g <a c>2 | \abr
  
  bes8. a16 bes8 c a a-> g f |
  a4 g f2 |
  \mark \default
  c'1 |
  bes4 bes a2 |
  \acciaccatura f8 bes4 bes a2 | \abr
  
  bes8. a16 bes8 c a a16[ bes] g8 f |
  a4 g c2 |
  bes8. a16 bes8 c a-> a g f |
  a4 g f2 |
    \mark \default
  f'1~ | \abr
  
  f |
  <d bes>4 q <c a>2 |
  bes8. a16 bes8 c a a-> g f |
  a4 g c2 |
  bes8. bes16 bes[ a] c[ bes] a8 a a bes | \abr
  
  g8[ f] g4 f2 |
    \mark \default
  a8 c c c c d c a |
  d4 d c2 |
  d8[ c] d4 c2 |
  bes8 bes bes c a a-> a bes | \abr
  
  
  g4 a8[ bes] c2 |
  bes8. bes16 bes8 c a a g f |
  a4 g f2 |
  \mark \default
  a8 c c c c d c a |
  d4 d c2 | \abr
  
  d4 bes8[ d] c2 |
  bes8 bes bes c a a a a |
  g4 g c2 |
  bes8. a16 bes8 c a a g f |
  a4 g f2 | \abr
  
  \mark \default
  a8 c c c c d c a |
  d4 d c2 |
  d4 f8[ d] c2 |
  bes8 bes-> bes c a a a bes |
  g4 bes c2 | \abr

  bes16[ a] bes8 bes c a a g f |
  a8[ bes] g8.[ a16] f2 |
  \mark \default
  a8 c c c c d c a |
  d4 d c2 |
  d4 f8[ d] c2 | \abr
  bes8. a16 bes8 c a a g f |
  a4 g c2 |
  bes8. a16^\markup\italic"rit." bes8 c a a g f|
  a8[ bes] g4 f2 \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  f8 g a a a bes a f |
  f4 bes a2 |
  bes8[ f] f[ bes] a2 |
  g8 g g g f f f f
  
  c4 c c2 |
  
  g'8. f16 e8 g f f e f |
  f4 e c2 |
  f8 g a a a bes a f |
  f4 f f2 |
  f4 f f2 |
  
  g8. f16 e8 e f f e f |
  f4 e a2 |
  g8. f16 g8 e f f e f |
  f4 e c2 |
  f1~ |
  
  f |
  f4 f f2 |
  g8. f16 e8 g f f e f |
  f4 e a2 |
  f8. f16 f8 f f f f f |
  
  e4 e c2 |
  f8 a a a a bes a f |
  bes8[ a] bes4 a2 |
  f4 f8[ g] f2 |
  g8 g g g f f f g |
  
  e4 g fis2 |
  g8 g g16[ f] e8 f f e f |
  f4 e c2 |
  f8 g a a a bes a f |
  f4 bes a2 |
  
  bes8[ f] f[ bes] a2 |
  bes8 a g g f f f f |
  e4 c a'2 |
  g8. f16 e8 e f f e f |
  f4 e c2 |
  
  f8 a a a a bes a f |
  bes[ a] bes4 a2 |
  f4 f8[ g] f2 |
  g8 g g g f f f f |
  e4 g fis2 |
  
  g8 g g16[ f] e[ g] f8 f e f |
  f4 e c2 |
  f8 a a a a bes a f |
  f4 f f2 |
  f4 f f8 a g f |
  
  g8. f16 g8 f f f c a |
  f'4 f c2 |
  g'8. f16 g8 a f f e f |
  f4 f8[ e] c2
  
  
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  R1*3
  c2 c |
  c4 c c2 |
  
  c8. c16 c8 c c c bes a |
  c4 bes a2 |
  a8 bes c c c d c a |
  d4 d c2 |
  d4 f c2 |
  
  R1 |
  c4 c c2 |
  c8. c16 c8 c c c bes a |
  c4 bes a2 |
  a8 bes c c c d c a |
  
  d4 d c2 |
  d4 d c2 |
  c8. c16 c8 c c c bes a |
  c4 bes a8 c bes a |
  d8. d16 d8 d c c c d |
  
  c4 bes a2 |
  c4 f f f |
  f f f2 |
  bes,8[ a] bes4 a2 |
  c8 c c c c c-> c c |
  
  c4 d d2 |
  d8 d c c c c bes a |
  c4 bes a2 |
  R1*3
  
  c8 c c c c c c c |
  c4 c c2 |
  c8. c16 c8 c c c bes a |
  c4 bes a2 |
  
  c4 f f f |
  f f f2 |
  bes,4 d8[ bes] a2 |
  c8 c-> c c c c c c |
  c4 d <d a>2 |
  
  d8 d c c c c bes a |
  c4 bes a2 |
  c8 c c c c bes c d |
  bes4 bes a2 |
  bes4 bes a8 c bes a |
  
  R1 |
  c4 c a8 c bes a |
  bes8. a16 bes8 c a a g f |
  c'4 bes a2
  
}


bassvoice = \relative c {
  \global
  \dynamicUp
  R1*5
  
  c8. c16 c8 e f f-> f f |
  c4 c f2 |
  f8 f f f f f f f |
  f4 f f2 |
  f4 f f2 |
  
  R1 |
  r2 r8 f g a |
  c,8. c16 c8 c c-> c c c |
  c4 c f2 |
  f8 g a a a bes a f |
  
  bes4 bes a2 |
  bes4 bes a2 |
  c,8. c16 c8 e f c-> c f |
  c4 c f8 a g f |
  bes,8. bes16 bes8 d f f f bes, |
  
  c4 c f2 |
  f4 f f f |
  bes bes f2 |
  bes,8[ c] d4 f2 |
  R1 |
  
  c4 bes d2 |
  g8 g c, c f f f f |
  c4 c f2 |
  
  R1*5 |
  c8. c16 c8 c f f f f |
  f4 c f2 |
  
  f4 f f f |
  bes bes f2 |
  bes,4 bes8[ d] f2 |
  R1 |
  c4 bes d2 |
  
  g8 g c, c f f f f |
  c4 c f2 |
  f8 f f f f f f d |
  bes4 bes f'2 |
  bes,8[ c] d[ e] f2 |
  
  R1 |
  f4 c f8 a g f |
  g8. f16 g8 a f f c a |
  c4 c f2
}

lyricscores = \lyricmode {
  \set stanza = "1. " Вси jа -- зи -- ци во -- спле -- шчи -- те ру -- ка -- ми, ру -- ка -- ми,
  Ja -- ко Хри -- стос И -- зба -- ви -- тељ jест с_на -- ми.
  Ja -- ко Хри -- стос И -- зба -- ви -- тељ jест с_на -- ми.
  
  \repeat unfold 30 \skip 1
   сви -- рjа -- jут.
   Хва -- лу Бо -- гу ро -- жде -- но -- му во -- зда -- jут,
   Хва -- лу Бо -- гу ро -- жде -- но -- му во -- зда -- jут.
   
   \set stanza = "4. " Му -- дри вол -- сви от во -- сто -- ка при -- до -- ша, при -- до -- ша,
   Зла -- то, ли -- ван со сми -- рно -- jу да -- до -- ша,
   зла -- то, ли -- ван со сми -- рно -- jу да -- до -- ша,
   
   \set stanza = "5. " Во -- ста -- ни ско -- ро Jо -- си -- фе и бjе -- жи,
   и бjе -- жи.
   Ро -- жде -- но -- му с_ма -- те -- ри -- jу по -- слу -- жи,
   ро -- жде -- но -- му с_ма -- те -- ри -- jу по -- слу -- жи.
   
   
   \set stanza = "6. " Се -- го ра -- ди сни -- де Сло -- во пре -- вjе -- чно,
   пре -- вjе -- чно. Да со -- кру -- шит всjа и -- до -- ли ко -- не -- чно,
   да со -- кру -- шит всjа и -- до -- ли ко -- не -- чно.
   
   \set stanza = "7. " И по -- ги -- бнет сjа си -- ла их во -- пре -- ки, во -- пре -- ки, 
   Да цар -- ству -- jет Хри -- стос Бог наш во вjе -- ки.
   Да цар -- ству -- jет Хри -- стос Бог наш во вjе -- ки.
  
}

lyricscorea = \lyricmode {
  
  \repeat unfold 36 \skip 1
  \set stanza = "2. " Во Ви -- тле -- jе -- мjе Jу -- дjеj -- стjем ро -- ди -- сjа, ро -- ди -- сjа,
  jа -- ко о -- трок пе -- ле -- на -- ми по -- ви -- сjа.
  Jа -- ко о -- трок пе -- ле -- на -- ми по -- ви -- сjа.
  
  \repeat unfold 148 \skip 1
  во -- пре -- ки,
  
}

lyricscoret = \lyricmode {
  Ja -- ко jест с_на -- ми.
  
  \repeat unfold 25 \skip 1
  по -- ви -- сjа.
  
  \repeat unfold 11 \skip 1
  \set stanza = "3. " Па -- сти -- ри -- jе во цjе -- вни -- цjах
  сви -- рjа -- jут,
  
    \repeat unfold 14 \skip 1
  во -- зда -- jут.
  
  \repeat unfold 11 \skip 1
  \set stanza = "4. " Му -- дри вол -- сви
  
  \repeat unfold 14 \skip 1
  да -- до -- ша,
  
  \repeat unfold 33 \skip 1
  \set stanza = "6. " Се -- го ра -- ди
  
    \repeat unfold 42 \skip 1
  во -- пре -- ки,
  
  во вjе -- ки, во вjе -- ки.
     

}

lyricscoreb = \lyricmode {
  \repeat unfold 25 \skip 1
  по -- ви -- сjа.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscores }
      \new Lyrics \lyricsto "alto" { \lyricscorea }
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
      
      \new Lyrics \lyricsto "tenor" { \lyricscoret }
      \new Lyrics \lyricsto "bass" { \lyricscoreb }

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
