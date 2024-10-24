% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog elimina cada n-ésimo elemento de una lista.
% Utiliza un contador para determinar cuándo eliminar un elemento.
% ===============================================
% === código en python ===
% # Eliminar cada n-ésimo elemento de una lista
% def drop(lst, n):
%     return [x for i, x in enumerate(lst, 1) if i % n != 0]
% === código en prolog ===
% Elimina cada n-ésimo elemento de una lista.
drop(L, N, R) :- drop(L, N, N, R).

% Caso base: cuando la lista está vacía, el resultado es vacío.
drop([], _, _, []).
% Si el contador llega a 1, omite el primer elemento y reinicia el contador.
drop([_|T], 1, N, R) :- drop(T, N, N, R).
% Caso recursivo: disminuye el contador y conserva el elemento.
drop([H|T], K, N, [H|R]) :- K > 1, K1 is K - 1, drop(T, K1, N, R).

% Ejemplo de uso:
% ?- drop([a, b, c, d, e, f, g], 3, Result).
% Result = [a, b, d, e, g].% Elimina cada N-ésimo elemento de una lista.
drop(L, N, R) :- drop(L, N, N, R).

% Caso base: cuando la lista está vacía, el resultado es vacío.
drop([], _, _, []).
% Si el contador llega a 1, omite el primer elemento y reinicia el contador.
drop([_|T], 1, N, R) :- drop(T, N, N, R).
% Caso recursivo: disminuye el contador y conserva el elemento.
drop([H|T], K, N, [H|R]) :- K > 1, K1 is K - 1, drop(T, K1, N, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio16 :-
    Input = [a, b, c, d, e, f, g, h, i, j],  % Cambia la lista para probar diferentes casos
    N = 3,  % Número de elementos a omitir
    drop(Input, N, Result),
    format('La lista resultante de eliminar cada ~d-ésimo elemento de ~w es ~w.~n', [N, Input, Result]).

% Ejecutar el predicado ejercicio16 al cargar el archivo.
:- ejercicio16.
