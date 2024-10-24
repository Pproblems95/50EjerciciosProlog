% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog crea una lista con todos los enteros
% dentro de un rango dado.
% ===============================================
% === código en python ===
% # Crear una lista con todos los enteros dentro de un rango dado
% def range_list(i, k):
%     return list(range(i, k+1))
% === código en prolog ===
% Crea una lista con todos los enteros dentro de un rango dado.
range(I, I, [I]).  % Caso base: rango de un solo número.
range(I, K, [I|R]) :-  % Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
    I < K,
    I1 is I + 1,
    range(I1, K, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio22 :-
    % Definir los límites del rango.
    I = 1,  % Inicio del rango.
    K = 5,  % Fin del rango.
    range(I, K, R),
    % Mostrar el resultado.
    write('Rango de '), write(I), write(' a '), write(K), write(': '), write(R), nl.

% Ejecutar el predicado ejercicio22 al cargar el archivo.
:- ejercicio22.

