
\version "2.14.2"

\header {
	title = "All the Things You Are"
	poet = "Oscar Hammerstein II"
	composer = "Jerome Kern"
	arranger = "Marnen E. Laibow-Koser"
}

\include "english.ly"

     global = {
        \key g \major
        \time 4/4


     }
     
     sopMusic = \relative c'' {
        c4 c c8[( b)] c4
     }
     sopWords = \lyricmode {
        hi hi hi hi
     }
     
     altoMusic = \relative c' {
        e4 f d e
     }
     altoWords =\lyricmode {
        ha ha ha ha
     }
     
     tenorMusic = \relative c' {
        g4 a f g
     }
     tenorWords = \lyricmode {
        hu hu hu hu
     }
     
     bassMusic = \relative c {
        c4 c g c
     }
     bassWords = \lyricmode {
        ho ho ho ho
     }
     
     \score {
        \new ChoirStaff <<
           \new Lyrics = sopranos { s1 }
           \new Staff = women <<
              \new Voice =
                "sopranos" { \voiceOne << \global \sopMusic >> }
              \new Voice =
                "altos" { \voiceTwo << \global \altoMusic >> }
           >>
           \new Lyrics = "altos" { s1 }
           \new Lyrics = "tenors" { s1 }
           \new Staff = men <<
              \clef bass
              \new Voice =
                "tenors" { \voiceOne <<\global \tenorMusic >> }
              \new Voice =
                "basses" { \voiceTwo <<\global \bassMusic >> }
           >>
           \new Lyrics = basses { s1 }
     
           \context Lyrics = sopranos \lyricsto sopranos \sopWords
           \context Lyrics = altos \lyricsto altos \altoWords
           \context Lyrics = tenors \lyricsto tenors \tenorWords
           \context Lyrics = basses \lyricsto basses \bassWords
        >>
     
        \layout {
           \context {
              % a little smaller so lyrics
              % can be closer to the staff
              \Staff
              \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
           }
        }
     }


