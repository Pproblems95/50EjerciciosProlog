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
% Agrupa los elementos de un conjunto en subconjuntos disjuntos dados los tamaños de los subgrupos.
group([], [], []).
group([N|Ns], Es, [G|Gs]) :- combination(N, Es, G), subtract(Es, G, Rest), group(Ns, Rest, Gs).

% Ejemplo de uso:
% ?- group([2, 3], [a, b, c, d, e], Result).
% Result = [[a, b], [c, d, e]].
