% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina 
%              el último elemento de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% ------------ Codigo en Python (comentado) ------------
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))
%
% for i in range(n): 
%    cadena = input("ingresa la letra o palabra ")    
%    lista.append(cadena)
%
% print("tu lista es la siguiente ", lista)
% print("y el ultimo elemento es ", lista[-1])

% ----------- Codigo en Prolog ---------------

% Define el predicado para encontrar el último elemento de una lista.
my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X, T).
% Predicado principal que se ejecuta al cargar el archivo.
ejercicio1 :-
    List = [1, 2, 3, 4],
    my_last(X, List),
    format('El último elemento de la lista ~w es ~w.~n', [List, X]).

% Ejecutar el predicado ejercicio1 al cargar el archivo.
:- ejercicio1.
