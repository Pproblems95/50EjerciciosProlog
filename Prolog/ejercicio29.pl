% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog ordena una lista de listas de acuerdo con
% la frecuencia de la longitud de las sublistas.
% ===============================================
% === código en python ===
% # Ordenar una lista de listas según la frecuencia de la longitud
% from collections import Counter
% def length_frequency(lst):
%     lengths = [len(sublist) for sublist in lst]
%     freq = Counter(lengths)
%     return sorted(lst, key=lambda x: freq[len(x)])
% === código en prolog ===
% Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
length_frequency(L, F) :- map_list_to_pairs(length, L, P), msort(P, SP), encode(SP, F).

% Ejemplo de uso:
% ?- length_frequency([[a, b], [c], [d, e, f], [g], [h, i]], F).
% F = [[c], [g], [a, b], [h, i], [d, e, f]].