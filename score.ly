\version "2.16.0"

\header {
	title = "All the Things You Are"
	poet = "Oscar Hammerstein II"
	composer = "Jerome Kern"
	arranger = "arr. Marnen E. Laibow-Koser"
}

\include "english.ly"

introA = \lyricmode {
  Time and a -- gain I’ve longed for ad -- ven -- ture,
  some -- thing to make my heart beat the fast -- er.
  What did I long for? I nev -- er real -- ly knew. __
  Find -- ing your love I’ve found my ad -- ven -- ture;
  touch -- ing your hand my heart beats the fast -- er.
}

introB = \lyricmode {
  All that I want in all of this world is you. __
}

introTag = \lyricmode {
  All I want is you. __
}

introOoh = {
  \lyricmode { ooh __ } \introTag
}

waltzDoo = \lyricmode {
  doo doo doo doo doo doo doo
}

refrainA = \lyricmode {  
  You are the prom -- is’d kiss of spring -- time
  that makes the lone -- ly win -- ter seem long. __
  You are the vel -- vet hush of eve -- ning
  that trem -- bles on the brink of
}

refrainB = \lyricmode {
  a love -- ly song.
}
 
refrainCTenor = \lyricmode {
  You are the an -- gel glow __ that lights a star.
}

refrainCBass = \lyricmode {
  You are the an -- gel __ glow that lights up a star;
}

ah = \lyricmode { ah __ }

refrainD = \lyricmode {
  the dear -- est things I know are what you are. __
}
 
refrainE = \lyricmode {
  are, what you are. __
}

refrainF = \lyricmode {
  Some -- day my hap -- py arms will hold you,
  and some -- day I’ll know the mo -- ment di -- vine
}

refrainG = \lyricmode {
  all the things you are are __ mine. __
}

global = {
  \numericTimeSignature
  \dynamicUp
  \accidentalStyle "modern"
  
  \tempo 4 = 100
  \key g \major
}

waltz = { \tempo "Jazz waltz, in 1" 2. = 66 }

swing = { \tempo "Swing" 4 = 138 }
 
staffSoprano = \new Staff = "Soprano" {
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
	    
	    \swing
	    \time 4/4 af='2.. df8 | r2 r4 af8 g |
	    r g=' r g r g r g | r c4. r8 gf4. |
	    f='4 r r8 f f f | r4 f8 b r4 f |
	    r2 r4 r8 e=' ~ | e2. r4 |
	    ef='2.. af8 | r2 r4 ef8 d ~ |
	    d='4 d \times 2/3 { r4 d d } | d g r d |
	    c=' c c c | c8 d ef d ~ d4 c |
	    b=1 | R1 | r2 d'( |
	    ef='' e | f fs | g a | as b) |
	    R1*3 |
	    <<
	      {
	        \voiceTwo \times 2/3 { r2 r c,='' ~ } | c1 |
	      }
	      \new Voice = "areSoprano" {
	        \voiceOne R1 | e=''1 |
	      }
	      \new Lyrics \with { alignAboveContext = Soprano } \lyricmode { _1 are. }
	    >>
	    \oneVoice R1 |
	    af,='2.. df8 | r2 r4 af |
	    g='8 g g4 r8 g r g | r c4. r8 gf4. |
	    f='1 | <c' ef>2. df4 |
	    ef,=' ef \times 2/3 { ef4 ef ef } | <ef g>2. f4 |
	    df='2-- f-- | af-- df-- | <df f>2.-- r4 |
	    \time 3/2 c=''1 ~ c4 r |
	    \time 4/4 R1 |
	    <<
	      { \voiceTwo r4 g'2.\fermata }
	      \new Voice { \voiceOne r2 c='''2\fermata }
	      \new Lyrics \with { alignAboveContext = Soprano } \lyricmode { \skip 2 mine. }
	    >>
	    
		}

	\bar "|."
	}

}
staffAlto = \new Staff = "Alto" {
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
	    g='4( f ef | df ef f) ~ |
	    f='( ef df | c df ef) ~ |
	    ef='( df c | bf c df) |
	    <g=' bf>2. ~ | q\fermata \bar "||"
	    
	    \swing
	    ef='2.. af8 | r2 r4 d,8 ef |
	    r f=' r ef r d r df | r c( g' ef) r d4. |
	    df='4 r r8 ef df c | r4 c8 b r4 b |
	    r2 r4 r8 b= ~ | b2. r4 |
	    r2 bf=4. ef8 | r2 r4 af,8 af ~ |
	    af=4 af \times 2/3 { r4 c cf } | cf4 bf r bf |
	    c=' b bf a | bf2 a |
	    a= fs4 g ~ | g r d'2-- | g-- d( |
	    ef=' e | f fs | g a | as b |
	    c='' cs | ds e | fs) r |
	    <<
	      { 
	        \voiceTwo e,='1 ~ | e |
	      }
	      \new Voice = "whatAlto" {
	        \voiceOne \times 2/3 { r2 af='1 ~ } | af1 |
	      }
	      \new Lyrics \with { alignAboveContext = Alto } \lyricmode { \times 2/3 { \skip 2 what1 }  }
	    >>
	    \oneVoice R1 |
	    ef!='2.. af8 | r2 r4 d, |
	    ef='8 ef f4 r8 ef r df | r c( g' ef) r d4. |
	    df='1 | <ff af>2. df4 |
	    ef=' d \times 2/3 { df4 c c } | c2. r4 |
	    df='2-- df-- | f-- <f af>-- |
	    q2.-- r4 | g='1 ~ g4 r4 | R1 |
	    <<
	      { \voiceTwo c=''2 ~ c\fermata }
	      \new Voice { \voiceOne r2 d }
	      \new Lyrics \with { alignAboveContext = Alto } \lyricmode { \skip 2 mine. }
	    >>
	  }

	\bar "|."
	}

}
staffTenor = \new Staff = "Tenor" {
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
	    ef!='4( df c | bf c df) ~ |
	    df='( c bf | af bf c) ~ |
	    c='( bf af | g af bf) |
	    f'='2.( | e)\fermata \bar "||"
	    
	    \swing
	    c='2.. f8 | r2 r4 cf8 bf |
	    r af= r g r f r ff | r ef( bf' g) r a4. |
	    af=4 r r8 c bf af | r4 ef8 d r4 g |
	    r2 r4 r8 g= ~ | g2. r4 |
	    c='2.. c8 | r2 r4 c8 cf ~ |
	    cf='4 bf \times 2/3 { r4 af af } | af4 g r g |
	    af= g gf f | e2 ef |
	    d1 ~ | d4 r d2-- | g-- d' |
	    d='2 c4 c ~ | c cs, d c' |
	    b=1 | r2 b( | c cs | ds e |
	    fs='2) r | R1*2 | c8 c bf4 af gf |
	    
	    f=4( f' ~ f4.) f8 | r2 r4 cf |
	    bf=8 bf af4 r8 g r ff | r ef( bf' g) r a4. |
	    af=1 | bf2. df4 |
	    ef=' d \times 2/3 { df4 c b } | bf2( a4) r |
	    df='2-- df-- | <df af>-- q-- |
	    q2.-- r4 | df='1 ~ df4 r |
	    r2
	    <<
	      { \voiceTwo bf!= ~ | bf ~ bf\fermata }
	      \new Voice { \voiceOne r4 f'! ~ | f2 ~ f\fermata }
	      \new Lyrics \with { alignAboveContext = Tenor } \lyricmode { \skip 4 mine. __ __ "" }
	    >>
	  }
	}
	
	\bar "|."

}
staffBass = \new Staff = "Bass" {
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
	    f=2. | bf |
	    ef,= | af |
	    df,= | g |
	    c,= ~ | c\fermata \bar "||"
	    
	    \swing
	    f=2.. bf8 | r2 r4 ff8 ef |
	    r df= r c r cf r bff | r af4. r8 d4. |
	    df=4 r4 r8 af' g f | r4 af,8 g r4 d' |
	    r2 r4 r8 c= ~ | c2. r4 |
	    g'=2.. f8 | r2 r4 f,8 f ~ |
	    f=,4 bf \times 2/3 { r4 f' ff} | ff4 ef r bf |
	    bf=, a af g | g2 fs2 |
	    g=,1 ~ | g4 r r2 | R1 |
	    a=,8 b r b a c( e) d | R1 |
	    r4 r8 d= c <\parenthesize \tweak #'font-size #-2 b ds,> <\parenthesize \tweak #'font-size #-2 a e> g |
	    r4 as=, b b' |
	    b=2 a4 a ~ | a bf,! c d |
	    <<
	      {
	        \voiceTwo e=1 ~ | e ~ | e |
	      }
	      \new Voice = "refrainEBassOne" {
	        \voiceOne \times 2/3 { e=2 af c } | c1 ~ | c |
	      }
	      \new Lyrics \with { alignAboveContext = Bass } \lyricsto "refrainEBassOne" \refrainE
	    >>
	    \oneVoice R1 | c='2.. bf8 |
	    r2 r4 ff= | ef8 ef df4 r8 c r bff |
	    r af=,4. r8 d4. |
	    <<
	      { \voiceOne df=1 | }
	      \new Voice { \voiceTwo df4( c bf af) | }
	    >>
	    \oneVoice <df= gf,>2. df'4 |
	    c=' b \times 2/3 { bf4 af g } | f2. r4 |
	    df'='2-- af-- | f-- <df f>-- |
	    <bf=, f'>2.-- r4 | <bff ff'>1 ~ q4 r4 |
	    <<
	      { \voiceTwo af=,1 ~ | af2 ~ af\fermata }
	      \new Voice { \voiceOne r4 ef'2. ~ | ef2 ~ ef\fermata}
	      \new Lyrics \with { alignAboveContext = Bass } \lyricmode { \skip 4 mine.2. }
	    >>
	  }
	}
	
	\bar "|."
}


\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode {
		  \lyricsto "melodySop" {
		    \introA \introB
		    \waltzDoo
		    \refrainA \refrainB
		    \ah
		    \lyricmode { you __ }
		    \refrainF \lyricmode { when } \refrainG
		  }
		}
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode {
		  \lyricsto "melodyAlt" {
		    \introA \introOoh
		    \lyricmode { doo }
		    \refrainA \lyricmode { love -- ly song. __ You are } \ah
		    \lyricmode { That’s __ }
		    \refrainF \refrainG
		  }
		}
		
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode {
		  \lyricsto "melodyTen" {
		    \introA \introOoh
		    \lyricmode { ooh doo }
		    \refrainA \lyricmode { song. __ }
		    \refrainCTenor \ah
		    \lyricmode { doo doo doo doo doo }
		    \refrainF \refrainG
		  }
		}
		
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode {
		  \lyricsto "melodyBas" {
		    \introA \lyricmode { ooh __ } \introOoh
		    \waltzDoo
		    \refrainA \lyricmode { song. __ }
		    \refrainCBass
		    \refrainD 
		    \refrainF \refrainG
		  }
		}
	>>

	\midi {
	}
	
	\layout {
	}
}

\paper {
}
