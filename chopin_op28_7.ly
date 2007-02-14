%{
 Prelude op.28-7 by Frederic Chopin
 $Id$
%}

\include "deutsch.ly"

\header {
  title = "Prelude"
  composer = "Frederic Chopin(1810-1849)"
  opus = "op.28-7"
}

upper = \relative e' {
  \time 3/4
  \key a \major
  \partial 4
  e4^\markup { \bold "Andantino" } \( | cis'8. d16 <d, gis h>4 <d gis h> |
  <d gis h>2\) <d' fis>4\( | <his dis>8. <cis e>16 <cis a'>4 <cis a'> |
  <cis a'>2\)
  \barNumberCheck #4
  <<
    { <e, cis'>4 \( | s4 <fis d'> <fis d'> | <fis d'>2 \) } \\
    { s4 | \stemUp<cis ais'>8. <d h'>16~ d2~ | d } 
  >>
  \barNumberCheck #6
  \phrasingSlurUp<d gis>4\( | <d gis>8. <cis a'>16 <cis cis'>4 <cis cis'> |
  <cis cis'>2\)
  \barNumberCheck #8
  <<
    {
      s4\( | \stemUp cis'8. d16 \stemNeutral<d, gis h>4 <d gis h> |
      <d gis h>2 \) \stemUp<d' fis>4\( | s4 \stemUp<a' cis>  <a cis>  |
      \stemDown<ais, cis e ais cis>2 \) 
    } \\
    {
      \stemUp e4~ | \stemDown<e gis> \stemNeutral s2 |
      s2. | <his' dis>8. <cis e>16 <cis e>2 | s2
    }
  >>
  \barNumberCheck #12
  <ais cis>4\( | <ais cis>8. <h d>16 <h fis'>4 <a fis'> | <gis fis'>2 \)
  <<
    {
      <d gis>4\( | <d h'>8. <cis a'>16 <cis' a'>4 <cis a'> |
      \stemDown<cis a'>2 \)
    } \\
    { s4 | s4 \acciaccatura a8 a2~ | a }
  >>
  r4 \bar "|." |
}

lower = \relative e, {
  \clef bass
  \key a \major
  r4 e <e' e'> <e e'> | <e e'>2 r4 | a, <a' e'> <a e'> | <a e'>2 r4
  \barNumberCheck #5
  e, <e' h'> <e h'> | <e h'>2 r4 | a,, <e'' a e'> <e a e'> |
  <e a e'>2 r4 | e, <e' e'> <e e'> |
  \barNumberCheck #10
  <e e'>2 r4 | a, <a' e' a> <a e' a> | <fis cis' e fis>2 r4 |
  h,, <fis'' d'> <fis h d> | <e h' d>2 r4 |
  \barNumberCheck #15
  a,, <e'' a e'> <a e'> | <a e'>2 r4 \bar "|." |
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi {}
  \layout {}
}

