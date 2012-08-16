
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
 
staffSoprano = \new Staff {
	\time 4/4
	\set Staff.instrumentName = "Soprano"
	\set Staff.midiInstrument = "choir aahs"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp		
 % Type notes here 
		}

	\bar "|."
	}

}
staffAlto = \new Staff {
	\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "choir aahs"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp		
 % Type notes here 
		}

	\bar "|."
	}

}
staffTenor = \new Staff {
	\set Staff.instrumentName = "Tenor"
	\set Staff.midiInstrument = "choir aahs"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp		
 % Type notes here 
		}

	\bar "|."
	}

}
staffBass = \new Staff {
	\set Staff.instrumentName = "Bass"
	\set Staff.midiInstrument = "choir aahs"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp		
 % Type notes here 
		}

	\bar "|."
	}

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
