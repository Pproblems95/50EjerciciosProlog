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
% Crea una lista con todos los enteros dentro de un rango dado.
range(I, I, [I]).
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).

% Extrae N números aleatorios de una lista.
rnd_select(_, 0, []).  % Caso base: no selecciona nada.
rnd_select(L, N, [X|R]) :- 
    length(L, Len), 
    random(1, Len, I), 
    element_at(X, L, I), 
    delete(L, X, L1), 
    N1 is N - 1, 
    rnd_select(L1, N1, R).

% Obtener el elemento en la posición I de la lista L.
element_at(X, L, I) :- 
    nth1(I, L, X).

% Extrae N números aleatorios de un rango dado.
lotto(N, M, L) :- 
    range(1, M, R), 
    rnd_select(R, N, L).

% Ejemplo de uso del lotto.
ejercicio24 :-
    N = 6,  % Número de elementos a seleccionar.
    M = 49, % Rango máximo (1 a M).
    lotto(N, M, L),
    % Mostrar el resultado.
    write('Números sorteados: '), write(L), nl.

% Ejecutar el predicado ejercicio24 al cargar el archivo.
:- ejercicio24.

