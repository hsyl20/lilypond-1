% Do not edit this file; it is automatically
% generated from Documentation/snippets/new
% This file is in the public domain.
%% Note: this file works from version 2.13.4
\version "2.13.20"

\header {
%% Translation of GIT committish: e0aa246e0ed1a86dc41a99ab79bff822d3320aa7
  texidoces = "
Las reglas de final de barra especificadas en el contexto
@code{Score} se aplican a todos los pentagramas, pero se pueden
modificar tanto en los niveles de @code{Staff} como de
@code{Voice}:

"
  doctitlees = "Finales de barra en el contexto Score"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Balkenenderegeln, die im @code{Score}-Kontext definiert werden, wirken
sich auf alle Systeme aus, können aber auf @code{Staff}- und
@code{Voice}-Ebene neu verändert werden:

"
  doctitlede = "Balkenenden auf Score-Ebene"



%% Translation of GIT committish: 374d57cf9b68ddf32a95409ce08ba75816900f6b
  texidocfr = "
Les règles de ligatures définies au niveau du contexte @code{Score}
s'appliqueront à toutes les portées.  Il est toutefois possible de
moduler au niveau @code{Staff} ou @code{Voice} :

"
  doctitlefr = "Définition de règles de ligature pour la partition"

  lsrtags = "rhythms"
  texidoc = "
Beam-ending rules specified in the @code{Score} context apply to all
staves, but can be modified at both @code{Staff} and @code{Voice}
levels:
"
  doctitle = "Beam endings in Score context"
} % begin verbatim


\relative c'' {
  \time 5/4
  % Set default beaming for all staves
  \overrideBeamSettings #'Score #'(5 . 4) #'end
     #'(((1 . 8) . (3 4 3))
        ((1 . 16) . (6 8 6))
        ((1 . 32) . (12 16 12)))
  <<
    \new Staff {
      c8 c c c c c c c c c
    }
    \new Staff {
      % Modify beaming for just this staff
      \overrideBeamSettings #'Staff #'(5 . 4) #'end
        #'((* . (3 2)))
      c8 c c c c c c c c c
    }
    \new Staff {
      % Inherit beaming from Score context
      <<
        {
          \voiceOne
          c8 c c c c c c c c c
        }
        % Modify beaming for this voice only
        \new Voice {
          \voiceTwo
          \overrideBeamSettings #'Voice #'(5 . 4) #'end
              #'((* . (3 2)))
          a8 a a a a a a a a a
        }
      >>
    }
  >>
}
