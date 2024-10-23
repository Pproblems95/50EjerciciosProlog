% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog verifica si un número entero dado es primo.
% ===============================================
% === código en python ===
% # Determinar si un número es primo
% def is_prime(n):
%     if n < 2: return False
%     for i in range(2, int(n ** 0.5) + 1):
%         if n % i == 0: return False
%     return True
% === código en prolog ===
% Verifica si un número entero dado es primo.
is_prime(2).
is_prime(3).
is_prime(P) :- P > 3, P mod 2 =\= 0, \+ has_factor(P, 3).

% Verifica si un número tiene factores.
has_factor(N, L) :- N mod L =:= 0.
has_factor(N, L) :- L * L < N, L2 is L + 2, has_factor(N, L2).

% Ejemplo de uso:
% ?- is_prime(7).
% true.