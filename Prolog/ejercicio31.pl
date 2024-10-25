% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog calcula el máximo común divisor de dos números
% positivos usando el algoritmo de Euclides.
% ===============================================
% === código en python ===
% # Calcular el máximo común divisor usando el algoritmo de Euclides
% def gcd(x, y):
%     while y != 0:
%         x, y = y, x % y
%     return x
% === código en prolog ===
% Definición del cálculo del máximo común divisor (GCD)
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).

% Predicado que será el punto de entrada para el Makefile
ejercicio31 :- 
    X = 48, 
    Y = 18, 
    gcd(X, Y, G),
    format('El GCD de ~d y ~d es ~d~n', [X, Y, G]).


% Ejemplo de uso:
% ?- gcd(36, 24, G).
% G = 12.
