% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa calcula la función totiente de Euler (φ) de manera
% eficiente usando los factores primos de un número con su multiplicidad. 
% Incluye una versión comentada en Python y una implementación en Prolog con 
% una función principal llamada `ejercicio36/0` que se ejecuta sin interacción 
% con el usuario.

% ---- Código Python (comentado) ----
%
% # Autor: Morales Hernandez Jose Luis
% # Fecha: 24/10/2024
% # Descripción: Este programa calcula la función totiente de Euler (φ) usando
% # los factores primos de un número junto con su multiplicidad para mejorar
% # la eficiencia.
%
% def prime_factors_mult(N):
%     factors = prime_factors(N)
%     return encode(factors)
%
% def totient_improved(N):
%     factors_mult = prime_factors_mult(N)
%     return totient_phi(factors_mult)
%
% def totient_phi(factors_mult):
%     if not factors_mult:
%         return 1
%     P, M = factors_mult[0]
%     return (P - 1) * (P ** (M - 1)) * totient_phi(factors_mult[1:])
%
% # Función principal sin interacción
% def ejercicio36():
%     N = 315
%     result = totient_improved(N)
%     print(f"La función totiente de {N} es: {result}")
%
% ejercicio36()
%
% ---- Fin del código Python ----

% ---- Código Prolog ----

% Determina los factores primos con su multiplicidad
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

% Calcula la función totiente usando los factores primos con multiplicidad
totient_improved(N, Phi) :- prime_factors_mult(N, F), totient_phi(F, Phi).

% Calcula la parte recursiva de la función totiente
totient_phi([], 1).
totient_phi([[P, M]|T], Phi) :- totient_phi(T, Phi1), Phi is Phi1 * (P - 1) * P ** (M - 1).

% Determina los factores primos con su multiplicidad
prime_factors_mult(N, L) :- prime_factors(N, F), encode(F, L).

% Función principal que se ejecuta sin interacción
ejercicio36 :-
    N = 315, % Ejemplo: cálculo de la función totiente del número 315
    totient_improved(N, Phi),
    format('La función totiente de ~d es: ~w~n', [N, Phi]).
