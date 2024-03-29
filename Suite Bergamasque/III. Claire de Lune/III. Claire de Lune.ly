﻿\header{
   composer          = "Claude Debussy (1862-1918)"
   title             = "Suite bergamasque - Clair de Lune"
   opus              = ""
   date		     = "1903"
   mutopiatitle      = "Suite bergamasque - Clair de Lune"
   mutopiacomposer   = "DebussyC"
   mutopiaopus       = ""
   mutopiainstrument = "Piano"
   source            = "Project Gutenberg"
   style             = "Classical"
   copyright         = "Public Domain"
   maintainer        = "Leonardo Herrera"
   maintainerEmail   = "leonardo.herrera@gmail.com"
   maintainerWeb     = "http://code.google.com/p/lilypond-debussy"
   lastupdated       = "2008/12/07"
   footer            = "Mutopia-2008/12/07"
   tagline           = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } \char ##x00A9 \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"
\paper {
  #(set-paper-size "letter")
}

blanknotes = { \override NoteHead  #'transparent = ##t
	       \override Stem  #'transparent = ##t }
unblanknotes = { \revert NoteHead #'transparent
		 \revert Stem #'transparent }
blankhead = { \override NoteHead  #'transparent = ##t
	       }
unblankhead = { \revert NoteHead #'transparent
		  }

mBreak = { \break }

stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag

upper = \relative c'' {
	\clef treble
	\key des \major
	\time 9/8
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\override Staff.NoteCollision #'merge-differently-headed = ##t

	\override Score.RehearsalMark #'Y-offset = #0.1
	\mark \markup { \upright Andante \italic "trés expressif" }


	<<
		{
			% 1
			r8 \pp
			r8 \blanknotes <f aes>8\(  ~ \unblanknotes \stemDown <f aes>4. <des f>4. ~
			% 2
			<des f>8[<c ees>8 <des f>8] <c ees>2. ~
			% 3
			<c ees>8 \) \( <bes des>8 <c ees>8 \stemUp \times 3/2{ des8[f] ~ } \times 3/2{ f8[des] ~ }

\mBreak

			% 4
			\stemNeutral <bes des>8 <aes c>8 <bes des>8 <aes c>2. ~

			% 5
			\stemUp c8 \) \( [bes8 c8] bes8[ees8 bes8] aes8[bes8 aes8] ~ \stemNeutral

			% 6
			aes8 [ges aes] ges4. s4.

			% 7
			\tieDown \stemDown  des2. \) ~ des4.

\mBreak

			% 8
			bes2.

		}
		\\
		{
			% 1
			s2. s4.
			% 2
			s2. s4.
			% 3
			s4. bes'2. ~
			% 4
			%\blanknotes <bes des>8 \unblanknotes
			s2. s4.
			% 5
			ges2. ges4.
			% 6
			\stemUp ees2. <ees f>4. ~
			% 7
			\stemUp \phrasingSlurUp f8 \( [f ges] f8[bes f]  ees8[f ees] ~
			% 8
			ees8 [des ees] des4. <aes c>4. \)
		}
	>>

	% 9
	\blanknotes  s8 s8 s8 \unblanknotes <f'' aes>4. <des f>4. ~

	% 10
	<<
		{<des f>8 ees f ees2. ~}
		\\
		{r8 <ges, bes>4 ~ <ges bes>2. }
	>>

	% 11
	<<
		{ ees'8 <des des,> <ees ees,> <aes, des aes'>4. <f des' f>4. ~ }
		\\
		{r8 aes,4 }
	>>

\mBreak

	% 12
	<<
		{f''8 ees f ees4. des4. ~ }
		\\
		{r8 <ges, bes>4 ~ <ges bes>2. }
	>>

	% 13
	<<
		{
			des'8 ( <des des,>8
			\< <ees ees,>8
			% tuplets specified individually to avoid grouping
			\times 3/2{ <bes bes'>8 \! <aes aes'>8 ~ }
			\times 3/2{ <aes aes'>8 <f f'>8 ~ }
			% 14
			f'8 ees8 f8
			\times 3/2{ ees8 f \> ~ }
			\times 3/2{ f des ) \! }
		}
		\\
		{
			r8 aes4 f'2.
			% 14
			r8 <f, bes>4 ~ <f bes>2.
		}
	>>

\mBreak

	%15
	{ \tupletUp \times 3/2{r8\pp <f' bes f'-->8 ~ ( }  <f bes f'>8 [<ees bes' ees-->8  <ees bes' ees-->8] <ees bes' ees-->8 [<des bes' des-->8 <des bes' des-->8] }

	%16
	<des bes' des>8--  <c ges' aes bes>-- <c ges' aes bes>-- \times 3/2 { <c ges' aes bes>--  <des bes' des>8-- } <bes ges' bes>4.-- )

	% 17
	\tupletUp \times 3/2 { r8 <f' bes f'>-- ~ } <f bes f'> <ges bes ges'> <f bes f'> <ees bes' ees> <f bes f'> <ees bes' ees>

\mBreak


	% 18
	<des bes' des>8 <ees bes' ees> <des bes' des>

	\tupletDown \times 3/2 { <c bes' c> [ \acciaccatura { \slurUp ees'8 \slurNeutral } <des, bes' des> ] } <bes ges' bes>4. ~

	% 19
	\times 3/2 {<bes ges' bes>8 <ges ges'> ^\markup { \italic "peu à peu cresc. et animé" } (  }
	\times 3/2 {<aes ees' aes> <c c'>}
	\times 3/2 {<bes ges' bes> <ges ges'> )}

	% 20
	r8 ( <ges c ees ges> <ges c ees ges>
	<ges c ees ges> <ges c ees ges> <aes c ees aes> <ges c ees ges>4. )

\mBreak


	% 21
	<<
		{ \times 3/2 {r8 <ges ges'> ( } \times 3/2{<aes aes'> <des des'>} \times 3/2{<bes bes'> <ges ges'> )} }
		\\
		{ \times 3/2 {s8 des'4.} ges }
	>>

	% 22
	r8 <ges, bes ees ges>-- (<ges bes ees ges>-- <ges bes ees ges>-- <ges bes ees ges>-- <aes c f aes>-- <ges bes ees ges>4.-- )

	% 23
	<<
		{
			\stemDown
			\tupletUp
			\times 3/2{ r8 <bes des>4. }
			<ges' bes>4.
		}
		\\
		{
			\stemUp
			\slurUp
			\tupletUp
			s8 s16 <ges, ges'>8 ( s16
			\times 3/2{ <aes aes'>8 <ees' ees'> }
			\times 3/2{ <des des'> <bes bes'> ) }
		}
	>>

\mBreak


	% 24
	r8 <bes ges' bes> ( <bes ges' bes>
	<bes ges' bes> <bes ges' bes> <c aes' c>
	<bes ges' bes> <des bes' des> <ees bes' ees> )

	% 25
	\ottava #1
       \set Staff.ottavation = #"8"
	<aes ees' aes>2.\arpeggio-- _\markup { \italic "dim. molto" } <aes ees' aes>4.\arpeggio--

	% 26
	<aes des aes'>2.\arpeggio--
	\ottava #0
	<aes, ees' aes>4.\arpeggio

\mBreak

	% 27
	<<
		{ <f aes>2.\pp ( ces'4 des8 ) }
		\\
		{ s2.\mark \markup { \italic "un poco mosso" }  aes4. }
	>>

	% 28
	 <f aes>2. ( <aes ces>4 aes8 )

\mBreak

	% 29
	<f des'>4 \< ( <aes ees'>8 <des f>4. <des f,>4 <des f>8 \! )

	% 30
	<<
		{
			\stemDown
			\slurUp
			<ees g>8 ( <des f> <des bes> \stemUp <des bes>4. )  r4 r8
		}
		\\
		{
			s4. \change Staff = lower \stemUp \blankhead g,8 \unblankhead \change Staff = upper \stemDown f ( des \times 3/2 { des bes ) } 
		}
	>>

\mBreak

	% 31
	<<
		{ bes'2.\p ( c4 f8 ) }
		\\
		{ s2. s4 \< aes,16 f \! }
	>>

	% 32
	<<
		{ bes2.\p ( c4 f8 ) }
		\\
		{ s2. s4 \< aes,16 f \! }
	>>

	% 33
	<<
		{
			ges'4. ~ \( \times 3/2 { ges8[ f ] } \times 3/2 { d [ ees ] }
			
			% 35
			bes'2. aes4. \)
		}
		\\
		{
			s4. ges16[ ges, bes f' ges, bes]
			d [ges, bes ees ges, bes]
		}
        >>

\mBreak

	% 35
	\stemUp \phrasingSlurUp
	\mark \markup{ \italic "cresc." } <f' aes>2. \(   <aes ces>4 \stemUp des8 \)

	% 36
	<f, aes>2. \( <gis b>4 gis8 \)

	\key e \major

\mBreak
	% 37
	<<
		{
		\stemUp \slurUp
		\override Score.RehearsalMark #'Y-offset = #0.2
		\mark \markup { "En animant" }
		cis4 ( gis8 )
		e'4 ( cis 8 )
		gis'4 ( e8 )
		}
		\\
		{
		cis8. [ cis,16 gis' e ]
		e'8. [ e,16 cis' e, ]
		gis'8. [ e,16 e' cis ]
		}
	>>

	% 38
	\stemUp \slurUp
	e4. ( fis2. )

	% 39
	fis2. ( a4 cis8 )
	
	% 40
	fis,,2. ( a4 cis8 )

\mBreak

	% 41
	\stemNeutral
	\mark \markup { \dynamic "f" }
	<cis e>8 ( <b dis> <a cis> \times 3/2 { <gis b> <fis a> ~ } <fis a> <e gis> <dis fis> )

	% 42
	\mark \markup { \italic "dim." }
	<<
	{ <cis e> <b dis> <a cis>  <gis b> <fis a> <e gis> ~ <e gis> <dis fis> <cis e> }
	\\
	{
		s2. a4.
	}
	>>
	
	\key des \major
	%43
	
	\mBreak
	
	<<
	{
		
		<des ees>2. ( <ees ges>4 <ees ges bes>8 )
	}
	\\
	{
		ges,4 ( \mark \markup { \bold "Calmato" } aes8 bes4 des8 c4 )
	}
	>>
	
	% 44
	<<
	{
		<des ees>2. ( <ees ges>4 <ees ges bes>8 ~ )
		
		% 45
		<des ges bes>8 ( <aes' c f> <ges bes ees> <ges bes>4. <ges aes>4. ) 
	
	}
	\\
	{
		ges,4 ( aes8 bes4 des8 c4 )
		
		% 45
		
		s8 s8 s8 s8 des8 bes des bes c ees
		
	}
	>>
	
	% 46
	<<
	{
		<des ges bes>8 ( <aes' c f> <ges bes ees> <ges bes>4.  <ges aes>4. )
	} 
	\\ 
	{
		
		s4 s8 des8 bes des bes c ees 
	}
	>>
	
	\mBreak
	
	% 47
	<<
	{
		\stemUp ees'2. ( ges4 bes8 )
	}
	\\
	{
		\slurUp ees,16 ees, ( ges bes ges ees ) r ees ( ges bes ges ees ) 
	}
	>>
	% 48
	<<
	{
		\stemUp ees'2. ( ges4 bes8 )
	}
	\\
	{
		\slurUp ees,16 ees, ( ges bes ges ees ) r ees ( ges bes ges ees ) 
	}
	>>
	
	%\mBreak
	

	% 49
	\stemUp \slurUp \tieUp
	ees''2. ~ ( ees4. 

	% 50
	~ ees des ees )

	%51
	 r4 \ppp r8 \ottava #1  \stemDown <f aes>4.  \( f4. ~
	
	% 52
	f8 <c ees> <des f> <c ees>2. ~ \)
	
	% 53
	<c ees>8 \( <bes des> <c ees> \times 3/2 {<bes des> <des f>  ~} \times 3/2 {<des f> <bes des>  ~ }
	
	% 54
	<bes des> <aes c> <bes des> <aes c>2. \) \ottava #0
	
	%55
	<<
	{
		r8 <ges bes>8 \( <aes c> bes ees bes aes bes aes \) ~
		%56
		aes8 \( <ees ges> <f aes> <ees ges>4. <f a,> \) ~
	}
	\\
	{
		s4 s8 ges4. f ~
		%56
		f8 s4 s8 s4
	}
	>>
}

lower = \relative c' {
	\key des \major
	\time 9/8
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\override Staff.NoteCollision #'merge-differently-headed = ##t

	% 1
	<<
		{ s8  <f aes>8 \change Staff = upper \relative c''{ \stemDown <f aes>8 } }
		\\
		% trick to make legatto...
		{ r8 \blanknotes <f aes>4 ~ \unblanknotes <f aes>2. }
	>>

	% 2
	<ges a>2. ~ <ges a>4.

	% 3
	<f aes>2. ~ <f aes>4.

	% 4
	<ees ges>2. ~ <ees ges>4.

	% 5
	<<
		{ ees2. ees4. }
		\\
		{ des2. c4. }
	>>
	% 6
	<<
		{des2. c4.}
		\\
		{bes2. a4. \clef bass}
	>>
	% 7
	<<
		{bes2. ~ bes4.}
		\\
		{aes2.   ges4.}
	>>

	% 8
	<<
		{
			aes2. ges4.

			% 9

			s2. s4.
		}
		\\
		{
			\stemDown f2. \times 3/2 { ees8[aes,] ~ } |

			% 9

			\stemUp <aes des,>8 (
			\change Staff=upper \stemDown <aes' f>8
			\change Staff = lower \clef treble \stemUp <f' aes> ~ <f aes>2.
			)
			\clef bass
		}
	>>


	% 10
	<<
		{ r8 <des, ges bes des>4 ~ <des ges bes des>2. }
		\\
		{ <ges, des'>2. ~ <ges des'>4. }
	>>

	% 11
	<<
		{r8 (<f' aes>4 <des' f>4. <aes des>4.) }
		\\
		{<des, f,>2. ~ <des f,>4.}
	>>

	% 12
	<<
		{ r8 <des ges bes des>4 ~ <des ges bes des>2.}
		\\
		{<ges, des'>2. ~ <ges des'>4.}
	>>

	% 13
	<<
		{
			r8 <f' c'>4
			\override TieColumn #'tie-configuration =
				#'((10.0 . 1) (8.0 . 1) (5.0 . -1))
			<ces' des f>4. ~
			<ces des f>8
			r8 r8
		}
		\\
		{
			aes,2. ~
			aes4.
		}
	>>

	% 14

	<<
		{r8 ees''4 ~ \times 3/2{ees8 des ~ } des4.}
		\\
		{s8 <f, bes>4 ~ <f bes>2.}
		\\
		{\tieDown bes,2. ~ bes4.}
	>>

	% 15
	<<
		{
			\times 3/2{r8 \clef treble
			\slurDown
			<f'' ges bes>8_- ~ ( } \mark "tempo rubato"

			<f ges bes>8 [
			<ees ges bes>8_-
			<ees ges bes>8_-]

			<ees ges bes>8_- [
			<des ges bes>_-
			<des ges bes>_-]

			% 16
			<f bes des>8_-
			<ees bes' des>_-
			<ees bes' des>_- \times 3/2{<ees bes' des>8_- <f bes des>}
			<bes, des ges>4. ) \clef bass
		}
		\\
		{
			<ees,, ees,>2.

			% 16

			s2. s4.
		}
	>>

	% 17
	<<
		{\times 3/2{r8 \clef treble <f'' ges bes>8 ~} <f ges bes> <ges bes ees> <f ges bes> <ees ges bes> <f ges bes> <ees ges bes> }
		\\
		{<ees,, ees,>2. s4.}
		\\
		{bes'2. s4.}
	>>

	% 18
	\relative c' {<des ges bes>8 <ees ges bes> <des ges bes> \times 3/2 {<c ges' bes> <ees ges bes>} <bes ees ges>4. } \clef bass

	% 19
	<<
		{
			\stemDown
			\slurDown
			\tupletUp
			\times 3/2 {r8 ges' ( }
			\tupletDown
			\times 3/2 {aes c}
			\times 3/2 {bes ges )}
		}
		\\
		{
			\stemUp s4. <c ees>4. <ees ges>4.
		}
		\\
		{
			\stemDown <aes,, aes,>2.
		}
	>>

	% 20
	<<
		{
			r8 <ges' c ees>8 <ges c ees>
			<ges c ees> <ges c ees> <aes c ees> <ges c ees>4.
		}
		\\
		{
			<a, a,>2. s4.
		}
	>>

	% 21
	<<
		{
			\times 3/2{s8 <bes' des>4.} s4.
		}
		\\
		{
			<bes bes,>2. \stemUp <des ges>4.
		}
		\\
		{
			\tupletUp \stemDown \slurDown \times 3/2 {r8 ges, ( } \tupletDown \times 3/2{aes des} \times 3/2{bes ges ) }
		}
	>>

	% 22
	<<
		{r8 <ges bes ees>-- (<ges bes ees>-- <ges bes ees>-- <ges bes ees>-- <aes c f>-- <ges bes ees>4.--) }
		\\
		{<c c,>2. s4.}
	>>

	% 23
	<<

		{
			\stemUp
			\tupletUp
			\times 3/2{ r8 <bes des>4. }
			<ges' bes>4.
		}
		\\
		{
			\stemDown \slurDown \tupletDown
			s8 s16 ges,8 ( s16
			\times 3/2{ aes8 ees' }
			\times 3/2{ des bes ) }
		}
		\\
		{\stemDown <des, des,>2. s4}
	>>

	% 24
	<<
		{
			r8 <bes' des ges> ( <bes des ges>
			<bes des ges> <bes des ges> <c ees aes>
			<bes des ges> \clef treble <des ges bes> <ees ges bes> )
		}
		\\
		{
			<ees ees,>2.
		}
	>>

	% 25
	<f aes des f>2.\arpeggio-- ( <fes aes bes des fes>4.\arpeggio--

	% 26
	<ees ges aes des ees>2.\arpeggio-- ) <aes, ees' ges c>4.\arpeggio \clef bass

	% 27
	<<
		{
			\stemUp
			\slurDown
			des,,16 ( aes' des f \change Staff = upper \stemDown \relative c' { aes des ) }
			\stemUp \change Staff = lower
			f, ( c' f  \change Staff = upper \stemDown \relative c' { aes c f ) }
			\stemUp \change Staff = lower
			aes, ( fes' aes  \change Staff = upper \stemDown \relative c' { ces fes aes ) }


		}
		\\
		{
			\stemDown des,,4. f aes
		}
	>>

	% 28
	<<
		{
			\slurDown
			\stemUp \change Staff = lower
			des,16 ( aes' des f \change Staff = upper \stemDown \relative c' { aes des ) }
			\stemUp \change Staff = lower
			f, ( c' f  \change Staff = upper \stemDown \relative c' { aes c f ) }
			\stemUp \change Staff = lower
			aes, ( fes' aes  \change Staff = upper \stemDown
				\relative c' { ces aes' fes ) }
		}
		\\
		{
			des,,4. f aes
		}

	>>


	% 29
	des,16 ( aes' des f aes des
	f aes f des aes f
	aes f des aes des aes )

	% 30
	\slurDown
	\stemDown
	ees16 ( bes' ees g bes ees 	g ees bes g ees bes  ees, bes' ees g ees bes )

	% 31
	<<
		{
			\stemUp
			aes16 ( ees' ges bes \change Staff = upper \stemDown \relative c' { c ges' ) }
			\stemUp \change Staff = lower
			ges, ( des' f  aes \change Staff = upper \stemDown \relative c' { des ges ) }
			\stemUp \change Staff = lower
			f, ( c' f aes c8 )
		}
		\\
		{
			\stemDown aes,4. ges f
		}
	>>

	% 32
	<<
		{
			\stemUp
			aes16 ( ees' ges bes \change Staff = upper \stemDown \relative c' { c ges' ) }
			\stemUp \change Staff = lower
			ges, ( des' f  aes \change Staff = upper \stemDown \relative c' { des ges ) }
			\stemUp \change Staff = lower
			f, ( c' f aes c8 )
		}
		\\
		{
			\stemDown aes,4. ges f
		}
	>>

	% 33

	<<
		{
			ees16 ( bes' ees ges bes ees )
			\stemDown ges8. [( f d ees )]
			\clef treble

		}
		\\
		{
			ees,,,4. s2.
		}

	>>

	% 34
	<<
		{
			% 34
			\stemUp
			d'''16 ( ges bes
			\change Staff = upper \stemDown
			bes ges' bes )

			\change Staff = lower \stemUp
			ees,, ( ges bes
			\change Staff = upper \stemDown
			bes ges' bes )

			\change Staff = lower \stemUp
			c,, ( e aes
			\change Staff = upper \stemDown
			c e aes )

			\change Staff = lower \clef bass

		}
		\\
		{
			% 34
			d,,4. ees aes,
		}
	>>






	% 35
	<<
		{
			\change Staff = lower \stemUp
			des,16 ( aes' des f
			\change Staff = upper \stemDown
			aes des )

			\change Staff = lower \stemUp
			aes, ( c f
			\change Staff = upper \stemDown
			aes c f )

			\change Staff = lower \stemUp
			ces, (fes aes
			\change Staff = upper \stemDown
			ces fes aes)
		}
		\\
		{
			\stemDown
			des,,,4. f aes
		}
	>>

	% 36
	<<
		{
			\change Staff = lower \stemUp
			des,16 ( aes' des f
			\change Staff = upper \stemDown
			aes des )

			\change Staff = lower \stemUp
			aes, ( c f
			\change Staff = upper \stemDown
			aes c f )

			\change Staff = lower \stemUp
			b,, (e gis
			\change Staff = upper \stemDown
			b gis' e)
		}
		\\
		{
			\stemDown
			des,,4. f gis

			\clef treble
			\key e \major
		}
	>>

	% 37
	<<
		{
			cis16 [ ( e gis b8. )]
			e,16 ( gis b cis8. )
			gis16 ( b cis e8. )
		}
		\\
		{
			b,4. cis e
		}

	>>

	% 38
	<<
		{
			\slurDown
			\change Staff = lower \stemUp
			gis16 (a cis
			\change Staff = upper \stemDown
			gis' cis a )

			\change Staff = lower \stemUp
			fis, (a cis
			\change Staff = upper \stemDown
			fis cis' a)

			\change Staff = lower \stemUp
			fis, ( a cis
			\change Staff = upper \stemDown
			fis cis' a)
		}
		\\
		{
			gis,4. fis eis
		}
	>>

	% 39
	<<
		{
			\slurDown fis16 ( a cis \change Staff = upper \stemDown fis cis' a )  
			\change Staff = lower \stemUp fis, ( a cis \change Staff = upper \stemDown fis cis' a )
			\change Staff = lower \stemUp e, ( a cis e \change Staff = upper \stemDown cis'' cis, )
		}
		\\
		{
			e,,4. dis cis
		}
	>>
	
	% 40
	<<
		{
			\slurDown b16 ( d fis \change Staff = upper \stemDown fis cis' a )
			\change Staff = lower \stemUp a, ( cis e \change Staff = upper \stemDown fis cis' a )
			\change Staff = lower \stemUp gis, ( cis e  a \change Staff = upper \stemDown e' a )
		}
		\\
		{
			b,,4. a e
		}
	>>
	% 41
	\stemNeutral
	<<
		{
				\slurDown fis16 cis' ( e fis a cis e fis e cis a fis ) \slurNeutral e (fis e cis a fis)
				\clef bass
		}
		\\
		{
			fis2. ~ fis4.
		}
	>>
	
	%42
	\slurNeutral fis,16 ( cis' e fis a cis e cis a fis e cis ) fis, ( cis' fis, cis' fis, cis' )
	
	\key des \major
	\stemDown
	% 43
	
	aes16 ( ees' aes, ees' aes, ees'
	aes, ees' aes, ees' aes, ees'
	aes, ees' aes, ees' aes, ees'
	
	% 44
	aes, ees' aes, ees' aes, ees'
	aes, ees' aes, ees' aes, ees'
	aes, ees' aes, ees' aes, ees'
	)
	
	\mBreak

	%45 
	
	aes,16 ( ees aes ees' aes, ees' 
	aes ees aes ees' aes, ees
	aes ees aes, ees' aes, ees )

	% 46
	\once \override Slur #'control-points = #'( ( 0.1992 . -0.1992) ( 10.161 . 6.575) ( 43.835 . 6.176) ( 47.223 . 2.391) )
	aes16 ( ees aes ees' aes, ees' 
	aes ees aes ees' aes, ees
	aes ees aes ees aes ees  )
	|
	% 47
	<<
	{
		\stemDown \slurDown
		ges4 ( aes8 bes4 des8 c4. )
	} \\
	{
		\stemUp des2. c16 ( ees ges bes  \change Staff = upper \stemDown c ees )
	}
	>>

	
	% 48
	<<
	{
		\stemDown \slurDown
		ges,,4 ( aes8 bes4 des8 c4. )
	} \\
	{
		\stemUp des2. c16 ( ees ges bes \change Staff = upper \stemDown c ees )
	}
	>>
	
	 \clef treble 
	<<
	{
		\stemUp ges,16 ( bes des \change Staff = upper \stemDown ees ges bes )
		\change Staff = lower \stemUp ges, ( bes des \change Staff = upper \stemDown ees ges c )
		\change Staff = lower \stemUp ges, ( bes des \change Staff = upper \stemDown ees ges bes )
	}
	\\
	{
		ges,2. ~ ges4.
	}
	>>
	
	<<
	{
		\change Staff = lower \stemUp ges16 ( a des \change Staff = upper \stemDown ees ges b )
		\change Staff = lower \stemUp ges,  ( a des \change Staff = upper \stemDown ees ges ces )
		\change Staff = lower \stemUp ges,  ( a des \change Staff = upper \stemDown ees ges a )
	}
	\\
	{
		ges,2. ges4.
	}
	>>
	
	\mBreak
	\slurNeutral
	% 51
	<<
	{

		\stemUp f16  aes c f aes c r4 r8 r4 r8
		% 52
		f,,16 ( a c ees f a ) r4 r8
	}
	\\
	{
		f,2. f4.
		% 52
		f2. f4.
	}
	>>
	
	%53
	<<
	{
		\stemUp f16 (aes bes des f aes ) r4 r8 r4 r8
		% 54
		ees,16 (ges aes c ees ges ) r4 r8 r4 r8
	}
	\\
	{
		f,2. f4.
		% 54
		ees2. ees4.
	}
	>>
	\mBreak
	% 55
	<<
	{
		des16 ( ees ges bes des ees ) r4 r8  <ees, f aes c>4. \arpeggio--
		%56
		\clef bass
		c,16 ( ges' bes c ees ges ) bes4. <c, ees>
	}
	\\
	{
		des2. ( c4.)
		%56
		c,2. ( f4. )
	}
	>>
}

\score {
	\new PianoStaff <<
		\context Staff = "upper" {
			% \set PianoStaff.instrumentName = "Piano  "
			#(set-accidental-style 'piano)

			\upper
		}
		\context Staff = "lower" {
			#(set-accidental-style 'piano)
			\lower
		}
	>>
	\layout { }
	\midi { }
}
