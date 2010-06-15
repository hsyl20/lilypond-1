%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "expressive-marks, tweaks-and-overrides"

%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
Si necesitamos alargar o acortar un símbolo de arpegio, podemos
modificar independientemente los extremos superior e inferior.

"
  doctitlees = "Posicionar símbolos de arpegio"



  texidoc = "
If you need to extend or shorten an arpeggio, you can modify the upper
and lower start positions independently.

"
  doctitle = "Positioning arpeggios"
} % begin verbatim

\relative c' {
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 0)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(0 . 5)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 5)
  <c e g b>1\arpeggio
}
