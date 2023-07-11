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
  title = "BIJEL KO' SNIJEG"
  composer = "Jon Foreman"
  style = "Psalam 51"
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
  \time 4/4
  \tempo 4 = 112
  \partial 2
  f e d c \bar "||"  |
  \markMoj  a c g d' ~ |
  d |
  r |
  g, a d e |
  g a e |
  g |
  r |
  r f e d c \bar "||"  |
  \markMoj  e e d |
  r r e f e d c |
  e e d ( c ) |
  r r e f e d c |
  e e d e |
  r c f e ~ |
  e e d c ~ |
  c g' a h c ~ \bar "||"  |
  \markMoj  c h |
  g g a |
  e d ( c ) |
  c r a' |
  c h |
  g r a |
  c a c ~ c a d ~ |
  d a ( g ) f e d c \bar "||"  |
  \markMoj  e e d |
  r c d f e d c |
  e e d ( c ) |
  r c d g ~ |
  g f e ~ e d f ~ |
  f c c e e ~ |
  e r |
  r \bar "||"  |
  \markMoj  r e' |
  d d e ( d ) d |
  d c r g f' ~ |
  f e d ~ d c g ~ |
  g e' |
  d d e ( d ) d |
  d c r g f' ~ |
  f e d ~ d c g ~ |
  g e' |
  d d e ( d ) d |
  d c r g f' ~ |
  f e d ~ d c g ~ |
  g e' |
  d d e ( d ) d |
  d c r |
}

harmonyOne = \chordmode  {
  s2 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  a2:m7 a2:m7/g |
  f1:5.9 |
  c1 |
  c1 |
  f1:5.9 |
  c1 |
  c1 |
  c1 |
  f1:5.9 |
  c1 |
  a1:m7 |
  c1 |
  f1:5.9 |
  c1 |
  a1:m7 |
  c1 |
  f1:5.9 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  |
  |
  |
  |
  |
  |
  |
  |
  Smi -- luj __ mi se |
  Gos -- po -- de, |
  Po ne -- iz -- mjer -- noj __ |
  lju -- ba -- vi, __ |
  Po ve -- li -- kom __ smi -- |
  lo -- va -- nju __ svom |
  Sav moj grijeh __ |
  iz -- bri -- ši! __ |
  Bo -- že __ ti stvo -- |
  ri __ |
  mi Sr -- ce __ |
  ne -- vi -- |
  no, I |
  ob -- no -- |
  vi mi |
  ra -- dost __ svog __ spa -- se -- |
  nja! __ Žr -- tva __ na -- šem __ |
  Gos -- po -- du, |
  Duh je ras -- ka -- jan __ i |
  po -- ni -- zan. __ |
  Te -- bi, __ sa -- |
  mom __ te -- bi __ ja __ |
  Sam zgrije -- ši -- o. __ |
  |
  |
  Ti |
  me od sveg __ o -- |
  pe -- ri, I bit __ |
  ću bijel __ ko' snijeg! __ |
  Ti |
  me od sveg __ o -- |
  pe -- ri, I bit __ |
  ću bijel __ ko' snijeg! __ |
  Ti |
  me od sveg __ o -- |
  pe -- ri, I bit __ |
  ću bijel __ ko' snijeg! __ |
  Ti |
  me od sveg __ o -- |
  pe -- ri. |
}

lyricOneOne = \lyricmode {
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  Bo -- že __ ti stvo -- |
  ri __ |
  mi Sr -- ce __ |
  ne -- vi -- |
  no, I |
  ob -- no -- |
  vi mi |
  ra -- dost __ mog __ spa -- se -- |
  nja! __ |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    >>
}
