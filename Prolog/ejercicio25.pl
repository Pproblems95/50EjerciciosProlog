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
% Definición del ejercicio25
% Definición del ejercicio25
ejercicio25 :-
    % Definir la lista a permutar.
    L = [1, 2, 3, 4, 5],  % Lista de elementos a permutar.
    rnd_permu(L, P),
    % Mostrar el resultado.
    write('Permutación aleatoria: '), write(P), nl.

% Genera una permutación aleatoria de la lista L.
rnd_permu(L, P) :-
    length(L, Len),       % Obtener la longitud de la lista.
    rnd_select(L, Len, P).

% Selecciona N elementos aleatorios de la lista L.
rnd_select(_, 0, []).  % Caso base: si N es 0, la lista resultante es vacía.
rnd_select(L, N, [X|R]) :-
    length(L, Len),           % Obtener la longitud de la lista.
    Len > 0,                  % Asegurarse de que la longitud sea mayor que 0.
    Upper is Len + 1,         % Evaluar Len + 1 correctamente.
    random(1, Upper, I),      % Generar un índice aleatorio entre 1 y Len.
    element_at(X, L, I),      % Obtener el elemento en el índice aleatorio.
    delete(L, X, L1),         % Eliminar el elemento seleccionado de la lista.
    N1 is N - 1,              % Decrementar el número de elementos a seleccionar.
    rnd_select(L1, N1, R).

% Selecciona el elemento en la posición I de la lista.
element_at(X, [X|_], 1).  % Caso base: el primer elemento es el deseado.
element_at(X, [_|T], I) :- I > 1, I1 is I - 1, element_at(X, T, I1).

