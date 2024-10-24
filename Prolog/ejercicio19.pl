% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog rota una lista N lugares a la izquierda,
% manejando rotaciones mayores que la longitud de la lista.
% ===============================================
% === código en python ===
% # Rotar una lista N lugares a la izquierda
% def rotate(lst, n):
%     n = n % len(lst)
%     return lst[n:] + lst[:n]
% === código en prolog ===
% Predicado principal que se ejecuta al cargar el archivo.
ejercicio19 :-
    % Definir la lista de entrada y el número de posiciones a rotar.
    L = [a, b, c, d, e, f],
    N = 2,
    rotate(L, N, R),
    % Mostrar el resultado de la rotación.
    write('Lista original: '), write(L), nl,
    write('Lista rotada: '), write(R), nl.

% Rotar una lista N posiciones a la derecha.
rotate(L, N, R) :-
    length(L, Len),
    N1 is N mod Len,
    split(L, N1, L1, L2),
    append(L2, L1, R).

% Separar la lista en dos partes: L1 y L2.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :-
    N > 0,
    N1 is N - 1,
    split(T, N1, L1, L2).

% Ejecutar el predicado ejercicio19 al cargar el archivo.
:- ejercicio19.

