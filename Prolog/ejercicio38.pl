% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa compara dos métodos para calcular la función totiente 
% de Euler (φ): un método básico y un método mejorado que utiliza la factorización 
% prima. Se muestra el resultado de ambos métodos para el mismo número.
% Incluye una versión comentada en Python y una implementación en Prolog con 
% una función principal llamada `ejercicio38/0` que se ejecuta sin interacción 
% con el usuario.

% ---- Código Python (comentado) ----
%
% # Autor: Morales Hernandez Jose Luis
% # Fecha: 24/10/2024
% # Descripción: Este programa compara dos métodos para calcular la función totiente 
% # de Euler (φ): un método básico y un método mejorado utilizando la factorización prima.
%
% def gcd(a, b):
%     while b:
%         a, b = b, a % b
%     return a
%
% def totient(N):
%     count = 0
%     for i in range(1, N + 1):
%         if gcd(i, N) == 1:
%             count += 1
%     return count
%
% def prime_factors_mult(N):
%     # Implementación de la función para obtener factores primos con multiplicidad
%     pass
%
% def totient_improved(N):
%     factors = prime_factors_mult(N)
%     return totient_phi(factors)
%
% def compare_totient(N):
%     phi1 = totient(N)
%     phi2 = totient_improved(N)
%     print(f'Phi (método básico): {phi1}')
%     print(f'Phi (método mejorado): {phi2}')
%
% # Función principal sin interacción
% def ejercicio38():
%     N = 30
%     compare_totient(N)
%
% ejercicio38()
%
% ---- Fin del código Python ----

% ---- Código Prolog ----


% Genera una lista de números primos en un rango dado.
prime_list(Low, High, Primes) :- 
    findall(P, (between(Low, High, P), is_prime(P)), Primes).

% Comprueba si un número es primo.
is_prime(2).
is_prime(N) :- 
    N > 2, 
    Limit is floor(sqrt(N)), % Calcula el límite como la parte entera de la raíz cuadrada
    \+ (between(2, Limit, X), 0 is N mod X).

% Función principal que se ejecuta sin interacción
ejercicio38 :- 
    Low = 1, High = 50, % Ejemplo: generar números primos entre 1 y 50
    prime_list(Low, High, Primes),
    write('Números primos entre '), write(Low), write(' y '), write(High), write(': '), nl,
    write(Primes), nl.
