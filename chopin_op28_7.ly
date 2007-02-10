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

\score {
  \new PianoStaff <<
    \new Staff {
      \relative e' {
        \time 3/4
        \key a \major
        \partial 4
        e4^\markup { \bold "Andantino" } \( |
        \barNumberCheck #1
        cis'8. d16 <d, gis h>4 <d gis h> |
        \barNumberCheck #2
        <d gis h>2\) <d' fis>4\( |
        \barNumberCheck #3
        <his dis>8. <cis e>16 <cis a'>4 <cis a'> |
        \barNumberCheck #4
        <cis a'>2\)
        <<
          {
            <e, cis'>4 \( |
            \barNumberCheck #5
            s4 <fis d'> <fis d'> |
            \barNumberCheck #6
            <fis d'>2 \) } \\
          {
            s4 |
            \barNumberCheck #5
            \stemUp<cis ais'>8. <d h'>16~ d2~ |
            \barNumberCheck #6
            d
          } 
        >>
        \phrasingSlurUp<d gis>4\( |
        \barNumberCheck #7
        <d gis>8. <cis a'>16 <cis cis'>4 <cis cis'> |
        \barNumberCheck #8
        <cis cis'>2\)
        % 9
        <<
          {
            s4\( |
            \barNumberCheck #9
            \stemUp cis'8. d16 \stemNeutral<d, gis h>4 <d gis h> |
            \barNumberCheck #10
            <d gis h>2 \) \stemUp<d' fis>4\( |
            \barNumberCheck #11
            s4 \stemUp<a' cis>  <a cis>  |
            \barNumberCheck #12
            \stemDown<ais, cis e ais cis>2 \) 
          } \\
          {
            \stemUp e4~ |
            \barNumberCheck #9
            \stemDown<e gis> \stemNeutral s2 |
            \barNumberCheck #10
            s2. |
            \barNumberCheck #11
            <his' dis>8. <cis e>16 <cis e>2 |
            \barNumberCheck #12
            s2
          }
        >>
        <ais cis>4\( |
        \barNumberCheck #13
        <ais cis>8. <h d>16 <h fis'>4 <a fis'> |
        \barNumberCheck #14
        <gis fis'>2 \)
        <<
          {
            <d gis>4\( |
            \barNumberCheck #15
            <d h'>8. <cis a'>16 <cis' a'>4 <cis a'> |
            \barNumberCheck #16
            \stemDown<cis a'>2 \)
          } \\
          {
            s4 |
            \barNumberCheck #15
            s4 \acciaccatura a8 a2~ |
            \barNumberCheck #16
            a
          }
        >>
        r4 \bar "|." |

      }
    }
    \new Staff {
      \relative e' {
        \clef bass
        \key a \major
        \barNumberCheck #1
        r4 e, <e e'> <e e'> |
        \barNumberCheck #2
        <e e'>2 r4 |
        \barNumberCheck #3
        a, <a' e'> <a e'> |
        \barNumberCheck #4
        <a e'>2 r4
        \barNumberCheck #5
        e, <e' h'> <e h'> |
        \barNumberCheck #6
        <e h'>2 r4 |
        \barNumberCheck #7
        a,, <e'' a e'> <e a e'> |
        \barNumberCheck #8
        <e a e'>2 r4 |
        \barNumberCheck #9
        e, <e' e'> <e e'> |
        \barNumberCheck #10
        <e e'>2 r4 |
        \barNumberCheck #11
        a, <a' e' a> <a e' a> |
        \barNumberCheck #12
        <fis cis' e fis>2 r4 |
        \barNumberCheck #13
        h,, <fis'' d'> <fis h d> |
        \barNumberCheck #14
        <e h' d>2 r4 |
        \barNumberCheck #15
        a,, <e'' a e'> <a e'> |
        \barNumberCheck #16
        <a e'>2 r4 \bar "|." |
      }
    }
  >>
  \midi {}
  \layout {}
}
