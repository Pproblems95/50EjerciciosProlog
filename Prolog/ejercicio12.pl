% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog decodifica una lista que contiene elementos en formato (N, X),
% donde N es el número de repeticiones de X. El resultado es una lista expandida con los elementos repetidos.
% ===============================================
% === código en python ===
% def decode(encoded):
%     result = []
%     for count, item in encoded:
%         result.extend([item] * count)
%     return result
% === código en prolog ===
decode([], []).
decode([[N,X]|T], R) :- decode(T, R1), expand(X, N, E), append(E, R1, R).

% Expande un elemento X en una lista de longitud N.
expand(_, 0, []).
expand(X, N, [X|T]) :- N > 0, N1 is N - 1, expand(X, N1, T).

% Ejemplo de uso:
% ?- decode([[2, a], [1, b], [3, c]], Result).
% Result = [a, a, b, c, c, c].