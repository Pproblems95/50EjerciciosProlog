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
% Rota una lista N lugares a la izquierda.
rotate(L, N, R) :- length(L, Len), N1 is N mod Len, split(L, N1, L1, L2), append(L2, L1, R).

% Ejemplo de uso:
% ?- rotate([a, b, c, d, e], 2, Result).
% Result = [c, d, e, a, b].