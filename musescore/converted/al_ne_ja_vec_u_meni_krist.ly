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
  title = "AL' NE JA, VEĆ U MENI KRIST"
  composer = "CityAlight"
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
  \key e \major
  \time 4/4
  \tempo 4 = 72
  r2 r8 e8 e8 gis8 |
  gis4. gis8 gis8 fis8 fis8 e8 |
  e4 cis4 r8 e8 e8 gis8 |
  gis4. gis8 gis8 e8 h'8 gis8 |
  fis2 r8 e8 e8 gis8 |
  gis4. gis8 gis8 fis8 fis8 e8 |
  e4 cis4 r8 e8 e8 gis8 |
  gis4. gis8 gis8 fis8 fis8. e16 |
  e2 r8 gis8 gis8 cis8 \bar "||" |
  cis4. cis8 cis8 h8 h8 a8 |
  gis4 h4 r4 e8 dis8 |
  cis4. h8 h8 h8 h8 gis8 |
  fis2 r4 gis8 fis8 |
  e4 e8 fis8 fis4 fis8 gis8 |
  gis4 e'8 dis8 cis4 h8 a8 |
  gis4 e8 fis8 fis4 r8 e8 |
  e2 r2 |
  r1 |
  r1 |
}

harmonyOne = \chordmode  {
  s1 |
  e1 |
  a1 |
  e2. cis4:m |
  h1 |
  e1 |
  a1 |
  e2 h2 |
  e2:sus4 e2 |
  a1 |
  e2. e4/gis |
  a2 e2 |
  h2:sus4 h2 |
  e2 fis2:m |
  e2/gis a2 |
  e2/h h2 |
  e2:sus4 e2 |
  a2/cis e2/h |
  a2/cis e2/h |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \repeat unfold 1 { \skip1 }
  O ka -- kav 
  dar je spa -- si -- telj, moj 
  I -- sus Bo -- lje -- ga 
  ne -- bo ni -- je mo -- glo 
  dat' On mi je 
  ra -- dost, prav -- da i slo -- 
  bo -- da lju -- bav ko -- 
  ja me i -- spu -- nja -- 
  va. Si -- gur -- no 
  znam u I -- su -- su je 
  na -- da ži -- vot 
  svoj ja nje -- mu du -- gu -- 
  jem Ka -- ko 
  ču -- de -- sno je, pje -- vam 
  sad: “mo -- gu sve" al' ne 
  ja, već u me -- ni 
  Krist. 
}

lyricOneOne = \lyricmode {
  \repeat unfold 1 { \skip1 }
  Noć ta -- mna 
  je, al' on uz me -- ne 
  bdi -- je Uz me -- ne 
  spa -- si -- telj će o -- sta -- 
  ti U sla -- bo -- 
  sti moć nje -- go -- va se 
  kri -- je pri -- tje -- če 
  nam u sva -- koj po -- tre -- 
  bi Si -- gur -- no 
  znam -- moj pa -- stir me -- ne 
  ču -- va vo -- di 
  me kroz du -- blje do -- li -- 
  ne Ta -- mu 
  po -- bje -- di on, i ja 
  s njim gle -- dam tron al' ne 
  ja, već u me -- ni 
  Krist. 
}

lyricOneTwo = \lyricmode {
  \repeat unfold 1 { \skip1 }
  Ne bo -- jim 
  se, bu -- du -- ćnost mo -- ju 
  dr -- ži Za me -- ne 
  cije -- nu krv -- lju pla -- ti 
  on Na gol -- go -- 
  ti sav te -- ret u -- ze 
  na se u -- skr -- snu 
  sla -- vno ka -- o po -- bjed -- 
  nik. Si -- gur -- no 
  znam -- moj grijeh je sa -- da 
  o -- pran za -- u -- 
  vijek naš za -- go -- vor -- nik 
  je Slo -- mi 
  o -- ko -- ve sve, pje -- vam 
  sad slo -- bo -- dan al' ne 
  ja, već u me -- ni 
  Krist. 
}

lyricOneThree = \lyricmode {
  \repeat unfold 1 { \skip1 }
  Svi -- me što 
  je -- sam ja ću nje -- ga 
  slije -- dit' U ne -- bo 
  on će me -- ne do -- ve -- 
  sti I dan za 
  da -- nom on mi sna -- gu 
  da -- je sve dok ne 
  stig -- nem u svoj vje -- čni 
  dom Si -- gur -- no 
  znam -- u I -- su -- su je 
  na -- da čast i 
  sla -- va nje -- mu pri -- pa -- 
  da Tr -- ku 
  kad za -- vr -- šim, ra -- do -- 
  sno kli -- cat ću al' ne 
  ja, već u me -- ni 
  Krist. 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    \addlyrics { \lyricOneTwo }
    \addlyrics { \lyricOneThree }
    >>
}
