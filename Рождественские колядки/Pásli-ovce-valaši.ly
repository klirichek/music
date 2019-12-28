\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\header {
  title = "Pásli ovce valaši"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

\paper {
  top-margin = 15
  left-margin = 15
  right-margin = 10
  bottom-margin = 15
  indent = 20
  ragged-bottom = ##f
}

global = {
  \key f \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
  \set Score.skipBars = ##t

}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \autoBeamOff
}

%use this as temporary line break
abr = { \break }

% uncommend next line when finished
abr = {}

sopvoice = \relative c'' {
  \global
  \dynamicUp
  
  \secondbar
  R1*16
  \mark \markup { \box { 2 } } | % 17
  f8 c c bes a bes c4 | % 18
  f8 c c bes a g f4 | % 19
  f8 a a bes a g a4 | \barNumberCheck #20
  f8 a a bes a g f4 | % 21
  f8 \sf a a bes a g a4 | % 22
  f8 a a bes a g f4 R1*6 | % 29
  \mark \markup { \box { 3 } } | % 29
  f'8 c c bes a bes c4 R1 | % 31
  f,8 a a bes a g a4 R1 | % 33
  f8 \sf a a bes a g a4 | % 34
  f8 a a bes a g f4 | % 35
  \mark \markup { \box { 4 } } | % 35
  f'8 c c bes a bes c4 | % 36
  f8 c c bes a g f4 | % 37
  f8 \f a a bes a g a4 | % 38
  f8 a a bes a g f4 | % 39
  f8 a a bes a g a4 | \barNumberCheck #40
  f8 a a bes a g f4 R1*6 | % 47
  \mark \markup { \box { 5 } } | % 47
  f'8 c c bes a bes c4 | % 48
  f8 c c bes a g f4 | % 49
  f8 a a bes a g a4 | \barNumberCheck #50
  f8 a a bes a g f4 | % 51
  c'8 f2. ~ f8 | % 52
  c8 f2( e8) f4
   
}


altvoice = \relative c'' {
  \global
  \dynamicUp  
  R1*16
  a8 a a g f g a4 | % 18
  a8 a a g f e f4 | % 19
  f8 f f g f e f4 | \barNumberCheck #20
  f8 f f g f e f4 | % 21
  f2. f4 | % 22
  f4. f8 f c c4 R1*6 | % 29
  a'8 a a g f g a4 s1 | % 31
  f8 f f g f e f4 s1 | % 33
  f2. f4 | % 34
  f4. f8 f c c4 | % 35
   R1*2 | % 37
  f2. f4 | % 38
  f4. f8 f c c4 | % 39
  f8 f f f f e f4 | \barNumberCheck #40
  f8 f f f f c c4 R1*6 | % 47
  a'8 a a g f g a4 | % 48
  a8 a a g f e c4 | % 49
  c4 f e8 e f4 | \barNumberCheck #50
  c4 f f8 e f4 | % 51
  <f a>8 <a c> <a c> <bes d> <a c> <g bes> <a c>4 | % 52
  <f a>8 <a c> <a c> <bes d> <a c> <g bes> <f a>4
}


tenorvoice = \relative c {
  \global
  \dynamicUp 
  R1*14 | % 11
  f8 \sf -> a a bes a g a4 | % 16
  f8 a a bes a g f4 R1*4 | % 21
  a8 c c d c bes c4 | % 22
  a8 c c d c bes a4 R1*7 | \barNumberCheck #30
  f'8 c c bes a g f4 R1 | % 32
  f8 a a bes a g f4 | % 33
  a8 c c d c bes c4 | % 34
  a8 c c d c bes a4 | % 35
  f'8 c c bes a bes c4 | % 36
  a8 a a g f e f4 | % 37
  a8 c c d c bes c4 | % 38
  a8 c c d c bes a4 | % 39
  a8 c c d c bes c4 | \barNumberCheck #40
  a8 c c d c bes a4 R1*6 | % 47
  c8 f f d c c c4 | % 48
  c8 f f d c bes a4 | % 49
  a8 c c d c bes c4 | \barNumberCheck #50
  a8 c c d c bes a4 | % 51
  a8 <a c> <a c> <bes d> <a c> <g bes> <a c>4 | % 52
  a8 <a c> <a c> <bes d> <a c> <g bes> c4
}


bassvoice = \relative c' {
  \global
  \dynamicUp
  R1*10
  \mark \markup { \box { 1 } }
  f8 -> c c bes a bes c4 -- | % 12
  f8 c c bes a g f4 | % 13
  f8 a a bes a g a4 | % 14
  f8 a a bes a g f4 | % 15
  \break
  f2. -> f4 | % 16
  f4. f8 f c f4 R1*4 | % 21
  f2. f4 | % 22
  f4. f8 f c f4 |
  R1*7 | 
  a8 a a g f c a4 R1 | % 32
  f'8 f f g f e f4 | % 33
  f2. f4 | % 34
  f4. f8 f c f4 | % 35
  R1 | % 36
  a8 a a g f e f4 | % 37
  f2. f4 | % 38
  f4. f8 f c f4 | % 39
  f8 f f f f c f4 | 
  f8 f f f f c f4 R1*6 | % 47
  f8 f f f c c f4 | % 48
  f8 f f bes, c c f4 | % 49
  f4 f c8 c f4 | 
  f4 f8( bes,) c c f4 | % 51
  f2. f4 | % 52
  f2 c4 f \bar "|."
}

lyricscore = \lyricmode {
  \set stanza = "2." An -- děl se jim u -- ká -- zal, 
  do bet -- lé -- ma jít ká -- zal.
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom. 
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom.
  
  \set stanza = "3." Bě -- žte li -- dé, po -- spě -- šte,
  
  Haj -- dom tyd -- lom tyd -- li -- dom.
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom.
  
  \set stanza = "4." On tam le -- ži v_je -- slič -- kách, 
  za -- vi -- nu -- tý v_plen -- či -- čkách.
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom. 
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom.
  
  \set stanza = "5." Ma -- ri -- a ho ko -- lé -- bá, 
  sva -- tý Jo -- sef my zpí -- vá.
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom. 
  Haj -- dom __ tyd -- li -- dom. 
  
}

lyricsalto = \lyricmode {
  \repeat unfold 28 \skip 1
  Haj -- dom, haj -- dom, tyd -- li -- dom.
  \repeat unfold 14 \skip 1
  Haj -- dom, haj -- dom, tyd -- li -- dom.
  Haj -- dom, haj -- dom, tyd -- li -- dom.
  \repeat unfold 28 \skip 1
  Haj -- dom tyd -- li -- dom.
  haj -- dom __ tyd -- li -- dom.
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom.
}

lyricstenor = \lyricmode {
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom. 
}

lyricsbass = \lyricmode {
  \set stanza = "1."
  Pá -- sli ov -- ce va -- la -- ši při be -- tlé -- mske sa -- la -- ši. 
  Haj -- dom tyd -- lom tyd -- li -- dom, haj -- dom tyd -- lom tyd -- li --  dom. 
  Haj -- dom, haj -- dom, tyd -- li -- dom.
  \repeat unfold 7 \skip 1
  
  Je -- ží -- ška tam naj -- de -- te.
  Haj -- dom tyd -- lom tyd -- li -- dom.
  \repeat unfold 59 \skip 1
  Haj -- dom  tyd -- li -- dom. haj -- dom tyd -- li -- dom.
}

PianoRight =  \relative a' {
  \global
  <a f'>8-\markup staccato -> [ <a c> <a c> <g bes> ] <f a> [ <g bes>
  ] <a c>4 -> | % 2
  <a f'>8 -> [ <a c> <a c> <g bes> ] <f a> [ <c g'> ] <a f'>4 ->
  | % 3
  f'8 [ <f a> <f a> <g bes> ] <f a> [ <e g> ] <f a>4 | % 4
  f8 -> [ <f a> <f a> <g bes> ] <f a> [ <c g'>8 ] f4 | % 5
  a16 [ g a bes ] c [ d c bes ] a8 [ g ] f4 | % 6
  c'4 \startTrillSpan <a c f> \stopTrillSpan <a c>8 -. [ <g
  bes>8 -. ] << { a4 } \\ {f16 [ e f g ]} >> | % 7
  f16 [ e f g ] a [ c f d ] c [ d c bes ] a [
  bes16 a g ] | % 8
  f16 [ e f g ] a [ bes a g ] <f c'>8 [ bes ] << { a4 } \\ {f16 [ e f g ]} >> | % 9
  f8 -. <c f a>4( -> <c g' bes>8) <f a> [ <e g> ] a16 [ bes a g
  ] | \barNumberCheck #10
  f8 -. <a, c f>4 <bes c g'>8 <a c f> [ <g c e> ] <a c f>4 | % 11
  \mark \markup { \box { 1 } } | % 35
  f'16 [ g a bes ] c [ f, bes f ] a [ f g e ] f4
  | % 12
  f'4 \startTrillSpan f8 \stopTrillSpan -. bes, -. a16 [ f g
  e16 ] f4 | % 13
  f16 [ e f g ] a [ c d bes ] a [ c f g ] a4
  \startTrillSpan | % 14
  f16 \stopTrillSpan[ g f e ] f [ c bes a ] f [ a g e ] f4 | % 15
  a,16 [ c f c ] f [ c g' c, ] f [ c e c ] f [
  d16 c bes ] | % 16
  a16 [ c f c ] f [ c g' c, ] f [ c e bes ] <a
  f'>4 | % 17
  << { f''1\startTrillSpan \stopTrillSpan} \\ {<c, f>4 r a'8 g f4} >>  | % 18
  <a c>16 [ d c bes ] a [ c bes g ] f [ c e c ]
  f16 [ e f g ] | % 19
  <c, f a>8 \arpeggio [ <a c f> ] f'4 \trill r8
  <c e g>8 <c f a>4 | \barNumberCheck #20
  c8 <c f a>4 <c g' bes>8 <c f a> [ <c e g> ] << {f4} \\ {c16[ d c bes]} >> | % 21
  a16 [ c f c ] f [ c g' c, ] f [ c e c ] << {f4} \\ {r16 d[ c bes]}>> | % 22
  a16 [ c f c ] f [ c g' c, ] f [ c <bes e>8 ] <a
  f'>4 | % 23
  a'16 [ g a bes ] c [ d c bes ] a8 [ g ] f4 | % 24
  c'4 \startTrillSpan <a c f> \stopTrillSpan <a c>8 -. [ <g
  bes>8 -. ] << {a4} \\ {f16[ e f g]}>> | % 25
  f16 [ e f g ] a [ c f d ] c [ d c bes ] a [
  bes16 a g ] | % 26
  f16 [ e f g ] a [ bes a g ] <f c'>8 [ bes ] <<a4\\{f16[ e f g]}>> | % 27
  f8 -. <c f a>4( -> <c g' bes>8) <f a> [ <e g> ] a16 [ bes a g
  ] | % 28
  f8 -. <a, c f>4 <bes c g'>8 <a c f> [ <g c e> ] <a c f>4 | % 29
  \mark \markup { \box { 3 } } | % 35
  f'16 [ g a bes ] c [ d c bes ] a [ c f g ] a4 \startTrillSpan | \barNumberCheck #30
  a4 \stopTrillSpan a16 [ bes g e ] f [ c e c ] <<f4\\{r16 c[ d e]}>> | % 31
  a,16 [ g a bes ] c [ e f g ] f [ e f g ] a [
  bes16 a g ] | % 32
  f16 [ g f e ] f [ d c bes ] a [ c, d e ] f4 | % 33
  a,16 [ c f c ] f [ c g' c, ] f [ c e c ] f [
  d16 c bes ] | % 34
  a16 [ c f c ] f [ c g' c, ] f [ c e bes ] <a c
  f>4 | % 35
  \mark \markup { \box { 4 } } | % 35
  f'16 [ g a bes ] c [ f, bes f ] a [ f g e ] f4
  | % 36
  f'4 \startTrillSpan f8 \stopTrillSpan -. [ bes, -. ] a16 [ f
  g16 e ] f4 | % 37
  f16 [ e f g ] a [ c d bes ] a [ c f g ] a4
  \startTrillSpan  | % 38
  f16\stopTrillSpan [ g f e ] f [ c bes a ] f [ a g e ] f4 | % 39
  a,16 [ c f c ] f [ c g' c, ] f [ c e c ] f [
  d16 c bes ] | \barNumberCheck #40
  a16 [ c f c ] f [ c g' c, ] f [ c e bes ] <a
  f'>4 | % 41
  a'16 [ g a bes ] c [ d c bes ] a8 [ g ] f4 | % 42
  c'4 \startTrillSpan <a c f> \stopTrillSpan <a c>8 -. [ <g
  bes>8 -. ] <<a4\\{f16[ e f g]}>> | % 43
  f16 [ e f g ] a [ c f d ] c [ d c bes ] a [
  bes16 a g ] | % 44
  f16 [ e f g ] a [ bes a g ] <f c'>8 [ bes ] <<a4\\{f16[ e f g]}>> | % 45
  f8 -. <c f a>4( -> <c g' bes>8) <f a> [ <e g> ] a16 [ bes a g
  ] | % 46
  f8 -. <a, c f>4 <bes c g'>8 <a c f> [ <g c e> ] <a c f>4 | % 47
  <<f''1 \startTrillSpan\\{<c, f>4 r a'8 g f4}>> | % 48
  <a c>16\stopTrillSpan [ d c bes ] a [ c bes g ] f [ c e c ]
  f16 [ e f g ] | % 49
  <c, f a>8 \arpeggio [ <a c f> ] f'4 
  \startTrillSpan r8 \stopTrillSpan <c e g> <c f a>4 |
  \barNumberCheck #50
  c8 -. <c f a>4 -> <c g' bes>8 <c f a> [ <c e g> ] <<f4\\{c16[ d c bes]}>> | % 51
  a16 [ c f c ] f [ c g' c, ] f [ c e c ] <<f4\\{r16 d[ c bes]}>> | % 52
  a16 [ c f c ] f [ c g' c, ] f [ c <bes e>8 ] <a f'>4 \bar "|."
}

PianoLeft =  \relative f {
  \global
  R1*4 | % 5
  f16 [ e f g ] a [ bes a g ] f [ a bes c ] a
  [ bes16 a g ] | % 6
  a16 [ c f d ] c [ d c bes ] a [ c, d e ] f4 | % 7
  << { <a c>4. <bes d>8 <a c> } \\ {f2~ f8} >> r <c g' bes>4 | % 8
  <f, c' f>4 c''16 [ d c bes ] a [ c, d e ] f4 | % 9
  f,16 [ c' f c ] f [ c g' c, ] f [ c e c ] f
  [ d16 c bes ] | \barNumberCheck #10
  a16 [ g a bes ] c [ d c bes ] a [ c d e ] f4 | % 11
  r2 r4 c'16 [ d c bes ] | % 12
  a16 [ bes a g ] a [ c d bes ] c8 -. bes -. a16 [ bes
  a16 g ] | % 13
  << {\autoBeamOff a8 c c d c bes c16 [ d c bes ]} \\ f1 >> | % 14
  << {\autoBeamOff a8 c c d c bes a16 [ bes a g ]} \\ f1 >> | % 15
  f,8 -. f' -. a -. bes -. a -. g -. a16 -- [ bes a g ] | % 16
  f,8 [ f'( ] a) -. bes -. a -. <c, g'> -. f4 | % 17
  \mark \markup { \box { 2 } } | % 35
  a16 [ f a bes ] c [ f c bes ] c [ d c bes ] a
  [ bes16 a g ] | % 18
  f,8 f' -. c'( -> [ <bes d> ]) r <c, g' bes> -. <f a>4 | % 19
  f,16 [ c' ] f [ g ] a [ bes a g ] f [ c e c ]
  f16 [ d c bes ] | \barNumberCheck #20
  a16 [ bes a g ] a [ c e c ] f [ c bes' c, ] f4
  | % 21
  << { r8 <c f>4 r8 r2 } \\ {\autoBeamOff f,4-> a8-. bes-. a-. g-. a16[ bes a g]} >> | % 22
  << { r8 <c f>4 r8 r2 } \\ {\autoBeamOff f,4 a8 bes a <g c e>-. <f c' f>4 } >>| % 23
  f'16 [ e f g ] a [ bes a g ] f [ a bes c ] a
  [ bes16 a g ] | % 24
  a16 [ c f d ] c [ d c bes ] a [ c, d e ] f4 | % 25
  << { <a c>4. <bes d>8 <a c> } \\ {f2~ f8} >> r <c g' bes>4 -. | % 26
  <f, c' f>4 c''16 [ d c bes ] a [ c, d e ] f4 | % 27
  f,16 [ c' f c ] f [ c g' c, ] f [ c e c ] f
  [ d16 c bes ] | % 28
  a16 [ g a bes ] c [ d c bes ] a [ c d e ] f4 | % 29
  <f, c' f>2. a'16 [ bes a g ] << { r4 <f a>8[ <e g>] } \\ {f16[ g f e] c4} >>  <a' c>8 -. [
  <g bes>8 -. ] <f a>4 | % 31
  << c'1 \\ { f,8 -. <a f'>4 <g e'>8 <a f'> <bes g'> <a f'>4 } >>| % 32
  << { \autoBeamOff a8 c c d c bes -. a16 [ bes a g ] } \\ {f2~ f8 r r4} >> | % 33
  f,8 f' a bes a g a16 [ bes a g ] | % 34
  f,8 -. f'( a) -. bes -. a -. <c, g'> -. <f, c' f>4 | % 35
  r2 r4 c''16 [ d c bes ] | % 36
  a16 [ bes a g ] a [ c d bes ] c8 -. bes -. a16 [ bes
  a16 g ] | % 37
  << {\autoBeamOff a8 c c d c bes c16 [ d c bes ] } \\ {f1} >>| % 38
  << {\autoBeamOff a8 c c d c bes a16 [ bes a g ] } \\ {f1} >>| % 39
  f,8 -. f' -. a -. bes -. a -. g -. a16 -- [ bes a g ] |
  \barNumberCheck #40
  f,8 [ f'( ] a) -. bes -. a -. <c, g'> -. f4 -- | % 41
  f16 [ e f g ] a [ bes a g ] f [ a bes c ] a
  [ bes16 a g ] | % 42
  a16 [ c f d ] c [ d c bes ] a [ c, d e ] f4 | % 43
  << {\autoBeamOff <a c>4. <bes d>8 <a c> } \\ {f2~ f8} >> r <c g' bes>4 -. | % 44
  <f, c' f>4 c''16 [ d c bes ] a [ c, d e ] f4 | % 45
  f,16 [ c' f c ] f [ c g' c, ] f [ c e c ] f
  [ d16 c bes ] | % 46
  a16 [ g a bes ] c [ d c bes ] a [ c d e ] f4 | % 47
  \mark \markup { \box { 5 } }
  a16 [ f a bes ] c [ f c bes ] c [ d c bes ] a
  [ bes16 a g ] | % 48
  f,8 f' -. c'( -> [ <bes d> )] r <c, g' bes> -. <f a>4 | % 49
  f,16 [ c' ] f [ g ] a [ bes a g ] f [ c e c ]
  f16 [ d c bes ] | \barNumberCheck #50
  a16 [ bes a g ] a [ c e c ] f [ c bes' c, ] f4
  | % 51
  << { r8 <c f>4 r8 r2 } \\ {\autoBeamOff f,4-> a8-. bes-. a-. g-. a16[ bes a g]} >> | % 52
  << { r8 <c f>4 r8 r2 } \\ {\autoBeamOff f,4 a8 bes a <g c e>-. <f c' f>4 } >> \bar "|."
}

ViolaOne = \relative c'' {
  \global
  \secondbar
  R1*4 | % 5
  \acciaccatura { c8 } f [ c ] c [ bes ] a [ bes ] c4 | % 6
  \acciaccatura { a8 } f' [ c ] c [ bes ] a [ g ] f4 | % 7
  f8 [ a ] a [ bes ] a [ g ] a4 | % 8
  f8 [ a ] a [ bes ] a [ g ] f4 | % 9
  f8 [ a ] a [ bes ] a\prall [ g ] a4 |
  \barNumberCheck #10
  f8 [ a ] a [ bes ] a \prall [ g ] f4 | % 11
  f'8 -> [ c ] c [ bes ] a \prall [ bes ]
  c4 | % 12
  f8 -> [ c ] c [ bes ] a \prall [ g
  ] f4 | % 13
  f8 [\mf a ] a [ bes ] a \prall [ g ] a16 [
  bes16 a g ] | % 14
  f8 [ a ] a [ bes ] a16 [ f g8 ] f4 | % 15
  f8 \f a a bes a g a4 | % 16
  f8 a a bes a g f4 | % 17
  \acciaccatura { c'16 [ d e ] } f8 [ c ] c [ bes ] a [ bes ] c4 | % 18
  f4.( g8) f -. e -. f4 | % 19
  a,8 c4 -> bes8 a [ g ] a16 [ bes a g ] | \barNumberCheck #20
  a8 [ f' -. ] f ( [ g ] f ) [ e -. ] f4 \breathe | % 21
  f,8 a a bes a g a4 | % 22
  f8 a a bes a16 [ f ] g [ e ] f4 | % 23
  \acciaccatura { c'8 } f [ c ] c [ bes ] a [ bes ] c4 | % 24
  \acciaccatura { a8 } f' [ c ] c [ bes ] a [ g ] f4 | % 25
  f8 [ a ] a [ bes ] a [ g ] a4 | % 26
  f8 [ a ] a [ bes ] a [ g ] f4 | % 27
  f8 [ a ] a [ bes ] a \prall [ g ] a4 | % 28
  f8 [ a ] a [ bes ] a \prall [ g ] f4 | % 29
  \acciaccatura { c'16 [ d e ] } f8 [ c ] c [ bes ] a [ bes ] c4 |
  \barNumberCheck #30
  f8 [ c ] c [ bes ] a16 [ f ] g8 f4 | % 31
  f8 -. <f a>4 -- <f a> -- <e g>8 -. <f a>4 | % 32
  f8 -. <a c>4 -- <g bes>8 -. <f a> -. <e g> -. f4 -- | % 33
  f8 [ a ] a [ bes ] a [ g ] a4 | % 34
  f8 [ a ] a [ bes ] a16 [ f ] g8 f4 | % 35
  f'8 -> [ c ] c [ bes ] a \prall [ bes ]
  c4 | % 36
  f8 -> [ c ] c [ bes ] a \prall [ g ] f4
  | % 37
  f8 \mf [ a ] a [ bes ] a \prall [ g ] a16
  [ bes16 a g ] | % 38
  f8 [ a ] a [ bes ] a16 [ f g8 ] f4 | % 39
  f8 \f a a bes a g a4 | \barNumberCheck #40
  f8 a a bes a g f4 | % 41
  \acciaccatura { c'8 } f [ c ] c [ bes ] a [ bes ] c4 | % 42
  \acciaccatura { a8 } f' [ c ] c [ bes ] a [ g ] f4 | % 43
  f8 [ a ] a [ bes ] a [ g ] a4 | % 44
  f8 [ a ] a [ bes ] a [ g ] f4 | % 45
  f8 [ a ] a [ bes ] a \prall [ g ] a4 | % 46
  f8 [ a ] a [ bes ] a \prall [ g ] f4 | % 47
  \acciaccatura { c'16 [ d e ] } f8 [ c ] c [ bes ] a [ bes ] c4 | % 48
  f4.( g8) f -. e -. f4 | % 49
  a,8 c4(-> bes8) a [ g ] a16 [ bes a g ] | \barNumberCheck #50
  a8 [ f' -. ] f ( [ g ] f ) [ e -. ] f4 | % 51
  f,8 a a bes a g a4 | % 52
  f8 a a bes a16 [ f ] g [ e ] f4 \bar "|."
}

ViolaTwo = \relative c'' {
  \global
  R1*4 | % 5
  a8 [ a ] a [ g ] f [ g ] a4 | % 6
  a8 [ a ] a [ g ] f [ e ] f4 | % 7
  f8 [ f ] f [ g ] f [ e ] f4 | % 8
  f8 [ f ] f [ g ] f [ e ] f4 | % 9
  f8 [ f ] f [ g ] f [ e ] f4 | \barNumberCheck #10
  f8 [ f ] f [ g ] f [ e ] f4 | % 11
  a8 [ a ] a [ g ] f [ g ] a4 | % 12
  a8 [ a ] a [ g ] f [ e ] f4 | % 13
  f8 [ f ] f [ f ] f [ e ] f4 | % 14
  f8 [ f ] f [ g ] f [ e ] f4 | % 15
  f8 f f g f e f4 R1 | % 17
  <f a>1 | % 18
  f8 \prall [ e( ] f) bes a-. g-. f4 | % 19
  f8 a4 g8 f [ e ] f4 | \barNumberCheck #20
  a8 [ a -. ] a ( [ bes ] a ) [ g -. ] a4 | % 21
  f8 f f f f e f4 | % 22
  f8 f f d c bes a4 | % 23
  a'8 [ a ] a [ g ] f [ g ] a4 | % 24
  a8 [ a ] a [ g ] f [ e ] f4 | % 25
  f8 [ f ] f [ g ] f [ e ] f4 | % 26
  f8 [ f ] f [ g ] f [ e ] f4 | % 27
  f8 [ f ] f [ g ] f [ e ] f4 | % 28
  f8 [ f ] f [ g ] f [ e ] f4 | % 29
  a8 [ a ] a [ g ] f [ g ] a4 | \barNumberCheck #30
  a8 [ a ] a [ g ] f16 [ c e8 ] f4 s1 s | % 33
  c8 f4 f f8 f4 | % 34
  c8 f4 ~ f8 f [ c ] f4 | % 35
  a8 [ a ] a [ g ] f [ g ] a4 | % 36
  a8 [ a ] a [ g ] f [ e ] f4 | % 37
  f8 [ f ] f [ f ] f [ e ] f4 | % 38
  f8 [ f ] f [ f ] f [ e ] f4 | % 39
  f8 f f g f e f4 s1 | % 41
  a8 [ a ] a [ g ] f [ g ] a4 | % 42
  a8 [ a ] a [ g ] f [ e ] f4 | % 43
  f8 [ f ] f [ g ] f [ e ] f4 | % 44
  f8 [ f ] f [ g ] f [ e ] f4 | % 45
  f8 [ f ] f [ g ] f [ e ] f4 | % 46
  f8 [ f ] f [ g ] f [ e ] f4 | % 47
  <f a>1 | % 48
  f8 \prall [ e( ] f) bes a g f4 | % 49
  f8 a4( g8) f [ e ] f4 | \barNumberCheck #50
  a8 [ a -. ] a ( [ bes ] a ) [ g -. ] a4 | % 51
  f8 f f g f e f4 | % 52
  f8 f f g c, bes a4
}

PianoPart = {
  \new PianoStaff \with {
       instrumentName = "Piano"
       shortInstrumentName = "Pno."
     } <<
       \new Staff \new Voice { \clef treble \PianoRight }
       \new Staff \new Voice { \clef bass \PianoLeft }
     >>
}

ViolaPart = {
  \new Staff \with {
      instrumentName = "Violini"
      shortInstrumentName = \markup \right-column { "V1" "V2" }
      midiInstrument = "violin"
    } <<
        \new Voice { \voiceOne \ViolaOne }
        \new Voice { \voiceTwo \ViolaTwo }
      >>
}

ChoirPart = {
  \new ChoirStaff <<
      \new Staff = "upstaff" \with {
        instrumentName = \markup { \right-column { "Сопрано" "Альт"  } }
        shortInstrumentName = \markup { \right-column { "С" "А"  } }
        midiInstrument = "voice oohs"
      } <<
        \new Voice = "soprano" { \voiceOne \sopvoice }
        \new Voice = "alto" { \voiceTwo \altvoice }
      >> 
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
      \new Lyrics \lyricsto "alto" { \lyricsalto }
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
      \new Lyrics \lyricsto "tenor" { \lyricstenor  }
      \new Lyrics \lyricsto "bass" { \lyricsbass  }
    >>
}

\bookpart {
  \header {
      piece = "Choir"
  }
  \score {
    %  \transpose c bes {
    \ChoirPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}

\bookpart {
  \header {
      piece = "Instruments"
  }
  \score {
    %  \transpose c bes {
    <<
    \ViolaPart
    \PianoPart
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
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}

\bookpart {
  \header {
      piece = "Piano"
  }
  \score {
    %  \transpose c bes {
    \PianoPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}

\bookpart {
  \header {
      piece = "Violini"
  }
  
  \paper {
    ragged-last-bottom = ##f
  }

  \score {
    %  \transpose c bes {
    \ViolaPart
    
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}

\bookpart {
  \header {
      piece = "Full"
  }
  \score {
    %  \transpose c bes {
    <<
      \ChoirPart
      \ViolaPart
      \PianoPart
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
      }
    }
    \midi {
      \tempo 4=120
    }
  }
}