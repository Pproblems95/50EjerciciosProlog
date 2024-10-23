% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog genera una permutación aleatoria de los 
% elementos de una lista utilizando la selección aleatoria.
% ===============================================
% === código en python ===
% # Generar una permutación aleatoria de los elementos de una lista
% import random
% def rnd_permu(lst):
%     return random.sample(lst, len(lst))
% === código en prolog ===
% Genera una permutación aleatoria de los elementos de una lista.
rnd_permu(L, P) :- length(L, Len), rnd_select(L, Len, P).

% Ejemplo de uso:
% ?- rnd_permu([a, b, c, d], P).
% P = [d, a, c, b].