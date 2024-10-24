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
ejercicio28 :-
    % Definir la lista de listas a ordenar.
    ListOfLists = [[a, b], [c], [d, e, f], [g, h]],
    lsort(ListOfLists, SortedLists),
    % Mostrar el resultado.
    write('Listas ordenadas por longitud: '), write(SortedLists), nl.

% Ordena una lista de listas según su longitud.
lsort(L, S) :-
    map_list_to_pairs(length, L, P),  % Mapea las listas a pares de longitud y lista.
    keysort(P, SP),                   % Ordena los pares por longitud.
    pairs_values(SP, S).  
