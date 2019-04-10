\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

\header {
  title = "Смуглянка"
  
  composer = "муз. Новикова"
  poet = "сл. Я. Шведова"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

global = {
  \key as \major
  \time 2/4
  \numericTimeSignature
  \autoBeamOff
  \secondbar 

}



%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

%zatakt = { \set Timing.measurePosition = #(ly:make-moment -1/4) }
zatakt =  { \partial 4 }


sopvoice = \relative c' {
  \global

}

tenorvoice = \relative c {
  \global
 
}


scoreARight = \relative c {
  \global
  \autoBeamOn
  \clef bass r4\f\< \clef treble <c' e g c> |
  \oneVoice <c' e g c>2\fermata\! \bar "||"
   r8\f <f, c as f> q r |
   r q q r |
   \clef bass r <c as f c>\mp\> q r |
   r q\! q r | \abr
   \clef treble
   \voiceOne
  \repeat volta 3 {
    c8\p f16 e f8 c |
    r as'16( g) as8 f |
    r <as c>8( <bes des> <as c>) |
    <as c>( <g bes>16 <\parenthesize f as> <g bes>4) | \abr
    c,8 e16( d e8 c) |
    r g'16( f g8 e) |
    r <bes' des>8( <as c> <g bes>) |
    <bes des>8( <as c>16 <\parenthesize g bes> <as c>4) | \abr
    r8 f16( e f8 c) |
    r as'16( g as8 f) |
    r <a c> <bes des>^\markup\italic"(rit.)" <c es> |
    q <bes des>16 <a c> <bes des>4 | \abr
    \tempo "a tempo" des8. c16 bes8 des |
    c2 |
    \oneVoice <g f bes,>4-- <as f c>-- |
    <e c bes>\> <f c as>\! |
    \voiceOne
    \ottava 1 \acciaccatura { c16 d e}  f4\sf   <des' f>4 \abr
    <des f>8 <c es>4 q8 |
    q <b d>16 <c es> <des f>8 <c es> |
    q <bes des> q4 |
    es,4 <c' es> |
    q8 <bes des>4. |
    q8 <a c>16 <bes des> <c es>8 <bes des> | \abr
    \ottava 0 \clef bass \voiceOne  <bes, des>8 <as c> q4 |
    c, <bes' des> |
    q8 <as c>4 <g bes>8 |
    c,4 <as' c> |
    q8 <g bes>4 <f as>8 |
    des4 as' | \abr
    \clef treble
    as'8 g4 f8 |
    <e g c>8 c16 des e f g as |
    bes as g f  e c d e |
    \tempo "Широко, звучно" f g, a bes c des es e | \abr
    f g a bes c des es f |
    <c es>8 <b d>16 <c es> <des f>8 <c es> |
    q <bes des> des16 bes f des |
    es f, g as bes c des d | \abr
    es f-1 g as bes-4 c-1 des-2 es-3 |
    <bes des>8 <a c>16 <bes des> <c es>8 <bes des> |
    q <as c> c16( as es c) |
    c4 <e bes' des> | \abr
    <bes' des>8 <as c>4 <g bes>8 |
    c,4 <f as c> |
    <as c>8 <g bes>4 <f as>8 |
    g16 f g as bes as bes c |
    s2 | \abr  
  }
  \alternative 
  {
    { \oneVoice <as, c f>8 c16 f as-3 f-1 as-2 c-3 | <f, f'>4 <c' e g c>8 r }
    {<as, c f>8 c16 f as-3 f-2 as-3 c-5 }
  }
  <des, f g bes>8\< f16 g bes g bes des | 
  f4  <f as c f> f,,\ff r | \bar "||"
}

scoreBRight = \relative c' {
  \global
  \autoBeamOn
  c,2
  s |
  s |
  s |
  s |
  s |
  \repeat volta 3
  {
    as' |
    c |
    f |
    s |
    bes, |
    c |
    e |
    f |
    <as, c> |
    c |
    f~ |
    f |
    e |
    f8. bes16 as8 f |
    s2 |
    s |
    f~\p |
    f~ |
    f~ |
    f |
    es~ |
    es~ |
    es( |
    es,) |
    c~ |
    c |
    c~ |
    c |
    des |
    d' |
    s |
    s |
    s |
    s |
    s |
    s |
    s |
    s |
    r8 es r es |
    r es s4 |
    c2~ |
    <c~ e>
    c~ |
    <c f> |
    <bes f'>8 r <des f> r |
    <f bes des>8 <f as c>4 <bes, c e>8
  }
  \alternative { {s2 s } {s } }
  s s s
}

scoreALeft = \relative c {
  \global
  \autoBeamOn
  << { r4 <c g' bes> } \\ <c,, c'>2\p >> |
  \oneVoice \clef treble <c''' g' bes>2\fermata |
  \clef bass <f,,, f'>8 r r <\parenthesize c c'> |
  <f f'> r r <\parenthesize c c'> |
  <f f'> r r <\parenthesize c c'> |
  <f f'> r r <\parenthesize c c'> |
  \repeat volta 3 {
    <f' f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f,> r r c |
    <f f'> r r <a a'> |
    <bes bes'> <f f'> <bes bes,> <as as,> |
    <g g,> r r c, |
    <as' as,>8. <g g,>16 <f f,>8 <as as,> |
    r <des des,> r <c c,> |
    r <c, c,> <f f,>4 |
    <as as,>8-. f-. <as as,>-. f-. |
    
    <a a,>-. f-. <a a,>-. f-. |
    <a a,>-. f-. <g g,>-. <a a,>-. |
    <bes bes,>-. f-. bes16 as g f |
    <g g,>8-. es-. <g g,>-. es-. |
    <g g,>-. es-. <g g,>-. es-. |
    <g g,>-. es-. <f f,>-. <g g,>-. |
    
    <as as,> q as16 g as bes |
    <e e,>8-. c-. <e e,>-. c-. |
    <e e,>-. c-. <e e,>-. c-. |
    <f f,>-. c-. <f f,>-. c-. |
    <f f,>-. c-. <f f,>-. c-. |
    <bes bes,> <f \parenthesize f,> <bes bes,> <f \parenthesize f,> |
    
    <b b,> g <b b,> g |
    <c c,> r r4 |
    <c c,> <bes bes,> |
    <a a,>8 f <a a,> f |
    
    <a a,> f <a a,> f |
    <a a,> f <g g,> <a a,> |
    <bes bes,> f <bes bes,> <as as,> |
    <g g,> es <g g,> es |
    
    <g g,> es <g g,> es |
    <g g,> es <f f,> <g g,> |
    <as as,> q q4 |
    <g g,>8 c, <g' g,> c, |
    
    <g' g,> c, <g' g,> c, |
    <f f,> c <f f,> c |
    <f f,> c <f f,> c |
    <des' des,> <c c,> <bes bes,> <as as,> |
    <g g,> <as as,>4 <c c,>8 |
  }
  \alternative {
    {<f f,>4. <c c,>8 | <f f,>4 <c c,>8 r}
    {<f, f,>4. c8 }
  }
  <f f,>4. c8 |
  <f f,>4 <f' as c f> |
  <f, f,>4 r

}

scorePiano =   \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << 
      \new Voice {\voiceOne \scoreARight }
      \new Voice {\voiceTwo \scoreBRight }
    >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \scoreALeft }
  >>

lyricsup = \lyricmode {

}


lyricscore = \lyricmode {
}

  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 15
%    ragged-bottom = ##t
    ragged-last-bottom = ##f
  }
  
  
  \bookpart {
  \header {
    piece = "Piano"
  }
  \score {
    %  \transpose c bes {
    <<
    \scorePiano
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
      >> 
      
      \scorePiano
      
      \new Lyrics = "sopranos"
      
      \new Staff = "downstaff" \with {
        instrumentName = \markup { \right-column { "Тенор" "Бас" } }
        shortInstrumentName = \markup { \right-column { "Т" "Б" } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "tenor" { \voiceOne \clef bass \tenorvoice }
      >>
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
    >>
    %  }  % transposeµ
    \midi {
      \tempo 4=80
    }
  }
}
