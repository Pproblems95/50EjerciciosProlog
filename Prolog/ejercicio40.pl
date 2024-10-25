% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa encuentra las composiciones de Goldbach para todos los números pares
% dentro de un rango dado, utilizando la conjetura de Goldbach.

% 
% # Código en Python (comentado)
% 
% def goldbach_list(low, high):
%     result = []
%     for n in range(low, high + 1):
%         if n > 2 and n % 2 == 0:
%             composition = goldbach(n)
%             if composition:
%                 result.append((n, *composition))
%     return result

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

% Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
goldbach_list(Low, High, L) :- 
    findall([N, P1, P2], 
        (between(Low, High, N), 
         N mod 2 =:= 0, 
         goldbach(N, [P1, P2])), 
        L).

% Función principal que se ejecuta sin interacción
ejercicio40 :- 
    Low = 4, % Límite inferior del rango
    High = 30, % Límite superior del rango
    goldbach_list(Low, High, L),
    write('Composiciones de Goldbach para los números pares en el rango: '), nl,
    write(L), nl.
