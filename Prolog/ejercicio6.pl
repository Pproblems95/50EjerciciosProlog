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
    append(ReversedTail, [Head], Reversed).  reverse_list(L, R) :- reverse_list(L, [], R).

% Caso base: cuando la lista original está vacía, el acumulador contiene la lista invertida.
reverse_list([], Acc, Acc).

% Caso recursivo: mueve el elemento de la cabeza al acumulador.
reverse_list([H|T], Acc, R) :- reverse_list(T, [H|Acc], R).

% Define el predicado para verificar si una lista es un palíndromo.
palindrome(L) :- reverse_list(L, L).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio6 :-
    List = [a, b, c, b, a], % Cambia la lista para probar diferentes casos
    (palindrome(List) ->
        format('La lista ~w es un palíndromo.~n', [List])
    ;
        format('La lista ~w NO es un palíndromo.~n', [List])
    ).

% Ejecutar el predicado ejercicio6 al cargar el archivo.
:- ejercicio6.
