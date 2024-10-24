% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog aplana una lista anidada.
% Recorre la lista y, si encuentra sublistas las aplana recursivamente. Si un elemento no es una lista, lo trata como un elemento simple.
% ===============================================
% Codigo en python
% listaAnidada = []
% listaPlana = []
% listaTemporal = []
% n = int(input("Cuantas listas deseas ingresar "))

% for i in range(n): 
  %  m = int(input("Define los elementos de la cadena"))
   %  for j in range(m):
     %   elemento = input()
      %  listaTemporal.append(elemento)
    % listaAnidada.append(listaTemporal)
    % listaTemporal = []
% print("tu lista es la siguiente ", listaAnidada)

% for i in range(len(listaAnidada)):
  %   for j in range(len(listaAnidada[i])):
   %      elemento = listaAnidada[i][j]
   %     listaPlana.append(elemento)
%  print("Tu lista desanidada es la siguiente", listaPlana)   
% === Codigo prolog ===
    
flatten([], []).  
flatten([Head | Tail], FlatList) :-  
    flatten(Head, FlatHead),  
    flatten(Tail, FlatTail),  
    append(FlatHead, FlatTail, FlatList).  
flatten(Element, [Element]) :-  
    \+ is_list(Element).  
my_flatten([], []).
% Caso recursivo: si la cabeza es una lista, aplana la cabeza y la cola recursivamente.
my_flatten([H|T], Flat) :- my_flatten(H, FH), my_flatten(T, FT), append(FH, FT, Flat).
% Si la cabeza no es una lista, simplemente agrégala al resultado.
my_flatten(X, [X]) :- X \= [], \+ is_list(X).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio7 :-
    List = [a, [b, c], [[d], e], f], % Cambia la lista para probar diferentes casos
    my_flatten(List, Flat),
    format('La lista aplanada de ~w es ~w.~n', [List, Flat]).

% Ejecutar el predicado ejercicio7 al cargar el archivo.
:- ejercicio7.
