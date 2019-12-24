\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Тропарь равноапостольным Петру и Павле"
  subtitle =  "(на греческом языке)"
%  composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}


abr = { \break }
%abr = {}

pbr = { \pageBreak }
%pbr = {}

breathes = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" } \breathe }

bort = {  % Динамика: вместо f, p пишем по-русски гр., т. и т.д.
  \override DynamicText.stencil = #(lambda (grob)(
    grob-interpret-markup grob (                         
      let (( dyntxt (ly:grob-property grob 'text ) )  )
      ( set! dyntxt (cond
        (( equal? dyntxt "f" ) "гр." ) 
        (( equal? dyntxt "p" ) "т." )
      )) #{ \markup \normal-text \italic $dyntxt #} )
    )) }



melon = { \set melismaBusyProperties = #'() }
meloff = { \unset melismaBusyProperties }
solo = ^\markup\italic"Соло"
tutti =  ^\markup\italic"Все"

co = \cadenzaOn
cof = \cadenzaOff
cb = { \cadenzaOff \bar "||" }
cbr = { \bar "" }
cbar = { \cadenzaOff \bar "|" \cadenzaOn }
stemOff = { \hide Staff.Stem }
nat = { \once \hide Accidental }
%stemOn = { \unHideNotes Staff.Stem }

partiall = { \set Timing.measurePosition = #(ly:make-moment -1/4) }

global = {
  \key f \major
  \time 4/4
  \numericTimeSignature
    \dynamicUp
  \autoBeamOff
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \override Score.BarNumber.X-offset = #1
  \override Score.BarNumber.self-alignment-X = #LEFT
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

sopvoice = \relative c'' {
  \global

  s4*10
  s4*11
  s4*12
  s4*18
  s4*6
  s4*16 s8
  \co a\breve a4 a2\fermata \cof
  \break
  
  \transpose g f \relative c'' {
  \co g8[ a] b4 b b b b a8[( b]) c4 b b2 \cbar
  g8 a b4 b b a8[( g]) a[( b]) b a g2 \cbar
  g8[( a]) b4 b b a8[( b]) c4( b) b2 \cbar
  g8 a b4 b b a8[( g]) a2 g \cbar
  g8 a b4( a8[ b]) c4 e d2 c4 b8[( a]) b2( a) g1\fermata \cof \bar "|."
  }
}


altvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
    s4*10
  s4*11
  s4*12
  s4*18
  s4*6
  s4*16 s8
  \key f\major
  \co f\breve f4 f2 \cof
  
  \transpose g f \relative c'' {
  g4 g g g g g g g g g2 
  e8 fis g4 g g fis fis fis8 fis d2 
  g4 g g g g g2 g 
  e8 fis g4 g g fis fis2 d 
  g8 g g2 g4 g g2 g4 g g2.( fis4) d1
  }
}


tenorvoice = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  \co a4 a g a bes bes a \acciaccatura bes8 cis4 \acciaccatura bes8 a4 a \cbar
   fis!4 fis g a8[( bes]) cis!4 cis8[( bes]) a4 bes8[( cis] a4) g fis \cbar 
   fis!4 g a g a bes bes a fis8[( g] a4) a a \cbar
  bes4 d2(\fermata e)\fermata e8[( d]) cis!2\fermata a4 bes cis d d8[( cis] bes4) a8[( bes]) cis4 cis8[( bes]) a4 \cbar
  fis!4 g a bes a bes \breathes a cis cis8[( bes]) a[( bes a g ]) fis4
  a8[( g16 fis g8]) a4 g a bes2\fermata a1\fermata \cof \bar "||" \break
  
  
  \co cis\breve cis4 cis2 \bar "||" \cof
  
  \transpose g f \relative c' {
  b8 c \nat d4 d d d d c8[( d]) e4 d d2 
  b8 d d4 d d d d d8 c b2
  b8[( c]) d4 d d c8[( d]) e4( d) d2
  b8 d d4 d d c8[( b]) c2 b
  b8 c d4( c8[ d]) e4 e d2 e4 e d2( c) b1
  }
}


bassvoice = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  a\breve s2
  fis!\breve s4 s s
  a\breve s1
  a\breve s\breve s2
  fis!1. s4 a2 fis!1. s8 a4 g2 a1  
  
  \co fis' \breve fis4 fis2\fermata \cof
  
   \transpose g f \relative c' {
  \nat g4 g g g g g g c,8[( e]) g4 g2
  e8 d g4 g g d d d8 d g2
  g4 g g g g c,8[( e] g4) g2
  e8 d g4 g g d d2 g
  g8 g g2 c4 c b2 c4 c d2( d,) g1\fermata
   }
}

lyricscores = \lyricmode {
  Докса_Патри_кэ… А -- мин.
  А -- по -- сто -- лов пе -- рво -- пре -- сто -- льни -- цы и все -- ле -- нны -- я у -- чи -- те -- ли -- е,
  Вла -- ды -- ку всех мо -- ли -- те
  мир все -- ле -- нней да -- ро -- ва -- ти,
  и ду -- шам на -- шим ве -- ли -- ю ми -- лость.
  
}

lyricscorei = \lyricmode {
  Οἱ τῶν Ἀ -- πο -- στό -- λων Προ -- τό -- θρο -- νοι καὶ τ̃ης Οἰ -- κο -- μέ -- νης Δι -- δά -- σκα -- λοι
  τὼ Δε -- σπό -- τη τῶν ὄ -- λων πρε -- σβεύ -- σα -- τε, εἰ -- ρή -- νην 
  τῆ οἰ -- κου -- μέ -- νη δω -- ρη -- σα -- σθαι
  καὶ ταὶς ψυ -- χαὶς ἡ -- μῶν τὸ μέ -- γα ἔ -- λε -- ο -- _ ο -- _ _ ος
}

lyricscore = \lyricmode {
  И тон А -- по -- сто -- лон Про -- то -- фро -- ни кэ тис и -- ку -- ме -- нис Ди -- да -- ска -- ли
  то Де -- спо -- ти тон о -- лон пре -- сви -- са -- те, и -- ри -- нин __ 
  ти и -- ку -- ме -- ни до -- ри -- са -- сфе
  кэ тэс пси -- хэс и -- мон то ме -- га э -- ле -- о -- _ о --  _ _ ос
}


\bookpart {
  \paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
%  system-separator-markup = \slashSeparator

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
      
  
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
        \new Voice = "bass" { \voiceTwo \bassvoice }
      >>
      \new Lyrics \lyricsto "tenor" { \lyricscorei }
      \new Lyrics \lyricsto "tenor" { \lyricscore }
    >>
    %  }  % transposeµ
  \layout { 
    \context {
      \Score
    }
    \context {
      \Staff
       \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
                % удаляем обозначение темпа из общего плана
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
    }
  %Metronome_mark_engraver
  }
  \midi {
    \tempo 4=90
  }
}
}
