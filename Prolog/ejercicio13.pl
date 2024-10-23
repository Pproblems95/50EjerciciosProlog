% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog codifica una lista de forma directa,
% contando los elementos consecutivos iguales y representándolos en formato (N, X), donde N es el número de repeticiones.
% ===============================================
% === código en python ===
% def encode_direct(lst):
%     if not lst:
%         return []
%     
%     count = 1
%     result = []
%     for i in range(1, len(lst)):
%         if lst[i] == lst[i - 1]:
%             count += 1
%         else:
%             result.append([count, lst[i - 1]])
%             count = 1
%     # Agregar el último grupo
%     result.append([count, lst[-1]])
%     return result
% === código en prolog ===
encode_direct([], []).
encode_direct([X|Xs], [[N,X]|R]) :- count(X, [X|Xs], N, Rest), encode_direct(Rest, R).

% Cuenta cuántos elementos consecutivos son iguales.
count(_, [], 0, []).
count(X, [X|Xs], N, Rest) :- count(X, Xs, N1, Rest), N is N1 + 1.
count(X, [Y|Ys], 0, [Y|Ys]) :- X \= Y.

% Ejemplo de uso:
% ?- encode_direct([a, a, b, c, c, c, d], Result).
% Result = [[2, a], [1, b], [3, c], [1, d]].