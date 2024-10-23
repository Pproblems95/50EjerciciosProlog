% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog ordena una lista de listas de acuerdo con
% la longitud de las sublistas.
% ===============================================
% === código en python ===
% # Ordenar una lista de listas de acuerdo con la longitud de las sublistas
% def lsort(lst):
%     return sorted(lst, key=len)
% === código en prolog ===
% Ordena una lista de listas de acuerdo con la longitud de las sublistas.
lsort(L, S) :- map_list_to_pairs(length, L, P), keysort(P, SP), pairs_values(SP, S).

% Ejemplo de uso:
% ?- lsort([[a], [a, b], [a, b, c], [a, b, c, d]], Sorted).
% Sorted = [[a], [a, b], [a, b, c], [a, b, c, d]].