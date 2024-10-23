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
 last_element([Last], Last).  
 last_element([_|Tail], Last) :- 
    last_element(Tail, Last).