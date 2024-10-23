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
    remove_consecutive([Y | Tail], Result).  