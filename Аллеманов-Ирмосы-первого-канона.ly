\version "2.18.2"

% закомментируйте строку ниже, чтобы получался pdf с навигацией
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  composer = "муз. Д.В.Аллеманова"
  title = "Ирмосы первого канона"
  % Удалить строку версии LilyPond 
  tagline = ##f
}

global = {
  \key f \major
  \time 4/4
  \numericTimeSignature
  \autoBeamOff
}

%make visible number of every 2-nd bar
secondbar = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
}

partialTwo = {\set Timing.measurePosition = #(ly:make-moment -1/2)}

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
  r4\mf a^\markup \bold "Песнь 1" bes a | % 2
  c2-> bes4 a | % 3
  d4. c8 bes4 a | % 4
  c2 bes4 a | \abr % 5
  g8 [ a ] bes4 a c | % 6
  d2 d4 d | % 7
  c2 f4\f f | % 8
  f4. e8 e2 | % 9
  f2(\mf e4) d | \barNumberCheck #10
  c4( d) c bes | % 11
  a2 a4 a | % 12
  bes2 a8\< [ bes ] c[ d ] | % 13
  es4.\! es8 d4 f | % 14
  g4\f( f) es( d) | % 15
  f4. es8 d2 | % 16
  c2\> c4 bes | % 17
  a2 g | % 18
  f1\mp\fermata \bar "||"
  
  \partialTwo  a4\p^\markup \bold "Песнь 3" bes |
  c2 c4 c | % 21
  c4( d es) c | % 22
  d4.\mf d8 d4 f\f | % 23
  g4( f) es(\> d) | % 24
  es2 d | % 25
  d4\p c bes4. bes8 | % 26
  bes4 c8 [ d ] es2 | % 27
  c2 c4 c | % 28
  d4. es8 d4 c | % 29
  bes2 a |
  g2 a4 bes | % 31
  c2->\< bes4 a | % 32
  bes4 c d2 | % 33
  f4\f f g4.( f8) | % 34
  es8( [ f ] g4) f2 | % 35
  f2-> f4 f | % 36
  f2 e | % 37
  f1\fermata \bar "||"
  
  a,2.\mf^\markup \bold "Песнь 4" a4 | % 39
  bes2 bes4 bes\< |
  a8 [ bes] c[ d ]\! es4.-> es8 | % 41
  d4 d d2 | % 42
  c4 bes d8 [ c] bes[ a ] | % 43
  bes4\p a c2\< | % 44
  bes4 a bes c | % 45
  d2 f4\mf f | % 46
  f2 f | % 47
  f4 f f fis | % 48
  g2\f d4 c8 [ d ] | % 49
  es2 c4 c |
  d4. es8 d4 c | % 51
  bes2\mf\< a4 c | % 52
  bes4 a bes c | % 53
  d2. d4 | % 54
  d2 f4\f f | % 55
  g4.-> g8 g [ f] es[ g ] | % 56
  f2\> d | % 57
  c2. c4 | % 58
  c4 c c bes | % 59
  a2 g |
  f1\!\fermata \bar "||"
  d'2\mf^\markup \bold "Песнь 5" c4( d) | % 62
  es2 d4 bes | % 63
  c4 a bes c | % 64
  f4.-> e8 d4 cis | % 65
  d4 d-> c bes | % 66
  \time 3/2  a2 bes4 g a r | % 67
  \time 4/4  g2\p g4 f | % 68
  bes4. bes8 a4 a | % 69
  g2 g4 g |
  a2. r4 | % 71
  d4.\mf c8 bes4 d | % 72
  es4. d8 d2 | % 73
  f4.\f( es8) d4 f | % 74
  g4. f8 f4 d\p | % 75
  \time 3/2  es4 d c bes a a | % 76
  \time 4/4  bes2\mf c4 c | % 77
  d2 d | % 78
  \time 3/2  c2 c4\> c c bes | % 79
  \time 4/4  a2( g) |
  f1\!\fermata \bar "||"
  
  \partialTwo  a4\p^\markup \bold "Песнь 6" bes | % 82
  c2\< bes4 c | % 83
  d2 c4 d | % 84
  es4->\f\> d c d | % 85
  c4 bes a2 | % 86
  g2\p\< a4 a | % 87
  bes2\> a | % 88
  g2.\! r4 | % 89
  d'2\mf c4 d |
  es4. d8 c4 bes | % 91
  c2 bes4 a | % 92
  g4 a8 [ bes ] c4 c8 c | % 93
  a2 g4 a | % 94
  bes4. f8\p f4 g | % 95
  f1 | % 96
  f2 r4 a8 [\< bes ] | % 97
  c4 bes a bes | % 98
  c4 bes c d | % 99
  es8 [ d ] c4 d2 |
  f2 f4 f | % 101
  f4\mf es d2\> | % 102
  c2. bes4 | % 103
  a2( g) | % 104
  a1\!\fermata \bar "||"
  
  bes2\mf^\markup\bold"Песнь 7" f4 f | % 106
  bes4 c d4. c8 | % 107
  bes4 bes c d | % 108
  es2 d4 r | % 109
  c4 d es4. d8 |
  d4 es f4. es8\< | % 111
  d4 es\! f( g | % 112
  f2)\> es4\p r | % 113
  f4 f8 f f4 es | % 114
  d4. d8\p d4 d | % 115
  d4 c bes4. bes8 | % 116
  bes4 g a bes | % 117
  a4(\< bes c d) | % 118
  es4.\! c8 d4 es | % 119
  d2 bes4 bes |
  a4( g) a\mf c | % 121
  d2 d4 d | % 122
  c2 c4-> bes | % 123
  a2 g | % 124
  f1\!\fermata \bar "||"
  
  d'4\p^\markup\bold"Песнь 8" d a bes | % 126
  c4( d) c bes | % 127
  a2 a4 a | % 128
  a2 a4 a | % 129
  a4 a g a |
  bes4 a8 [ g ] f4( e) | % 131
  f4 d'\mf c->( bes) | % 132
  a4( bes) a g | % 133
  a4 a bes2-> | % 134
  bes4 bes a r | % 135
  d2\> c4 d | % 136
  es4( d) c bes | % 137
  a4 bes c2\! | % 138
  bes2 bes4\p a | % 139
  g2 g4 g | 
  f1 | % 141
  f2. r4 | % 142
  c'2\mf a8 [\< bes] c[ d ] | % 143
  es2->\! es4 es | % 144
  d8 [ c ] d[ es ] f2 | % 145
  es4\f d es f | % 146
  g2-> es4 c\> | % 147
  bes2 a | % 148
  bes4 a bes bes | % 149
  a4 bes c bes |
  a2( g ) | % 151
  f1\p\fermata \bar "||"
  
  f'2\f^\markup\bold"Песнь 9" f4 es | % 153
  d2 c4 bes | % 154
  g'4 f es\> d8 [ c ] | % 155
  bes2. a4 | % 156
  g2.\! r4 | % 157
  a2\mf g4 a | % 158
  bes2 r4 a8 [ bes ] | % 159
  c2 a4 bes |
  c4 d c2 | % 161
  bes2. r4 | % 162
  f'4\f( g) f e ? | % 163
  f4. c8 c2\> | % 164
  d4 c bes a | % 165
  g2\< a4 bes | % 166
  c2 bes4 a | % 167
  bes4( c) d2 ~\! | % 168
  d2 r4 c\f | % 169
  c4 c c f |
  e ?2 e4 e | % 171
  f4 d c(\fermata e)\fermata | % 172
  f1\fermata \bar "|."
}


altvoice = \relative c' {
  \global
  \dynamicUp  
  r4 f f f | % 2
  f2 f4 f | % 3
  f4. f8 f4 f | % 4
  a2 g4 f | % 5
  e8 [ f ] g4 f a | % 6
  bes2 bes4 bes | % 7
  a2 a4 a | % 8
  a4. g8 g2 | % 9
  a2. bes4 |
  f2 f4 f | % 11
  f2 f4 f | % 12
  f2 f8 [ g] a[ bes ] | % 13
  c4. c8 bes4 bes | % 14
  bes2 bes | % 15
  bes4. bes8 bes2 | % 16
  a2 a4 g | % 17
  f2 e | % 18
  c1
  
  f4 g | %\barNumberCheck #20
  a2 a4 a | % 21
  a4( bes f) f | % 22
  f4. f8 f4 bes | % 23
  bes2 a4 bes | % 24
  c2 bes | % 25
  bes4 a g4. g8 | % 26
  g4 g g2 | % 27
  f2 f4 f | % 28
  f4. f8 f4 a | % 29
  g2 fis | %\barNumberCheck #30
  d2 f4 f | % 31
  f2 f4 f | % 32
  f4 a bes2 | % 33
  bes4 bes bes2 | % 34
  bes2 bes | % 35
  a2 a4 g | % 36
  a2 g | % 37
  f1 
  
  f2. f4 | % 39
  f2 f4 f | %\barNumberCheck #40
  f8 [ g a bes ] c4. c8 | % 41
  bes4 bes bes2 | % 42
  a4 g bes8 [ a] g[ fis ] | % 43
  g4 fis a2 | % 44
  g4 fis g a | % 45
  bes2 bes4 bes | % 46
  c4( bes) a8 [ bes ] c4 | % 47
  bes4 bes bes c | % 48
  bes2 g4 g | % 49
  g2 f4 f | %\barNumberCheck #50
  f4. f8 f4 a | % 51
  g2 fis4 a | % 52
  g4 fis g a | % 53
  bes2. bes4 | % 54
  bes2 bes4 bes | % 55
  bes4. bes8 bes4 bes | % 56
  bes2 bes | % 57
  a4( bes a) g | % 58
  a4 bes a g | % 59
  f2 e | %\barNumberCheck #60
  c1
  
  f2 es4( f) | % 62
  g2 f4 f | % 63
  g4 f f a | % 64
  a4. g8 f4 e | % 65
  f4 f g g | % 66
  f2 f4 e f r | % 67
  e2 e4 f | % 68
  g4. g8 f4 f | % 69
  e2 e4 e | %\barNumberCheck #70
  f2. r4 | % 71
  f4. es8 d4 f | % 72
  g4. f8 f2 | % 73
  bes2 bes4 bes | % 74
  bes4. bes8 bes4 bes | % 75
  c4 bes a g fis fis | % 76
  g2 a4 a | % 77
  bes2 bes | % 78
  a2 a4 a a g | % 79
  f2( e) | %\barNumberCheck #80
  c1
  
  f4 g | % 82
  a2 g4 a | % 83
  bes2 a4 bes | % 84
  c4 bes a bes | % 85
  a4 g fis2 | % 86
  g2 g4 g | % 87
  g2 fis | % 88
  d2. r4 | % 89
  f2 es4 f | %\barNumberCheck #90
  g4. f8 f4 f | % 91
  f2 f4 f | % 92
  d8 [ g ] g4 g g8 g | % 93
  f2 f4 f | % 94
  f4. d8 d4 es | % 95
  d2( c) | % 96
  d2 r4 f8 [ g ] | % 97
  a4 g f g | % 98
  a4 bes a bes | % 99
  a8 [ bes ] f4 f2 | %\barNumberCheck #100
  a2 a4 a | % 101
  a4 a bes2 | % 102
  g4( a bes) g | % 103
  f2( e) | % 104
  f1
  
  d2 d4 d | % 106
  d4 es f4. es8 | % 107
  d4 d es f | % 108
  g2 f4 r | % 109
  g4 g g4. g8 | %\barNumberCheck #110
  g4 g g4. g8 | % 111
  g4 g g2 ~ | % 112
  g2 g4 r | % 113
  f4 f8 f f4 f | % 114
  f4. fis8 g4 d | % 115
  d4 d d4. d8 | % 116
  d4 e f g | % 117
  f4( g a bes) | % 118
  c4. f,8 f4 f | % 119
  f2 f4 f | %\barNumberCheck #120
  f4( e) f f | % 121
  f2 f4 f | % 122
  f2 f4 f | % 123
  f2 e | % 124
  f1
  
  f4 f f f | % 126
  f2 f4 e | % 127
  f2 e4 f | % 128
  g4( a8 [ g )] f4 e | % 129
  f4 f g f | %\barNumberCheck #130
  g4 d d( cis) | % 131
  d4 f g2 | % 132
  f2 f4 g | % 133
  f4 f f2 | % 134
  e4 e f r | % 135
  f2 es4 f | % 136
  g4( f) es d | % 137
  c4 d es2 | % 138
  d2 g4 fis | % 139
  g2 es4 es | %\barNumberCheck #140
  d2( c) | % 141
  d2. r4 | % 142
  a'2 f8 [ g] a[ bes ] | % 143
  c2 c4 c | % 144
  bes4 bes bes2 | % 145
  bes4 g g g | % 146
  g2 g4 g | % 147
  f2 f | % 148
  f4 f f g | % 149
  f4 f f f | %\barNumberCheck #150
  f2( e) | % 151
  f1
  
  f2 f4 f | % 153
  f2 f4 g | % 154
  g4 bes g g8 [ a ] | % 155
  g2. fis4 | % 156
  d2. r4 | % 157
  f2 f4 f | % 158
  f2 r4 f | % 159
  f2 f4 f | %\barNumberCheck #160
  f4 f f2 | % 161
  f2. r4 | % 162
  f4( e ?) f bes | % 163
  a4. a8 a2 | % 164
  bes4 a g fis | % 165
  d2 f4 f | % 166
  f2 f4 f | % 167
  f4( a) bes2 ~ | % 168
  bes2 r4 a | % 169
  a4 a a f | %\barNumberCheck #170
  g2 g4 g | % 171
  f4 f f( g) | % 172
  <c, f>1
}


tenorvoice = \relative c' {
  \global
  \dynamicUp 
  r4\mf c d c | % 2
  es2 d4 c | % 3
  f4. es8 d4 d | % 4
  c2 c4 c | % 5
  c4 c c f | % 6
  f2 f4 f | % 7
  f2 c4 c | % 8
  c4. c8 c2 | % 9
  c2. bes4 | %\barNumberCheck #10
  a4( bes) a d | % 11
  c2 d4 es | % 12
  d2 es8 [ d] c[ bes ] | % 13
  a4. a8 bes4 d | % 14
  es4( d) c( bes) | % 15
  d4. c8 bes2 | % 16
  c2 c4 d | % 17
  c2 c4( bes) | % 18
  a1
  
  f'4\p f | %\barNumberCheck #20
  f2 f4 f | % 21
  es4 d c a | % 22
  bes4.\mf bes8 bes4 d | % 23
  es4( f) f2 | % 24
  f2 f | % 25
  f4\p f d4. d8 | % 26
  d4 es8 [ d ] c2 | % 27
  a2 a4 a | % 28
  bes4. c8 d4 es | % 29
  d2 d4( c) | %\barNumberCheck #30
  bes2 c4 d | % 31
  es2 d4 c | % 32
  d4 f f2 | % 33
  d4 d es4.( d8) | % 34
  c8( [ d ] es4) d2 | % 35
  c2 c4 d | % 36
  c2 << { c2 } \new Voice {\voiceThree c4( bes)} >> | % 37
  \arpeggioBracket <a c>1\arpeggio
  
  c2\mf( d4) es | % 39
  d2 d4 d | %\barNumberCheck #40
  es8 [ d] c[ bes ] a4. a8 | % 41
  bes4 d d2 | % 42
  d4 d d d | % 43
  d4\p d d2 | % 44
  d4 d d f | % 45
  f2 d4\mf d | % 46
  es4( d) es8( [ d ] es4) | % 47
  d4 d d d | % 48
  d2\f bes4 a8 [ bes ] | % 49
  c2 a4 a | %\barNumberCheck #50
  bes4. c8 d4 es | % 51
  d2\mf d4 d | % 52
  d4 d d f | % 53
  f2. f4 | % 54
  f2 d4\f d | % 55
  es4. es8 es [ d ] es4 | % 56
  d2 f | % 57
  f4( e ? f) g | % 58
  f4 e f d | % 59
  c2 c4( bes) | %\barNumberCheck #60
  a1
  
  bes2\mf bes | % 62
  bes2 bes4 d | % 63
  es4 c d c | % 64
  c4. bes8 a4 a | % 65
  a4 a c c | % 66
  c2 d4 c c r | % 67
  c2\p c4 c | % 68
  c4. c8 c4 c | % 69
  c2 c4 c | %\barNumberCheck #70
  c2. r4 | % 71
  bes4.\mf bes8 bes4 bes | % 72
  bes4. bes8 bes2 | % 73
  d4.\f( c8) bes4 d | % 74
  es4. d8 d4 f\p | % 75
  f4 f f d d d | % 76
  d2\mf f4 f | % 77
  f2 f | % 78
  f2 f4 f f d | % 79
  c2( bes) | %\barNumberCheck #80
  f1
  
  f'4\p f | % 82
  f2 f4 f | % 83
  f2 f4 f | % 84
  f4 f f f | % 85
  f4 d d( c) | % 86
  bes2\p es4 es | % 87
  d2 c | % 88
  bes2. r4 | % 89
  bes2\mf bes4 bes | %\barNumberCheck #90
  bes4. bes8 c4 d | % 91
  es2 d4 c | % 92
  bes4 c8 [ d ] es4 es8 es | % 93
  c2 bes4 c | % 94
  d4. bes8\p bes4 bes | % 95
  bes2( a) | % 96
  bes2 r4 c | % 97
  c4 c c c | % 98
  c4 d es d | % 99
  c8 [ bes ] a4 bes2 | %\barNumberCheck #100
  c2\mf c4 c | % 101
  c4 c bes2 | % 102
  c2. c4 | % 103
  c1 | % 104
  c1
  
  f,2\mf bes4 bes | % 106
  bes4 bes bes4. bes8 | % 107
  bes4 bes bes bes | % 108
  bes2 bes4 r | % 109
  c4 b c4. b8 | %\barNumberCheck #110
  b4 c d4. c8 | % 111
  b4 c d( es | % 112
  d2) c4\p r | % 113
  c4 c8 c c4 c | % 114
  d4. c8\p bes4 a | % 115
  a4 a g4. g8 | % 116
  g4 g f e | % 117
  f1 | % 118
  a4. a8 bes4 c | % 119
  bes2 d4 d | %\barNumberCheck #120
  c2 c4\mf a | % 121
  bes2 bes4 bes | % 122
  a4( bes) c d | % 123
  c2 c | % 124
  <a c>1\arpeggio
  
  a4\p a d d | % 126
  c4( bes) a g | % 127
  f2 cis'4 d | % 128
  e4( f8 [ e) ] d4 cis | % 129
  d4 d d d | %\barNumberCheck #130
  d4 d8 [ bes ] a2 | % 131
  a4 a\mf c2 | % 132
  c4( bes) c c | % 133
  c4 c d2 | % 134
  c4 c c r | % 135
  bes2 bes4 bes | % 136
  bes2 a4 bes | % 137
  f4 f a2 | % 138
  bes2 d4\p c | % 139
  bes2 bes4 bes | %\barNumberCheck #140
  bes2( a) | % 141
  bes2. r4 | % 142
  f'2 es8 [ d] c[ bes ] | % 143
  a2-> a4 a | % 144
  bes8 [ a] bes[ c ] d2 | % 145
  es4 b c d | % 146
  es2 c4 c | % 147
  d2 c | % 148
  d4 es d c | % 149
  c4 c c d | %\barNumberCheck #150
  c1 | % 151
  <a c>1\arpeggio\p
  
  d2\f d4 c | % 153
  bes2 c4 d | % 154
  es4 f g g8 [ es ] | % 155
  d2. c4 | % 156
  bes2. r4 | % 157
  c2\mf bes4 c | % 158
  d2 r4 c8 [ d ] | % 159
  es2 c4 d | %barNumberCheck #160
  es4 f es2 | % 161
  d2. r4 | % 162
  c2\f c4 c | % 163
  c4. f8 f2 | % 164
  f4 es d c | % 165
  bes2 c4 d | % 166
  es2 d4 c | % 167
  d4( f) f2 ~ | % 168
  f2 r4 f\f | % 169
  f4 f f c | %\barNumberCheck #170
  c2 c4 c | % 171
  c4 bes a( bes) | % 172
  a1
}


bassvoice = \relative c {
  \global
  \dynamicUp
  r4 f f f | % 2
  f2 f4 f | % 3
  f4. f8 f4 f | % 4
  f2 e4 f | % 5
  c4 c f f | % 6
  bes2 bes,8 [ c] d[ e ] | % 7
  f2 f8 [ g] a[ bes ] | % 8
  c4. c,8 c2 | % 9
  f2. f4 | %\barNumberCheck #10
  f2 f4 f | % 11
  f4( es) d c | % 12
  bes2 f'4 f | % 13
  f4. f8 bes,4 bes' | % 14
  bes2 bes | % 15
  bes4. bes8 bes2 | % 16
  f4( g )a bes | % 17
  c2 c, | % 18
  f1\fermata
  
  f4 f | %\barNumberCheck #20
  f2 f4 f | % 21
  f2. f4 | % 22
  bes4. bes,8 bes4 bes | % 23
  es4( d) c( bes) | % 24
  <a f'>2 bes | % 25
  bes'4 f g4. g8 | % 26
  g4 g c,2 | % 27
  f2 f4 f | % 28
  bes,4. a8 bes4 c | % 29
  d2 d | %\barNumberCheck #30
  g2 f4 f | % 31
  f2 f4 f | % 32
  f4 f bes,2 | % 33
  bes'4 bes es,4.( f8) | % 34
  g8( [ f es g ]) bes2 | % 35
  f4->( g) a bes | % 36
  c2 c, | % 37
  <f, f'>1\fermata
  
  f'4( es d) c | % 39
  bes2 bes4 bes | %\barNumberCheck #40
  f'4 f f4. f8 | % 41
  g4 g g2 | % 42
  fis4 g d d | % 43
  g4 d d2 | % 44
  d4 d g f | % 45
  bes,2 bes'4 bes | % 46
  a4( bes) c8( [ bes ] a4) | % 47
  bes4 bes bes a | % 48
  g2 g4 g | % 49
  c,2 f4 f | %\barNumberCheck #50
  bes,4. a8 bes4 c | % 51
  d2 d4 d | % 52
  d4 d g f | % 53
  bes2. bes,4 | % 54
  bes2 bes'4 bes | % 55
  es,4. es8 es [ f] g[ es ] | % 56
  bes'2 bes, | % 57
  f'4( g f) e | % 58
  f4 g a bes | % 59
  c2 c, | %\barNumberCheck #60
  <f, f'>1\fermata
  
  bes2 bes | % 62
  bes2 bes4 bes | % 63
  es4 f bes, f' | % 64
  f4. g8 a4 a, | % 65
  d4 d e e | % 66
  f2 bes,4 c f r | % 67
  c'2 bes4 a | % 68
  e4. e8 f4 <f a> | % 69
  c2 c4 c | %\barNumberCheck #70
  f2 r | % 71
  bes,4. bes8 bes4 bes | % 72
  bes4. bes8 bes2 | % 73
  bes'2 bes4 bes | % 74
  bes4. bes8 bes4 bes | % 75
  a4 bes f g d d | % 76
  g2 f4 f | % 77
  bes,4( c) d( e) | % 78
  f2 f4 g a bes | % 79
  c2( c,) | %\barNumberCheck #80
  f,1
  
  f'4 f | % 82
  f2 f4 f | % 83
  bes,2 f'4 f | % 84
  a4 bes f f | % 85
  f4 g d2 | % 86
  es2 c4 c | % 87
  d2 d | % 88
  <g, g'>2. r4 | % 89
  bes2 bes4 bes | %\barNumberCheck #90
  bes4. bes8 a4 bes | % 91
  f'2 bes,4 f' | % 92
  g8 [ f] es[ d ] c4 c8 c | % 93
  f2 f4 f | % 94
  bes,4. bes8 bes4 es | % 95
  << f1 \new Voice {\voiceFour f2( f,)  } >> | % 96
  bes2 r4 f' | % 97
  f4 f f f | % 98
  f4 f f f | % 99
  f4 f bes,2 | %\barNumberCheck #100
  f'2 f4 f | % 101
  f4 f g2 | % 102
  e ?4( f g) e | % 103
  f4( a c2) | % 104
  <f, a>1\fermata
  
  bes,2 bes4 bes | % 106
  bes4 bes bes4. bes8 | % 107
  bes4 bes bes bes | % 108
  bes2 bes4 r | % 109
  es4 d c4. g'8 | %\barNumberCheck #110
  g4 g g4. g8 | % 111
  g4 g g2( | % 112
  b2) c4 r | % 113
  a4 a8 a a4 a | % 114
  bes4. a8 g4 fis | % 115
  fis4 fis g4. g8 | % 116
  g4 c, c c | % 117
  f1 | % 118
  f4. f8 f4 f | % 119
  bes,2 bes4 bes | %\barNumberCheck #120
  c2 f4 f | % 121
  bes,4( c) d e | % 122
  f4( g) a bes | % 123
  c2 c, | % 124
  <f, f'>1\fermata
  
  d'4 d d bes | % 126
  a4( bes) c cis | % 127
  d2 a4 a | % 128
  a2 a4 a | % 129
  d4 d' bes a | %\barNumberCheck #130
  g4 f8 [ g ] a4( a,) | % 131
  d4 d e2 | % 132
  f4( d) c e | % 133
  f4 f bes,2 | % 134
  c4 c f r | % 135
  bes,2 bes4 bes | % 136
  bes2 f'4 f | % 137
  f4 f f2 | % 138
  g2 g4 d | % 139
  es2 es4 es | %\barNumberCheck #140
  << f1 \new Voice {\voiceFour f2( f,) } >> | % 141
  bes2. r4 | % 142
  f'2 f4 f | % 143
  f2 f4 f | % 144
  <bes, bes'>4 <bes bes'> <bes bes'>2 | % 145
  g'4 f es d | % 146
  c2 c4 es | % 147
  f2 f | % 148
  bes,4 c d e ? | % 149
  f4 g a bes | %\barNumberCheck #150
  c2( c,) | % 151
  <f, f'>1\fermata
  
  bes'2 bes4 bes | % 153
  bes2 a4 g | % 154
  es4 <d d'> <c c'> <bes bes'>8 [ <c c'> ] | % 155
  d2. <d, d'>4 | % 156
  <g g'>2. r4 | % 157
  f'2 f4 f | % 158
  bes,2 r4 f' | % 159
  f2 f4 f | %\barNumberCheck #160
  f4 f <f a>2 | % 161
  <bes, bes'>2. r4 | % 162
  a'4( bes) a g | % 163
  f4. f8 f2 | % 164
  bes,4 c d d | % 165 
  g2 f4 f | % 166
  f2 f4 f | % 167
  f2 <bes, bes'> ~ | % 168
  q2 r4 f' | % 169
  f4 f f a | %\barNumberCheck #170
  c2 <c, c'>4 <c c'> | % 171
  <a a'>4 <bes bes'> << c2 \new Voice {\voiceFour c'4( c,) } >> | % 172
  <f, f'>1\fermata
}

lyricscore = \lyricmode {
  \set stanza = "1." Хри -- стос раж -- да -- ет -- ся, сла -- ви -- те,
  Хри -- стос с_не -- бес, сря -- щи -- те;
  Хри -- стос на зем -- ли, воз -- но -- си -- те -- ся;
  пой -- те Гос -- по -- де -- ви вся зем -- ля,
  и ве -- се -- ли -- ем вос -- пой -- те лю -- ди -- е,
  я -- ко про -- сла -- ви -- ся.
  
  \set stanza = "3." Пре -- жде век от От -- ца рож -- ден -- но -- му не -- тлен -- но Сы -- ну,
  и в_по -- след -- ня -- я от Де -- вы во -- пло -- щен -- но -- му без -- се -- мен -- но Хри -- сту
  Бо -- гу во -- зо -- пи -- им: воз -- не -- сый рог наш, Свят е -- си Гос -- по -- ди.
  
  \set stanza = "4." Жезл из ко -- ре -- не И -- ес -- се -- о -- ва 
  и цвет от не -- го Хри -- сте 
  от Де -- вы про -- зябл е -- си,
  из го -- ры хваль -- ный при -- о -- се -- нен -- ны -- я __ ча -- щи,
  при -- шел е -- си во -- площ -- ся от Не -- ис -- ку -- со -- муж -- ны -- я,
  Не -- ве -- ще -- ствле -- нный и Бо -- же.
  Сла -- ва си -- ле Тво -- ей, Гос -- по -- ди.
  
  \set stanza = "5." Бог сый ми -- ра, О -- тец щед -- рот, 
  ве -- ли -- ка -- го со -- ве -- та Тво -- е -- го Ан -- ге -- ла,
  мир по -- да -- ва -- ю -- ща по -- слал е -- си нам.
  Тем бо -- го -- ра -- зу -- ми -- я к_све -- ту на -- ставль -- ше -- ся 
  от но -- щи у -- тре -- ню -- ю -- ще сла -- во -- сло -- вим Тя, 
  Че -- ло -- ве -- ко -- люб -- че.
  
  \set stanza = "6." Из у -- тро -- бы И -- о -- ну мла -- ден -- ца из -- бле -- ва 
  мор -- ский зверь, я -- ко -- ва при -- ят 
  в_Де -- ву же всель -- ше -- е -- ся Сло -- во 
  и плоть при -- ем -- ше -- е прой -- де со -- хран -- ше -- е не -- тлен -- ну;
  е -- го же бо не по -- стра -- да ис -- тле -- ни -- я
  рожд -- шу -- ю со -- хра -- ни не -- вре -- жде -- нну.
  
  \set stanza = "7." От -- ро -- цы бла -- го -- че -- сти -- ю со -- во -- cпи -- та -- ни, 
  зло -- че -- сти -- ва -- го ве -- ле -- ни -- я не -- брег -- ше,
  ог -- не -- нна -- го пре -- ще -- ни -- я не у -- бо -- я -- ща -- ся, 
  но по -- сре -- де пла -- ме -- не сто -- я -- ще по -- я -- ху: 
  от -- цев Бо -- же, бла -- го -- сло -- вен е -- си.
  
  \set stanza = "8." Чу -- да пре -- е -- сте -- стве -- нна -- го ро -- со -- да -- тель -- на -- я
  и -- зоб -- ра -- зи пещь об -- раз, 
  не бо я -- же при -- ят па -- лит ю -- ны -- я,
  я -- ко ни -- же огнь бо -- же -- ства Де -- вы, 
  в_ню же вни -- де у -- тро -- бу.
  Тем вос -- пе -- ва -- ю -- ще во -- спо -- ем: 
  да бла -- го -- сло -- вит тварь вся Гос -- по -- да,
  и пре -- воз -- но -- сит во вся ве -- ки.
  
  \set stanza = "9." Та -- ин -- ство стра -- нно -- е ви -- жу и пре -- слав -- но -- е:
  не -- бо вер -- теп, пре -- стол хе -- ру -- вим -- ский Де -- ву,
  яс -- ли вме -- сти -- ли -- ще,
  в_них же воз -- ле -- же не -- вме -- сти -- мый Хри -- стос Бог.
  Е -- го же вос -- пе -- ва -- ю -- ще ве -- ли -- ча -- ем.
}


\bookpart {
  \paper {
    top-margin = 15
    left-margin = 15
    right-margin = 10
    bottom-margin = 15
    indent = 20
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
      
      \new Lyrics \lyricsto "soprano" { \lyricscore }
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
    >>
    %  }  % transposeµ
    \layout { 
      \context {
        \Score
      }
      \context {
        \Staff
        % удаляем обозначение темпа из общего плана
        %  \remove "Time_signature_engraver"
        %  \remove "Bar_number_engraver"
      }
      %Metronome_mark_engraver
    }
    \midi {
      \tempo 4=120
    }
  }
}
