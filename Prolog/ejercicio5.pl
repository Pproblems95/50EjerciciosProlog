% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog invierte una lista.
% Si la lista está vacía, devuelve una lista vacía. Si no, recorre la lista recursivamente, colocando el primer elemento al final de la lista invertida.
% ===============================================
% === Codigo python ====
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))
%
% for i in range(n): 
  %  cadena = input("ingresa la letra o palabra ")    
  %  lista.append(cadena)

% print("tu lista es la siguiente ", lista)
% print("Tu lista al reves es: ", lista.reverse())

% codigo prolog
reverse_list([], []).  
reverse_list([Head | Tail], Reversed) :-  
    reverse_list(Tail, ReversedTail),  
    append(ReversedTail, [Head], Reversed). 