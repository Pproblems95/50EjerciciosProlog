% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog verifica si una lista es un palíndromo.
% Compara la lista original con su versión invertida y determina si son iguales. Si lo son, la lista es un palíndromo.
% ===============================================
% === codigo python ===
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))

% for i in range(n): 
   % cadena = input("ingresa la letra o palabra ")    
   % lista.append(cadena)
% print("tu lista es la siguiente ", lista)

% if lista == lista.reverse(): 
    % print("es palindromo")
% else: 
   % print("no son palindromo")

% === codigo prolog ===
is_palindrome(List) :- 
    reverse_list(List, Reversed),  
    List == Reversed.  

reverse_list([], []).  
reverse_list([Head | Tail], Reversed) :-  
    reverse_list(Tail, ReversedTail),  
    append(ReversedTail, [Head], Reversed).  