% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog encuentra el penúltimo elemento de una lista. 
% Si la lista tiene dos elementos, devuelve el primero; si tiene mas, recorre la lista descartando el primer elemento hasta llegar a esa condición.
% ===============================================

% ---------------- Código en python ------------------
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))
%
% for i in range(n): 
%    cadena = input("ingresa la letra o palabra ")    
%    lista.append(cadena)
%
% print("tu lista es la siguiente ", lista)
% print("y el ultimo elemento es ", lista[0])
% ---------------- Código en erlang ------------------

penultimate_element([Penultimate, _], Penultimate).  
penultimate_element([_|Tail], Penultimate) :-  
    penultimate_element(Tail, Penultimate).