\version "2.19.21"
\header {
  texidoc="Festival song synthesis output supports
skips.
"
}
\include "festival.ly"

\festival #"song-skip.xml" { \tempo 4 = 100 }
\relative { c' c g' }
\addlyrics {
  twin -- \skip 4
  kle
}
#(ly:progress "song-skip")
#(ly:progress "~a" (ly:gulp-file "song-skip.xml"))
