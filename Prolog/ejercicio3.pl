% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog encuentra el penúltimo elemento de una lista.
% La primera regla maneja el caso en que la lista tiene dos elementos, devolviendo el primero.
% La segunda regla recorre la lista descartando el primer elemento hasta llegar a la condición deseada.
% ===============================================
% ======== código en python =====
% lista = []
% n = int(input("Cuantas cadenas deseas ingresar "))

% for i in range(n): 
  %  cadena = input("ingresa la letra o palabra ")    
   % lista.append(cadena)

% print("tu lista es la siguiente ", lista)

% buscar = int(input("Que elemento deseas buscar de la lista"))

% if 0 <= buscar < len(lista):
  %  elemento = lista[buscar]
   % print("El elemento es ", elemento)
% else:
    % print("Elemento invalido")
% ===== codigo en prolog =======
nth_element(1, [Head | _], Head).  
nth_element(N, [_ | Tail], Element) :-  
    N > 1,  
    N1 is N - 1,  
    nth_element(N1, Tail, Element).