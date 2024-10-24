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
% Predicado principal que verifica si un número es primo.
ejercicio30 :-
    % Definir el número para verificar si es primo.
    Number = 29,  % Cambia este número según sea necesario
    (is_prime(Number) ->
        write(Number), write(' es un número primo.'), nl;
        write(Number), write(' no es un número primo.'), nl
    ).

% Verifica si un número es primo.
is_prime(2).          % 2 es primo
is_prime(3).          % 3 es primo
is_prime(P) :- 
    P > 3, 
    P mod 2 =\= 0, 
    \+ has_factor(P, 3.

% Verifica si un número tiene factores.
has_factor(N, L) :- 
    N mod L =:= 0.
has_factor(N, L) :- 
    L * L < N, 
    L2 is L + 2, 
    has_factor(N, L2).

% Ejecutar el predicado ejercicio30 al cargar el archivo.
:- ejercicio30.
