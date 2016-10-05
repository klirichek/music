\version "2.18.0"

#(set-default-paper-size "a4")
#(set-global-staff-size 16.6)
%#(ly:set-option 'point-and-click #f)
#(ly:set-option 'midi-extension "mid")

italicas=\override LyricText.font-shape = #'italic
rectas=\override LyricText.font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
incipitwidth = 20

htitle="Maria Magdalena"
hcomposer="Guerrero"

\header {
	title=\markup{\fontsize #3 "Maria Magdalena et altera Maria"}
	subtitle=\markup{"Dominica in Resurrectione Domini" }
        subsubtitle=\markup{\null \vspace #4 }
	composer="Francisco Guerrero (1528-1599)"
	%opus="(-)"
	poet="Motteta Francisci Guerreri 1570"
	copyright=\markup{
		\fill-line {"Edited by Nancho Alvarez" \typewriter "http://tomasluisdevictoria.org"}
	}
%	tagline=""
}


global={\key c \major \time 2/2  \skip 1*84 \bar "||" \break
					\skip 1*83 \bar "|."
}

cantus={
	c''2 c'' ~ |
	c''4 g' c'' c'' |
	d''2 e''4 g'' |
	g''4. f''8 e''4 d'' |
%5
	c''2 b'4 a'8 b' |
	c'' d'' e''4. d''8 c''4 ~ |
	c'' b' c''2 |
	r4 g''2 g''4 ~ |
	\autoBeamOff
	g''8 f'' e''4 d'' c'' ~ |
	\autoBeamOn
%10
	c'' b' a'2 ~ |
	a' r |
	R1*4/4 |
	R1*4/4 |
	r4 g' c''2 |
%15
	a'4 c'' b' a' |
	b'2 g'4 \[a' ~ |
	a' g'2\] \ss fis'4 |
	g'2 r |
	R1*4/4 |
%20
	r2 c'' |
	f'' c''4 f'' |
	e''8 d'' c'' b' c''4 d'' ~ |
	d'' c''2 b'4 |
	c''2 r4 c'' |
%25
	c'' c'' d''2 |
	b' r |
	r4 e'' e'' e'' |
	f''2 d''4 g'' ~ |
	g''8 f'' e'' d'' c''4 b' |
%30
	a'2. a'4 |
	g'2 r |
	R1*4/4 |
	c''4. b'8 a'4 a' |
	g'2 r |
%35
	r g'' |
	f'' e''4 g'' ~ |
	g''8 f''16 e'' d''4 c'' e'' ~ |
	e'' d''4. c''8 c''4 |
	b'8 a' b' c'' d''4 e'' |
%40
	d''2 c'' |
	r r4 g' |
	g' g' c''4. d''8 |
	e''4 d'' f''2 |
	c'' r |
%45
	R1*4/4 |
	r2 e'' ~ |
	e''4 d'' e'' f'' |
	d'' e''4. d''8 b'4 |
	c'' d''4. c''8 b' a' |
%50
	b'2 r |
	R1*4/4 |
	R1*4/4 |
	r2 r4 d'' ~ |
	d'' d'' b' b' |
%55
	c'' d'' e''8 d'' c'' b' |
	c''2 g'4 a' |
	a' c'' c''2 |
	c'' r |
	r r4 g'' ~ |
%60
         \autoBeamOff
         g''8 f'' e''4 d''  c''8[ b'] |
	\autoBeamOn
	a'2 g' |
	r4 d''4. c''8 b'4 |
	a' g' d''2 |
	R1*4/4 |
%65
	r4 d''2 b'4 |
	d''4.  c''8[ b' a'] g'4 ~ |
	g'8 a' b' c'' d''4 e'' ~ |
	e''8 d'' c'' b' c''2 ~ |
	c''1 |
%70
	r4 e''2 c''4 |
	e''8 d'' c'' b' a'2 |
	r r4 f'' ~ |
	f'' d'' f''8 e'' d'' c'' |
	b' a' b' c'' d''4 e'' |
%75
	d''1 |
	r4 d''2 b'4 |
	d''4.  c''8[ b' a'] g'4 ~ |
	g'8 a' b'4 g'2 |
	r r4 g'' ~ |
%80
	g'' e'' g''4. f''8 |
	e'' d'' c''4. b'8 g'4 |
	a'2 r4 a' |
	e''2 e'' |
	d''\breve*1/2 |
%85
	\once \override TextScript.padding = #1
	s4*0^\markup{\larger "Secunda pars"}
	R1*4/4
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%90
	g''2 g'' |
	f''4 d'' e''2 |
	d'' f'' |
	e''4 f'' e'' d''8 c'' |
	d''2 e'' |
%95
	r4 e'' f'' d'' |
	e'' c'' b' r8 b' |
	g'4 a'  b'8[ c'' d''] b' |
	c''2 r |
	r4 a' b' g' |
%100
	g' fis' g'4. \ss f'8 |
	e'4 e'' f'' d'' |
	d'' cis'' d''2 ~ |
	d''1 |
	R1*4/4 |
%105
	r4 f'' f''2 |
	e''4 c'' d''2 ~ |
	d'' e'' ~ |
	e'' r |
	R1*4/4 |
%110
	R1*4/4 |
	r4 e'2 f'4 |
	g' e' a'4. g'8 |
	a'4 f' e'2 |
	a'4. a'8 a'4 g' |
%115
	fis'2 r4 a' ~ |
	a' a' a'8 g' \ss fis' e' |
	fis'4 g'2 fis'4 |
	g'1 ~ |
	g' |
%120
	R1*4/4 |
	R1*4/4 |
	b'2 b'4 a' |
	b'2 c'' |
	r r4 c'' |
%125
	c''4. c''8 d''4 c'' |
	c''1 |
	r2 f'' ~ |
	f'' d'' ~ |
	d'' g'' |
%130
	e''2. e''4 |
	d''2 r4 d'' ~ |
	d'' c'' \[c''2 |
	b'\] a' |
	r e'' |
%135
	c'' f'' ~ |
	f'' e'' |
	r f'' ~ |
	f'' f'' |
	\[d'' bes'\] |
%140
	c''1 ~ |
	c''2 r4 e'' |
	g''2 g'' |
	r4 c'' e''2 |
	d'' r4 d'' |
%145
	e''4. d''8 c''4 b' |
	c''2 r |
	r4 e''2 d''4 |
	c'' b' c'' g' |
	a' b' a' g'8 f' |
%150
	e'2 r |
	R1*4/4 |
	c''2. c''4 |
	c''4. b'8 a'4 g' |
	g' g' a' a' |
%155
	g'2 f'4 f'' |
	e'' f'' c''2 ~ |
	c'' r |
	a' g'4 a' |
	g'2 r4 g' |
%160
	c'' b'2 d''4 ~ |
	d''8 c'' b'4 a' g' ~ |
	g' f' g'8 a' b' c'' |
	d''4 c''2 b'4 |
	c''2 r |
%165
	g'2. g'4 |
	g'1 |
	g'\breve*1/2
}

cantusdos={
	R1*4/4 |
	R1*4/4 |
	g'2 g' ~ |
	g'4 e' g' g' |
%5
	a' g'2 f'4 |
	g' g'' g''4. f''8 |
	e''4 d'' e''2 |
	d''1 |
	R1*4/4 |
%10
	R1*4/4 |
	r2 c'' |
	c''2. g'4 |
	c'' c'' d''2 |
	e''4 g'' g''4. g''8 |
%15
	f''4 e'' d''2 |
	d'' r |
	r4 g' d''2 |
	b'4 b' c''4. b'8 |
	c'' d'' e'' c'' d'' g' c''4 |
%20
	b' c'' a'2 ~ |
	a' r |
	g' a' |
	f'4 a' g'4. f'8 |
	e'4 e'' e'' e'' |
%25
	f''2. d''4 ~ |
	d'' g''2 f''4 |
	e''8 d'' c'' b' c''2 |
	\[a' b'\] |
	c'' r |
%30
	R1*4/4 |
	d''2 e''4 e'' |
	e''2 e'' |
	f''4. e''8 d''4 c'' |
	b'2 r |
%35
	c'' b' |
	a' \[c'' |
	g'\] a'4 g'8 f' |
	g'2 r |
	R1*4/4 |
%40
	R1*4/4 |
	r2 c'' ~ |
	c''4 b' a' c'' |
	g'2 a' ~ |
	a'4 g' a' b' |
%45
	g' a'4. g'8 e'4 |
	f'2 e' |
	R1*4/4 |
	r4 g'2 g'4 |
	e' \ss fis' g'8 a' b' c'' |
%50
	d''4  g'8[ a' b' g'] c''4 ~ |
	c'' b' c''2 ~ |
	c'' r |
	R1*4/4 |
	R1*4/4 |
%55
	r2 r4 e'' ~ |
	e'' e'' c'' c'' |
	d'' e'' f''2 |
	e''4 e'' d'' c'' |
	a'2 g' |
%60
	r4 g''4. f''8 e''4 |
	d'' c''2 b'8 a' |
	b'2 r |
	r r4 d'' ~ |
	\set Staff.autoBeaming = ##f
	d''8 c'' b'4 a' g' ~ |
	\set Staff.autoBeaming = ##t
%65
	g' \ss fis' g'2 |
	r4 d''2 b'4 |
	d''4.  c''8[ b' a'] g'4 ~ |
	g' g''2 e''4 ~ |
	e'' g''4. f''8 e'' d'' |
%70
	c''2 r |
	r c'' |
	a'4 c''8 b' a' g' f' e' |
	f'4 g' a' d' |
	d''4.  c''8[ b' g'] c''4 ~ |
%75
	c'' b'8 a' b'4 g' |
	b'2 a'4 g' |
	a'2 g'4 g'' ~ |
	g'' d'' g''4. f''8 |
	e'' d'' c''2 b'4 |
%80
	c''1 ~ |
	c'' |
	c'' |
	c''2 c'' |
	b'\breve*1/2 |
%85
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%90
	r2 g' |
	a' c''4 c'' |
	b'2 a'4 d'' |
	c'' a' b' c'' ~ |
	c'' b' c''2 ~ |
%95
	c'' r |
	r r4 d'' |
	e'' c'' d'' b' |
	a'2 r4 e'' |
	f'' d''2 c''8 b' |
%100
	c''4 a' b'2 |
	r4 a'2 b'4 |
	g' g'2 fis'4 |
	g'1 |
	r4 g' \[g'2 |
%105
	a'\] c'' ~ |
	c''4 g' bes'2 |
	a'4. b'8 c''4 g' ~ |
	g' a' b'2 |
	g'4 c''4. a'8 c''4 ~ |
%110
	c'' b' c''2 ~ |
	c'' r |
	r c'' ~ |
	c''4 d'' e'' c'' |
	f''4. e''8 f''4 d'' ~ |
%115
	d''8 c'' a' b' cis''4 d'' ~ |
	d'' \ss cis'' d''2 ~ |
	d''1 ~ |
	d''2 r |
	d'' d'' |
%120
	c''2. b'4 |
	a'2 b' |
	d'' d''4 d'' |
	d''2 e'' |
	r c'' |
%125
	a'4 a' g'2 |
	a'1 |
	R1*4/4 |
	d''1 |
	b' |
%130
	c'' |
	f''2. f''4 |
	e''1 ~ |
	e'' |
	R1*4/4 |
%135
	r2 a' ~ |
	a' a' |
	c''1 |
	d'' |
	f''2. f''4 |
%140
	f''2 e'' |
	r4 e'' g''4. f''8 |
	e''4 d'' e''2 |
	r4 a' c''2 |
	b'4 g' b'2 |
%145
	c'' r4 d'' |
	e''4. d''8 c''4 b' |
	c''2 r |
	R1*4/4 |
	R1*4/4 |
%150
	r4 c''2 b'4 
	c'' g' c''4. b'8 
	a'4 g' a'2 ~ 
	a'4 a' c''2 
	d'' r 
%155
	R1*4/4 |
	R1*4/4 |
	f''2 e''4 f'' |
	c'' c'' e'' c''8 d'' |
	e'' f'' g''4. f''8 e'' d'' |
%160
	e''2 d'' |
	b'4. c''8 d''2 |
	r4 d''4. c''8 d''4 |
	b' c'' d''2 |
	e'' r4 g'' |
%165
	e'' g''4. f''8 e'' d'' |
	e''4 c''2 b'4 |
	c''\breve*1/2
}

altus={
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	R1*4/4 |
	r2 g' |
	g'2. d'4 |
	g' g' a'2 |
%10
	g' r4 c'' |
	c''4. b'8 a'4 g' |
	f' e' f' g' |
	f'2 r4 d' |
	g' e'4. f'8 g' e' |
%15
	f'4 g' g' \ss fis' |
	g'2 r |
	r r4 d' ~ |
	d' g'4. e'8 g'4 |
	a' g' g' \ss fis' |
%20
	g'8 f' e' d' c'2 |
	d'4 c'2 b4 |
	c'2 r |
	R1*4/4 |
	g'2 g'4 g' |
%25
	a'2 f' |
	g'4 d' e' f' |
	g'2 r4 g' |
	f'8 g' a' f' g'4. f'8 |
	e' d' c'4. a8 b4 |
%30
	c'1 |
	r4 g2 g4 |
	a8 b c' d' e' f' g' e' |
	a'4. g'8 f'4 e' |
	d'2 r |
%35
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	r4 g' f' e' |
	g' d' r g' ~ |
%40
	g' f'2 e'4 |
	g'2 c'8 d' e' c' |
	d'2 c' |
	r f'4. f'8 |
	f'4 g' f' d' |
%45
	e' a c'2 |
	R1*4/4 |
	g'2. f'4 |
	g'4. f'8 e'4 d' |
	c' a b2 |
%50
	r4 g'4. g'8 e'4 |
	a' g'8 f' e'4 a' ~ |
	\set Staff.autoBeaming = ##f
	a'8 f' g'4  a'8[ g' f' e'] |
	\set Staff.autoBeaming = ##t
	d'4 g'2 \ss fis'4 |
	g'1 |
%55
	r2 g' ~ |
	g'4 g' e' e' |
	f' g' a'2 |
	g'4 c' g' g' |
	f'2 d'4 d' |
%60
	e'8 d' e' f' g'4 g' |
	f'2 d' |
	r4 d'2 d'4 |
	e'2 d' |
	b4 d' e' e' |
%65
	d'2 b |
	R1*4/4 |
	r2 g' |
	e' g'4. f'8 |
	e' d' c'2 b8 a |
%70
	g2 r |
	r r4 c' ~ |
	c'8 d' e'4 f'8 e' f' g' |
	a'4 g' f' g' ~ |
	g'8 f' d'4 g'2 ~ |
%75
	g' r4 d' ~ |
	d'8 c' d' e' fis'4 g' ~ |
	g' \ss fis' g' d' |
	g'2 r4 g' ~ |
	g' e' g'4. f'8 |
%80
	e' d' c'4. b8 c' d' |
	e'2 r4 e' ~ |
	e' e' f'2 |
	g'1 ~ |
	g'\breve*1/2 |
%85
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	r2 g' ~ |
%90
	g' e' |
	d' c' |
	g' f'4 d' |
	a' f' g'2 ~ |
	g' c' |
%95
	R1*4/4 |
	r4 c' d' b |
	c' a g g' |
	e' f' d' e' |
	a'8 g' f' e' d'4 e' |
%100
	c'2 r4 d' |
	e' c' d'4. c'8 |
	d'4 e' f'8 e' d' c' |
	b a b c' d' g g'4 ~ |
	g'8 f' e'4 d' e' |
%105
	f'2 a' |
	g'4 e' f' g' ~ |
	g' \ss fis' g'2 |
	e' f'4 g' ~ |
	g' e' a'4. g'8 |
%110
	a'4 g'8 f' e'4 f' |
	e'2 r4 d' |
	b c'2 f4 |
	f'2 r |
	R1*4/4 |
%115
	a'4. g'8 a'4 f' |
	e'2 r4 a ~ |
	a d' d' d' |
	d'4. c'8 d'4 e' |
	d'2 r4 g' ~ |
%120
	g' g' g' g' |
	e'4. \ss fis'8 g'2 ~ |
	g' r |
	g g' |
	g'4 \[g'2 c'4 ~ \] |
%125
	c' f'2 e'4 |
	f'1 |
	a' |
	\[a'2 f'\] |
	g'1 |
%130
	g'2 e' |
	a'1 |
	a' |
	g'2 e'4. fis'8 |
	gis'4 a'2 gis'4 |
%135
	a'2 f' |
	R1*4/4 |
	a'2 a' |
	bes'1 ~ |
	bes'2 \[f' |
%140
	a'\] g' |
	r4 g'2 c''4 ~ |
	c'' b' c'' g' |
	a'2 g' ~ |
	g' r4 g' |
%145
	g' e' f' d' |
	c'2 r |
	g'1 |
	g' |
	R1*4/4 |
%150
	R1*4/4 |
	r2 r4 f' ~ |
	f' e' f' c' |
	f'2. e'4 |
	d' d' e'4. f'8 |
%155
	d'4 c'2 b4 |
	c'2 r4 a |
	a' a' a'2 |
	r4 f' e' f' |
	c'8 d' e' f' g'2 ~ |
%160
	g' r4 g' ~ |
	g' d' f'8 e' d' c' |
	d'2 d' |
	r4 g'2 g'4 |
	g'2 g' |
%165
	r4 c' b c' |
	g g'4. f'8 d'4 |
	e'\breve*1/2
}

tenor={
	R1*4/4 |
	R1*4/4 |
	r2 c' |
	c'2. g4 |
%5
	c' c' d'2 |
	e' r4 g' |
	g'4.  f'8[ e' d'] c'4 ~ |
	c' b8 a b4. c'8 |
	d'4 e' f'4. e'8 |
%10
	d'4 e'2 c'4 |
	e' f'2 e'8 d' |
	c'4. b8 a g c'4 ~ |
	c'8 b a g f2 |
	r4 c' c'2 |
%15
	d'4 c' d' d' |
	d'2 e'4 a8 b |
	c' d' e'4 d'2 |
	r4 d' e'2 |
	e'4 e' d' c' | 
%20
	d' c'4. b8 a g |
	a2 r |
	r4 c' f'2 |
	d'4 f' e' d' | 
	c'1 ~ |
%25
	c'2 r |
	r4 g g a |
	c'2 g |
	R1*4/4 |
	r4 e' e' e' |
%30
	f'1 |
	d'2 g'4. f'8 |
	e' d' c'2 b4 |
	c'2 r |
	r4 g'2 f'4 ~ |
%35
	f' e' g' d' ~ |
	d'8 e' f'4 c'4. d'8 |
	e' c' d'4 e'2 |
	R1*4/4 |
	d'2. c'4 |
%40
	b d' a8 b c' d' |
	e'4 d' e'2 |
	r r4 c' ~ |
	c' b a2 |
	c'4 g d'2 |
%45
	c'4  f8[ g a b] c'4 |
	a b c'2 |
	g r |
	R1*4/4 |
	r4 d'2 d'4 |
%50
	d' b b c' |
	d' e'4. d'8 c' b |
	a4 e' c' d' ~ |
	d' g a2 |
	r4 g d'4. d'8 |
%55
	c'4 b c'2 |
	R1*4/4 |
	R1*4/4 |
	r4 g'4. f'8 e'4 |
	d' c'2 b4 |
%60
	c'2 r |
	r r4 d' ~ |
	\set Staff.autoBeaming = ##f
	d'8 c' b4 a b |
	\set Staff.autoBeaming = ##t
	c'2 a |
	r4 b c' c' |
%65
	a2 g ~ |
	g1 ~ |
	g2 r |
	R1*4/4 |
	g'2 e'4 g' ~ |
%70
	g'8 f' e' d' c'4 e' ~ |
	e' e' f'2 |
	e' a |
	d'1 |
	d'2 g |
%75
	r4 g2 b4 |
	g8 a b c' d'4 e' |
	d'2 g4. a8 |
	b c' d'4 e'2 |
	R1*4/4 |
%80
	g'2 e'4 g' ~ |
	g'8 f' e' d' e'2 |
	r a |
	c' c' |
	d'\breve*1/2 |
%85
	r2 g' |
	g' f'4 d' |
	e'2 d' |
	f' e'4 f' |
	e' d'8 c' d'2 |
%90
	e' r |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	r2 r4 g' ~ |
%95
	g' a' f' g' ~ |
	g'8 e' fis'4 g'2 |
	R1*4/4 |
	r2 r4 c' |
	d'2 b4 c' |
%100
	a2 g |
	R1*4/4 |
	r2 d' |
	d' b4 g |
	b c'2 b4 |
%105
	c'1 |
	R1*4/4 |
	R1*4/4 |
	r4 c' d' e' ~ |
	e' c' f'4. e'8 |
%110
	f'4 d' c'8 b a g |
	a4 g a2 |
	r r4 c' ~ |
	c' f g c' |
	a a4. d'8 d'4 |
%115
	d'2 r |
	r d'4. c'8 |
	d'4 b \[a2 |
	b\] r |
	r4 d'2 d'4 |
%120
	e'2. d'4 |
	\ss cis'2 d' |
	g g'4 fis' |
	g'2 c'4 e' |
	e' d' e'2 |
%125
	f' r |
	r c' ~ |
	c' a ~ |
	a a |
	b2. g4 |
%130
	g2 r4 g |
	d'2 d' |
	e'2. e'4 |
	e'1 ~ |
	e' |
%135
	r2 c' |
	d' e' |
	c' r4 f' ~ |
	f' f' f'2 |
	f'4  bes8[ c' d' e'] f'4 ~ |
%140
	f'8 e' c' d' e' f' g'4 ~ |
	g'8 f' e' d' e'4 c' ~ |
	c' g'4. g'8 e'4 |
	f'2 e'4 c' |
	d'1 |
%145
	c'2 r4 g' |
	g' e' f' d' |
	c'2 r |
	e'4 d' e' e' |
	e'2 f'4 g' ~ |
%150
	g' e' f' g' |
	c'4. d'8 e'4 c' |
	c'2 r |
	R1*4/4 |
	R1*4/4 |
%155
	R1*4/4 |
	r4 f' e' f' |
	c'2 r |
	R1*4/4 |
	r4 c' b c' |
%160
	g2 r |
	g a4 d' ~ |
	d'8 c' a4 b g' ~ |
	\set Staff.autoBeaming = ##f
	g'8 f' e'4 d'2 |
	\set Staff.autoBeaming = ##t
	c'4 e' e' e' |
%165
	c'2 r4 g' ~ |
	\set Staff.autoBeaming = ##f
	g'8 f' e'4 d'2 |
	\set Staff.autoBeaming = ##t
	c'\breve*1/2
}

tenordos={
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	c'2 c' ~ |
	c'4 g c' c' |
	d'4. c'8 d' c' b a |
	b4 c' a2 |
%10
	r4 g c'4. b8 |
	a g f4. e8 c4 |
	f c c'4. b8 |
	a g c'2 b4 |
	c'2 r |
%15
	R1*4/4 |
	r4 g c'2 |
	a4 c' b a |
	g2 r |
	R1*4/4 |
%20
	r4 c f2 |
	d4 f e d |
	c2 r |
	r r4 g ~ |
	g g g c' ~ |
%25
	c' a2 d'4 ~ |
	d' b c' d' |
	g c' c' c' |
	d'2 g |
	c'4. b8 a4 g |
%30
	f4.  g8[ a b] c'4 ~ |
	c' b c'2 |
	R1*4/4 |
	r4 a2 a4 |
	b8 a g a b c' d' b |
%35
	c'4 c' g2 |
	R1*4/4 |
	r2 c' ~ |
	c'4 b a e |
	g2 r |
%40
	r r4 c' ~ |
	c' b a c' |
	g8 a b g a2 |
	r4 d'2 c'4 |
	a c'2 b4 |
%45
	c'4. b8 a4 g |
	f2 r4 c' ~ |
	c' b c' d' |
	b c'4. b8 g4 |
	a d g2 |
%50
	R1*4/4 |
	r2 c' ~ |
	c'4 c' a a |
	b c' d'4. c'8 |
	b a b4. a8 g4 ~ |
%55
	g fis g c' ~ |
	c' c' c' a |
	d' c' f2 |
	c r |
	R1*4/4 |
%60
	r4 c' b c' |
	f2 g |
	R1*4/4 |
	r4 g2 \ss fis4 |
	g2 c |
%65
	d r4 d' ~ |
	d' b d'4. c'8 |
	b a g4. f8 e d |
	c1 ~ |
	c2 r |
%70
	c' a4 c' ~ |
	c'8 b a g f e f g |
	a2 r4 d' ~ |
	d' b d'8 c' b a |
	g4. a8 b4 c' |
%75
	d'2 g |
	R1*4/4 |
	r4 d'2 b4 |
	d'8 c' b a b4 g |
	b c' d'2 |
%80
	c' r |
	r c' |
	a4 c'4. b8 a4 |
	g1 ~ |
	g\breve*1/2 |
%85
	R1*4/4 |
	g2 a |
	c'4 c' b2 |
	a4 d' c' a |
	b c'2 b4 |
%90
	c'1 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%95
	c'2 d'4 b |
	c' a g2 |
	r r4 d' |
	c' a b g |
	a2 r |
%100
	r4 c' d' b ~ |
	b c'2 b8 a |
	b4 g a2 |
	g r |
	R1*4/4 |
%105
	r2 r4 c' |
	c'2 bes4 g |
	d'2 c' ~ |
	c' r |
	R1*4/4 |
%110
	R1*4/4 |
	r4 c2 d4 |
	d c f4. e8 |
	f4 d c2 |
	d4. a8 d4 g |
%115
	d2 r |
	r d ~ |
	d d |
	g4. a8 b4 c' ~ |
	c' b8 a b2 |
%120
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	r2 c |
%125
	c' b4 c' |
	f1 |
	r2 c' |
	d'1 |
	d' |
%130
	c'2. c'4 |
	a1 |
	r2 a |
	e c' ~ |
	c'4 b8 a b2 |
%135
	a r4 a ~ |
	a b c' d' |
	e'2 a |
	r d' |
	d'4 f'4. e'8 d'4 |
%140
	c'1 |
	c |
	r4 g c'2 |
	c'4 f g2 ~ |
	g1 |
%145
	c2 r4 g |
	g c' f g |
	c2 r |
	r r4 c' ~ |
	c' b c' g |
%150
	c'4. b8 a4 g |
	f e8 d c4 f8 g |
	a b c'4. b8 a g |
	a4. g8 f4 c |
	g2 c'4. c'8 |
%155
	b4 g a f |
	g a4. b8 c'4 |
	r f a f ~ |
	f8 g a b c'4 f |
	g1 |
%160
	r4 g b g8 a |
	b c' d'4. c'8 b4 |
	a2 g |
	R1*4/4 |
	r4 c e c ~ |
%165
	c8 d e f g2 |
	g1 ~ |
	g\breve*1/2
}

bassus={
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	g2 g ~ |
	g4 c f f |
%10
	g2 a |
	r4 c' c'4. b8 |
	a4 g f e |
	f4. e8 d2 |
	c1 |
%15
	r2 r4 d |
	g2 e4 f |
	f c d2 |
	r4 g c'2 |
	a4 c' b a |
%20
	g g a2 |
	f4 a g f |
	g2 r |
	R1*4/4 |
	c2 c4 c |
%25
	f2 d |
	g4. f8 e4 d |
	c1 |
	R1*4/4 |
	R1*4/4 |
%30
	r4 f f f |
	g2 c |
	c'4. b8 a4 g |
	f1 |
	g4. f8 e4 d |
%35
	c2 r |
	r r4 c' ~ |
	c' b a c' |
	g2 r |
	r4 g f e |
%40
	g  d8[ e f g] a4 |
	g2 r |
	r4 g2 f4 |
	e g d f ~ |
	f e f g |
%45
	e f4. e8 c4 |
	d2 c |
	R1*4/4 |
	R1*4/4 |
	r2 r4 g ~ |
%50
	g g e e |
	f g a4. g8 |
	f4 e f2 |
	g4 e d2 |
	g g4. f8 |
%55
	e4 d c2 ~ |
	c r |
	R1*4/4 |
	c'2 b4 c' |
	\[f2 g\] |
%60
	c r |
	R1*4/4 |
	g2 f4 g |
	c2 d |
	g, r |
%65
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	g2 e4 g ~ |
	g8 f e d c2 ~ |
%70
	c r |
	c'2. a4 |
	c'8 b a g f4 d ~ |
	d g d g |
	r g g c |
%75
	g2 r |
	R1*4/4 |
	R1*4/4 |
	g2 e |
	g4 a g2 |
%80
	c1 |
	c'2 a4 c' ~ |
	c'8 b a g f2 |
	c c4 c |
	g\breve*1/2 |
%85
	g1 |
	e2 d |
	c g |
	f4 d a f |
	g1 |
%90
	c |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%95
	R1*4/4 |
	R1*4/4 |
	r2 g |
	a4 f g e |
	d2 r |
%100
	r r4 g ~ |
	g a f g ~ |
	g e d2 |
	r4 g g2 |
	e4 c g2 |
%105
	f1 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	r2 r4 f ~ |
%110
	f g a f |
	c'4. b8 c'4 a |
	g2 r4 a ~ |
	a b c' g |
	d'4. c'8 d'4 b |
%115
	a1 ~ |
	a |
	R1*4/4 |
	r2 g ~ |
	g g |
%120
	c'2. g4 |
	a2 g |
	R1*4/4 |
	r2 c |
	c'4 b c'2 |
%125
	f r |
	R1*4/4 |
	f1 |
	d |
	g |
%130
	c |
	d |
	a |
	r2 a |
	e1 |
%135
	f |
	d2 a ~ |
	a f |
	\ss bes1 ~ |
	\ss bes |
%140
	f2 r4 c |
	c'2 c' |
	r c |
	f c |
	r r4 g |
%145
	g c' f g |
	c2 r |
	r4 c'2 b4 |
	c' g c'4. b8 |
	a4 g f e8 d |
%150
	c2 c'4 d' |
	a c'4. b8 a g |
	f4 c f2 ~ |
	f r4 c' ~ |
	c' b a4. f8 |
%155
	g4 e d2 |
	c4 f a f ~ |
	f8 g a b c'2 |
	R1*4/4 |
	c2 e4 c ~ |
%160
	c8 d e f g a b c' |
	d'4 g f g |
	d2 r4 g ~ |
	g c g2 |
	c4 c' b c' |
%165
	g c e c ~ |
	c8 d e f g2 |
	c\breve*1/2
}

textocantus=\lyricmode{
Ma -- ri -- _ a Mag -- da -- le -- na et al -- te -- ra Ma -- ri -- _ _ _ _ _ _ _ _ _ _ a
et al -- _ te -- ra Ma -- ri -- _ _ a _
e -- me -- runt a -- ro -- ma -- ta,
a -- ro -- _ _ ma -- ta
e -- me -- runt a -- ro -- _ _ _ _ _ _ _ ma -- ta
ut ve -- ni -- en -- tes
ut ve -- ni -- en -- tes
un -- _ _ _ _ _ ge -- rent Ie -- sum
un -- ge -- rent Ie -- sum
et val -- de ma -- _ _ _ _ ne,
et _ val -- de ma -- _ _ _ _ _ _ _ ne
et val -- de ma -- _ _ _ _ ne
u -- _ na sab -- ba -- to -- _ _ _ _ _ _ _ _ rum
ve -- _ ni -- unt ad mo -- nu -- men -- _ _ _ _ tum,
ad mo -- nu -- men -- tum
or -- _ to iam so -- _ _ _ le
or -- to iam so -- _ le
al -- le -- lu -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ ia _
al -- le -- lu -- _ _ _ ia
al -- _ le -- lu -- _ _ _ _ _ _ _ _ _ ia
al -- le -- lu -- _ _ _ _ _ _ _ ia
al -- _ le -- lu -- _ _ _ _ _ _ ia
al -- le -- lu -- ia.
Et in -- tro -- e -- un -- tes in mo -- nu -- men -- _ _ _ tum
vi -- de -- runt iu -- ve -- nem,
vi -- de -- runt iu -- _ _ ve -- nem
vi -- de -- runt iu -- ve -- nem, __ _ _ 
vi -- de -- runt iu -- ve -- nem _
se -- den -- tem in dex -- _ tris _
co -- o -- per -- tum sto -- la can -- di -- da,
sto -- la can -- di -- da 
sto -- _ la can -- _ _ _ _ _ di -- da _
Qui di -- cit il -- lis
qui di -- cit il -- _ lis:
Ie -- _ sum _ quem quæ -- ri -- tis
Na -- _ za -- re -- _ num
Na -- za -- re -- _ num
cru -- _ ci -- fi -- _ xum: _
sur -- re -- xit
sur -- re -- xit
sur -- re -- xit non est hic,
ec -- ce lo -- cus u -- bi po -- su -- e -- _ _ runt
ec -- ce lo -- cus u -- bi po -- su -- e -- runt e -- um,
al -- le -- lu -- ia _
al -- le -- lu -- ia
al -- le -- lu -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ia
al -- le -- lu -- ia.
}

textocantusdos=\lyricmode{
Ma -- ri -- _ a Mag -- da -- le -- _ _ na
et al -- te -- ra Ma -- ri -- a 
Ma -- ri -- a Mag -- da -- le -- na et al -- te -- ra Ma -- ri -- a
e -- me -- runt a -- ro -- _ _ _ _ _ _ _ _ ma -- _ ta _
e -- me -- runt a -- ro -- ma -- ta
ut ve -- ni -- en -- tes _ 
un -- ge -- rent __ _ _ _ _ 
Ie -- _ sum
ut ve -- ni -- en -- tes
un -- ge -- rent Ie -- sum
et val -- de ma -- _ _ _ _ ne
et _ val -- de ma -- ne u -- _ na sab -- ba -- to -- _ _ _ _ rum
ve -- ni -- unt
ad mo -- _ _ _ _ nu -- _ _ _ men -- _ _ tum _
ve -- _ ni -- unt ad mo -- nu -- men -- tum,
or -- to iam so -- le
or -- to iam so -- _ _ _ le
or -- _ to iam _ so -- _ _ le
al -- le -- lu -- _ _ _ ia, _
al -- le -- _ lu -- _ _ _ ia
al -- le -- lu -- _ _ _ _ _ _ _ _ ia,
al -- _ _ _ le -- _ _ _ _ _ _ _ _ lu -- ia,
al -- _ le -- lu -- _ _ _ _ _ ia, _
al -- le -- lu -- ia.
Et in -- tro -- e -- un -- tes in mo -- nu -- men -- _ _ _ tum _
vi -- de -- runt iu -- ve -- nem
vi -- de -- runt iu -- _ _ ve -- nem
vi -- de -- runt iu -- ve -- nem
se -- den -- _ tem _
in dex -- tris __ _ _ co -- _ o -- per -- tum sto -- la can -- _ di -- da _
co -- _ o -- per -- tum
sto -- la can -- di -- _ _ _ _ _ _ _ _ da _ _ 
et ob -- stu -- pu -- e -- runt.
Qui di -- cit il -- lis
qui di -- cit il -- lis:
Ie -- sum quem quæ -- ri -- tis _
Na -- _ za -- re -- num cru -- ci -- fi -- xum:
sur -- re -- xit non est hic
sur -- re -- xit non est hic
sur -- re -- xit non est hic,
ec -- ce lo -- cus u -- bi po -- su -- e -- _ runt e -- um
al -- le -- lu -- ia,
al -- le -- lu -- _ _ _ _ _ _ _ _ _ ia __ _ _ 
al -- le -- lu -- _ _ _ ia
al -- le -- lu -- _ _ _ _ _ _ ia.
}

textoaltus=\lyricmode{
Ma -- ri -- a Mag -- da -- le -- na
et al -- te -- ra Ma -- ri -- _ _ _ a
e -- me -- runt __ _ _ _ _ a -- ro -- ma -- ta
e -- _ me -- _ _ runt a -- ro -- ma -- ta, __ _ _ _ _ 
a -- ro -- ma -- ta
ut ve -- ni -- en -- tes un -- ge -- rent Ie -- sum
ut ve -- _ _ _ _ _ _ _ _ ni -- en -- tes
un -- ge -- rent __ _ _ _ _ _ _ _ _ _ _ Ie -- sum
et val -- de ma -- ne
et _ val -- de ma -- _ _ _ _ _ ne
u -- na sab -- ba -- to -- _ _ _ rum
u -- na sab -- _ _ ba -- to -- _ rum
ve -- ni -- unt ad __ _ _ _ mo -- _ nu -- men -- _ _ _ _ _ _ _ tum
ve -- _ ni -- unt ad mo -- nu -- men -- tum, 
or -- to iam so -- le,
or -- to __ _ _ _ _ iam so -- le
or -- to iam so -- le,
or -- to iam so -- le
al -- le -- lu -- _ _ _ _ _ _ ia
al -- _ _ le -- lu -- _ _ _ _ _ _ _ _ _ _ ia _
al -- _ _ _ _ _ le -- _ lu -- _ _ ia
al -- _ le -- lu -- _ _ _ _ _ _ _ ia
al -- _ le -- lu -- ia. _
Et _ in -- tro -- e -- un -- tes in mo -- nu -- men -- _ tum
vi -- de -- runt iu -- ve -- nem,
vi -- de -- runt iu -- ve -- nem __ _ _ _ _ _ _ 
vi -- de -- runt iu -- _ _ ve -- nem, __ _ _ _ _ _ _ _ _ _ 
iu -- _ _ _ _ ve -- nem
se -- den -- tem in dex -- _ _ tris
co -- o -- per -- _ tum sto -- la can -- _ _ _ di -- da
sto -- la can -- di -- da
sto -- la can -- di -- da
et _ ob -- stu -- pu -- e -- _ _ _ runt
et _ ob -- stu -- pu -- e -- _ runt. _
Qui di -- cit il -- _ _ _ _ lis:
Ie -- sum __ _ quem quæ -- ri -- tis Na -- za -- re -- _ _ _ _ _ num
cru -- ci -- fi -- _ _ _ xum:
sur -- re -- _ _ xit,
sur -- re -- xit _
sur -- re -- xit non est hic,
ec -- ce 
ec -- _ ce lo -- cus u -- bi po -- su -- e -- runt e -- _ _ um
al -- le -- lu -- ia
al -- le -- lu -- ia __ _ _ _ _ _ 
al -- _ le -- lu -- _ _ _ _ ia
al -- le -- lu -- ia
al -- le -- lu -- ia,
al -- le -- lu -- ia.
}

textotenor=\lyricmode{
Ma -- ri -- a Mag -- da -- le -- na
et al -- _ _ _ _ _ te -- _ ra __ _ _
Ma -- ri -- _ _ a,
et al -- te -- ra __ _ _ _ Ma -- _ ri -- _ _ _ _ a
e -- me -- runt a -- ro -- ma -- ta,
a -- ro -- _ _ _ ma -- ta
e -- me -- runt a -- ro -- ma -- ta __ _ _ _ _ _ 
e -- me -- runt a -- ro -- ma -- ta _
ut ve -- ni -- en -- tes
ut ve -- ni -- en -- tes
un -- ge -- rent __ _ _ Ie -- sum
et val -- _ de ma -- ne __ _ _ _ _ _ _ _ _ _ 
et val -- de ma -- _ _ _ _ _ _ ne
et _ val -- de ma -- ne u -- na sab -- _ _ _ _ ba -- _ to -- rum
ve -- ni -- unt ad mo -- nu -- men -- tum, __ _ _ _ _ 
ad mo -- nu -- _ men -- tum
ad mo -- nu -- men -- _ tum
or -- to iam so -- _ _ le
or -- _ to iam so -- _ _ le
or -- to iam so -- le _ _ 
al -- le -- lu -- _ _ _ _ ia,
al -- _ le -- lu -- ia,
al -- le -- lu -- ia
al -- le -- lu -- _ _ _ _ _ ia,
al -- le -- lu -- _ _ ia
al -- le -- lu -- _ _ _ _ ia
al -- le -- lu -- ia.
Et in -- tro -- e -- un -- tes in mo -- nu -- men -- _ _ _ tum
vi -- _ de -- runt iu -- _ _ ve -- nem
vi -- de -- runt iu -- ve -- nem
se -- den -- tem in dex -- _ _ tris
co -- o -- per -- _ tum sto -- la 
can -- di -- da __ _ _ _ _ _ _ 
co -- _ o -- per -- tum
sto -- la can -- di -- da
sto -- la can -- di -- da __ _
et ob -- stu -- pu -- e -- runt.
Qui di -- cit il -- lis,
qui di -- cit il -- lis:
Ie -- _ sum _ quem quæ -- ri -- tis
Ie -- sum quem quæ -- ri -- tis _
Na -- za -- re -- num
cru -- _ ci -- fi -- xum __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ sur -- _ re -- xit,
sur -- re -- xit,
sur -- re -- xit
sur -- re -- xit non est hic,
ec -- ce lo -- cus u -- bi po -- _ su -- e -- runt e -- _ _ _ um
al -- le -- lu -- ia
al -- le -- lu -- ia
al -- le -- lu -- _ _ _ ia,
al -- _ le -- lu -- _ ia,
al -- le -- lu -- ia
al -- _ le -- lu -- _ ia.
}

textotenordos=\lyricmode{
Ma -- ri -- _ a Mag -- da -- le -- _ _ _ _ _ _ _ na
et al -- _ _ _ _ _ _ te -- ra Ma -- _ _ _ ri -- _ a
e -- me -- runt a -- ro -- ma -- ta
e -- me -- runt a -- ro -- ma -- ta
ut _ ve -- ni -- en -- _ tes un -- _ ge -- rent Ie -- sum,
ut ve -- ni -- en -- tes
un -- ge -- rent Ie -- sum __ _ _ _ _ _ _ _ 
un -- ge -- rent __ _ _ _ _ _ _ _ _ Ie -- sum
et _ val -- de ma -- ne
et _ val -- de ma -- ne __ _ _ _ _ 
u -- na sab -- ba -- _ to -- _ _ _ rum
u -- _ na sab -- ba -- to -- _ _ _ _ _ rum
ve -- _ ni -- unt ad mo -- nu -- men -- _ _ _ _ _ _ _ _ tum,
ve -- _ ni -- unt ad mo -- nu -- men -- tum
or -- to iam so -- le
or -- to iam so -- le
al -- _ le -- lu -- _ _ _ _ _ _ _ ia _
al -- le -- lu -- _ _ _ _ _ _ _ _ ia
al -- _ le -- lu -- _ _ _ _ _ _ _ _ ia
al -- le -- lu -- _ _ _ _ ia,
al -- le -- lu -- ia
al -- le -- lu -- _ _ ia. _
Et in -- tro -- e -- un -- tes in mo -- nu -- men -- _ _ tum
vi -- de -- runt iu -- ve -- nem
vi -- de -- runt iu -- ve -- nem
vi -- de -- runt _ iu -- _ _ _ _ ve -- nem
se -- den -- tem in dex -- tris _
co -- o -- per -- tum sto -- la can -- di -- da,
sto -- la can -- di -- da
et _ ob -- stu -- pu -- e -- runt __ _ _ _ _ 
qui di -- cit il -- lis:
Ie -- sum quem quæ -- ri -- tis Na -- za -- re -- _ _ _ _ num
Na -- _ za -- re -- _ _ num
cru -- ci -- fi -- _ _ _ xum
sur -- re -- xit,
sur -- re -- _ xit
sur -- re -- xit non est hic,
ec -- _ ce lo -- cus u -- bi po -- su -- e -- _ _ runt e -- _ _ _ _ _ _ _ _ _ _ _ um,
u -- bi po -- su -- e -- runt e -- um, __ _ _ 
al -- le -- lu -- _ _ _ _ _ _ ia
al -- le -- lu -- _ _ _ _ _ _ _ ia
al -- le -- lu -- _ _ _ _ _ ia. _
}

textobassus=\lyricmode{
Ma -- ri -- _ a Mag -- da -- le -- na
et al -- te -- ra Ma -- ri -- _ _ _ _ a
e -- me -- runt a -- ro -- ma -- ta
e -- me -- runt a -- ro -- ma -- ta,
e -- me -- runt a -- ro -- ma -- ta
ut ve -- ni -- en -- tes un -- ge -- rent Ie -- sum
ut ve -- ni -- en -- tes un -- ge -- rent Ie -- sum,
un -- ge -- rent Ie -- sum
et _ val -- de ma -- ne
et val -- de ma -- _ _ _ _ _ ne
et val -- de ma -- ne u -- _ na sab -- ba -- to -- _ _ _ _ rum
ve -- _ ni -- unt ad mo -- nu -- men -- _ _ _ _ _ _ tum,
ad mo -- nu -- men -- _ tum _
or -- to iam so -- _ le
or -- to iam so -- _ le
al -- le -- lu -- _ _ _ _ ia _
al -- le -- lu -- _ _ _ ia,
al -- _ le -- lu -- ia
al -- le -- lu -- ia
al -- le -- lu -- _ _ ia,
al -- le -- lu -- _ _ _ _ ia,
al -- le -- lu -- ia.
Et in -- tro -- e -- un -- tes in mo -- nu -- men -- tum
vi -- de -- runt iu -- ve -- nem
vi -- _ de -- runt iu -- _ ve -- nem
se -- den -- tem in dex -- tris
co -- _ o -- per -- tum sto -- la can -- di -- da
co -- _ o -- per -- tum sto -- la can -- di -- da _
et _ ob -- stu -- pu -- e -- runt.
Qui di -- cit il -- lis:
Ie -- sum quem quæ -- ri -- tis Na -- za -- re -- num
cru -- _ ci -- fi -- _ xum:
sur -- re -- xit
sur -- re -- xit
sur -- re -- xit non est hic,
ec -- ce lo -- cus u -- bi po -- su -- e -- _ _ runt,
ec -- ce lo -- _ _ _ _ _ _ cus _ 
u -- _ bi po -- su -- e -- runt e -- um,
al -- le -- lu -- _ _ _ _ ia
al -- le -- lu -- _ _ _ _ _ _ _ _ _ _ _ _ ia
al -- _ le -- lu -- ia,
al -- le -- lu -- ia,
al -- le -- lu -- _ _ _ _ _ ia.
}



incipitcantus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Cantus I  "
		\override NoteHead.style = #'neomensural
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-g"
		\key c \major
		\time 2/2
		c''1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}


incipitcantusdos=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Cantus II "
		\override NoteHead.style = #'neomensural
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-g"
		\key c \major
		\time 2/2
		g'1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}


incipitaltus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Altus        "
		\override NoteHead.style = #'neomensural
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c2"
		\key c \major
		\time 2/2
		g'1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}


incipittenor=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor I    "
		\override NoteHead.style = #'neomensural 
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c3"
		\key c \major
		\time 2/2
		c'1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent=0
	}
	}
}

incipittenordos=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor II   "
		\override NoteHead.style = #'neomensural 
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c4"
		\key c \major
		\time 2/2
		c'1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent=0
	}
	}
}

incipitbassus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Bassus     "
		\override NoteHead.style = #'neomensural 
		\override Rest.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-f3"
		\key c \major
		\time 2/2
		g1
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent=0
	}
	}
}



\score {\transpose c' bes{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName=\incipitcantus
		\set Staff.midiInstrument = "choir aahs"
		\clef "treble"
		\cantus }
	\new Lyrics \lyricsto "v1" {\textocantus }
	>>

	\new Staff <<\global
	\new Voice="v5" {
		\set Staff.instrumentName=\incipitcantusdos
		\set Staff.midiInstrument = "choir aahs"
		\clef "treble"
		\cantusdos }
	\new Lyrics \lyricsto "v5" {\textocantusdos }
	>>

	
	\new Staff << \global
	\new Voice="v2" {
		\set Staff.instrumentName=\incipitaltus
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8" 
		\altus}
	\new Lyrics \lyricsto "v2" {\textoaltus }
	>>

	
	\new Staff <<\global
	\new Voice="v3" {
		\set Staff.instrumentName=\incipittenor
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\tenor }
	\new Lyrics \lyricsto "v3" {\textotenor }
	>>
	
	\new Staff <<\global
	\new Voice="v6" {
		\set Staff.instrumentName=\incipittenordos
		\set Staff.midiInstrument = "choir aahs"
		\clef "bass"
		\tenordos }
	\new Lyrics \lyricsto "v6" {\textotenordos }
	>>

	\new Staff <<\global
	\new Voice="v4" {
		\set Staff.instrumentName=\incipitbassus
		\set Staff.midiInstrument = "choir aahs"
		\clef "bass" 
		\bassus }
	\new Lyrics \lyricsto "v4" {\textobassus }
	>>
	
>>

	}%transpose

\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.2
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		%\override BarNumber.padding = #2 
		\override BarNumber.break-visibility = #end-of-line-invisible
                  barNumberVisibility = #(every-nth-bar-number-visible 3)
	}
	\context {\Voice 
		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
		\consists Ambitus_engraver 
		\override LigatureBracket.padding = #1
	}
}

\midi { }

}


\paper{
	evenHeaderMarkup=\markup  \fill-line { \fromproperty #'page:page-number-string \htitle \hcomposer }
	oddHeaderMarkup= \markup  \fill-line { \on-the-fly #not-first-page \hcomposer \on-the-fly #not-first-page \htitle \on-the-fly #not-first-page \fromproperty #'page:page-number-string }
	%system-count=20
	%page-count = 8
        systems-per-page = 2
	ragged-last-bottom = ##f
	indent=3.9\cm
	system-system-spacing =
	#'((basic-distance . 20) (minimum-distance . 0) (padding . 5))
	top-system-spacing = % header
	#'((basic-distance . 9) (minimum-distance . 0) (padding . 0))
	last-bottom-spacing = % footer
	#'((basic-distance . 12) (minimum-distance . 0) (padding . 0))
	markup-system-spacing.padding = #2
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \transpose c' bes{
   \unfoldRepeats <<
     \new Staff = "cantus" \new Voice = "cantus" { \cantus }
     \new Staff = "cantusdos" \new Voice = "cantusdos" { \cantusdos }
     \new Staff = "altus" \new Voice = "altus" { \altus }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "tenordos" \new Voice = "tenordos" { \tenordos }
     \new Staff = "bassus" \new Voice = "bassus" { \bassus }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
           >> }
 #})

\book {
  \bookOutputSuffix "tenordos"
  \score {
    \rehearsalMidi "tenordos" "soprano sax" \textotenordos
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bassus"
  \score {
    \rehearsalMidi "bassus" "soprano sax" \textobassus
    \midi { }
  }
}
