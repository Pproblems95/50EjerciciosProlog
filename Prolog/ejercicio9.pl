% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog agrupa los elementos consecutivos iguales de una lista en sublistas.
% Si dos elementos consecutivos son iguales, se agrupan en una sublista. Si son diferentes, comienza una nueva sublista.
% ===============================================
% === codigo python === 
% lista = []
% n = int(input("¿Cuántos elementos deseas ingresar? "))


% for i in range(n): 
  %  elemento = input("Ingresa un elemento: ")    
  %  lista.append(elemento)

% print("Lista original:", lista)

% lista_anidada = []
% elementos_usados = set()  

% for elemento in lista:
  %  if elemento not in elementos_usados:
  %      grupo = [x for x in lista if x == elemento]  
  %      lista_anidada.append(grupo)  
  %      elementos_usados.add(elemento)  

% print("Lista anidada con elementos repetidos agrupados:", lista_anidada)
% === codigo prolog ===
pack([], []).  
pack([X], [[X]]).  
pack([X, X | Tail], [[X | Group] | PackedTail]) :-  
    pack([X | Tail], [Group | PackedTail]).  
pack([X, Y | Tail], [[X] | PackedTail]) :-  
    X \= Y,  
    pack([Y | Tail], PackedTail).  
% Agrupa los elementos consecutivos iguales en sublistas.
pack([], []).
% Caso recursivo: transfiere todos los elementos consecutivos iguales a una sublista.
pack([X|Xs], [[X|Ys]|Zs]) :- transfer(X, Xs, Ys, Rest), pack(Rest, Zs).

% Transfiere los elementos duplicados consecutivos a una sublista.
transfer(X, [], [], []).
% Si el siguiente elemento es diferente, termina la transferencia.
transfer(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
% Si el siguiente elemento es igual, agrégalo a la sublista.
transfer(X, [X|Xs], [X|Ys], Rest) :- transfer(X, Xs, Ys, Rest).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio9 :-
    List = [a, a, b, c, c, c, d, d, e, a, a],  % Cambia la lista para probar diferentes casos
    pack(List, Packed),
    format('La lista empaquetada de ~w es ~w.~n', [List, Packed]).

% Ejecutar el predicado ejercicio9 al cargar el archivo.
:- ejercicio9.
