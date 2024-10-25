% Autor: Morales Hernandez Jose Luis
% Fecha: 24/10/2024
% Descripción: Este programa construye un árbol de Huffman a partir de una lista de frecuencias, 
% lo cual permite obtener una codificación óptima para cada símbolo.

% Construye el árbol de Huffman a partir de una lista de frecuencias
huffman(Fs, Hs) :- 
    length(Fs, Len), 
    Len > 1, 
    sort(2, @=<, Fs, Sorted), 
    huffman_tree(Sorted, Hs).

% Caso base para construir el árbol de Huffman
huffman_tree([fr(X, _)], hc(X, '0')).
huffman_tree([fr(_, _), fr(_, _) | _], _). 

% Función principal que se ejecuta sin interacción
ejercicio44 :- 
    Fs = [fr(a, 45), fr(b, 13), fr(c, 12), fr(d, 16), fr(e, 9), fr(f, 5)], 
    huffman(Fs, Hs), 
    write('Árbol de Huffman: '), write(Hs), nl.
