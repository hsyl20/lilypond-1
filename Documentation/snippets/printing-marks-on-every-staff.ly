%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "text"

%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
Aunque normalmente las marcas de texto sólo se imprimen sobre el
pentagrama superior, también se pueden imprimir en otro pentagrama
cualquiera.

"
  doctitlees = "Imprimir marcas en cualquier pentagrama"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Normalerweise werden Textzeichen nur über dem obersten Notensystem gesetzt.  Sie
können aber auch über jedem System ausgegeben werden.

"
  doctitlede = "Zeichen über jedem System ausgeben"

%% Translation of GIT committish: 548ef200973bd3d46ea75c5498461d9e5f168334
  texidocfr = "
Bien que ces indications textuelles ne soient habituellement imprimées
qu'au niveau de la portée supérieure, vous pouvez forcer leur
affectation à chacune des portées.

"
  doctitlefr = "Impression des indications sur toutes les portées d'un système"


  texidoc = "
Although text marks are normally only printed above the topmost staff,
they may also be printed on every staff.

"
  doctitle = "Printing marks on every staff"
} % begin verbatim

\score {
  <<
    \new Staff { c''1 \mark "molto" c'' }
    \new Staff { c'1 \mark "molto" c' }
  >>
  \layout {
    \context {
      \Score
      \remove "Mark_engraver"
      \remove "Staff_collecting_engraver"
    }
    \context {
      \Staff
      \consists "Mark_engraver"
      \consists "Staff_collecting_engraver"
    }
  }
}

