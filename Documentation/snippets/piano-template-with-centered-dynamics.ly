% Do not edit this file; it is automatically
% generated from Documentation/snippets/new
% This file is in the public domain.
%% Note: this file works from version 2.13.4
\version "2.13.20"

\header {
%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
Muchas partituras de piano tienen las indicaciones dinámicas centradas
entre los dos pentagramas.  El contexto @code{Dynamics}, si se sitúa
entre pentagramas, coloca los matices dinámicos correctamente de forma
automática.

"
  doctitlees = "Plantilla de piano con matices centrados"


%% Translation of GIT committish: fa1aa6efe68346f465cfdb9565ffe35083797b86
  texidocja = "
多くのピアノ譜は、強弱記号を 2 つの譜の間に置きます。これを実現するにはちょっ@c
とした調整が必要ですが、そのテンプレートがここにあるので、あなた自身が調整を行@c
う必要はありません。
"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
In der meisten Klaviernotation werden die Dynamikzeichen zwischen
den beiden Systemen zentriert. Für LilyPond muss man die Einstellungen
etwas anpassen, aber Sie können ja das angepasste Beispiel von hier
kopieren.
"


%% Translation of GIT committish: ceb0afe7d4d0bdb3d17b9d0bff7936bb2a424d16
  texidocfr = "
Nombre d'ouvrages pour piano font apparaître les nuances entre les deux
portées.  Bien que cela nécessite quelques subtilités, voici de quoi
obtenir un tel résultat.

"
  doctitlefr = "Piano et nuances entre les portées"

  lsrtags = "expressive-marks, keyboards, template"
  texidoc = "
Many piano scores have the dynamics centered between the two staves.
The @code{Dynamics} context, if placed between staves, will
automatically position dynamics correctly.

"
  doctitle = "Piano template with centered dynamics"
} % begin verbatim


global = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  a4 b c d
}

lower = \relative c {
  \clef bass
  a2 c
}

dynamics = {
  s2\fff\> s4 s\!\pp
}

pedal = {
  s2\sustainOn s\sustainOff
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "Staff_pfLower" << \global \lower >>
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \global \lower \dynamics \pedal >>
  >>
  \midi { }
}
