% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa comprueba si un árbol binario es simétrico.
% Un árbol es simétrico si sus subárboles izquierdo y derecho son espejos entre sí.

% Comprueba si un árbol binario es simétrico.
symmetric(nil).
symmetric(t(_, L, R)) :- mirror(L, R).

% Verifica si un árbol es el espejo de otro.
mirror(nil, nil).
mirror(t(_, L1, R1), t(_, L2, R2)) :- mirror(L1, R2), mirror(R1, L2).

% Función principal que se ejecuta sin interacción
ejercicio47 :-
    % Ejemplo de árbol simétrico y prueba de simetría
    Tree = t('x', t('y', nil, t('z', nil, nil)), t('y', t('z', nil, nil), nil)),
    (symmetric(Tree) ->
        write('El árbol es simétrico.'), nl;
        write('El árbol no es simétrico.'), nl).
