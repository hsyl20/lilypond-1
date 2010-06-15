%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "text, vocal-music"

%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
La alineación horizontal de la letra se puede ajustar sobreescribiendo
la propiedad @code{self-alignment-X} del objeto @code{LyricText}.
@code{#-1} es izquierda, @code{#0} es centrado y @code{#1} es derecha;
sin embargo, puede usar también @code{#LEFT}, @code{#CENTER} y
@code{#RIGHT}.

"
  doctitlees = "Alineación de la letra"

  texidoc = "
Horizontal alignment for lyrics cam be set by overriding the
@code{self-alignment-X} property of the @code{LyricText} object.
@code{#-1} is left, @code{#0} is center and @code{#1} is right;
however, you can use @code{#LEFT}, @code{#CENTER} and @code{#RIGHT} as
well.

"
  doctitle = "Lyrics alignment"
} % begin verbatim

\layout { ragged-right = ##f }
\relative c'' {
  c1
  c1
  c1
}
\addlyrics {
  \once \override LyricText #'self-alignment-X = #LEFT
  "This is left-aligned"
  \once \override LyricText #'self-alignment-X = #CENTER
  "This is centered"
  \once \override LyricText #'self-alignment-X = #1
  "This is right-aligned"
}

