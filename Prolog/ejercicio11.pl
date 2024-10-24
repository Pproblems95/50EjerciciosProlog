% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog aplica una codificación modificada a una lista.
% Primero codifica la lista contando las repeticiones consecutivas de los elementos, luego modifica el resultado eliminando el formato de los elementos que aparecen una sola vez.
% ===============================================
% === código en python ===
% def encode_modified(lst):
%     if not lst:
%         return []
%     
%     encoded = []
%     count = 1
%     for i in range(1, len(lst)):
%         if lst[i] == lst[i - 1]:
%             count += 1
%         else:
%             if count > 1:
%                 encoded.append((count, lst[i - 1]))
%             else:
%                 encoded.append(lst[i - 1])
%             count = 1
%     # Agregar el último grupo
%     if count > 1:
%         encoded.append((count, lst[-1]))
%     else:
%         encoded.append(lst[-1])
%
%     # Modificar el resultado
%     modified = []
%     for item in encoded:
%         if isinstance(item, tuple) and item[0] == 1:
%             modified.append(item[1])
%         else:
%             modified.append(item)
%
%     return modified
% === código en prolog ===
% Agrupa los elementos consecutivos iguales en sublistas
pack([], []).
pack([X|Xs], [[X|Ys]|Zs]) :- transfer(X, Xs, Ys, Rest), pack(Rest, Zs).

% Transfiere los elementos duplicados consecutivos a una sublista.
transfer(X, [], [], []).
transfer(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
transfer(X, [X|Xs], [X|Ys], Rest) :- transfer(X, Xs, Ys, Rest).

% Agrupa los elementos consecutivos iguales en sublistas y luego los transforma en parejas (N, X).
encode(L, R) :- pack(L, P), transform(P, R).

% Transforma sublistas en parejas (N, X), donde N es la cantidad de elementos.
transform([], []).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :- length([X|Xs], N), transform(Ys, Zs).

% Modificación de la codificación para no incluir elementos únicos.
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

% Modificar la lista de forma que los elementos únicos no estén empaquetados.
modify([], []).
modify([[1,X]|T], [X|R]) :- modify(T, R).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).

% Predicado principal que se ejecuta al cargar el archivo.
ejercicio11 :-
    List = [a, a, b, c, c, c, d, d, e, a, a],  % Cambia la lista para probar diferentes casos
    encode_modified(List, Encoded),
    format('La lista codificada modificada de ~w es ~w.~n', [List, Encoded]).

% Ejecutar el predicado ejercicio11 al cargar el archivo.
:- ejercicio11.

