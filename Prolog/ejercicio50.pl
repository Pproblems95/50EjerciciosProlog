% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa construye un árbol binario equilibrado en altura.
% Un árbol equilibrado en altura tiene subárboles cuya diferencia de altura es como máximo 1.

% Construye un árbol binario equilibrado en altura con una altura dada.
hbal_tree(0, nil).
hbal_tree(H, t('x', L, R)) :- 
    H > 0,
    H1 is H - 1,
    H2 is H - 1, % Cambiar H2 a H1 - 1 para asegurar balanceo
    hbal_tree(H1, L),
    hbal_tree(H2, R).

% Función principal que se ejecuta sin interacción
ejercicio50 :-
    % Ejemplo: construye un árbol binario equilibrado en altura con altura 3
    Altura = 3,
    hbal_tree(Altura, Arbol),
    write('Árbol binario equilibrado en altura con altura '), write(Altura), nl,
    write(Arbol), nl.
