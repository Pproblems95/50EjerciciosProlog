% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog duplica los elementos de una lista N veces.
% La lista vacía se mantiene vacía y cada elemento de la lista se repite N veces en el resultado.
% ===============================================
% === código en python ===
% def dupli(lst, n):
%     result = []
%     for item in lst:
%         result.extend([item] * n)
%     return result
% === código en prolog ===
dupli([], _, []).
dupli([H|T], N, R) :- duplicate(H, N, D), dupli(T, N, R1), append(D, R1, R).

% Crea una lista con N repeticiones del elemento X.
duplicate(_, 0, []).
duplicate(X, N, [X|R]) :- N > 0, N1 is N - 1, duplicate(X, N1, R).

% Ejemplo de uso:
% ?- dupli([a, b, c], 3, Result).
% Result = [a, a, a, b, b, b, c, c, c].