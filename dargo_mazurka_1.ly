%{
  Nouvelles Mazurkas No.1 by A.Dargomizhky
  $Id$
%}
\include "deutsch.ly"
\header {
  title = "Nouvelles Mazurkas"
  composer = "A.Dargomizhky(1813-1869)"
}

#(set-global-staff-size 17)
% #0 - #8
partAupper = {
  <e  g>8.( <f a>16 |
  <e g>4) <c e>8.( <d f>16 <c e>4) |
  <e, c'>2
  <e' g>8.( <f a>16 | <e g>4) <c e>8.( <d f>16 <c e>4) |
  <<
    { d2( a8.) e'16 | d2( a8.) e'16 | } \\
    { fis,2. | fis2. }
  >>
  d'8. h16 g4 gis4~\trill | 
  <<
    { a(  \stemDown c'8.) a16(  \stemUp fis8.) d'16( |
      \stemNeutral g,4) <g h g'> } \\
    { s2 d4 | s2 }
  >>
}

partAlower = {
  r4 | \repeat unfold 3 { <c c'> <c' e g c> <c e g c> | }
  <c, c'> <c' fis a c> <c fis a c> | <c, c'> <c' fis a c> <c fis a c> 
  <h, h'> <h' d g> <h d f> | <c, c'> <c' e a> <d a' c> | <g h> <g, g'> 
}

% #8 - 15
partBupper = {
  fis8.( g16 | h8.) a16( c,4..) e16 | <h d>4( <h' d>) r8. h,16 |
  <<
    { r8. fis'16 g8. gis16 a8. ais16 | h4( g) } \\
    { c,2~ c8. cis16 | d2}
  >>
  fis8.( g16 | h8.) a16( c,4..) e16 | <h d>4( <h' d>) r8. <a c>16 |
  <<
    { h2~ h8. a16 | } \\
    { g8. e16 es8. d16 cis8. c16 |}
  >>
  <h g'>4 r4
}

partBlower = {
  r4 |
  \repeat unfold 2 { <h, d'> <d' fis a c> <d fis a c> |
    <g, g'> <g' h d> <g h d> |}
  <h,, d'> <d' fis a c> <d fis a c> |
  <g, g'> <g' h d> <c, e a> |
  <h, d'> <d' g h> <d a' c> |
  <g, g'> <g' h d>
}

partCupper = {
  r4
  \bar "||"
  <e g>8( <f a>) <e g>-.[ <e g>-.] <d f>-. <d f>-. |
  <c e>4 <c e c'>2 |
  <e g>8( <f a>) <e g>-.[ <e g>-.] <d f>-. <d f>-. |
  <c e>4 <e g c>2 |
  <f d'>8( <g e'>) <f d'>4-. <d h'>-. |
  <f d'>2->( <e c'>4) |
  <d h'>8( <c c'>) <d h'>4-. <h gis'>-. |
  <d h'>2->( <c a'>4) | 
  <e g>8( <f a>) <e g>-.[ <e g>-.] <d f>-. <d f>-. |
  <c e>4 <c e c'>2 |
  <c e>8( <d f>) <c e>-.[ <c e>-.] <h d>-. <h d>-. |
  <a c>4 <a c a'>2 |
  <e' g>8( <f a>) <e g>4-. <c e>-. |
  <e g>2->( <d f>4) |
  g,8. <fis a>16 <f h>4 <f d'> | <e c'> r4 
  \bar "|."
}

partClower = {
  r4
  \bar "||"
  \repeat unfold 4 {<c,, c'> <c' e g c> <c e g c> | }
  <g g'> <g' d' f> <g d' f> |
  <c, c'> <g' c e> <g c e> |
  <e, e'> <e' h' d> <e h' d> |
  <a, a'> <a' c e> <a c e> |
  <c,, c'> <c' e g c> <c e g c> |
  <c, c'> <c' e g c> <c e g c> |
  <a, a'> <a' c e a> <a c e a> |
  <fis, fis'> <fis' a c es> <fis a c es> |
  <g, g'> <g'' c e> <g c e> |
  <g, g'> <g' h d> <g h d> |
  <g, g'> <g' h d> <g h d> |
  <c,, c'>
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . -10)
  \mark \markup { \bold \italic "D.C." }
  <c' e g c>
}


upper = \relative e'' {
  \once \override Score.RehearsalMark #'break-align-symbol = #'time-signature
  \once \override Score.RehearsalMark #'extra-offset = #'(16 . 2)
  \time 3/4
  \key c \major
  \tempo 4 = 120 
  \mark \markup { \bold { "Allegro moderato"}}
  \partial 4
  \repeat volta 2 \partAupper
  \repeat volta 2 \partBupper
  \partAupper
  \partCupper
}

lower = \relative c, {
  \clef bass
  \repeat volta 2 \partAlower
  \repeat volta 2 \partBlower
  \relative c, \partAlower
  \partClower
  
}

\score {
  \new PianoStaff <<
      \set PianoStaff.instrumentName = #"No.1"
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
  >>
  \layout{
    \context { \Score
      \override MetronomeMark #'extra-offset = #'(-9 . 0)
      \override MetronomeMark #'padding = #'3
    }
  }
  \midi {}
}
