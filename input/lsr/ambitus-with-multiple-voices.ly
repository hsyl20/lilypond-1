%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.62"

\header {
  lsrtags = "pitches, vocal-music"

  doctitlees = "Ámbitos con varias voces"
  texidoces = "
La adición del grabador @code{Ambitus_engraver} al contexto de
@code{Staff} crea un solo ámbito por pentagrama, incluso en el caso de
pentagramas con varias voces.

"

texidocde = "
Indem man den @code{Ambitus_engraver} im @code{Staff}-Kontext
hinzufügt, erhält man einen einzigen Ambitus pro System, auch in dem
Fall, dass mehrere Stimmen sich im gleichen System befinden.
"
  doctitlede = "Ambitus mit vielen Stimmen"

  texidoc = "
Adding the @code{Ambitus_engraver} to the @code{Staff} context creates
a single ambitus per staff, even in the case of staves with multiple
voices. 

"
  doctitle = "Ambitus with multiple voices"
} % begin verbatim
\new Staff \with {
  \consists "Ambitus_engraver"
  }
<<
  \new Voice \relative c'' {
    \voiceOne
    c4 a d e
    f1
  }
  \new Voice \relative c' {
    \voiceTwo
    es4 f g as
    b1
  }
>>

