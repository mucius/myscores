%{
  Nouvelles Mazurkas No.2 by A.Dargomizhky
  $Id$
%}
\include "deutsch.ly"
\header {
  title = "Nouvelles Mazurkas"
  composer = "A.Dargomizhky(1813-1869)"
}

#(set-global-staff-size 19)

upper = \relative c'' {
  \time 3/4
  \key g \major
  \tempo 4 = 100 
  \partial 16*5
  cis16^\markup { \bold {"Allegro grazioso"}}( d8. g16 |
  h8. a16 g4) h,8.( e16 | d4) r8. ais16( h8. d16 |
  a'8. g16 d4) g,8. ( c16 | h2) g8. c16 |
  \barNumberCheck #5
  h4( a8.) e'16( a,8.)  e'16( | a,4)~ a8. e'16( a,8.) es'16( |
  a,8.) d16( a8.) cis16( a8.) c16( | d,4 r8. cis'16( d8. g16 |
  h8. a16 g4) h,8.( e16 |
  \barNumberCheck #10
  d4~d8.) his16( cis8. e16) | a8.( g16 fis4) a,8.( d16 |
  c4~c8. ais16) h8.( e16 | g8. fis16 e4) g,8.  c16 |
  h4( a8.) h16( a8.) e'16( |
  \barNumberCheck #15
  h4 h'8.) g16( fis8.) g16( | e2 ) e4 \bar "||"|
  \break
  <<
    \barNumberCheck #17
    { f8. fis16 g2~( | g~ f4) | } \\
    { r4 r4.. g,16 | e'2 ( d4) | }
  >>
  <c e>8. <d f>16( <c e>8.) <d f>16( <c e>8.) <f a>16(|
  \barNumberCheck #20
  <e g>2.)|
  <<
    { e8. f16 g2~ | g f8. e16 | d8. e16( d8.) f16( e8.) f16 |
      d2~d8. c16 | } \\
    { r4 r4.. g16 | b2 a8. g16 | f8 r f r g r | f2. | }
  >>
  \barNumberCheck #25
  <gis h>4 <h gis'> r8. g16 | h2_\accent( a4) |
  <fis a> <a fis'> r8. fis16 |
  a2( g4) | <d' fis>4 <e g>4.. <eis gis>16 |
  \barNumberCheck #30
  <fis a>2( <g h>4) |
  <g h>2( <cis, g'>4) | d2.~ | d4 d4.. cis16 | d2( d,4) |
  d' d4.. cis16 | d4.. s4 s16 \bar ":|"  |
}

lower = {
  \key g \major
  \clef bass
  r16^\mf  r4 |
  \repeat unfold 4 { <g, g> <g h d'> <g h d'> | }
  \barNumberCheck #5
  <g, g> <g c' e'> <g c' e'> | <fis, fis> <fis a d'> <fis a d'> |
  <d, d> <d fis a> <d fis a> | <d, d> <d fis a> r4 |
  <g, g> <d' h g> <d' h g> |
  \barNumberCheck #10
  <g, g> <g b cis' e'> <g b cis' e'> | <fis, fis> <fis a d'> <fis a d'> |
  <dis, dis> <dis fis a> <e g> | e, <e g> <e g> |
  a, <c e fis> <c e fis> |
  <<
    \barNumberCheck #15
    { r4 <e g h> <dis fis h> | r4 <g h> <g h> } \\
    \barNumberCheck #15
    { h,2 s4 | e2 s4 |}
  >>

  <<
    \barNumberCheck #17
    { r4 <f g h> <f g h> | } \\
    \barNumberCheck #17
    { d2. | }
  >>
  g,4 <f g h> <f g h> | c <e g c'> <e g c'> |
  \barNumberCheck #20
  c <e g c'> <e g c'> |
  <<
    { r4 <e g a> <e g a> | } \\
    { cis2. }
  >>
  a,4 <e g a> <e g a> |
  <<
    {
      r4 <f a> <g b> | r <f a> <f a> |
      \barNumberCheck #25
      r <f h> <f h> | r <e a> <e a> | r <es a> <es a> |
      r <d g> <d g> | r <d fis> <d fis> |
      \barNumberCheck #30
      r <d fis> <d fis> | r <e g> <e g> | r <fis a> <fis a> |
      r <g b> <g b> | r <gis h> <gis h> | r <g b> <g b> |
      r <fis a>8.
    } \\
    {
      d2.| d |
      \barNumberCheck #25
      d | cis | c | h,2 b,4 | a,2. |
      \barNumberCheck #30
      a, | a, | d | d | d |
      \barNumberCheck  #35
      d | d4.. s4 s16 \bar ":|" |
    }
  >>
}

\score {
  \new PianoStaff <<
      \set PianoStaff.instrumentName = #"No.2"
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
  >>
  \layout{
    \context { \Score
      \override MetronomeMark #'extra-offset = #'(-9 . 0)
      \override MetronomeMark #'padding = #'3
    }
  }
}
\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  }
  \midi {}
}
