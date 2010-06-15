% Do not edit this file; it is automatically
% generated from Documentation/snippets/new
% This file is in the public domain.
%% Note: this file works from version 2.13.4
\version "2.13.20"

\header {
%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
La dirección de las plicas se contola de la misma forma en la
tablatura que en la notación tradicional. Las barras se pueden
poner horizontales, como se muestra en este ejemplo.

"
  doctitlees = "Comportamiento de las plicas y las barras de corchea en tablaturas"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Die Richtung von Hälsen wird in Tabulaturen genauso wie in normaler Notation
eingestellt.  Balken können horizontal eingestellt werden, wie das Beispiel
zeigt.

"
  doctitlede = "Hals- und Balkenverhalten in einer Tabulatur"

%% Translation of GIT committish: 718fa63a806b2ae307f320e250bc83236e9cd136

  texidocfr = "
La direction des hampes se gère dans les tablatures tout comme en
notation traditionnelle.  Les ligatures peuvent être mises à l'horizontale
comme le montre cet exemple.

"
  doctitlefr = "Hampes et ligatures en mode tablature"


  lsrtags = "fretted-strings"
  texidoc = "
The direction of stems is controlled the same way in tablature as in
traditional notation.  Beams can be made horizontal, as shown in this
example.
"
  doctitle = "Stem and beam behavior in tablature"
} % begin verbatim


\new TabStaff {
  \relative c {
    \tabFullNotation
    g16 b d g b d g b
    \stemDown
    \override Beam #'damping = #+inf.0
    g,,16 b d g b d g b
  }
}
