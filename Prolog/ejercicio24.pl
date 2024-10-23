% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog extrae N números aleatorios de un rango dado,
% utilizando la función range para generar la lista de números.
% ===============================================
% === código en python ===
% # Extraer N números aleatorios de un rango dado
% import random
% def lotto(n, m):
%     return random.sample(range(1, m+1), n)
% === código en prolog ===
% Extrae N números aleatorios de un rango dado.
lotto(N, M, L) :- range(1, M, R), rnd_select(R, N, L).

% Ejemplo de uso:
% ?- lotto(6, 49, Result).
% Result = [17, 5, 34, 22, 1, 29].