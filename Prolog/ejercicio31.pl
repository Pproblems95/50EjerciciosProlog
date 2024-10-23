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
% Calcula el máximo común divisor usando el algoritmo de Euclides.
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).

% Ejemplo de uso:
% ?- gcd(36, 24, G).
% G = 12.