\include "header.ly"

upper = \relative e' {
  \time 3/4
  \key a \major
  \partial 4
  {e4( | cis'8. d16 <d, gis h>4 <d gis h> | <d gis h>2) }
}

lower = \relative e {
  \clef bass
  \key a \major
  { r4 | e <e e'> <e e'> | <e e'>2}
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi {}
  \layout {}
}
