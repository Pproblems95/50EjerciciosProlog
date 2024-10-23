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
% ?- slice([a, b, c, d, e], 2, 4, Result).
% Result = [b, c, d].