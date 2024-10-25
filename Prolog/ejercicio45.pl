% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa verifica si un término dado representa un árbol binario.
% Un árbol binario está compuesto por un nodo raíz y dos subárboles. 

% Verifica si un término dado representa un árbol binario
istree(nil).
istree(t(_, L, R)) :- istree(L), istree(R).

% Función principal que se ejecuta sin interacción
ejercicio45 :-
    % Ejemplo: verificar si un término dado es un árbol binario
    T1 = t(a, t(b, nil, nil), t(c, nil, nil)), % Árbol binario
    T2 = t(a, t(b, nil, nil), c),              % No es un árbol binario
    (istree(T1) -> write('T1 es un árbol binario.'), nl ; write('T1 no es un árbol binario.'), nl),
    (istree(T2) -> write('T2 es un árbol binario.'), nl ; write('T2 no es un árbol binario.'), nl).
