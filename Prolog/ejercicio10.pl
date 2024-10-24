% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog agrupa los elementos consecutivos iguales de una lista y cuenta cuántas veces se repiten.
% Si dos elementos consecutivos son iguales, los agrupa y lleva un contador. Si son diferentes, empieza un nuevo grupo con el contador en 1.
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
 %       cantidad = lista.count(elemento)  
  %      lista_anidada.append([cantidad, elemento])  
  %      elementos_usados.add(elemento)  
% print("Lista anidada con la notación [x, i]:", lista_anidada)
% === codigo prolog ===
% Agrupa los elementos consecutivos iguales en sublistas
pack([], []).
pack([X|Xs], [[X|Ys]|Zs]) :- transfer(X, Xs, Ys, Rest), pack(Rest, Zs).

% Transfiere los elementos duplicados consecutivos a una sublista.
transfer(X, [], [], []).
transfer(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
transfer(X, [X|Xs], [X|Ys], Rest) :- transfer(X, Xs, Ys, Rest).

% Agrupa los elementos consecutivos iguales en sublistas y luego los transforma en parejas (N, X).
encode(L, R) :- pack(L, P), transform(P, R).

% Transforma sublistas en parejas (N, X), donde N es la cantidad de elementos.
transform([], []).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :- length([X|Xs], N), transform(Ys, Zs).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio10 :-
    List = [a, a, b, c, c, c, d, d, e, a, a],  % Cambia la lista para probar diferentes casos
    encode(List, Encoded),
    format('La lista codificada de ~w es ~w.~n', [List, Encoded]).

% Ejecutar el predicado ejercicio10 al cargar el archivo.
:- ejercicio10.


