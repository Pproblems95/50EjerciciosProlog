% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog calcula la longitud de una lista.
% Si la lista está vacía, la longitud es 0. Si no, recorre la lista recursivamente, sumando 1 por cada elemento hasta llegar al final.
% ===============================================
% === codigo python ====
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))

% for i in range(n): 
  %  cadena = input("ingresa la letra o palabra ")    
  %  lista.append(cadena)

% print("tu lista es la siguiente ", lista)
% print("la longitud de la lista es ", len(lista))
% ----Codigo en prolog----
length_list([], 0). 
length_list([_|Tail], Length) :-  
    length_list(Tail, LengthTail),  
    Length is LengthTail + 1.  
% Define el predicado para calcular la longitud de una lista.
list_length([], 0).
% Caso recursivo: la longitud es 1 más que la longitud de la cola.
list_length([_|T], N) :- list_length(T, N1), N is N1 + 1.

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio4 :-
    List = [a, b, c, d, e],
    list_length(List, Length),
    format('La longitud de la lista ~w es ~w.~n', [List, Length]).

% Ejecutar el predicado ejercicio4 al cargar el archivo.
:- ejercicio4.
