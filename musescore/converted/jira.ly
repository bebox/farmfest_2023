\version "2.24.1"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = {}
%\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023"
  broj = "1"
  title = "JIRA"
  composer = "Elevation Worship
Maverick City Music"
  style = ""
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key es \major
  \time 4/4
  \tempo 4 = 70
  \markMoj d4. es8 ~es4 b'16 a16 as16 fis16 |
  g16 es16 c16 es16 ~es4 r2 \bar "||" |
  \markMoj r8 g8 f16 es16 f16 g16 ~g16 f8. r8 f16 (g16 )|
  f8 es4 es8 r8 es16 (es16 )g16 g16 b16 c16 |
  r2 c16 b16 b16 g16 c16 (b16 )b16 (g16 )|
  f8 es4 es8 ~es4 r4 |
  d8 d8 d8 c16 d16 ~d16 c8. r8 b16 (b16 )|
  c8 es4 es8 ~es4 r4 |
  r8 g8 f16 (es16 )f16 g16 ~g16 f8. r8 g8 |
  f8 es4 es8 r2 \bar "||" |
  \markMoj d4. es8 ~es4 g16 f16 es16 es16 ~|
  es2. r4 |
  d4. es8 ~es4 g16 f16 es16 es16 ~|
  es2. r8 b16 f'16 ~|
  f16 f8 f16 ~f16 g8 g16 ~g4 r8 es16 as16 ~|
  as16 as8 as16 ~as16 g8 g16 ~g4 r4 |
  d4. es8 ~es4 g16 f16 es16 es16 ~|
  es2 r4 g16 f16 f16 f16 \bar "||" |
  \markMoj r4 g16 f16 f16 f16 r8 r16 es16 as16 g16 g16 g16 |
  r2 r4 g16 f16 f16 f16 |
  r4 g16 f16 f16 f16 r8 r16 es16 as16 g16 g16 g16 |
  r2 r2 \bar "|." |
}

harmonyOne = \chordmode  {
  c2:m es2 |
  as2 es2 |
  c2:m b2 |
  as2 es2 |
  c2:m b2 |
  as2 es2 |
  b2 c2:m |
  f2:m7 es2 |
  c2:m b4 f4:m7 |
  es1 |
  b2 c2:m |
  as2 es2 |
  b2 c2:m |
  as2 es2 |
  b2 c2:m |
  f2:m7 es2 |
  b2 c2:m |
  as2 es2 |
  b2 c2:m |
  as2 es2 |
  b2 c2:m |
  as2 es2 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \repeat unfold 12 { \skip1 }
  Ti vo -- liš me vi -- še od 
  i -- ko -- ga sve što je -- sam i znam 
  pri -- hva -- ćaš i sve mi 
  o -- pra -- štaš 
  pri -- hva -- ćaš me ta -- kvog 
  ka -- kav sam 
  Ti vo -- liš me vi -- še od 
  i -- ko -- ga 
  Ja -- hve do -- vo -- ljan si 
  Ja -- hve do -- vo -- ljan si 
  i za -- 
  do -- vo -- ljan sam kroz sve 
  o -- kol -- no -- sti 
  Ja -- hve do -- vo -- ljan si 
  Za -- u -- vijek Ti 
  do -- vo -- ljan si i vi -- še od tog 
  Za -- u -- vijek Ti 
  do -- vo -- ljan si i vi -- še od tog 
}

lyricOneOne = \lyricmode {
  \repeat unfold 12 { \skip1 }
  Kad kre -- ne o -- lu -- ja ne po -- 
  su -- sta -- jem Tvoj ču -- je se glas 
  pre -- no -- si ga vje -- tar dok 
  zo -- veš me 
  put po mo -- ru stva -- raš da ne 
  po -- to -- nem 
  Pri -- sut -- nost Tvo -- ju sad 
  o -- sje -- ćam 
  Ji -- ra do -- vo -- ljan si 
  Ji -- ra do -- vo -- ljan si 
  Ji -- ra do -- vo -- ljan si 
}

lyricOneTwo = \lyricmode {
  \repeat unfold 12 { \skip1 }
  U Tvo -- joj bli -- zi -- ni sam 
  si -- gu -- ran na pla -- ni -- na -- ma sam 
  Ja -- sno vi -- dim smi -- sa -- o ži -- 
  vo -- ta svog 
  o -- sta -- ni uz me -- ne do 
  za -- las -- ka 
  U Tvo -- joj bli -- zi -- ni sam 
  si -- gu -- ran 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    \addlyrics { \lyricOneTwo }
    >>
}
