% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa encuentra dos números primos que sumen un número par dado
% según la conjetura de Goldbach.

% 
% # Código en Python (comentado)
% 
% def goldbach(n):
%     if n > 2 and n % 2 == 0:
%         primes = prime_list(2, n)
%         for p1 in primes:
%             p2 = n - p1
%             if p2 in primes:
%                 return (p1, p2)
%     return None

% Genera una lista de números primos en un rango dado.
prime_list(Low, High, Primes) :- 
    findall(P, (between(Low, High, P), is_prime(P)), Primes).

% Comprueba si un número es primo.
is_prime(2).
is_prime(N) :- 
    N > 2, 
    Limit is floor(sqrt(N)), 
    \+ (between(2, Limit, X), 0 is N mod X).

% Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
goldbach(N, [P1, P2]) :- 
    N > 2, 
    N mod 2 =:= 0, 
    prime_list(2, N, Primes), 
    member(P1, Primes), 
    P2 is N - P1, 
    is_prime(P2).

% Función principal que se ejecuta sin interacción
ejercicio39 :- 
    N = 28, % Ejemplo: encontrar dos primos que sumen 28
    goldbach(N, [P1, P2]),
    write('Los números primos que suman '), write(N), write(' son: '), 
    write([P1, P2]), nl.
