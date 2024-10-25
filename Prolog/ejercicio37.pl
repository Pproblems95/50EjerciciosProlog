% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa calcula la función de Möbius (μ) de un número entero 
% usando su factorización prima. La función de Möbius es utilizada en teoría de números 
% y tiene aplicaciones en la inversa de la suma de divisores.
% Incluye una versión comentada en Python y una implementación en Prolog con 
% una función principal llamada `ejercicio37/0` que se ejecuta sin interacción 
% con el usuario.

% ---- Código Python (comentado) ----
%
% # Autor: Morales Hernandez Jose Luis
% # Fecha: 24/10/2024
% # Descripción: Este programa calcula la función de Möbius (μ) de un número entero 
% # usando su factorización prima.
%
% def prime_factors(N):
%     factors = []
%     for i in range(2, int(N**0.5) + 1):
%         while N % i == 0:
%             factors.append(i)
%             N //= i
%     if N > 1:
%         factors.append(N)
%     return factors
%
% def mobius_function(N):
%     factors = prime_factors(N)
%     unique_factors = set(factors)
%     if len(factors) != len(unique_factors):
%         return 0
%     return -1 if len(unique_factors) == len(factors) else 1
%
% # Función principal sin interacción
% def ejercicio37():
%     N = 30
%     result = mobius_function(N)
%     print(f"La función de Möbius de {N} es: {result}")
%
% ejercicio37()
%
% ---- Fin del código Python ----

% ---- Código Prolog ----

% Determina los factores primos de un número
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).
prime_factors(1, _) :- !.
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).
prime_factors(N, F, L) :- N > 1, F * F =< N, next_factor(F, F1), prime_factors(N, F1, L).
prime_factors(N, F, [N]) :- F * F > N, N > 1.

% Determina el siguiente factor primo
next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.

% Calcula la función de Möbius
mobius_function(N, Mu) :- 
    prime_factors(N, F), 
    list_to_set(F, UniqueFactors),
    length(F, LenFactors),
    length(UniqueFactors, LenUnique),
    ( LenFactors \= LenUnique -> Mu is 0 ; 
      ( LenFactors == LenUnique -> ( 
          all_different(F) -> Mu is -1 ; Mu is 1 
      ) 
      )
    ).

% Verifica si todos los elementos de la lista son diferentes
all_different([]).
all_different([H|T]) :- \+ member(H, T), all_different(T).

% Función principal que se ejecuta sin interacción
ejercicio37 :-
    N = 30, % Ejemplo: cálculo de la función de Möbius del número 30
    mobius_function(N, Mu),
    format('La función de Möbius de ~d es: ~w~n', [N, Mu]).
