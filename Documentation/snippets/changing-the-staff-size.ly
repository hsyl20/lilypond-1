%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "staff-notation, tweaks-and-overrides, paper-and-layout"

  texidoc = "
Though the simplest way to resize staves is to use
@code{#(set-global-staff-size xx)}, an individual staff's size can be
changed by scaling the properties @code{'staff-space} and
@code{fontSize}.

"
  doctitle = "Changing the staff size"
} % begin verbatim

<<
  \new Staff {
    \relative c'' {
      \dynamicDown
      c8\ff c c c c c c c
    }
  }
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol #'staff-space = #(magstep -3)
  } {
    \clef bass
    c8 c c c c\f c c c
  }
>>

