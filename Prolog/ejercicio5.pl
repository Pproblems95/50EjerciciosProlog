% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog invierte una lista.
% Si la lista está vacía, devuelve una lista vacía. Si no, recorre la lista recursivamente, colocando el primer elemento al final de la lista invertida.
% ===============================================
% === Codigo python ====
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))
%
% for i in range(n): 
  %  cadena = input("ingresa la letra o palabra ")    
  %  lista.append(cadena)

% print("tu lista es la siguiente ", lista)
% print("Tu lista al reves es: ", lista.reverse())

% codigo prolog
reverse_list([], []).  
reverse_list([Head | Tail], Reversed) :-  
    reverse_list(Tail, ReversedTail),  
    append(ReversedTail, [Head], Reversed). 
reverse_list(L, R) :- reverse_list(L, [], R).

% Caso base: cuando la lista original está vacía, el acumulador contiene la lista invertida.
reverse_list([], Acc, Acc).

% Caso recursivo: mueve el elemento de la cabeza al acumulador.
reverse_list([H|T], Acc, R) :- reverse_list(T, [H|Acc], R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio5 :-
    List = [a, b, c, d, e],
    reverse_list(List, Reversed),
    format('La lista original ~w invertida es ~w.~n', [List, Reversed]).

% Ejecutar el predicado ejercicio5 al cargar el archivo.
:- ejercicio5.
