% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog aplana una lista anidada.
% Recorre la lista y, si encuentra sublistas las aplana recursivamente. Si un elemento no es una lista, lo trata como un elemento simple.
% ===============================================
% Codigo en python
% listaAnidada = []
% listaPlana = []
% listaTemporal = []
% n = int(input("Cuantas listas deseas ingresar "))

% for i in range(n): 
  %  m = int(input("Define los elementos de la cadena"))
   %  for j in range(m):
     %   elemento = input()
      %  listaTemporal.append(elemento)
    % listaAnidada.append(listaTemporal)
    % listaTemporal = []
% print("tu lista es la siguiente ", listaAnidada)

% for i in range(len(listaAnidada)):
  %   for j in range(len(listaAnidada[i])):
   %      elemento = listaAnidada[i][j]
   %     listaPlana.append(elemento)
%  print("Tu lista desanidada es la siguiente", listaPlana)   
% === Codigo prolog ===
    
flatten([], []).  
flatten([Head | Tail], FlatList) :-  
    flatten(Head, FlatHead),  
    flatten(Tail, FlatTail),  
    append(FlatHead, FlatTail, FlatList).  
flatten(Element, [Element]) :-  
    \+ is_list(Element).  