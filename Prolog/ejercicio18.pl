% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog extrae una porción de una lista,
% dado un rango de índices I y K, ambos mayores que 0.
% ===============================================
% === código en python ===
% # Extraer una porción de una lista dado un rango
% def slice(lst, i, k):
%     return lst[i-1:k]
% === código en prolog ===
% Extrae una porción de una lista, dado un rango.
slice([H|_], 1, 1, [H]).
slice([H|T], 1, K, [H|R]) :- K > 1, K1 is K - 1, slice(T, 1, K1, R).
slice([_|T], I, K, R) :- I > 1, I1 is I - 1, K1 is K - 1, slice(T, I1, K1, R).

% Ejemplo de uso:
% ?- slice([a, b, c, d, e], 2, 4, Result).% Extrae una sublista de longitud K a partir del índice I.
slice([H|_], 1, 1, [H]).
slice([H|T], 1, K, [H|R]) :- K > 1, K1 is K - 1, slice(T, 1, K1, R).
slice([_|T], I, K, R) :- I > 1, I1 is I - 1, K1 is K - 1, slice(T, I1, K1, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio18 :-
    Input = [a, b, c, d, e, f, g, h, i, j],  % Cambia la lista para probar diferentes casos
    I = 3,  % Índice inicial
    K = 4,  % Longitud de la sublista
    slice(Input, I, K, Sublist),
    format('La lista original es ~w, el índice inicial es ~w, la longitud es ~w y la sublista es ~w.~n', [Input, I, K, Sublist]).

% Ejecutar el predicado ejercicio18 al cargar el archivo.
:- ejercicio18.% Result = [b, c, d].
