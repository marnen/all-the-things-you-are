
\version "2.14.2"

\header {
	title = "All the Things You Are"
	poet = "Oscar Hammerstein II"
	composer = "Jerome Kern"
	arranger = "arr. Marnen E. Laibow-Koser"
}

\include "english.ly"

verse= \lyricmode {

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
