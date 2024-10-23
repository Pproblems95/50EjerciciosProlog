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

% Ejemplo de uso:
% ?- remove_at(X, [a, b, c, d], 3, Result).
% X = c,
% Result = [a, b, d].