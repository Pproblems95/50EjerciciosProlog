% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog elimina los elementos consecutivos repetidos de una lista.
% Recorre la lista y si dos elementos consecutivos son iguales, elimina uno de ellos. Si son diferentes, los conserva.
% ===============================================
% === Codigo python ===
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))

% for i in range(n): 
  %  cadena = input("ingresa la letra o palabra ")    
  %  lista.append(cadena)
% print("tu lista es la siguiente ", lista)

% for i in range(len(lista)-1,0,-1):
  %  if (lista[i] == lista[i-1]):
  %      lista.pop(i)
% print("sin repetidos es: ", lista)
% === codigo prolog ===
remove_consecutive([], []).  
remove_consecutive([X], [X]).  
remove_consecutive([X, X | Tail], Result) :-  
    remove_consecutive([X | Tail], Result).  
remove_consecutive([X, Y | Tail], [X | Result]) :-  
    X \= Y,  
    remove_consecutive([Y | Tail], Result).  % Comprime una lista eliminando los duplicados consecutivos.
compress([], []).
% Si queda un solo elemento, no hay duplicados.
compress([X], [X]).
% Caso recursivo: si el primer y segundo elemento son iguales, ignora el primero.
compress([X,X|T], R) :- compress([X|T], R).
% Si el primer y segundo elemento son distintos, conserva el primero.
compress([X,Y|T], [X|R]) :- X \= Y, compress([Y|T], R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio8 :-
    List = [a, a, b, c, c, c, d, d, e, a, a],  % Cambia la lista para probar diferentes casos
    compress(List, Compressed),
    format('La lista comprimida de ~w es ~w.~n', [List, Compressed]).

% Ejecutar el predicado ejercicio8 al cargar el archivo.
:- ejercicio8.
