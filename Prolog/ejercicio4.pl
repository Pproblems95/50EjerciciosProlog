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