% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog inserta un elemento en una lista en la
% posición dada. El índice K debe ser mayor que 0.
% ===============================================
% === código en python ===
% # Insertar un elemento en una lista en una posición dada
% def insert_at(x, lst, k):
%     return lst[:k-1] + [x] + lst[k-1:]
% === código en prolog ===
% Inserta un elemento en una lista en la posición dada.
insert_at(X, L, 1, [X|L]).
insert_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, insert_at(X, T, K1, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio21 :-
    % Definir la lista de entrada, el elemento a insertar y la posición.
    L = [a, b, c, d],
    X = z,  % Elemento a insertar.
    K = 2,  % Posición donde se inserta el elemento.
    insert_at(X, L, K, R),
    % Mostrar el resultado.
    write('Lista original: '), write(L), nl,
    write('Elemento a insertar: '), write(X), nl,
    write('Lista resultante: '), write(R), nl.

% Ejecutar el predicado ejercicio21 al cargar el archivo.
:- ejercicio21.

