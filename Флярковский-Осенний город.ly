\version "2.24.0"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(ly:set-option 'embed-source-code #t) % внедряем исходник как аттач к pdf
#(set-default-paper-size "a4")
%#(set-global-staff-size 16)

\header {
  title = "6. Осенний город"
  subtitle = "из цикла «Ленинградская тетрадь»"
  composer = "Александр ФЛЯРКОВСКИЙ"
  poet = "Слова Н.КАРПОВОЙ"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = \tag #'BR { \break }
%abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"tutti"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

% alternative breathe
breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

% alternative partial - for repeats
partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

% compress multi-measure rests
multirests = { \override MultiMeasureRest.expand-limit = #1 \set Score.skipBars = ##t }

% mark with numbers in squares
squaremarks = {  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers }

% move dynamics a bit left (to be not up/under the note, but before)
placeDynamicsLeft = { \override DynamicText.X-offset = #-2.5 }

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \numericTimeSignature
  \secondbar
  \multirests
  \placeDynamicsLeft
  
  \key d \minor
  \time 4/4
}

sopvoice = \relative c' {
  \global
  \tempo Moderato 4=84
  \dynamicUp
  \autoBeamOff
  \partial 4. c8\p 8 8 |
  c'4~8 a8 g f e f |
  \time 6/4 g4. a8 bes bes a bes g g f g | \abr
  
  \time 4/4
  a4. c,8 c' a g a |
  \time 3/4 f4. f8\< bes c |
  d4\! d r8 d8\mf |
  \time 4/4 f4. f8 e4 d | \abr
  
  c8 b c d e4. a,8 |
  c4. c8 g4 g |
  g8 g g\> g g4 g~\! | \abr
  
  4 r8 g8\p d' bes g4~ |
  2~4 r8 g8 |
  d' bes g2.~ | \abr
  
  \time 2/4 8 fis8 g a |
  \time 4/4 bes4. bes8\< g4 g |
  r8 g a bes c4 c\! | \abr
  
  a8 a bes c d4\< d |
  r8 d8 es f\! g4 g |
  r2 g,8\mp g a bes |
  \time 3/4 c4. bes8 a bes | \abr
  
  \time 4/4 f'4. es8 d4 c |
  r8 bes4 a8 g4 g |
  r8 g bes c d4. g,8 |
  es4 es r es8 g | \abr
  
  d'4. g,8\> es4. es8 |
  f4 f d d \! |
  \time 2/4 r4 d8\mp d |
  \time 4/4 d'4 b4. b8 a g | \abr
  
  a e e4. e8 a b |
  c4. a8 e'4 d |
  \time 2/4 r8 g,\mf b d |
  \time 4/4 g4. fis8 e e d e | \abr
  
  \time 3/4 fis4. g,8 b d |
  \time 4/4 e4. d8 c c b c |
  d2~8 r8 e,4(\p\< |
  c'2 e,4) 4\!( | \abr
  
  e'2 e,4) e( |
  g'2 e8) r8\fermata d,4(\p |
  \tempo "a tempo" d'4. b8 a[ g fis g] |
  a4 e2) d4( |
  e'2 d2~ |
  2\>8\!) r8 r4 \bar "|."

}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4. c8\tag #'FO \p c c |
  c2. c4 |
  d4 d2. d4 d |
  
  d4. c8 es8 es es es |
  es4. es8\tag #'FO \< es es\tag #'FO \! |
  d4 d r8 f8\tag #'FO \mf |
  f4. f8 f4 f |
  
  <a e>8 q q q q4. q8 
  <as es>4. q8 <g d>4 q |
  <f c>8 q q\tag #'FO \> q <e d>4 <e c>4~\tag #'FO \! 
  
  4 r4 r r8 bes8\p |
  d d c e d4~8 r8 |
  r4 r8 d f f d f |
  
  e d <d e> <d fis> |
  <d g>4. q8\tag #'FO \< d4 d |
  r8 <f g>8 q q <f as>4 q \tag #'FO \!
  
  f8 f <f g> <f a> <fis bes>4\tag #'FO \< q |
  r8 <fis b>8 <g c>8 <as des>8\tag #'FO \! <g b>4 q |
  r2 g8\tag #'FO \mp g a bes |
  c4. bes8 a bes |
  
  <g bes>4. q8 q4 q4 |
  r8 f4 f8 f4 es4 |
  r8 <es g> q q <d g>4. d8 |
  cis4 4 r cis8 8 |
  
  d4. d8\tag #'FO \> cis4. cis8 |
  c4 c b b\tag #'FO \! |
  R2 |
  r2 b2\p |
  
  c2 c |
  e2( fis4) e |
  r8 g\tag #'FO \mf g <g b> |
  q4. q8 <g c> q <g b> <g c> |
  
  <fis b>4. g8 g <fis b> |
  <e g>4. 8 8 8 8 8 |
  <d fis>2~8 r8 e4(\tag #'FO \p\tag #'FO \< |
  <e c>2.) e4(\tag #'FO \! |
  
  <d g>2.) e4( |
  <g c>2~8) r8\fermata r4 |
  r4 e2.(_\markup\italic"Закр. ртом" \p |
  c1 |
  b1~ |
  2~\tag #'FO \> 8)\tag #'FO \! r8 r4
  
  }


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4. c8\p c c |
  a4~8 c bes a g a |
  bes4. a8 g g a g bes bes c bes 
  
  a4. a8 bes bes bes bes |
  a4. f8\< g a\! |
  a4 g r8 bes\mf |
  bes4. bes8 b4 b4 |
  
  c8 c c c c4. c8 |
  c4. c8 b4 b |
  a8 a a\> a a4 g~\!
  
  g r8 g\p d' bes g4~ |
  2~4 r8 g8 |
  d' bes g2.~ |
  
  8 c8 bes a |
  bes4. bes8\< bes4 bes |
  r8 c8 c c es4 es\!

  es8 8 8 8 4 \< 4 |
  r8 e es des\! d4 d |
  r2 g,8\mp g a bes |
  c4. bes8 a bes |
  
  d4. c8 f4 es |
  r8 c4 c8 bes4 bes |
  r8 bes bes a g4. g8 |
  g4 g r g8 g |
  
  g4. g8\> g4. g8 |
  f4 f g g\! |
  r4 d8\mp d |
  d'4 b4. b8 a g |
  
  a8 e e4. e8 a b |
  c4. a8 c4 b |
  r8 g\mf b d |
  e4. d8 c c d c
  
  
  b4. b8 b b |
  c4. b8 a a b a |
  a2~8 r8 e4(\p\< |
  g2.) e4~(\! |
  
  <e bes'>2.) e4( |
  <c' e>2~8) r8\fermata r4 |
  r4 <b g~>2.( |
  <a g>1 |
  <a d>1~ |
  2~\>8)\! r8 r4
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  \partial 4. c8\p c c |
  <c f,>2. q4 |
  q4 q2. q4 q4 |
  
  q4. q8 q q q q |
  q4. f8\tag #'FO \< f f\tag #'FO \! |
  <f bes,>4 q r8 bes8\tag #'FO \mf |
  a4. a8 gis4 gis |
  
  g8 g g g fis4. fis8 |
  f4. f8 e4 e |
  d8 d <d g,>8\tag #'FO \> q c4 c~\tag #'FO \!
  
  4 r4 r r8 g8\p |
  bes bes a c bes4~8 r8 |
  r4 r8 bes d d bes d |
  
  c8 a' g fis |
  f4. f8\tag #'FO \< e4 e |
  r8 <bes' d>8 <a c> <g bes> <ges bes>4 q\tag #'FO \!
  
  <c es>8 q <bes d> <a c> <as ces>4 \tag #'FO \< q4 |
  r8 <gis b> <g bes> <f as>8\tag #'FO \! <es a>4 q |
  r2 g8\tag #'FO \mp g a bes |
  c4. bes8 a bes |
  
  <bes es,>4. q8 <bes a>4 <bes g> |
  r8 <g d>4 8 4 <g c,>4 |
  r8 <g es>8 <g d> <f c> <es bes>4. q8 |
  <es a,>4 q r4 q8 q |
  
  <es bes>4. q8\tag #'FO \> <es a,>4. q8 |
  <des as>4 q <d g,>4 q\tag #'FO \! |
  R2 |
  r2 q2\p |
  
  q q |
  q2. q4 |
  r8 g8\tag #'FO \mf g <fis b> |
  <e b'>4. q8 <e a> q <e b'> <e a> |
  
  <d g>4. <e g>8 q <d g> |
  <c g'>4. q8 q q q q |
  <b fis'>2~8 r8 e4(\tag #'FO \p\tag #'FO \< |
  <e a,>2.) e4(\! |
  
  <c g>2.) e4( |
  as2~8) r8\fermata r4 |
  r4 d,2.~\p |
  1~ |
  <d g,>1~ |
  2~\tag #'FO \> 8\tag #'FO \! r8 r4 |

}

lyricssoprano = \lyricmode {
   Как про -- шлый год, как де -- сять лет на -- зад, раз -- бра -- сы -- ва -- ет ли -- стья Лет -- ний
   сад.
   
   И кру -- жат -- ся о -- ни, и бьют -- ся о -- земь. И, как сви -- де -- тель,
   смо -- трит Ле -- нин -- град на жиз -- ни на -- ши и на э -- ту о -- сень
   
   При -- ся -- дем же… При -- ся -- дем же…
   
   \tag #'FO {за -- хва -- тит буй -- ством кра -- сок у -- же по -- гиб -- ших,
   
   но е -- щё пре -- крас -- ных ле -- тя -- щих ли -- стьев. Бе -- ре -- га гра -- нит и кру -- же --
   ва ог -- ра -- ды_― ря -- дом, ря -- дом с_о -- сен -- ним Лет -- ним са -- дом, в_двух ша --
   гах от нас, сю -- да за -- блуд -- ших. }
   
   \tag #'TW { _ _ _ _ _ _ _ _ _ _ _ _
               _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
               _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
               _ _ _ _ _ _ _ _ }
   
   Нам о -- по -- ру в_тру -- дах и 
   по -- мы -- слах да -- ёт так щед -- ро го -- род,
   
   что пе -- ред ним мы веч -- но в_дол -- жни --
   ках, что пе -- ред ним мы веч -- но в_долж -- ни -- ках. А… А… А… А…
}

lyricsalto = \lyricmode {
  Как про -- шлый год, пре -- кра -- сен Лет -- ний 
   \tag #'FO {
   сад.
  
     И кру -- жат -- ся о -- ни, и бьют -- ся о -- земь. И, как сви -- де -- тель,
   смо -- трит Ле -- нин -- град на жиз -- ни на -- ши и на э -- ту о -- сень. }
   \tag #'TW {
     _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }
   
   Нас го -- род о -- гра -- дит. Тре -- во -- ги от -- ве --
   дёт,
   
      за -- хва -- тит буй -- ством кра -- сок у -- же по -- гиб -- ших,
  
   но е -- щё пре -- крас -- ных ле -- тя -- щих ли -- стьев. Бе -- ре -- га гра -- нит и кру -- же --
   ва ог -- ра -- ды_― ря -- дом, ря -- дом с_о -- сен -- ним Лет -- ним са -- дом, в_двух ша --
   гах от нас, сю -- да за -- блуд -- ших.
   
   Наш щед -- рый го -- род… 
   
    \tag #'FO { Что пе -- ред ним мы веч -- но в_дол -- жни --
   ках, что пе -- ред ним мы веч -- но в_долж -- ни -- ках. А… А… А… }

}

luricstenor = \lyricmode {
  
     \tag #'FO { Как про -- шлый год, как де -- сять лет на -- зад, раз -- бра -- сы -- ва -- ет ли -- стья Лет -- ний
   сад.
   
   И кру -- жат -- ся о -- ни, и бьют -- ся о -- земь. И, как сви -- де -- тель,
   смо -- трит Ле -- нин -- град на жиз -- ни на -- ши и на э -- ту о -- сень
   
      При -- ся -- дем же… При -- ся -- дем же…
   
   за -- хва -- тит буй -- ством кра -- сок у -- же по -- гиб -- ших,
   
   но е -- щё пре -- крас -- ных ле -- тя -- щих ли -- стьев. Бе -- ре -- га гра -- нит и кру -- же --
   ва ог -- ра -- ды_― ря -- дом, ря -- дом с_о -- сен -- ним Лет -- ним са -- дом, в_двух ша --
   гах от нас, сю -- да за -- блуд -- ших.
   
   Нам о -- по -- ру в_тру -- дах и 
   по -- мы -- слах да -- ёт так щед -- ро го -- род,
   
   что пе -- ред ним мы веч -- но в_дол -- жни --
   ках, что пе -- ред ним мы веч -- но в_долж -- ни -- ках. А… А… А… }
}

lyricsbass = \lyricmode {
    Как про -- шлый год, пре -- кра -- сен Лет -- ний 
  сад.
  
       И кру -- жат -- ся о -- ни, и бьют -- ся о -- земь. И, как сви -- де -- тель,
   смо -- трит Ле -- нин -- град на жиз -- ни на -- ши и на э -- ту о -- сень.
   
   Нас го -- род о -- гра -- дит. Тре -- во -- ги от -- ве --
   дёт,
   
      за -- хва -- тит буй -- ством кра -- сок у -- же по -- гиб -- ших,
  
   но е -- щё пре -- крас -- ных ле -- тя -- щих ли -- стьев. Бе -- ре -- га гра -- нит и кру -- же --
   ва ог -- ра -- ды_― ря -- дом, ря -- дом с_о -- сен -- ним Лет -- ним са -- дом, в_двух ша --
   гах от нас, сю -- да за -- блуд -- ших.
   
   Наш щед -- рый го -- род… 
   
   Что пе -- ред ним мы веч -- но в_дол -- жни --
   ках, что пе -- ред ним мы веч -- но в_долж -- ни -- ках. А… А… А…
}



\bookpart {
  \paper {
    top-margin = 15
    left-margin = 25
    right-margin = 10
    bottom-margin = 25
    indent = 15
    ragged-bottom = ##f
    %  system-separator-markup = \slashSeparator
    
  }

  \score {
    %  \transpose c bes {
      \removeWithTag #'TW
      \keepWithTag #'FO

  \new ChoirStaff <<
    \new Staff = "soprano" \with {
      instrumentName = "Сопрано"
      shortInstrumentName = "С"
      midiInstrument = "voice oohs"
      
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \accidentalStyle choral-cautionary
      \new Voice = "soprano" { \oneVoice \sopvoice }
    >> 
    
    \new Lyrics \lyricsto "soprano" { \lyricssoprano }
    
    \new Staff = "alto" \with {
      instrumentName = "Альт"
      shortInstrumentName = "А"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "alto" { \oneVoice \altvoice }
    >> 
    
    \new Lyrics \lyricsto "alto" { \lyricsalto }
    
    \new Staff = "tenor" \with {
      instrumentName = "Тенор"
      shortInstrumentName = "Т"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "tenor" { \clef "treble_8" \oneVoice \tenorvoice }
    >> 
    
    \new Lyrics \lyricsto "tenor" { \luricstenor }
    
    \new Staff = "bass" \with {
      instrumentName = "Бас"
      shortInstrumentName = "Б"
      midiInstrument = "voice oohs"
      %        \consists Merge_rests_engraver
      %        \RemoveEmptyStaves
    } <<
      \new Voice = "bass" { \clef bass \oneVoice \bassvoice }
    >> 
    
    \new Lyrics \lyricsto "bass" { \lyricsbass }      
  >>
    %  }  % transposeµ
    \layout {
          #(layout-set-staff-size 16)
      \context {
        \Score
      }
      \context {
        \Staff
        %        \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        \consists Merge_rests_engraver
        \accidentalStyle choral-cautionary
      }
      %Metronome_mark_engraver
    }
    \midi {
            \tempo 4=84
    }
  }
}


