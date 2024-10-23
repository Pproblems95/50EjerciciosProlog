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

pack_count([], []).  
pack_count([X], [[1, X]]).  
pack_count([X, X | Tail], [[Count, X] | PackedTail]) :-  
    Count is 2,  
    pack_count([X | Tail], [[CountRest, X] | PackedTail]),  
    CountRest > 1,  
    Count is CountRest + 1.  
pack_count([X, Y | Tail], [[1, X] | PackedTail]) :-  
    X \= Y,  
    pack_count([Y | Tail], PackedTail).  