% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa define operaciones lógicas binarias comunes, como AND, OR, NAND, 
% NOR, XOR, implicación (impl) y equivalencia (equ).

% Define las operaciones lógicas binarias
and(A, B) :- A, B.
or(A, _) :- A.
or(_, B) :- B.
nand(A, B) :- \+ (A, B).
nor(A, B) :- \+ (A; B).
xor(A, B) :- A, \+ B; \+ A, B.
impl(A, B) :- \+ A; B.
equ(A, B) :- A, B; \+ A, \+ B.

% Función principal que se ejecuta sin interacción
ejercicio42 :- 
    write('Tabla de verdad para operaciones lógicas:'), nl,
    write('A     B     AND   OR    NAND  NOR   XOR   IMPL  EQU'), nl,
    table(true, true),
    table(true, false),
    table(false, true),
    table(false, false).

% Genera una fila de la tabla de verdad para todas las operaciones definidas
table(A, B) :-
    format('~w   ~w   ~w     ~w     ~w     ~w     ~w     ~w     ~w~n', [
        A, B, 
        (and(A, B) -> true ; false),
        (or(A, B) -> true ; false),
        (nand(A, B) -> true ; false),
        (nor(A, B) -> true ; false),
        (xor(A, B) -> true ; false),
        (impl(A, B) -> true ; false),
        (equ(A, B) -> true ; false)
    ]).
