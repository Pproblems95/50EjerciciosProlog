% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa calcula los factores primos de un número dado
% utilizando el método de factorización recursiva. Incluye una versión comentada
% en Python seguida por la implementación en Prolog. Se define una función
% principal `ejercicio34/0` que ejecuta el programa sin necesidad de interacción
% con el usuario.

% ---- Código Python (comentado) ----
%
% # Autor: Morales Hernandez Jose Luis
% # Fecha: 24/10/2024
% # Descripción: Este programa calcula los factores primos de un número dado
% # utilizando recursión. En esta versión, se usa una función principal
% # sin interacción del usuario.
%
% # Función que devuelve los factores primos de N
% def prime_factors(N):
%     if N > 1:
%         return prime_factors_acc(N, 2)
%     return []
%
% # Caso base de la recursión
% def prime_factors_acc(N, F):
%     if N == 1:
%         return []
%     elif N % F == 0:
%         return [F] + prime_factors_acc(N // F, F)
%     elif F * F < N:
%         return prime_factors_acc(N, next_factor(F))
%     return [N]  # Si no hay más divisores, N es primo
%
% # Determina el siguiente factor primo
% def next_factor(F):
%     if F == 2:
%         return 3
%     return F + 2
%
% # Función principal que se ejecuta sin interacción
% def ejercicio34():
%     N = 315  # Ejemplo: factorización del número 315
%     factors = prime_factors(N)
%     print(f"Los factores primos de {N} son: {factors}")
%
% # Llamada a la función principal
% ejercicio34()
%
% ---- Fin del código Python ----

% ---- Código Prolog ----

% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa calcula los factores primos de un número dado
% utilizando el método de factorización recursiva. Se define una función
% principal `ejercicio34/0` que ejecuta el programa sin necesidad de interacción
% con el usuario.

% Cálculo de los factores primos de un número N
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

% Caso base: cuando N es 1, la lista de factores es vacía
prime_factors(1, _, []).

% Si F es un factor de N, lo añadimos a la lista y dividimos N por F
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).

% Si F no es un factor de N, buscamos el siguiente factor
prime_factors(N, F, L) :- N > 1, F * F =< N, next_factor(F, F1), prime_factors(N, F1, L).

% Si llegamos a un punto donde F * F es mayor que N, entonces N es primo
prime_factors(N, F, [N]) :- F * F > N, N > 1.

% Definición de los factores: empezamos con 2, y luego pasamos al siguiente impar
next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.

% Función principal que se ejecuta sin parámetros
ejercicio34 :-
    N = 315, % Ejemplo: factorización del número 315
    prime_factors(N, L),
    format('Los factores primos de ~d son: ~w~n', [N, L]).

