
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
:- discontiguous range/3.
:- discontiguous rnd_select/3.
:- discontiguous lotto/3.

% Predicado para seleccionar N elementos aleatorios de la lista L.
ejercicio23 :-
    % Definir la lista y el número de elementos a seleccionar.
    L = [a, b, c, d, e, f, g, h, i, j],  % Lista de elementos.
    N = 3,  % Número de elementos a seleccionar.
    rnd_select(L, N, R),
    % Mostrar el resultado.
    write('Elementos seleccionados: '), write(R), nl.

% Selecciona N elementos aleatorios de la lista L.
rnd_select(_, 0, []).  % Caso base: si N es 0, la lista resultante es vacía.
rnd_select(L, N, [X|R]) :-
    length(L, Len),            % Obtener la longitud de la lista.
    random(1, Len, I),         % Generar un índice aleatorio.
    element_at(X, L, I),       % Obtener el elemento en el índice aleatorio.
    delete(L, X, L1),          % Eliminar el elemento seleccionado de la lista.
    N1 is N - 1,               % Decrementar el número de elementos a seleccionar.
    rnd_select(L1, N1, R).

% Predicado para generar un rango de números.
range(I, I, [I]).
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).

% Seleccionar N números aleatorios de un rango dado.
lotto(N, M, L) :-
    range(1, M, R),      % Generar la lista de números del 1 al M.
    rnd_select(R, N, L).  % Seleccionar N elementos aleatorios.

% Ejemplo de uso:
% ?- lotto(6, 49, Result).
% Result = [17, 5, 34, 22, 1, 29].

% Selecciona el elemento en la posición I de la lista.
element_at(X, [X|_], 1).  % Caso base: el primer elemento es el deseado.
element_at(X, [_|T], I) :- I > 1, I1 is I - 1, element_at(X, T, I1).

