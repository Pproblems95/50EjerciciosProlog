% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog agrupa los elementos de un conjunto en
% subconjuntos disjuntos dados los tamaños de los subgrupos.
% ===============================================
% === código en python ===
% # Agrupar los elementos de un conjunto en subconjuntos disjuntos
% from itertools import combinations
% def group(sizes, elements):
%     def recursive_group(sizes, elements):
%         if not sizes: return []
%         size = sizes[0]
%         comb = list(combinations(elements, size))
%         rest = [x for x in elements if x not in comb[0]]
%         return [comb[0]] + recursive_group(sizes[1:], rest)
%     return recursive_group(sizes, elements)
% === código en prolog ===
ejercicio27 :-
    % Definir la lista de tamaños de grupos y la lista de elementos.
    GroupSizes = [2, 1],  % Tamaños de los grupos.
    Elements = [a, b, c],  % Lista de elementos a agrupar.
    group(GroupSizes, Elements, Groups),
    % Mostrar el resultado.
    write('Grupos formados: '), write(Groups), nl.

% Agrupa elementos de la lista en grupos de tamaños dados.
group([], [], []).
group([N|Ns], Es, [G|Gs]) :- 
    combination(N, Es, G), 
    subtract(Es, G, Rest), 
    group(Ns, Rest, Gs).

% Define la combinación de elementos.
combination(0, _, []).
combination(K, [H|T], [H|Comb]) :- K > 0, K1 is K - 1, combination(K1, T, Comb).
combination(K, [_|T], Comb) :- K > 0, combination(K, T, Comb).
