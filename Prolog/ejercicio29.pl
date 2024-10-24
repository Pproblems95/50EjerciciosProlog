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
% Predicado principal para calcular la frecuencia de las longitudes de las listas.
ejercicio29 :-
    % Definir la lista de listas para calcular la frecuencia.
    ListOfLists = [[a, b], [c], [d, e, f], [g], [h, i]],
    length_frequency(ListOfLists, Frequency),
    % Mostrar el resultado.
    write('Frecuencia de longitudes: '), write(Frequency), nl.

% Calcula la frecuencia de las longitudes de las listas en una lista.
length_frequency(L, F) :-
    map_list_to_pairs(length, L, P),  % Mapea las listas a pares de longitud.
    msort(P, SP),                     % Ordena los pares por longitud.
    encode(SP, F).

% Predicado para contar las frecuencias de los elementos consecutivos.
encode([], []).
encode([Len-_|T], [Len-Count|R]) :-
    count_occurrences(Len, [Len-_|T], Count, Rest), % Cuenta las ocurrencias de Len.
    encode(Rest, R).

% Cuenta las ocurrencias de un elemento en una lista.
count_occurrences(_, [], 0, []).
count_occurrences(Len, [Len-_|T], Count, Rest) :-
    count_occurrences(Len, T, Count1, Rest),
    Count is Count1 + 1.
count_occurrences(Len, [X|T], 0, [X|T]) :-
    Len \= X.

