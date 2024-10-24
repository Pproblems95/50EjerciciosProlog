% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog divide una lista en dos partes,
% siendo el tamaño de la primera parte el indicado por el segundo argumento.
% ===============================================
% === código en python ===
% # Dividir una lista en dos partes
% def split(lst, n):
%     return lst[:n], lst[n:]
% === código en prolog ===
% Divide una lista en dos partes.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :- N > 0, N1 is N - 1, split(T, N1, L1, L2).

% Ejemplo de uso:
% ?- split([a, b, c, d, e], 3, L1, L2).
% L1 = [a, b, c],
% L2 = [d, e].% Divide una lista en dos partes: los primeros N elementos y el resto.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :- N > 0, N1 is N - 1, split(T, N1, L1, L2).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio17 :-
    Input = [a, b, c, d, e, f, g, h, i, j],  % Cambia la lista para probar diferentes casos
    N = 4,  % Número de elementos a dividir
    split(Input, N, Part1, Part2),
    format('La lista original es ~w, la primera parte es ~w y la segunda parte es ~w.~n', [Input, Part1, Part2]).

% Ejecutar el predicado ejercicio17 al cargar el archivo.
:- ejercicio17.
