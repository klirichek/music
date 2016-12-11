\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\header {
  title = "Во Царствии Твоем"
  %composer = "Composer"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key bes \minor
  \time 4/4
  \numericTimeSignature
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

%опциональный разрыв
pbr = { \bar "" }

cb = { \cadenzaOn }
ce = { \cadenzaOff }
cd = { \ce \bar "|" \cb }

%once hide accidental (runaround for cadenza
nat = { \once \hide Accidental }

sopvoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Медленно"
  \secondbar  
  \arpeggioBracket
  \cb f4\pp f2\< f4 f2 \pbr f4\! ges1\> ges2\< ges4 ges4( f) \pbr ges4 aes2\! \pbr \abr
  f4\> f1\! es4\< es es es es es \pbr es des2\! des4\> des des des1\! \cd \abr
  f4\< f2 f4 f f f \pbr ges2 ges1\> \pbr ges2\< ges4 ges ges \pbr \abr
  ges ges \pbr ges f2 f4\> f1\! \cd f4 f2( es4)\< f \pbr ges2 ges4 \pbr \abr
  ges\> ges1 \pbr ges2\< ges4 \pbr ges4 ges \pbr ges\! f2 f4\> f1\! \cd \abr
  bes2 bes bes4\< \pbr bes2 bes2 bes1\> \pbr bes2\< bes \pbr bes4 bes\! \pbr \abr
  
  bes4 bes2 bes4\> \pbr bes2( as) f1\! \cd << { bes4\<( c) } \new Voice {\voiceThree f,2 } >> <bes des>4 q\! \pbr q q \pbr \abr
  q q \pbr q \pbr q q <bes c> <bes des> \pbr <bes es>1\<\arpeggio q\! \pbr \abr
  << {es4( f)} \new Voice {\voiceThree bes,2 } >> <bes es>4 \pbr <bes des> <c f,> \pbr <bes f> <c f,>2\> q <bes f>1\arpeggio\! \cd \abr
  f4\p\< f( es) f \pbr ges2\! ges4 ges( f) es\> f1\! \pbr f2\< f4 \pbr \abr
  f es \pbr f ges2 ges4 ges( as)\! ges \pbr f2( ges4 as)\> f1\! \cd \abr
  f4 f f\< \pbr bes bes bes \pbr bes2\> bes2. \pbr bes2\< bes \pbr \abr
  
  bes4( c) des \pbr des2 bes4\! \pbr bes2\>( as) f1\! \cd
    << {bes4(\< c) des( c)\!} \new Voice {\voiceThree f,2 bes } >> <des bes>4 \cd
  << {es4( f)\<} \new Voice {\voiceThree bes,2 } >> <bes es>4 << {es4(\! des c)\>} \new Voice {\voiceThree bes2. } >>
    <bes des>1\arpeggio\! \pbr
  <bes f>4\< <c f,> <des bes>\! q \pbr q <c bes>
 <des bes> << {es4( f)} \new Voice {\voiceThree bes,2 } >> <es bes>4 <des bes> \pbr <c f,> <bes f> <c f,>2\> <bes f>1\arpeggio \cd
   a4\pp a a \pbr \abr
 a!4 a bes\< \pbr c( bes) a \pbr bes2\> bes1\! \pbr a2\pp\< a4 a \pbr bes\! \pbr \abr
 c bes\< \pbr a bes2 bes4\> bes1 \cd f4\p\< f f \pbr f\! f( es) \pbr \abr
 f ges( f) \pbr ges f2 f4\< \pbr f2( es4) \pbr f4 es f\! \pbr \abr
 
 ges1 \pbr f4 f f \pbr f f\< \pbr ges as \pbr ges f \pbr ges\!( as) ges \pbr \abr
 f( es)\< des \pbr es2 f1\! \cd f2^\markup{\italic "sub" \dynamic p}\< f4 f f\! \pbr f \pbr \abr
 f2\< f4\! f2. \pbr f2\> f1\! \pbr f4\< f f \pbr f f\! \pbr \abr
 f2 f4 \pbr f f2  f4 f1 \cd  <a c>2\mf q4 q \pbr \abr
 <a! c> <bes des> \pbr <c es>(\< <bes des>) <a c> <bes des>2.\! <a! c>4( <bes des>)\> <a c>1\! \pbr q2\< q4 \pbr \abr
 <bes des> <c es> <des f> \pbr <des ges>2.--\! <es ges>2--( <bes f'>)-- \pbr <bes es>-- <bes des>1--\arpeggio(
   <a c>2)-- q-- <f bes>1\arpeggio\>~ q\! \ce \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  des4 des2 des4 des( c) des es1 es2 es4 es( des) es f2 des4 des1
  bes4 bes bes bes bes bes bes bes2 bes4 bes bes bes1
  des4 des2 des4 des c des es2 es1 es2 es4 es es es des c des2 des4 des1
  des4 des2. des4 es2 es4 es es1
  es2 es4 es es es des2 des4 des1
  des4( es) f( es) f ges2 ges f1
  as2 ges f4 es f ges( f) es f2( es) des1
  des4( es) f4 f f f f f f f f es f ges1 f
  ges4( as) ges f es des es2 es des1
  des4 des2 des4 des2 des4 des2 des4 des1 
  des2 des4 des des des des2 des4 des2 des4 des2( es4 f) des1
  des4 des des as' ges as ges2 f2. 
  as2 ges f4( as) as bes( as) ges f2( es) des1
  des4( es) f( es) f ges( as) ges ges( f es) f1
  des4 es f f f es f ges( as) ges f es des es2 des1
  f4 f f f f f f2 f4 f2 f1
  f2 f4 f f f f f f2 f4 f1
  des4 des des des des2 des4 des2 des4 des2 des4 des2( c4) des des des des1
  des4 des des des des des des des des des2 des4 des( c!) bes c2 des1
  c2 c4 c c c c( bes) c des2. c4( des) c1 c4 c c c des
  es2 es4 es es( des) des c1
  f2 f4 f f f f2 f4 f2. f2 f1
  f2 f4 f as? as bes2. bes2( as) ges f1( es2) es des1~ des
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  \arpeggioBracket
  as4 as2 as4 as2 as4 bes1 bes2 bes4 bes( as) bes c2 as4 as1
  ges4 ges ges ges ges ges ges f2 f4 f f f1
  as4 as2 as4 as as as bes2 bes1 bes2 bes4 bes bes bes bes bes bes2 bes4 bes1
  as4 as2( ges4) as bes2 bes4 bes bes1 c2 des4 c bes c des2 as4 as1
  bes4( c) des( c) des es2 es des1 f2 es des4 es des es( des) c des2( c) bes1
  bes2 bes bes( bes) bes4 bes bes bes bes bes1 bes bes2 bes4 bes bes bes a2 a bes1
  as?4 as( ges) as bes2 bes4 bes( as) ges as1 as2 as4 as ges as bes2 bes4 bes( ces) bes as2( bes4 as) bes1
  bes4 bes bes f' es f es2 des2. f2 es des4( es) f ges( f) bes, des2( \nat c) bes1
  bes2 bes2. bes1.~ bes1 bes4 bes bes bes bes bes bes bes2 bes4 bes bes bes a2 bes1
  c4 c c c c des es( des) c des2 des1 c2 c4 c des es des c des2 des4 des1
  \nat as4 as as as as( ges) as bes( as) bes as2 as4 as2. as4 ges as bes1
  as4 as as as as bes ces bes as bes( ces!) bes as2 f4 as2 as1
  a2 a4 a a a a!( g) a bes2. a!4( bes) a!1 a!4 a a a bes \nat c2 c4 c c( bes) bes a!1
  <a! c>2 <a c>4 q q <bes des> <c es>( <bes des>) <a! c> <bes des>2.
    <a! c>4( <bes des>) <a! c>1 <a c>2 q4 <bes des> <c es> <des f> <des ges>2.
    <es ges>2( <bes f'>) <bes es> <bes des>1(\arpeggio <a! c>2) <a c> bes1~ bes
}


bassvoice = \relative c {
  \global
  \dynamicUp
  des4 des2 des4 des2 des4 des1 des4( c) bes as2 as4 as2
  <des, des'>4 \arpeggioBracket q1\arpeggio
  <ges des'>4 q q q q q q bes2 bes4 bes bes bes1
  des4 des2 des4 des des des des2 des1
  <es es,>2 q4 q q q q q bes2 bes4 bes1
  des4 des2. des4 des2 des4 des des1 as2 as4 as as as des2 des4 des1
  bes2 bes2. bes1~ bes~ bes~ bes2~ bes2. ges4 f2( as) bes1
  bes2 bes bes~ bes bes4 bes bes bes bes es2( ges) bes( as)
  ges4( as) ges f f f <f f,>2 q <f bes,>1\arpeggio
  des4 des2 des4 des2 des4 des2 des4 des1 des2 des4 des des des des2 des4 des2 des4 des1 bes
  bes4 bes bes bes bes bes es2 bes2. es2 es bes'4( as) des, ges( des) es f2( as) bes1
  bes,2 bes bes4 es( bes) es es( f ges) <f bes,>1\arpeggio q4 q q q q q q es( bes) es f f f <f f,>2 <f bes,>1\arpeggio
  <f f,>4 q q q q q q2 q4 <f bes,>2 q1\arpeggio <f f,>2 q4 q q q q q <f bes,>2 q4 q1\arpeggio
  des4 des des des des2 des4 des2 des4 des2 des4 des2( as4) des des des <des ges,>1\arpeggio
  des4 des des des des des des des des ges( des) ges as( as,) bes as2 des1
  <f f,>2 q4 q q q q2 q4 <f bes,>2. << {f,4( bes)} \new Voice {\voiceFour f'2 } >> <f f,>1\arpeggio
  q4 q q q q q2 q4 q << {f,4( bes)} \new Voice {\voiceFour f'2 } >> <f bes,>4 <f f,>1\arpeggio
  <f f,>2 q4 q q q q2 q4 <f bes,>2. <f f,>2 q1\arpeggio q2 q4
  <f bes,>4 <as? as,?> <as des,> \nat ges2. es2( bes) es f1~( <f f,>2) q <f bes,>1\arpeggio~ q
}

lyricscore = \lyricmode {
  Во Цар -- стви -- и Тво -- ем по -- мя -- ни нас, Го --
  спо -- ди, ег -- да при -- и -- де -- ши во Цар -- стви -- и Тво -- ем
  Бла -- же -- ни ни -- щи -- е ду -- хом, я -- ко тех есть
  Цар -- ство Не -- бе -- сно -- е. Бла -- же -- ни пла -- чу -- 
  щи -- и, я -- ко ти -- и у -- те -- шат -- ся.
  Бла -- же -- ни кро -- ци -- и, я -- ко -- ти -- и
  на -- сле -- дят зе -- млю. Бла -- же -- ни ал -- чу --
  щи -- и и жаж -- ду -- щи -- е прав -- ды
  я -- ко ти -- и на -- сы -- тят -- ся.
  Бла -- же -- ни ми -- ло -- сти -- ви -- и я -- ко
  ти -- и по -- ми -- ло -- ва -- ни бу -- дут.
  Бла -- же -- ни чис -- ти -- и серд -- цем, я -- ко
  ти -- и Бо -- га уз -- рят. Бла -- же -- ни
  ми -- ро -- твор -- цы, я -- ко ти -- и сы -- но --
  ве Бо -- жи -- и на -- ре -- кут -- ся. Бла -- же -- ни
  из -- гна -- ни прав -- ды ра -- ди, я -- ко тех есть
  Цар -- ство Не -- бес -- но -- е. Бла -- же -- ни ес -- те
  ег -- да по -- но -- сят вам и из -- же --
  нут, и ре -- кут всяк зол гла -- гол на вы лжу -- ще
  Ме -- не ра -- ди. Ра -- дуй -- те -- ся и
  ве -- се -- ли -- те -- ся, я -- ко мзда ва -- ша
  мно -- га на не -- бе -- сех. Ра -- дуй -- те --
  ся и ве -- се -- ли -- те -- ся, я -- ко
  мзда ва -- ша мно -- га на не -- бе -- сех.
}

lyricsbass = \lyricmode {
  \repeat unfold 58 \skip 4
  Бла -- же -- ни, __ бла -- же -- ни. Бла -- же -- ни
  и жаж -- ду -- щи -- е прав -- ды
  \repeat unfold 43 \skip 4
  Бла -- же -- ни ми -- ро -- твор -- цы,
}

lyricstenor = \lyricmode {
  \repeat unfold 126 \skip 4
  Бла -- же -- ни, __
}

\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
    %ragged-bottom = ##f
    ragged-last-bottom =  ##f
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
      \new Lyrics = "tenor"

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
      
      \new Lyrics = "bass"
      \context Lyrics = "sopranos" {
        \lyricsto "soprano" {
          \lyricscore
        }
      }
      \context Lyrics = "bass" {
        \lyricsto "bass" {
          \lyricsbass
        }
      }
      \context Lyrics = "tenor" {
        \lyricsto "tenor" {
          \lyricstenor
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
          \remove "Time_signature_engraver"
          \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=160
    }
  }
}
