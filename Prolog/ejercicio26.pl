% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog genera todas las combinaciones de K elementos
% seleccionados de una lista dada.
% ===============================================
% === código en python ===
% # Generar combinaciones de K elementos distintos seleccionados de una lista
% import itertools
% def combination(k, lst):
%     return list(itertools.combinations(lst, k))
% === código en prolog ===
ejercicio26 :-
    % Definir la lista y el número de elementos a combinar.
    K = 2,  % Número de elementos en la combinación.
    L = [a, b, c, d],  % Lista de elementos.
    combination(K, L, Comb),
    % Mostrar el resultado.
    write('Combinaciones de '), write(K), write(' elementos: '), write(Comb), nl.

% Genera combinaciones de K elementos de la lista.
combination(0, _, []).
combination(K, [H|T], [H|Comb]) :- K > 0, K1 is K - 1, combination(K1, T, Comb).
combination(K, [_|T], Comb) :- K > 0, combination(K, T, Comb).
