
\version "2.14.2"

\header {
	title = "All the Things You Are"
	poet = "Oscar Hammerstein II"
	composer = "Jerome Kern"
	arranger = "arr. Marnen E. Laibow-Koser"
}

\include "english.ly"

verse = \lyricmode {
  Time and a -- gain I’ve longed for ad -- ven -- ture,
  some -- thing to make my heart beat the fast -- er.
  What did I long for? I nev -- er real -- ly knew.
  Find -- ing your love I’ve found my ad -- ven -- ture;
  touch -- ing your hand my heart beats the fast -- er.
  All that I want in all of this world is you.
  
  You are the prom -- is’d kiss of spring -- time
  that makes the lone -- ly win -- ter seem long.
  You are the vel -- vet hush of eve -- ning
  that trem -- bles on the brink of a love -- ly song.
  
  You are the an -- gel glow that lights a star,
  the dear -- est things I know are what you are.
  
  Some -- day my hap -- py arms will hold you,
  and some -- day I’ll know the mo -- ment di -- vine
  when all the things you are are mine.
}

global = {
  \numericTimeSignature
  \dynamicUp
  #(set-accidental-style 'modern)
  
  \tempo 4 = 100
  \key g \major
}

waltz = { \tempo "Jazz waltz, in 1" 2. = 66 }
 
staffSoprano = \new Staff {
	\set Staff.instrumentName = "Soprano"
	\set Staff.midiInstrument = "flute"
	\clef treble
	\context Voice = "melodySop" {
	  \global
	  
	  \relative d' {
	    \time 4/4 d8. d16 d4 g a | \time 3/2 b c8 b a4 g2 r4 |
	    \time 4/4 d='8. d16 d4 a' b | \time 3/2 c d8 c b4 a2 r4 |
	    \time 4/4 d,='8. d16 d4 b' c | \time 3/2 r d-> e-> d-> c-> b-> |
	    \time 4/4 a='1 ~ | a2. r4 |
	    d,='8. d16 d4 g a | \time 3/2 b c8 b a4 g2 r4 |
	    \time 4/4 b,=8. b16 b4 fs' g | \time 3/2 a b8 a g4 fs2 r4 |
	    \time 4/4 d='8. d16 d4 g d | d8. d16 d4 a' d, |
	    g='1( ~ | \time 5/4 g2 c2) r4\fermata \bar "||"
	    \key f \minor
	    \waltz
	    \time 3/4 af='2. | df |
	    g,=' | c |
	    f,=' | bf |
	    df=''( | c)\fermata \bar "||"
		}

	\bar "|."
	}

}
staffAlto = \new Staff {
	\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "clarinet"
	\clef treble
	\context Voice = "melodyAlt" {
	  \global
	  
	  \relative d' {
	    d8. d16 d4 d e | fs g8 fs e4 d2 r4 |
	    c='8. c16 c4 ef4 f | g! a8 g fs4 e2 r4 |
	    b=8. b16 b4 f' g | r4 gs-> cs-> b-> a-> gs-> |
	    g!='1( ~ | g2 fs4) r |
	    d='8. d16 d4 d e | fs g8 fs e( ds) e2 r4 |
	    a,=8. a16 a4 c d! | e g8 f ef( d) c2 r4 |
	    d='1( | c) |
	    b=4 c cs d | ds( e af g ~ g)\fermata ~ \bar "||"
	    \key f \minor
	    \waltz
	    \time 3/4
	    g='4( f ef | df ef f) ~ |
	    f='( ef df | c df ef) ~ |
	    ef='( df c | bf c df) |
	    <g=' bf>2. ~ | q\fermata \bar "||"
	  }

	\bar "|."
	}

}
staffTenor = \new Staff {
	\set Staff.instrumentName = "Tenor"
	\set Staff.midiInstrument = "french horn"
	\clef "G_8"
	\context Voice = "melodyTen" {
	  \global	
	  \relative b {
	    b8. b16 b4 b c | d e8 d c4 b2 r4 |
	    a=8. a16 a4 c d | e fs!8 e d4 c2 r4 |
	    g=8. g16 g4 d' e | r4 f-> g-> f-> ef-> d-> |
	    cs='1( | c2 ef4) r |
	    b=8. b16 b4 b c | d e8 d c4 b2 r4 |
	    fs=8. fs16 fs4 a b | c ef8 df c( b) a2 r4 |
	    b=1( | a) |
	    g=4 af a bf | b( c <bf e>2) r4\fermata \bar "||"
	    \key f \minor
	    \waltz
	    \time 3/4
	    ef='4( df c | bf c df) ~ |
	    df='( c bf | af bf c) ~ |
	    c='( bf af | g af bf) |
	    f'='2.( | e)\fermata \bar "||"
	  }
	}
	
	\bar "|."

}
staffBass = \new Staff {
	\set Staff.instrumentName = "Bass"
	\set Staff.midiInstrument = "bassoon"
	\clef bass
	\context Voice = "melodyBas" {
	  \global	
	  
	  \relative a {
	    a8. a16 g4 fs g | a b8 a g4 g2 r4 |
	    g=8. g16 fs4 f gs | a b8 a g4 fs2 r4 |
	    fs=8. fs16 e4 gs a | b2-> as4-> gs-> fs-> f-> |
	    e=2( ef | d2.) r4 |
	    a'=8. a16 g4 fs g | g a8 g fs8( f) e2 r4 |
	    e=8. e16 ds4 ds e | fs f8 ef d4 d2 r4 |
	    a'=4( g fs e) | g( fs e d) |
	    f= e ef d | df( c2.) r4\fermata \bar "||"
	    \key f \minor
	    \waltz
	    \time 3/4
	    f=2. | bf |
	    ef,= | af |
	    df,= | g |
	    c,= ~ | c\fermata \bar "||"
	  }
	}
	
	\bar "|."
}


\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode { \lyricsto "melodySop" \verse }
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode { \lyricsto "melodyAlt" \verse }
		
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode { \lyricsto "melodyTen" \verse }
		
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode { \lyricsto "melodyBas" \verse }
		
	>>

	\midi {
	}
	
	\layout {
	}
}

\paper {
}
