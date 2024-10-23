% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog duplica los elementos de una lista.
% La lista vacía se mantiene vacía y cada elemento de la lista se repite dos veces en el resultado.
% ===============================================
% === código en python ===
% def dupli(lst):
%     return [item for item in lst for _ in range(2)]
% === código en prolog ===
dupli([], []).
dupli([H|T], [H,H|R]) :- dupli(T, R).

% Ejemplo de uso:
% ?- dupli([a, b, c], Result).
% Result = [a, a, b, b, c, c].