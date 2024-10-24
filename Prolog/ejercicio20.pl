% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog elimina el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
% ===============================================
% === código en python ===
% # Eliminar el k-ésimo elemento de una lista
% def remove_at(lst, k):
%     return lst[:k-1] + lst[k:]
% === código en prolog ===
% Elimina el k-ésimo elemento de una lista.
remove_at(X, [X|T], 1, T).
remove_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, remove_at(X, T, K1, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio20 :-
    % Definir la lista de entrada y la posición del elemento a eliminar.
    L = [a, b, c, d, e, f],
    K = 3,  % Posición del elemento a eliminar.
    remove_at(X, L, K, R),
    % Mostrar el resultado.
    write('Lista original: '), write(L), nl,
    write('Elemento eliminado: '), write(X), nl,
    write('Lista resultante: '), write(R), nl.

% Ejecutar el predicado ejercicio20 al cargar el archivo.
:- ejercicio20.

