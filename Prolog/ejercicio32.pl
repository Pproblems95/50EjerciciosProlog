% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog determina si dos números positivos son coprimos.
% ===============================================
% === código en python ===
% # Determinar si dos números son coprimos
% def coprime(x, y):
%     return gcd(x, y) == 1
% === código en prolog ===
% Dos números son coprimos si su máximo común divisor es 1.
% Definición del cálculo del máximo común divisor (GCD)
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).

% Definición de coprimos: dos números son coprimos si su GCD es 1
coprime(X, Y) :- gcd(X, Y, 1).

% Predicado que será el punto de entrada para el Makefile
ejercicio32 :- 
    X = 35, 
    Y = 18, 
    (coprime(X, Y) ->
        format('~d y ~d son coprimos~n', [X, Y]);
        format('~d y ~d no son coprimos~n', [X, Y])).

% Ejemplo de uso:
% ?- coprime(35, 18).
% true.
