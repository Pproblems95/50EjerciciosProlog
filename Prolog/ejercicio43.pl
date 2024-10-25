% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa genera los códigos de Gray de longitud N, 
% que son secuencias binarias donde cada código sucesivo difiere en solo un bit.

% Genera el código de Gray de longitud N
gray(1, ['0', '1']).
gray(N, C) :- 
    N > 1, 
    N1 is N - 1, 
    gray(N1, C1), 
    maplist(atom_concat('0'), C1, C0), 
    reverse(C1, C1R), 
    maplist(atom_concat('1'), C1R, C1G), 
    append(C0, C1G, C).

% Función principal que se ejecuta sin interacción
ejercicio43 :- 
    N = 3, % Ejemplo: genera el código de Gray para N = 3
    gray(N, C), 
    write('Código de Gray de longitud '), write(N), write(': '), write(C), nl.

