% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa evalúa una expresión lógica para todas las combinaciones posibles
% de valores booleanos de dos variables (A y B) y muestra la tabla de verdad.

% 
% # Código en Python (comentado)
% 
% def truth_table(A_values, B_values, expr):
%     for A in A_values:
%         for B in B_values:
%             result = expr(A, B)
%             print(A, B, result)
%
% truth_table([True, False], [True, False], lambda A, B: A and B)

% Evalúa la expresión lógica Expr para todas las combinaciones posibles de A y B.
table(A, B, Expr) :- 
    write(A), write(' '), write(B), write(' '), call(Expr), nl, fail.
table(_, _, _).

% Función principal que se ejecuta sin interacción
ejercicio41 :- 
    write('Tabla de verdad para la expresión AND (A, B):'), nl,
    table(true, true, write(true)), 
    table(true, false, write(false)),
    table(false, true, write(false)),
    table(false, false, write(false)).
