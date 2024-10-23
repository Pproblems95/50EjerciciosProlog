% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog crea una lista con todos los enteros
% dentro de un rango dado.
% ===============================================
% === código en python ===
% # Crear una lista con todos los enteros dentro de un rango dado
% def range_list(i, k):
%     return list(range(i, k+1))
% === código en prolog ===
% Crea una lista con todos los enteros dentro de un rango dado.
range(I, I, [I]).
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).

% Ejemplo de uso:
% ?- range(3, 7, Result).
% Result = [3, 4, 5, 6, 7].