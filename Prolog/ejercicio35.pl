% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa calcula los factores primos de un número dado
% junto con la cantidad de veces que cada factor aparece. Incluye una versión
% comentada en Python y una implementación en Prolog con una función principal
% llamada `ejercicio35/0` que se ejecuta sin interacción con el usuario.

% ---- Código Python (comentado) ----
%
% # Autor: Morales Hernandez Jose Luis
% # Fecha: 24/10/2024
% # Descripción: Este programa calcula los factores primos de un número dado
% # junto con la cantidad de veces que cada factor aparece.
%
% # Función para calcular los factores primos de N
% def prime_factors(N):
%     if N > 1:
%         return prime_factors_acc(N, 2)
%     return []
%
% # Función auxiliar para factorización
% def prime_factors_acc(N, F):
%     if N == 1:
%         return []
%     elif N % F == 0:
%         return [F] + prime_factors_acc(N // F, F)
%     elif F * F < N:
%         return prime_factors_acc(N, next_factor(F))
%     return [N]
%
% # Determina el siguiente factor primo
% def next_factor(F):
%     if F == 2:
%         return 3
%     return F + 2
%
% # Codifica los factores y su multiplicidad
% def encode(L):
%     if not L:
%         return []
%     X = L[0]
%     count = L.count(X)
%     return [(X, count)] + encode([i for i in L if i != X])
%
% # Función principal
% def prime_factors_mult(N):
%     factors = prime_factors(N)
%     return encode(factors)
%
% # Función principal sin interacción
% def ejercicio35():
%     N = 315
%     result = prime_factors_mult(N)
%     print(f"Los factores primos de {N} con multiplicidad son: {result}")
%
% ejercicio35()
%
% ---- Fin del código Python ----

% ---- Código Prolog ----

% Cálculo de los factores primos de un número N
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).
prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).
prime_factors(N, F, L) :- N > 1, F * F =< N, next_factor(F, F1), prime_factors(N, F1, L).
prime_factors(N, F, [N]) :- F * F > N, N > 1.

% Determina el siguiente factor primo
next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.

% Codifica la lista de factores en pares (Factor, Frecuencia)
encode([], []).
encode([X|Xs], [[X,N]|Ys]) :- count(X, [X|Xs], N, Zs), encode(Zs, Ys).

% Cuenta las apariciones de un factor en la lista
count(_, [], 0, []).
count(X, [X|Xs], N, Ys) :- count(X, Xs, N1, Ys), N is N1 + 1.
count(X, [Y|Ys], 0, [Y|Ys]) :- X \= Y.

% Determina los factores primos con su multiplicidad
prime_factors_mult(N, L) :- prime_factors(N, F), encode(F, L).

% Función principal que se ejecuta sin interacción
ejercicio35 :-
    N = 315, % Ejemplo: factorización del número 315
    prime_factors_mult(N, L),
    format('Los factores primos de ~d con multiplicidad son: ~w~n', [N, L]).
