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
coprime(X, Y) :- gcd(X, Y, 1).

% Ejemplo de uso:
% ?- coprime(35, 18).
% true.