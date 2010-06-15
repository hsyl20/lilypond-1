%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "simultaneous-notes"

%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
Al utilizar la posibilidad de combinación automática de partes, se
puede modificar el texto que se imprime para las secciones de solo
y de unísono:

"
  doctitlees = "Cambiar los textos de partcombine"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wenn Stimmen automatisch kombiniert werden, kann der Text, der für
Solo- und Unisono-Stellen ausgegeben wird, geändert werden:

"
  doctitlede = "Partcombine-Text ändern"

%% Translation of GIT committish: 1baa2adf57c84e8d50e6907416eadb93e2e2eb5c
  texidocfr = "
Lorsque vous regroupez automatiquement des parties, vous pouvez
modifier le texte qui sera affiché pour les solos et pour les parties à
l'unisson :

"
  doctitlefr = "Modification des indications de parties combinées"


  texidoc = "
When using the automatic part combining feature, the printed text for
the solo and unison sections may be changed:

"
  doctitle = "Changing partcombine texts"
} % begin verbatim

\new Staff <<
  \set Staff.soloText = #"girl"
  \set Staff.soloIIText = #"boy"
  \set Staff.aDueText = #"together"
  \partcombine
    \relative c'' {
      g4 g r r
      a2 g
    }
    \relative c'' {
      r4 r a( b)
      a2 g
    }
>>

