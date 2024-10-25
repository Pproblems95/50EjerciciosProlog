% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa construye un árbol binario completamente equilibrado con N nodos.
% Un árbol completamente equilibrado tiene subárboles cuya diferencia de tamaño es como máximo 1.

% Construye un árbol binario completamente equilibrado con N nodos.
cbal_tree(0, nil).
cbal_tree(N, t('x', L, R)) :- 
    N > 0, 
    N1 is N - 1, 
    divide(N1, N2, N3), 
    cbal_tree(N2, L), 
    cbal_tree(N3, R).

% Divide el número de nodos entre los dos subárboles.
divide(N, N1, N2) :- 
    N1 is N // 2, 
    N2 is N - N1.

% Función principal que se ejecuta sin interacción
ejercicio46 :-
    % Ejemplo: construir un árbol binario completamente equilibrado con 5 nodos
    N = 5,
    cbal_tree(N, Tree),
    write('Árbol completamente equilibrado con '), write(N), write(' nodos:'), nl,
    write(Tree), nl.
