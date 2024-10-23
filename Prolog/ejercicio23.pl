% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog extrae un número dado de elementos
% aleatorios de una lista, utilizando un generador de números aleatorios.
% ===============================================
% === código en python ===
% # Extraer un número dado de elementos aleatorios de una lista
% import random
% def rnd_select(lst, n):
%     return random.sample(lst, n)
% === código en prolog ===
% Extrae un número dado de elementos aleatorios de una lista.
rnd_select(_, 0, []).
rnd_select(L, N, [X|R]) :- length(L, Len), random(1, Len, I), element_at(X, L, I), delete(L, X, L1), N1 is N - 1, rnd_select(L1, N1, R).

% Ejemplo de uso:
% ?- rnd_select([a, b, c, d, e], 3, Result).
% Result = [b, d, a].
Programa 4: Extraer N números aleatorios de un rango dado
prolog
Copy code
% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog extrae N números aleatorios de un rango
% dado utilizando la función range para generar la lista de números.
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