\include "header.ly"

upper = \relative e' {
  \time 3/4
  \key a \major
  { e }
}

lower = \relative e' {
  \clef bass
  \key a \major
  { r}
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi {}
  \layout {}
}
